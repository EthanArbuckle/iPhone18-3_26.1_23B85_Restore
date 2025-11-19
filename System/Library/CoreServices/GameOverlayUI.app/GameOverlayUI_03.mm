uint64_t sub_10005CDF0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CBB8 != -1)
  {
    swift_once();
  }

  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  return sub_100066618(v5, v7);
}

uint64_t sub_10005CF0C()
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

void sub_10005CF88(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 1))
  {
    v3 = a2[1];
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = static Animation.easeIn(duration:)();
      __chkstk_darwin(v5);
      withAnimation<A>(_:_:)();
    }
  }
}

void sub_10005D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1))
  {
    *v7 = *(a3 + 40);
    *&v7[9] = *(a3 + 49);
    v6 = *(a3 + 40);
    sub_100002B38(&qword_10012F4B0, &qword_1000EBCE0);
    Binding.wrappedValue.getter();
    if ((v5 & 1) == 0 || (Binding.wrappedValue.getter(), v5 == 1) && !v4)
    {
      v3 = static Animation.easeIn(duration:)();
      __chkstk_darwin(v3);
      withAnimation<A>(_:_:)();
    }
  }
}

uint64_t sub_10005D1C0@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10005C210(a1);
}

void sub_10005D214()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.cornerRadius.getter();
  }

  else
  {
    v2 = 0;
  }

  qword_10012E788 = v2;
}

uint64_t sub_10005D28C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v51 = a5;
  v8 = sub_100002B38(&qword_10012F180, &qword_1000EBA90);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v43 = &v34 - v10;
  v46 = sub_100002B38(&qword_10012F188, &qword_1000EBA98);
  v11 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v45 = &v34 - v12;
  v13 = a2 & 1;
  v14 = 0.0;
  if (a2)
  {
    v14 = 1.0;
  }

  v58 = v14;
  v59 = 0;
  v60 = 0;
  v57 = a2 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = a2;
  v44 = a2;
  v17 = (a2 >> 8) & 1;
  *(v15 + 17) = v17;
  v18 = HIWORD(v16) & 1;
  *(v15 + 18) = BYTE2(v16) & 1;
  *(v15 + 24) = a3;
  v36 = a4;
  v19 = a4 & 1;
  *(v15 + 32) = v19;
  v20 = swift_allocObject();
  v48 = v13;
  *(v20 + 16) = v13;
  *(v20 + 17) = v17;
  *(v20 + 18) = v18;
  v35 = a3;
  *(v20 + 24) = a3;
  *(v20 + 32) = v19;
  v42 = sub_100002B38(&qword_10012F190, &qword_1000EBAA0);
  v41 = sub_100002B38(&qword_10012F198, &qword_1000EBAA8);
  v40 = sub_100002B38(&qword_10012F1A0, &qword_1000EBAB0);
  v39 = sub_1000057D8(&qword_10012F1A8, &qword_10012F190, &qword_1000EBAA0);
  v38 = sub_10006C9CC();
  v37 = sub_100005144(&qword_10012F218, &qword_1000EBAE8);
  v21 = sub_100005144(&qword_10012F220, &qword_1000EBAF0);
  v22 = sub_100005144(&qword_10012F228, &qword_1000EBAF8);
  v23 = sub_100005144(&qword_10012F230, &qword_1000EBB00);
  v24 = sub_1000057D8(&qword_10012F238, &qword_10012F228, &qword_1000EBAF8);
  v25 = sub_1000057D8(&qword_10012F240, &qword_10012F230, &qword_1000EBB00);
  v52 = &type metadata for ParentPushPopAnimator.Track;
  v53 = v22;
  v54 = v23;
  v55 = v24;
  v56 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1000057D8(&qword_10012F248, &qword_10012F220, &qword_1000EBAF0);
  v52 = &type metadata for ParentPushPopAnimator.Track;
  v53 = v37;
  v54 = v21;
  v55 = OpaqueTypeConformance2;
  v28 = v43;
  v56 = v27;
  swift_getOpaqueTypeConformance2();
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  if (v44)
  {
    v29 = (v35 == 1) & v36;
  }

  else
  {
    v29 = 0;
  }

  v30 = v45;
  (*(v49 + 32))(v45, v28, v50);
  v31 = v30 + *(v46 + 36);
  *v31 = 0;
  *(v31 + 8) = v29;
  v32 = v51;
  sub_100014830(v30, v51, &qword_10012F188, &qword_1000EBA98);
  result = sub_100002B38(&qword_10012F250, &qword_1000EBB08);
  *(v32 + *(result + 36)) = v48;
  return result;
}

uint64_t sub_10005D764@<X0>(uint64_t a1@<X0>, double *a2@<X1>, __int16 a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v61 = a1;
  v67 = a6;
  v63 = sub_100002B38(&qword_10012F1E8, &qword_1000EBAD0);
  v10 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v12 = &v60 - v11;
  v66 = sub_100002B38(&qword_10012F390, &qword_1000EBC30);
  v13 = *(v66 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v66);
  v16 = &v60 - v15;
  v62 = sub_100002B38(&qword_10012F398, &qword_1000EBC38);
  v17 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v65 = &v60 - v18;
  v64 = sub_100002B38(&qword_10012F1C0, &qword_1000EBAB8);
  v19 = *(*(v64 - 8) + 64);
  v20 = (__chkstk_darwin)(v64);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v60 - v23;
  v25 = sub_100002B38(&qword_10012F1D0, &qword_1000EBAC0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v68 = &v60 - v27;
  v29 = *a2;
  v28 = a2[1];
  v30 = a2[2];
  if ((a3 & 1) == 0)
  {
    v31 = 0.0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v31 = a4;
    goto LABEL_7;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v31 = 0.0;
  v32 = 1.0;
  if (*&a4 != 1)
  {
LABEL_7:
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v32 = v29 + (1.0 - v29) * (v31 / v33);
  }

  v34 = sub_100002B38(&qword_10012F1E0, &qword_1000EBAC8);
  v35 = v68;
  (*(*(v34 - 8) + 16))(v68, v61, v34);
  *(v35 + *(v25 + 36)) = v32;
  if ((a3 & 0x100) != 0)
  {
    if (a3)
    {
      if (a5)
      {
        v39 = 0.0;
        if (*&a4 == 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v39 = 0.0;
      if (a5)
      {
LABEL_25:
        type metadata accessor for ZoomCoordinator();
        static ZoomCoordinator.overlayContentWidth.getter();
        v39 = v28 * (1.0 - v39 / v52);
LABEL_26:
        sub_1000035B4(v35, v22, &qword_10012F1D0, &qword_1000EBAC0);
        v53 = &v22[*(v64 + 36)];
        *v53 = v39;
        v53[8] = 0;
        sub_100014830(v22, v24, &qword_10012F1C0, &qword_1000EBAB8);
        sub_1000035B4(v24, v65, &qword_10012F1C0, &qword_1000EBAB8);
        swift_storeEnumTagMultiPayload();
        sub_10006CADC();
        v51 = v35;
        v54 = sub_100005144(&qword_10012F1F0, &qword_1000EBAD8);
        v55 = sub_10006CC20();
        v56 = sub_100068134();
        v57 = sub_10006CCAC();
        v69 = v63;
        v70 = &type metadata for IsPadIdiomPredicate;
        v71 = v54;
        v72 = v55;
        v73 = v56;
        v74 = v57;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        sub_100005688(v24, &qword_10012F1C0, &qword_1000EBAB8);
        return sub_100005688(v51, &qword_10012F1D0, &qword_1000EBAC0);
      }
    }

    v39 = a4;
    goto LABEL_25;
  }

  v61 = v13;
  if ((a3 & 1) == 0)
  {
    v37 = 0.0;
    v36 = v63;
    if (a5)
    {
      goto LABEL_19;
    }

LABEL_18:
    v37 = a4;
    goto LABEL_19;
  }

  v36 = v63;
  if ((a5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v37 = 0.0;
  if (*&a4 != 1)
  {
LABEL_19:
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v38 = v30 * (1.0 - v37 / v40) * -0.3;
    goto LABEL_20;
  }

  v38 = -0.0;
LABEL_20:
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v42 = v38 * v41;
  v43 = sub_1000035B4(v35, v12, &qword_10012F1D0, &qword_1000EBAC0);
  v44 = &v12[*(v36 + 36)];
  *v44 = v42;
  *(v44 + 1) = 0;
  v45 = v36;
  if (qword_10012CB80 != -1)
  {
    v43 = swift_once();
  }

  __chkstk_darwin(v43);
  v46 = sub_100002B38(&qword_10012F1F0, &qword_1000EBAD8);
  v47 = sub_10006CC20();
  v48 = sub_100068134();
  v59 = sub_10006CCAC();
  View.staticIf<A, B>(_:then:)();
  sub_100005688(v12, &qword_10012F1E8, &qword_1000EBAD0);
  v49 = v61;
  v50 = v66;
  (*(v61 + 16))(v65, v16, v66);
  swift_storeEnumTagMultiPayload();
  sub_10006CADC();
  v69 = v45;
  v70 = &type metadata for IsPadIdiomPredicate;
  v71 = v46;
  v72 = v47;
  v73 = v48;
  v74 = v59;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v49 + 8))(v16, v50);
  v51 = v68;
  return sub_100005688(v51, &qword_10012F1D0, &qword_1000EBAC0);
}

uint64_t sub_10005DE48@<X0>(unsigned int a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v54 = a2;
  v72 = a4;
  v70 = sub_100002B38(&qword_10012F1A0, &qword_1000EBAB0);
  v71 = *(v70 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v70);
  v68 = &v50[-v8];
  v67 = sub_100002B38(&qword_10012F218, &qword_1000EBAE8);
  v69 = *(v67 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v67);
  v66 = &v50[-v10];
  v65 = sub_100002B38(&qword_10012F220, &qword_1000EBAF0);
  v79 = *(v65 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v65);
  v63 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v64 = &v50[-v14];
  v77 = sub_100002B38(&qword_10012F230, &qword_1000EBB00);
  v78 = *(v77 - 8);
  v15 = *(v78 + 64);
  __chkstk_darwin(v77);
  v58 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v75 = &v50[-v18];
  v19 = sub_100002B38(&qword_10012F228, &qword_1000EBAF8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v76 = &v50[-v25];
  swift_getKeyPath();
  v55 = a1 & 1;
  v90 = a1 & 0x101;
  v26 = (a1 >> 8) & 1;
  v53 = HIWORD(a1) & 1;
  v91 = BYTE2(a1) & 1;
  v92 = a2;
  v93 = a3 & 1;
  v51 = a3 & 1;
  sub_100002B38(&qword_10012F258, &qword_1000EBB30);
  v73 = &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>;
  sub_1000057D8(&qword_10012F260, &qword_10012F258, &qword_1000EBB30);
  KeyframeTrack.init(_:content:)();
  v52 = &protocol conformance descriptor for KeyframeTrack<A, B, C>;
  v59 = sub_1000057D8(&qword_10012F238, &qword_10012F228, &qword_1000EBAF8);
  v74 = v23;
  v57 = v19;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v27 = *(v20 + 8);
  v61 = v20 + 8;
  v62 = v27;
  v27(v23, v19);
  swift_getKeyPath();
  v28 = v55;
  v85 = v55;
  v86 = BYTE1(a1) & 1;
  LOBYTE(a1) = v53;
  v87 = v53;
  v29 = v54;
  v88 = v54;
  v89 = a3 & 1;
  sub_100002B38(&qword_10012F268, &qword_1000EBB58);
  sub_1000057D8(&qword_10012F270, &qword_10012F268, &qword_1000EBB58);
  v30 = v58;
  KeyframeTrack.init(_:content:)();
  v56 = sub_1000057D8(&qword_10012F240, &qword_10012F230, &qword_1000EBB00);
  v31 = v77;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v32 = *(v78 + 8);
  v78 += 8;
  v60 = v32;
  v32(v30, v31);
  swift_getKeyPath();
  v80 = v28;
  v81 = v26;
  v82 = a1;
  v83 = v29;
  v84 = v51;
  sub_100002B38(&qword_10012F278, &qword_1000EBB80);
  sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80);
  v33 = v63;
  KeyframeTrack.init(_:content:)();
  v34 = sub_1000057D8(&qword_10012F248, &qword_10012F220, &qword_1000EBAF0);
  v35 = v64;
  v36 = v65;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v37 = *(v79 + 8);
  v79 += 8;
  v73 = v37;
  v37(v33, v36);
  v38 = v57;
  v39 = v59;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v40 = v66;
  v41 = v77;
  v42 = v56;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v94 = &type metadata for ParentPushPopAnimator.Track;
  v95 = v38;
  v96 = v41;
  v97 = v39;
  v98 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v68;
  v45 = v40;
  v46 = v67;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v94 = &type metadata for ParentPushPopAnimator.Track;
  v95 = v46;
  v96 = v36;
  v97 = OpaqueTypeConformance2;
  v98 = v34;
  swift_getOpaqueTypeConformance2();
  v47 = v70;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v71 + 8))(v44, v47);
  (*(v69 + 8))(v45, v46);
  v48 = v62;
  v62(v74, v38);
  v73(v35, v36);
  v60(v75, v77);
  return v48(v76, v38);
}

uint64_t sub_10005E78C(int a1)
{
  v2 = sub_100002B38(&qword_10012F258, &qword_1000EBB30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_10005E938(a1 & 0x10101, v6);
  sub_1000057D8(&qword_10012F260, &qword_10012F258, &qword_1000EBB30);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v10)(v9, v2);
}

uint64_t sub_10005E938@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v204 = a2;
  v203 = sub_100002B38(&qword_10012F2F0, &qword_1000EBBC8);
  v189 = *(v203 - 8);
  v3 = *(v189 + 64);
  __chkstk_darwin(v203);
  v172 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v171 = &v164 - v6;
  v188 = sub_100002B38(&qword_10012F2F8, &qword_1000EBBD0);
  v178 = *(v188 - 8);
  v7 = *(v178 + 64);
  __chkstk_darwin(v188);
  v176 = &v164 - v8;
  v187 = sub_100002B38(&qword_10012F300, &qword_1000EBBD8);
  v177 = *(v187 - 8);
  v9 = *(v177 + 64);
  __chkstk_darwin(v187);
  v191 = &v164 - v10;
  v170 = sub_100002B38(&qword_10012F308, &qword_1000EBBE0);
  v168 = *(v170 - 8);
  v11 = *(v168 + 64);
  __chkstk_darwin(v170);
  v167 = &v164 - v12;
  v169 = sub_100002B38(&qword_10012F310, &qword_1000EBBE8);
  v166 = *(v169 - 8);
  v13 = *(v166 + 64);
  __chkstk_darwin(v169);
  v165 = &v164 - v14;
  v15 = type metadata accessor for Spring();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v185 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100002B38(&qword_10012F318, &qword_1000EBBF0);
  v209 = *(v198 - 1);
  v18 = v209[8];
  __chkstk_darwin(v198);
  v186 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v205 = &v164 - v21;
  v22 = sub_100002B38(&qword_10012F320, &qword_1000EBBF8);
  v175 = *(v22 - 8);
  v23 = *(v175 + 64);
  __chkstk_darwin(v22);
  v174 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v173 = &v164 - v26;
  v27 = sub_100002B38(&qword_10012F328, &qword_1000EBC00);
  v196 = *(v27 - 8);
  v28 = *(v196 + 64);
  __chkstk_darwin(v27);
  v195 = &v164 - v29;
  v184 = sub_100002B38(&qword_10012F330, &qword_1000EBC08);
  v183 = *(v184 - 8);
  v30 = *(v183 + 8);
  __chkstk_darwin(v184);
  v181 = &v164 - v31;
  v197 = sub_100002B38(&qword_10012F338, &qword_1000EBC10);
  v190 = *(v197 - 1);
  v32 = *(v190 + 64);
  __chkstk_darwin(v197);
  v192 = &v164 - v33;
  v34 = type metadata accessor for UnitCurve();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v36 = sub_100002B38(&qword_10012F340, &qword_1000EBC18);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v207 = &v164 - v42;
  v43 = sub_100002B38(&qword_10012F348, &qword_1000EBC20);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v206 = &v164 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v164 - v48;
  __chkstk_darwin(v50);
  v210 = &v164 - v51;
  v194 = sub_100002B38(&qword_10012F350, &qword_1000EBC28);
  v182 = *(v194 - 8);
  v52 = *(v182 + 64);
  __chkstk_darwin(v194);
  v180 = &v164 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v179 = &v164 - v55;
  v56 = sub_100002B38(&qword_10012F258, &qword_1000EBB30);
  v200 = *(v56 - 8);
  v201 = v56;
  v57 = *(v200 + 64);
  __chkstk_darwin(v56);
  v199 = &v164 - v58;
  v202 = v27;
  v208 = v49;
  if ((a1 & 0x10000) != 0)
  {
    v189 = v22;
    v73 = (v44 + 8);
    v209 = (v37 + 8);
    v193 = v36;
    v205 = (v44 + 8);
    if (a1)
    {
      v211 = 0;
      MoveKeyframe.init(_:)();
      v74 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v198 = *v73;
      v198(v49, v43);
      v211 = 0x3FF0000000000000;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v75 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v191 = *v209;
      (v191)(v40, v36);
      v211 = 0x3FF0000000000000;
      v76 = v206;
      MoveKeyframe.init(_:)();
      v77 = v208;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v198(v76, v43);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v78 = v192;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v211 = &type metadata for Double;
      v212 = v43;
      v213 = v36;
      v214 = v74;
      v215 = v75;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v80 = v181;
      v81 = v197;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v211 = &type metadata for Double;
      v212 = v81;
      v213 = v43;
      v214 = OpaqueTypeConformance2;
      v215 = v74;
      swift_getOpaqueTypeConformance2();
      v82 = v179;
      v83 = v184;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
      (*(v183 + 1))(v80, v83);
      (*(v190 + 8))(v78, v81);
    }

    else
    {
      v211 = 0x3FF0000000000000;
      MoveKeyframe.init(_:)();
      v113 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v198 = *v73;
      v198(v49, v43);
      v211 = 0;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v114 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v191 = *v209;
      (v191)(v40, v36);
      v211 = 0;
      v76 = v206;
      MoveKeyframe.init(_:)();
      v77 = v208;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v198(v76, v43);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v115 = v192;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v211 = &type metadata for Double;
      v212 = v43;
      v213 = v36;
      v214 = v113;
      v215 = v114;
      v116 = swift_getOpaqueTypeConformance2();
      v117 = v181;
      v118 = v197;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v211 = &type metadata for Double;
      v212 = v118;
      v213 = v43;
      v214 = v116;
      v215 = v113;
      swift_getOpaqueTypeConformance2();
      v82 = v179;
      v119 = v184;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      (*(v183 + 1))(v117, v119);
      (*(v190 + 8))(v115, v118);
    }

    v84 = v198;
    v198(v76, v43);
    v84(v77, v43);
    (v191)(v207, v193);
    v84(v210, v43);
    sub_1000057D8(&qword_10012F388, &qword_10012F350, &qword_1000EBC28);
    v120 = v180;
    v121 = v82;
    v122 = v194;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_1000057D8(&qword_10012F380, &qword_10012F320, &qword_1000EBBF8);
    v123 = v195;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    sub_1000057D8(&qword_10012F370, &qword_10012F328, &qword_1000EBC00);
    sub_1000057D8(&qword_10012F368, &qword_10012F2F0, &qword_1000EBBC8);
    v124 = v199;
    v125 = v202;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    (*(v196 + 8))(v123, v125);
    v126 = *(v182 + 8);
    v126(v120, v122);
    v126(v121, v122);
  }

  else
  {
    v59 = (v44 + 8);
    v184 = v59;
    if ((a1 & 0x100) != 0)
    {
      v193 = v36;
      v189 = v22;
      if (a1)
      {
        v211 = 0;
        v85 = v49;
        MoveKeyframe.init(_:)();
        v86 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v87 = *v59;
        (*v59)(v85, v43);
        v181 = v87;
        v211 = 0;
        static UnitCurve.linear.getter();
        LinearKeyframe.init(_:duration:timingCurve:)();
        v88 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18);
        v89 = v193;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v90 = *(v37 + 8);
        v182 = v37 + 8;
        v183 = v90;
        v90(v40, v89);
        v216 = 0x3FF0000000000000;
        Spring.init(duration:bounce:)();
        v211 = 0;
        LOBYTE(v212) = 1;
        v91 = v186;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v191 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
        v92 = v198;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v93 = v209[1];
        ++v209;
        v185 = v93;
        (v93)(v91, v92);
        v211 = 0x3FF0000000000000;
        v94 = v206;
        MoveKeyframe.init(_:)();
        v95 = v208;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        (v87)(v94, v43);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        v96 = v193;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v43;
        v213 = v96;
        v214 = v86;
        v97 = v86;
        v215 = v88;
        v98 = swift_getOpaqueTypeConformance2();
        v99 = v165;
        v100 = v197;
        v101 = v191;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v100;
        v213 = v92;
        v214 = v98;
        v215 = v101;
        v102 = swift_getOpaqueTypeConformance2();
        v103 = v167;
        v104 = v99;
        v105 = v95;
        v106 = v169;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v106;
        v213 = v43;
        v214 = v102;
        v215 = v97;
        swift_getOpaqueTypeConformance2();
        v211 = &type metadata for Double;
        v212 = v43;
        v213 = v92;
        v214 = v97;
        v215 = v191;
        v107 = swift_getOpaqueTypeConformance2();
        v211 = &type metadata for Double;
        v212 = v187;
        v213 = v43;
        v214 = v107;
        v215 = v97;
        swift_getOpaqueTypeConformance2();
        v108 = v173;
        v109 = v170;
        static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
        v110 = v103;
        v111 = v202;
        (*(v168 + 8))(v110, v109);
        (*(v166 + 8))(v104, v106);
        (*(v190 + 8))(v192, v197);
        v112 = v181;
        (v181)(v206, v43);
        v112(v105, v43);
        (v185)(v205, v92);
        v183(v207, v193);
        v112(v210, v43);
      }

      else
      {
        v211 = 0x3FF0000000000000;
        MoveKeyframe.init(_:)();
        v142 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v143 = *v59;
        (*v59)(v49, v43);
        v192 = v143;
        v216 = 0;
        Spring.init(duration:bounce:)();
        v211 = 0;
        LOBYTE(v212) = 1;
        v144 = v186;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v145 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
        v146 = v198;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v147 = v209[1];
        ++v209;
        v207 = v147;
        (v147)(v144, v146);
        v211 = 0;
        v148 = v206;
        MoveKeyframe.init(_:)();
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        (v143)(v148, v43);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v43;
        v213 = v146;
        v214 = v142;
        v215 = v145;
        v190 = swift_getOpaqueTypeConformance2();
        v149 = v176;
        v150 = v187;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v151 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18);
        v211 = &type metadata for Double;
        v212 = v43;
        v213 = v193;
        v214 = v142;
        v215 = v151;
        v152 = swift_getOpaqueTypeConformance2();
        v153 = v198;
        v211 = &type metadata for Double;
        v212 = v197;
        v213 = v198;
        v214 = v152;
        v215 = v145;
        v154 = swift_getOpaqueTypeConformance2();
        v211 = &type metadata for Double;
        v212 = v169;
        v213 = v43;
        v214 = v154;
        v215 = v142;
        swift_getOpaqueTypeConformance2();
        v211 = &type metadata for Double;
        v212 = v150;
        v213 = v43;
        v214 = v190;
        v215 = v142;
        swift_getOpaqueTypeConformance2();
        v108 = v173;
        v155 = v188;
        static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
        (*(v178 + 8))(v149, v155);
        (*(v177 + 8))(v191, v150);
        v156 = v192;
        (v192)(v148, v43);
        (v156)(v208, v43);
        (v207)(v205, v153);
        (v156)(v210, v43);
        v111 = v202;
      }

      sub_1000057D8(&qword_10012F380, &qword_10012F320, &qword_1000EBBF8);
      v157 = v174;
      v158 = v108;
      v159 = v189;
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      sub_1000057D8(&qword_10012F388, &qword_10012F350, &qword_1000EBC28);
      v160 = v195;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      sub_1000057D8(&qword_10012F370, &qword_10012F328, &qword_1000EBC00);
      sub_1000057D8(&qword_10012F368, &qword_10012F2F0, &qword_1000EBBC8);
      v124 = v199;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
      (*(v196 + 8))(v160, v111);
      v161 = *(v175 + 8);
      v161(v157, v159);
      v161(v158, v159);
    }

    else
    {
      if (a1)
      {
        v211 = 0;
        MoveKeyframe.init(_:)();
        v60 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v207 = *v59;
        (v207)(v49, v43);
        v216 = 0x3FF0000000000000;
        Spring.init(duration:bounce:)();
        v211 = 0;
        LOBYTE(v212) = 1;
        v61 = v186;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v62 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
        v63 = v198;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v64 = v209[1];
        ++v209;
        v197 = v64;
        (v64)(v61, v63);
        v211 = 0x3FF0000000000000;
        v65 = v203;
        v66 = v206;
        MoveKeyframe.init(_:)();
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        (v207)(v66, v43);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v43;
        v213 = v63;
        v214 = v60;
        v215 = v62;
        v67 = swift_getOpaqueTypeConformance2();
        v68 = v176;
        v69 = v187;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v69;
        v213 = v43;
        v214 = v67;
        v215 = v60;
        swift_getOpaqueTypeConformance2();
        v70 = v171;
        v71 = v188;
        static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
        (*(v178 + 8))(v68, v71);
        (*(v177 + 8))(v191, v69);
        v72 = v207;
        (v207)(v66, v43);
        v72(v208, v43);
        (v197)(v205, v198);
        v72(v210, v43);
      }

      else
      {
        v211 = 0x3FF0000000000000;
        MoveKeyframe.init(_:)();
        v127 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v128 = *v59;
        (*v59)(v49, v43);
        v197 = v128;
        v216 = 0;
        Spring.init(duration:bounce:)();
        v211 = 0;
        LOBYTE(v212) = 1;
        v129 = v186;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v130 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
        v131 = v198;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v132 = v209[1];
        ++v209;
        v207 = v132;
        (v132)(v129, v131);
        v211 = 0;
        v133 = v206;
        MoveKeyframe.init(_:)();
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v128(v133, v43);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        v134 = v191;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v43;
        v213 = v131;
        v214 = v127;
        v215 = v130;
        v135 = swift_getOpaqueTypeConformance2();
        v136 = v176;
        v137 = v187;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v211 = &type metadata for Double;
        v212 = v137;
        v213 = v43;
        v214 = v135;
        v215 = v127;
        swift_getOpaqueTypeConformance2();
        v70 = v171;
        v138 = v188;
        static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
        (*(v178 + 8))(v136, v138);
        (*(v177 + 8))(v134, v137);
        v139 = v197;
        (v197)(v133, v43);
        v139(v208, v43);
        (v207)(v205, v198);
        v139(v210, v43);
        v65 = v203;
      }

      sub_1000057D8(&qword_10012F368, &qword_10012F2F0, &qword_1000EBBC8);
      v140 = v172;
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      sub_1000057D8(&qword_10012F370, &qword_10012F328, &qword_1000EBC00);
      v124 = v199;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      v141 = *(v189 + 8);
      v141(v140, v65);
      v141(v70, v65);
    }
  }

  sub_1000057D8(&qword_10012F260, &qword_10012F258, &qword_1000EBB30);
  v162 = v201;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v200 + 8))(v124, v162);
}

uint64_t sub_100060DB0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_100002B38(&qword_10012F288, &qword_1000EBB88);
  v108 = *(v3 - 8);
  v109 = v3;
  v4 = *(v108 + 64);
  __chkstk_darwin(v3);
  v103 = &v89 - v5;
  v107 = sub_100002B38(&qword_10012F290, &qword_1000EBB90);
  v104 = *(v107 - 8);
  v6 = *(v104 + 64);
  __chkstk_darwin(v107);
  v101 = &v89 - v7;
  v8 = type metadata accessor for Spring();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v89 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100002B38(&qword_10012F298, &qword_1000EBB98);
  v119 = *(v102 - 8);
  v11 = *(v119 + 64);
  __chkstk_darwin(v102);
  v90 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v89 - v14;
  v116 = sub_100002B38(&qword_10012F278, &qword_1000EBB80);
  v15 = *(v116 - 8);
  v16 = *(v15 + 8);
  __chkstk_darwin(v116);
  v106 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v89 - v19;
  v100 = sub_100002B38(&qword_10012F2C0, &qword_1000EBBA8);
  v99 = *(v100 - 1);
  v20 = *(v99 + 8);
  __chkstk_darwin(v100);
  v96 = &v89 - v21;
  v98 = sub_100002B38(&qword_10012F2C8, &qword_1000EBBB0);
  v97 = *(v98 - 8);
  v22 = *(v97 + 64);
  __chkstk_darwin(v98);
  v94 = &v89 - v23;
  v24 = type metadata accessor for UnitCurve();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v95 = sub_100002B38(&qword_10012F2D0, &qword_1000EBBB8);
  v26 = *(v95 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v95);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v110 = &v89 - v31;
  v32 = sub_100002B38(&qword_10012F2A0, &qword_1000EBBA0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v89 - v38;
  __chkstk_darwin(v40);
  v42 = &v89 - v41;
  v113 = sub_100002B38(&qword_10012F2D8, &qword_1000EBBC0);
  v93 = *(v113 - 8);
  v43 = *(v93 + 8);
  __chkstk_darwin(v113);
  v92 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v91 = &v89 - v46;
  v47 = sub_100002B38(&qword_10012F268, &qword_1000EBB58);
  v114 = *(v47 - 8);
  v115 = v47;
  v48 = *(v114 + 64);
  __chkstk_darwin(v47);
  v112 = &v89 - v49;
  v50 = (v33 + 8);
  v120 = v39;
  v121 = v42;
  v118 = v50;
  if ((a1 & 0x10000) != 0)
  {
    v119 = v26 + 8;
    if (a1)
    {
      v122 = 0x4008000000000000;
      sub_10006CE68();
      MoveKeyframe.init(_:)();
      v62 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v111 = *v50;
      (v111)(v39, v32);
      v122 = 0;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v63 = sub_1000057D8(&qword_10012F2E8, &qword_10012F2D0, &qword_1000EBBB8);
      v64 = v95;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v109 = *v119;
      v109(v29, v64);
      v122 = 0;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v111)(v36, v32);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v65 = v94;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v32;
      v124 = v64;
      v125 = v62;
      v126 = v63;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v67 = v96;
      v68 = v98;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v68;
      v124 = v32;
      v125 = OpaqueTypeConformance2;
      v126 = v62;
      swift_getOpaqueTypeConformance2();
      v69 = v91;
      v70 = v100;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    }

    else
    {
      v122 = 0;
      sub_10006CE68();
      MoveKeyframe.init(_:)();
      v82 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v111 = *v50;
      (v111)(v39, v32);
      v122 = 0x4008000000000000;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v83 = sub_1000057D8(&qword_10012F2E8, &qword_10012F2D0, &qword_1000EBBB8);
      v64 = v95;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v109 = *v119;
      v109(v29, v64);
      v122 = 0x4008000000000000;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v111)(v36, v32);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v65 = v94;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v32;
      v124 = v64;
      v125 = v82;
      v126 = v83;
      v84 = swift_getOpaqueTypeConformance2();
      v67 = v96;
      v68 = v98;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v68;
      v124 = v32;
      v125 = v84;
      v126 = v82;
      swift_getOpaqueTypeConformance2();
      v69 = v91;
      v70 = v100;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    }

    (*(v99 + 1))(v67, v70);
    (*(v97 + 8))(v65, v68);
    v85 = v111;
    (v111)(v36, v32);
    v85(v120, v32);
    v109(v110, v64);
    v85(v121, v32);
    sub_1000057D8(&qword_10012F2E0, &qword_10012F2D8, &qword_1000EBBC0);
    v77 = v92;
    v78 = v69;
    v79 = v113;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80);
    v80 = v112;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    v81 = v93;
  }

  else
  {
    v110 = v15;
    if (a1)
    {
      v122 = 0x4024000000000000;
      sub_10006CE68();
      MoveKeyframe.init(_:)();
      v51 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v100 = *v50;
      (v100)(v39, v32);
      v127 = 0;
      Spring.init(duration:bounce:)();
      v122 = 0;
      LOBYTE(v123) = 1;
      v52 = v90;
      SpringKeyframe.init(_:duration:spring:startVelocity:)();
      v53 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98);
      v54 = v102;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v55 = *(v119 + 8);
      v119 += 8;
      v99 = v55;
      v55(v52, v54);
      v122 = 0;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v100)(v36, v32);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v56 = v101;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v32;
      v124 = v54;
      v125 = v51;
      v126 = v53;
      v57 = swift_getOpaqueTypeConformance2();
      v58 = v103;
      v59 = v107;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v59;
      v124 = v32;
      v125 = v57;
      v126 = v51;
      swift_getOpaqueTypeConformance2();
      v60 = v105;
      v61 = v109;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    }

    else
    {
      v122 = 0;
      sub_10006CE68();
      MoveKeyframe.init(_:)();
      v71 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v100 = *v50;
      (v100)(v39, v32);
      v127 = 0x4024000000000000;
      Spring.init(duration:bounce:)();
      v122 = 0;
      LOBYTE(v123) = 1;
      v72 = v90;
      SpringKeyframe.init(_:duration:spring:startVelocity:)();
      v73 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98);
      v54 = v102;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v74 = *(v119 + 8);
      v119 += 8;
      v99 = v74;
      v74(v72, v54);
      v122 = 0x4024000000000000;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v100)(v36, v32);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v56 = v101;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v32;
      v124 = v54;
      v125 = v71;
      v126 = v73;
      v75 = swift_getOpaqueTypeConformance2();
      v58 = v103;
      v59 = v107;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v122 = &type metadata for CGFloat;
      v123 = v59;
      v124 = v32;
      v125 = v75;
      v126 = v71;
      swift_getOpaqueTypeConformance2();
      v60 = v105;
      v61 = v109;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    }

    (*(v108 + 8))(v58, v61);
    (*(v104 + 8))(v56, v59);
    v76 = v100;
    (v100)(v36, v32);
    (v76)(v120, v32);
    v99(v111, v54);
    (v76)(v121, v32);
    sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80);
    v77 = v106;
    v78 = v60;
    v79 = v116;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_1000057D8(&qword_10012F2E0, &qword_10012F2D8, &qword_1000EBBC0);
    v80 = v112;
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    v81 = v110;
  }

  v86 = *(v81 + 1);
  v86(v77, v79);
  v86(v78, v79);
  sub_1000057D8(&qword_10012F270, &qword_10012F268, &qword_1000EBB58);
  v87 = v115;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v114 + 8))(v80, v87);
}

uint64_t sub_1000622E4@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void (*a6)(void, uint64_t, void, double)@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v27 = a8;
  v14 = sub_100002B38(a4, a5);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v25 - v21;
  a6(a1 & 0x10101, a2, a3 & 1, v20);
  sub_1000057D8(v26, a4, a5);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v23 = *(v15 + 8);
  v23(v18, v14);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v23)(v22, v14);
}

uint64_t sub_10006248C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_100002B38(&qword_10012F288, &qword_1000EBB88);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v58 = &v49 - v5;
  v6 = sub_100002B38(&qword_10012F290, &qword_1000EBB90);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v57 = &v49 - v8;
  v9 = type metadata accessor for Spring();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v53 = sub_100002B38(&qword_10012F298, &qword_1000EBB98);
  v67 = *(v53 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v53);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_100002B38(&qword_10012F2A0, &qword_1000EBBA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v26 = &v49 - v25;
  v27 = sub_100002B38(&qword_10012F278, &qword_1000EBB80);
  v55 = *(v27 - 8);
  v56 = v27;
  v28 = *(v55 + 64);
  __chkstk_darwin(v27);
  v54 = &v49 - v29;
  v30 = (v18 + 8);
  v65 = v18 + 8;
  v66 = v26;
  v51 = v16;
  v64 = v23;
  if (a1)
  {
    v68 = 0x3FF0000000000000;
    sub_10006CE68();
    MoveKeyframe.init(_:)();
    v31 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v50 = *v30;
    v50(v23, v17);
    v73 = 0;
    Spring.init(duration:bounce:)();
    v68 = 0;
    LOBYTE(v69) = 1;
    SpringKeyframe.init(_:duration:spring:startVelocity:)();
    v32 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98);
    v33 = v53;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v34 = *(v67 + 8);
    v67 += 8;
    v49 = v34;
    v34(v13, v33);
    v68 = 0;
    v35 = v52;
    MoveKeyframe.init(_:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v50(v35, v17);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    v36 = v57;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v68 = &type metadata for CGFloat;
    v69 = v17;
    v70 = v33;
    v71 = v31;
    v72 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v58;
    v39 = v60;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v68 = &type metadata for CGFloat;
    v69 = v39;
    v70 = v17;
    v71 = OpaqueTypeConformance2;
    v72 = v31;
    swift_getOpaqueTypeConformance2();
    v40 = v54;
    v41 = v62;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
  }

  else
  {
    v68 = 0;
    sub_10006CE68();
    MoveKeyframe.init(_:)();
    v42 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v50 = *v30;
    v50(v23, v17);
    v73 = 0x3FF0000000000000;
    Spring.init(duration:bounce:)();
    v68 = 0;
    LOBYTE(v69) = 1;
    SpringKeyframe.init(_:duration:spring:startVelocity:)();
    v43 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98);
    v33 = v53;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v44 = *(v67 + 8);
    v67 += 8;
    v49 = v44;
    v44(v13, v33);
    v68 = 0x3FF0000000000000;
    v35 = v52;
    MoveKeyframe.init(_:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v50(v35, v17);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    v36 = v57;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v68 = &type metadata for CGFloat;
    v69 = v17;
    v70 = v33;
    v71 = v42;
    v72 = v43;
    v45 = swift_getOpaqueTypeConformance2();
    v38 = v58;
    v39 = v60;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v68 = &type metadata for CGFloat;
    v69 = v39;
    v70 = v17;
    v71 = v45;
    v72 = v42;
    swift_getOpaqueTypeConformance2();
    v40 = v54;
    v41 = v62;
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
  }

  (*(v61 + 8))(v38, v41);
  (*(v59 + 8))(v36, v39);
  v46 = v50;
  v50(v35, v17);
  v46(v64, v17);
  v49(v51, v33);
  v46(v66, v17);
  sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80);
  v47 = v56;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v55 + 8))(v40, v47);
}

uint64_t sub_100062E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  if (v2[2])
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_10005D28C(a1, v4 | v5, *(v2 + 1), v2[16], a2);
}

uint64_t sub_100062ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v58 = a1;
  v63 = a2;
  v62 = sub_100002B38(&qword_10012FA50, &qword_1000EC1D0);
  v2 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v56 = &v54 - v3;
  v59 = sub_100002B38(&qword_10012FA88, &qword_1000EC1E8);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v61 = &v54 - v5;
  v60 = sub_100002B38(&qword_10012FA68, &qword_1000EC1D8);
  v6 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v55 = &v54 - v7;
  v8 = type metadata accessor for UserInterfaceSizeClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v57 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  __chkstk_darwin(v23);
  v25 = &v54 - v24;
  sub_10007A224(&v54 - v24);
  (*(v9 + 104))(v22, enum case for UserInterfaceSizeClass.compact(_:), v8);
  (*(v9 + 56))(v22, 0, 1, v8);
  v26 = *(v13 + 56);
  sub_1000035B4(v25, v16, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v22, &v16[v26], &qword_100132550, &qword_1000EC170);
  v27 = *(v9 + 48);
  if (v27(v16, 1, v8) == 1)
  {
    sub_100005688(v22, &qword_100132550, &qword_1000EC170);
    sub_100005688(v25, &qword_100132550, &qword_1000EC170);
    if (v27(&v16[v26], 1, v8) == 1)
    {
      sub_100005688(v16, &qword_100132550, &qword_1000EC170);
LABEL_9:
      v45 = static Edge.Set.all.getter();
      v46 = sub_100002B38(&qword_10012FA80, &qword_1000EC1E0);
      v47 = v55;
      (*(*(v46 - 8) + 16))(v55, v58, v46);
      v48 = v47 + *(v62 + 36);
      *v48 = v45;
      *(v48 + 8) = xmmword_1000EAC60;
      *(v48 + 24) = xmmword_1000EAC70;
      *(v48 + 40) = 0;
      v49 = static Edge.Set.horizontal.getter();
      v50 = static SafeAreaRegions.all.getter();
      v51 = v61;
      v52 = v47 + *(v60 + 36);
      *v52 = v50;
      *(v52 + 8) = v49;
      v38 = &qword_10012FA68;
      v39 = &qword_1000EC1D8;
      sub_1000035B4(v47, v51, &qword_10012FA68, &qword_1000EC1D8);
      swift_storeEnumTagMultiPayload();
      sub_1000700B0();
      sub_10007013C();
      _ConditionalContent<>.init(storage:)();
      v40 = v47;
      return sub_100005688(v40, v38, v39);
    }

    goto LABEL_6;
  }

  sub_1000035B4(v16, v57, &qword_100132550, &qword_1000EC170);
  if (v27(&v16[v26], 1, v8) == 1)
  {
    sub_100005688(v22, &qword_100132550, &qword_1000EC170);
    sub_100005688(v25, &qword_100132550, &qword_1000EC170);
    (*(v9 + 8))(v57, v8);
LABEL_6:
    sub_100005688(v16, &qword_10012E1A0, &qword_1000EC1F0);
    goto LABEL_7;
  }

  v41 = v54;
  (*(v9 + 32))(v54, &v16[v26], v8);
  sub_10006778C(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass);
  v42 = v57;
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v9 + 8);
  v44(v41, v8);
  sub_100005688(v22, &qword_100132550, &qword_1000EC170);
  sub_100005688(v25, &qword_100132550, &qword_1000EC170);
  v44(v42, v8);
  sub_100005688(v16, &qword_100132550, &qword_1000EC170);
  if (v43)
  {
    goto LABEL_9;
  }

LABEL_7:
  v28 = static Edge.Set.all.getter();
  v29 = sub_100002B38(&qword_10012FA80, &qword_1000EC1E0);
  v30 = v56;
  (*(*(v29 - 8) + 16))(v56, v58, v29);
  v31 = v61;
  v32 = v30 + *(v62 + 36);
  *v32 = v28;
  *(v32 + 8) = xmmword_1000EAC50;
  __asm { FMOV            V0.2D, #16.0 }

  *(v32 + 24) = _Q0;
  *(v32 + 40) = 0;
  v38 = &qword_10012FA50;
  v39 = &qword_1000EC1D0;
  sub_1000035B4(v30, v31, &qword_10012FA50, &qword_1000EC1D0);
  swift_storeEnumTagMultiPayload();
  sub_1000700B0();
  sub_10007013C();
  _ConditionalContent<>.init(storage:)();
  v40 = v30;
  return sub_100005688(v40, v38, v39);
}

__n128 sub_100063610@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  v5 = sub_100002B38(&qword_10012FA80, &qword_1000EC1E0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(sub_100002B38(&qword_10012FA50, &qword_1000EC1D0) + 36);
  *v6 = v4;
  __asm { FMOV            V0.2D, #16.0 }

  *(v6 + 8) = result;
  *(v6 + 24) = result;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_1000636BC()
{
  sub_100002B38(&qword_10012FA48, &qword_1000EC1C8);
  sub_100002B38(&qword_10012FA50, &qword_1000EC1D0);
  sub_100069844();
  sub_100070024();
  sub_10007013C();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_10006381C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100002B38(&qword_10012F528, &qword_1000EBD38);
  sub_10006D8E0(v3, a2);
  sub_100011F80(v3, a2);
  sub_100002B38(&qword_10012F560, &qword_1000EBD58);
  sub_100005144(&qword_10012F568, &qword_1000EBD60);
  sub_100005144(&qword_10012F570, &qword_1000EBD68);
  sub_1000057D8(&qword_10012F578, &qword_10012F568, &qword_1000EBD60);
  sub_1000057D8(&qword_10012F580, &qword_10012F570, &qword_1000EBD68);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_1000639C4@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v50 = a1;
  v59 = a3;
  v3 = sub_100002B38(&qword_10012F560, &qword_1000EBD58);
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v56 = &v44 - v6;
  v7 = sub_100002B38(&qword_10012F570, &qword_1000EBD68);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v44 - v12;
  v13 = sub_100002B38(&qword_10012F568, &qword_1000EBD60);
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  __chkstk_darwin(v13);
  v60 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v49 = &v44 - v17;
  KeyPath = swift_getKeyPath();
  v44 = sub_100002B38(&qword_10012F2F8, &qword_1000EBBD0);
  v18 = sub_100005144(&qword_10012F300, &qword_1000EBBD8);
  v19 = sub_100005144(&qword_10012F348, &qword_1000EBC20);
  v20 = sub_100005144(&qword_10012F318, &qword_1000EBBF0);
  v47 = &protocol conformance descriptor for MoveKeyframe<A>;
  v21 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
  v46 = &protocol conformance descriptor for SpringKeyframe<A>;
  v22 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
  v62 = &type metadata for Double;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  v66 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = &type metadata for Double;
  v63 = v18;
  v64 = v19;
  v65 = OpaqueTypeConformance2;
  v66 = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v60;
  KeyframeTrack.init(_:content:)();
  KeyPath = sub_1000057D8(&qword_10012F578, &qword_10012F568, &qword_1000EBD60);
  v45 = v13;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v25 = *(v61 + 8);
  v61 += 8;
  v50 = v25;
  v25(v24, v13);
  swift_getKeyPath();
  v44 = sub_100002B38(&qword_10012F288, &qword_1000EBB88);
  v26 = sub_100005144(&qword_10012F290, &qword_1000EBB90);
  v27 = sub_100005144(&qword_10012F2A0, &qword_1000EBBA0);
  v28 = sub_100005144(&qword_10012F298, &qword_1000EBB98);
  v29 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
  v30 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98);
  v62 = &type metadata for CGFloat;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v62 = &type metadata for CGFloat;
  v63 = v26;
  v64 = v27;
  v65 = v31;
  v66 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v51;
  KeyframeTrack.init(_:content:)();
  v33 = sub_1000057D8(&qword_10012F580, &qword_10012F570, &qword_1000EBD68);
  v35 = v52;
  v34 = v53;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v55 = *(v54 + 8);
  v55(v32, v34);
  v36 = v60;
  v37 = KeyPath;
  v38 = v49;
  v39 = v45;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v40 = v56;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v62 = &type metadata for ChildSlideTransition.Track;
  v63 = v39;
  v64 = v34;
  v65 = v37;
  v66 = v33;
  swift_getOpaqueTypeConformance2();
  v41 = v57;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v58 + 8))(v40, v41);
  v42 = v50;
  v50(v36, v39);
  v55(v35, v34);
  return v42(v38, v39);
}

uint64_t sub_10006404C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v42 = a1;
  v5 = sub_100002B38(&qword_10012F300, &qword_1000EBBD8);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v39 = &v37 - v8;
  v9 = type metadata accessor for Spring();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v44 = sub_100002B38(&qword_10012F318, &qword_1000EBBF0);
  v46 = *(v44 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v44);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v43 = &v37 - v15;
  v16 = sub_100002B38(&qword_10012F348, &qword_1000EBC20);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  __chkstk_darwin(v24);
  v45 = &v37 - v25;
  v47 = a2;
  MoveKeyframe.init(_:)();
  v26 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v27 = *(v17 + 8);
  v37 = v17 + 8;
  v27(v23, v16);
  v28 = v27;
  v52 = a3;
  Spring.init(duration:bounce:)();
  v47 = 0.0;
  LOBYTE(v48) = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  v29 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
  v30 = v44;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v31 = *(v46 + 8);
  v46 += 8;
  v38 = v31;
  v31(v13, v30);
  v47 = a3;
  MoveKeyframe.init(_:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v28(v20, v16);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  v32 = v39;
  v33 = v44;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v47 = COERCE_DOUBLE(&type metadata for Double);
  v48 = v16;
  v49 = v33;
  v50 = v26;
  v51 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v32;
  v35 = v40;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  (*(v41 + 8))(v34, v35);
  v28(v20, v16);
  v28(v23, v16);
  v38(v43, v33);
  return (v28)(v45, v16);
}

uint64_t sub_1000645A4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v44 = a1;
  v7 = sub_100002B38(&qword_10012F290, &qword_1000EBB90);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = &v38 - v10;
  v11 = type metadata accessor for Spring();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v40 = sub_100002B38(&qword_10012F298, &qword_1000EBB98);
  v48 = *(v40 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v46 = &v38 - v17;
  v18 = sub_100002B38(&qword_10012F2A0, &qword_1000EBBA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v38 - v24;
  __chkstk_darwin(v26);
  v47 = &v38 - v27;
  v49 = a2;
  sub_10006CE68();
  MoveKeyframe.init(_:)();
  v28 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v29 = *(v19 + 8);
  v45 = v19 + 8;
  v38 = v29;
  v29(v25, v18);
  v54 = a3;
  Spring.init(duration:bounce:)();
  v49 = 0.0;
  LOBYTE(v50) = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  v30 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98);
  v31 = v40;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v32 = *(v48 + 8);
  v48 += 8;
  v39 = v32;
  v32(v15, v31);
  v49 = a4;
  MoveKeyframe.init(_:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v33 = v38;
  v38(v22, v18);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  v34 = v41;
  v35 = v46;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v49 = COERCE_DOUBLE(&type metadata for CGFloat);
  v50 = v18;
  v51 = v31;
  v52 = v28;
  v53 = v30;
  swift_getOpaqueTypeConformance2();
  v36 = v42;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  (*(v43 + 8))(v34, v36);
  v33(v22, v18);
  v33(v25, v18);
  v39(v35, v31);
  return (v33)(v47, v18);
}

uint64_t sub_100064AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v7 = v6 * a3;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_100002B38(&qword_10012F558, &qword_1000EBD50);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = sub_100002B38(&qword_10012F538, &qword_1000EBD48);
  v11 = a2 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_100064BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006DA58();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100064C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006DA58();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100064CBC(uint64_t a1)
{
  v13[1] = a1;
  v2 = sub_100002B38(&qword_10012F528, &qword_1000EBD38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  v7 = *(v1 + 8);
  if (*v1 == 1)
  {
    if (qword_10012CB88 != -1)
    {
      swift_once();
    }

    v8 = qword_10012E790;
  }

  else
  {
    if (qword_10012CB90 != -1)
    {
      swift_once();
    }

    v8 = qword_10012E7A8;
  }

  v9 = sub_100011F80(v2, v8);
  (*(v3 + 16))(v6, v9, v2);
  v10 = KeyframeTimeline.value(progress:)();
  *&v11 = __chkstk_darwin(v10);
  *&v13[-2] = v11;
  sub_100002B38(&qword_10012F530, &qword_1000EBD40);
  sub_100002B38(&qword_10012F538, &qword_1000EBD48);
  sub_1000057D8(&qword_10012F540, &qword_10012F530, &qword_1000EBD40);
  sub_10006D9A0();
  View.animation<A>(_:body:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t (*sub_100064F38(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_100070328;
}

uint64_t sub_100064FB0@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v44 = a1;
  v7 = sub_100002B38(&qword_10012F300, &qword_1000EBBD8);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = v39 - v10;
  v11 = type metadata accessor for Spring();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v46 = sub_100002B38(&qword_10012F318, &qword_1000EBBF0);
  v48 = *(v46 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v46);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v45 = v39 - v17;
  v18 = sub_100002B38(&qword_10012F348, &qword_1000EBC20);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v39 - v24;
  __chkstk_darwin(v26);
  v47 = v39 - v27;
  v49 = a2;
  MoveKeyframe.init(_:)();
  v28 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v29 = *(v19 + 8);
  v39[1] = v19 + 8;
  v29(v25, v18);
  v30 = v29;
  v54 = a3;
  Spring.init(duration:bounce:)();
  v49 = 0.0;
  LOBYTE(v50) = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  v31 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
  v32 = v46;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v33 = *(v48 + 8);
  v48 += 8;
  v40 = v33;
  v33(v15, v32);
  v49 = a4;
  MoveKeyframe.init(_:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v30(v22, v18);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  v34 = v41;
  v35 = v46;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v49 = COERCE_DOUBLE(&type metadata for Double);
  v50 = v18;
  v51 = v35;
  v52 = v28;
  v53 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = v34;
  v37 = v42;
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  (*(v43 + 8))(v36, v37);
  v30(v22, v18);
  v30(v25, v18);
  v40(v45, v35);
  return (v30)(v47, v18);
}

uint64_t sub_100065518(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100002B38(&qword_10012F4C8, &qword_1000EBCE8);
  sub_10006D8E0(v3, a2);
  sub_100011F80(v3, a2);
  sub_100002B38(&qword_10012F510, &qword_1000EBD10);
  sub_1000057D8(&qword_10012F518, &qword_10012F510, &qword_1000EBD10);
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10006560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[3] = a1;
  v17[4] = a2;
  v2 = sub_100002B38(&qword_10012F510, &qword_1000EBD10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  v17[2] = swift_getKeyPath();
  v17[1] = sub_100002B38(&qword_10012F2F8, &qword_1000EBBD0);
  v17[0] = sub_100005144(&qword_10012F300, &qword_1000EBBD8);
  v10 = sub_100005144(&qword_10012F348, &qword_1000EBC20);
  v11 = sub_100005144(&qword_10012F318, &qword_1000EBBF0);
  v12 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20);
  v13 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0);
  v18 = &type metadata for Double;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = &type metadata for Double;
  v19 = v17[0];
  v20 = v10;
  v21 = OpaqueTypeConformance2;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  sub_1000057D8(&qword_10012F518, &qword_10012F510, &qword_1000EBD10);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v15 = *(v3 + 8);
  v15(v6, v2);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  v15(v6, v2);
  return (v15)(v9, v2);
}

uint64_t sub_100065914(uint64_t a1, char a2, double a3)
{
  v15 = a1;
  v5 = sub_100002B38(&qword_10012F4C8, &qword_1000EBCE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  if (a2)
  {
    if (qword_10012CB98 != -1)
    {
      swift_once();
    }

    v10 = qword_10012E7C0;
  }

  else
  {
    if (qword_10012CBA0 != -1)
    {
      swift_once();
    }

    v10 = qword_10012E7D8;
  }

  v11 = sub_100011F80(v5, v10);
  (*(v6 + 16))(v9, v11, v5);
  v12 = KeyframeTimeline.value(progress:)();
  v13 = __chkstk_darwin(v12);
  *(&v15 - 32) = a2 & 1;
  *(&v15 - 3) = a3;
  *(&v15 - 2) = v13;
  sub_100002B38(&qword_10012F4D0, &qword_1000EBCF0);
  sub_100002B38(&qword_10012F4D8, &qword_1000EBCF8);
  sub_1000057D8(&qword_10012F4E0, &qword_10012F4D0, &qword_1000EBCF0);
  sub_10006D7FC();
  View.animation<A>(_:body:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100065BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v6 = static Alignment.topLeading.getter();
  v8 = v7;
  v9 = (a2 + *(sub_100002B38(&qword_10012F4D8, &qword_1000EBCF8) + 36));
  v10 = sub_100002B38(&qword_10012F508, &qword_1000EBD08);
  sub_100065C9C(v9 + *(v10 + 36), a3);
  *v9 = v6;
  v9[1] = v8;
  v11 = sub_100002B38(&qword_10012F4F8, &qword_1000EBD00);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t sub_100065C9C@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v4 = sub_100002B38(&qword_10012F3C0, &qword_1000EBC60);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v74 - v7;
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.cornerRadius.getter();
  v10 = v9;
  v11 = *(type metadata accessor for RoundedRectangle() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
  *v8 = v10;
  *(v8 + 1) = v10;
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v75.origin.x = v15;
  v75.origin.y = v17;
  v75.size.width = v19;
  v75.size.height = v21;
  CGRectGetWidth(v75);
  static ZoomCoordinator.overlayContentWidth.getter();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v76.origin.x = v23;
  v76.origin.y = v25;
  v76.size.width = v27;
  v76.size.height = v29;
  CGRectGetWidth(v76);
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v77.origin.x = v31;
  v77.origin.y = v33;
  v77.size.width = v35;
  v77.size.height = v37;
  CGRectGetHeight(v77);
  static ZoomCoordinator.containerSize.getter();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v78.origin.x = v39;
  v78.origin.y = v41;
  v78.size.width = v43;
  v78.size.height = v45;
  CGRectGetHeight(v78);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = &v8[*(sub_100002B38(&qword_10012F3F0, &qword_1000EBC78) + 36)];
  v47 = v74[1];
  *v46 = v74[0];
  *(v46 + 1) = v47;
  *(v46 + 2) = v74[2];
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v79.origin.x = v49;
  v79.origin.y = v51;
  v79.size.width = v53;
  v79.size.height = v55;
  v56 = 1.0 - a2;
  v57 = (1.0 - a2) * CGRectGetMinX(v79);
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v80.origin.x = v59;
  v80.origin.y = v61;
  v80.size.width = v63;
  v80.size.height = v65;
  MinY = CGRectGetMinY(v80);
  v67 = &v8[*(v5 + 44)];
  *v67 = v57;
  v67[1] = v56 * MinY;
  v68 = static Edge.Set.all.getter();
  v69 = [objc_opt_self() currentDevice];
  v70 = [v69 userInterfaceIdiom];

  if (v70)
  {
    v68 = Edge.Set.init(rawValue:)();
  }

  v71 = static SafeAreaRegions.all.getter();
  sub_100014830(v8, a1, &qword_10012F3C0, &qword_1000EBC60);
  result = sub_100002B38(&qword_10012F3C8, &qword_1000EBC68);
  v73 = a1 + *(result + 36);
  *v73 = v71;
  *(v73 + 8) = v68;
  return result;
}

uint64_t sub_10006605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D944();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1000660E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D944();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

double sub_100066170@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_10006617C(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_100066188(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1000661B4;
}

double sub_1000661B4(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

void sub_1000661C4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10012E7F0 = v1 == 1;
}

uint64_t sub_10006624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = static SafeAreaRegions.all.getter();
  v8 = static Edge.Set.all.getter();
  sub_1000035B4(a1, a2, &qword_10012EB08, &qword_1000EAFA0);
  result = sub_100002B38(&qword_10012EB38, &qword_1000EAFD0);
  v10 = a2 + *(result + 36);
  *v10 = v4;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  return result;
}

uint64_t sub_1000662E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = static Alignment.topLeading.getter();
  v8 = v7;
  v9 = (a2 + *(sub_100002B38(&qword_10012F1F0, &qword_1000EBAD8) + 36));
  v10 = (v9 + *(sub_100002B38(&qword_10012F210, &qword_1000EBAE0) + 36));
  v11 = *(type metadata accessor for RoundedRectangle() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = a3;
  v10[1] = a3;
  *v9 = v6;
  v9[1] = v8;
  return sub_1000035B4(a1, a2, &qword_10012F1E8, &qword_1000EBAD0);
}

uint64_t sub_100066408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  if (*a4 == -1)
  {
    return *a5;
  }

  swift_once();
  return *a5;
}

void sub_100066458()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_100135BB8 = v1 == 0;
}

uint64_t sub_1000664BC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_10006656C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100066618(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100066778@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  return sub_100068240(v5 + v3, a1, type metadata accessor for NavigationPopEventCoordinator.Container);
}

uint64_t sub_100066854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  return sub_100068240(v3 + v4, a2, type metadata accessor for NavigationPopEventCoordinator.Container);
}

uint64_t sub_100066930(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068240(a1, v7, type metadata accessor for NavigationPopEventCoordinator.Container);
  v8 = *a2;
  return sub_1000669D0(v7);
}

uint64_t sub_1000669D0(void *a1)
{
  v3 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (v15 - v8);
  v10 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  sub_100068240(v1 + v10, v9, type metadata accessor for NavigationPopEventCoordinator.Container);
  if (*v9 == *a1 && v9[1] == a1[1])
  {
    sub_100069B78(v9, type metadata accessor for NavigationPopEventCoordinator.Container);
    goto LABEL_8;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100069B78(v9, type metadata accessor for NavigationPopEventCoordinator.Container);
  if (v12)
  {
LABEL_8:
    sub_100068240(a1, v6, type metadata accessor for NavigationPopEventCoordinator.Container);
    swift_beginAccess();
    sub_1000677D4(v6, v1 + v10);
    swift_endAccess();
    return sub_100069B78(a1, type metadata accessor for NavigationPopEventCoordinator.Container);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v15[-2] = v1;
  v15[-1] = a1;
  v15[1] = v1;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100069B78(a1, type metadata accessor for NavigationPopEventCoordinator.Container);
}

uint64_t sub_100066C2C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  sub_100067838(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100066C98()
{
  v0 = type metadata accessor for NavigationPopEventCoordinator(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100066CD8();
  qword_100135BC0 = result;
  return result;
}

uint64_t sub_100066CD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v26 - v8;
  v27 = v26 - v8;
  v10 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v15 = type metadata accessor for ToolbarProxy_V1();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  UUID.init()();
  UUID.uuidString.getter();
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v26[0] = v17;
  v26[1] = v19;
  v18(v5, v1);
  v20 = *(v11 + 28);
  v16(v14 + v20, 1, 1, v15);
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  v18(v5, v1);

  *v14 = v21;
  v14[1] = v23;
  sub_1000676F8(v27, v14 + v20);
  v24 = v28;
  sub_10006B690(v14, v28 + OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer, type metadata accessor for NavigationPopEventCoordinator.Container);
  ObservationRegistrar.init()();
  return v24;
}

uint64_t sub_100066F50(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = v26 - v9;
  v11 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ToolbarProxy_V1();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, a1, v16);
  v18 = *(v17 + 56);
  v18(v10, 0, 1, v16);
  UUID.init()();
  UUID.uuidString.getter();
  v26[1] = v19;
  v20 = *(v3 + 8);
  v20(v6, v2);
  v21 = *(v12 + 28);
  v18(v15 + v21, 1, 1, v16);
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v20(v6, v2);

  *v15 = v22;
  v15[1] = v24;
  sub_1000676F8(v27, v15 + v21);
  return sub_1000669D0(v15);
}

uint64_t sub_1000671B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000671E8()
{
  v1 = *(v0 + 3);

  sub_100069B78(&v0[OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer], type metadata accessor for NavigationPopEventCoordinator.Container);
  v2 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000672D8()
{
  result = type metadata accessor for NavigationPopEventCoordinator.Container(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000673E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000674B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100067564()
{
  sub_100067EA8(319, &unk_10012E9D0, &type metadata accessor for ToolbarProxy_V1, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000676A0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000676F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006778C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000677D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000678A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100066618(v2, v3);
}

uint64_t sub_1000678E0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t initializeBufferWithCopyOfBuffer for DragState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DragState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DragState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100067984(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000679A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1000679F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _NavigationStackStyleConfiguration();
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
    v11 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100067B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _NavigationStackStyleConfiguration();
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
    v11 = sub_100002B38(&qword_10012EA18, &qword_1000EAEE0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100067C68()
{
  type metadata accessor for _NavigationStackStyleConfiguration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BaseObjectGraph();
    if (v1 <= 0x3F)
    {
      sub_10006A924(319, &qword_10012EA88, &type metadata for String, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10006A924(319, &qword_10012EA90, &type metadata for DragState, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10006A924(319, &qword_10012EA98, &type metadata for CGFloat, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10006A924(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100067EA8(319, &qword_10012EAA0, &type metadata accessor for AppFocusState, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10006A924(319, &qword_10012EAA8, &type metadata for Bool, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_100067EA8(319, &unk_10012EAB0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
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

void sub_100067EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100067F70()
{
  result = qword_10012EB40;
  if (!qword_10012EB40)
  {
    sub_100005144(&qword_10012EB08, &qword_1000EAFA0);
    sub_100067FFC();
    sub_1000680E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB40);
  }

  return result;
}

unint64_t sub_100067FFC()
{
  result = qword_10012EB48;
  if (!qword_10012EB48)
  {
    sub_100005144(&qword_10012EB28, &qword_1000EAFC0);
    sub_1000057D8(&qword_10012EB50, &qword_10012EB58, &qword_1000EAFD8);
    sub_1000057D8(&qword_10012EB60, &qword_10012EB68, &qword_1000EAFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB48);
  }

  return result;
}

unint64_t sub_1000680E0()
{
  result = qword_10012EB70;
  if (!qword_10012EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB70);
  }

  return result;
}

unint64_t sub_100068134()
{
  result = qword_10012EB78;
  if (!qword_10012EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB78);
  }

  return result;
}

unint64_t sub_100068188()
{
  result = qword_10012EB80;
  if (!qword_10012EB80)
  {
    sub_100005144(&qword_10012EB38, &qword_1000EAFD0);
    sub_100067F70();
    sub_1000057D8(&qword_10012EB88, &qword_10012EB90, &qword_1000EAFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EB80);
  }

  return result;
}

uint64_t sub_100068240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000682AC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000682E4()
{
  v1 = (type metadata accessor for OverlayStack(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = type metadata accessor for _NavigationStackStyleConfiguration();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[7]);

  v6 = v3 + v1[8];
  v7 = *(v6 + 8);

  v8 = *(v6 + 16);

  v9 = *(v3 + v1[9] + 16);

  v10 = *(v3 + v1[10] + 8);

  v11 = *(v3 + v1[11] + 8);

  v12 = (v3 + v1[12]);
  v13 = *v12;

  v14 = v12[1];

  sub_1000682AC(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v15 = v1[14];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for LayoutDirection();
    (*(*(v16 - 8) + 8))(v3 + v15, v16);
  }

  else
  {
    v17 = *(v3 + v15);
  }

  return swift_deallocObject();
}

uint64_t sub_1000684E4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_100068598()
{
  result = qword_10012EBA8;
  if (!qword_10012EBA8)
  {
    sub_100005144(&qword_10012EB10, &qword_1000EAFA8);
    sub_100068650();
    sub_1000057D8(&qword_10012EBC8, &qword_10012EBD0, &qword_1000EB008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBA8);
  }

  return result;
}

unint64_t sub_100068650()
{
  result = qword_10012EBB0;
  if (!qword_10012EBB0)
  {
    sub_100005144(&qword_10012EB98, &qword_1000EAFF0);
    sub_100005144(&qword_10012EB08, &qword_1000EAFA0);
    sub_100005144(&qword_10012EB38, &qword_1000EAFD0);
    sub_100067F70();
    sub_100068134();
    sub_100068188();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012EBB8, &qword_10012EBC0, &qword_1000EB000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBB0);
  }

  return result;
}

unint64_t sub_10006878C()
{
  result = qword_10012EBD8;
  if (!qword_10012EBD8)
  {
    sub_100005144(&qword_10012EBA0, &qword_1000EAFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBD8);
  }

  return result;
}

unint64_t sub_100068860()
{
  result = qword_10012EBE0;
  if (!qword_10012EBE0)
  {
    sub_100005144(&qword_10012EB18, &qword_1000EAFB0);
    sub_100005144(&qword_10012EB10, &qword_1000EAFA8);
    sub_100005144(&qword_10012EBA0, &qword_1000EAFF8);
    sub_100068598();
    sub_10006878C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EBE0);
  }

  return result;
}

uint64_t sub_100068954(uint64_t a1)
{
  v48 = sub_100002B38(&qword_10012ED78, &qword_1000EB128);
  v2 = *(*(v48 - 8) + 64);
  v3 = __chkstk_darwin(v48);
  v47 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v3);
  v8 = v40 - v7;
  v9 = _swiftEmptyArrayStorage;
  v46 = *(a1 + 16);
  if (v46)
  {
    v10 = v6;
    v11 = *(v6 + 80);
    v40[1] = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = _swiftEmptyArrayStorage + v41;
    v13 = 0;
    v14 = 0;
    v45 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
    v15 = *(v45 - 8);
    v16 = *(v15 + 16);
    v43 = v15 + 16;
    v44 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v18 = _swiftEmptyArrayStorage;
    v40[0] = v10;
    while (1)
    {
      v21 = v47;
      v22 = *(v48 + 48);
      *v47 = v13;
      v44(v21 + v22, v17, v45);
      result = sub_100014830(v21, v8, &qword_10012ED78, &qword_1000EB128);
      if (v14)
      {
        v9 = v18;
        v19 = v10;
        v20 = __OFSUB__(v14--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v18[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_100002B38(&qword_10012EE38, &qword_1000EB1F0);
        v27 = *(v10 + 72);
        v28 = v41;
        v9 = swift_allocObject();
        result = j__malloc_size(v9);
        if (!v27)
        {
          goto LABEL_34;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v27;
        v9[2] = v26;
        v9[3] = 2 * (v29 / v27);
        v32 = v9 + v28;
        v33 = v18[3] >> 1;
        v34 = v33 * v27;
        if (v18[2])
        {
          if (v9 < v18 || v32 >= v18 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v19 = v40[0];
        v8 = v24;
        v20 = __OFSUB__(v36, 1);
        v14 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_100014830(v8, v12, &qword_10012ED78, &qword_1000EB128);
      v10 = v19;
      v12 += *(v19 + 72);
      v17 += v42;
      v18 = v9;
      if (v46 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v37 = v9[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v14);
    v39 = v38 - v14;
    if (v20)
    {
      goto LABEL_36;
    }

    v9[2] = v39;
  }

  return v9;
}

uint64_t sub_100068C9C()
{
  v1 = (type metadata accessor for OverlayStack(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));
  v4 = type metadata accessor for _NavigationStackStyleConfiguration();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[7]);

  v6 = v3 + v1[8];
  v7 = *(v6 + 8);

  v8 = *(v6 + 16);

  v9 = *(v3 + v1[9] + 16);

  v10 = *(v3 + v1[10] + 8);

  v11 = *(v3 + v1[11] + 8);

  v12 = (v3 + v1[12]);
  v13 = *v12;

  v14 = v12[1];

  sub_1000682AC(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v15 = v1[14];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for LayoutDirection();
    (*(*(v16 - 8) + 8))(v3 + v15, v16);
  }

  else
  {
    v17 = *(v3 + v15);
  }

  return swift_deallocObject();
}

uint64_t sub_100068E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for OverlayStack(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_10004F520(a1, a2, v8, v9, a3);
}

uint64_t sub_100068EFC(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_100002B38(&qword_10012ED78, &qword_1000EB128);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_100068F64()
{
  result = qword_10012EC48;
  if (!qword_10012EC48)
  {
    sub_100005144(&qword_10012EC38, &qword_1000EB088);
    sub_100005144(&qword_10012EC50, &qword_1000EB090);
    sub_100069040();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC48);
  }

  return result;
}

unint64_t sub_100069040()
{
  result = qword_10012EC58;
  if (!qword_10012EC58)
  {
    sub_100005144(&qword_10012EC50, &qword_1000EB090);
    sub_100005144(&qword_10012EC60, &qword_1000EB098);
    type metadata accessor for AppFocusState();
    sub_100069184();
    sub_10006778C(&qword_10012ED50, &type metadata accessor for AppFocusState);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012E640, &qword_10012E648, &unk_1000EAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC58);
  }

  return result;
}

unint64_t sub_100069184()
{
  result = qword_10012EC68;
  if (!qword_10012EC68)
  {
    sub_100005144(&qword_10012EC60, &qword_1000EB098);
    sub_10006923C();
    sub_1000057D8(&qword_10012E640, &qword_10012E648, &unk_1000EAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC68);
  }

  return result;
}

unint64_t sub_10006923C()
{
  result = qword_10012EC70;
  if (!qword_10012EC70)
  {
    sub_100005144(&qword_10012EC78, &qword_1000EB0A0);
    sub_1000692C8();
    sub_1000699A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC70);
  }

  return result;
}

unint64_t sub_1000692C8()
{
  result = qword_10012EC80;
  if (!qword_10012EC80)
  {
    sub_100005144(&qword_10012EC88, &qword_1000EB0A8);
    sub_100069380();
    sub_1000057D8(&qword_10012ED38, &qword_10012ED40, &unk_1000EB108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC80);
  }

  return result;
}

unint64_t sub_100069380()
{
  result = qword_10012EC90;
  if (!qword_10012EC90)
  {
    sub_100005144(&qword_10012EC98, &qword_1000EB0B0);
    sub_100069438();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EC90);
  }

  return result;
}

unint64_t sub_100069438()
{
  result = qword_10012ECA0;
  if (!qword_10012ECA0)
  {
    sub_100005144(&qword_10012ECA8, &qword_1000EB0B8);
    sub_1000694C4();
    sub_100069954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECA0);
  }

  return result;
}

unint64_t sub_1000694C4()
{
  result = qword_10012ECB0;
  if (!qword_10012ECB0)
  {
    sub_100005144(&qword_10012ECB8, &qword_1000EB0C0);
    sub_100005144(&qword_10012ECC0, &qword_1000EB0C8);
    sub_1000695B8();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012ED20, &qword_10012ED28, &unk_1000ED420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECB0);
  }

  return result;
}

unint64_t sub_1000695B8()
{
  result = qword_10012ECC8;
  if (!qword_10012ECC8)
  {
    sub_100005144(&qword_10012ECC0, &qword_1000EB0C8);
    sub_100069670();
    sub_1000057D8(&qword_10012ED10, &qword_10012ED18, &unk_1000EB0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECC8);
  }

  return result;
}

unint64_t sub_100069670()
{
  result = qword_10012ECD0;
  if (!qword_10012ECD0)
  {
    sub_100005144(&qword_10012ECD8, &qword_1000EB0D0);
    type metadata accessor for OverlayNavigationStackItem(255);
    sub_100005144(&qword_10012ECE0, &qword_1000EB0D8);
    sub_100005144(&qword_10012ECE8, &qword_1000EB0E0);
    sub_10006778C(&qword_10012ECF0, type metadata accessor for OverlayNavigationStackItem);
    sub_100069844();
    swift_getOpaqueTypeConformance2();
    sub_100005144(&qword_10012ED00, &qword_1000EB0E8);
    sub_100069898();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECD0);
  }

  return result;
}

unint64_t sub_100069844()
{
  result = qword_10012ECF8;
  if (!qword_10012ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ECF8);
  }

  return result;
}

unint64_t sub_100069898()
{
  result = qword_10012ED08;
  if (!qword_10012ED08)
  {
    sub_100005144(&qword_10012ED00, &qword_1000EB0E8);
    sub_10006778C(&qword_10012ECF0, type metadata accessor for OverlayNavigationStackItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED08);
  }

  return result;
}

unint64_t sub_100069954()
{
  result = qword_10012ED30;
  if (!qword_10012ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED30);
  }

  return result;
}

unint64_t sub_1000699A8()
{
  result = qword_10012ED48;
  if (!qword_10012ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED48);
  }

  return result;
}

unint64_t sub_1000699FC()
{
  result = qword_10012ED60;
  if (!qword_10012ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED60);
  }

  return result;
}

unint64_t sub_100069A50()
{
  result = qword_10012ED68;
  if (!qword_10012ED68)
  {
    sub_100005144(&qword_10012ED58, &qword_1000EB118);
    sub_1000699FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012ED68);
  }

  return result;
}

uint64_t sub_100069B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069BD8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldZoomOnSegue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069C30@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isTopmostViewInOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100069CB4()
{
  v1 = (type metadata accessor for OverlayStack(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 17) & ~*(*v1 + 80));
  v4 = type metadata accessor for _NavigationStackStyleConfiguration();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[7]);

  v6 = v3 + v1[8];
  v7 = *(v6 + 8);

  v8 = *(v6 + 16);

  v9 = *(v3 + v1[9] + 16);

  v10 = *(v3 + v1[10] + 8);

  v11 = *(v3 + v1[11] + 8);

  v12 = (v3 + v1[12]);
  v13 = *v12;

  v14 = v12[1];

  sub_1000682AC(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v15 = v1[14];
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for LayoutDirection();
    (*(*(v16 - 8) + 8))(v3 + v15, v16);
  }

  else
  {
    v17 = *(v3 + v15);
  }

  return swift_deallocObject();
}

uint64_t sub_100069E88()
{
  v1 = *(type metadata accessor for OverlayStack(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_100051618(v2, v3);
}

unint64_t sub_100069EEC()
{
  result = qword_10012EDA8;
  if (!qword_10012EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDA8);
  }

  return result;
}

unint64_t sub_100069F40()
{
  result = qword_10012EDB0;
  if (!qword_10012EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDB0);
  }

  return result;
}

unint64_t sub_100069F94()
{
  result = qword_10012EDE8;
  if (!qword_10012EDE8)
  {
    sub_100005144(&qword_10012EDC8, &qword_1000EB1C8);
    sub_10006A020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDE8);
  }

  return result;
}

unint64_t sub_10006A020()
{
  result = qword_10012EDF0;
  if (!qword_10012EDF0)
  {
    sub_100005144(&qword_10012EDC0, &qword_1000EB1C0);
    sub_10006A0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDF0);
  }

  return result;
}

unint64_t sub_10006A0AC()
{
  result = qword_10012EDF8;
  if (!qword_10012EDF8)
  {
    sub_100005144(&qword_10012EDE0, &qword_1000EB1E0);
    sub_10006A138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EDF8);
  }

  return result;
}

unint64_t sub_10006A138()
{
  result = qword_10012EE00;
  if (!qword_10012EE00)
  {
    sub_100005144(&qword_10012EDD0, &qword_1000EB1D0);
    sub_1000057D8(&qword_10012EE08, &qword_10012EDD8, &qword_1000EB1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EE00);
  }

  return result;
}

uint64_t sub_10006A220(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OverlayStack(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

__n128 initializeBufferWithCopyOfBuffer for ZoomableGlassPlatterModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 sub_10006A3B4(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10006A3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10006A428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006A494(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t sub_10006A4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006A54C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t sub_10006A5A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006A6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_10006A794()
{
  type metadata accessor for _NavigationStackStyleConfiguration.Item();
  if (v0 <= 0x3F)
  {
    sub_10006FDD8(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for BaseObjectGraph();
      if (v2 <= 0x3F)
      {
        sub_10006A924(319, &unk_10012EEA8, &type metadata for Bool, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_10006A924(319, &qword_10012DD08, &type metadata for Double, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10006A924(319, &qword_10012EA98, &type metadata for CGFloat, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10006A924(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10006A974()
{
  sub_100005144(&qword_10012EB18, &qword_1000EAFB0);
  sub_100068860();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006A9F8()
{
  result = qword_10012EEF8;
  if (!qword_10012EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EEF8);
  }

  return result;
}

unint64_t sub_10006AA50()
{
  result = qword_10012EF00;
  if (!qword_10012EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF00);
  }

  return result;
}

unint64_t sub_10006AAA8()
{
  result = qword_10012EF08;
  if (!qword_10012EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF08);
  }

  return result;
}

unint64_t sub_10006ABD0()
{
  result = qword_10012EF38;
  if (!qword_10012EF38)
  {
    sub_100005144(&qword_10012EF30, &qword_1000EB8F8);
    sub_100069844();
    sub_10006AC70();
    sub_10006AF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF38);
  }

  return result;
}

unint64_t sub_10006AC70()
{
  result = qword_10012EF40;
  if (!qword_10012EF40)
  {
    sub_100005144(&qword_10012EF48, &qword_1000EB900);
    sub_10006AD28();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF40);
  }

  return result;
}

unint64_t sub_10006AD28()
{
  result = qword_10012EF50;
  if (!qword_10012EF50)
  {
    sub_100005144(&qword_10012EF58, &qword_1000EB908);
    sub_10006ADB4();
    sub_1000699A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF50);
  }

  return result;
}

unint64_t sub_10006ADB4()
{
  result = qword_10012EF60;
  if (!qword_10012EF60)
  {
    sub_100005144(&qword_10012EF68, &qword_1000EB910);
    sub_10006AE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF60);
  }

  return result;
}

unint64_t sub_10006AE40()
{
  result = qword_10012EF70;
  if (!qword_10012EF70)
  {
    sub_100005144(&qword_10012EF78, &qword_1000EB918);
    sub_10006AF0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF70);
  }

  return result;
}

unint64_t sub_10006AF0C()
{
  result = qword_10012EF80;
  if (!qword_10012EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF80);
  }

  return result;
}

unint64_t sub_10006AF60()
{
  result = qword_10012EF88;
  if (!qword_10012EF88)
  {
    sub_100005144(&qword_10012EF90, &qword_1000EB920);
    sub_10006B018();
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF88);
  }

  return result;
}

unint64_t sub_10006B018()
{
  result = qword_10012EF98;
  if (!qword_10012EF98)
  {
    sub_100005144(&qword_10012EFA0, &qword_1000EB928);
    sub_10006B0A4();
    sub_1000699A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EF98);
  }

  return result;
}

unint64_t sub_10006B0A4()
{
  result = qword_10012EFA8;
  if (!qword_10012EFA8)
  {
    sub_100005144(&qword_10012EFB0, &qword_1000EB930);
    sub_100005144(&qword_10012EFB8, &qword_1000EB938);
    type metadata accessor for RoundedRectangle();
    sub_10006B1BC();
    sub_10006778C(&qword_10012EFD8, &type metadata accessor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EFA8);
  }

  return result;
}

unint64_t sub_10006B1BC()
{
  result = qword_10012EFC0;
  if (!qword_10012EFC0)
  {
    sub_100005144(&qword_10012EFB8, &qword_1000EB938);
    sub_1000057D8(&qword_10012EFC8, &qword_10012EFD0, &qword_1000EB940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012EFC0);
  }

  return result;
}

uint64_t sub_10006B2A4(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_10006B2F8()
{
  result = qword_10012F060;
  if (!qword_10012F060)
  {
    sub_100005144(&qword_10012EFF0, &qword_1000EB958);
    sub_10006B384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F060);
  }

  return result;
}

unint64_t sub_10006B384()
{
  result = qword_10012F068;
  if (!qword_10012F068)
  {
    sub_100005144(&qword_10012EFE8, &qword_1000EB950);
    sub_10006B410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F068);
  }

  return result;
}

unint64_t sub_10006B410()
{
  result = qword_10012F070;
  if (!qword_10012F070)
  {
    sub_100005144(&qword_10012EFE0, &qword_1000EB948);
    sub_10006778C(&qword_10012F078, &type metadata accessor for _NavigationStackStyleConfiguration.Item);
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F070);
  }

  return result;
}

unint64_t sub_10006B4F8()
{
  result = qword_10012F0A0;
  if (!qword_10012F0A0)
  {
    sub_100005144(&qword_10012F098, &qword_1000EBA08);
    sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10);
    sub_1000057D8(&qword_10012F0B8, &qword_10012F0C0, &qword_1000EBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0A0);
  }

  return result;
}

unint64_t sub_10006B5D0()
{
  result = qword_10012F0C8;
  if (!qword_10012F0C8)
  {
    sub_100005144(&qword_10012F058, &qword_1000EB9F0);
    sub_10006B2F8();
    sub_10006778C(&qword_10012F0D0, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0C8);
  }

  return result;
}

uint64_t sub_10006B690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B724()
{
  v1 = type metadata accessor for OverlayNavigationStackItem(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = (v3 + v1[8]);
  if (*v5)
  {
    v6 = v5[1];
  }

  v7 = *(v3 + v1[9]);

  v8 = (v3 + v1[10]);
  v9 = *v8;

  v10 = v8[1];

  v11 = *(v3 + v1[11] + 8);

  v12 = *(v3 + v1[12] + 8);

  v13 = *(v3 + v1[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_10006B8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

unint64_t sub_10006B93C()
{
  result = qword_10012F0D8;
  if (!qword_10012F0D8)
  {
    sub_100005144(&qword_10012F000, &qword_1000EB968);
    sub_100005144(&qword_10012EFF0, &qword_1000EB958);
    sub_100005144(&qword_10012F050, &qword_1000EB9E8);
    sub_100005144(&qword_10012F058, &qword_1000EB9F0);
    sub_10006B2F8();
    sub_100005144(&qword_10012F090, &qword_1000EBA00);
    sub_100005144(&qword_10012F098, &qword_1000EBA08);
    sub_10006B4F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10006B5D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0D8);
  }

  return result;
}

unint64_t sub_10006BAF4()
{
  result = qword_10012F0E0;
  if (!qword_10012F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0E0);
  }

  return result;
}

unint64_t sub_10006BB74()
{
  result = qword_10012F0E8;
  if (!qword_10012F0E8)
  {
    sub_100005144(&qword_10012F040, &qword_1000EB9A8);
    sub_10006BC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0E8);
  }

  return result;
}

unint64_t sub_10006BC00()
{
  result = qword_10012F0F0;
  if (!qword_10012F0F0)
  {
    sub_100005144(&qword_10012F038, &qword_1000EB9A0);
    sub_10006BC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0F0);
  }

  return result;
}

unint64_t sub_10006BC8C()
{
  result = qword_10012F0F8;
  if (!qword_10012F0F8)
  {
    sub_100005144(&qword_10012F030, &qword_1000EB998);
    sub_100005144(&qword_10012F020, &qword_1000EB988);
    sub_100005144(&qword_10012ECE0, &qword_1000EB0D8);
    sub_100005144(&qword_10012F100, &qword_1000EBA20);
    sub_100005144(&qword_10012F108, &qword_1000EBA28);
    sub_100005144(&qword_10012F0B0, &qword_1000EBA10);
    sub_10006BE68();
    sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10);
    swift_getOpaqueTypeConformance2();
    sub_100069844();
    swift_getOpaqueTypeConformance2();
    sub_10006C064();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F0F8);
  }

  return result;
}

unint64_t sub_10006BE68()
{
  result = qword_10012F110;
  if (!qword_10012F110)
  {
    sub_100005144(&qword_10012F108, &qword_1000EBA28);
    sub_10006BEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F110);
  }

  return result;
}

unint64_t sub_10006BEF4()
{
  result = qword_10012F118;
  if (!qword_10012F118)
  {
    sub_100005144(&qword_10012F120, &qword_1000EBA30);
    sub_10006BF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F118);
  }

  return result;
}

unint64_t sub_10006BF80()
{
  result = qword_10012F128;
  if (!qword_10012F128)
  {
    sub_100005144(&qword_10012F130, &qword_1000EBA38);
    sub_1000057D8(&qword_10012F138, &qword_10012F140, &qword_1000EBA40);
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F128);
  }

  return result;
}

unint64_t sub_10006C064()
{
  result = qword_10012F148;
  if (!qword_10012F148)
  {
    sub_100005144(&qword_10012F100, &qword_1000EBA20);
    sub_10006C0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F148);
  }

  return result;
}

unint64_t sub_10006C0F0()
{
  result = qword_10012F150;
  if (!qword_10012F150)
  {
    sub_100005144(&qword_10012F158, &unk_1000EBA48);
    sub_100005144(&qword_10012F108, &qword_1000EBA28);
    sub_100005144(&qword_10012F0B0, &qword_1000EBA10);
    sub_10006BE68();
    sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012CDD8, &qword_10012CDE0, &qword_1000E90D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F150);
  }

  return result;
}

uint64_t sub_10006C238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for OverlayNavigationStackItem(0) - 8) + 80);

  return sub_1000561BC(a1, a2);
}

uint64_t sub_10006C2E4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_10006C360()
{
  v1 = type metadata accessor for OverlayNavigationStackItem(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = (v0 + v2 + v1[8]);
  if (*v6)
  {
    v7 = v6[1];
  }

  v8 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v4 + v1[9]);

  v10 = (v4 + v1[10]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v4 + v1[11] + 8);

  v14 = *(v4 + v1[12] + 8);

  v15 = *(v4 + v1[13] + 8);

  v16 = *(v0 + v8 + 8);

  return swift_deallocObject();
}

uint64_t sub_10006C4C4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for OverlayNavigationStackItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100056C28(a1, a2, v2 + v6, v8);
}

uint64_t sub_10006C574(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10006C5BC()
{
  v1 = type metadata accessor for ToolbarProxy_V1();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006C680(uint64_t a1)
{
  v4 = *(type metadata accessor for ToolbarProxy_V1() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100056838(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006C770()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10006C858()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006C890()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014BAC;

  return sub_100057744();
}

uint64_t sub_10006C94C@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 18);
  if (*(v3 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_10005D764(a1, a2, v5 | *(v3 + 16), *(v3 + 24), *(v3 + 32), a3);
}

uint64_t sub_10006C98C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 16);
  if (*(v1 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_10005DE48(v3 | v4, *(v1 + 24), *(v1 + 32), a1);
}

unint64_t sub_10006C9CC()
{
  result = qword_10012F1B0;
  if (!qword_10012F1B0)
  {
    sub_100005144(&qword_10012F198, &qword_1000EBAA8);
    sub_10006CADC();
    sub_100005144(&qword_10012F1E8, &qword_1000EBAD0);
    sub_100005144(&qword_10012F1F0, &qword_1000EBAD8);
    sub_10006CC20();
    sub_100068134();
    sub_10006CCAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1B0);
  }

  return result;
}

unint64_t sub_10006CADC()
{
  result = qword_10012F1B8;
  if (!qword_10012F1B8)
  {
    sub_100005144(&qword_10012F1C0, &qword_1000EBAB8);
    sub_10006CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1B8);
  }

  return result;
}

unint64_t sub_10006CB68()
{
  result = qword_10012F1C8;
  if (!qword_10012F1C8)
  {
    sub_100005144(&qword_10012F1D0, &qword_1000EBAC0);
    sub_1000057D8(&qword_10012F1D8, &qword_10012F1E0, &qword_1000EBAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1C8);
  }

  return result;
}

unint64_t sub_10006CC20()
{
  result = qword_10012F1F8;
  if (!qword_10012F1F8)
  {
    sub_100005144(&qword_10012F1E8, &qword_1000EBAD0);
    sub_10006CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F1F8);
  }

  return result;
}

unint64_t sub_10006CCAC()
{
  result = qword_10012F200;
  if (!qword_10012F200)
  {
    sub_100005144(&qword_10012F1F0, &qword_1000EBAD8);
    sub_10006CC20();
    sub_1000057D8(&qword_10012F208, &qword_10012F210, &qword_1000EBAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F200);
  }

  return result;
}

uint64_t sub_10006CD64()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_10005E78C(v4 | v5);
}

uint64_t sub_10006CE04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void, uint64_t, void, double)@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(v5 + 17))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | *(v5 + 16);
  if (*(v5 + 18))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  return sub_1000622E4(v7 | v8, *(v5 + 24), *(v5 + 32), a1, a2, a3, a4, a5);
}

unint64_t sub_10006CE68()
{
  result = qword_10012F2A8;
  if (!qword_10012F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F2A8);
  }

  return result;
}

unint64_t sub_10006CEC4()
{
  result = qword_10012F3D8;
  if (!qword_10012F3D8)
  {
    sub_100005144(&qword_10012F3C8, &qword_1000EBC68);
    sub_10006CF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3D8);
  }

  return result;
}

unint64_t sub_10006CF50()
{
  result = qword_10012F3E0;
  if (!qword_10012F3E0)
  {
    sub_100005144(&qword_10012F3C0, &qword_1000EBC60);
    sub_10006CFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3E0);
  }

  return result;
}

unint64_t sub_10006CFDC()
{
  result = qword_10012F3E8;
  if (!qword_10012F3E8)
  {
    sub_100005144(&qword_10012F3F0, &qword_1000EBC78);
    sub_10006778C(&qword_10012F3F8, &type metadata accessor for RoundedRectangle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F3E8);
  }

  return result;
}

uint64_t sub_10006D098(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006D108()
{
  result = qword_10012F408;
  if (!qword_10012F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F408);
  }

  return result;
}

uint64_t sub_10006D180(char *a1)
{
  v4 = *(v1 + 88);
  v3 = *a1;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

uint64_t sub_10006D1D8(char *a1)
{
  v4 = *(v1 + 104);
  v3 = *a1;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

unint64_t sub_10006D240()
{
  result = qword_10012F460;
  if (!qword_10012F460)
  {
    sub_100005144(&qword_10012F410, &qword_1000EBC80);
    sub_10006D2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F460);
  }

  return result;
}

unint64_t sub_10006D2CC()
{
  result = qword_10012F468;
  if (!qword_10012F468)
  {
    sub_100005144(&qword_10012F458, &qword_1000EBCC8);
    sub_10006D358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F468);
  }

  return result;
}

unint64_t sub_10006D358()
{
  result = qword_10012F470;
  if (!qword_10012F470)
  {
    sub_100005144(&qword_10012F450, &qword_1000EBCC0);
    sub_10006D410();
    sub_1000057D8(&qword_10012F4A0, &qword_10012F4A8, &qword_1000EBCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F470);
  }

  return result;
}

unint64_t sub_10006D410()
{
  result = qword_10012F478;
  if (!qword_10012F478)
  {
    sub_100005144(&qword_10012F448, &qword_1000EBCB8);
    sub_10006D4C8();
    sub_1000057D8(&qword_10012F490, &qword_10012F498, &qword_1000EBCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F478);
  }

  return result;
}

unint64_t sub_10006D4C8()
{
  result = qword_10012F480;
  if (!qword_10012F480)
  {
    sub_100005144(&qword_10012F440, &qword_1000EBCB0);
    sub_10006778C(&qword_10012F488, type metadata accessor for OverlayNavigationBar);
    sub_1000057D8(&qword_10012DB70, &qword_10012DB78, &qword_1000EB100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F480);
  }

  return result;
}

uint64_t sub_10006D5B0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  return swift_deallocObject();
}

unint64_t sub_10006D628()
{
  result = qword_10012F4B8;
  if (!qword_10012F4B8)
  {
    sub_100005144(&qword_10012F420, &qword_1000EBC90);
    sub_100005144(&qword_10012F410, &qword_1000EBC80);
    sub_10006D240();
    swift_getOpaqueTypeConformance2();
    sub_1000699A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4B8);
  }

  return result;
}

unint64_t sub_10006D704()
{
  result = qword_10012F4C0;
  if (!qword_10012F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4C0);
  }

  return result;
}

uint64_t sub_10006D790()
{
  v2 = *(*(v0 + 16) + 104);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

uint64_t sub_10006D7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100065BA8(a1, a2, *(v2 + 32));
}

unint64_t sub_10006D7FC()
{
  result = qword_10012F4E8;
  if (!qword_10012F4E8)
  {
    sub_100005144(&qword_10012F4D8, &qword_1000EBCF8);
    sub_1000057D8(&qword_10012F4F0, &qword_10012F4F8, &qword_1000EBD00);
    sub_1000057D8(&qword_10012F500, &qword_10012F508, &qword_1000EBD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F4E8);
  }

  return result;
}

uint64_t *sub_10006D8E0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_10006D944()
{
  result = qword_10012F520;
  if (!qword_10012F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F520);
  }

  return result;
}

unint64_t sub_10006D9A0()
{
  result = qword_10012F548;
  if (!qword_10012F548)
  {
    sub_100005144(&qword_10012F538, &qword_1000EBD48);
    sub_1000057D8(&qword_10012F550, &qword_10012F558, &qword_1000EBD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F548);
  }

  return result;
}

unint64_t sub_10006DA58()
{
  result = qword_10012F588;
  if (!qword_10012F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F588);
  }

  return result;
}

unint64_t sub_10006DAAC()
{
  result = qword_10012F590;
  if (!qword_10012F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParentPushPopAnimator.Track(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParentPushPopAnimator.Track(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10006DBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_10012F598, &qword_1000EBE28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006DC70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002B38(&qword_10012F598, &qword_1000EBE28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006DD20()
{
  sub_10006FDD8(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BaseObjectGraph();
    if (v1 <= 0x3F)
    {
      sub_10006A924(319, &unk_10012EEA8, &type metadata for Bool, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_10006A924(319, &qword_10012CEE8, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10006A924(319, &qword_10012DD08, &type metadata for Double, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10006A924(319, &qword_10012EA98, &type metadata for CGFloat, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10006FDD8(319, &qword_10012F608, &qword_10012E960, &qword_1000EAD08, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10006FDD8(319, &qword_10012F610, &qword_10012F430, &qword_1000EBCA0, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10006FDD8(319, &qword_10012F618, &qword_10012F438, &qword_1000EBCA8, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10006DFCC();
                    if (v9 <= 0x3F)
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

void sub_10006DFCC()
{
  if (!qword_10012F620)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10012F620);
    }
  }
}

unint64_t sub_10006E028()
{
  result = qword_10012F690;
  if (!qword_10012F690)
  {
    sub_100005144(&qword_10012EF10, &qword_1000EB8D8);
    sub_1000057D8(&qword_10012F698, &qword_10012EF20, &qword_1000EB8E8);
    sub_1000057D8(&qword_10012F6A0, &qword_10012EF18, &qword_1000EB8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F690);
  }

  return result;
}

unint64_t sub_10006E110()
{
  result = qword_10012F6A8;
  if (!qword_10012F6A8)
  {
    sub_100005144(&qword_10012F6B0, &qword_1000EBE48);
    sub_100005144(&qword_10012F040, &qword_1000EB9A8);
    sub_10006BB74();
    swift_getOpaqueTypeConformance2();
    sub_100005144(&qword_10012F008, &qword_1000EB970);
    sub_100005144(&qword_10012F000, &qword_1000EB968);
    sub_10006B93C();
    sub_10006BAF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6A8);
  }

  return result;
}

unint64_t sub_10006E28C()
{
  result = qword_10012F6B8;
  if (!qword_10012F6B8)
  {
    sub_100005144(&qword_10012F250, &qword_1000EBB08);
    sub_10006E318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6B8);
  }

  return result;
}

unint64_t sub_10006E318()
{
  result = qword_10012F6C0;
  if (!qword_10012F6C0)
  {
    sub_100005144(&qword_10012F188, &qword_1000EBA98);
    sub_100005144(&qword_10012F190, &qword_1000EBAA0);
    sub_100005144(&qword_10012F198, &qword_1000EBAA8);
    sub_100005144(&qword_10012F1A0, &qword_1000EBAB0);
    sub_1000057D8(&qword_10012F1A8, &qword_10012F190, &qword_1000EBAA0);
    sub_10006C9CC();
    sub_100005144(&qword_10012F218, &qword_1000EBAE8);
    sub_100005144(&qword_10012F220, &qword_1000EBAF0);
    sub_100005144(&qword_10012F228, &qword_1000EBAF8);
    sub_100005144(&qword_10012F230, &qword_1000EBB00);
    sub_1000057D8(&qword_10012F238, &qword_10012F228, &qword_1000EBAF8);
    sub_1000057D8(&qword_10012F240, &qword_10012F230, &qword_1000EBB00);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012F248, &qword_10012F220, &qword_1000EBAF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012F6C8, &qword_10012F6D0, &qword_1000EBE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6C0);
  }

  return result;
}

unint64_t sub_10006E5F8()
{
  result = qword_10012F6D8;
  if (!qword_10012F6D8)
  {
    sub_100005144(&qword_10012F3A0, &qword_1000EBC40);
    sub_1000057D8(&qword_10012F6E0, &qword_10012F3B0, &qword_1000EBC50);
    sub_1000057D8(&qword_10012F6E8, &qword_10012F3A8, &qword_1000EBC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6D8);
  }

  return result;
}

unint64_t sub_10006E6E0()
{
  result = qword_10012F6F0;
  if (!qword_10012F6F0)
  {
    sub_100005144(&qword_10012F6F8, qword_1000EBE58);
    sub_100005144(&qword_10012F420, &qword_1000EBC90);
    sub_10006D628();
    sub_10006D704();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F6F0);
  }

  return result;
}

uint64_t sub_10006E7BC()
{
  sub_100005144(&qword_10012F4D0, &qword_1000EBCF0);
  sub_100005144(&qword_10012F4D8, &qword_1000EBCF8);
  sub_1000057D8(&qword_10012F4E0, &qword_10012F4D0, &qword_1000EBCF0);
  sub_10006D7FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006E878()
{
  sub_100005144(&qword_10012F530, &qword_1000EBD40);
  sub_100005144(&qword_10012F538, &qword_1000EBD48);
  sub_1000057D8(&qword_10012F540, &qword_10012F530, &qword_1000EBD40);
  sub_10006D9A0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006E974()
{
  result = qword_10012F730;
  if (!qword_10012F730)
  {
    sub_100005144(&qword_10012F700, &qword_1000EBEF8);
    sub_10006EA30();
    sub_10006778C(&qword_10012F760, type metadata accessor for OverlayNavigationBarPadding);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F730);
  }

  return result;
}

unint64_t sub_10006EA30()
{
  result = qword_10012F738;
  if (!qword_10012F738)
  {
    sub_100005144(&qword_10012F728, &qword_1000EBF20);
    sub_1000057D8(&qword_10012F740, &qword_10012F748, &qword_1000EBF60);
    sub_1000057D8(&qword_10012F750, &qword_10012F758, &qword_1000EBF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F738);
  }

  return result;
}

uint64_t sub_10006EB34()
{
  v1 = type metadata accessor for OverlayNavigationBar(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  if (v3[1])
  {
    v4 = v3[2];
  }

  v5 = v3[3];

  v6 = v3[4];

  v7 = v3[5];

  v8 = v3[8];

  v9 = v3[10];

  v10 = v3[12];

  v11 = v3[14];

  v12 = v3[16];

  v13 = v3 + v1[15];
  v14 = type metadata accessor for ToolbarProxy_V1();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *&v13[*(sub_100002B38(&qword_10012F598, &qword_1000EBE28) + 28)];

  v17 = v3 + v1[16];
  if (*(v17 + 3))
  {
    sub_1000054E0(*v17, *(v17 + 1), v17[16]);
    v18 = *(v17 + 3);
  }

  v19 = *(v17 + 4);

  v20 = *(v3 + v1[17] + 8);

  v21 = v3 + v1[18];
  if (*(v21 + 3))
  {
    sub_10002E6CC((v3 + v1[18]));
  }

  v22 = *(v21 + 5);

  v23 = v3 + v1[19];
  if (*(v23 + 3))
  {
    sub_10002E6CC((v3 + v1[19]));
  }

  v24 = *(v23 + 5);

  v25 = v3 + v1[20];
  if (*(v25 + 3))
  {
    sub_10002E6CC((v3 + v1[20]));
  }

  v26 = *(v25 + 5);

  v27 = *(v3 + v1[21] + 8);

  return swift_deallocObject();
}

uint64_t sub_10006ED80(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for OverlayNavigationBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10005B764(a1, a2, v6);
}

uint64_t sub_10006EE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_10006EEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OverlayNavigationBar(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_10006EF70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_10006EFB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011720;

  return sub_10005B9DC(a1, v4, v5, v7, v6);
}

uint64_t sub_10006F070()
{
  v1 = *(v0 + 16);
  *(v0 + 24);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

unint64_t sub_10006F10C()
{
  result = qword_10012F810;
  if (!qword_10012F810)
  {
    sub_100005144(&qword_10012F818, &qword_1000EC040);
    sub_10006F198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F810);
  }

  return result;
}

unint64_t sub_10006F198()
{
  result = qword_10012F820;
  if (!qword_10012F820)
  {
    sub_100005144(&qword_10012F828, &qword_1000EC048);
    sub_10006F248(&qword_10012F830, &qword_10012F838, &qword_1000EC050, sub_10006F2C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F820);
  }

  return result;
}

uint64_t sub_10006F248(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006F2C4()
{
  result = qword_10012F840;
  if (!qword_10012F840)
  {
    sub_100005144(&qword_10012F848, &qword_1000EC058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F840);
  }

  return result;
}

unint64_t sub_10006F348()
{
  result = qword_10012F850;
  if (!qword_10012F850)
  {
    sub_100005144(&qword_10012F7C8, &qword_1000EC008);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F850);
  }

  return result;
}

uint64_t sub_10006F3EC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10006F404(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_10006F404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1000054F0(a1, a2, a3 & 1);
  }
}

uint64_t sub_10006F454(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_10006F468(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_10006F468(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10006F480(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_10006F480(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_1000054E0(a1, a2, a3 & 1);
  }
}

uint64_t sub_10006F4D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_10006F508()
{
  result = qword_10012F908;
  if (!qword_10012F908)
  {
    sub_100005144(&qword_10012F900, &qword_1000EC0E8);
    sub_100005144(&qword_10012F910, &qword_1000EC0F0);
    sub_100005144(&qword_10012F918, &qword_1000EC0F8);
    sub_100005144(&qword_10012F920, &unk_1000EC100);
    sub_10006F668();
    sub_10006F6F4();
    sub_10006F838();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012F968, &qword_10012F970, &qword_1000EC130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F908);
  }

  return result;
}

unint64_t sub_10006F668()
{
  result = qword_10012F928;
  if (!qword_10012F928)
  {
    sub_100005144(&qword_10012F910, &qword_1000EC0F0);
    sub_100005578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F928);
  }

  return result;
}

unint64_t sub_10006F6F4()
{
  result = qword_10012F930;
  if (!qword_10012F930)
  {
    sub_100005144(&qword_10012F918, &qword_1000EC0F8);
    sub_100069844();
    sub_100005144(&qword_10012F910, &qword_1000EC0F0);
    sub_10006F668();
    sub_10006F7E4();
    swift_getOpaqueTypeConformance2();
    sub_10006F838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F930);
  }

  return result;
}

unint64_t sub_10006F7E4()
{
  result = qword_10012F938;
  if (!qword_10012F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F938);
  }

  return result;
}

unint64_t sub_10006F838()
{
  result = qword_10012F940;
  if (!qword_10012F940)
  {
    sub_100005144(&qword_10012F920, &unk_1000EC100);
    sub_10006F8F0();
    sub_1000057D8(&qword_10012F958, &qword_10012F960, &qword_1000EC128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F940);
  }

  return result;
}

unint64_t sub_10006F8F0()
{
  result = qword_10012F948;
  if (!qword_10012F948)
  {
    sub_100005144(&qword_10012F950, &unk_1000EC118);
    sub_10006F668();
    sub_1000057D8(&qword_10012CE58, &qword_10012CD40, &qword_1000E9070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F948);
  }

  return result;
}

unint64_t sub_10006F9A8()
{
  result = qword_10012F978;
  if (!qword_10012F978)
  {
    sub_100005144(&qword_10012F898, &qword_1000EC0A0);
    sub_1000057D8(&qword_10012F980, &qword_10012F988, &qword_1000EC138);
    sub_1000057D8(&qword_10012F080, &qword_10012F088, &qword_1000EB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F978);
  }

  return result;
}

unint64_t sub_10006FA8C()
{
  result = qword_10012F990;
  if (!qword_10012F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F990);
  }

  return result;
}

unint64_t sub_10006FAE0()
{
  result = qword_10012F9A8;
  if (!qword_10012F9A8)
  {
    sub_100005144(&qword_10012F8A8, &qword_1000EC0B0);
    sub_100005144(&qword_10012F8A0, &qword_1000EC0A8);
    sub_100005144(&qword_10012F890, &qword_1000EC098);
    sub_1000057D8(&qword_10012F998, &qword_10012F890, &qword_1000EC098);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F9A8);
  }

  return result;
}

uint64_t sub_10006FC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006FCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10006FD40()
{
  sub_10006FDD8(319, &qword_10012E158, &qword_100132550, &qword_1000EC170, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10006FDD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10006FE3C()
{
  sub_100005144(&qword_10012F718, &qword_1000EBF10);
  type metadata accessor for NavigationPopEventCoordinator.Container(255);
  sub_100005144(&qword_10012F710, &qword_1000EBF08);
  sub_100005144(&qword_10012F708, &qword_1000EBF00);
  sub_100005144(&qword_10012F700, &qword_1000EBEF8);
  type metadata accessor for ZoomCoordinator.ScrollGeometry();
  sub_10006E974();
  sub_10006778C(&qword_10012F168, &type metadata accessor for ZoomCoordinator.ScrollGeometry);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10006778C(&qword_10012F768, type metadata accessor for NavigationPopEventCoordinator.Container);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100070024()
{
  result = qword_10012FA58;
  if (!qword_10012FA58)
  {
    sub_100005144(&qword_10012FA48, &qword_1000EC1C8);
    sub_1000700B0();
    sub_10007013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA58);
  }

  return result;
}

unint64_t sub_1000700B0()
{
  result = qword_10012FA60;
  if (!qword_10012FA60)
  {
    sub_100005144(&qword_10012FA68, &qword_1000EC1D8);
    sub_10007013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA60);
  }

  return result;
}

unint64_t sub_10007013C()
{
  result = qword_10012FA70;
  if (!qword_10012FA70)
  {
    sub_100005144(&qword_10012FA50, &qword_1000EC1D0);
    sub_1000057D8(&qword_10012FA78, &qword_10012FA80, &qword_1000EC1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA70);
  }

  return result;
}

unint64_t sub_1000701F8()
{
  result = qword_10012FA90;
  if (!qword_10012FA90)
  {
    sub_100005144(&qword_10012FA98, &qword_1000EC1F8);
    sub_100069844();
    sub_100070024();
    sub_10007013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA90);
  }

  return result;
}

uint64_t OverlayFlowAuthorityProvider.selectedTabId.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100067644(v1 + 16, a1);
}

uint64_t sub_10007043C(uint64_t a1)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  swift_getKeyPath();
  v4[0] = v1;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v1 + 16, v4);
  dispatch thunk of ZoomCoordinator.save(for:)();

  sub_1000708BC(v4);
  swift_beginAccess();
  sub_100072CD8(a1, v1 + 16);
  swift_endAccess();
  static ZoomCoordinator.shared.getter();
  swift_getKeyPath();
  v4[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100067644(v1 + 16, v4);
  dispatch thunk of ZoomCoordinator.load(with:)();

  sub_1000708BC(a1);
  return sub_1000708BC(v4);
}

uint64_t sub_1000705E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100067644(v3 + 16, a2);
}

uint64_t sub_1000706A4(uint64_t a1, uint64_t *a2)
{
  sub_100067644(a1, v5);
  v3 = *a2;
  return OverlayFlowAuthorityProvider.selectedTabId.setter(v5);
}

uint64_t sub_1000706E0(uint64_t a1, uint64_t *a2)
{
  sub_100067644(a1, v5);
  v3 = *a2;
  return OverlayFlowAuthorityProvider.selectedTabId.setter(v5);
}

uint64_t type metadata accessor for OverlayFlowAuthorityProvider()
{
  result = qword_10012FAE8;
  if (!qword_10012FAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OverlayFlowAuthorityProvider.selectedTabId.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_100067644(v1 + 16, v6);
  v3 = static AnyHashable.== infix(_:_:)();
  sub_1000708BC(v6);
  if (v3)
  {
    sub_100067644(a1, v6);
    sub_10007043C(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[0] = v1;
    sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1000708BC(a1);
}

void (*OverlayFlowAuthorityProvider.selectedTabId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  swift_getKeyPath();
  v4[14] = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[15] = sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v1 + 16, v4);
  return sub_100070A74;
}

void sub_100070A74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 112);
  v3 = *(*a1 + 120);
  v5 = *(*a1 + 104);
  if (a2)
  {
    sub_100067644(*a1, (v2 + 5));
    sub_10007043C((v2 + 5));
    sub_1000708BC(v2);
  }

  else
  {
    sub_10007043C(*a1);
  }

  *v2 = v5;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v2);
}

uint64_t OverlayFlowAuthorityProvider.flowAuthority.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v4 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100070C28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100070D30(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v12[-v8];
  (*(v5 + 16))(&v12[-v8], a1, v4, v7);
  v10 = *a2;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  v15 = v10;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v9, v4);
}

uint64_t OverlayFlowAuthorityProvider.flowAuthority.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_100070FD0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void (*OverlayFlowAuthorityProvider.flowAuthority.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1000711DC;
}

void sub_1000711DC(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t OverlayFlowAuthorityProvider.tabs.getter()
{
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);
}

uint64_t sub_10007130C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);
}

uint64_t sub_1000713C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10007141C(v4);
}

uint64_t sub_1000713F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10007141C(v4);
}

uint64_t sub_10007141C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs;
  v4 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);

  v6 = sub_100071B08(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t OverlayFlowAuthorityProvider.__allocating_init(tabsInfoProvider:defaultTab:objectGraph:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_100071D1C(a1, a2, a3, a4);

  return v11;
}

uint64_t OverlayFlowAuthorityProvider.init(tabsInfoProvider:defaultTab:objectGraph:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = sub_100071D1C(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_100071654@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return AnyHashable.init<A>(_:)();
  }

  v3 = Strong;
  swift_getKeyPath();
  *&v6[0] = v3;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v3 + 16, v6);

  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1000717A4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100067644(a1, v7);
    swift_beginAccess();
    sub_100067644(v3 + 16, v6);
    v4 = static AnyHashable.== infix(_:_:)();
    sub_1000708BC(v6);
    if (v4)
    {
      sub_100067644(v7, v6);
      sub_10007043C(v6);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v6[0] = v3;
      sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return sub_1000708BC(v7);
  }

  return result;
}

uint64_t OverlayFlowAuthorityProvider.deinit()
{
  sub_1000708BC(v0 + 16);
  v1 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  v2 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);

  v4 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t OverlayFlowAuthorityProvider.__deallocating_deinit()
{
  sub_1000708BC(v0 + 16);
  v1 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority;
  v2 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);

  v4 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100071B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    sub_100072C44(&qword_10012FB98, &type metadata accessor for StoreTab);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100071D1C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v93 = a4;
  v88 = a3;
  v89 = a2;
  v90 = a1;
  v74 = type metadata accessor for StoreTab.Identifier();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v85 = &v71 - v10;
  v84 = type metadata accessor for StoreTab();
  v83 = *(v84 - 8);
  v11 = *(v83 + 64);
  __chkstk_darwin(v84);
  v71 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for FlowOrigin();
  v82 = *(v86 - 8);
  v13 = *(v82 + 64);
  __chkstk_darwin(v86);
  v81 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowAnimationBehavior();
  v79 = *(v80 - 8);
  v15 = *(v79 + 64);
  __chkstk_darwin(v80);
  v78 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FlowPresentationContext();
  v17 = *(v77 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v77);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ActionMetrics();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v71 - v25;
  v27 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v71 - v29;
  v75 = &v71 - v29;
  v31 = type metadata accessor for FlowPage();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v35;
  v36 = sub_100002B38(&qword_10012FAB0, &qword_1000EC250);
  v91 = *(v36 - 8);
  v92 = v36;
  v37 = *(v91 + 64);
  __chkstk_darwin(v36);
  v87 = &v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v71 - v40;
  *&v96[0] = 0;
  *(&v96[0] + 1) = 0xE000000000000000;
  AnyHashable.init<A>(_:)();
  v42 = v98;
  *(v5 + 16) = v97;
  *(v5 + 32) = v42;
  *(v5 + 48) = v99;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  (*(v32 + 104))(v35, enum case for FlowPage.page(_:), v31);
  v43 = type metadata accessor for URL();
  (*(*(v43 - 8) + 56))(v30, 1, 1, v43);
  v44 = type metadata accessor for ReferrerData();
  (*(*(v44 - 8) + 56))(v26, 1, 1, v44);
  memset(v96, 0, 32);
  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v17 + 104))(v20, enum case for FlowPresentationContext.infer(_:), v77);
  (*(v79 + 104))(v78, enum case for FlowAnimationBehavior.infer(_:), v80);
  (*(v82 + 104))(v81, enum case for FlowOrigin.inapp(_:), v86);
  v45 = type metadata accessor for FlowAction();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *&v97 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_100072C44(&qword_10012CCD8, &type metadata accessor for FlowAction);
  v81 = sub_100072C44(&qword_10012CCE0, &type metadata accessor for FlowAction);
  FlowAuthority.init(content:)();
  v48 = *(v91 + 32);
  v86 = v41;
  v48(v5 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__flowAuthority, v41, v92);
  *(v5 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs) = _swiftEmptyArrayStorage;
  v82 = OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider___observationRegistrar;
  ObservationRegistrar.init()();
  v49 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v50 = static MainActor.shared.getter();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = &protocol witness table for MainActor;
  v51[4] = v49;

  v52 = swift_allocObject();
  swift_weakInit();

  v53 = static MainActor.shared.getter();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = &protocol witness table for MainActor;
  v55 = v85;
  v56 = v83;
  v54[4] = v52;
  v57 = v84;

  Binding.init(get:set:)();
  sub_1000035B4(v93, v55, &qword_10012E650, &qword_1000EDA30);
  if ((*(v56 + 48))(v55, 1, v57) == 1)
  {
    v58 = v90;

    sub_100005688(v55, &qword_10012E650, &qword_1000EDA30);
  }

  else
  {
    v59 = v71;
    (*(v56 + 32))(v71, v55, v57);
    v58 = v90;

    v60 = v72;
    StoreTab.identifier.getter();
    v61 = StoreTab.Identifier.rawValue.getter();
    v63 = v62;
    (*(v73 + 8))(v60, v74);
    v94 = v61;
    v95 = v63;
    AnyHashable.init<A>(_:)();
    sub_100002B38(&qword_10012FB90, &qword_1000EC300);
    Binding.wrappedValue.setter();
    (*(v56 + 8))(v59, v57);
  }

  v89(v58);
  sub_1000035B4(&v97, v96, &qword_10012FB90, &qword_1000EC300);
  v64 = v87;
  FlowAuthority.init(tabSelection:tabContent:)();
  sub_100005688(&v97, &qword_10012FB90, &qword_1000EC300);
  v66 = v91;
  v65 = v92;
  v67 = v86;
  (*(v91 + 16))(v86, v64, v92);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *&v97 = v5;
  sub_100072C44(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v69 = *(v66 + 8);
  v69(v67, v65);
  sub_10007141C(v58);
  sub_100005688(v93, &qword_10012E650, &qword_1000EDA30);
  v69(v64, v65);
  return v5;
}

void sub_1000729BC()
{
  sub_100072AA0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100072AA0()
{
  if (!qword_10012FAF8)
  {
    type metadata accessor for FlowAction();
    sub_100072C44(&qword_10012CCD8, &type metadata accessor for FlowAction);
    sub_100072C44(&qword_10012CCE0, &type metadata accessor for FlowAction);
    v0 = type metadata accessor for FlowAuthority();
    if (!v1)
    {
      atomic_store(v0, &qword_10012FAF8);
    }
  }
}

uint64_t sub_100072B6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100072BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100071654(a1);
}

uint64_t sub_100072BB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100072BF4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1000717A4(a1);
}

uint64_t sub_100072C00()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI28OverlayFlowAuthorityProvider__tabs) = *(v0 + 24);
}

uint64_t sub_100072C44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100072C8C()
{
  v1 = *(v0 + 16);
  sub_100067644(*(v0 + 24), v3);
  return sub_10007043C(v3);
}

uint64_t sub_100072D68@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&unk_100132500, &unk_1000EA640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for DashboardContentView(0);
  sub_1000035B4(v1 + *(v12 + 40), v11, &unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10007A9C0(v11, a1);
  }

  v14 = *v11;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100072F40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = type metadata accessor for DashboardContentView(0);
  v80 = *(v3 - 8);
  v79 = *(v80 + 64);
  v4 = v3 - 8;
  v81 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v78 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012FFD0, &qword_1000EC530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v77 - v11;
  v82 = sub_100002B38(&qword_10012FF78, &qword_1000EC510);
  v83 = *(v82 - 8);
  v13 = *(v83 + 64);
  __chkstk_darwin(v82);
  v15 = &v77 - v14;
  v84 = sub_100002B38(&qword_10012FF60, &qword_1000EC508);
  v16 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v18 = &v77 - v17;
  v88 = sub_100002B38(&qword_10012FF50, &qword_1000EC500);
  v19 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v21 = &v77 - v20;
  v89 = sub_100002B38(&qword_10012FF48, &qword_1000EC4F8);
  v90 = *(v89 - 8);
  v22 = *(v90 + 64);
  __chkstk_darwin(v89);
  v86 = &v77 - v23;
  v92 = sub_100002B38(&qword_10012FF40, &qword_1000EC4F0);
  v93 = *(v92 - 8);
  v24 = *(v93 + 64);
  __chkstk_darwin(v92);
  v85 = &v77 - v25;
  v94 = sub_100002B38(&qword_10012FF30, &qword_1000EC4E8);
  v26 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v91 = &v77 - v27;
  v99 = sub_100002B38(&qword_10012FF20, &qword_1000EC4D8);
  v96 = *(v99 - 8);
  v28 = *(v96 + 64);
  __chkstk_darwin(v99);
  v87 = &v77 - v29;
  v30 = sub_100002B38(&qword_10012FF18, &qword_1000EC4D0);
  v97 = *(v30 - 8);
  v98 = v30;
  v31 = *(v97 + 64);
  __chkstk_darwin(v30);
  v95 = &v77 - v32;
  v33 = v1 + *(v4 + 60);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v9 + 8))(v12, v8);
  v34 = v78;
  sub_100079A18(v2, v78);
  v35 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v36 = swift_allocObject();
  sub_100079D7C(v34, v36 + v35);
  type metadata accessor for FlowAction();
  sub_100002B38(&qword_10012FFD8, &qword_1000EC568);
  sub_1000798F8(&qword_10012CCD8, &type metadata accessor for FlowAction);
  sub_1000798F8(&qword_10012CCE0, &type metadata accessor for FlowAction);
  sub_100079E60();
  FlowView.init(following:tabLabels:destinations:)();
  v102 = v2;
  sub_100002B38(&qword_10012FF88, &qword_1000EC518);
  sub_1000057D8(&qword_10012FF80, &qword_10012FF88, &qword_1000EC518);
  v37 = v82;
  FlowView.customPresentation<A>(_:)();
  (*(v83 + 8))(v15, v37);
  v38 = *v2;
  v101 = v2;
  v39 = v2;
  v77 = v2;
  type metadata accessor for BaseObjectGraph();
  sub_100079814();
  View.actionDispatcher<A>(with:implementations:)();
  sub_100005688(v18, &qword_10012FF60, &qword_1000EC508);
  v40 = static MoltresTint.standard.getter();
  KeyPath = swift_getKeyPath();
  v103 = v40;
  v42 = AnyShapeStyle.init<A>(_:)();
  v43 = v88;
  v44 = &v21[*(v88 + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  v45 = type metadata accessor for GSKDeepLinkWithReferrerIntent();
  v46 = sub_100079708();
  v47 = sub_1000798F8(&qword_10012FFA0, &type metadata accessor for GSKDeepLinkWithReferrerIntent);
  v48 = v86;
  View.onDeepLink<A>(prepare:recover:)();
  sub_100005688(v21, &qword_10012FF50, &qword_1000EC500);
  v103 = v43;
  v104 = v45;
  v105 = v46;
  v106 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v85;
  v88 = v38;
  v51 = v89;
  View.videoPlaybackCoordinator(objectGraph:)();
  (*(v90 + 8))(v48, v51);
  v52 = v81;
  v53 = (v39 + *(v81 + 56));
  v55 = v53[1];
  v103 = *v53;
  v54 = v103;
  v104 = v55;
  sub_100002B38(&qword_100130018, &qword_1000EC5C0);
  State.wrappedValue.getter();
  type metadata accessor for DashboardTabViewState(0);
  v103 = v51;
  v104 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  v56 = v91;
  v57 = v92;
  View.environment<A>(_:)();

  (*(v93 + 8))(v50, v57);
  v58 = swift_getKeyPath();
  v103 = v54;
  v104 = v55;
  State.wrappedValue.getter();
  v60 = *(v108 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID);
  v59 = *(v108 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID + 8);

  v61 = v94;
  v62 = &v56[*(v94 + 36)];
  v63 = v56;
  *v62 = v58;
  v62[1] = v60;
  v62[2] = v59;
  v64 = sub_1000794F4();
  v65 = sub_100079940();
  v66 = v87;
  View.tabViewStyle<A>(_:)();
  sub_100005688(v63, &qword_10012FF30, &qword_1000EC4E8);
  sub_1000035B4(v77 + *(v52 + 40), &v103, &unk_100131120, &unk_1000EAAF0);
  v67 = v106;
  if (v106)
  {
    v68 = v107;
    sub_10002D754(&v103, v106);
    v69 = (*(v68 + 24))(v67, v68) & 1;
    sub_10002E6CC(&v103);
  }

  else
  {
    sub_100005688(&v103, &unk_100131120, &unk_1000EAAF0);
    v69 = 2;
  }

  LOBYTE(v108) = v69;
  v70 = sub_100002B38(&qword_10012FF28, &qword_1000EC4E0);
  v103 = v61;
  v104 = &type metadata for GameOverlayTabViewStyle;
  v105 = v64;
  v106 = v65;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_100079994();
  v73 = v95;
  v74 = v99;
  View.onChange<A>(of:initial:_:)();
  (*(v96 + 8))(v66, v74);
  v103 = v74;
  v104 = v70;
  v105 = v71;
  v106 = v72;
  swift_getOpaqueTypeConformance2();
  v75 = v98;
  View.withInternalSettingsGesture(using:)();
  return (*(v97 + 8))(v73, v75);
}

uint64_t sub_100073C24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a1;
  v87 = a3;
  v3 = sub_100002B38(&qword_100130060, &qword_1000EC630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  done = type metadata accessor for FlowSheetDoneButtonLabelStyle();
  v78 = *(done - 8);
  v79 = done;
  v8 = *(v78 + 64);
  __chkstk_darwin(done);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DashboardContentView(0);
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v73 = v13;
  v74 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100002B38(&qword_10012FFF8, &qword_1000EC578);
  v14 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v76 = (&v66 - v15);
  v16 = sub_100002B38(&qword_10012FFF0, &qword_1000EC570);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v80 = &v66 - v18;
  v86 = type metadata accessor for FlowDestination();
  v82 = *(v86 - 8);
  v19 = *(v82 + 64);
  __chkstk_darwin(v86);
  v70 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v81 = &v66 - v21;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  v25 = type metadata accessor for FlowAction.Destination();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v85 = (&v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __chkstk_darwin(v29);
  v32 = &v66 - v31;
  v33 = *(v26 + 16);
  v33(&v66 - v31, v84, v25, v30);
  if ((*(v26 + 88))(v32, v25) != enum case for FlowAction.Destination.games(_:))
  {
    goto LABEL_5;
  }

  v68 = v16;
  v69 = v6;
  v84 = v3;
  v34 = v85;
  (v33)(v85, v32, v25);
  (*(v26 + 96))(v34, v25);
  if (!swift_dynamicCast())
  {
    sub_10002E6CC(v85);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_100079EEC();
    _ConditionalContent<>.init(storage:)();
    return (*(v26 + 8))(v32, v25);
  }

  v35 = v82;
  v66 = *(v82 + 32);
  v36 = v81;
  v37 = v86;
  v66(v81, v24, v86);
  v38 = v83;
  v39 = (v83 + *(v71 + 28));
  v41 = *v39;
  v40 = v39[1];
  v71 = v41;
  v67 = v40;
  v42 = v70;
  (*(v35 + 16))(v70, v36, v37);
  v43 = v74;
  sub_100079A18(v38, v74);
  v44 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v45 = (v19 + *(v72 + 80) + v44) & ~*(v72 + 80);
  v46 = swift_allocObject();
  v66((v46 + v44), v42, v37);
  v47 = v46;
  sub_100079D7C(v43, v46 + v45);
  KeyPath = swift_getKeyPath();
  v49 = v76;
  *v76 = KeyPath;
  sub_100002B38(&qword_100130068, &qword_1000EC668);
  swift_storeEnumTagMultiPayload();
  v50 = swift_getKeyPath();
  v51 = v75;
  v52 = v49 + *(v75 + 36);
  *v52 = v50;
  *(v52 + 8) = 0;
  v53 = (v49 + *(v51 + 40));
  v54 = v71;
  v55 = v67;
  *v53 = v71;
  v53[1] = v55;
  v56 = (v49 + *(v51 + 44));
  *v56 = sub_10007A834;
  v56[1] = v47;
  v57 = v77;
  v58 = v78;
  v59 = v79;
  (*(v78 + 104))(v77, enum case for FlowSheetDoneButtonLabelStyle.iconOnly(_:), v79);
  sub_10000519C(v54);
  sub_1000057D8(&qword_100130000, &qword_10012FFF8, &qword_1000EC578);
  v60 = v80;
  View.flowSheetDoneButtonLabelStyle(_:)();
  (*(v58 + 8))(v57, v59);
  sub_100005688(v49, &qword_10012FFF8, &qword_1000EC578);
  type metadata accessor for ArtworkLoader();
  v61 = *v83;
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v62 = v88;
  sub_1000798F8(&qword_100130070, &type metadata accessor for ArtworkLoader);
  v63 = static ObservableObject.environmentStore.getter();
  v64 = (v60 + *(v68 + 36));
  *v64 = v63;
  v64[1] = v62;
  sub_10007A950(v60, v69);
  swift_storeEnumTagMultiPayload();
  sub_100079EEC();
  _ConditionalContent<>.init(storage:)();
  sub_100005688(v60, &qword_10012FFF0, &qword_1000EC570);
  (*(v82 + 8))(v81, v86);
  sub_10002E6CC(v85);
  return (*(v26 + 8))(v32, v25);
}

uint64_t sub_10007441C()
{
  v0 = sub_100002B38(&qword_100130030, &qword_1000EC610);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = *(type metadata accessor for DashboardContentView(0) + 44);
  sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  State.projectedValue.getter();

  sub_100002B38(&qword_10012FFD8, &qword_1000EC568);
  sub_100079E60();
  return FlowFullScreenCoverViewModifier.init(following:destinations:)();
}

uint64_t sub_100074514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v64 = a2;
  v2 = sub_100002B38(&qword_100130020, &qword_1000EC600);
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v61 = v52 - v5;
  v6 = sub_100002B38(&qword_100130028, &qword_1000EC608);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v58 = v52 - v9;
  v10 = sub_100002B38(&qword_100130030, &qword_1000EC610);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v55 = sub_100002B38(&qword_100130038, &qword_1000EC618);
  v57 = *(v55 - 8);
  v12 = *(v57 + 64);
  __chkstk_darwin(v55);
  v14 = v52 - v13;
  v15 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v68 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v67 = v52 - v20;
  __chkstk_darwin(v21);
  v23 = v52 - v22;
  __chkstk_darwin(v24);
  v26 = v52 - v25;
  v56 = type metadata accessor for DashboardContentView(0);
  v52[2] = *(v56 + 44);
  v52[1] = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  State.projectedValue.getter();
  v27 = type metadata accessor for BaseObjectGraph();
  FullScreenCoverFlowActionImplementation.init(following:)();
  ActionDispatcher.init()();
  v65 = *(v16 + 16);
  v70 = v26;
  v65(v26, v23, v15);
  sub_1000057D8(&qword_100130040, &qword_100130038, &qword_1000EC618);
  v28 = v55;
  ActionDispatcher.add<A>(_:)();
  v29 = *(v16 + 8);
  v29(v23, v15);
  (*(v57 + 8))(v14, v28);
  State.projectedValue.getter();
  v30 = v58;
  FullScreenCoverFlowBackActionImplementation.init(following:)();
  v31 = v67;
  ActionDispatcher.init()();
  v32 = v23;
  v69 = v23;
  v33 = v31;
  v34 = v65;
  v65(v32, v31, v15);
  sub_1000057D8(&qword_100130048, &qword_100130028, &qword_1000EC608);
  v35 = v59;
  ActionDispatcher.add<A>(_:)();
  v53 = v29;
  v29(v33, v15);
  (*(v60 + 8))(v30, v35);
  v36 = *(v56 + 36);
  Strong = swift_unknownObjectWeakLoadStrong();
  v38 = [Strong rootViewController];

  v39 = v61;
  v54 = v27;
  GamesSignInActionImplementation.init(hostViewController:)();
  v40 = v68;
  ActionDispatcher.init()();
  v41 = v33;
  v34(v33, v40, v15);
  sub_1000057D8(&qword_100130050, &qword_100130020, &qword_1000EC600);
  v42 = v39;
  v43 = v62;
  v44 = v41;
  ActionDispatcher.add<A>(_:)();
  v29(v40, v15);
  (*(v63 + 8))(v42, v43);
  sub_100002B38(&qword_100130058, &qword_1000EC628);
  v45 = *(v16 + 72);
  v46 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v63 = 2 * v45;
  v66 = swift_allocObject();
  v47 = v66 + v46;
  v48 = v65;
  v65((v66 + v46), v70, v15);
  v48(v47 + v45, v69, v15);
  v48(v47 + 2 * v45, v44, v15);
  ActionDispatcher.init()();
  v49 = v68;
  v48(v68, v47, v15);
  ActionDispatcher.add(contentsOf:)();
  v50 = v53;
  v53(v49, v15);
  v48(v49, (v47 + v45), v15);
  ActionDispatcher.add(contentsOf:)();
  v50(v49, v15);
  v48(v49, (v47 + v63), v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ActionDispatcher.add(contentsOf:)();
  v50(v49, v15);
  v50(v67, v15);
  v50(v69, v15);
  return (v50)(v70, v15);
}

uint64_t sub_100074CC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DeepLink();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100074D80, 0, 0);
}

uint64_t sub_100074D80()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  GSKDeepLinkWithReferrerIntent.init(with:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100074E0C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Models.AlertAction();
  a1[4] = &protocol witness table for Models.AlertAction;
  sub_100012854(a1);
  swift_errorRetain();

  return Models.AlertAction.init(contentUnavailableError:retry:)();
}

void sub_100074E84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100011F80(v11, qword_100135C88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    v15 = v9 != 2 && (v9 & 1) != 0;
    *(v14 + 4) = v15;
    *(v14 + 8) = 1024;
    v16 = v10 != 2 && (v10 & 1) != 0;
    *(v14 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "GameCenterDashboard: Observed a change of remoteAlertContext.dismissDashboardRequested (%{BOOL}d -> %{BOOL}d)", v14, 0xEu);
  }

  if (v10 != 2 && (v10 & 1) != 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "GameCenterDashboard: Calling dismissHandler..", v19, 2u);
    }

    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    (*(v5 + 104))(v8, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v4);
    dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
  }
}

uint64_t sub_100075104@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v45 = sub_100002B38(&qword_10012FF08, &qword_1000EC4B8);
  v2 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v47 = &v43 - v3;
  v4 = sub_100002B38(&qword_10012FF10, &unk_1000EC4C0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v46 = &v43 - v6;
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  v44 = v1;
  sub_100072D68(&v43 - v24);
  (*(v8 + 104))(v22, enum case for UserInterfaceSizeClass.compact(_:), v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v26 = *(v12 + 56);
  sub_1000035B4(v25, v15, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v22, &v15[v26], &qword_100132550, &qword_1000EC170);
  v27 = *(v8 + 48);
  if (v27(v15, 1, v7) != 1)
  {
    sub_1000035B4(v15, v19, &qword_100132550, &qword_1000EC170);
    if (v27(&v15[v26], 1, v7) != 1)
    {
      v30 = v43;
      (*(v8 + 32))(v43, &v15[v26], v7);
      sub_1000798F8(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v8 + 8);
      v31(v30, v7);
      sub_100005688(v22, &qword_100132550, &qword_1000EC170);
      sub_100005688(v25, &qword_100132550, &qword_1000EC170);
      v31(v19, v7);
      sub_100005688(v15, &qword_100132550, &qword_1000EC170);
      v29 = v48;
      v28 = v49;
      goto LABEL_8;
    }

    sub_100005688(v22, &qword_100132550, &qword_1000EC170);
    sub_100005688(v25, &qword_100132550, &qword_1000EC170);
    (*(v8 + 8))(v19, v7);
    goto LABEL_6;
  }

  sub_100005688(v22, &qword_100132550, &qword_1000EC170);
  sub_100005688(v25, &qword_100132550, &qword_1000EC170);
  if (v27(&v15[v26], 1, v7) != 1)
  {
LABEL_6:
    sub_100005688(v15, &qword_10012E1A0, &qword_1000EC1F0);
    v29 = v48;
    v28 = v49;
    goto LABEL_8;
  }

  sub_100005688(v15, &qword_100132550, &qword_1000EC170);
  v29 = v48;
  v28 = v49;
LABEL_8:
  v32 = v46;
  sub_100072F40(v46);
  (*(v29 + 16))(v47, v32, v28);
  swift_storeEnumTagMultiPayload();
  v33 = sub_100005144(&qword_10012FF18, &qword_1000EC4D0);
  v34 = sub_100005144(&qword_10012FF20, &qword_1000EC4D8);
  v35 = sub_100005144(&qword_10012FF28, &qword_1000EC4E0);
  v36 = sub_100005144(&qword_10012FF30, &qword_1000EC4E8);
  v37 = sub_1000794F4();
  v38 = sub_100079940();
  v51 = v36;
  v52 = &type metadata for GameOverlayTabViewStyle;
  v53 = v37;
  v54 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_100079994();
  v51 = v34;
  v52 = v35;
  v53 = OpaqueTypeConformance2;
  v54 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v51 = v33;
  v52 = v41;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v29 + 8))(v32, v28);
}

uint64_t sub_1000757DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005144(&qword_100130138, qword_1000EC810);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = v25 - v16;
  v18 = v2 + *(a1 + 44);
  v19 = *(v18 + 8);
  (*v18)(v15);
  static Alignment.center.getter();
  v20 = *(a1 + 24);
  sub_10007B558();
  View.background<A>(_:alignment:)();
  (*(v5 + 8))(v8, v4);
  v21 = sub_1000057D8(&qword_100130148, &qword_100130138, qword_1000EC810);
  v25[2] = v20;
  v25[3] = v21;
  WitnessTable = swift_getWitnessTable();
  sub_10009B680(v13, v9, WitnessTable);
  v23 = *(v10 + 8);
  v23(v13, v9);
  sub_10009B680(v17, v9, WitnessTable);
  return (v23)(v17, v9);
}

uint64_t sub_100075A68()
{
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout);
}

uint64_t sub_100075B4C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100075C64(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v27 = &v24[-v5];
  v6 = type metadata accessor for StoreTab.Identifier();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v24[-v11];
  v13 = type metadata accessor for StoreTab();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v35 = v1;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v19 = *(v14 + 16);
  v29 = v2;
  v26 = v19;
  v19(v17, v2 + v18, v13);
  StoreTab.identifier.getter();
  (*(v14 + 8))(v17, v13);
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  sub_1000798F8(&qword_100130080, &type metadata accessor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v33 == v31 && v34 == v32)
  {
    v20 = *(v30 + 8);
    v20(v9, v6);
    v20(v12, v6);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = *(v30 + 8);
    v21(v9, v6);
    v21(v12, v6);

    if ((v25 & 1) == 0)
    {
      return result;
    }
  }

  v23 = v27;
  v26(v27, v28, v13);
  (*(v14 + 56))(v23, 0, 1, v13);
  return sub_100076A34(v23);
}

uint64_t sub_100076050@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v4 = type metadata accessor for StoreTab();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100076148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v5 = type metadata accessor for StoreTab();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100076240(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_10007630C(v8);
}

uint64_t sub_10007630C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v11, v2 + v12, v4);
  sub_1000798F8(&qword_10012FB98, &type metadata accessor for StoreTab);
  v20 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v11, v4);
  if (a1)
  {
    v13(v11, v20, v4);
    v13(v8, v2 + v12, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v12, v11, v4);
    swift_endAccess();
    sub_100075C64(v8);
    v14 = v19;
    v19(v8, v4);
    v14(v11, v4);
    return (v14)(v20, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v17 = v20;
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v17;
    v21 = v2;
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return (v19)(v20, v4);
  }
}

uint64_t sub_100076628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v12 = &v17[-v11];
  v13 = *(v5 + 16);
  v13(&v17[-v11], a2, v4, v10);
  v14 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  (v13)(v8, a1 + v14, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v14, v12, v4);
  swift_endAccess();
  sub_100075C64(v8);
  v15 = *(v5 + 8);
  v15(v8, v4);
  return (v15)(v12, v4);
}

uint64_t sub_1000767D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  return sub_1000035B4(v5 + v3, a1, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_1000768B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  return sub_1000035B4(v3 + v4, a2, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_100076988(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_1000035B4(a1, &v10 - v6, &qword_10012E650, &qword_1000EDA30);
  v8 = *a2;
  return sub_100076A34(v7);
}

uint64_t sub_100076A34(uint64_t a1)
{
  v3 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  sub_1000035B4(v1 + v7, v6, &qword_10012E650, &qword_1000EDA30);
  v8 = sub_10007AB98(v6, a1);
  sub_100005688(v6, &qword_10012E650, &qword_1000EDA30);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000035B4(a1, v6, &qword_10012E650, &qword_1000EDA30);
    swift_beginAccess();
    sub_10007AEB8(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_100005688(a1, &qword_10012E650, &qword_1000EDA30);
}

uint64_t sub_100076C3C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab;
  swift_beginAccess();
  sub_10007AF4C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100076CA8()
{
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange);
}

uint64_t sub_100076D64@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100076E40(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_100076F68()
{
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);

  return v1;
}

id sub_100077020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  *a2 = v4;

  return v4;
}

void sub_1000770E0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver;
  v5 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  type metadata accessor for GameControllerObserver();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10007725C(double a1)
{
  result = DynamicTypeSize.isAccessibilitySize.getter();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout))
    {
      goto LABEL_5;
    }

    *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = 0;
  }

  else
  {
    if (((a1 > 500.0) ^ *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout)))
    {
LABEL_5:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__tabLayout) = a1 > 500.0;
  }

  return result;
}

uint64_t sub_10007747C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v32 = a1;
  v30 = type metadata accessor for StoreTab.Identifier();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v27 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayCallCenter();
  static OverlayCallCenter.shared.getter();
  LODWORD(v31) = OverlayCallCenter.hasActiveCalls.getter();

  v11 = *(v2 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);
  v12 = *(v11 + 16);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState___observationRegistrar;
  v34 = v3;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  v23[1] = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  swift_beginAccess();
  v25 = v7[2];
  v25(v10, v3 + v14, v6);
  v15 = sub_100077864(v10, v11);
  v17 = v16;
  v26 = v7;
  v24 = v7[1];
  result = v24(v10, v6);
  if (v17)
  {
    return result;
  }

  v19 = v15 + v32;
  if (__OFADD__(v15, v32))
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = (v31 & 1) == 0;
  if (v12 <= v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v19 >= v20 && v12 > v19)
  {
    if (*(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) == 1)
    {
      *(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = 1;
    }

    else
    {
      v32 += v15;
      KeyPath = swift_getKeyPath();
      v31 = v23;
      __chkstk_darwin(KeyPath);
      v23[-2] = v3;
      LOBYTE(v23[-1]) = 1;
      v33 = v3;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v19 = v32;
    }

    if (v19 < *(v11 + 16))
    {
      v25(v10, v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v26[9] * v19, v6);
      v22 = v27;
      StoreTab.identifier.getter();
      v24(v10, v6);
      sub_100077984(v22, v29);
      return (*(v28 + 8))(v22, v30);
    }

LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_100077864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StoreTab() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1000798F8(&qword_10012FB98, &type metadata accessor for StoreTab);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100077984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v101 = a2;
  v105 = a1;
  v102 = sub_100002B38(&qword_10012EBF0, &unk_1000EB020);
  v100 = *(v102 - 8);
  v4 = *(v100 + 64);
  __chkstk_darwin(v102);
  v99 = v82 - v5;
  v86 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v104 = *(v86 - 8);
  v6 = *(v104 + 64);
  __chkstk_darwin(v86);
  v103 = v82 - v7;
  v96 = type metadata accessor for FlowOrigin();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  __chkstk_darwin(v96);
  v98 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FlowAnimationBehavior();
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v92);
  v94 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for FlowPresentationContext();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v89);
  v93 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActionMetrics();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v90 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v87 = v82 - v19;
  v20 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v106 = v82 - v22;
  v23 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v108 = v82 - v25;
  v84 = type metadata accessor for FlowPage();
  v26 = *(v84 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v84);
  v107 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for StoreTab.Identifier();
  v29 = *(v85 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v85);
  v32 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v82 - v34;
  v36 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v82 - v38;
  v40 = type metadata accessor for StoreTab();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v97 = v82 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = v82 - v45;
  v47 = v3;
  v48 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);
  v109 = v105;
  sub_1000979E8(sub_10007AA30, v48, v39);
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    return sub_100005688(v39, &qword_10012E650, &qword_1000EDA30);
  }

  v82[1] = 0;
  v83 = v41;
  v50 = *(v41 + 32);
  v105 = v40;
  v50(v46, v39, v40);
  StoreTab.identifier.getter();
  v51 = StoreTab.Identifier.rawValue.getter();
  v53 = v52;
  v54 = *(v29 + 8);
  v55 = v85;
  v54(v35, v85);
  *&v110 = v51;
  *(&v110 + 1) = v53;
  v56 = v47;
  AnyHashable.init<A>(_:)();
  (*(v26 + 104))(v107, enum case for FlowPage.games(_:), v84);
  v57 = type metadata accessor for URL();
  (*(*(v57 - 8) + 56))(v108, 1, 1, v57);
  v58 = type metadata accessor for ReferrerData();
  (*(*(v58 - 8) + 56))(v106, 1, 1, v58);
  v84 = v46;
  StoreTab.identifier.getter();
  v59 = *(v47 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID);
  v60 = *(v47 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID + 8);
  v61 = *(v47 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_isGamesAppInstalled);
  v62 = v87;
  StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();
  v54(v32, v55);
  v63 = type metadata accessor for FlowDestination();
  v64 = *(v63 - 8);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    sub_100005688(v62, &qword_10012E4A0, &unk_1000EA940);
    v110 = 0u;
    v111 = 0u;
  }

  else
  {
    *(&v111 + 1) = v63;
    v65 = sub_100012854(&v110);
    (*(v64 + 32))(v65, v62, v63);
  }

  v66 = v86;
  v67 = v103;
  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v88 + 104))(v93, enum case for FlowPresentationContext.infer(_:), v89);
  (*(v91 + 104))(v94, enum case for FlowAnimationBehavior.infer(_:), v92);
  (*(v95 + 104))(v98, enum case for FlowOrigin.inapp(_:), v96);
  v68 = type metadata accessor for FlowAction();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  BaseObjectGraph.inject<A>(_:)();
  v112[3] = v68;
  v112[4] = sub_1000798F8(&qword_100130078, &type metadata accessor for FlowAction);
  v112[0] = v71;
  v72 = v100;
  v73 = v99;
  v74 = v102;
  (*(v100 + 104))(v99, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v102);

  ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v72 + 8))(v73, v74);
  sub_10002E6CC(v112);
  swift_getKeyPath();
  v112[0] = v56;
  sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = *(v56 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  v76 = GameControllerObserver.controller.getter();

  if (v76)
  {
  }

  if (((v76 != 0) ^ *(v56 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v112[0] = v56;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v56 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__updateFocusOnTabChange) = v76 != 0;
  }

  v78 = v105;
  v79 = v83;
  v80 = v84;
  v81 = v97;
  (*(v83 + 16))(v97, v84, v105);
  sub_10007630C(v81);

  (*(v104 + 8))(v67, v66);
  return (*(v79 + 8))(v80, v78);
}

uint64_t sub_10007868C()
{
  v0 = type metadata accessor for StoreTab.Identifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoreTab.identifier.getter();
  sub_1000798F8(&qword_100130080, &type metadata accessor for StoreTab.Identifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v7[2] == v7[0] && v7[3] == v7[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v1 + 8))(v4, v0);

  return v5 & 1;
}

uint64_t sub_100078818()
{
  sub_100005688(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_player, &qword_10012E478, &unk_1000EA8E0);
  v1 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_bundleID + 8);

  v2 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_commonOnboardingStatus;
  v3 = type metadata accessor for CommonOnboardingStatus();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_tabs);

  v5 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__selectedTab;
  v6 = type metadata accessor for StoreTab();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_100005688(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__previousSelectedTab, &qword_10012E650, &qword_1000EDA30);
  v7 = *(v0 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState_objectGraph);

  v8 = OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState___observationRegistrar;
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_10007897C()
{
  sub_100078818();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000789FC()
{
  sub_100078C14(319, &qword_10012FC08, &type metadata accessor for Player, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for CommonOnboardingStatus();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = type metadata accessor for StoreTab();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100078C14(319, &unk_10012FC10, &type metadata accessor for StoreTab, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = type metadata accessor for ObservationRegistrar();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100078C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for DashboardTabViewState.OverlayTabLayout(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DashboardTabViewState.OverlayTabLayout(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100078DE8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[13]];

  return v16(v17, a2, v15);
}

char *sub_100078FE0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100002B38(&qword_10012E0E0, qword_1000EA510);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_100002B38(&qword_10012FE20, &qword_1000EC388);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

void sub_1000791E4()
{
  type metadata accessor for BaseObjectGraph();
  if (v0 <= 0x3F)
  {
    sub_10007B340(319, &qword_10012E3B8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100078C14(319, &qword_10012FC08, &type metadata accessor for Player, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10007B2DC(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10007B2DC(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10007B2DC(319, &qword_10012E158, &qword_100132550, &qword_1000EC170, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10007B2DC(319, &qword_10012FE98, &qword_10012FEA0, &qword_1000EC3D8, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_100078C14(319, &qword_10012FEA8, type metadata accessor for DashboardTabViewState, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_100078C14(319, &unk_10012FEB0, type metadata accessor for OverlayFlowAuthorityProvider, &type metadata accessor for Bindable);
                  if (v8 <= 0x3F)
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

unint64_t sub_1000794A0()
{
  result = qword_10012FF00;
  if (!qword_10012FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF00);
  }

  return result;
}

unint64_t sub_1000794F4()
{
  result = qword_10012FF38;
  if (!qword_10012FF38)
  {
    sub_100005144(&qword_10012FF30, &qword_1000EC4E8);
    sub_100005144(&qword_10012FF40, &qword_1000EC4F0);
    type metadata accessor for DashboardTabViewState(255);
    sub_100005144(&qword_10012FF48, &qword_1000EC4F8);
    sub_100005144(&qword_10012FF50, &qword_1000EC500);
    type metadata accessor for GSKDeepLinkWithReferrerIntent();
    sub_100079708();
    sub_1000798F8(&qword_10012FFA0, &type metadata accessor for GSKDeepLinkWithReferrerIntent);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000798F8(&qword_10012FFA8, type metadata accessor for DashboardTabViewState);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012FFB0, &qword_10012FFB8, &qword_1000EC528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF38);
  }

  return result;
}

unint64_t sub_100079708()
{
  result = qword_10012FF58;
  if (!qword_10012FF58)
  {
    sub_100005144(&qword_10012FF50, &qword_1000EC500);
    sub_100005144(&qword_10012FF60, &qword_1000EC508);
    type metadata accessor for BaseObjectGraph();
    sub_100079814();
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_10012FF90, &qword_10012FF98, &qword_1000EC520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF58);
  }

  return result;
}

unint64_t sub_100079814()
{
  result = qword_10012FF68;
  if (!qword_10012FF68)
  {
    sub_100005144(&qword_10012FF60, &qword_1000EC508);
    sub_1000057D8(&qword_10012FF70, &qword_10012FF78, &qword_1000EC510);
    sub_1000057D8(&qword_10012FF80, &qword_10012FF88, &qword_1000EC518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF68);
  }

  return result;
}

uint64_t sub_1000798F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100079940()
{
  result = qword_10012FFC0;
  if (!qword_10012FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFC0);
  }

  return result;
}

unint64_t sub_100079994()
{
  result = qword_10012FFC8;
  if (!qword_10012FFC8)
  {
    sub_100005144(&qword_10012FF28, &qword_1000EC4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFC8);
  }

  return result;
}

uint64_t sub_100079A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DashboardContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079A7C()
{
  v1 = type metadata accessor for DashboardContentView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 2);

  v6 = v1[6];
  v7 = type metadata accessor for Player();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v3[v6], 1, v7))
  {
    (*(v8 + 8))(&v3[v6], v7);
  }

  v9 = &v3[v1[7]];
  if (*v9)
  {
    v10 = *(v9 + 1);
  }

  v11 = &v3[v1[8]];
  if (v11[3])
  {
    sub_10002E6CC(v11);
  }

  v12 = v1[9];
  swift_unknownObjectWeakDestroy();
  v13 = v1[10];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&v3[v13], 1, v14))
    {
      (*(v15 + 8))(&v3[v13], v14);
    }
  }

  else
  {
    v16 = *&v3[v13];
  }

  v17 = &v3[v1[11]];
  v18 = sub_100002B38(&qword_10012FEA0, &qword_1000EC3D8);
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = *&v17[*(sub_100002B38(&qword_10012FE20, &qword_1000EC388) + 28)];

  v20 = &v3[v1[12]];
  v21 = *v20;

  v22 = *(v20 + 1);

  v23 = v1[13];
  v24 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  (*(*(v24 - 8) + 8))(&v3[v23], v24);

  return swift_deallocObject();
}

uint64_t sub_100079D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DashboardContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DashboardContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100073C24(a1, v6, a2);
}

unint64_t sub_100079E60()
{
  result = qword_10012FFE0;
  if (!qword_10012FFE0)
  {
    sub_100005144(&qword_10012FFD8, &qword_1000EC568);
    sub_100079EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFE0);
  }

  return result;
}

unint64_t sub_100079EEC()
{
  result = qword_10012FFE8;
  if (!qword_10012FFE8)
  {
    sub_100005144(&qword_10012FFF0, &qword_1000EC570);
    sub_100005144(&qword_10012FFF8, &qword_1000EC578);
    sub_1000057D8(&qword_100130000, &qword_10012FFF8, &qword_1000EC578);
    swift_getOpaqueTypeConformance2();
    sub_1000057D8(&qword_100130008, &qword_100130010, &qword_1000EC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFE8);
  }

  return result;
}

uint64_t sub_10007A024@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_100132570, &unk_1000E9C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000035B4(v2, &v17 - v11, &qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10007A224@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&unk_100132500, &unk_1000EA640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_1000035B4(v2, &v16 - v11, &unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10007A9C0(v12, a1);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10007A3F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007A420(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_10007A44C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.dashboardGameBundleIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10007A478(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.dashboardGameBundleIdentifier.setter();
}

uint64_t sub_10007A4B8()
{
  v1 = type metadata accessor for FlowDestination();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for DashboardContentView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v6;
  v9 = *(v0 + v6);

  v10 = *(v0 + v6 + 16);

  v11 = v5[6];
  v12 = type metadata accessor for Player();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v8 + v11, v12);
  }

  v14 = (v8 + v5[7]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v8 + v5[8]);
  if (v16[3])
  {
    sub_10002E6CC(v16);
  }

  v17 = v5[9];
  swift_unknownObjectWeakDestroy();
  v18 = v5[10];
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for UserInterfaceSizeClass();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v8 + v18, 1, v19))
    {
      (*(v20 + 8))(v8 + v18, v19);
    }
  }

  else
  {
    v21 = *(v8 + v18);
  }

  v22 = v8 + v5[11];
  v23 = sub_100002B38(&qword_10012FEA0, &qword_1000EC3D8);
  (*(*(v23 - 8) + 8))(v22, v23);
  v24 = *(v22 + *(sub_100002B38(&qword_10012FE20, &qword_1000EC388) + 28));

  v25 = (v8 + v5[12]);
  v26 = *v25;

  v27 = v25[1];

  v28 = v5[13];
  v29 = sub_100002B38(&qword_10012FE28, &unk_1000EC390);
  (*(*(v29 - 8) + 8))(v8 + v28, v29);

  return swift_deallocObject();
}

uint64_t sub_10007A834()
{
  v1 = *(type metadata accessor for FlowDestination() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for DashboardContentView(0) - 8);
  v5 = *(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
  return FlowDestination.callAsFunction(asPartOf:)();
}

uint64_t sub_10007A920@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isAtFlowTabRoot.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007A950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012FFF0, &qword_1000EC570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10007AB58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI21DashboardTabViewState__gameControllerObserver) = v2;
  v4 = v2;
}

uint64_t sub_10007AB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreTab();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100002B38(&qword_100130088, &qword_1000EC768);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1000035B4(a1, &v24 - v15, &qword_10012E650, &qword_1000EDA30);
  sub_1000035B4(a2, &v16[v18], &qword_10012E650, &qword_1000EDA30);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1000035B4(v16, v12, &qword_10012E650, &qword_1000EDA30);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1000798F8(&qword_10012FB98, &type metadata accessor for StoreTab);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_100005688(v16, &qword_10012E650, &qword_1000EDA30);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_100005688(v16, &qword_100130088, &qword_1000EC768);
    v20 = 1;
    return v20 & 1;
  }

  sub_100005688(v16, &qword_10012E650, &qword_1000EDA30);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10007AEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10007AFE0()
{
  sub_10007B2DC(319, &qword_100130118, &qword_100130120, qword_1000EC7A0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10007B340(319, &qword_10012EAA8, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10007B2DC(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100013388();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007B124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(qword_100130090, &unk_1000EC770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007B200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002B38(qword_100130090, &unk_1000EC770);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_10007B2DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100005144(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10007B340(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10007B394()
{
  result = qword_100130128;
  if (!qword_100130128)
  {
    sub_100005144(&qword_100130130, &qword_1000EC7B8);
    sub_100005144(&qword_10012FF18, &qword_1000EC4D0);
    sub_100005144(&qword_10012FF20, &qword_1000EC4D8);
    sub_100005144(&qword_10012FF28, &qword_1000EC4E0);
    sub_100005144(&qword_10012FF30, &qword_1000EC4E8);
    sub_1000794F4();
    sub_100079940();
    swift_getOpaqueTypeConformance2();
    sub_100079994();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130128);
  }

  return result;
}

unint64_t sub_10007B558()
{
  result = qword_100130140;
  if (!qword_100130140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130140);
  }

  return result;
}

uint64_t sub_10007B5DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100005144(&qword_100130138, qword_1000EC810);
  type metadata accessor for ModifiedContent();
  sub_1000057D8(&qword_100130148, &qword_100130138, qword_1000EC810);
  return swift_getWitnessTable();
}

uint64_t sub_10007B6CC()
{
  type metadata accessor for GameOverlayUIConfig.SharedResources();
  result = GameOverlayUIConfig.SharedResources.__allocating_init()();
  qword_100130158 = result;
  return result;
}

char *sub_10007B74C(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener] = 0;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v31, "init");
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10007D2F8;
  *(v12 + 24) = v29;
  aBlock[4] = sub_10007D344;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007D340;
  aBlock[3] = &unk_100122F08;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();
  v15 = v11;

  v16 = [v14 listenerWithConfigurator:v13];
  _Block_release(v13);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *&v15[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener];
  *&v15[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener] = v16;
  a4 = v16;

  if (a4)
  {
    if (qword_10012CC18 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_100011F80(v18, qword_100135C88);
      v19 = a4;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v19;
        *v23 = v16;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "Listener activated: %@", v22, 0xCu);
        sub_10007D290(v23);
      }

      [v19 activate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100011F80(v25, qword_100135C88);
  v19 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v19, v26, "Failed to create listener", v27, 2u);
  }

LABEL_11:

  return v15;
}

id sub_10007BADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = String._bridgeToObjectiveC()();
  [a1 setDomain:v8];

  v9 = String._bridgeToObjectiveC()();
  [a1 setService:v9];

  return [a1 setDelegate:a6];
}

uint64_t sub_10007BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_10007BBAC, 0, 0);
}

uint64_t sub_10007BBAC()
{
  if (qword_10012CBC8 != -1)
  {
    swift_once();
  }

  v0[11] = qword_100130158;
  type metadata accessor for GameOverlayUIConfig.SharedResources();
  sub_10007D124();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return _swift_task_switch(sub_10007BC6C, v2, v1);
}

uint64_t sub_10007BC6C()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[14] = dispatch thunk of GameOverlayUIConfig.SharedResources.interface(kind:)();
  v3 = v0[12];
  v4 = v0[13];

  return _swift_task_switch(sub_10007BCD8, v3, v4);
}

uint64_t sub_10007BCD8()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[15] = dispatch thunk of GameOverlayUIConfig.SharedResources.connectionQueue(kind:)();

  return _swift_task_switch(sub_10007BD48, 0, 0);
}

uint64_t sub_10007BD48()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10007D1C4;
  *(v6 + 24) = v5;
  v0[6] = sub_10007D1D0;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10007D340;
  v0[5] = &unk_100122DF0;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];
  v9 = v2;
  v10 = v1;
  v11 = v4;

  [v3 configureConnection:v7];
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[14];
    v13 = v0[15];
    [v0[9] activate];

    v15 = v0[1];

    return v15();
  }

  return result;
}

void sub_10007BF04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a1 setTargetQueue:a2];
  v7 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v7];

  [a1 setInterface:a3];
  [a1 setInterfaceTarget:a4];
  v19 = sub_10007C174;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10007C2B0;
  v18 = &unk_100122E18;
  v8 = _Block_copy(&v15);
  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  v19 = sub_10007D248;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10007C2B0;
  v18 = &unk_100122E68;
  v10 = _Block_copy(&v15);
  v11 = a4;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_10007D26C;
  v20 = v12;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10007C2B0;
  v18 = &unk_100122EB8;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

void sub_10007C174(void *a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "GameOverlayUI Activation Handler: %@", v5, 0xCu);
    sub_10007D290(v6);
  }
}

void sub_10007C2B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_10007C318(void *a1, uint64_t a2, const char *a3)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_10007D290(v10);
  }

  return [v6 invalidate];
}

uint64_t sub_10007C468(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_10007C550()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener;
  v3 = *&v0[OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener];
  if (v3)
  {
    [v3 invalidate];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10007C628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() currentContext];
  if (v6 && (v7 = v6, v8 = [v6 remoteToken], v7, v8))
  {
    v9 = sub_1000DFEF0(a1, a2, a3);

    return v9;
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100011F80(v11, qword_100135C88);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not find a valid audit token for the client request", v14, 2u);
    }

    return 0;
  }
}

uint64_t sub_10007C790(uint64_t a1)
{
  v2 = [objc_opt_self() currentContext];
  if (v2 && (v3 = v2, v4 = [v2 remoteToken], v3, v4))
  {
    v5 = sub_1000E00D4(a1);

    return v5;
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100011F80(v7, qword_100135C88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not find a valid audit token for the client request", v10, 2u);
    }

    return 0;
  }
}

void sub_10007C8DC(uint64_t a1, uint64_t a2)
{
  if (qword_10012CBC0 != -1)
  {
    swift_once();
  }

  v4 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  v6 = v5;
  swift_beginAccess();
  if (*(off_100130150 + 2))
  {
    sub_1000C547C(v4, v6);
    v8 = v7;

    if (v8)
    {
      swift_endAccess();
      return;
    }
  }

  else
  {
  }

  swift_endAccess();

  v9 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for GameOverlayUIService());
  v13 = sub_10007B74C(a1, a2, v9, v11);
  v14 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  v16 = v15;
  swift_beginAccess();
  v17 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = off_100130150;
  off_100130150 = 0x8000000000000000;
  sub_1000CE954(v17, v14, v16, isUniquelyReferenced_nonNull_native);

  off_100130150 = v19;
  swift_endAccess();
}

uint64_t sub_10007CA7C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v49 = &v45 - v6;
  v7 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = [a1 remoteToken];
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100011F80(v15, qword_100135C88);
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  v19 = os_log_type_enabled(v17, v18);
  v53 = v2;
  v48 = v16;
  if (v19)
  {
    v20 = v8;
    v46 = a1;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v54 = v22;
    *v21 = 136315138;
    v23 = [v16 bundleID];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    v28 = sub_1000BA5C8(v25, v27, &v54);

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Service listener did receive connection for remote process: %s", v21, 0xCu);
    sub_10002E6CC(v22);

    a1 = v46;
    v8 = v20;
  }

  else
  {
  }

  v29 = [a1 service];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v13;
  static GameOverlayUIConfig.ServiceKind.from(name:)();

  v30 = type metadata accessor for TaskPriority();
  v31 = v49;
  (*(*(v30 - 8) + 56))(v49, 1, 1, v30);
  v32 = a1;
  v33 = v50;
  v34 = v13;
  v35 = v51;
  (*(v50 + 16))(v9, v34, v51);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = (v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (*(v33 + 32))(v39 + v36, v9, v35);
  *(v39 + v37) = v32;
  v40 = ObjectType;
  v41 = v53;
  *(v39 + v38) = v53;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v42 = v32;
  v43 = v41;
  sub_100014BBC(0, 0, v31, &unk_1000EC860, v39);

  return (*(v33 + 8))(v47, v35);
}