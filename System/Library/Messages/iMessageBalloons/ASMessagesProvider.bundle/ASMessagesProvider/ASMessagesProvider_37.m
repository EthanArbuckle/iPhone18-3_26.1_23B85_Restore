uint64_t sub_434BB4()
{
  swift_unknownObjectWeakDestroy();

  sub_F704(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_434C2C(uint64_t a1)
{
  v51 = a1;
  v50 = sub_BD88(&qword_94B9B8);
  v56.i64[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v41 - v1;
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v59 = sub_765610();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v7 - 8);
  v61 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v41 - v11;
  __chkstk_darwin(v13);
  v57 = v41 - v14;
  sub_BD88(&qword_940A70);
  v15 = *(sub_765540() - 8);
  v55 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v48 = v17;
  *(v17 + 16) = xmmword_780120;
  v18 = v17 + v16;
  v65 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v65 = 0x4020000000000000;
  v63 = 0x4030000000000000;
  sub_7655B0();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v58 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v62 + 104);
  v62 += 104;
  v60 = v24;
  v25 = v59;
  (v24)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v65) = 0;
  sub_7655D0();
  v65 = 0;
  sub_7655D0();
  v54 = v18;
  v52 = v12;
  sub_765500();
  v65 = 0x3FF0000000000000;
  sub_7655D0();
  v65 = 0x4024000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  v49 = v6;
  *v6 = _Q0;
  v28 = v58;
  v29 = v60;
  v60(v6, v58, v25);
  LOBYTE(v65) = 0;
  v53 = v4;
  sub_7655D0();
  v65 = 0;
  sub_7655D0();
  v30 = v55;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v31 = v49;
  sub_765500();
  v44 = 2 * v30;
  v65 = 0x3FF0000000000000;
  sub_7655D0();
  v65 = 0x4034000000000000;
  sub_7655D0();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  v42 = vdupq_n_s64(0x4041000000000000uLL);
  *v31 = v42;
  v29(v31, v28, v59);
  LOBYTE(v65) = 0;
  sub_7655D0();
  v65 = 0;
  sub_7655D0();
  v32 = v44;
  sub_765500();
  v67 = 0x4000000000000000;
  v33 = v55;
  v41[1] = v32 + v55;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  v44 = sub_263040();
  v34 = v47;
  sub_760920();
  v35 = v50;
  sub_760930();
  v36 = *(v56.i64[0] + 8);
  v56.i64[0] += 8;
  v43 = v36;
  v36(v34, v35);
  v63 = v65;
  sub_7655D0();
  v65 = 0x4034000000000000;
  sub_7655D0();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  v37 = v49;
  *v49 = v42;
  v60(v37, v58, v59);
  sub_7697A0();
  LOBYTE(v65) = 0;
  sub_7655D0();
  v65 = 0;
  sub_7655D0();
  sub_765500();
  v67 = 0x4000000000000000;
  v42.i64[0] = 4 * v33;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  sub_760920();
  v38 = v50;
  sub_760930();
  v43(v34, v38);
  v63 = v65;
  sub_7655D0();
  v65 = 0x4038000000000000;
  sub_7655D0();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  v56 = vdupq_n_s64(0x404A000000000000uLL);
  *v37 = v56;
  v39 = v59;
  v60(v37, v58, v59);
  LOBYTE(v65) = 0;
  sub_7655D0();
  v65 = 0;
  sub_7655D0();
  sub_765500();
  v65 = 0x4000000000000000;
  sub_7655D0();
  v65 = 0x4038000000000000;
  sub_7655D0();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_7655B0();
  *v37 = v56;
  v60(v37, v58, v39);
  LOBYTE(v65) = 0;
  sub_7655D0();
  v65 = 0;
  sub_7655D0();
  sub_765500();
  return v48;
}

uint64_t sub_435850(uint64_t a1, char a2)
{
  v63 = a1;
  v66 = sub_BD88(&qword_94B9B8);
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v51 - v3;
  v4 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v4 - 8);
  v70 = v51 - v5;
  v74 = sub_765610();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v9 - 8);
  v69 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  if (a2)
  {
    v20 = 1.1;
  }

  else
  {
    v20 = 1.0;
  }

  sub_BD88(&qword_940A70);
  v21 = *(sub_765540() - 8);
  v72 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v58 = v23;
  *(v23 + 16) = xmmword_780120;
  v24 = v23 + v22;
  v77 = *&v20;
  sub_62634();
  sub_7655D0();
  v77 = 0x4020000000000000;
  v75 = 0x4030000000000000;
  sub_7655B0();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v67 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v30 = *(v6 + 104);
  v68 = v6 + 104;
  v71 = v30;
  (v30)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v77) = 0;
  sub_7655D0();
  v77 = 0;
  sub_7655D0();
  v65 = v24;
  v51[1] = v19;
  v64 = v16;
  v59 = v13;
  sub_765500();
  v77 = *&v20;
  sub_7655D0();
  v77 = 0x4024000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  v34 = v8;
  *v8 = _Q0;
  v35 = v8;
  v36 = v67;
  v37 = v71;
  v71(v35, v67, v74);
  LOBYTE(v77) = 0;
  sub_7655D0();
  v77 = 0;
  sub_7655D0();
  v38 = v72;
  top = UIEdgeInsetsZero.top;
  v55 = left;
  v56 = bottom;
  sub_765500();
  v61 = 2 * v38;
  v77 = *&v20;
  sub_7655D0();
  v77 = 0x4034000000000000;
  sub_7655D0();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v34 = v54;
  v37(v34, v36, v74);
  LOBYTE(v77) = 0;
  sub_7655D0();
  v77 = 0;
  sub_7655D0();
  v39 = v61;
  v40 = v34;
  sub_765500();
  v79 = 0x4000000000000000;
  v53 = v39 + v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v61 = sub_263040();
  v41 = v62;
  sub_760920();
  v42 = v66;
  sub_760930();
  v43 = *(v73 + 8);
  v73 += 8;
  v60 = v43;
  v43(v41, v42);
  v75 = v77;
  sub_7655D0();
  v77 = 0x4034000000000000;
  sub_7655D0();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  *v40 = v54;
  v52 = v40;
  v44 = v74;
  v71(v40, v67, v74);
  sub_7697A0();
  LOBYTE(v77) = 0;
  sub_7655D0();
  v77 = 0;
  sub_7655D0();
  sub_765500();
  v79 = 0x4000000000000000;
  v53 = 4 * v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v45 = v62;
  sub_760920();
  v46 = v66;
  sub_760930();
  v60(v45, v46);
  v75 = v77;
  sub_7655D0();
  v77 = 0x4038000000000000;
  sub_7655D0();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  v54 = vdupq_n_s64(0x404A000000000000uLL);
  v47 = v52;
  *v52 = v54;
  v71(v47, v67, v44);
  LOBYTE(v77) = 0;
  sub_7655D0();
  v77 = 0;
  sub_7655D0();
  v48 = v53;
  sub_765500();
  v79 = 0x4004000000000000;
  v72 += v48;
  v77 = 0x4000000000000000;
  v78 = 0;
  v75 = 0x3FF8000000000000;
  v76 = 0;
  sub_760920();
  v49 = v66;
  sub_760930();
  v60(v45, v49);
  v75 = v77;
  sub_7655D0();
  v77 = 0x4038000000000000;
  sub_7655D0();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_7655B0();
  *v47 = v54;
  v71(v47, v67, v74);
  LOBYTE(v77) = 0;
  sub_7655D0();
  v77 = 0;
  sub_7655D0();
  sub_765500();
  return v58;
}

unint64_t sub_436528()
{
  result = qword_955128;
  if (!qword_955128)
  {
    sub_759740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955128);
  }

  return result;
}

void sub_436580(uint64_t a1, uint64_t a2)
{
  v90 = sub_758B40();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_75F340();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_760280();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7687B0();
  __chkstk_darwin(v7 - 8);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v9 - 8);
  v83 = &v77 - v10;
  v11 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v11 - 8);
  v80 = &v77 - v12;
  v78 = sub_765490();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75C210();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759700();
  v18 = sub_75C200();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_764C60();
    v20 = v19;
    sub_759720();
    v22 = v21;
    if (v20)
    {
      v23 = sub_769210();

      if (!v22)
      {
        goto LABEL_8;
      }

LABEL_6:
      v25 = sub_769210();

      goto LABEL_9;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_759720();
    v23 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:0];

  v95 = v26;
  [v26 setModalPresentationStyle:7];
  v27 = sub_759710();
  v28 = v27;
  if (v27 >> 62)
  {
LABEL_46:
    v29 = sub_76A860();
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_47:

    if (sub_7596F0())
    {
      sub_7596D0();
      if (!v70)
      {
        v109._countAndFlagsBits = 0x432E6E6F69746341;
        v109._object = 0xED00006C65636E61;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        sub_75B750(v109, v110);
      }

      v71 = sub_769210();

      v72 = [objc_opt_self() actionWithTitle:v71 style:1 handler:0];

      v73 = v95;
      [v95 addAction:v72];
      [v73 setPreferredAction:v72];
    }

    v107 = 0;
    aBlock = 0u;
    v106 = 0u;
    (*(v77 + 104))(v79, enum case for FlowPage.viewController(_:), v78);
    v74 = sub_7570A0();
    (*(*(v74 - 8) + 56))(v80, 1, 1, v74);
    v75 = sub_759E30();
    (*(*(v75 - 8) + 56))(v83, 1, 1, v75);
    v104 = sub_4373D8();
    v103 = v95;
    v102 = v95;
    sub_768790();
    (*(v81 + 104))(v87, enum case for FlowPresentationContext.infer(_:), v82);
    (*(v85 + 104))(v89, enum case for FlowAnimationBehavior.infer(_:), v86);
    (*(v88 + 104))(v91, enum case for FlowOrigin.inapp(_:), v90);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v76 = sub_758AD0();
    sub_72D7A8(v76, 1, a2);

    return;
  }

  v29 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_11:
  v30 = 0;
  v97 = v28 & 0xFFFFFFFFFFFFFF8;
  v98 = v28 & 0xC000000000000001;
  v96 = &v106;
  v92 = "troller";
  v94 = v28;
  v93 = v29;
  while (1)
  {
    if (v98)
    {
      v31 = sub_76A770();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v30 >= *(v97 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v28 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v33 = v30 != sub_7596C0();
    v35 = ((v34 | v33) & 1) == 0;
    v36 = 2;
    if (!v35)
    {
      v36 = 0;
    }

    v100 = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    *(v37 + 24) = a2;

    v38 = sub_759730();
    v101 = v32;
    v102 = v31;
    if ((v38 & 1) == 0)
    {
      sub_764C60();
      if (v47)
      {

        v48 = sub_769210();
      }

      else
      {

        v48 = 0;
      }

      v107 = sub_437390;
      v108 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v106 = sub_6B0344;
      *(&v106 + 1) = &unk_891778;
      v54 = _Block_copy(&aBlock);

      v55 = [objc_opt_self() actionWithTitle:v48 style:v100 handler:v54];
      goto LABEL_40;
    }

    v39 = sub_7596E0();
    if ((v40 & 1) == 0 && v30 == v39)
    {
      v41 = objc_opt_self();
      v42 = sub_769210();
      v43 = [v41 kitImageNamed:v42];

      if (!v43)
      {
        goto LABEL_53;
      }

      v44 = [v43 imageWithRenderingMode:2];

      v45 = [v44 _imageThatSuppressesAccessibilityHairlineThickening];
      goto LABEL_23;
    }

    v49 = sub_764C70();
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = v49;
    if ((sub_765180() & 1) == 0)
    {
      if (sub_765190())
      {
        v45 = sub_759910();

LABEL_23:
        v99 = v45;
        v46 = v45;
        goto LABEL_38;
      }

LABEL_35:
      v99 = 0;
      goto LABEL_38;
    }

    v51 = sub_56EBA8(v50, 0);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 imageWithRenderingMode:2];

      v99 = [v53 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {

      v99 = 0;
    }

    v56 = v99;
LABEL_38:
    v57 = a1;
    v58 = a2;
    v59 = [objc_allocWithZone(UIViewController) init];
    v60 = sub_764C60();
    v62 = v61;
    v63 = objc_allocWithZone(type metadata accessor for AlertActionTrailingImageView());
    v64 = sub_32FCFC(v60, v62, v99);
    [v59 setView:v64];

    v65 = [v59 view];
    if (!v65)
    {
      break;
    }

    v66 = v65;
    [v65 intrinsicContentSize];
    v68 = v67;

    [v59 setPreferredContentSize:{0.0, v68}];
    v69 = objc_opt_self();
    v107 = sub_437390;
    v108 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_4372DC;
    *(&v106 + 1) = &unk_8917A0;
    v54 = _Block_copy(&aBlock);
    v48 = v59;

    v55 = [v69 _actionWithContentViewController:v48 style:v100 handler:v54];

    a2 = v58;
    a1 = v57;
    v28 = v94;
    v29 = v93;
LABEL_40:
    _Block_release(v54);

    if (v55)
    {
      [v95 addAction:v55];
    }

    ++v30;
    if (v101 == v29)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_4372DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_437350()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_437390()
{
  sub_72D574(*(v0 + 16), 1, *(v0 + 24));
}

uint64_t sub_4373C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4373D8()
{
  result = qword_955130;
  if (!qword_955130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_955130);
  }

  return result;
}

uint64_t sub_4374F0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v49 = &v48 - v9;
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766690();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_759430();
  v48 = v11;
  if ((v18 & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_75A2C0())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v17, v14);
    sub_759430();
    if ((sub_759430() & 1) != 0 || v20 <= a2)
    {
    }

    else
    {
      sub_765260();
      sub_7666A0();
      sub_766650();
      v21(v17, v14);
    }
  }

  v22 = sub_759450();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    sub_759460();
    if (v24)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v25 = sub_7666D0();
      sub_BE38(v25, qword_99F640);
      v26 = sub_7653B0();
      v51 = v26;
      v52 = sub_438424(&qword_93F9B0, &type metadata accessor for Feature);
      v27 = sub_B1B4(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();

      if (qword_93E250 != -1)
      {
        swift_once();
      }

      v28 = sub_766CA0();
      sub_BE38(v28, qword_9A09B8);
      sub_766470();
      sub_766700();
      v29 = *(v48 + 8);
      v29(v13, v10);
      if (qword_93E260 != -1)
      {
        swift_once();
      }

      sub_BE38(v28, qword_9A09E8);
      sub_766470();
      sub_766700();
      v29(v13, v10);
      if (qword_93E258 != -1)
      {
        swift_once();
      }

      sub_BE38(v28, qword_9A09D0);
      sub_766470();
      sub_766700();
      v29(v13, v10);
    }

    v30 = sub_759450();
    v31 = [a6 traitCollection];
    v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
    v33 = [v30 length];
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = v32;
    *(v34 + 40) = 1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_266A8;
    *(v35 + 24) = v34;
    v52 = sub_26694;
    v53 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v51 = &unk_8918F8;
    v36 = _Block_copy(aBlock);
    v37 = v31;
    v38 = v32;

    [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

    _Block_release(v36);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      v39 = qword_93DA10;
      v30 = v38;
      if (v39 == -1)
      {
LABEL_21:
        v40 = sub_7666D0();
        v41 = sub_BE38(v40, qword_99F628);
        v42 = *(v40 - 8);
        v43 = v49;
        (*(v42 + 16))(v49, v41, v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = sub_7653B0();
        v51 = v44;
        v52 = sub_438424(&qword_93F9B0, &type metadata accessor for Feature);
        v45 = sub_B1B4(aBlock);
        (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_11A38(v43);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v46 = sub_766CA0();
        sub_BE38(v46, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v46, qword_9A09D0);
        sub_7666F0();

        return sub_769D90();
      }
    }

    swift_once();
    goto LABEL_21;
  }

  return sub_769D90();
}

uint64_t sub_437F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_759450();
  v9 = [v8 length];

  v10 = &selRef_setSpeed_;
  if (v9 >= 1)
  {
    v11 = sub_759450();
    v12 = [a5 traitCollection];
    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v11];
    v35 = [v11 length];
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    *(v14 + 40) = 1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_119AC;
    *(v15 + 24) = v14;
    aBlock[4] = sub_2636C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    aBlock[3] = &unk_891880;
    v16 = _Block_copy(aBlock);
    v17 = v12;
    v18 = v13;

    [v11 enumerateAttributesInRange:0 options:v35 usingBlock:{0x100000, v16}];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = *&v6[qword_964310];
      [isEscapingClosureAtFileLocation setAttributedText:v18];
      if (qword_93E268 == -1)
      {
LABEL_4:
        [isEscapingClosureAtFileLocation setTextColor:qword_9A0A00];
        v6[qword_9A0A18] = 1;
        v20 = *&v6[qword_964300];
        [v20 setHidden:0];

        v10 = &selRef_setSpeed_;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  [*&v6[qword_964310] setText:0];
  v6[qword_9A0A18] = 0;
  v20 = *&v6[qword_964300];
  [v20 setHidden:1];
LABEL_6:
  v21 = *&v6[qword_964308];
  sub_759460();
  if (v22)
  {
    v23 = sub_769210();
  }

  else
  {
    v23 = 0;
  }

  [v21 v10[511]];

  v24 = sub_759430();
  v6[qword_9A0A10] = (v24 & 1) == 0;
  sub_26698(v24);
  if ((sub_759430() & 1) == 0 && v6[qword_9A0A18] != 1)
  {
    sub_759210();
    sub_759090();
  }

  sub_75CD10();
  if (sub_759430())
  {
    [v20 setBackgroundColor:0];
  }

  else
  {
    sub_BE70(0, &qword_93E540);
    v25 = sub_76A030();
    [v20 setBackgroundColor:v25];
  }

  result = sub_75A2C0();
  if (result)
  {
    v27 = [v6 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();
    v29 = v28;

    sub_765260();
    v31 = v30;
    sub_765260();
    v33 = v32;

    v34 = &v6[qword_99D538];
    *v34 = v29;
    v34[1] = v29 * (v31 / v33);
  }

  return result;
}

uint64_t sub_43840C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_438424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_43846C(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a3;
  v11 = a2;
  v13 = sub_766690();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764AD0();
  v7 = *(v6 + 16);
  v15 = v6 + 32;
  v12 = (v3 + 8);
  v16 = v6;

  v9 = 0;
  while (1)
  {
    if (v9 == v7)
    {
      v24 = 0;
      v9 = v7;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_134D8(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_10914(v20, v19);
    sub_134D8(v19, v17);
    sub_BD88(&unk_944DA0);
    sub_75A2D0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    result = sub_BEB8(v19);
    if (v18)
    {
      if (sub_75A2C0())
      {

        if ((sub_759430() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        sub_765260();
        sub_7666A0();
        sub_766660();
        sub_759430();

        sub_766650();
        sub_765330();
        sub_75A060();

        result = (*v12)(v5, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TodayBrickPlaceholderView()
{
  result = qword_955198;
  if (!qword_955198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_438848(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = qword_955180;
  sub_759210();
  v11 = sub_759030();
  sub_75CD10();

  *&v5[v10] = v11;
  v12 = qword_955188;
  sub_7595E0();
  v13 = sub_7595A0();
  v15 = v14;
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99F7A8);
  v18 = sub_48A83C(v13, v15, v17);

  *&v5[v12] = v18;
  v19 = qword_955190;
  v20 = sub_7595D0();
  v22 = v21;
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v16, qword_99F7C0);
  v24 = sub_48A83C(v20, v22, v23);

  *&v5[v19] = v24;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for TodayBrickPlaceholderView();
  v25 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v26 = *&v25[qword_955180];
  v27 = v25;
  [v27 addSubview:v26];
  [v27 addSubview:*&v27[qword_955188]];
  [v27 addSubview:*&v27[qword_955190]];

  return v27;
}

uint64_t sub_438AA0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_75EE10();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75EE00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22 - v11;
  v13 = [v1 traitCollection];
  sub_593770(v13, v12);

  v14 = *&v1[qword_955180];
  v32 = sub_759210();
  v33 = &protocol witness table for UIView;
  v31 = v14;
  v15 = *&v1[qword_955188];
  v29 = sub_438F84();
  v30 = &protocol witness table for UIView;
  v27 = &protocol witness table for UIView;
  v28 = v15;
  v16 = *&v1[qword_955190];
  v26 = v29;
  v25 = v16;
  (*(v6 + 16))(v8, v12, v5);
  v17 = v14;
  v18 = v15;
  v19 = v16;
  sub_75EDB0();
  sub_438FD0();
  v20 = v23;
  sub_7665D0();
  (*(v2 + 8))(v4, v20);
  return (*(v6 + 8))(v12, v5);
}

void sub_438D04()
{
  v1 = *(v0 + qword_955190);
}

id sub_438D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_438D8C(uint64_t a1)
{
  v2 = *(a1 + qword_955190);
}

void sub_438DF0()
{
  v1 = v0;
  v2 = qword_955180;
  sub_759210();
  v3 = sub_759030();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = qword_955188;
  sub_7595E0();
  v5 = sub_7595A0();
  v7 = v6;
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99F7A8);
  v10 = sub_48A83C(v5, v7, v9);

  *(v1 + v4) = v10;
  v11 = qword_955190;
  v12 = sub_7595D0();
  v14 = v13;
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v8, qword_99F7C0);
  v16 = sub_48A83C(v12, v14, v15);

  *(v1 + v11) = v16;
  sub_76A840();
  __break(1u);
}

unint64_t sub_438F84()
{
  result = qword_950A70;
  if (!qword_950A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_950A70);
  }

  return result;
}

unint64_t sub_438FD0()
{
  result = qword_9551E8;
  if (!qword_9551E8)
  {
    sub_75EE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9551E8);
  }

  return result;
}

double *sub_439028(uint64_t a1)
{
  v3 = sub_7572E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v171 = Strong;
  v166[1] = sub_BD88(&unk_93F5C0);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_78D690;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v166[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x80000000007E1300;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_43A520;
  *(v9 + 112) = v8;
  v10 = v1;

  sub_7572D0();
  v11 = sub_7572B0();
  v13 = v12;
  v14 = *(v4 + 8);
  v174 = v3;
  v14(v6, v3);
  v189 = v11;
  v190 = v13;
  sub_76A6E0();

  *(v167 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_43A544;
  *(v16 + 112) = v15;
  v17 = v10;

  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;
  v14(v6, v3);
  v172 = v4 + 8;
  v189 = v18;
  v190 = v20;
  sub_76A6E0();

  v21 = v167;
  *(v167 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x80000000007E1320;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_43A548;
  *(v23 + 112) = v22;
  v24 = v17;

  sub_7572D0();
  v25 = sub_7572B0();
  v27 = v26;
  v28 = v174;
  v14(v6, v174);
  v189 = v25;
  v190 = v27;
  sub_76A6E0();

  *(v21 + 48) = v23;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_79D900;
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
  sub_7572D0();
  v35 = sub_7572B0();
  v37 = v36;
  v175 = v14;
  v14(v6, v33);
  v189 = v35;
  v190 = v37;
  sub_76A6E0();

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
  sub_7572D0();
  v42 = sub_7572B0();
  v44 = v43;
  v14(v6, v33);
  v189 = v42;
  v190 = v44;
  sub_76A6E0();

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
  sub_7572D0();
  v52 = sub_7572B0();
  v54 = v53;
  v175(v6, v174);
  v189 = v52;
  v190 = v54;
  sub_76A6E0();

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
  sub_7572D0();
  v59 = sub_7572B0();
  v61 = v60;
  v62 = v175;
  v175(v6, v174);
  v189 = v59;
  v190 = v61;
  sub_76A6E0();

  v63 = v170;
  *(v170 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v169;
  v169 = v65;

  v66 = sub_619214();

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
  sub_7572D0();
  v70 = sub_7572B0();
  v72 = v71;
  v73 = v174;
  v62(v6, v174);
  v189 = v70;
  v190 = v72;
  sub_76A6E0();

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
  sub_7572D0();
  v79 = sub_7572B0();
  v81 = v80;
  v175(v6, v73);
  v189 = v79;
  v190 = v81;
  sub_76A6E0();

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
  sub_7572D0();
  v87 = sub_7572B0();
  v89 = v88;
  v175(v6, v174);
  v189 = v87;
  v190 = v89;
  sub_76A6E0();

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
  sub_7572D0();
  v94 = sub_7572B0();
  v96 = v95;
  v97 = v174;
  v98 = v175;
  v175(v6, v174);
  v189 = v94;
  v190 = v96;
  sub_76A6E0();

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
  sub_7572D0();
  v103 = sub_7572B0();
  v105 = v104;
  v98(v6, v97);
  v189 = v103;
  v190 = v105;
  sub_76A6E0();

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
  v109[8] = 0x80000000007E1340;
  v109[9] = 0;
  v109[10] = 0;
  v110 = v168;
  v109[11] = v108;
  v109[12] = v110;
  v109[13] = 0;
  v111 = v108;
  sub_7572D0();
  v112 = sub_7572B0();
  v114 = v113;
  v115 = v174;
  v175(v6, v174);
  v189 = v112;
  v190 = v114;
  sub_76A6E0();

  *(v170 + 104) = v109;
  v116 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v116;
  v179.super_class = v107;
  v117 = objc_msgSendSuper2(&v179, "init");
  v118 = swift_allocObject();
  v118[7] = 0xD000000000000011;
  v118[8] = 0x80000000007E1360;
  v118[9] = 0;
  v118[10] = 0;
  v118[11] = v117;
  v118[12] = v110;
  v119 = v110;
  v118[13] = 0;
  v120 = v117;
  sub_7572D0();
  v121 = sub_7572B0();
  v123 = v122;
  v124 = v175;
  v175(v6, v115);
  v189 = v121;
  v190 = v123;
  sub_76A6E0();

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
  v128[8] = 0x80000000007E1380;
  v128[9] = 0;
  v128[10] = 0;
  v128[11] = v127;
  v128[12] = v119;
  v128[13] = 0;
  v129 = v127;
  sub_7572D0();
  v130 = sub_7572B0();
  v132 = v131;
  v133 = v174;
  v124(v6, v174);
  v189 = v130;
  v190 = v132;
  sub_76A6E0();

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
  sub_7572D0();
  v142 = sub_7572B0();
  v144 = v143;
  v175(v6, v133);
  v189 = v142;
  v190 = v144;
  sub_76A6E0();

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
  sub_7572D0();
  v150 = sub_7572B0();
  v152 = v151;
  v153 = v174;
  v154 = v175;
  v175(v6, v174);
  v189 = v150;
  v190 = v152;
  sub_76A6E0();

  *(v145 + 136) = v148;
  v155 = v145;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_77B6C0;
  type metadata accessor for DebugSection();
  v157 = swift_allocObject();
  sub_7572D0();
  v158 = sub_7572B0();
  v160 = v159;
  v154(v6, v153);
  v157[2] = v158;
  v157[3] = v160;
  v157[4] = 0;
  v157[5] = 0xE000000000000000;
  v157[6] = v167;
  *(v156 + 32) = v157;
  v161 = swift_allocObject();
  sub_7572D0();
  v162 = sub_7572B0();
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

void sub_43A3E0()
{
  sub_BD88(&qword_955220);
  sub_768900();
  sub_768ED0();
  [v1 invalidateMediaToken];
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
  swift_unknownObjectRelease();
}

id sub_43A490()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_43A4E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_43A550()
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
  sub_3C80C();
  v11 = sub_769460();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = sub_76A860();
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

    else if (v14 < *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = sub_76A770();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_43AA3C(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_BD88(&qword_955238);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_10914(&v30, v33);
      sub_10914(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_43AA3C(&v30);
  v24 = [v11 childViewControllers];
  v10 = sub_769460();

  if (!(v10 >> 62))
  {
    result = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_76A860();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_BD88(&qword_955238);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_43AA3C(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_43AAA4(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_10914(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_134D8(v33, &v30);
      v20 = swift_allocObject();
      sub_10914(&v30, v20 + 16);
      v28 = sub_43AB4C;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_23F0CC;
      *(&v27 + 1) = &unk_8919C0;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_BEB8(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_43AA3C(v34);

    p_aBlock = &aBlock;
  }

  return sub_43AA3C(p_aBlock);
}

uint64_t sub_43AA3C(uint64_t a1)
{
  v2 = sub_BD88(&unk_955228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43AAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_955228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43AB14()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_43AB4C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_B170(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_43ABA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_43ABC0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99DAE8);
  sub_BE38(v4, qword_99DAE8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_43AD2C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_43AF2C()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_2630C();
  sub_75D650();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_93D0F8 != -1)
  {
    swift_once();
  }

  v17 = sub_766CA0();
  sub_BE38(v17, qword_99DAE8);
  v18 = [v1 traitCollection];
  sub_766470();
  sub_766C70();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_43B174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_43B1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6CAC(a1, a2, a3, WitnessTable);
}

void sub_43B268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6BD8(a1, a2, a3, WitnessTable);
}

unint64_t sub_43B2D4(uint64_t a1)
{
  result = sub_43B2FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_43B2FC()
{
  result = qword_955270;
  if (!qword_955270)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955270);
  }

  return result;
}

uint64_t sub_43B350(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  sub_757090();
  v14 = sub_7570A0();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(LPLinkView);
    sub_757040(v18);
    v20 = v19;
    v21 = [v17 initWithURL:v19];

    (*(v15 + 8))(v13, v14);
    *&v5[OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView] = v21;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v26 = v22;
    [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    v27 = OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView;
    [*&v26[OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView] _setApplyCornerRadius:1];
    [*&v26[v27] _setDisableAnimations:1];
    [*&v26[v27] _setDisableTapGesture:1];
    [*&v26[v27] _setForceFlexibleWidth:1];
    [v26 addSubview:*&v26[v27]];

    return v26;
  }

  return result;
}

void sub_43B74C(float a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating) = a1;
  if (v3 != a1)
  {
    v4 = 0.0;
    if (a1 < 0.0 || (v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars), v4 < a1))
    {
      *(v1 + v2) = v4;
      a1 = v4;
    }

    v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView);
    v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating);
    *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating) = a1;
    sub_43C36C(v6);
  }
}

UIColor sub_43B7D0()
{
  sub_BE70(0, &qword_93E540);
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.57254902 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.580392157 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_76A0C0(v2, v1).super.isa;
  qword_9552A8 = result.super.isa;
  return result;
}

void sub_43B880()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor);
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor);
    }

    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
    *(v2 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v4;
    if (v5)
    {
      sub_BE70(0, &qword_93E540);
      v6 = v3;
      v7 = v4;
      v8 = v5;
      v9 = sub_76A1C0();

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = v3;
      v11 = v4;
      v8 = 0;
    }

    sub_43CE14();
    v7 = v4;
LABEL_10:
  }

  v12 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView);
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor);
  v14 = *(v12 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor);
  *(v12 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = v13;
  if (!v14)
  {
    v17 = v13;
    v18 = 0;
    goto LABEL_15;
  }

  sub_BE70(0, &qword_93E540);
  v15 = v13;
  v18 = v14;
  v16 = sub_76A1C0();

  if ((v16 & 1) == 0)
  {
LABEL_15:
    sub_43CE14();
    v15 = v13;
  }
}

void sub_43BA20(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_759950();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
  v12 = *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
  v13 = v3[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding + 8];
  *v11 = *&a1;
  *(v11 + 8) = a2 & 1;
  if (v13)
  {
    if (a2)
    {
      return;
    }

LABEL_6:
    v49 = *&a1;
    v14 = v3[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starSize];
    v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
    v47 = v3[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_useCase];
    v16 = [v3 traitCollection];
    v54.receiver = v3;
    v54.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v54, "minimumContentSizeCategory");
    v53.receiver = v3;
    v53.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v53, "maximumContentSizeCategory");
    v55.value._rawValue = v17;
    v55.is_nil = v18;
    v19.super.isa = sub_7699C0(v55, v56).super.isa;

    v48 = v14;
    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = &UIFontTextStyleCaption2;
      }

      else
      {
        v23 = &UIFontTextStyleHeadline;
      }

      v24 = [objc_opt_self() configurationWithTextStyle:*v23 scale:2];
    }

    else if (v14 == 2)
    {
      v24 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v14 == 3)
    {
      if ((v47 & 1) != 0 || (v20 = sub_7653B0(), v51 = v20, v52 = sub_9BA34(), v21 = sub_B1B4(v50), (*(*(v20 - 8) + 104))(v21, enum case for Feature.search_tags(_:), v20), LOBYTE(v20) = sub_765C30(), sub_BEB8(v50), (v20 & 1) == 0))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v22 scale:10.0];
    }

    else
    {
      if ((v47 & 1) != 0 || (v25 = sub_7653B0(), v51 = v25, v52 = sub_9BA34(), v26 = sub_B1B4(v50), (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25), LOBYTE(v25) = sub_765C30(), sub_BEB8(v50), (v25 & 1) == 0))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v27 scale:6.0];
    }

    v28 = v24;
    (*(v8 + 104))(v10, enum case for SystemImage.star(_:), v7);
    v29 = [v28 configurationWithTraitCollection:v19.super.isa];
    v30 = sub_759930();

    (*(v8 + 8))(v10, v7);
    [v30 contentInsets];
    v32 = v31;
    [v30 contentInsets];
    v34 = v32 + v33;
    [v30 size];
    v36 = v35 - v34;
    [v30 contentInsets];
    v38 = v37;
    [v30 contentInsets];
    v40 = v38 + v39;
    [v30 size];
    v42 = v41;

    if (a2)
    {
      if (v48 == 4 || v48 == 2)
      {
        v43 = 2.0;
      }

      else
      {
        v43 = 6.0;
        if (v48)
        {
          v44 = v34 * (ceilf(v15) + -1.0);
          if (v44 < 0.0)
          {
            v44 = 0.0;
          }

          v45 = v36 * v15;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v43 = v49;
    }

    v45 = v36 * v15;
    v44 = v43 * (ceilf(v15) + -1.0);
LABEL_34:
    [v3 setFrame:{0.0, 0.0, v45 + v44, v42 - v40}];
    sub_43CE14();
    return;
  }

  if ((a2 & 1) != 0 || v12 != *&a1)
  {
    goto LABEL_6;
  }
}

id sub_43BFDC()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
    [v4 frame];
    [v3 bounds];
    sub_769D20();
    [v4 setFrame:?];
  }

  v5 = [v1 traitCollection];
  v6 = sub_7699F0();

  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  if (v6)
  {
    CGAffineTransformMakeScale(&v9, -1.0, 1.0);
  }

  else
  {
    *&v9.a = 0x3FF0000000000000uLL;
    v9.c = 0.0;
    v9.d = 1.0;
    *&v9.tx = 0uLL;
  }

  return [v7 setTransform:&v9];
}

void sub_43C36C(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_759950();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v63[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  if (v10 != a1)
  {
    v11 = v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starSize];
    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
    HIDWORD(v62) = v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding + 8];
    v13 = v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_useCase];
    v14 = [v2 traitCollection];
    v67.receiver = v2;
    v67.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v67, "minimumContentSizeCategory");
    v66.receiver = v2;
    v66.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v66, "maximumContentSizeCategory");
    v68.value._rawValue = v15;
    v68.is_nil = v16;
    v17.super.isa = sub_7699C0(v68, v69).super.isa;

    if (v11 <= 1)
    {
      if (v11)
      {
        v21 = &UIFontTextStyleCaption2;
      }

      else
      {
        v21 = &UIFontTextStyleHeadline;
      }

      v22 = [objc_opt_self() configurationWithTextStyle:*v21 scale:2];
    }

    else if (v11 == 2)
    {
      v22 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v11 == 3)
    {
      if ((v13 & 1) != 0 || (v18 = sub_7653B0(), v64 = v18, v65 = sub_9BA34(), v19 = sub_B1B4(v63), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_765C30(), sub_BEB8(v63), (v18 & 1) == 0))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:10.0];
    }

    else
    {
      if ((v13 & 1) != 0 || (v23 = sub_7653B0(), v64 = v23, v65 = sub_9BA34(), v24 = sub_B1B4(v63), (*(*(v23 - 8) + 104))(v24, enum case for Feature.search_tags(_:), v23), LOBYTE(v23) = sub_765C30(), sub_BEB8(v63), (v23 & 1) == 0))
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v25 scale:6.0];
    }

    v26 = HIDWORD(v62);
    v27 = v22;
    (*(v6 + 104))(v9, enum case for SystemImage.star(_:), v5);
    v28 = [v27 configurationWithTraitCollection:v17.super.isa];
    v29 = sub_759930();

    (*(v6 + 8))(v9, v5);
    [v29 contentInsets];
    v31 = v30;
    [v29 contentInsets];
    v33 = v31 + v32;
    [v29 size];
    v35 = v34 - v33;
    [v29 contentInsets];
    v37 = v36;
    [v29 contentInsets];
    v39 = v37 + v38;
    [v29 size];
    v41 = v40;

    if (v26)
    {
      if (v11 == 4 || v11 == 2)
      {
        v12 = 2.0;
      }

      else
      {
        v12 = 6.0;
        if (v11)
        {
          v42 = v33 * (ceilf(v10) + -1.0);
          if (v42 < 0.0)
          {
            v42 = 0.0;
          }

          v43 = v35 * v10 + v42;
          goto LABEL_29;
        }
      }
    }

    v43 = v35 * v10 + v12 * (ceilf(v10) + -1.0);
LABEL_29:
    [v2 setFrame:{0.0, 0.0, v43, v41 - v39}];
    v44 = [*&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starImageView] image];
    if (v44)
    {
      v45 = v44;
      v46 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starLayer];
      [v2 bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      [v45 contentInsets];
      v56 = v55;
      [v45 contentInsets];
      v58 = v57;
      [v45 contentInsets];
      v60 = v59;
      [v45 contentInsets];
      [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];
    }
  }
}

id sub_43C924()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_759950();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starSize];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
  HIDWORD(v43) = v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  v11 = v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_useCase];
  v12 = [v1 traitCollection];
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v48, "minimumContentSizeCategory");
  v47.receiver = v1;
  v47.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v47, "maximumContentSizeCategory");
  v49.value._rawValue = v13;
  v49.is_nil = v14;
  v15.super.isa = sub_7699C0(v49, v50).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
  }

  else if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v11 & 1) != 0 || (v16 = sub_7653B0(), v45 = v16, v46 = sub_9BA34(), v17 = sub_B1B4(v44), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_765C30(), sub_BEB8(v44), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    if ((v11 & 1) != 0 || (v21 = sub_7653B0(), v45 = v21, v46 = sub_9BA34(), v22 = sub_B1B4(v44), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = sub_765C30(), sub_BEB8(v44), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = HIDWORD(v43);
  v25 = v20;
  (*(v4 + 104))(v7, enum case for SystemImage.star(_:), v3);
  v26 = [v25 configurationWithTraitCollection:v15.super.isa];
  v27 = sub_759930();

  (*(v4 + 8))(v7, v3);
  [v27 contentInsets];
  v29 = v28;
  [v27 contentInsets];
  v31 = v29 + v30;
  [v27 size];
  v33 = v32 - v31;
  [v27 contentInsets];
  v35 = v34;
  [v27 contentInsets];
  v37 = v36;
  [v27 size];
  v39 = v38;

  if (!v24)
  {
    goto LABEL_28;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_28;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_28:
    v41 = v33 * v10 + v9 * (ceilf(v10) + -1.0);
    return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
  }

  v40 = v31 * (ceilf(v10) + -1.0);
  if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = v33 * v10 + v40;
  return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
}

void sub_43CE14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v65 = sub_759950();
  v66 = *(v65 - 8);
  *&v3 = __chkstk_darwin(v65).n128_u64[0];
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starImageView;
  v6 = [*&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starImageView] layer];
  [v6 removeFromSuperlayer];

  v7 = OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starLayer;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starLayer] removeFromSuperlayer];
  v8 = v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starSize];
  v9 = v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled];
  v10 = v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_useCase];
  v11 = [v1 traitCollection];
  v70.receiver = v1;
  v70.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v70, "minimumContentSizeCategory");
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v69, "maximumContentSizeCategory");
  v71.value._rawValue = v12;
  v71.is_nil = v13;
  isa = sub_7699C0(v71, v72).super.isa;

  HIDWORD(v63) = v8;
  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
LABEL_15:
    v24 = v67;
    v25 = v65;
    v14 = v9;
    v15 = v66;
    goto LABEL_21;
  }

  v14 = v9;
  if (v8 == 3)
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v16 = sub_7653B0(), *&v68.m14 = v16, *&v68.m21 = sub_9BA34(), v17 = sub_B1B4(&v68), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_765C30(), sub_BEB8(&v68), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v21 = sub_7653B0(), *&v68.m14 = v21, *&v68.m21 = sub_9BA34(), v22 = sub_B1B4(&v68), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = sub_765C30(), sub_BEB8(&v68), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = v67;
LABEL_21:
  v26 = v20;
  v27 = &enum case for SystemImage.starFill(_:);
  if (!v14)
  {
    v27 = &enum case for SystemImage.star(_:);
  }

  (*(v15 + 104))(v5, *v27, v25);
  v28 = isa;
  v29 = [v26 configurationWithTraitCollection:isa];
  v30 = sub_759930();

  (*(v15 + 8))(v5, v25);
  v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
  v32 = *&v1[v24];
  *&v1[v24] = v31;

  v33 = [objc_allocWithZone(CAReplicatorLayer) init];
  v34 = *&v1[v7];
  *&v1[v7] = v33;
  v35 = v33;

  [v35 setInstanceCount:*&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_maxNumberOfStars]];
  if (v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding + 8])
  {
    if (HIDWORD(v63))
    {
      if (HIDWORD(v63) != 4 && HIDWORD(v63) != 2)
      {
        [*&v1[v24] frame];
        Width = CGRectGetWidth(v74);
        goto LABEL_30;
      }

      v36 = 2.0;
    }

    else
    {
      v36 = 6.0;
    }
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
  }

  [*&v1[v24] frame];
  v37 = CGRectGetWidth(v73);
  [v30 contentInsets];
  v39 = v37 - v38;
  [v30 contentInsets];
  Width = v36 + v39 - v40;
LABEL_30:
  v42 = *&v1[v7];
  CATransform3DMakeTranslation(&v68, Width, 0.0, 0.0);
  [v42 setInstanceTransform:&v68];

  [*&v1[v7] setMasksToBounds:1];
  [*&v1[v24] setTintColor:*&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor]];
  v43 = *&v1[v24];
  v44 = *&v1[v7];
  v45 = [v43 layer];
  [v44 addSublayer:v45];

  v46 = *&v1[v7];
  [v1 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [v30 contentInsets];
  v56 = v55;
  [v30 contentInsets];
  v58 = v57;
  [v30 contentInsets];
  v60 = v59;
  [v30 contentInsets];
  [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];

  v62 = [v1 layer];
  [v62 addSublayer:*&v1[v7]];
}

id sub_43D568(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_43D5D4(void *a1, uint64_t a2, void *a3, SEL *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v10 = *a4;
  v11 = a3;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, v10);
  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, v11);
  sub_43D684(v13, a4);
}

void sub_43D684(uint64_t a1, SEL *a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_759950();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v55[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v60, *a2, v9);
  v13 = v12;
  if (!a1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = sub_769240();
  v16 = v15;
  if (v14 == sub_769240() && v16 == v17)
  {

    return;
  }

  v19 = sub_76A950();

  if ((v19 & 1) == 0)
  {
LABEL_11:
    v20 = v4[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starSize];
    v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
    HIDWORD(v54) = v4[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding + 8];
    v22 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
    v23 = v4[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_useCase];
    v24 = [v4 traitCollection];
    v59.receiver = v4;
    v59.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v59, "minimumContentSizeCategory");
    v58.receiver = v4;
    v58.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v58, "maximumContentSizeCategory");
    v61.value._rawValue = v25;
    v61.is_nil = v26;
    v27.super.isa = sub_7699C0(v61, v62).super.isa;

    if (v20 <= 1)
    {
      if (v20)
      {
        v31 = &UIFontTextStyleCaption2;
      }

      else
      {
        v31 = &UIFontTextStyleHeadline;
      }

      v32 = [objc_opt_self() configurationWithTextStyle:*v31 scale:2];
    }

    else if (v20 == 2)
    {
      v32 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v20 == 3)
    {
      if ((v23 & 1) != 0 || (v28 = sub_7653B0(), v56 = v28, v57 = sub_9BA34(), v29 = sub_B1B4(v55), (*(*(v28 - 8) + 104))(v29, enum case for Feature.search_tags(_:), v28), LOBYTE(v28) = sub_765C30(), sub_BEB8(v55), (v28 & 1) == 0))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v30 scale:10.0];
    }

    else
    {
      if ((v23 & 1) != 0 || (v33 = sub_7653B0(), v56 = v33, v57 = sub_9BA34(), v34 = sub_B1B4(v55), (*(*(v33 - 8) + 104))(v34, enum case for Feature.search_tags(_:), v33), LOBYTE(v33) = sub_765C30(), sub_BEB8(v55), (v33 & 1) == 0))
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v35 scale:6.0];
    }

    v36 = HIDWORD(v54);
    v37 = v32;
    (*(v8 + 104))(v11, enum case for SystemImage.star(_:), v7);
    v38 = [v37 configurationWithTraitCollection:v27.super.isa];
    v39 = sub_759930();

    (*(v8 + 8))(v11, v7);
    [v39 contentInsets];
    v41 = v40;
    [v39 contentInsets];
    v43 = v41 + v42;
    [v39 size];
    v45 = v44 - v43;
    [v39 contentInsets];
    v47 = v46;
    [v39 contentInsets];
    v49 = v47 + v48;
    [v39 size];
    v51 = v50;

    if (v36)
    {
      if (v20 == 4 || v20 == 2)
      {
        v21 = 2.0;
      }

      else
      {
        v21 = 6.0;
        if (v20)
        {
          v52 = v43 * (ceilf(v22) + -1.0);
          if (v52 < 0.0)
          {
            v52 = 0.0;
          }

          v53 = v45 * v22 + v52;
          goto LABEL_39;
        }
      }
    }

    v53 = v45 * v22 + v21 * (ceilf(v22) + -1.0);
LABEL_39:
    [v4 setFrame:{0.0, 0.0, v53, v51 - v49}];
    sub_43CE14();
  }
}

char *sub_43DC44(uint64_t a1, char a2, char a3, uint64_t a4, char a5, void *a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor] = 0;
  v16 = &v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding];
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starImageView;
  *&v8[v17] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starLayer;
  *&v8[v18] = [objc_allocWithZone(CAReplicatorLayer) init];
  v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starSize] = a3;
  *v16 = a4;
  v16[8] = a5 & 1;
  *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_maxNumberOfStars] = a1;
  v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled] = a2;
  *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = a1;
  v8[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_useCase] = a7 & 1;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor];
  *&v19[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor] = a6;
  v21 = v19;
  v22 = a6;

  sub_43C924();
  sub_43CE14();
  v23 = [v21 layer];

  [v23 setMasksToBounds:1];
  sub_BD88(&qword_9477F0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_77B6D0;
  *(v24 + 32) = sub_767B80();
  *(v24 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  sub_BE70(0, &qword_941EC8);
  sub_769A40();
  sub_769F40();

  swift_unknownObjectRelease();

  return v21;
}

unint64_t sub_43DFCC()
{
  result = qword_955398;
  if (!qword_955398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955398);
  }

  return result;
}

unint64_t sub_43E024()
{
  result = qword_9553A0;
  if (!qword_9553A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9553A0);
  }

  return result;
}

void sub_43E0C4()
{
  v1 = sub_759950();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize];
  v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars];
  v7 = v0[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase];
  v8 = [v0 traitCollection];
  v9 = [v0 minimumContentSizeCategory];
  v10 = [v0 maximumContentSizeCategory];
  v26.value._rawValue = v9;
  v26.is_nil = v10;
  v11.super.isa = sub_7699C0(v26, v27).super.isa;

  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v6 == 2)
  {
    v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v6 == 3)
  {
    if ((v7 & 1) != 0 || (v12 = sub_7653B0(), v24 = v12, v25 = sub_9BA34(), v13 = sub_B1B4(v23), (*(*(v12 - 8) + 104))(v13, enum case for Feature.search_tags(_:), v12), LOBYTE(v12) = sub_765C30(), sub_BEB8(v23), (v12 & 1) == 0))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v14 scale:10.0];
  }

  else
  {
    if ((v7 & 1) != 0 || (v16 = sub_7653B0(), v24 = v16, v25 = sub_9BA34(), v17 = sub_B1B4(v23), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_765C30(), sub_BEB8(v23), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:6.0];
  }

  v19 = v15;
  (*(v2 + 104))(v5, enum case for SystemImage.star(_:), v1);
  v20 = [v19 configurationWithTraitCollection:v11.super.isa];
  v21 = sub_759930();

  (*(v2 + 8))(v5, v1);
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
}

double sub_43E5C4(void *a1)
{
  v3 = sub_759950();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize];
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  v51 = v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars];
  v49 = v1[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase];
  v11 = [a1 traitCollection];
  v12 = [v1 minimumContentSizeCategory];
  v13 = [v1 maximumContentSizeCategory];
  v56.value._rawValue = v12;
  v56.is_nil = v13;
  isa = sub_7699C0(v56, v57).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v8 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v14 = sub_7653B0(), v54 = v14, v55 = sub_9BA34(), v15 = sub_B1B4(v53), (*(*(v14 - 8) + 104))(v15, enum case for Feature.search_tags(_:), v14), LOBYTE(v14) = sub_765C30(), sub_BEB8(v53), (v14 & 1) == 0))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v16 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v18 = sub_7653B0(), v54 = v18, v55 = sub_9BA34(), v19 = sub_B1B4(v53), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_765C30(), sub_BEB8(v53), (v18 & 1) == 0))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:6.0];
  }

  v21 = v10;
  v22 = v17;
  v23 = *(v4 + 104);
  v23(v7, enum case for SystemImage.star(_:), v3);
  v24 = [v22 configurationWithTraitCollection:isa];
  v25 = sub_759930();

  v26 = *(v4 + 8);
  v26(v7, v3);
  [v25 contentInsets];
  v28 = v27;
  [v25 contentInsets];
  v30 = v28 + v29;
  [v25 size];
  v32 = v31 - v30;
  [v25 contentInsets];
  [v25 contentInsets];
  [v25 size];

  if (!v51)
  {
    goto LABEL_26;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_26;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_26:
    v34 = v32 * v21 + v9 * (v21 + -1.0);
    goto LABEL_27;
  }

  v33 = v30 * (v21 + -1.0);
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v32 * v21 + v33;
LABEL_27:
  v50 = v26;
  if (v8 <= 1)
  {
    if (v8)
    {
      v38 = &UIFontTextStyleCaption2;
    }

    else
    {
      v38 = &UIFontTextStyleHeadline;
    }

    v39 = [objc_opt_self() configurationWithTextStyle:*v38 scale:2];
  }

  else if (v8 == 2)
  {
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v35 = sub_7653B0(), v54 = v35, v55 = sub_9BA34(), v36 = sub_B1B4(v53), (*(*(v35 - 8) + 104))(v36, enum case for Feature.search_tags(_:), v35), LOBYTE(v35) = sub_765C30(), sub_BEB8(v53), (v35 & 1) == 0))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v37 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v40 = sub_7653B0(), v54 = v40, v55 = sub_9BA34(), v41 = sub_B1B4(v53), (*(*(v40 - 8) + 104))(v41, enum case for Feature.search_tags(_:), v40), LOBYTE(v40) = sub_765C30(), sub_BEB8(v53), (v40 & 1) == 0))
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v42 scale:6.0];
  }

  v43 = v39;
  v23(v7, enum case for SystemImage.starFill(_:), v3);
  v44 = isa;
  v45 = [v43 configurationWithTraitCollection:isa];
  v46 = sub_759930();

  v50(v7, v3);
  sub_76A130();
  [v46 contentInsets];

  return v34;
}

void sub_43ED7C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starPadding;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_starLayer;
  *(v0 + v3) = [objc_allocWithZone(CAReplicatorLayer) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_43EE58()
{
  v1 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = [result collectionView];
    v14 = OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    sub_E5A10(v0 + v14, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_127CD8(v3);
      return 0;
    }

    (*(v5 + 32))(v10, v3, v4);
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_isTransitioningFromContainer) != 1)
    {
      if (v13)
      {
        v22 = v13;
        isa = sub_757550().super.isa;
        v24 = [v22 cellForItemAtIndexPath:isa];

        (*(v5 + 8))(v10, v4);
        return v24;
      }

      (*(v5 + 8))(v10, v4);

      return 0;
    }

    sub_7575D0();
    sub_7575B0();
    if (v13)
    {
      v15 = v13;
      v16 = sub_757550().super.isa;
      v17 = [v15 cellForItemAtIndexPath:v16];

      if (v17)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          result = sub_7575C0();
          v18 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
          v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
          if (v19 >> 62)
          {
            v28 = result;
            v26 = sub_76A860();
            result = v28;
            if (v28 < v26)
            {
LABEL_10:
              v20 = *&v17[v18];
              if ((v20 & 0xC000000000000001) != 0)
              {
                v28 = v5;

                v21 = sub_76A770();

                v5 = v28;

                goto LABEL_24;
              }

              if (result < 0)
              {
                __break(1u);
              }

              else if (result < *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
              {
                v21 = *(v20 + 8 * result + 32);

LABEL_24:
                v27 = *(v5 + 8);
                v27(v7, v4);
                v27(v10, v4);
                return v21;
              }

              __break(1u);
              return result;
            }
          }

          else if (result < *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_10;
          }

          v21 = 0;
          goto LABEL_24;
        }

        v15 = v12;
        v12 = v17;
      }
    }

    v25 = *(v5 + 8);
    v25(v7, v4);
    v25(v10, v4);
    return 0;
  }

  return result;
}

void sub_43F35C()
{
  v0 = sub_43EE58();
  if (v0)
  {
    v1 = v0;
    [v0 setHidden:1];
  }
}

char *sub_43F44C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_43EE58();
  if (!v5)
  {

LABEL_6:
    v52 = 0u;
    v54 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v51 = v19;
  v53 = v18;
  v49 = v21;
  v50 = v20;

  v22 = 0;
  *&v23 = v51;
  *(&v23 + 1) = v49;
  v52 = v23;
  *&v23 = v53;
  *(&v23 + 1) = v50;
  v54 = v23;
LABEL_7:
  v24 = [a1 presentingViewController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 traitCollection];

    v27 = [v26 horizontalSizeClass];
    v28 = v27 == &dword_0 + 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for BouncyToRectAnimation();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_toRect];
  *v31 = v54;
  *(v31 + 1) = v52;
  v31[32] = v22;
  v30[OBJC_IVAR____TtC18ASMessagesProvider21BouncyToRectAnimation_shouldAnimateTabBar] = v28;
  v55.receiver = v30;
  v55.super_class = v29;
  v32 = objc_msgSendSuper2(&v55, "init");
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v35 = *&v32[v34];
  v36 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_7BB70(0, *(v35 + 2) + 1, 1, v35);
    *&v32[v34] = v35;
  }

  v39 = *(v35 + 2);
  v38 = *(v35 + 3);
  if (v39 >= v38 >> 1)
  {
    v35 = sub_7BB70((v38 > 1), v39 + 1, 1, v35);
  }

  *(v35 + 2) = v39 + 1;
  v40 = &v35[24 * v39];
  *(v40 + 4) = sub_43FCD8;
  *(v40 + 5) = v33;
  v40[48] = 1;
  *&v32[v34] = v35;
  swift_endAccess();

  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v36;
  swift_beginAccess();
  v42 = *&v32[v34];
  v43 = v36;
  v44 = v1;

  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v42;
  if ((v45 & 1) == 0)
  {
    v42 = sub_7BB70(0, *(v42 + 2) + 1, 1, v42);
    *&v32[v34] = v42;
  }

  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_7BB70((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[24 * v47];
  *(v48 + 4) = sub_43FD20;
  *(v48 + 5) = v41;
  v48[48] = 2;
  *&v32[v34] = v42;
  swift_endAccess();

  return v32;
}

void sub_43F81C(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v9 = v3;
    type metadata accessor for ComponentViewOverflowPresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      sub_48AE74();
      v6 = v5 + OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v6 + 24))
      {
        sub_134D8(v6, v10);
        v7 = v11;
        v8 = v12;
        sub_B170(v10, v11);
        (*(v8 + 24))(v7, v8);

        sub_BEB8(v10);
        return;
      }
    }
  }
}

void sub_43F938(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_43EE58();
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  v7 = [a4 _existingPresentationControllerImmediate:1 effective:1];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ComponentViewOverflowPresentationController();
    if (swift_dynamicCastClass())
    {
      sub_48AF64();
    }
  }
}

id sub_43FB10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentViewOverflowTransitioning();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ComponentViewOverflowTransitioning()
{
  result = qword_9553F0;
  if (!qword_9553F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43FBF8()
{
  sub_127A0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_43FCA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_43FCE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_43FD28(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_43EE58();
  if (!v5)
  {

LABEL_6:
    v41 = 0u;
    v43 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v40 = v19;
  v42 = v18;
  v38 = v21;
  v39 = v20;

  v22 = 0;
  *&v23 = v40;
  *(&v23 + 1) = v38;
  v41 = v23;
  *&v23 = v42;
  *(&v23 + 1) = v39;
  v43 = v23;
LABEL_7:
  v24 = [a1 traitCollection];
  v25 = [v24 horizontalSizeClass];

  v26 = type metadata accessor for BouncyFromRectAnimation();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_fromRect];
  *v28 = v43;
  *(v28 + 1) = v41;
  v28[32] = v22;
  v27[OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_shouldAnimateTabBar] = v25 == &dword_0 + 1;
  v44.receiver = v27;
  v44.super_class = v26;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v32 = *&v29[v31];
  v33 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[v31] = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_7BB70(0, *(v32 + 2) + 1, 1, v32);
    *&v29[v31] = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_7BB70((v35 > 1), v36 + 1, 1, v32);
  }

  *(v32 + 2) = v36 + 1;
  v37 = &v32[24 * v36];
  *(v37 + 4) = sub_43FFD8;
  *(v37 + 5) = v30;
  v37[48] = 0;
  *&v29[v31] = v32;
  swift_endAccess();

  return v29;
}

void *sub_43FFE4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_BD88(&qword_951438);
  sub_13EAE4();
  sub_769030();
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_7589C0();
  }

  swift_getObjectType();
  return sub_2F1D04(a1, v8 & 1, a6);
}

uint64_t sub_4400AC()
{
  if (!sub_2F0214())
  {
    return 2;
  }

  sub_BD88(&qword_946370);
  sub_13EAE4();
  sub_768AF0();
  return 3;
}

unint64_t sub_440188()
{
  result = qword_955448;
  if (!qword_955448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955448);
  }

  return result;
}

unint64_t sub_4401E0()
{
  result = qword_955450;
  if (!qword_955450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955450);
  }

  return result;
}

void sub_440234()
{
  v1 = v0;
  v2 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = sub_7589D0();

  v8 = sub_7589E0();
  v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
  *v9 = v8;
  v9[1] = v10;

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];

  v12 = sub_769210();

  [v11 setText:v12];

  [v1 setNeedsLayout];
  v13 = sub_7589F0();
  v14 = &v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
  *v14 = v13;
  v14[1] = v15;

  sub_2F0D68();
  v16 = sub_7589B0();
  if (v16)
  {
    v37 = v16;
    sub_764C80();
    sub_768900();
    sub_13EB38(&qword_951430, &type metadata accessor for Action);
    sub_768820();

    v17 = sub_BD88(&unk_950960);
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  }

  else
  {
    v18 = sub_BD88(&unk_950960);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  v19 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_13EA74(v7, &v1[v19]);
  swift_endAccess();
  sub_2F0EF0();
  sub_440834(v7);
  sub_BD88(&qword_946370);
  sub_13EAE4();
  sub_768B00();
  if (v37)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_7589C0();
  }

  sub_2F28AC();
  v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] = v20 & 1;
  sub_2F0ABC();
  v21 = sub_7589B0();
  if (v21)
  {
    v37 = v21;
    sub_764C80();
    sub_768900();
    sub_13EB38(&qword_951430, &type metadata accessor for Action);
    sub_768820();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_BD88(&unk_950960);
  (*(*(v23 - 8) + 56))(v4, v22, 1, v23);
  swift_beginAccess();
  sub_13EA74(v4, &v1[v19]);
  swift_endAccess();
  sub_2F0EF0();
  sub_440834(v4);
  v24 = [v1 traitCollection];
  v25 = sub_7699B0();

  v1[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v25 & 1) == 0;
  if (v25)
  {
    v26 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v27 = *&v1[v26];
    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v1[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v1[v26] = 0;

    [v1 setNeedsLayout];
  }

  else
  {
    v29 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v30 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31)
    {
      [v31 removeFromSuperview];
      v32 = *&v1[v30];
    }

    else
    {
      v32 = 0;
    }

    *&v1[v30] = v29;
    v33 = v29;

    if (v33)
    {
      sub_396E8();
      v34 = sub_769FB0();
      [v33 setBackgroundColor:v34];

      v35 = [v1 contentView];
      [v35 addSubview:v33];
    }

    [v1 setNeedsLayout];
  }
}

uint64_t sub_440834(uint64_t a1)
{
  v2 = sub_BD88(&qword_94EC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_4408AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v4 = sub_36D2A0();
    v7 = OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView;
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider20PresentationLinkView_linkView] setMetadata:a2];
    [*&v4[v7] setURL:0];
    [v4 setNeedsLayout];
    v5 = &OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___presentationLinkView;
  }

  else
  {
    v4 = sub_36D280();
    sub_223D38();
    v5 = &OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___standardLinkView;
  }

  v8 = *(v3 + *v5);
  v9 = v8;

  sub_36D3A4(v8);
}

double sub_44097C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_440F0C();
  v11 = v10;
  v12 = sub_440B18(v9, v10, a7, a1);
  sub_B3204(v9, v11);
  return v12;
}

void sub_4409EC()
{
  v0 = sub_440F0C();
  v2 = v1;
  sub_4408AC(v0, v1);

  sub_B3204(v0, v2);
}

uint64_t sub_440AD0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_440B18(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_7570A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    sub_75A260();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_3F5C44(v10);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (qword_93C2F8 != -1)
      {
        swift_once();
      }

      v23 = sub_BD88(&qword_942DB8);
      v15 = sub_BE38(v23, qword_942D98);
      __chkstk_darwin(v15);
      *(&v22 - 2) = v14;
      swift_beginAccess();
      sub_767450();
      swift_endAccess();
      v16 = v24;
      v17 = [a3 traitCollection];
      v18 = [v17 preferredContentSizeCategory];

      [v16 setMinimumContentSizeCategory:v18];
      v19 = [a3 traitCollection];
      v20 = [v19 preferredContentSizeCategory];

      [v16 setMaximumContentSizeCategory:v20];
      [v16 setMetadata:a2];
      [v16 sizeThatFits:{a4, 1.79769313e308}];
      v24 = v16;
      swift_beginAccess();
      sub_767470();
      swift_endAccess();

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for StandardLinkView();
    sub_75A240();
    sub_75A230();
    swift_getObjectType();
    sub_221BA0();
  }

  return a4;
}

uint64_t sub_440F0C()
{
  sub_BD88(&unk_943590);
  sub_768900();
  sub_768ED0();
  sub_758C30();

  result = v1;
  if ((~v1 & 0xF000000000000007) == 0)
  {
  }

  return result;
}

uint64_t sub_440FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34[0] = a2;
  v5 = sub_766690();
  __chkstk_darwin(v5 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F0C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (v34 - v13);
  [a1 pageMarginInsets];
  v16 = v15;
  v18 = v17;
  v19 = [a1 traitCollection];
  v20 = sub_7699D0();

  if (v20)
  {
    *v14 = 1.0;
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:), v7);
    if (JUScreenClassGetMain() == 1)
    {
      v41 = &type metadata for Double;
      v42 = &protocol witness table for Double;
      v40[0] = 0x407E000000000000;
      v21 = 0x4070400000000000;
    }

    else
    {
      HasRoundedCorners = JUScreenClassHasRoundedCorners();
      v23 = 560.0;
      if (HasRoundedCorners)
      {
        v23 = 610.0;
      }

      v38 = &type metadata for Double;
      v39 = &protocol witness table for Double;
      *&v37 = v23;
      sub_34698(&v37, v40);
      v21 = 0x4075400000000000;
    }
  }

  else
  {
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = a3 - (v16 + v18 + 80.0);
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v7);
    v21 = 0;
    v41 = &type metadata for Double;
    v42 = &protocol witness table for Double;
    v40[0] = 0x4083100000000000;
  }

  if (qword_93D108 != -1)
  {
    swift_once();
  }

  v24 = sub_BD88(&qword_94E700);
  sub_BE38(v24, qword_9554A0);
  *&v37 = a1;
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  (*(v8 + 16))(v10, v14, v7);
  if (qword_93D118 != -1)
  {
    swift_once();
  }

  v25 = sub_766CA0();
  v26 = sub_BE38(v25, qword_99DB20);
  v38 = v25;
  v39 = &protocol witness table for StaticDimension;
  v27 = sub_B1B4(&v37);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  v36[14] = &protocol witness table for Double;
  v36[13] = &type metadata for Double;
  v36[10] = 0x4071C00000000000;
  v36[9] = &protocol witness table for CGFloat;
  v36[8] = &type metadata for CGFloat;
  v36[5] = 0x4034000000000000;
  if (qword_93D110 != -1)
  {
    swift_once();
  }

  v28 = sub_761250();
  v29 = sub_BE38(v28, qword_99DB08);
  v36[3] = v28;
  v36[4] = sub_44436C(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  v30 = sub_B1B4(v36);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_134D8(v40, &v35);
  if (v20)
  {
    v31 = &protocol witness table for CGFloat;
    v32 = &type metadata for CGFloat;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v21 = 0;
    v34[3] = 0;
    v34[4] = 0;
  }

  v34[5] = v32;
  v34[6] = v31;
  v34[2] = v21;
  sub_75EEB0();
  sub_BEB8(v40);
  return (*(v8 + 8))(v14, v7);
}

void sub_441518(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  if (a1)
  {
    sub_44436C(&qword_93F500, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550);
      v9 = v5;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = a1;
  v12 = a1;
  sub_1F92A8(v11);

  if (*(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      *(v13 + qword_940578 + 8) = &off_891CF8;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_4416D4()
{
  v0 = sub_766690();
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = sub_BD88(&qword_94E700);
  sub_161DC(v2, qword_9554A0);
  sub_BE38(v2, qword_9554A0);
  sub_7666A0();
  sub_7666A0();
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_4417F4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_761250();
  sub_161DC(v4, qword_99DB08);
  sub_BE38(v4, qword_99DB08);
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F910);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_761240();
}

uint64_t sub_441990()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99DB20);
  sub_BE38(v4, qword_99DB20);
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F310);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_441B68()
{
  v0 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = sub_BD88(&unk_95CF90);
  sub_161DC(v6, qword_99DB38);
  sub_BE38(v6, qword_99DB38);
  if (qword_93CA68 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v0, qword_99CA60);
  sub_FCD60(v7, v5);
  if (qword_93CA60 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99CA48);
  sub_FCD60(v8, v2);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

char *sub_441CF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v103 = sub_768C60();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v97 = &v90 - v12;
  v105 = sub_760AD0();
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v90 - v16;
  v99 = sub_7666D0();
  v106 = *(v99 - 8);
  __chkstk_darwin(v99);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_BD88(&unk_95CF90);
  v18 = *(v96 - 1);
  __chkstk_darwin(v96);
  v20 = &v90 - v19;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_tapGestureRecognizer;
  *(v4 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v4 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for MediaView();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v24[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v25 = type metadata accessor for UberContentContainer();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v26[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v27 = &v26[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v26[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v26[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v114.receiver = v26;
  v114.super_class = v25;
  v29 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v29 addSubview:?];
  }

  v31 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v30;
  v113.receiver = v24;
  v113.super_class = v23;
  v32 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v32 setClipsToBounds:1];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView;
  sub_759210();
  *(v5 + v33) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView;
  if (qword_93D120 != -1)
  {
    swift_once();
  }

  v35 = v96;
  v36 = sub_BE38(v96, qword_99DB38);
  (*(v18 + 16))(v20, v36, v35);
  v37 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v5 + v34) = sub_637704(v20);
  v95 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView;
  v96 = v5;
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v38 = v99;
  v39 = sub_BE38(v99, qword_99F910);
  v40 = v106;
  v41 = *(v106 + 16);
  v42 = v104;
  v41(v104, v39, v38);
  v93 = v41;
  v91 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = enum case for DirectionalTextAlignment.none(_:);
  v94 = v13;
  v44 = *(v13 + 104);
  v45 = v105;
  v44(v107, enum case for DirectionalTextAlignment.none(_:), v105);
  v92 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v92[qword_94B338] = UIContentSizeCategoryExtraExtraExtraLarge;
  v46 = v97;
  v41(v97, v42, v38);
  v47 = v45;
  v48 = *(v40 + 56);
  v48(v46, 0, 1, v38);
  v49 = v98;
  v44(v98, v43, v47);
  v50 = v91;
  v51 = sub_75BB10();
  v52 = v104;
  v93(v46, v104, v38);
  v48(v46, 0, 1, v38);
  v53 = v51;
  sub_75BA40();
  sub_75BA20();
  [v53 setNumberOfLines:0];
  v54 = v94;
  v55 = v107;
  v56 = v105;
  (*(v94 + 16))(v49, v107, v105);
  sub_75BA90();

  (*(v54 + 8))(v55, v56);
  (*(v106 + 8))(v52, v38);
  v57 = v96;
  *(v96 + v95) = v53;
  v58 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsTextAlignment;
  v59 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v60 = sub_75B220();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  v61 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton;
  v62 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v57[v61] = sub_1DD00C(0);
  *&v57[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_pageTraits] = 0;
  v57[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_isBackgroundEffectViewHidden] = 1;
  v112.receiver = v57;
  v112.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v112, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v67 = v63;
  [v67 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_BE70(0, &qword_93E540);
  v68 = sub_76A030();
  [v67 setBackgroundColor:v68];

  v69 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView;
  v70 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView];
  sub_75BAD0();

  v71 = [*&v67[v69] layer];
  [v71 setCompositingFilter:kCAFilterPlusL];

  v72 = *&v67[v69];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v73 = v72;
  v74 = v101;
  sub_768C10();
  sub_BDD0(&v108);
  sub_BDD0(&v110);
  sub_769E70();

  v75 = *(v102 + 8);
  v76 = v103;
  v75(v74, v103);
  v77 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView;
  v78 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v78;
  sub_768C10();
  sub_BDD0(&v108);
  sub_BDD0(&v110);
  sub_769E70();

  v75(v74, v76);
  v80 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView;
  v81 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v82 = v81;
  sub_768C10();
  sub_BDD0(&v108);
  sub_BDD0(&v110);
  sub_769E70();

  v75(v74, v76);
  [v67 addSubview:*&v67[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer]];
  [v67 addSubview:*&v67[v77]];
  [v67 addSubview:*&v67[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton]];
  [v67 addSubview:*&v67[v69]];
  v83 = *&v67[v80];
  sub_7590D0();

  v84 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_tapGestureRecognizer;
  v85 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_tapGestureRecognizer];
  v86 = v67;
  [v85 addTarget:v86 action:"didTapVideo"];
  v87 = *&v67[v84];
  [v87 setDelegate:v86];

  [v86 addGestureRecognizer:*&v67[v84]];
  v88 = [v86 layer];

  [v88 setAllowsGroupBlending:0];
  return v86;
}

void (*sub_44298C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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
  return sub_442A2C;
}

void sub_442A2C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_44436C(&qword_93F500, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_BE70(0, &qword_93E550);
        v8 = v4;
        v9 = sub_76A1C0();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v18 = v3;
    sub_1F92A8(v17);

    if (*(*(v16 + v15) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_940578 + 8) = &off_891CF8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_44436C(&qword_93F500, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_93E550);
        v13 = v4;
        v14 = sub_76A1C0();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v24 = v3;
    sub_1F92A8(v23);

    if (*(*(v22 + v21) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        *(v25 + qword_940578 + 8) = &off_891CF8;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

double sub_442D58(double a1)
{
  v3 = sub_75EEC0();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75EEE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_pageTraits))
  {
    return 0.0;
  }

  v10 = swift_unknownObjectRetain();
  sub_440FB8(v10, v5, a1);
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  v22[19] = type metadata accessor for MediaView();
  v22[20] = &protocol witness table for UIView;
  v22[16] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView);
  v22[14] = type metadata accessor for BreakoutDetailsView(0);
  v22[15] = &protocol witness table for UIView;
  v22[11] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton);
  v22[9] = type metadata accessor for OfferButton();
  v22[10] = &protocol witness table for UIView;
  v22[6] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView);
  v22[4] = type metadata accessor for CappedSizeDynamicTypeLabel();
  v22[5] = &protocol witness table for UILabel;
  v22[1] = v14;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  sub_75EED0();
  sub_75EE90();
  v20 = v19;
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  return v20;
}

id sub_442FE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75EEC0();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75EEE0();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  result = objc_msgSendSuper2(&v60, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_pageTraits];
  if (v16)
  {
    v46 = v11;
    v47 = v10;
    swift_unknownObjectRetain();
    [v1 bounds];
    sub_440FB8(v16, v9, v17);
    v44[0] = v3;
    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer];
    v19 = type metadata accessor for MediaView();
    v44[1] = ObjectType;
    v58 = v19;
    v59 = &protocol witness table for UIView;
    v57 = v18;
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView];
    v55 = type metadata accessor for BreakoutDetailsView(0);
    v56 = &protocol witness table for UIView;
    v54 = v20;
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton];
    v52 = type metadata accessor for OfferButton();
    v53 = &protocol witness table for UIView;
    v51 = v21;
    v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView];
    v49 = type metadata accessor for CappedSizeDynamicTypeLabel();
    v50 = &protocol witness table for UILabel;
    v48 = v22;
    v45 = v18;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_75EED0();
    [v1 bounds];
    sub_75EEA0();
    (*(v4 + 8))(v6, v44[0]);
    v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v61);
    [v23 frame];
    MinY = CGRectGetMinY(v62);
    v29 = &v26[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradientHeight];
    *v29 = MaxY - MinY;
    *(v29 + 8) = 0;
    [v1 bounds];
    [v26 setFrame:?];
    sub_75D650();
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v32 <= 31.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32 * 0.5;
    }

    [v23 frame];
    v34 = CGRectGetMinY(v63) + -34.0;
    v35 = 30.0;
    if (v32 <= 60.0)
    {
      v35 = v33;
    }

    v36 = v34 - v35;
    sub_75D650();
    MidY = CGRectGetMidY(v64);
    v38 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer];
    v39 = &v38[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
    if (v36 >= MidY)
    {
      v43 = v39[8];
      *v39 = 0;
      v39[8] = 1;
      v41 = v47;
      v42 = v46;
      if (v43)
      {
LABEL_16:
        swift_unknownObjectRelease();
        return (*(v42 + 8))(v14, v41);
      }
    }

    else
    {
      MidY = *v39;
      v40 = v39[8];
      *v39 = v36;
      v39[8] = 0;
      v41 = v47;
      v42 = v46;
      if ((v40 & 1) == 0 && v36 == MidY)
      {
        goto LABEL_16;
      }
    }

    [v38 setNeedsLayout];
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_4434A4()
{
  v1 = *(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v1)
  {
    type metadata accessor for VideoView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = 0;
  v16 = sub_444E70;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_23F0CC;
  v15 = &unk_891E00;
  v7 = _Block_copy(&v12);

  v8 = v0;

  v9 = swift_allocObject();
  *(v9 + 16) = sub_444E48;
  *(v9 + 24) = v4;
  v16 = sub_1A979C;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_3D6D80;
  v15 = &unk_891E50;
  v10 = _Block_copy(&v12);

  [v5 animateWithDuration:4 delay:v7 options:v10 animations:0.3 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_4436DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_9405B8);
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1EEC04;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_509F0;
      aBlock[3] = &unk_891EA0;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
      v1 = v5;
    }
  }
}

id sub_443854(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView) setAlpha:?];
  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView) setAlpha:a2];
  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton) setAlpha:a2];
  v4 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView);

  return [v4 setAlpha:a2];
}

void sub_4438EC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0x3FF0000000000000;
  v11 = sub_444348;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_23F0CC;
  v10 = &unk_891D38;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v11 = sub_1A9758;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_3D6D80;
  v10 = &unk_891D88;
  v6 = _Block_copy(&v7);

  [v1 animateWithDuration:4 delay:v3 options:v6 animations:0.3 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t type metadata accessor for UpsellBreakoutView()
{
  result = qword_955510;
  if (!qword_955510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_443D9C()
{
  result = sub_75B220();
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

uint64_t sub_443E58()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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

uint64_t (*sub_443ECC(uint64_t **a1))()
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
  v2[4] = sub_44298C(v2);
  return sub_21028;
}

void sub_443F3C()
{
  if (*(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + qword_9405B8);
      if (v2)
      {

        [v2 setShowsPlaybackControls:1];
      }
    }
  }
}

uint64_t sub_443FD8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_44436C(&unk_955530, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_44404C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_44436C(&unk_955530, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_4440D8(uint64_t *a1))()
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
  sub_44436C(&unk_955530, type metadata accessor for UpsellBreakoutView);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_444194(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_444310()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_444354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_44436C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_4443B4()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v59 = &v52 - v3;
  v58 = sub_760AD0();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v61 = sub_7666D0();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_BD88(&unk_95CF90);
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v10 = &v52 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for MediaView();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v14[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v15 = type metadata accessor for UberContentContainer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v16[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v17 = &v16[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v16[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v16[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v67.receiver = v16;
  v67.super_class = v15;
  v19 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  if (*&v19[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v19 addSubview:?];
  }

  v21 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v20;
  v66.receiver = v14;
  v66.super_class = v13;
  v22 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds:1];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *(v1 + v21) = v22;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView;
  sub_759210();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_detailsView;
  if (qword_93D120 != -1)
  {
    swift_once();
  }

  v25 = v62;
  v26 = sub_BE38(v62, qword_99DB38);
  (*(v57 + 16))(v10, v26, v25);
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  v28 = sub_637704(v10);
  v62 = v1;
  *(v1 + v24) = v28;
  v57 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView;
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v29 = v61;
  v30 = sub_BE38(v61, qword_99F910);
  v31 = v63;
  v32 = v64;
  v33 = *(v64 + 16);
  v33(v63, v30, v29);
  v55 = v33;
  v52 = UIContentSizeCategoryExtraExtraExtraLarge;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v56 = v4;
  v35 = *(v4 + 104);
  v36 = v58;
  v35(v65, enum case for DirectionalTextAlignment.none(_:), v58);
  v54 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v54[qword_94B338] = UIContentSizeCategoryExtraExtraExtraLarge;
  v37 = v59;
  v33(v59, v31, v29);
  v38 = v36;
  v53 = *(v32 + 56);
  v53(v37, 0, 1, v29);
  v39 = v60;
  v35(v60, v34, v38);
  v40 = v52;
  v41 = sub_75BB10();
  v42 = v63;
  v55(v37, v63, v29);
  v53(v37, 0, 1, v29);
  v43 = v41;
  sub_75BA40();
  sub_75BA20();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v65;
  (*(v56 + 16))(v39, v65, v38);
  sub_75BA90();

  (*(v44 + 8))(v45, v38);
  (*(v64 + 8))(v42, v29);
  v46 = v62;
  *(v62 + v57) = v43;
  v47 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsTextAlignment;
  v48 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v49 = sub_75B220();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  v50 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton;
  v51 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v46 + v50) = sub_1DD00C(0);
  *(v46 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_pageTraits) = 0;
  *(v46 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_isBackgroundEffectViewHidden) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t sub_444B74(void *a1)
{
  [a1 locationInView:v1];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer];
  if (!*(*&v4[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 0;
  }

  v8 = &selRef_setSpeed_;
  [v7 frame];
  v26.x = v5;
  v26.y = v6;
  if (!CGRectContainsPoint(v28, v26))
  {
    return 0;
  }

  v9 = [v1 subviews];
  sub_BE70(0, &qword_93E550);
  v10 = sub_769460();

  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
      }

      else
      {
        if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v14, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(v14, v8[395]), v27.x = v5, v27.y = v6, CGRectContainsPoint(v29, v27)))
      {
        v16 = v4;
        v17 = v4;
        v18 = sub_76A1C0();

        v4 = v16;
        v8 = &selRef_setSpeed_;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v19 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v19)
  {
    return 0;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + qword_9405B0);
  if (!v21)
  {
    return 0;
  }

  v22 = v19;
  v23 = v21;
  v24 = sub_759A70();

  return v24 & 1;
}

uint64_t sub_444E10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for AccountButton()
{
  result = qword_9555B0;
  if (!qword_9555B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_444ED0()
{
  sub_44B0F0();
  if (v0 <= 0x3F)
  {
    sub_7572A0();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_444FF0()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.personCropCircle(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_955540 = v5;
  return result;
}

uint64_t sub_4450E8()
{
  sub_BE70(0, &qword_93E540);
  result = sub_769FC0();
  qword_955548 = result;
  return result;
}

uint64_t sub_44512C()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_955550);
  sub_BE38(v4, qword_955550);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t (*sub_445288(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_44BBE0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1EBDCC;
}

void sub_445318(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = qword_955580;
    if (*&Strong[qword_955580])
    {

      if (sub_7683F0())
      {
        goto LABEL_16;
      }

      v6 = [v4 backgroundImageForState:0];
      if (v6)
      {
      }

      else
      {
        v7 = v4[qword_955568];
        v4[qword_955568] = 0;
        if (v7 == 1)
        {
          v8 = [v4 layer];
          [v8 setBorderColor:0];

          v9 = [v4 layer];
          [v9 setBorderWidth:0.0];

          [v4 setNeedsDisplay];
        }

        if (qword_93D128 != -1)
        {
          swift_once();
        }

        [v4 setImage:qword_955540 forState:0];
        [v4 alpha];
        if (v10 <= COERCE_DOUBLE(1))
        {
          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v4;
          aBlock[4] = sub_255220;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23F0CC;
          aBlock[3] = &unk_891FB8;
          v13 = _Block_copy(aBlock);
          v14 = v4;

          [v11 animateWithDuration:4 delay:v13 options:0 animations:0.33 completion:0.0];
          _Block_release(v13);
        }
      }

      *&v4[v5] = 0;

      if ((a2 & 1) == 0)
      {
LABEL_16:
      }

      else
      {
        v15 = swift_unknownObjectWeakLoadStrong();

        if (v15)
        {
          *(v15 + qword_9425E0) = 0;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

void sub_4455E4()
{
  sub_10A2C(v0 + qword_99DB70, &qword_945020);
  sub_13238(v0 + qword_99DB78);

  v1 = qword_955588;
  v2 = sub_7572A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_9555A8);
}

id sub_4456CC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_445744(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_4457D0(uint64_t a1)
{
  sub_10A2C(a1 + qword_99DB70, &qword_945020);
  sub_13238(a1 + qword_99DB78);

  v2 = qword_955588;
  v3 = sub_7572A0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_9555A8);
}

uint64_t sub_4458BC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_955640);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_769590();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_769570();
  v6 = v0;
  v7 = sub_769560();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_54A098(0, 0, v4, &unk_79DF38, v8);
}

uint64_t sub_4459F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_BD88(&qword_955640);
  v5[20] = swift_task_alloc();
  v5[21] = sub_769570();
  v5[22] = sub_769560();
  v7 = sub_769540();
  v5[23] = v7;
  v5[24] = v6;

  return _swift_task_switch(sub_445AC8, v7, v6);
}

uint64_t sub_445AC8()
{
  v1 = [objc_opt_self() defaultService];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_445C08;
  v2 = swift_continuation_init();
  v0[17] = sub_BD88(&qword_955668);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_445E4C;
  v0[13] = &unk_892288;
  v0[14] = v2;
  [v1 shouldUseModernUpdatesWithCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_445C08()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_445D10, v2, v1);
}

uint64_t sub_445D10()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v10 = *(v0 + 144);

  v3 = *(v0 + 208);

  v4 = sub_769590();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v10;
  v6 = sub_769560();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v3;
  *(v7 + 40) = v10;
  sub_54A098(0, 0, v2, &unk_79DF50, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_445E4C(uint64_t a1, char a2)
{
  **(*(*sub_B170((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_445EA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 180) = a4;
  sub_7685A0();
  *(v5 + 96) = swift_task_alloc();
  sub_769570();
  *(v5 + 104) = sub_769560();
  v7 = sub_769540();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  return _swift_task_switch(sub_445F70, v7, v6);
}

uint64_t sub_445F70()
{
  if (*(v0 + 180) == 1)
  {
    if (qword_93D138 != -1)
    {
      swift_once();
    }

    v1 = sub_768FF0();
    *(v0 + 128) = v1;
    *(v0 + 136) = sub_BE38(v1, qword_955550);
    *(v0 + 144) = sub_BD88(&qword_93FD00);
    v2 = *(sub_7685F0() - 8);
    *(v0 + 152) = *(v2 + 72);
    *(v0 + 176) = *(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_7685D0();
    sub_768540();
    sub_768E80();

    v3 = sub_758400();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_446384;

    return BaseObjectGraph.inject<A>(_:)(v0 + 72, v3, v3);
  }

  else
  {

    if (qword_93D138 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = sub_768FF0();
    sub_BE38(v6, qword_955550);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_7685D0();
    sub_768540();
    sub_768E80();

    v7 = [objc_opt_self() defaultCenter];
    sub_758140();
    v8 = sub_758120();
    [v7 addObserver:v5 selector:"refreshUpdatesCount" name:v8 object:0];

    if (*(v5 + qword_9555A8))
    {
      sub_448540();
    }

    else
    {
      sub_449918();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_446384()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_446564;
  }

  else
  {
    v5 = sub_4464C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4464C0()
{
  v1 = v0[11];

  v2 = qword_9555A8;
  v3 = *(v1 + qword_9555A8);
  *(v1 + qword_9555A8) = v0[9];

  if (*(v1 + v2))
  {
    sub_448540();
  }

  else
  {
    sub_449918();
  }

  sub_448C08();

  v4 = v0[1];

  return v4();
}

uint64_t sub_446564()
{

  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v7._object = 0x80000000007E1B00;
  v7._countAndFlagsBits = 0xD000000000000024;
  sub_768580(v7);
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  v3 = sub_B1B4(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  sub_768560();
  sub_10A2C((v0 + 2), &unk_93FBD0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_768580(v8);
  sub_7685B0();
  sub_768EA0();

  v4 = v0[1];

  return v4();
}

void sub_446700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_955598;
  v6 = *&v2[qword_955598];
  if (a2)
  {
    if (v6)
    {
      v8 = v6;
      sub_293C18(a1, a2);
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CountBadgeView());
      v10 = sub_293654(0, a1, a2);
      [v3 addSubview:v10];
      v8 = *&v3[v5];
      *&v3[v5] = v10;
    }

    [v3 setNeedsLayout];
  }

  else
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v6 = *&v2[v5];
    }

    *&v2[v5] = 0;
  }
}

void sub_446804()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AccountButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  [v0 bounds];
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }

  v8 = *&v0[qword_955598];
  if (v8)
  {
    v9 = v8;
    [v0 frame];
    [v9 sizeThatFits:{v10, v11}];
    [v0 bounds];
    CGRectGetMaxX(v15);
    [v0 bounds];
    CGRectGetMinY(v16);
    [v0 bounds];
    sub_769D20();
    [v9 setFrame:?];
  }
}

void sub_4469BC(void *a1)
{
  v1 = a1;
  sub_446804();
}

void sub_446A04(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for AccountButton();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "invalidateIntrinsicContentSize");
  v2 = &v1[qword_955590];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
}

double sub_446A70(void *a1)
{
  v1 = a1;
  sub_446AB4();
  v3 = v2;

  return v3;
}

void sub_446AB4()
{
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_955590];
  if (v0[qword_955590 + 16])
  {
    if (qword_93D468 != -1)
    {
      swift_once();
    }

    v6 = sub_7666D0();
    v7 = sub_BE38(v6, qword_99E548);
    v8 = [v0 traitCollection];
    (*(*(v6 - 8) + 16))(v4, v7, v6);
    (*(v2 + 104))(v4, enum case for FontSource.useCase(_:), v1);
    v19[3] = v1;
    v19[4] = &protocol witness table for FontSource;
    v9 = sub_B1B4(v19);
    (*(v2 + 16))(v9, v4, v1);
    sub_765C10();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_BEB8(v19);
    v12 = floor(v11);
    Main = JUScreenClassGetMain();

    if (Main == 1)
    {
      v14 = v12 + -5.0;
    }

    else
    {
      v14 = v12;
    }

    [v0 bounds];
    Width = CGRectGetWidth(v20);
    [v0 bounds];
    Height = CGRectGetHeight(v21);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height >= v14 || Height <= 0.0)
    {
      Height = v14;
    }

    *v5 = Height;
    v5[1] = Height;
    *(v5 + 16) = 0;
  }
}

void sub_446D60()
{
  ObjectType = swift_getObjectType();
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v52 = &v43 - v2;
  v47 = sub_758B40();
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75F340();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_760280();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_765490();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  v53 = v17;
  v54 = v0;
  if (v22)
  {
    v23 = v5;
    v24 = v4;
    sub_75F150();
    sub_768880();
    v25 = v57;
    v26 = sub_75F130();

    if (v26)
    {
      if (qword_93D138 != -1)
      {
        swift_once();
      }

      v27 = sub_768FF0();
      sub_BE38(v27, qword_955550);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_7685D0();
      sub_768540();
      sub_768E80();

      sub_4478C8(v26);

      return;
    }

    v4 = v24;
    v5 = v23;
    v17 = v53;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.account(_:), v18);
  v28 = sub_7570A0();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = sub_759E30();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v55 = 0u;
  v56 = 0u;
  sub_447608();
  v30 = v49;
  ObjectType = *(v45 + 104);
  ObjectType(v10, enum case for FlowPresentationContext.infer(_:), v49);
  (*(v5 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v44 + 104))(v4, enum case for FlowOrigin.inapp(_:), v47);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v31 = sub_758AD0();
  v32 = ASKDeviceTypeGetCurrent();
  v33 = sub_769240();
  v35 = v34;
  if (v33 == sub_769240() && v35 == v36)
  {

    v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
  }

  else
  {
    v38 = sub_76A950();

    v37 = &enum case for FlowPresentationContext.presentModal(_:);
    if (v38)
    {
      v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }
  }

  ObjectType(v51, *v37, v30);
  sub_758AB0();
  v39 = *(v54 + qword_955570);
  v40 = sub_BD88(&unk_93F630);
  v41 = v52;
  sub_768860();
  v42 = *(v40 - 8);
  if ((*(v42 + 48))(v41, 1, v40) == 1)
  {

    sub_10A2C(v41, &unk_93F980);
  }

  else
  {
    sub_32AC14(v31, 1, v39, v41);

    (*(v42 + 8))(v41, v40);
  }
}

uint64_t sub_447608()
{
  v0 = sub_768A10();
  __chkstk_darwin(v0 - 8);
  sub_BD88(&qword_9522E8);
  v1 = sub_768E20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77B6D0;
  sub_768DE0();
  sub_1A2D10(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  sub_10E8CC(_swiftEmptyArrayStorage);
  sub_75C480();
  swift_allocObject();
  sub_75C470();
  sub_BD88(&unk_940730);
  sub_768670();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_759D10();
  sub_768A00();
  sub_7687A0();
}

void sub_447880(void *a1)
{
  v1 = a1;
  sub_446D60();
}

void sub_4478C8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AAUISignInController) init];
  [v4 setServiceType:AIDAServiceTypeStore];
  [v4 setDelegate:v1];
  if (qword_93D138 != -1)
  {
    swift_once();
  }

  v5 = sub_768FF0();
  sub_BE38(v5, qword_955550);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_7685D0();
  sub_768540();
  sub_768E80();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = ObjectType;
  v11[4] = sub_44C4CC;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_509F0;
  v11[3] = &unk_892238;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v4;

  [v10 prepareInViewController:v9 completion:v8];
  _Block_release(v8);
}

id sub_447B74(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v9 = sub_768FF0();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_75B9A0();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7687B0();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    if (qword_93D138 != -1)
    {
      swift_once();
    }

    sub_BE38(v9, qword_955550);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    return [a3 presentViewController:a4 animated:1 completion:0];
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v40 = v14;
  v20 = sub_756F60();
  v21 = [v20 domain];
  v22 = sub_769240();
  v24 = v23;

  if (v22 == sub_769240() && v24 == v25)
  {

    goto LABEL_12;
  }

  v26 = sub_76A950();

  if (v26)
  {
LABEL_12:
    if ([v20 code] == -7005)
    {
      if (qword_93D138 != -1)
      {
        swift_once();
      }

      sub_BE38(v9, qword_955550);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      *(&v47 + 1) = sub_BE70(0, &unk_957140);
      *&v46 = v20;
      v27 = v20;
      sub_7685C0();
      sub_10A2C(&v46, &unk_93FBD0);
      sub_768EA0();

      v49._object = 0x80000000007CA810;
      v49._countAndFlagsBits = 0xD000000000000017;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_75B750(v49, v51);
      v50._countAndFlagsBits = 0xD00000000000002ALL;
      v50._object = 0x80000000007CA830;
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_75B750(v50, v52);
      sub_768790();
      (*(v41 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
      sub_758F90();
      swift_allocObject();
      v28 = sub_758F60();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = *(Strong + qword_955570);
        v31 = Strong;

        v32 = sub_BD88(&unk_93F630);
        v33 = v40;
        sub_768860();
        v34 = *(v32 - 8);
        if ((*(v34 + 48))(v33, 1, v32) == 1)
        {

          return sub_10A2C(v33, &unk_93F980);
        }

        else
        {
          sub_32AE84(v28, 1, v30, v33);

          return (*(v34 + 8))(v33, v32);
        }
      }

      else
      {
      }
    }
  }

LABEL_19:
  if (qword_93D138 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v9, qword_955550);
  v36 = v43;
  (*(v43 + 16))(v11, v35, v9);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  if (a2)
  {
    swift_getErrorValue();
    v37 = v44;
    v38 = v45;
    *(&v47 + 1) = v45;
    v39 = sub_B1B4(&v46);
    (*(*(v38 - 8) + 16))(v39, v37, v38);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  sub_7685C0();
  sub_10A2C(&v46, &unk_93FBD0);
  sub_768EA0();

  return (*(v36 + 8))(v11, v9);
}

void sub_4484E0(char *a1)
{
  v1 = *&a1[qword_9555A8];
  v2 = a1;
  if (v1)
  {
    sub_448540();
  }

  else
  {
    sub_449918();
  }
}

void sub_448540()
{
  v1 = sub_BD88(&qword_955640);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_9555A8);
  if (v4)
  {
    v5 = sub_769590();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_769570();
    v7 = v4;

    v8 = sub_769560();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v9[5] = v6;

    sub_54A098(0, 0, v3, &unk_79DF28, v9);
  }

  else
  {
    if (qword_93D138 != -1)
    {
      swift_once();
    }

    v10 = sub_768FF0();
    sub_BE38(v10, qword_955550);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }
}

uint64_t sub_4487F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = sub_758280();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[11] = v7;
  v5[12] = sub_769570();
  v5[13] = sub_769560();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_448914;

  return AppUpdatesDataSource.getUpdatesCounts()(v7);
}

uint64_t sub_448914()
{
  *(*v1 + 120) = v0;

  v3 = sub_769540();
  if (v0)
  {
    v4 = sub_448B24;
  }

  else
  {
    v4 = sub_448A70;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_448A70()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_449590();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_448B24()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_955598;
    v4 = *(Strong + qword_955598);
    if (v4)
    {
      [v4 removeFromSuperview];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_448C08()
{
  v1 = sub_BD88(&qword_955640);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_BD88(&qword_955648);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = *(v0 + qword_9555A8);
  if (v11)
  {
    v20 = v11;
    sub_7583E0();
    v12 = sub_769590();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v7, v10, v4);
    sub_769570();

    v14 = sub_769560();
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    (*(v5 + 32))(v16 + v15, v7, v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;

    sub_54A098(0, 0, v3, &unk_79DF08, v16);

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_93D138 != -1)
    {
      swift_once();
    }

    v18 = sub_768FF0();
    sub_BE38(v18, qword_955550);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }
}

uint64_t sub_449000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_758280();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_BD88(&qword_955650);
  v5[10] = swift_task_alloc();
  v7 = sub_BD88(&unk_955658);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_769570();
  v5[15] = sub_769560();
  v9 = sub_769540();
  v5[16] = v9;
  v5[17] = v8;

  return _swift_task_switch(sub_449198, v9, v8);
}

uint64_t sub_449198()
{
  sub_BD88(&qword_955648);
  sub_7695A0();
  swift_beginAccess();
  v1 = sub_769560();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_449290;
  v3 = v0[10];
  v4 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_449290()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_4493D4, v3, v2);
}

uint64_t sub_4493D4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_449590();
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v8 = sub_769560();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_449290;
    v10 = v0[10];
    v11 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor, v11);
  }
}

uint64_t sub_449590()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_955640);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_758270();
  v6 = sub_769590();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_769570();
  v7 = v0;
  v8 = sub_769560();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = ObjectType;
  sub_54A098(0, 0, v4, &unk_79DEF0, v9);
}

uint64_t sub_4496D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_769570();
  v5[4] = sub_769560();
  v7 = sub_769540();

  return _swift_task_switch(sub_449770, v7, v6);
}

uint64_t sub_449770()
{
  v1 = v0[3];
  v2 = v0[2];

  if (*(v2 + qword_9555A0) == v1)
  {
    if (qword_93D138 != -1)
    {
      swift_once();
    }

    v3 = sub_768FF0();
    sub_BE38(v3, qword_955550);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();
  }

  else
  {
    *(v2 + qword_9555A0) = v0[3];
    sub_449FE8();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_449918()
{
  sub_BD88(&qword_955630);
  v0 = sub_768F90();
  sub_758140();
  v1 = sub_758130();
  v8 = sub_44BFF8;
  v9 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_449B00;
  v7 = &unk_892120;
  v2 = _Block_copy(v6);

  [v1 getUpdatesWithCompletionBlock:v2];
  _Block_release(v2);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_BE70(0, &qword_940340);

  v4 = sub_769970();
  v7 = v3;
  v8 = &protocol witness table for OS_dispatch_queue;
  v6[0] = v4;
  sub_768F10();

  sub_BEB8(v6);
}

uint64_t sub_449B00(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_BE70(0, &qword_955638);
  v2 = sub_769460();

  v1(v2);
}

uint64_t sub_449B84(unint64_t *a1)
{
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (v10 >> 62)
  {
    result = sub_76A860();
    v13 = result;
  }

  else
  {
    v13 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = v3;
  v34 = v2;
  v31 = v5;
  v32 = v6;
  v29 = v9;
  v30 = v7;
  if (!v13)
  {
    goto LABEL_19;
  }

  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = (v10 & 0xC000000000000001) != 0 ? sub_76A770() : *(v10 + 8 * v15 + 32);
    v17 = v16;
    v18 = [v16 updateState];
    if (!v18 || v18 == (&dword_0 + 3) || v18 == &dword_4)
    {
      break;
    }

LABEL_8:
    if (v13 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v19 = [v17 autoUpdateEnabled];

  if (v19)
  {
    goto LABEL_8;
  }

  if (!__OFADD__(v14++, 1))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_19:
  v14 = 0;
LABEL_20:
  sub_BE70(0, &qword_940340);
  v21 = sub_769970();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v14;
  aBlock[4] = sub_44C068;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_892170;
  v23 = _Block_copy(aBlock);
  v24 = v12;

  v25 = v29;
  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  v26 = v31;
  v27 = v34;
  sub_76A5A0();
  sub_769980();
  _Block_release(v23);

  (*(v33 + 8))(v26, v27);
  return (*(v30 + 8))(v25, v32);
}

void sub_449F60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_955598;
    v3 = *(Strong + qword_955598);
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
  }
}

void sub_449FE8()
{
  v1 = v0;
  v2 = *(v0 + qword_955578);
  if (v2)
  {
    v3 = v2;
    v4 = sub_763800();
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_9555A0;
  v6 = *(v1 + qword_9555A0);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else if (qword_93D138 == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v8 = sub_768FF0();
  sub_BE38(v8, qword_955550);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DCF0;
  sub_768540();
  v9 = *(v1 + v5);
  v17 = &type metadata for Int;
  v16[0] = v9;
  sub_7685C0();
  sub_10A2C(v16, &unk_93FBD0);
  sub_768540();
  v17 = &type metadata for Int;
  v16[0] = v4;
  sub_7685C0();
  sub_10A2C(v16, &unk_93FBD0);
  sub_768540();
  v17 = &type metadata for Int;
  v16[0] = v7;
  sub_7685C0();
  sub_10A2C(v16, &unk_93FBD0);
  sub_768540();
  sub_768E80();

  if (v7 < 1)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v10 = objc_opt_self();
    sub_BE70(0, &qword_945820);
    isa = sub_76A1A0(v7).super.super.isa;
    v12 = [v10 localizedStringFromNumber:isa numberStyle:1];

    v13 = sub_769240();
    v15 = v14;
  }

  sub_446700(v13, v15);
}

void sub_44A324(void *a1)
{
  v1 = a1;
  sub_44A374(1);
}

void sub_44A374(char a1)
{
  v2 = [objc_opt_self() sharedStore];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_44C778;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_4372DC;
  v6[3] = &unk_8920F8;
  v5 = _Block_copy(v6);

  [v2 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v5 completion:44.0];
  _Block_release(v5);
}

void sub_44A49C(void *a1, uint64_t a2, char a3)
{
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (!a1)
    {
      if (a3)
      {
        sub_757240();
        sub_757290();
        v25 = sub_757230();
        v26 = *(v6 + 8);
        v26(v8, v5);
        v26(v11, v5);
        v27 = v13[qword_955568];
        v13[qword_955568] = 0;
        if (v27 == 1)
        {
          v28 = [v13 layer];
          [v28 setBorderColor:0];

          v29 = [v13 layer];
          [v29 setBorderWidth:0.0];

          [v13 setNeedsDisplay];
        }

        if (qword_93D128 != -1)
        {
          swift_once();
        }

        [v13 setImage:qword_955540 forState:0];
        [v13 alpha];
        if (v30 <= COERCE_DOUBLE(1))
        {
          if (v25)
          {
            v31 = objc_opt_self();
            v32 = swift_allocObject();
            *(v32 + 16) = v13;
            v47 = sub_44C754;
            v48 = v32;
            aBlock = _NSConcreteStackBlock;
            v44 = 1107296256;
            v45 = sub_23F0CC;
            v46 = &unk_892008;
            v33 = _Block_copy(&aBlock);
            v13 = v13;

            [v31 animateWithDuration:4 delay:v33 options:0 animations:0.33 completion:0.0];
            _Block_release(v33);
          }

          else
          {
            [v13 setAlpha:1.0];
          }
        }
      }

LABEL_23:

      return;
    }

    v14 = a1;
    [v13 intrinsicContentSize];
    UIGraphicsBeginImageContextWithOptions(v49, 0, 0.0);
    [v13 intrinsicContentSize];
    [v14 drawInRect:{0.0, 0.0, v15, v16}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    sub_757240();
    sub_757290();
    v18 = sub_757230();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v11, v5);
    [v13 setImage:v17 forState:0];
    [v13 alpha];
    if (v20 <= COERCE_DOUBLE(1))
    {
      if (v18)
      {
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = v13;
        v47 = sub_44C754;
        v48 = v22;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_23F0CC;
        v46 = &unk_892058;
        v23 = _Block_copy(&aBlock);
        v24 = v13;

        [v21 animateWithDuration:4 delay:v23 options:0 animations:0.33 completion:0.0];

        _Block_release(v23);
LABEL_16:
        v34 = v13[qword_955568];
        v13[qword_955568] = 1;
        if ((v34 & 1) == 0)
        {
          v35 = [v13 layer];
          if (qword_93D130 != -1)
          {
            swift_once();
          }

          v36 = [qword_955548 CGColor];
          [v35 setBorderColor:v36];

          v37 = [v13 layer];
          v38 = [v13 traitCollection];
          sub_767500();
          v40 = v39;

          [v37 setBorderWidth:v40];
          [v13 setNeedsDisplay];
        }

        v41 = qword_955580;
        if (*&v13[qword_955580])
        {

          sub_768410();

          *&v13[v41] = 0;

          return;
        }

        goto LABEL_23;
      }

      [v13 setAlpha:1.0];
    }

    goto LABEL_16;
  }
}

void sub_44AB34(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AccountButton();
  v4 = v7.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", v5);
  [v4 invalidateIntrinsicContentSize];
  v6 = [v4 backgroundImageForState:0];
  if (v6)
  {

    sub_44A374(1);
  }
}

id sub_44ABE0(char a1)
{
  v3 = [v1 layer];
  v4 = v3;
  if (a1)
  {
    if (qword_93D130 != -1)
    {
      swift_once();
    }

    v5 = [qword_955548 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v1 layer];
    v7 = [v1 traitCollection];
    sub_767500();
    v9 = v8;

    [v6 setBorderWidth:v9];
  }

  else
  {
    [v3 setBorderColor:0];

    v6 = [v1 layer];
    [v6 setBorderWidth:0.0];
  }

  return [v1 setNeedsDisplay];
}

void sub_44AD50(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AccountButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_44ABE0(v1[qword_955568]);
}

uint64_t sub_44ADB8(char *a1)
{
  v2 = sub_756CE0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v6 = *&a1[qword_9555A8];
  v7 = a1;
  if (v6)
  {
    sub_448540();
  }

  else
  {
    sub_449918();
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_44AEB4(void *a1)
{
  v1 = a1;
  sub_44AF2C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_44AF2C()
{
  v1 = *(v0 + qword_955598);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14CountBadgeView_countLabel];
    v3 = v1;
    v4 = [v2 text];
    if (v4)
    {
      v5 = v4;
      v6 = sub_769240();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_44AFC4(void *a1, uint64_t a2, void *a3)
{
  sub_BE70(0, &unk_955620);
  v5 = sub_7690F0();
  v6 = a3;
  v7 = a1;
  sub_44BC3C(v5);
}

void sub_44B060(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_44BE48();
}

void sub_44B0F0()
{
  if (!qword_9555E8)
  {
    sub_758880();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_9555E8);
    }
  }
}

char *sub_44B150(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = sub_768C60();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_7683E0();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v53 = &v49[-v12];
  v51 = sub_768380();
  __chkstk_darwin(v51);
  v52 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_BD88(&qword_955608);
  __chkstk_darwin(v14 - 8);
  v16 = &v49[-v15];
  *&v3[qword_99DB78 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_955568] = 0;
  *&v3[qword_955578] = 0;
  *&v3[qword_955580] = 0;
  sub_757290();
  v17 = &v3[qword_955590];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  *&v3[qword_955598] = 0;
  *&v3[qword_9555A0] = 0;
  *&v3[qword_9555A8] = 0;
  v59 = a2;
  sub_44BA98(a2, &v3[qword_99DB70]);
  *&v3[qword_955570] = a3;
  v19 = type metadata accessor for AccountButton();
  v67.receiver = v3;
  v67.super_class = v19;

  v20 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_763810();
  sub_768900();
  v21 = v20;
  sub_768ED0();
  v22 = qword_955578;
  v23 = *&v21[qword_955578];
  *&v21[qword_955578] = aBlock;

  v24 = *&v21[v22];
  if (v24)
  {
    v25 = v24;
    sub_7637F0();

    sub_BD88(&qword_942CC0);
    sub_16194(&unk_955610, &qword_942CC0);
    sub_768710();
    sub_768720();

    sub_BEB8(&aBlock);
    v18 = 0;
  }

  v26 = sub_BD88(&qword_942C90);
  (*(*(v26 - 8) + 56))(v16, v18, 1, v26);
  sub_10A2C(v16, &qword_955608);
  v27 = v21;
  sub_75D600();
  [v27 setAlpha:0.0];
  v28 = v27;
  [v28 addTarget:v28 action:"goToAccount" forControlEvents:64];
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  [v30 addObserver:v28 selector:"profilePictureStoreDidChange" name:ASKProfilePictureStoreDidChange object:0];

  v31 = [objc_opt_self() sharedStore];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v65 = sub_44BB78;
  v66 = v33;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_4372DC;
  v64 = &unk_891F18;
  v34 = _Block_copy(&aBlock);

  [v31 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v34 completion:44.0];
  _Block_release(v34);

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v50 & 1;
  v65 = sub_44BB9C;
  v66 = v36;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_23F0CC;
  v64 = &unk_891F68;
  _Block_copy(&aBlock);
  v60 = _swiftEmptyArrayStorage;
  sub_4C81C();

  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_768420();
  swift_allocObject();
  v37 = sub_768400();

  *&v28[qword_955580] = v37;

  sub_BE70(0, &qword_940340);
  v38 = sub_769970();
  sub_7683D0();
  v39 = v53;
  sub_768450();
  v40 = v55;
  v41 = *(v54 + 8);
  v41(v10, v55);
  sub_769940();

  v41(v39, v40);
  v42 = [v29 defaultCenter];
  sub_75B9C0();
  v43 = v28;
  v44 = sub_75B9B0();
  [v42 addObserver:v43 selector:"automaticUpdatesEnabledDidChange:" name:v44 object:0];

  v45 = [v43 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setContentMode:2];
  }

  [v43 setContentHorizontalAlignment:3];

  [v43 setContentVerticalAlignment:3];
  v47 = v56;
  sub_768BF0();
  sub_769E70();
  (*(v57 + 8))(v47, v58);
  sub_4458BC();

  sub_10A2C(v59, &qword_945020);
  return v43;
}

uint64_t sub_44BA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_945020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_44BB08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_44BB40()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_44BB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_44BBA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_44BC04()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_44BC3C(uint64_t a1)
{
  if (qword_93D138 != -1)
  {
    swift_once();
  }

  v2 = sub_768FF0();
  sub_BE38(v2, qword_955550);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  sub_7685D0();
  sub_768540();
  v5[3] = sub_BD88(&unk_93FFB0);
  v5[0] = a1;

  sub_7685C0();
  sub_10A2C(v5, &unk_93FBD0);
  sub_768E80();

  sub_75F150();
  sub_768880();
  v3 = v5[0];
  v4 = sub_75F130();

  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_44BE48()
{
  if (qword_93D138 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_955550);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_7685D0();
  sub_768540();
  sub_768E80();

  sub_75F150();
  sub_768880();
  v1 = sub_75F130();

  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_44C030()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_44C0A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254BD8;

  return sub_4496D8(a1, v4, v5, v6, v7);
}

uint64_t sub_44C16C()
{
  v1 = sub_BD88(&qword_955648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_44C250(uint64_t a1)
{
  v4 = *(sub_BD88(&qword_955648) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14FCC;

  return sub_449000(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_44C37C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_44C3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254BD8;

  return sub_4487F0(a1, v4, v5, v7, v6);
}

uint64_t sub_44C484()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_44C4E0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_44C52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254BD8;

  return sub_4459F4(a1, v4, v5, v7, v6);
}

uint64_t sub_44C618()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_44C658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254BD8;

  return sub_445EA8(a1, v4, v5, v6, v7);
}

uint64_t sub_44C77C(uint64_t result, float64x2_t a2, float64_t a3)
{
  v3 = (&unk_79E098 + 8 * result);
  a2.f64[1] = a3;
  v4 = vld1q_dup_f64(v3);
  v5 = vdivq_f64(a2, v4);
  __asm { FMOV            V2.2D, #15.0 }

  v11 = vsubq_f64(v5, vrndmq_f64(vdivq_f64(vmulq_f64(v5, _Q2), v4)));
  __asm { FMOV            V1.2D, #1.0 }

  v13 = vrndpq_f64(vaddq_f64(v11, _Q1));
  *&v14 = *&vmulq_laneq_f64(v13, v13, 1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_44C804(void *a1, unint64_t a2)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v3;
  v5 = a2;
  v4 = a1;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages;
  result = swift_beginAccess();
  v9 = *&v3[v6];
  v10 = *(v9 + 16);
  v11 = v7 - v10 < 0;
  v12 = v7 <= v10;
  v13 = v7 - v10;
  if (v12)
  {
LABEL_9:
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v6] = v9;
    if (result)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = sub_45D59C();
    v9 = result;
    *&v2[v6] = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (*(v9 + 16) > v5)
      {
        v14 = v9 + 8 * v5;
        v15 = *(v14 + 32);
        *(v14 + 32) = v4;
        *&v2[v6] = v9;
        v16 = v4;
        swift_endAccess();

        return [v2 setNeedsLayout];
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v11)
  {
    swift_beginAccess();
    do
    {
      sub_769440();
      if (*(*&v2[v6] + 16) >= *(*&v2[v6] + 24) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      --v13;
    }

    while (v13);
    v9 = *&v2[v6];
    swift_endAccess();
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_44C984(uint64_t result, double a2, double a3)
{
  v3 = 8 * result;
  v4.f64[0] = *(&unk_79DFF8 + v3);
  v4.f64[1] = *(&unk_79E0B8 + v3);
  v5 = vdupq_lane_s64(*&a3, 0);
  v6 = vaddq_f64(v4, v5);
  v7.f64[0] = *(&unk_79E018 + v3);
  v7.f64[1] = *(&unk_79E0D8 + v3);
  v8 = vaddq_f64(v7, v5);
  v9.f64[0] = *(&unk_79E038 + v3);
  v9.f64[1] = *(&unk_79E0F8 + v3);
  v10.f64[0] = *(&unk_79E058 + v3);
  v10.f64[1] = *(&unk_79E118 + v3);
  v11 = vdupq_lane_s64(*&a2, 0);
  v12 = vsubq_f64(v6, vmulq_f64(vsubq_f64(v9, v11), vdivq_f64(vsubq_f64(v6, v8), vsubq_f64(v9, v10))));
  v13 = vsubq_f64(v11, v10);
  v14 = vsubq_f64(v12, v8);
  v15 = vsqrtq_f64(vaddq_f64(vmulq_f64(v13, v13), vmulq_f64(v14, v14)));
  v16 = *(&unk_79E098 + v3);
  if (v15.f64[0] <= v15.f64[1])
  {
    v15.f64[0] = v15.f64[1];
  }

  v17 = ceil(v15.f64[0] / (v16 + 15.0));
  v18 = floor(dbl_79E078[result] / v16) + v17 + v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_44CACC()
{
  v0 = sub_BD88(&qword_940AD0);
  sub_161DC(v0, qword_955670);
  sub_BE38(v0, qword_955670);
  sub_BD88(&qword_93FBE0);
  return sub_7592C0();
}

void sub_44CB80()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  v2 = v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v24, "frame");
  v4.f64[0] = v3;
  v6 = sub_44C77C(v2, v4, v5);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (v16 >= v6)
    {
      swift_beginAccess();
      v17 = sub_663D5C(v16);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *&v1[v7];
        *&v1[v7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_45B3FC();
        }

        v22 = v19;
        v23 = *(*(v21 + 56) + 8 * v19);
        sub_45EDF4(v22, v21);
        *&v1[v7] = v21;
        swift_endAccess();
        [v23 removeFromSuperview];
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_44CD50()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages;
  result = swift_beginAccess();
  v3 = *(*(v0 + v1) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages);
  v5 = v4 - v3;
  if (v4 > v3)
  {
    if (v4 - v3 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      do
      {
        sub_769440();
        if (*(*(v0 + v1) + 16) >= *(*(v0 + v1) + 24) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        --v5;
      }

      while (v5);
      return swift_endAccess();
    }
  }

  return result;
}

char *sub_44CF14(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_7593D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
  *&v5[v16] = sub_10EC08(_swiftEmptyArrayStorage);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_showBorder] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled] = 1;
  v17 = &v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds];
  *v17 = 0u;
  v17[1] = 0u;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = a1;
  v18 = sub_10EC08(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *&v5[v16] = v18;

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages] = _swiftEmptyArrayStorage;
  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_contentView] = v19;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_imageBorderView] = [objc_allocWithZone(sub_758A50()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, "initWithFrame:", a2, a3, a4, a5);
  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_contentView];
  v22 = v20;
  [v22 addSubview:v21];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_imageBorderView;
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_imageBorderView];
  sub_759210();
  v25 = v24;
  sub_759090();
  sub_758A40();

  v26 = *&v22[v23];
  sub_759080();
  sub_758A30();

  v27 = *&v22[v23];
  (*(v13 + 104))(v15, enum case for CornerStyle.arc(_:), v12);
  v28 = v27;
  sub_75AB40();

  (*(v13 + 8))(v15, v12);
  [v22 addSubview:*&v22[v23]];
  [v22 setClipsToBounds:1];

  return v22;
}

id sub_44D2F0()
{
  ObjectType = swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v5 = v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v26, "frame");
  v8 = sub_44C984(v5, v6, v7);
  if (v0[v4] == 3)
  {
    v10 = sub_44DF6C(v8, v9);
  }

  else
  {
    v10 = sub_44E348(v8, v9);
  }

  v11 = v10;
  [v0 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_contentView];
  [v20 setBounds:?];
  [v0 center];
  [v20 setCenter:?];
  if (qword_93D140 != -1)
  {
    swift_once();
  }

  v21 = sub_BD88(&qword_940AD0);
  sub_BE38(v21, qword_955670);
  *&v24.a = v0;
  v22 = v0;
  sub_7592B0();

  CGAffineTransformMakeRotation(&v24, angle);
  [v20 setTransform:&v24];
  [*&v22[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_imageBorderView] setFrame:{v13, v15, v17, v19}];
  sub_44E4C8(v11);
  sub_44E828(v11);

  return [v2 setAnimationsEnabled:v3];
}

void sub_44D588()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled) == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_44D74C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    sub_759190();
    [v11 setHidden:1];
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v12 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages;
      swift_beginAccess();
      *(v1 + v12) = _swiftEmptyArrayStorage;

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_44D8A0()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled] != 1)
  {
LABEL_8:
    v6 = 0;
LABEL_9:

    sub_44DA24(v6);
    return;
  }

  v1 = [v0 superview];
  if (!v1)
  {
LABEL_6:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_8;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      break;
    }

    v4 = [v2 superview];

    v2 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v7 = v3;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, sub_BE70(0, &unk_94A790), v11 = v2, v10 = sub_76A1C0(), v11, v9, (v10 & 1) == 0))
  {
    v6 = v7;
    goto LABEL_9;
  }
}

void sub_44DA24(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_44DADC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_44D8A0();
}

uint64_t getEnumTagSinglePayload for NavigationAccessory.Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationAccessory.Location(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_44DE50()
{
  result = qword_955760;
  if (!qword_955760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955760);
  }

  return result;
}

void sub_44DEA4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
  *(v0 + v1) = sub_10EC08(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_showBorder) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled) = 1;
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds);
  *v2 = 0u;
  v2[1] = 0u;
  swift_unknownObjectWeakInit();
  sub_76A840();
  __break(1u);
}

double *sub_44DF6C(uint64_t a1, int64_t a2)
{
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_61;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (__OFSUB__(v9, 3))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v9 - 3 > 0)
  {
    v10 = v7 / 2;
    v40 = v8 / 2;
    v11 = 1;
    v38 = a1;
    v39 = a2;
    v12 = sub_7C2B4(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = v10;
    v2 = v12;
    a1 = v38;
    a2 = v39;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v9 - 2;
    while (1)
    {
      v4 = (v16 + v13);
      if (__OFADD__(v16, v13))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v5 = v15 + v40;
      if (__OFADD__(v15, v40))
      {
        goto LABEL_56;
      }

      v6 = *(v2 + 2);
      v18 = *(v2 + 3);
      v3 = v6 + 1;
      if (v6 >= v18 >> 1)
      {
        v22 = v2;
        v23 = v13;
        v24 = sub_7C2B4((v18 > 1), v6 + 1, 1, v22);
        v13 = v23;
        v2 = v24;
        a1 = v38;
        a2 = v39;
      }

      *(v2 + 2) = v3;
      v19 = &v2[2 * v6];
      *(v19 + 4) = v4;
      *(v19 + 5) = v5;
      if (v16 < 1)
      {
        if (v16 < 0)
        {
          if (v15 != v16 && (v16 ^ v15) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (__OFSUB__(0, v15))
        {
          goto LABEL_59;
        }

        if (v15 != v16 && -v15 != v16)
        {
          goto LABEL_23;
        }
      }

      v20 = -v11;
      if (__OFSUB__(0, v11))
      {
        goto LABEL_60;
      }

      v11 = v14;
      v14 = v20;
LABEL_23:
      v21 = __OFADD__(v16, v14);
      v16 += v14;
      if (v21)
      {
        goto LABEL_57;
      }

      v21 = __OFADD__(v15, v11);
      v15 += v11;
      if (v21)
      {
        goto LABEL_58;
      }

      if (--v17 <= 1)
      {
        goto LABEL_28;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = *&_swiftEmptyArrayStorage[2];
LABEL_28:
  if (v3 >= 4)
  {
    v3 = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      v25 = sub_10B54(a1 * a2, v2);
      v4 = v26;
      v5 = v27;
      v6 = v28;
      if (v28)
      {
        sub_76A970();
        swift_unknownObjectRetain_n();

        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = _swiftEmptyArrayStorage;
        }

        v31 = *(v30 + 2);

        if (__OFSUB__(v6 >> 1, v5))
        {
          goto LABEL_75;
        }

        if (v31 != (v6 >> 1) - v5)
        {
          goto LABEL_76;
        }

        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_40;
        }

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_39;
      }

      while (1)
      {
        sub_4A6574(v25, v4, v5, v6);
        v4 = v29;
LABEL_39:
        swift_unknownObjectRelease();
LABEL_40:
        v32 = *(v4 + 2);
        v5 = v32 - 2;
        if (v32 < 2)
        {
LABEL_66:
          __break(1u);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v4;
          if (!isUniquelyReferenced_nonNull_native || v5 > *(v4 + 3) >> 1)
          {
            v4 = sub_7C2B4(isUniquelyReferenced_nonNull_native, v32, 1, v4);
            v41 = v4;
          }

          sub_4A7F50(0, 2, 0);
          a2 = *(v4 + 2);
          if (a2 >= 2)
          {
            v41 = v4;
            if ((a2 - 1) <= *(v4 + 3) >> 1)
            {
              goto LABEL_46;
            }

            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_68:
        v4 = sub_7C2B4(&dword_0 + 1, a2, 1, v4);
        v41 = v4;
LABEL_46:
        v25 = &v41;
        sub_4A7F50(1uLL, 2, 0);
        v41 = v4;
        v34 = v3 + 2;
        if (__OFADD__(v3, 2))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v34 < v3)
        {
          goto LABEL_70;
        }

        v21 = __OFADD__(v34, 1);
        v35 = v3 + 3;
        if (v21)
        {
          goto LABEL_71;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        v36 = *(v2 + 2);
        if (v36 < v3 || v36 < v35)
        {
          goto LABEL_73;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          sub_10A824(v2, (v2 + 4), v3, (2 * v35) | 1);
          return v41;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_unknownObjectRelease();
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return v2;
}

char *sub_44E348(char *result, uint64_t a2)
{
  v2 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_31;
  }

  if (v2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result / 2;
  v4 = a2 / 2;
  result = sub_7C2B4(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3;
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v2 + 1;
  v11 = -1;
  while (1)
  {
    v12 = v9 + v5;
    if (__OFADD__(v9, v5))
    {
      break;
    }

    if (__OFADD__(v8, v4))
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 2);
    v13 = *(v6 + 3);
    if (v14 >= v13 >> 1)
    {
      v20 = v5;
      result = sub_7C2B4((v13 > 1), v14 + 1, 1, v6);
      v5 = v20;
      v6 = result;
    }

    *(v6 + 2) = v14 + 1;
    v15 = &v6[16 * v14];
    *(v15 + 4) = v12;
    *(v15 + 5) = v8 + v4;
    if (v9 < 0)
    {
      v17 = -v9;
      if (__OFSUB__(0, v9))
      {
        goto LABEL_30;
      }

      if (v8 != v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v8 == v9;
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v8 != v9)
      {
        v17 = 1 - v9;
LABEL_14:
        v16 = v8 == v17;
LABEL_15:
        if (!v16)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = -v11;
    if (__OFSUB__(0, v11))
    {
      goto LABEL_29;
    }

    v11 = v7;
    v7 = v18;
LABEL_19:
    v19 = __OFADD__(v9, v7);
    v9 += v7;
    if (v19)
    {
      goto LABEL_27;
    }

    v19 = __OFADD__(v8, v11);
    v8 += v11;
    if (v19)
    {
      goto LABEL_28;
    }

    if (--v10 <= 1)
    {
      return v6;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_44E4C8(int64x2_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
  [(int64x2_t *)&v46 frame];
  result = sub_44C984(v6, v7, v8);
  if (!a1[1].i64[0])
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = a1[2];
  v12 = a1[2].i64[0];
  if (v12 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v13 = v12 % result;
  _VF = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (_VF)
  {
    goto LABEL_28;
  }

  if (!v10)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v11.i64[1] == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_32;
  }

  v16 = v11.i64[1] % v10 + 1;
  if (__OFADD__(v11.i64[1] % v10, 1))
  {
    goto LABEL_30;
  }

  v17.f64[0] = v15;
  if (v2[v5] > 1u)
  {
    if (v2[v5] == 2)
    {
      v17.f64[1] = v16;
      __asm { FMOV            V2.2D, #15.0 }

      recta.origin = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x406A000000000000uLL)), vmulq_f64(v17, _Q2));
      y = recta.origin.y;
      v28 = 0x406A000000000000;
LABEL_21:
      v25 = *&v28;
      v26 = [v2 traitCollection];
      goto LABEL_22;
    }
  }

  else if (v2[v5])
  {
    v17.f64[1] = v16;
    __asm { FMOV            V2.2D, #15.0 }

    v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4067E00000000000uLL)), vmulq_f64(v17, _Q2));
    goto LABEL_18;
  }

  v17.f64[1] = v16;
  __asm { FMOV            V2.2D, #15.0 }

  v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4056000000000000uLL)), vmulq_f64(v17, _Q2));
  y = v22.y;
  if (v2[v5] > 1u)
  {
    recta.origin = v22;
    goto LABEL_20;
  }

  if (v2[v5])
  {
LABEL_18:
    recta.origin = v22;
    y = v22.y;
LABEL_20:
    v28 = 0x4067E00000000000;
    goto LABEL_21;
  }

  v25 = 88.0;
  v26 = [v2 traitCollection];
LABEL_22:
  v29 = v26;
  v30 = sub_7699F0();

  if (v30)
  {
    v47.origin.x = recta.origin.x;
    v47.origin.y = y;
    v47.size.width = v25;
    v47.size.height = v25;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = recta.origin.x;
    v48.origin.y = y;
    v48.size.width = v25;
    v48.size.height = v25;
    MaxY = CGRectGetMaxY(v48);
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{MinX, MaxY}];
    v35 = v34;
    v49.origin.x = recta.origin.x;
    v49.origin.y = y;
    v49.size.width = v25;
    v49.size.height = v25;
    MaxX = CGRectGetMaxX(v49);
  }

  else
  {
    v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{recta.origin.x, y}];
    v35 = v37;
    v50.origin.x = recta.origin.x;
    v50.origin.y = y;
    v50.size.width = v25;
    v50.size.height = v25;
    MaxX = CGRectGetMinX(v50);
  }

  v38 = MaxX;
  v51.origin.x = recta.origin.x;
  v51.origin.y = y;
  v51.size.width = v25;
  v51.size.height = v25;
  [v2 convertPoint:v33 fromCoordinateSpace:{v38, CGRectGetMaxY(v51)}];
  v40 = v39;
  v41 = dbl_79E138[v2[v5]];
  *&recta.size.width = v2;
  *&recta.size.height = ObjectType;
  [(CGSize *)&recta.size frame];
  v42 = CGRectGetHeight(v52) - dbl_79E158[v2[v5]] - v40;
  [v33 center];
  return [v33 setCenter:{v41 - v35 + v43, v42 + v44}];
}

void sub_44E828(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
  v92.receiver = v2;
  v92.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v92, "frame");
  v9 = sub_44C984(v6, v7, v8);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_80;
  }

  v12 = v9;
  v13 = v10;
  v91.receiver = v2;
  v91.super_class = ObjectType;
  v14 = v2[v5];
  objc_msgSendSuper2(&v91, "frame");
  v16.f64[0] = v15;
  v87 = sub_44C77C(v14, v16, v17);
  sub_44D588();
  if (v11 < 0)
  {
LABEL_81:
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    if (!v11)
    {
LABEL_68:
      v72 = &v2[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds];
      *v72 = v22;
      v72[1] = v23;
      v72[2] = v24;
      v72[3] = v25;
      return;
    }

    if (v12)
    {
      _ZF = v13 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v85 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
      v86 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_contentView;
      v88 = a1 + 32;
      v89 = *(a1 + 16);
      v83 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages;
      swift_beginAccess();
      v27 = 0;
      v28 = 0;
      v29 = v12 / 2 - 1;
      v30 = v13 / 2;
      v31 = v13 / 2 - 1;
      v32 = v12 * v31;
      v81 = (v12 * v31) >> 64 != (v12 * v31) >> 63;
      v33 = v29 + v12 * v31;
      v34 = __OFADD__(v29, v32);
      v80 = v34;
      v79 = (v12 * v30) >> 64 != (v12 * v30) >> 63;
      _VF = __OFADD__(v29, v12 * v30);
      v36 = v29 + v12 * v30;
      v37 = _VF;
      v75 = v33 + 1;
      v76 = v36;
      v38 = __OFADD__(v33, 1);
      v77 = v38;
      v78 = v37;
      v73 = v36 + 1;
      v39 = __OFADD__(v36, 1);
      v74 = v39;
      __asm { FMOV            V0.2D, #15.0 }

      v82 = v5;
      v84 = v11;
      while (1)
      {
        if (v28 == v89)
        {
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
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v45 = *(v88 + 16 * v28);
        v46 = *(v88 + 16 * v28);
        if (v46 == 0x8000000000000000 && v12 == -1)
        {
          goto LABEL_72;
        }

        if (__OFADD__(v46 % v12, 1))
        {
          goto LABEL_70;
        }

        if (*(&v45 + 1) == 0x8000000000000000 && v13 == -1)
        {
          goto LABEL_73;
        }

        if (__OFADD__(*(&v45 + 1) % v13, 1))
        {
          goto LABEL_71;
        }

        if (v2[v5] > 1u)
        {
          if (v2[v5] == 2)
          {
            goto LABEL_40;
          }
        }

        else if (v2[v5])
        {
          goto LABEL_40;
        }

        if (v2[v5] > 1u)
        {
          if (v81)
          {
            goto LABEL_74;
          }

          if (v80)
          {
            goto LABEL_75;
          }

          if (v79)
          {
            goto LABEL_76;
          }

          if (v78)
          {
            goto LABEL_77;
          }

          sub_BD88(&qword_95B250);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_77DC20;
          if (v77)
          {
            goto LABEL_78;
          }

          *(inited + 32) = v75;
          *(inited + 40) = v76;
          if (v74)
          {
            goto LABEL_79;
          }

          *(inited + 48) = v73;
          v48 = sub_1A3030(inited);
          swift_setDeallocating();
          if (!v48[2])
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

LABEL_40:
        v48 = _swiftEmptySetSingleton;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_45;
        }

LABEL_41:
        v49 = sub_76AA20();
        v50 = -1 << *(v48 + 32);
        v51 = v49 & ~v50;
        if ((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51))
        {
          v52 = ~v50;
          while (*(v48[6] + 8 * v51) != v28)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_25;
        }

LABEL_45:

        v53 = *&v2[v86];
        [v2 convertRect:v53 fromCoordinateSpace:?];
        v95.origin.x = v22;
        v95.origin.y = v23;
        v95.size.width = v24;
        v95.size.height = v25;
        if (!CGRectIntersectsRect(v94, v95) || v27 >= v87)
        {
          goto LABEL_25;
        }

        swift_beginAccess();
        v55 = *&v2[v85];
        if (*(v55 + 16) && (v56 = sub_663D5C(v28), (v57 & 1) != 0))
        {
          v58 = v27;
          v59 = *(*(v55 + 56) + 8 * v56);
          swift_endAccess();
          v60 = v59;
        }

        else
        {
          v58 = v27;
          swift_endAccess();
          sub_759210();
          v61 = sub_759020();
          swift_beginAccess();
          v60 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *&v2[v85];
          *&v2[v85] = 0x8000000000000000;
          sub_459FAC(v60, v28, isUniquelyReferenced_nonNull_native);
          *&v2[v85] = v90;
          swift_endAccess();
          [v53 addSubview:v60];
        }

        [v60 setHidden:{0, v73}];
        v63 = *&v2[v83];
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = *(v63 + 8 * (v28 % v64) + 32);
          if (v65)
          {
            v66 = v65;
            v67 = sub_759180();
            if (v67)
            {
              v68 = v67;
              sub_BE70(0, &qword_947630);
              v69 = v66;
              v70 = sub_76A1C0();

              if (v70)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v43 = v66;
            }

            v93.value.super.isa = v65;
            v93.is_nil = 0;
            sub_7591D0(v93, v44);
LABEL_23:

            v5 = v82;
          }
        }

        sub_759170();

        v27 = v58 + 1;
        v11 = v84;
LABEL_25:
        if (++v28 == v11)
        {
          goto LABEL_68;
        }
      }
    }
  }

  __break(1u);
}

void sub_44EED8()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds];
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds];
    rect_8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds + 8];
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds + 16];
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_lastVisibleBounds + 24];
    sub_44D588();
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v9 = CGRectGetWidth(v12);
    v13.origin.x = v2;
    v13.origin.y = rect_8;
    v13.size.width = v3;
    v13.size.height = v4;
    if (CGRectGetWidth(v13) < v9 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, v10 = CGRectGetHeight(v14), v15.origin.x = v2, v15.origin.y = rect_8, v15.size.width = v3, v15.size.height = v4, CGRectGetHeight(v15) < v10))
    {
      [v0 setNeedsLayout];
      *v1 = x;
      v1[1] = y;
      v1[2] = width;
      v1[3] = height;
    }
  }
}

uint64_t sub_44EFD4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v1 = type metadata accessor for StoryCardCollectionViewCell();
      v2 = &unk_947B30;
      v3 = type metadata accessor for StoryCardCollectionViewCell;
      break;
    case 2:
      v1 = type metadata accessor for ListTodayCardCollectionViewCell();
      v2 = &unk_949788;
      v3 = type metadata accessor for ListTodayCardCollectionViewCell;
      break;
    case 3:
    case 6:
      v1 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
      v2 = &unk_94C6B8;
      v3 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      break;
    case 4:
      v1 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
      v2 = &unk_94C6D0;
      v3 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      break;
    case 5:
      v1 = type metadata accessor for RiverTodayCardCollectionViewCell();
      v2 = &unk_955768;
      v3 = type metadata accessor for RiverTodayCardCollectionViewCell;
      break;
    case 7:
      v1 = type metadata accessor for GridTodayCardCollectionViewCell();
      v2 = &unk_94C6C0;
      v3 = type metadata accessor for GridTodayCardCollectionViewCell;
      break;
    case 10:
      v1 = type metadata accessor for AppEventTodayCardCollectionViewCell();
      v2 = &unk_94C6B0;
      v3 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      break;
    case 11:
      v1 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
      v2 = &unk_94C6A8;
      v3 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      break;
    case 12:
      v1 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
      v2 = &unk_94C6A0;
      v3 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      break;
    case 13:
      v1 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
      v2 = &unk_94C698;
      v3 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
      break;
    default:
      sub_76A840();
      __break(1u);
      JUMPOUT(0x44F208);
  }

  sub_44F240(v2, v3);
  return v1;
}