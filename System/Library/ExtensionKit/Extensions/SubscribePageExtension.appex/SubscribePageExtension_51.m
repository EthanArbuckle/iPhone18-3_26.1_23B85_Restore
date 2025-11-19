void ShelfHeaderLayout.Metrics.eyebrowVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 40);

  return sub_1005C4B2C(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleLineHeight.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 48));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 60);

  return sub_1005C4B2C(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.accessoryMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 68));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.titleLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout(0) + 32);

  return sub_10000C824(v3, a1);
}

uint64_t sub_1005C4830(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_1007507B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  v10 = type metadata accessor for ShelfHeaderLayout(0);
  sub_100016B4C(v3 + *(v10 + 20), &v13, &unk_100928A00);
  if (v14)
  {
    sub_100012160(&v13, v15);
    sub_10000C888(v15, v16);
    sub_100750434();
    sub_100750754();
    sub_10000C620(&v13);
    sub_10000C620(v15);
  }

  else
  {
    sub_10000C8CC(&v13, &unk_100928A00);
  }

  v16 = sub_1007511A4();
  v17 = &protocol witness table for Margins;
  sub_10000D134(v15);
  a3(a1);
  sub_100750754();
  sub_10000C620(v15);
  sub_1007535A4();
  v16 = v6;
  v17 = &protocol witness table for VerticalStack;
  v11 = sub_10000D134(v15);
  (*(v7 + 16))(v11, v9, v6);
  sub_100751194();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1005C4AD0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005C4B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009281D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005C4B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for ShelfHeaderLayout(0);
  v6 = v5 - 8;
  v19 = *(v5 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1007507B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  sub_100016B4C(v3 + *(v6 + 32), v21, &unk_100924A60);
  v12 = v22;
  sub_10000C8CC(v21, &unk_100924A60);
  if (v12)
  {
    v22 = sub_100750A34();
    v23 = &protocol witness table for HorizontalStack;
    v13 = sub_10000D134(v21);
    sub_1005C4EA8(a1, v13);
    sub_1005C7B0C(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfHeaderLayout);
    v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v15 = swift_allocObject();
    sub_1005C7B78(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_100750754();

    sub_10000C620(v21);
  }

  sub_1005C577C(a1, v21);
  sub_100750754();
  sub_10000C620(v21);
  sub_1007535D4();
  v22 = v8;
  v23 = &protocol witness table for VerticalStack;
  v16 = sub_10000D134(v21);
  (*(v9 + 16))(v16, v11, v8);
  sub_100751194();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1005C4EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = v5;
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100751144();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v60 = (&v53 - v9);
  __chkstk_darwin(v10);
  v59 = (&v53 - v11);
  __chkstk_darwin(v12);
  v58 = (&v53 - v13);
  v14 = sub_100751154();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100754724();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = sub_1007504F4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  sub_100750A04();
  v72 = v4;
  sub_100016B4C(v2 + *(v4 + 28), &v77, &unk_100928A00);
  if (v78)
  {
    sub_100012160(&v77, v80);
    v26 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016B4C(v2 + *(v26 + 40), v21, &unk_1009281D0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10000C8CC(v21, &unk_1009281D0);
      sub_10000C620(v80);
    }

    else
    {
      v55 = v22;
      v56 = v23;
      v27 = *(v23 + 32);
      v54 = v25;
      v27(v25, v21, v22);
      sub_1007502D4();
      sub_100750AD4();
      v28 = *(v57 + 8);
      v28(v18, v16);
      sub_1007502D4();
      sub_100750AD4();
      v28(v18, v16);
      sub_100750474();
      v30 = v29;
      v32 = v31;
      v33 = (*(v2 + 32) - v31) * 0.5;
      sub_10000C888(v80, v80[3]);
      sub_100750434();
      v57 = v2;
      v34 = v58;
      *(v58 + 3) = &type metadata for CGFloat;
      *(v34 + 4) = &protocol witness table for CGFloat;
      *v34 = v30;
      v35 = enum case for Resize.Rule.replaced(_:);
      v36 = v63;
      v37 = *(v62 + 104);
      v37(v34, enum case for Resize.Rule.replaced(_:), v63);
      v38 = v59;
      *(v59 + 3) = &type metadata for CGFloat;
      *(v38 + 4) = &protocol witness table for CGFloat;
      *v38 = v32;
      v37(v38, v35, v36);
      v39 = enum case for Resize.Rule.unchanged(_:);
      v37(v60, enum case for Resize.Rule.unchanged(_:), v36);
      v37(v61, v39, v36);
      v40 = v64;
      sub_100751164();
      v41 = v66;
      v76[3] = v66;
      v76[4] = &protocol witness table for Resize;
      v42 = sub_10000D134(v76);
      v43 = v65;
      (*(v65 + 16))(v42, v40, v41);
      v75[8] = &type metadata for CGFloat;
      v75[9] = &protocol witness table for CGFloat;
      *&v75[5] = v33;
      v44 = sub_1007507D4();
      v75[3] = v44;
      v75[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v75);
      sub_1007507C4();
      v74[3] = v44;
      v74[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v74);
      sub_1007507C4();
      v73[3] = v44;
      v73[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v73);
      sub_1007507C4();
      v78 = sub_1007511A4();
      v79 = &protocol witness table for Margins;
      sub_10000D134(&v77);
      sub_1007511B4();
      v45 = v57;
      v46 = v69;
      sub_1005C7B0C(v57, v69, type metadata accessor for ShelfHeaderLayout);
      v47 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_1005C7B78(v46, v49 + v47);
      v50 = v70;
      *(v49 + v48) = v70;
      v51 = v50;
      sub_1007509F4();

      (*(v43 + 8))(v40, v41);
      (*(v56 + 8))(v54, v55);
      sub_10000C620(&v77);
      sub_10000C620(v80);
      v2 = v45;
    }
  }

  else
  {
    sub_10000C8CC(&v77, &unk_100928A00);
  }

  sub_100016B4C(v2 + *(v72 + 24), &v77, &unk_100924A60);
  if (!v78)
  {
    return sub_10000C8CC(&v77, &unk_100924A60);
  }

  sub_100012160(&v77, v80);
  sub_1007509F4();
  return sub_10000C620(v80);
}

uint64_t sub_1005C577C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v3 = sub_1007510A4();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1007507B4();
  v95 = *(v110 - 8);
  __chkstk_darwin(v110);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v83 - v7;
  v8 = type metadata accessor for ShelfHeaderLayout(0);
  v105 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = v9;
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100751144();
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v104 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v103 = (&v83 - v13);
  __chkstk_darwin(v14);
  v102 = (&v83 - v15);
  __chkstk_darwin(v16);
  v18 = (&v83 - v17);
  v101 = sub_100751154();
  v19 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100754724();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - v25;
  v27 = sub_1007504F4();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v93 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100750A34();
  v108 = *(v30 - 8);
  v109 = v30;
  __chkstk_darwin(v30);
  v111 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750A04();
  v112 = v8;
  v32 = *(v8 + 36);
  v33 = v98;
  sub_100016B4C(v98 + v32, &v119, &unk_100928A00);
  if (v120)
  {
    v87 = v19;
    v34 = a1;
    sub_100012160(&v119, v122);
    v35 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016B4C(v33 + *(v35 + 60), v26, &unk_1009281D0);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10000C8CC(v26, &unk_1009281D0);
      sub_10000C620(v122);
      v36 = v33;
    }

    else
    {
      v85 = v27;
      v86 = v28;
      (*(v28 + 32))(v93, v26, v27);
      sub_1007502D4();
      v84 = v34;
      sub_100750AD4();
      v37 = v33;
      v38 = *(v88 + 8);
      v38(v23, v21);
      sub_1007502D4();
      sub_100750AD4();
      v38(v23, v21);
      sub_100750474();
      v40 = v39;
      v42 = v41;
      v43 = (*(v37 + *(v35 + 44)) - v41) * 0.5;
      sub_10000C888(v122, v123);
      sub_100750434();
      v45 = v99;
      v44 = v100;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v40;
      v46 = enum case for Resize.Rule.replaced(_:);
      v47 = *(v45 + 104);
      v47(v18, enum case for Resize.Rule.replaced(_:), v44);
      v48 = v102;
      *(v102 + 3) = &type metadata for CGFloat;
      *(v48 + 4) = &protocol witness table for CGFloat;
      *v48 = v42;
      v47(v48, v46, v44);
      v49 = enum case for Resize.Rule.unchanged(_:);
      v47(v103, enum case for Resize.Rule.unchanged(_:), v44);
      v47(v104, v49, v44);
      v50 = v89;
      sub_100751164();
      v51 = v101;
      v117 = v101;
      v118 = &protocol witness table for Resize;
      v52 = sub_10000D134(v116);
      v53 = v87;
      (*(v87 + 16))(v52, v50, v51);
      v115[8] = &type metadata for CGFloat;
      v115[9] = &protocol witness table for CGFloat;
      *&v115[5] = v43;
      v54 = sub_1007507D4();
      v115[3] = v54;
      v115[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v115);
      sub_1007507C4();
      v114[3] = v54;
      v114[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v114);
      sub_1007507C4();
      v113[3] = v54;
      v113[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(v113);
      sub_1007507C4();
      v120 = sub_1007511A4();
      v121 = &protocol witness table for Margins;
      sub_10000D134(&v119);
      sub_1007511B4();
      v55 = v98;
      v56 = v107;
      sub_1005C7B0C(v98, v107, type metadata accessor for ShelfHeaderLayout);
      v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
      v58 = (v106 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_1005C7B78(v56, v59 + v57);
      v60 = v84;
      *(v59 + v58) = v84;
      v61 = v60;
      sub_1007509F4();

      (*(v53 + 8))(v50, v51);
      (*(v86 + 8))(v93, v85);
      sub_10000C620(&v119);
      sub_10000C620(v122);
      v36 = v55;
    }
  }

  else
  {
    sub_10000C8CC(&v119, &unk_100928A00);
    v36 = v33;
  }

  sub_10000C824(v36 + v112[8], &v119);
  *v18 = sub_1000B2740;
  v18[1] = 0;
  v62 = v100;
  v63 = *(v99 + 104);
  v63(v18, enum case for Resize.Rule.recalculated(_:), v100);
  v64 = enum case for Resize.Rule.unchanged(_:);
  v63(v102, enum case for Resize.Rule.unchanged(_:), v62);
  v63(v103, v64, v62);
  v63(v104, v64, v62);
  v123 = v101;
  v124 = &protocol witness table for Resize;
  sub_10000D134(v122);
  sub_100751164();
  v65 = v111;
  sub_1007509F4();
  sub_10000C620(v122);
  v66 = v94;
  sub_100750794();
  v67 = v109;
  v123 = v109;
  v124 = &protocol witness table for HorizontalStack;
  v68 = sub_10000D134(v122);
  (*(v108 + 16))(v68, v65, v67);
  v69 = v107;
  sub_1005C7B0C(v36, v107, type metadata accessor for ShelfHeaderLayout);
  v70 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v71 = swift_allocObject();
  sub_1005C7B78(v69, v71 + v70);
  v72 = v96;
  sub_1007507A4();

  v73 = v95;
  v74 = *(v95 + 8);
  v74(v66, v110);
  sub_10000C620(v122);
  sub_100016B4C(v36 + v112[10], &v119, &unk_100924A60);
  if (v120)
  {
    sub_100012160(&v119, v122);
    sub_100750754();
    sub_10000C620(v122);
  }

  else
  {
    sub_10000C8CC(&v119, &unk_100924A60);
  }

  sub_100016B4C(v36 + v112[11], &v119, &unk_100928A00);
  if (v120)
  {
    sub_100012160(&v119, v122);
    type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_10000C888(v122, v123);
    sub_100750434();
    v120 = sub_1007511A4();
    v121 = &protocol witness table for Margins;
    sub_10000D134(&v119);
    sub_100751194();
    (*(v90 + 104))(v92, enum case for Pin.Edge.trailingEdge(_:), v91);
    v75 = v110;
    v117 = v110;
    v118 = &protocol witness table for VerticalStack;
    v76 = sub_10000D134(v116);
    (*(v73 + 16))(v76, v72, v75);
    v77 = sub_1007510B4();
    v78 = v97;
    v97[3] = v77;
    v78[4] = &protocol witness table for Pin;
    sub_10000D134(v78);
    sub_1007510C4();
    v74(v72, v75);
    (*(v108 + 8))(v111, v109);
    return sub_10000C620(v122);
  }

  else
  {
    sub_10000C8CC(&v119, &unk_100928A00);
    v80 = v97;
    v81 = v110;
    v97[3] = v110;
    v80[4] = &protocol witness table for VerticalStack;
    v82 = sub_10000D134(v80);
    (*(v73 + 32))(v82, v72, v81);
    return (*(v108 + 8))(v111, v109);
  }
}

uint64_t sub_1005C6564(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = a3;
  v5 = a3;
  v6 = sub_100751044();
  sub_10074FC64();

  return sub_1007509D4();
}

uint64_t sub_1005C663C()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_100750714();
  return sub_100750724();
}

uint64_t sub_1005C66B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a1;
  v96 = a2;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = v5;
  v83 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100751144();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v75 - v9;
  __chkstk_darwin(v10);
  v90 = &v75 - v11;
  __chkstk_darwin(v12);
  v85 = &v75 - v13;
  v87 = sub_100754724();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = sub_1007504F4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v95 = sub_1007507B4();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  v98 = v4;
  sub_100016B4C(v3 + *(v4 + 28), &v99, &unk_100928A00);
  v93 = v7;
  if (v100)
  {
    sub_100012160(&v99, &v102);
    v29 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016B4C(v3 + *(v29 + 40), v20, &unk_1009281D0);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_10000C8CC(v20, &unk_1009281D0);
      sub_10000C620(&v102);
      v30 = v22;
    }

    else
    {
      v78 = v22;
      v31 = *(v22 + 32);
      v76 = v26;
      v79 = v21;
      v31(v26, v20, v21);
      v32 = v84;
      sub_1007502D4();
      sub_100750AD4();
      v80 = v28;
      v33 = *(v86 + 8);
      v34 = v87;
      v33(v32, v87);
      sub_1007502D4();
      sub_100750AD4();
      v33(v32, v34);
      sub_100750474();
      v36 = v35;
      v38 = v37;
      sub_10000C888(&v102, v103);
      sub_100750434();
      v77 = v17;
      v39 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v39 + 4) = &protocol witness table for CGFloat;
      *v39 = v36;
      v40 = enum case for Resize.Rule.replaced(_:);
      v41 = *(v91 + 104);
      v42 = v88;
      v43 = v92;
      v41(v39, enum case for Resize.Rule.replaced(_:), v92);
      v44 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v44 + 4) = &protocol witness table for CGFloat;
      v28 = v80;
      v45 = v93;
      *v44 = v38;
      v41(v44, v40, v43);
      v46 = enum case for Resize.Rule.unchanged(_:);
      v41(v42, enum case for Resize.Rule.unchanged(_:), v43);
      v41(v45, v46, v43);
      v100 = sub_100751154();
      v101 = &protocol witness table for Resize;
      sub_10000D134(&v99);
      v17 = v77;
      v47 = v79;
      sub_100751164();
      sub_100750754();
      v30 = v78;
      v21 = v47;
      (*(v78 + 8))(v76, v47);
      sub_10000C620(&v99);
      sub_10000C620(&v102);
    }
  }

  else
  {
    sub_10000C8CC(&v99, &unk_100928A00);
    v30 = v22;
  }

  sub_100016B4C(v3 + v98[6], &v99, &unk_100924A60);
  if (v100)
  {
    sub_100012160(&v99, &v102);
    sub_100750754();
    sub_10000C620(&v102);
  }

  else
  {
    sub_10000C8CC(&v99, &unk_100924A60);
  }

  sub_100016B4C(v3 + v98[9], &v99, &unk_100928A00);
  if (v100)
  {
    sub_100012160(&v99, &v102);
    v48 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016B4C(v3 + *(v48 + 60), v17, &unk_1009281D0);
    if ((*(v30 + 48))(v17, 1, v21) == 1)
    {
      sub_10000C8CC(v17, &unk_1009281D0);
    }

    else
    {
      v49 = *(v30 + 32);
      v79 = v21;
      v49(v89, v17, v21);
      v50 = v84;
      sub_1007502D4();
      sub_100750AD4();
      v51 = *(v86 + 8);
      v78 = v30;
      v52 = v87;
      v51(v50, v87);
      sub_1007502D4();
      sub_100750AD4();
      v51(v50, v52);
      sub_100750474();
      v54 = v53;
      v56 = v55;
      sub_10000C888(&v102, v103);
      sub_100750434();
      v57 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v57 + 4) = &protocol witness table for CGFloat;
      *v57 = v54;
      v58 = enum case for Resize.Rule.replaced(_:);
      v59 = v88;
      v80 = v28;
      v60 = *(v91 + 104);
      v61 = v92;
      v60(v57, enum case for Resize.Rule.replaced(_:), v92);
      v62 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v62 + 4) = &protocol witness table for CGFloat;
      *v62 = v56;
      v60(v62, v58, v61);
      v63 = enum case for Resize.Rule.unchanged(_:);
      v60(v59, enum case for Resize.Rule.unchanged(_:), v61);
      v60(v93, v63, v61);
      v28 = v80;
      v100 = sub_100751154();
      v101 = &protocol witness table for Resize;
      sub_10000D134(&v99);
      sub_100751164();
      v64 = v83;
      sub_1005C7B0C(v3, v83, type metadata accessor for ShelfHeaderLayout);
      v65 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v66 = (v82 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      sub_1005C7B78(v64, v67 + v65);
      v68 = v97;
      *(v67 + v66) = v97;
      v69 = v68;
      sub_100750754();

      (*(v78 + 8))(v89, v79);
      sub_10000C620(&v99);
    }

    sub_10000C620(&v102);
  }

  else
  {
    sub_10000C8CC(&v99, &unk_100928A00);
  }

  v70 = v98;
  sub_100750754();
  sub_100016B4C(v3 + v70[10], &v99, &unk_100924A60);
  if (v100)
  {
    sub_100012160(&v99, &v102);
    sub_100750754();
    sub_10000C620(&v102);
  }

  else
  {
    sub_10000C8CC(&v99, &unk_100924A60);
  }

  sub_100016B4C(v3 + v98[11], &v99, &unk_100928A00);
  if (v100)
  {
    sub_100012160(&v99, &v102);
    sub_10000C888(&v102, v103);
    sub_100750434();
    sub_100750754();
    sub_10000C620(&v99);
    sub_10000C620(&v102);
  }

  else
  {
    sub_10000C8CC(&v99, &unk_100928A00);
  }

  sub_1007535D4();
  v71 = v95;
  v103 = v95;
  v104 = &protocol witness table for VerticalStack;
  v72 = sub_10000D134(&v102);
  v73 = v94;
  (*(v94 + 16))(v72, v28, v71);
  sub_100751194();
  return (*(v73 + 8))(v28, v71);
}

uint64_t sub_1005C7408(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A5CF0;
  *(v6 + 32) = a3;
  v7 = a3;
  v8 = sub_100751044();
  sub_10074FC64();
  v10 = v9;

  v12[3] = &type metadata for CGFloat;
  v12[4] = &protocol witness table for CGFloat;
  v12[0] = v10;
  return a4(v12);
}

uint64_t sub_1005C750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1005C75E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1005C769C()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100110090(319, &qword_10092C920, &qword_100926520);
    if (v1 <= 0x3F)
    {
      sub_100110090(319, &unk_100940178, &qword_1009233A0);
      if (v2 <= 0x3F)
      {
        sub_1005C7794();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1005C7794()
{
  result = qword_100930E10;
  if (!qword_100930E10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100930E10);
  }

  return result;
}

uint64_t sub_1005C780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100750B04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10000C518(&unk_1009281D0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1005C7920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100750B04();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10000C518(&unk_1009281D0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1005C7A2C()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100750B04();
    if (v1 <= 0x3F)
    {
      sub_100170814();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1005C7B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C7B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005C7C10()
{
  v19 = type metadata accessor for ShelfHeaderLayout(0);
  v22 = *(*(v19 - 1) + 80);
  v20 = *(*(v19 - 1) + 64);
  v21 = (v22 + 16) & ~v22;
  v23 = v0;
  v1 = v0 + v21;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = sub_1007504F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v19[5];
  if (*(v11 + 24))
  {
    sub_10000C620(v11);
  }

  v12 = v1 + v19[6];
  if (*(v12 + 24))
  {
    sub_10000C620(v12);
  }

  v13 = v1 + v19[7];
  if (*(v13 + 24))
  {
    sub_10000C620(v13);
  }

  sub_10000C620(v1 + v19[8]);
  v14 = v1 + v19[9];
  if (*(v14 + 24))
  {
    sub_10000C620(v14);
  }

  v15 = v1 + v19[10];
  if (*(v15 + 24))
  {
    sub_10000C620(v15);
  }

  v16 = v1 + v19[11];
  if (*(v16 + 24))
  {
    sub_10000C620(v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v23, v17 + 8, v22 | 7);
}

uint64_t sub_1005C7ED0(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005C6564(a1, v1 + v4, v5);
}

uint64_t sub_1005C7F6C()
{
  v18 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = *(*(v18 - 1) + 80);
  v19 = *(*(v18 - 1) + 64);
  v20 = (v21 + 16) & ~v21;
  v22 = v0;
  v1 = v0 + v20;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = sub_1007504F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v18[5];
  if (*(v11 + 24))
  {
    sub_10000C620(v11);
  }

  v12 = v1 + v18[6];
  if (*(v12 + 24))
  {
    sub_10000C620(v12);
  }

  v13 = v1 + v18[7];
  if (*(v13 + 24))
  {
    sub_10000C620(v13);
  }

  sub_10000C620(v1 + v18[8]);
  v14 = v1 + v18[9];
  if (*(v14 + 24))
  {
    sub_10000C620(v14);
  }

  v15 = v1 + v18[10];
  if (*(v15 + 24))
  {
    sub_10000C620(v15);
  }

  v16 = v1 + v18[11];
  if (*(v16 + 24))
  {
    sub_10000C620(v16);
  }

  return _swift_deallocObject(v22, v20 + v19, v21 | 7);
}

uint64_t sub_1005C8228(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1005C82C4(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1005C7408(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1005C8374()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100940280);
  sub_10000D0FC(v4, qword_100940280);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

void sub_1005C84C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v45 = a6;
  Strong = a5;
  v9 = sub_100752E44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v13 - 8);
  v44 = &v40 - v14;
  v15 = sub_100745B04();
  v43 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100752614();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:a4 animated:1 completion:0];
    v19 = Strong;

    return;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  *&v50 = a2;
  swift_errorRetain();
  sub_10000C518(&unk_100940300);
  v20 = sub_100016C60(0, &unk_100928750);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v41 = v20;
  v42 = v47;
  v21 = [v47 domain];
  v22 = sub_100753094();
  v24 = v23;

  if (v22 == sub_100753094() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_100754754();

    if ((v26 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v27 = v42;
  if ([v42 code] == -7005)
  {
    if (qword_1009219D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v9, qword_100940280);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    *(&v51 + 1) = v41;
    *&v50 = v42;
    v28 = v42;
    sub_100752424();
    sub_10000C8CC(&v50, &unk_100923520);
    sub_100752D04();

    v29 = v28;
    sub_100752DA4();

    v53._object = 0x8000000100785F10;
    v53._countAndFlagsBits = 0xD000000000000017;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_1007458B4(v53, v55);
    v54._countAndFlagsBits = 0xD00000000000002ALL;
    v54._object = 0x8000000100785F30;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_1007458B4(v54, v56);
    sub_1007525F4();
    (*(v43 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
    sub_100743144();
    swift_allocObject();
    v30 = sub_100743114();
    v31 = sub_10000C518(&unk_100923210);
    v33 = v44;
    v32 = v45;
    sub_1007526C4();
    v34 = *(v31 - 8);
    if ((*(v34 + 48))(v33, 1, v31) == 1)
    {

      sub_10000C8CC(v33, &unk_100923960);
    }

    else
    {
      sub_1003C1660(v30, 1, v32, v33);

      (*(v34 + 8))(v33, v31);
    }

    return;
  }

LABEL_18:
  if (qword_1009219D8 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v9, qword_100940280);
  (*(v10 + 16))(v12, v35, v9);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  if (a2)
  {
    swift_getErrorValue();
    v36 = v48;
    v37 = v49;
    *(&v51 + 1) = v49;
    v38 = sub_10000D134(&v50);
    (*(*(v37 - 8) + 16))(v38, v36, v37);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_100752424();
  sub_10000C8CC(&v50, &unk_100923520);
  sub_100752D04();

  (*(v10 + 8))(v12, v9);
  sub_1005C9858();
  swift_allocError();
  *v39 = 1;
  sub_100752DA4();
}

void sub_1005C8D78(void *a1, uint64_t a2)
{
  v4 = sub_100753094();
  if (*(a2 + 16))
  {
    v6 = sub_1003861D0(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);
      v10 = [v9 success];
      v11 = [v9 error];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = v10;
      v25 = sub_1005C9E20;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_1000CF7B0;
      v24 = &unk_10087CBF0;
      v14 = _Block_copy(&v21);
      v15 = v11;

      [a1 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);

      return;
    }
  }

  else
  {
  }

  sub_1005C9858();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v25 = sub_1005C9E20;
  v26 = v19;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000CF7B0;
  v24 = &unk_10087CBA0;
  v20 = _Block_copy(&v21);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_1005C90B8(void *a1)
{
  sub_1005C9858();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = 0;
  v8[4] = sub_1005C98E4;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000CF7B0;
  v8[3] = &unk_10087CB50;
  v6 = _Block_copy(v8);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

char *sub_1005C925C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009219D8 != -1)
    {
      swift_once();
    }

    v10 = sub_100752E44();
    sub_10000D0FC(v10, qword_100940280);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    swift_getErrorValue();
    v11 = v23[1];
    v12 = v24;
    v26 = v24;
    v13 = sub_10000D134(v25);
    (*(*(v12 - 1) + 16))(v13, v11, v12);
    sub_100752424();
    sub_10000C8CC(v25, &unk_100923520);
    sub_100752D04();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_20;
    }

    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome))
    {

      sub_100752DA4();

LABEL_17:

      goto LABEL_20;
    }
  }

  else
  {
    v23[0] = v7;
    if (qword_1009219D8 != -1)
    {
      swift_once();
    }

    v16 = sub_100752E44();
    sub_10000D0FC(v16, qword_100940280);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v26 = &type metadata for Bool;
    LOBYTE(v25[0]) = a3 & 1;
    sub_100752424();
    sub_10000C8CC(v25, &unk_100923520);
    sub_100752CE4();

    if (a3)
    {
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (*(v17 + OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome))
      {

        v19 = v23[0];
        (*(v6 + 104))(v9, enum case for ActionOutcome.performed(_:), v23[0]);
        sub_100752DB4();

        (*(v6 + 8))(v9, v19);
        goto LABEL_20;
      }
    }

    else
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_20;
      }

      v18 = v20;
      if (*(v20 + OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome))
      {

        sub_1005C9858();
        swift_allocError();
        *v21 = 2;
        sub_100752DA4();

        goto LABEL_17;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome] = 0;
  }

  return result;
}

unint64_t sub_1005C9858()
{
  result = qword_1009402C8;
  if (!qword_1009402C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009402C8);
  }

  return result;
}

uint64_t sub_1005C98AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005C98F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005C9914()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1005C9964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1005C99AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005C99FC()
{
  result = qword_1009402D8;
  if (!qword_1009402D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009402D8);
  }

  return result;
}

unint64_t sub_1005C9A54()
{
  result = qword_1009402E0;
  if (!qword_1009402E0)
  {
    sub_100744114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009402E0);
  }

  return result;
}

uint64_t sub_1005C9AAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome;
  if (*(v4 + OBJC_IVAR____TtCV22SubscribePageExtension26SignInActionImplementationP33_D8185033AC5595CAD906ECAE44EAC10314SignInDelegate_outcome))
  {
    sub_1005C9858();
    swift_allocError();
    *v6 = 3;

    sub_100752D44();
  }

  sub_10000C518(&qword_100930CA0);
  v7 = sub_100752DE4();
  *(v4 + v5) = v7;

  v8 = [objc_allocWithZone(AAUISignInController) init];
  sub_10000C518(&unk_1009402F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  v10 = AIDAServiceTypeStore;
  *(v9 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v11 = v10;
  isa = sub_100753294().super.isa;

  [v8 setServiceTypes:isa];

  [v8 setDelegate:v4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1005C9D28(v2, v19);
  v14 = swift_allocObject();
  sub_1005C9DB8(v19, (v14 + 2));
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = a1;
  v18[4] = sub_1005C9DF0;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1005171C8;
  v18[3] = &unk_10087CD50;
  v15 = _Block_copy(v18);

  v16 = v8;

  [v16 prepareInViewController:Strong completion:v15];
  _Block_release(v15);

  return v7;
}

uint64_t sub_1005C9D60()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005C9E24(void *a1, uint64_t a2)
{
  v4 = sub_100752B34();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1007524D4();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1007527A4();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100744574();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100741454();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749F54();
  sub_100741444();
  sub_100741424();
  (*(v16 + 8))(v18, v15);
  sub_100749F44();
  sub_1007527B4();
  v19 = [a1 viewControllers];
  if (v19)
  {
    sub_100016C60(0, &qword_10092B0C0);
    v20 = sub_1007532A4();

    v19 = sub_1001C896C(a2, v20);
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

  sub_100016C60(0, &unk_1009403B0);
  v25 = sub_1007532A4();

  result = sub_1007532D4();
  if (result & 1) == 0 || (v22)
  {

    return 1;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = sub_100754574();
    v27 = v40;
LABEL_13:

    [v28 tag];

    sub_100744544();
    if ((*(v27 + 48))(v11, 1, v12) == 1)
    {
      sub_10000C8CC(v11, &qword_10092FD68);
    }

    else
    {
      (*(v27 + 32))(v14, v11, v12);
      sub_1007465E4();
      sub_100744524();
      [a1 selectedIndex];
      sub_1007465B4();

      sub_100752764();
      v29 = v34;
      sub_100752D34();
      v30 = v33;
      sub_100743EC4();
      v31 = v36;
      sub_100752B14();
      sub_100752794();

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

void sub_1005CA4D0(void *a1, void *a2)
{
  v4 = sub_10000C518(&qword_100939100);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v99 = &v89 - v5;
  v6 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v6 - 8);
  v98 = &v89 - v7;
  v8 = sub_100752614();
  __chkstk_darwin(v8 - 8);
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v10 - 8);
  v94 = &v89 - v11;
  v91 = sub_1007440E4();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v13 - 8);
  v92 = &v89 - v14;
  v97 = sub_10000C518(&unk_100923210);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v103 = &v89 - v15;
  v110 = sub_1007429B4();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_1009403A8);
  __chkstk_darwin(v17);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_10000C518(&qword_10093D4E0);
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
  v36 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v36 - 8);
  v38 = &v89 - v37;
  v39 = sub_100744574();
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
    sub_1000321FC();
  }

  v45 = [a1 tabBar];
  v46 = [v45 items];

  if (v46)
  {
    sub_100016C60(0, &unk_1009403B0);
    v47 = sub_1007532A4();

    if ((sub_1007532D4() & 1) == 0 || (v48 = [a1 selectedIndex], v48 == sub_100740E44()))
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

    v50 = sub_100754574();
LABEL_13:
    v51 = v50;

    [v51 tag];

    sub_100744544();
    v53 = v113;
    v52 = v114;
    if ((*(v113 + 48))(v38, 1, v114) == 1)
    {
      sub_10000C8CC(v38, &qword_10092FD68);
      return;
    }

    v54 = v111;
    (*(v53 + 32))(v111, v38, v52);
    v89 = objc_opt_self();
    v55 = v52;
    v56 = [v89 standardUserDefaults];
    v57 = v112;
    sub_1006FEB30(v112);

    v58 = v54;
    v59 = v109;
    (*(v53 + 16))(v41, v58, v55);
    sub_100742984();
    v60 = *(v17 + 48);
    sub_1005CB5C4(v57, v21);
    sub_1005CB5C4(v59, &v21[v60]);
    v61 = v108;
    v62 = *(v108 + 48);
    v63 = v110;
    if (v62(v21, 1, v110) == 1)
    {
      if (v62(&v21[v60], 1, v63) == 1)
      {
        sub_10000C8CC(v21, &qword_10093D4E0);
        v64 = v107;
        v65 = v111;
LABEL_22:
        (*(v61 + 104))(v28, enum case for StoreTab.Identifier.search(_:), v63);
        (*(v61 + 56))(v28, 0, 1, v63);
        v68 = *(v17 + 48);
        v69 = v104;
        sub_1005CB5C4(v59, v104);
        sub_1005CB5C4(v28, v69 + v68);
        if (v62(v69, 1, v63) == 1)
        {
          sub_10000C8CC(v28, &qword_10093D4E0);
          if (v62(v69 + v68, 1, v63) == 1)
          {
            sub_10000C8CC(v69, &qword_10093D4E0);
LABEL_29:
            v111 = *(v64 + OBJC_IVAR____TtC22SubscribePageExtension17TabChangeDelegate_objectGraph);
            v74 = v97;
            sub_1007526E4();
            v75 = sub_100741264();
            (*(*(v75 - 8) + 56))(v92, 1, 1, v75);
            (*(v90 + 104))(v93, enum case for SearchOrigin.tabBar(_:), v91);
            v76 = sub_1007440D4();
            (*(*(v76 - 8) + 56))(v94, 1, 1, v76);
            sub_1007525F4();
            v77 = sub_100743FE4();
            (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
            v78 = sub_1007440C4();
            swift_allocObject();
            v59 = v109;
            v79 = sub_100744084();
            v115[3] = v78;
            v115[4] = sub_1005CB634(&qword_100935480, &type metadata accessor for SearchAction);
            v115[0] = v79;
            v81 = v99;
            v80 = v100;
            v82 = v101;
            (*(v100 + 104))(v99, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v101);

            v83 = v103;
            sub_1007527E4();

            (*(v80 + 8))(v81, v82);
            (*(v95 + 8))(v83, v74);
            sub_10000C620(v115);
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        v70 = v102;
        sub_1005CB5C4(v69, v102);
        if (v62(v69 + v68, 1, v63) == 1)
        {
          sub_10000C8CC(v28, &qword_10093D4E0);
          (*(v108 + 8))(v70, v63);
LABEL_27:
          sub_10000C8CC(v69, &qword_1009403A8);
          goto LABEL_30;
        }

        v71 = v108;
        v72 = v105;
        (*(v108 + 32))(v105, v69 + v68, v63);
        sub_1005CB634(&qword_1009403C0, &type metadata accessor for StoreTab.Identifier);
        LODWORD(v111) = sub_100753014();
        v73 = *(v71 + 8);
        v73(v72, v63);
        sub_10000C8CC(v28, &qword_10093D4E0);
        v73(v70, v63);
        sub_10000C8CC(v69, &qword_10093D4E0);
        if (v111)
        {
          goto LABEL_29;
        }

LABEL_30:
        sub_100745584();
        sub_100745564();
        sub_100744524();
        sub_1007454D4();

        v84 = [v89 standardUserDefaults];
        v85 = v106;
        sub_1005CB5C4(v59, v106);
        sub_1006FE868(v85);

        sub_100742B14();
        sub_100752754();
        v86 = v115[0];
        if (v115[0])
        {
          sub_100742AF4();
        }

        sub_10074B024();
        sub_100752754();
        v87 = v115[0];
        v88 = v113;
        if (v115[0])
        {
          sub_10074B014();
        }

        sub_10000C8CC(v59, &qword_10093D4E0);
        sub_10000C8CC(v112, &qword_10093D4E0);
        (*(v88 + 8))(v65, v114);
        return;
      }
    }

    else
    {
      sub_1005CB5C4(v21, v31);
      if (v62(&v21[v60], 1, v63) != 1)
      {
        (*(v61 + 32))(v105, &v21[v60], v63);
        sub_1005CB634(&qword_1009403C0, &type metadata accessor for StoreTab.Identifier);
        v66 = sub_100753014();
        v67 = *(v61 + 8);
        v67(v105, v110);
        v67(v31, v110);
        v59 = v109;
        v63 = v110;
        sub_10000C8CC(v21, &qword_10093D4E0);
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

    sub_10000C8CC(v21, &qword_1009403A8);
    v65 = v111;
    goto LABEL_30;
  }
}

uint64_t sub_1005CB5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093D4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005CB634(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005CB680()
{
  result = qword_1009403C8;
  if (!qword_1009403C8)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009403C8);
  }

  return result;
}

double sub_1005CB6D8()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_100747B84();
  v4 = sub_100747B94();
  sub_10006D514(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_1005CB7DC(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel];
  result = [v5 text];
  if (result)
  {
    v7 = result;
    v8 = sub_100753094();
    v10 = v9;

    if (!a2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    if (v8 == a1 && v10 == a2)
    {

LABEL_16:
    }

    v12 = sub_100754754();

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v13 = sub_100753064();
LABEL_12:

  [v5 setText:v13];

  return [v2 setNeedsLayout];
}

void sub_1005CB93C(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel];
  v5 = [v4 attributedText];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_10:
    if (qword_100921DB0 != -1)
    {
      swift_once();
    }

    v8 = qword_100982F58;
    v9 = unk_100982F60;
    v10 = qword_100982F68;
    v11 = [v2 traitCollection];
    if (sub_100753804())
    {

      if (a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = sub_1007537D4();

      if (v34)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (a1)
      {
LABEL_14:
        v37 = v4;
        v40 = v2;
        sub_100016C60(0, &qword_100923500);
        v12 = a1;
        v36 = v10;
        v38 = v10;
        v13 = sub_100753DF4();
        v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
        v15 = [v12 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v13;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_1005CEDA8;
        *(v17 + 24) = v16;
        v45 = sub_1000CF744;
        v46 = v17;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_1001529B4;
        v44 = &unk_10087CDD0;
        v18 = _Block_copy(&aBlock);
        v19 = v14;
        v20 = v13;

        [v12 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v22 = [v40 traitCollection];
          v23 = objc_allocWithZone(NSMutableAttributedString);
          v24 = v38;
          v25 = [v23 initWithAttributedString:v19];
          v26 = [v19 length];
          v27 = swift_allocObject();
          *(v27 + 16) = v38;
          *(v27 + 24) = v22;
          *(v27 + 32) = v25;
          *(v27 + 40) = 1;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_100047814;
          *(v28 + 24) = v27;
          v45 = sub_1000B18A8;
          v46 = v28;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_100047044;
          v44 = &unk_10087CE48;
          v29 = _Block_copy(&aBlock);
          v30 = v24;
          v31 = v22;
          v32 = v25;

          [v19 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

          _Block_release(v29);
          v33 = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            v2 = v40;
            v10 = v36;
            v4 = v37;
LABEL_22:
            [v4 setAttributedText:v32];

            [v2 setNeedsLayout];
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    v35 = v10;
    v32 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100016C60(0, &qword_10092E500);
  v39 = a1;
  v7 = sub_100753FC4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }
}

id sub_1005CBE84()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_shadowView];
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setHidden:v4 == 2];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  LOBYTE(v4) = sub_100753954();

  if ((v4 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_100753094();
    v7 = sub_100753064();

    v15[3] = sub_100016C60(0, &qword_10093EF30);
    v15[0] = v7;
    v8 = v7;
    sub_1002CB0F8(v15);
    v9 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel] layer];
    [v9 setCompositingFilter:v8];
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_borderView];

  return [v13 setHidden:v12];
}

void sub_1005CC098(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1005D016C(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = sub_100753FC4();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1005CC224()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  sub_1005CB93C(0);
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView];
  v13.value.super.isa = 0;
  v13.is_nil = 0;
  sub_100743384(v13, v5);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView] setHidden:1];
  [v4 setHidden:0];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView] setHidden:0];
  v6 = &v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction];
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1000164A8(v7);
  sub_1005D0028();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:v4];
    [v1 setNeedsLayout];
  }

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView];
  sub_100606B7C();

  v12[0] = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0x3FF0000000000000;
  v12[4] = 0;
  v12[5] = 0;
  [v1 setTransform:v12];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t sub_1005CC3F0()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_1009827F8);
  sub_10000D0FC(v0, qword_1009827F8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005CC554(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v46 = a1;
  sub_100746F84();
  if (qword_100920F68 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980B88);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_100750B04();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000D134(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_100750B14();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_100746F64();
  if (qword_100920F70 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v6, qword_100980BA0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v54);
  v44(v17, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747034();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_100750B14();
  v22 = v49;
  v49(v5, v2);
  sub_100747004();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v54);
  v21(v26, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100746FF4();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v54);
  v21(v28, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100747054();
  if (qword_100920F80 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000D0FC(v45, qword_100980BD0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v54);
  v21(v32, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747044();
  if (qword_100920F78 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v29, qword_100980BB8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000D134(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_100750B14();
  v38 = v49;
  v49(v5, v2);
  sub_100746FC4();
  sub_100746FA4();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v54);
  v37(v39, v5, v2);
  sub_100750B14();
  v38(v5, v2);
  return sub_100746FB4();
}

uint64_t sub_1005CCDA8()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_100982810);
  sub_10000D0FC(v0, qword_100982810);
  if (qword_1009219E0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009827F8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005CCF40(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_100750304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1007504F4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_100039C50(v14, a5);
  v34 = sub_10000D0FC(v14, a5);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  *&v45 = 0x4030000000000000;
  v35 = v13;
  sub_100750504();
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v16 = sub_10000D0FC(v15, qword_100981D88);
  v17 = *(v15 - 8);
  v33 = *(v17 + 16);
  v32 = v17 + 16;
  v33(v11, v16, v15);
  v18 = v9[13];
  v31 = enum case for FontSource.useCase(_:);
  v30 = v18;
  v18(v11);
  v19 = sub_100750B04();
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_10000D134(&v42);
  v40 = v8;
  v41 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v39);
  v21 = v9[2];
  v21(v20, v11, v8);
  sub_100750B14();
  v22 = v9[1];
  v22(v11, v8);
  if (qword_100921578 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v15, qword_100981DA0);
  v33(v11, v23, v15);
  v30(v11, v31, v8);
  v40 = v19;
  v41 = &protocol witness table for StaticDimension;
  sub_10000D134(&v39);
  v38[3] = v8;
  v38[4] = &protocol witness table for FontSource;
  v24 = sub_10000D134(v38);
  v21(v24, v11, v8);
  sub_100750B14();
  v22(v11, v8);
  v25 = v34;
  v26 = v34 + v14[8];
  *(v26 + 24) = &type metadata for Double;
  *(v26 + 32) = &protocol witness table for Double;
  *v26 = a2;
  v27 = v25 + v14[9];
  *(v27 + 24) = &type metadata for Double;
  *(v27 + 32) = &protocol witness table for Double;
  *v27 = a3;
  sub_100012160(&v45, v25);
  (*(v36 + 32))(v25 + v14[5], v35, v37);
  sub_100012160(&v42, v25 + v14[6]);
  return sub_100012160(&v39, v25 + v14[7]);
}

UIColor sub_1005CD3C8()
{
  sub_100016C60(0, &qword_100923500);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100753EC4(v3, v2).super.isa;
  qword_100982858 = result.super.isa;
  return result;
}

id sub_1005CD45C()
{
  v1 = v0;
  v2 = sub_100751344();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100751374();
  v38 = *(v6 - 8);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = sub_100753954();

  v13 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_gradientBlurView;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_gradientBlurView];
  if (v12)
  {
    v37 = v3;
    if (v14)
    {
      [v14 setHidden:1];
    }

    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_contentView];
    [v15 addSubview:{*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel], v37}];
    [v15 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView]];
    v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel];
    [v16 setNumberOfLines:0];
    v17 = [v16 layer];
    [v17 setCompositingFilter:0];

    [v15 addSubview:v16];
    v39 = 0u;
    v40 = 0u;
    sub_1002CB0F8(&v39);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView;
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView];
    if (v19 || (((*(v37 + 104))(v5, enum case for Separator.Position.top(_:), v2), *(&v40 + 1) = sub_1007507D4(), v41 = &protocol witness table for ZeroDimension, sub_10000D134(&v39), sub_1007507C4(), sub_100751354(), v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v21 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator, swift_beginAccess(), v22 = *(v38 + 40), v23 = v20, v22(&v20[v21], v9, v6), swift_endAccess(), v23, (v24 = *&v1[v18]) == 0) ? (v25 = 0) : (objc_msgSend(v24, "removeFromSuperview"), v25 = *&v1[v18]), *&v1[v18] = v23, v33 = v23, v25, objc_msgSend(v15, "addSubview:", v33), v33, objc_msgSend(v1, "setNeedsLayout"), v33, (v19 = *&v1[v18]) != 0))
    {
      [v19 setHidden:0];
    }
  }

  else
  {
    if (v14 || ((v29 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v30 = sub_10016AB14(0), (v31 = *&v1[v13]) == 0) ? (v32 = 0) : ([v31 removeFromSuperview], v32 = *&v1[v13]), (*&v1[v13] = v30, v35 = v30, v32, objc_msgSend(*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView], "addSubview:", v35), v35, objc_msgSend(v1, "setNeedsLayout"), v35, (v36 = *&v1[v13]) != 0) && (objc_msgSend(v36, "setUserInteractionEnabled:", 0), (v14 = *&v1[v13]) != 0)))
    {
      [v14 setHidden:0];
    }

    v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel]];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView]];
    v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel];
    [v27 setNumberOfLines:1];
    [v26 addSubview:v27];
    v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    sub_1005CBE84();
  }

  return [v1 setNeedsLayout];
}

id sub_1005CD9D0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void (*sub_1005CDBE8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1005CDC3C;
}

void sub_1005CDC3C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1005CDD54()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppPromotionCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1005CE228(v10);
  AppPromotionCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_100169DC8(v26);
      v42 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_10019A6C0(v10);
  }

  else
  {
    sub_10019A6C0(v10);
  }
}

uint64_t sub_1005CE228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  v9 = sub_100753804();

  if (v9)
  {
    if (qword_1009219F8 != -1)
    {
      swift_once();
    }

    v10 = qword_100982840;
  }

  else
  {
    if (qword_1009219F0 != -1)
    {
      swift_once();
    }

    v10 = qword_100982828;
  }

  v11 = sub_10000D0FC(v4, v10);
  sub_10019A5F8(v11, v7);
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_shadowView];
  v96 = sub_100743034();
  v97 = &protocol witness table for UIView;
  v68 = v12;
  *&v95 = v12;
  v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_contentView];
  v93 = sub_100746ED4();
  v94 = &protocol witness table for UIView;
  v65 = v13;
  v91 = &protocol witness table for UIView;
  *&v92 = v13;
  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_borderView];
  v90 = v93;
  v63 = v14;
  *&v89 = v14;
  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
  v87 = sub_100016C60(0, &qword_100922300);
  v88 = &protocol witness table for UIView;
  v55 = v87;
  v60 = v15;
  *&v86 = v15;
  v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView];
  v84 = sub_1007433C4();
  v85 = &protocol witness table for UIView;
  v59 = v16;
  *&v83 = v16;
  v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView];
  v81 = type metadata accessor for AppPromotionIAPFallbackView();
  v82 = &protocol witness table for UIView;
  v58 = v17;
  *&v80 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v67 = type metadata accessor for VideoView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v66 = 0;
    v67 = 0;
  }

  v64 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_gradientBlurView];
  v70 = v7;
  if (v64)
  {
    v62 = type metadata accessor for MediaOverlayGradientBlurView();
    v61 = &protocol witness table for UIView;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v19 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel];
  v78 = sub_100745C84();
  v79 = &protocol witness table for UILabel;
  v76 = &protocol witness table for UILabel;
  *&v77 = v19;
  v20 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel];
  v75 = v78;
  v53 = v20;
  v54 = v19;
  *&v74 = v20;
  v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView];
  v72 = type metadata accessor for AppPromotionSubtitleView();
  v73 = &protocol witness table for CustomLayoutView;
  *&v71 = v21;
  v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView];
  if (v22)
  {
    v56 = type metadata accessor for SeparatorView();
    v57 = &protocol witness table for UIView;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v23 = type metadata accessor for AppPromotionCardLayout(0);
  v24 = (a1 + v23[17]);
  v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView];
  v24[3] = v55;
  v24[4] = &protocol witness table for UIView;
  *v24 = v25;
  v26 = (a1 + v23[18]);
  v27 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView];
  v26[3] = type metadata accessor for SubscriptionLockupView();
  v26[4] = &protocol witness table for UIView;
  *v26 = v27;
  v28 = *&v21[qword_100930F38];
  v29 = v22;
  v30 = v25;
  v31 = v27;
  v32 = v68;
  v33 = v65;
  v34 = v63;
  v35 = v60;
  v36 = v59;
  v37 = v58;
  v38 = v64;
  v39 = v64;
  v40 = v54;
  v41 = v53;
  v42 = v21;
  LOBYTE(v28) = [v28 hasContent];
  sub_10019A65C(v70, a1);
  sub_100012160(&v95, a1 + v23[5]);
  sub_100012160(&v92, a1 + v23[6]);
  sub_100012160(&v89, a1 + v23[7]);
  sub_100012160(&v86, a1 + v23[8]);
  sub_100012160(&v83, a1 + v23[9]);
  v43 = (a1 + v23[11]);
  *v43 = v69;
  v43[1] = 0;
  v44 = v66;
  v45 = v67;
  v43[2] = 0;
  v43[3] = v45;
  v43[4] = v44;
  v46 = (a1 + v23[12]);
  *v46 = v38;
  v46[1] = 0;
  v47 = v61;
  v48 = v62;
  v46[2] = 0;
  v46[3] = v48;
  v46[4] = v47;
  sub_100012160(&v77, a1 + v23[13]);
  sub_100012160(&v74, a1 + v23[14]);
  sub_100012160(&v71, a1 + v23[15]);
  v49 = (a1 + v23[16]);
  *v49 = v22;
  v49[1] = 0;
  v51 = v56;
  v50 = v57;
  v49[2] = 0;
  v49[3] = v51;
  v49[4] = v50;
  *(a1 + v23[19]) = v28;
  return sub_100012160(&v80, a1 + v23[10]);
}

uint64_t (*sub_1005CE9C8(uint64_t **a1))()
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
  v2[4] = sub_1005CDBE8(v2);
  return sub_1000181A8;
}

uint64_t sub_1005CEA38()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1005D016C(&qword_100940498, v1, type metadata accessor for AppPromotionCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_1005CEAAC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1005D016C(&qword_100940498, v5, type metadata accessor for AppPromotionCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_1005CEB38(uint64_t *a1))()
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
  sub_1005D016C(&qword_100940498, v3, type metadata accessor for AppPromotionCardView);
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1005CEBF4(void *a1)
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
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300);
  v5 = v4;
  v6 = sub_100753FC4();

  return v6 & 1;
}

uint64_t sub_1005CED68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005CEDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005CEDD8()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1005CEE20(void *a1, void *a2)
{
  v108 = sub_100754724();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100750A94();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100750AB4();
  v115 = *(v116 - 1);
  __chkstk_darwin(v116);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100750FD4();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v95 - v9;
  v102 = sub_1007479B4();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v95 - v12;
  __chkstk_darwin(v13);
  v98 = &v95 - v14;
  __chkstk_darwin(v15);
  v17 = &v95 - v16;
  v18 = sub_100747064();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_1000CD5F0(a2 + v25[18], &v120);
  v109 = v121;
  sub_10000C8CC(&v120, &unk_100928A00);
  v117 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = sub_100753954();

  if (v28)
  {
    v29 = v25[13];
    v30 = v25[14];
    v31 = v25[16];
    v95 = v25[15];
    v103 = v31;
    LODWORD(v99) = *(a2 + v25[19]);
    if (qword_1009219E8 != -1)
    {
      swift_once();
    }

    v96 = (a2 + v29);
    v32 = (a2 + v30);
    v33 = sub_10000D0FC(v18, qword_100982810);
    v100 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1007504C4();
    v35 = v34;
    v36 = [v117 traitCollection];
    (*(v19 + 16))(v24, v33, v18);
    v37 = sub_100746FD4();
    v39 = v105;
    v97 = v32;
    if ((v40 & 1) == 0 && ((v37 | v38) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v41 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v41 = qword_10093FF58;
      }

      v51 = v102;
      v52 = sub_10000D0FC(v102, v41);
      v53 = v101;
      v54 = v98;
      (*(v101 + 16))(v98, v52, v51);
      (*(v53 + 32))(v17, v54, v51);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v53 + 8))(v17, v51);
    }

    sub_100746F14();
    v56 = v55;

    (*(v19 + 8))(v24, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v35;
    v58 = v110;
    *(inited + 56) = v110;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((inited + 32));
    sub_100750FE4();
    sub_10049FB8C(inited);
    v59 = v117;
    v60 = v108;
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v56 + 16.0 + 16.0);
      v61 = v104;
      sub_100750FE4();
      v62 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1002548C4(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1002548C4((v63 > 1), v64 + 1, 1, v62);
      }

      v121 = v58;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v65 = sub_10000D134(&v120);
      v66 = v107;
      (*(v107 + 16))(v65, v61, v58);
      v62[2] = v64 + 1;
      sub_100012160(&v120, &v62[5 * v64 + 4]);
      (*(v66 + 8))(v61, v58);
      *&v118 = v62;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v67 = v114;
    sub_100750AA4();
    sub_100750A84();
    v69 = v68;
    (*(v115 + 8))(v67, v116);
    sub_10000C888(a2, a2[3]);
    sub_100536120();
    sub_100750564();
    v116 = *(v106 + 8);
    v116(v39, v60);
    sub_100753BA4();
    sub_10000C888(v96, v96[3]);
    sub_100750404();
    v71 = v70;
    v72 = v100;
    sub_10000C888((a2 + *(v100 + 6)), *(a2 + *(v100 + 6) + 24));
    sub_100750584();
    *&v120 = v71;
    sub_100750554();
    sub_10000C888(v97, v97[3]);
    sub_100750404();
    v74 = v73;
    sub_10000C888((a2 + *(v72 + 7)), *(a2 + *(v72 + 7) + 24));
    sub_100750584();
    *&v120 = v74;
    sub_100750554();
    if (v99)
    {
      sub_10000C888((a2 + v95), *(a2 + v95 + 24));
      v75 = v72;
      v76 = [v59 traitCollection];
      sub_100751254();

      sub_10000C888((a2 + *(v75 + 8)), *(a2 + *(v75 + 8) + 24));
      v77 = [v59 traitCollection];
      sub_100750574();

      sub_10000C888((a2 + *(v75 + 9)), *(a2 + *(v75 + 9) + 24));
      sub_100536120();
      sub_100750564();
      v116(v39, v108);
    }

    sub_1000CD5F0(&v103[a2], &v118);
    if (v119)
    {
      sub_100012160(&v118, &v120);
      sub_10000C888(&v120, v121);
      if ((sub_1007503A4() & 1) == 0)
      {
        sub_10000C888(&v120, v121);
        sub_100750404();
      }

      sub_10000C620(&v120);
    }

    else
    {
      sub_10000C8CC(&v118, &unk_100928A00);
    }
  }

  else
  {
    if (qword_1009219E0 != -1)
    {
      swift_once();
    }

    v42 = sub_10000D0FC(v18, qword_1009827F8);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1007504C4();
    v44 = v43;
    v45 = [v117 traitCollection];
    (*(v19 + 16))(v21, v42, v18);
    v46 = sub_100746FD4();
    v48 = v110;
    if ((v49 & 1) == 0 && ((v46 | v47) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v50 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v50 = qword_10093FF58;
      }

      v78 = v102;
      v79 = sub_10000D0FC(v102, v50);
      v80 = v101;
      v81 = v99;
      (*(v101 + 16))(v99, v79, v78);
      v82 = v100;
      (*(v80 + 32))(v100, v81, v78);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v80 + 8))(v82, v78);
    }

    sub_100746F14();
    v84 = v83;

    (*(v19 + 8))(v21, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_1007A5A00;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v44;
    *(v85 + 56) = v48;
    *(v85 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((v85 + 32));
    sub_100750FE4();
    sub_10049FB8C(v85);
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v84 + 4.0 + 4.0);
      v86 = v103;
      sub_100750FE4();
      v87 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1002548C4(0, v87[2] + 1, 1, v87);
      }

      v89 = v87[2];
      v88 = v87[3];
      if (v89 >= v88 >> 1)
      {
        v87 = sub_1002548C4((v88 > 1), v89 + 1, 1, v87);
      }

      v121 = v48;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v90 = sub_10000D134(&v120);
      v91 = v107;
      (*(v107 + 16))(v90, v86, v48);
      v87[2] = v89 + 1;
      sub_100012160(&v120, &v87[5 * v89 + 4]);
      (*(v91 + 8))(v86, v48);
      *&v118 = v87;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v92 = v114;
    sub_100750AA4();
    sub_100750A84();
    v69 = v93;
    (*(v115 + 8))(v92, v116);
  }

  return v69;
}

id sub_1005CFFE8(void *a1)
{
  sub_1005CBE84();

  return [a1 setNeedsLayout];
}

void sub_1005D0028()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1005D016C(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
      sub_100016C60(0, &qword_100922300);
      v5 = v4;
      v6 = sub_100753FC4();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_1005D016C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_1005D01B4()
{
  ObjectType = swift_getObjectType();
  v105 = sub_100743584();
  *&v110 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v2 - 8);
  v107 = &v98 - v3;
  v106 = sub_100752AC4();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10074AB44();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_gradientBlurView] = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *&v0[v11] = sub_1002CADA4(0);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView] = 0;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView;
  *&v0[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_shadowView] = [objc_allocWithZone(sub_100743034()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] = v17;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = sub_100750534();
  v19 = *(v18 - 8);
  v98 = *(v19 + 56);
  v98(v10, 1, 1, v18);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v5 + 104);
  v102 = v5 + 104;
  v21(v7, enum case for DirectionalTextAlignment.none(_:), v108);
  v22 = sub_100745C84();
  v23 = objc_allocWithZone(v22);
  v101 = v7;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel] = sub_100745C74();
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v18, qword_100981D88);
  (*(v19 + 16))(v10, v24, v18);
  v98(v10, 0, 1, v18);
  v21(v101, v20, v108);
  v25 = objc_allocWithZone(v22);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel] = sub_100745C74();
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_borderView] = v26;
  if (qword_100920578 != -1)
  {
    swift_once();
  }

  v116[2] = xmmword_10097E450;
  v116[3] = unk_10097E460;
  v117 = qword_10097E470;
  v116[0] = xmmword_10097E430;
  v116[1] = unk_10097E440;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView] = sub_1001F0408(v116, 0.0, 0.0, 0.0, 0.0);
  v115.receiver = v0;
  v115.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_contentView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = v30;
  v32 = v100;
  sub_100752A74();
  sub_10000C8CC(&v111, &unk_100923520);
  sub_10000C8CC(&v113, &unk_100923520);
  sub_100753C74();

  v33 = *(v103 + 8);
  v34 = v106;
  v33(v32, v106);
  v108 = v29;
  v35 = *&v28[v29];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v35;
  sub_100752A74();
  sub_10000C8CC(&v111, &unk_100923520);
  sub_10000C8CC(&v113, &unk_100923520);
  sub_100753C74();

  v33(v32, v34);
  v103 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView;
  v37 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = v37;
  sub_100752A74();
  sub_10000C8CC(&v111, &unk_100923520);
  sub_10000C8CC(&v113, &unk_100923520);
  sub_100753C74();

  v33(v32, v34);
  v101 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel;
  v39 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_titleLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v40 = v39;
  sub_100752A74();
  sub_10000C8CC(&v111, &unk_100923520);
  sub_10000C8CC(&v113, &unk_100923520);
  sub_100753C74();

  v33(v32, v34);
  v102 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel;
  v41 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_kindLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v42 = v41;
  sub_100752A74();
  sub_10000C8CC(&v111, &unk_100923520);
  sub_10000C8CC(&v113, &unk_100923520);
  sub_100753C74();

  v33(v32, v34);
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v28 setClipsToBounds:0];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_shadowView;
  v44 = qword_1009204C8;
  v45 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_shadowView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10074F0C4();
  v47 = sub_10000D0FC(v46, qword_10097E218);
  v48 = *(v46 - 8);
  v49 = v107;
  (*(v48 + 16))(v107, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_100743014();

  v50 = *&v28[v43];
  sub_100742FF4();

  v51 = *&v28[v43];
  v52 = v110;
  v53 = *(v110 + 104);
  v54 = v104;
  LODWORD(v106) = enum case for CornerStyle.continuous(_:);
  v55 = v105;
  v107 = v53;
  (v53)(v104);
  v56 = v51;
  sub_100743024();

  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v59 = v58;
  (v58)(v54, v55);
  v60 = *&v28[v43];
  v61 = [v28 traitCollection];
  v62 = [v61 userInterfaceStyle];

  [v60 setHidden:v62 == 2];
  v63 = *&v28[v43];
  v64 = v28;
  [v64 addSubview:v63];
  v65 = v108;
  v66 = qword_100921A00;
  v67 = *&v28[v108];
  if (v66 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = qword_100982858;
  [v67 setBackgroundColor:?];

  v68 = *&v28[v65];
  (v107)(v54, v106, v55);
  v69 = v68;
  sub_100746E34();

  v100 = v59;
  (v59)(v54, v55);
  [v64 addSubview:*&v28[v65]];
  v70 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView;
  [*&v28[v65] addSubview:*&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView]];
  [*&v64[v70] addSubview:*&v28[v103]];
  [*&v64[v70] addSubview:*&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView]];
  v71 = *&v28[v101];
  sub_100016C60(0, &qword_100923500);
  v72 = v71;
  v73 = sub_100753DD4();
  *&v110 = v57;
  v74 = v73;
  [v72 setTextColor:v73];

  v75 = *(*&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView] + qword_100930F38);
  v76 = objc_opt_self();
  v77 = v75;
  v78 = [v76 secondaryLabelColor];
  [v77 setTextColor:v78];

  v79 = *&v28[v102];
  v80 = sub_100753DF4();
  [v79 setTextColor:v80];

  v81 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_borderView;
  v82 = *&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_borderView];
  v83 = ObjCClassFromMetadata;
  sub_100746E64();

  v84 = *&v64[v81];
  sub_100746E74();

  [*&v64[v81] setUserInteractionEnabled:0];
  [*&v64[v81] setHidden:1];
  v85 = *&v64[v81];
  (v107)(v54, v106, v55);
  v86 = v85;
  sub_100746E34();

  (v100)(v54, v55);
  [v64 addSubview:*&v64[v81]];
  sub_1005CD45C();
  sub_1005CBE84();
  sub_10000C518(&unk_1009249D0);
  v87 = swift_allocObject();
  v110 = xmmword_1007A5A00;
  *(v87 + 16) = xmmword_1007A5A00;
  *(v87 + 32) = sub_1007519E4();
  *(v87 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  v88 = swift_allocObject();
  *(v88 + 16) = v110;
  *(v88 + 32) = sub_100751624();
  *(v88 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D44();
  swift_unknownObjectRelease();

  v89 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView;
  [*&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView] setBackgroundColor:v83];
  [*&v28[v108] addSubview:*&v64[v89]];
  v90 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v91 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupTapGestureRecognizer;
  v92 = *&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupTapGestureRecognizer];
  *&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupTapGestureRecognizer] = v90;

  result = *&v64[v91];
  if (result && ([result setDelegate:v64], (result = *&v64[v91]) != 0) && (result = objc_msgSend(result, "addTarget:action:", v64, "handleTapWithGestureRecognizer:"), *&v64[v91]))
  {
    [*&v64[v89] addGestureRecognizer:?];
    v94 = [v64 traitCollection];

    v95 = [v94 preferredContentSizeCategory];
    v96 = sub_100753954();

    if (v96)
    {
      v97 = *&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView];
      if (v97)
      {
        [v97 setHidden:0];
      }
    }

    [*&v64[v89] addSubview:*&v64[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView]];
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005D12BC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_gradientBlurView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView;
  v3 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v0 + v2) = sub_1002CADA4(0);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_separatorView) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupTapGestureRecognizer) = 0;
  v6 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

BOOL sub_1005D1400(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction] != 0;
    }

    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = v2;
    v10 = sub_100753FC4();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

id sub_1005D1544()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HttpTemplateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005D16BC(uint64_t a1)
{
  v93 = a1;
  v75 = sub_100742CF4();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1007493D4();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10074A304();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752614();
  __chkstk_darwin(v5 - 8);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v7 - 8);
  v68 = &v62 - v8;
  v9 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v9 - 8);
  v65 = &v62 - v10;
  v63 = sub_10074F4D4();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007494E4();
  v95 = *(v12 - 8);
  __chkstk_darwin(v12);
  v89 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_10000C518(&qword_1009404F8);
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v79 = (&v62 - v18);
  v19 = sub_10000C518(&qword_100940500);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v62 - v23);
  v94 = v1;
  sub_10074ECB4();
  v26 = v25;
  sub_100747724();
  v28 = v27;
  if (!v26)
  {
    v29 = 0;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    goto LABEL_6;
  }

  v29 = sub_100753064();

  if (!v28)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = sub_100753064();

LABEL_6:
  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v92 = v31;
  sub_1005D2FA4(v31, v93);
  result = sub_100747704();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v78 = OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_hasRequiredParameters;
  v93 = v95 + 16;
  v91 = (v90 + 7);
  v77 = OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_okAction;
  v90 += 6;
  v84 = v95 + 32;
  v82 += 7;
  v81 = &v97;
  v80 = (v95 + 8);
  v88 = v21;
  v87 = v17;
  v86 = result;
  v85 = v35;
  v83 = v24;
  while (1)
  {
    if (v34 == v35)
    {
      v36 = 1;
      v34 = v35;
      goto LABEL_13;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *(v33 + 16))
    {
      goto LABEL_19;
    }

    v37 = v95;
    v38 = v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34;
    v39 = *(v17 + 48);
    v40 = v79;
    *v79 = v34;
    (*(v37 + 16))(v40 + v39, v38, v12);
    sub_100066578(v40, v21, &qword_1009404F8);
    v36 = 0;
    ++v34;
LABEL_13:
    (*v91)(v21, v36, 1, v17);
    sub_100066578(v21, v24, &qword_100940500);
    if ((*v90)(v24, 1, v17) == 1)
    {

      v98 = 0;
      aBlock = 0u;
      v97 = 0u;
      (*(v62 + 104))(v64, enum case for FlowPage.viewController(_:), v63);
      v58 = sub_100741264();
      (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
      v59 = sub_100743FE4();
      (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
      v101 = sub_10044D908();
      v100 = v92;
      v60 = v92;
      sub_1007525F4();
      (*(v66 + 104))(v72, enum case for FlowPresentationContext.presentModal(_:), v67);
      (*(v70 + 104))(v74, enum case for FlowAnimationBehavior.infer(_:), v71);
      (*(v73 + 104))(v76, enum case for FlowOrigin.inapp(_:), v75);
      sub_100752B44();
      sub_100742CD4();
      swift_allocObject();
      v61 = sub_100742C84();

      return v61;
    }

    v41 = *v24;
    v42 = *(v17 + 48);
    v43 = v95;
    v44 = *(v95 + 32);
    v44(v16, v24 + v42, v12);
    v45 = v12;
    v46 = v89;
    (*(v43 + 16))(v89, v16, v45);
    v47 = *(v43 + 80);
    v48 = v16;
    v49 = (v47 + 24) & ~v47;
    v50 = (v82 + v49) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v52 = v46;
    v12 = v45;
    v44((v51 + v49), v52, v45);
    v53 = v94;
    *(v51 + v50) = v94;
    v98 = sub_1005D3A48;
    v99 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v97 = sub_10073EFC4;
    *(&v97 + 1) = &unk_10087CEE8;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v16 = v48;

    [v92 addTextFieldWithConfigurationHandler:v54];
    _Block_release(v54);
    if (sub_100749484())
    {
      v56 = v94;
      v94[v78] = 1;
      v57 = *&v56[v77];
      if (v57)
      {
        [v57 setEnabled:0];
      }
    }

    result = (*v80)(v48, v45);
    v17 = v87;
    v21 = v88;
    v24 = v83;
    v33 = v86;
    v35 = v85;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1005D2230(uint64_t a1)
{
  v56 = a1;
  v2 = sub_10000C518(&qword_100939100);
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v50 - v3;
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v59 = sub_100752614();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007494E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074B514();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_100386760(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  v63 = v14;
  v15 = v1;
  sub_10074B504();
  v16 = OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = &qword_100940000;
  if (v18)
  {
    while (v18 >= 1)
    {
      v51 = v2;
      v20 = v19[148];
      v50[1] = v15;
      v21 = *(v15 + v20);
      v65 = v17 & 0xC000000000000001;
      v66 = v21;
      v64 = v10 + 16;
      v22 = (v10 + 8);

      v15 = 0;
      v2 = v62;
      while (1)
      {
        v23 = v65 ? sub_100754574() : *(v17 + 8 * v15 + 32);
        v24 = v23;
        v25 = sub_100747704();
        v26 = [v24 tag];
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_26;
        }

        (*(v10 + 16))(v2, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);

        v27 = [v24 text];
        if (v27)
        {
          v28 = v27;
          sub_100753094();

          v2 = v62;
          sub_10074B4F4();

          (*v22)(v2, v9);
        }

        else
        {
          (*v22)(v2, v9);
        }

        if (v18 == ++v15)
        {

          v2 = v51;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v18 = sub_100754664();
      v19 = &qword_100940000;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v30 = sub_100752E44();
    sub_10000D0FC(v30, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    swift_getErrorValue();
    v31 = v70;
    v32 = v71;
    v68 = v71;
    v33 = sub_10000D134(v67);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    sub_100752444();
    sub_10000C8CC(v67, &unk_100923520);
    sub_100752D04();

    v34 = sub_1007476F4();
    if (v34)
    {
      v35 = v34;
      v36 = sub_10000C518(&unk_100923210);
      v37 = v55;
      sub_1007526C4();
      v38 = *(v36 - 8);
      if ((*(v38 + 48))(v37, 1, v36) == 1)
      {
        (*(v60 + 8))(v63, v61);

        v39 = v37;
        return sub_10000C8CC(v39, &unk_100923960);
      }

      v68 = sub_10074ECD4();
      v69 = sub_1005D3958(&qword_10093D890, &type metadata accessor for Action);
      v67[0] = v35;
      v46 = v54;
      v47 = v53;
      (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

      sub_1007527E4();

      (*(v46 + 8))(v47, v2);
      (*(v60 + 8))(v63, v61);
      sub_10000C620(v67);
      return (*(v38 + 8))(v37, v36);
    }

    else
    {
      (*(v60 + 8))(v63, v61);
    }
  }

  else
  {
LABEL_15:
    v29 = v57;
    sub_1007525F4();
    v40 = sub_1007476E4();
    (*(v58 + 8))(v29, v59);
    v41 = sub_10000C518(&unk_100923210);
    v42 = v52;
    sub_1007526C4();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v42, 1, v41);
    if (v44 == 1)
    {
      (*(v60 + 8))(v63, v61);

      v39 = v42;
      return sub_10000C8CC(v39, &unk_100923960);
    }

    v68 = sub_100742DB4();
    v69 = sub_1005D3958(&unk_10093D870, &type metadata accessor for HttpAction);
    v67[0] = v40;
    v48 = v54;
    v49 = v53;
    (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

    sub_1007527E4();

    (*(v48 + 8))(v49, v2);
    (*(v60 + 8))(v63, v61);
    sub_10000C620(v67);
    return (*(v43 + 8))(v42, v41);
  }
}

uint64_t sub_1005D2CF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1007494C4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTag:{a2, v9}];
  sub_1007494B4();
  if (v12)
  {
    v13 = sub_100753064();
  }

  else
  {
    v13 = 0;
  }

  [a1 setPlaceholder:v13];

  sub_1007494D4();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for HttpTemplateParameter.InputType.text(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for HttpTemplateParameter.InputType.email(_:))
  {
    v15 = 7;
  }

  else if (v14 == enum case for HttpTemplateParameter.InputType.phoneNumber(_:))
  {
    v15 = 5;
  }

  else
  {
    if (v14 != enum case for HttpTemplateParameter.InputType.decimalPad(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_5:
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 8;
  }

LABEL_12:
  [a1 setKeyboardType:v15];
  [a1 setDelegate:a4];
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v17 = OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v18 = a1;
  sub_100753284();
  if (*((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return swift_endAccess();
}

void sub_1005D2FA4(void *a1, uint64_t a2)
{
  v15._countAndFlagsBits = 0x432E6E6F69746341;
  v15._object = 0xED00006C65636E61;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1007458B4(v15, v17);
  v5 = sub_100753064();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:0 handler:0];

  [a1 addAction:v7];
  v16._countAndFlagsBits = 0x4F2E6E6F69746341;
  v16._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1007458B4(v16, v18);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a2;
  v9 = v2;

  v10 = sub_100753064();

  v14[4] = sub_1005D3918;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10073EFC4;
  v14[3] = &unk_10087CE98;
  v11 = _Block_copy(v14);

  v12 = [v6 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [a1 addAction:v12];
  [a1 setPreferredAction:v12];
  v13 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_okAction];
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_okAction] = v12;
}

id sub_1005D31C4()
{
  v32 = sub_1007494E4();
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_textFields;
  swift_beginAccess();
  v30 = *(v0 + v3);
  if (!(v30 >> 62))
  {
    v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_okAction);
    if (result)
    {
      return [result setEnabled:1];
    }

    return result;
  }

LABEL_28:
  v29 = sub_100754664();
  if (!v29)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_templateAction);
  v5 = v30 & 0xC000000000000001;
  v24 = v0;
  v25 = v30 & 0xFFFFFFFFFFFFFF8;
  v27 = (v1 + 8);
  v28 = v4;

  v6 = 0;
  v7 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  v26 = v1;
  while (1)
  {
    if (v5)
    {
      v8 = sub_100754574();
    }

    else
    {
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(v30 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v0 = sub_100747704();
    v11 = [v9 v7[379]];
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v11 >= v0[2])
    {
      goto LABEL_26;
    }

    v12 = v31;
    (*(v1 + 16))(v31, v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v32);

    v0 = v12;
    v13 = v9;
    if (sub_100749484())
    {
      v14 = [v9 text];
      if (!v14)
      {
        break;
      }

      v0 = v14;
      v15 = sub_100753094();
      v16 = v7;
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      v20 = v15 & 0xFFFFFFFFFFFFLL;
      v1 = v26;
      v21 = (v18 & 0x2000000000000000) == 0;
      v7 = v16;
      v13 = v9;
      if (v21)
      {
        v19 = v20;
      }

      if (!v19)
      {
        break;
      }
    }

    (*v27)(v31, v32);
    ++v6;
    if (v10 == v29)
    {

      v0 = v24;
      goto LABEL_21;
    }
  }

  v22 = *(v24 + OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_okAction);
  if (v22)
  {
    [v22 setEnabled:0];
  }

  return (*v27)(v31, v32);
}

void sub_1005D34E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007494E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100747704();
  v11 = [a1 tag];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);

  sub_100749494();
  if ((v12 & 1) == 0)
  {
    v13 = [a1 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_100753064();
      v16 = [v14 stringByReplacingCharactersInRange:a2 withString:{a3, v15}];

      if (v16)
      {
        [v16 length];

        (*(v7 + 8))(v9, v6);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1005D38D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005D3940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005D3958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005D39AC()
{
  v1 = sub_1007494E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1005D3A48(void *a1)
{
  v3 = *(sub_1007494E4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005D2CF4(a1, v5, v1 + v4, v6);
}

id sub_1005D3AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_contentViewController] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_startedAsFlowPreview] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_1005D5D44(qword_100940568);
  v8 = v7;
  sub_100748BD4();

  return v8;
}

void sub_1005D3C7C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  sub_100744314();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_contentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v8 insertSubview:v9 atIndex:0];

LABEL_6:
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = 0;
  sub_10074B964();
}

void sub_1005D3E98()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setFrame:{v4, v6, v8, v10}];

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setFrame:{v4, v6, v8, v10}];
}

void sub_1005D407C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_contentViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v3];
  if (v7)
  {
    [v7 removeFromParentViewController];
    v8 = *&v1[v3];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  *&v1[v3] = a1;
  v13 = a1;

  if (!a1)
  {
    return;
  }

  [v1 addChildViewController:v13];
  if ([v1 isViewLoaded])
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v13 view];
      if (v11)
      {
        v12 = v11;
        [v10 insertSubview:v11 atIndex:0];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

uint64_t sub_1005D41D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074A304();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v12 - 8);
  v14 = v25 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032C04(a2, v28);

  sub_1001362FC(v19, v28, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000C8CC(v14, &unk_100925750);
    return 0;
  }

  sub_100068B98(v14, v18);
  sub_100742C54();
  sub_100742C44();
  v20 = [v25[1] traitCollection];
  sub_1006C1C84(v8);

  sub_100068C7C(v11, type metadata accessor for FlowPresentationHints);
  sub_100068C7C(v18, type metadata accessor for FlowDestination);
  v22 = v26;
  v21 = v27;
  (*(v26 + 32))(v5, v8, v27);
  v23 = (*(v22 + 88))(v5, v21);
  result = 1;
  if (v23 != enum case for FlowPresentationContext.presentModal(_:) && v23 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v22 + 8))(v5, v21);
    return 0;
  }

  return result;
}

unint64_t sub_1005D456C(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_100752614();
  __chkstk_darwin(v4 - 8);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100744574();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v71 - v12;
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  __chkstk_darwin(v16);
  v73 = &v71 - v17;
  v18 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v21 - 8);
  v23 = &v71 - v22;
  v24 = type metadata accessor for FlowDestination();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v2;
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_startedAsFlowPreview] == 1)
  {
    v72 = sub_100742CD4();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      sub_100032C04(v79, &v81);
      swift_retain_n();
      sub_1001362FC(v29, &v81, v23);
      if ((*(v25 + 48))(v23, 1, v24) == 1)
      {
        sub_10000C8CC(v23, &unk_100925750);
        if (qword_100921EE0 != -1)
        {
          swift_once();
        }

        v30 = sub_100752E44();
        sub_10000D0FC(v30, qword_100983318);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A5620;
        *(&v82 + 1) = ObjectType;
        *&v81 = v80;
        v31 = v80;
        sub_100752424();
        sub_10000C8CC(&v81, &unk_100923520);
        sub_1007523A4();
        *(&v82 + 1) = v72;
        *&v81 = v29;

        sub_100752444();
        sub_10000C8CC(&v81, &unk_100923520);
        sub_100752D04();
      }

      else
      {
        sub_100068B98(v23, v27);
        v51 = v80;
        v52 = [v80 traitCollection];
        v53 = sub_100742C14();
        v55 = v54;
        sub_100742C34();
        v83 = 0;
        v81 = 0u;
        v82 = 0u;
        v56 = sub_100470520(v27, v52, v53, v55, v20, &v81, *&v51[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph], 1);

        sub_10000C8CC(&v81, &unk_100925760);
        sub_10000C8CC(v20, &qword_10092C1F0);
        sub_1005D407C(v56);

        return sub_100068C7C(v27, type metadata accessor for FlowDestination);
      }
    }
  }

  sub_100742CD4();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;

    goto LABEL_9;
  }

  sub_100744CB4();
  if (!swift_dynamicCastClass())
  {
LABEL_39:
    v68 = *&v80[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph];
    v69 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v10, 1, v69) != 1)
    {
      sub_1003C0E00(a1, 1, v68, v10);

      return (*(v70 + 8))(v10, v69);
    }

    v43 = v10;
    return sub_10000C8CC(v43, &unk_100923960);
  }

  result = sub_100744CA4();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_38:

    goto LABEL_39;
  }

  v66 = result;
  v67 = sub_100754664();
  result = v66;
  if (!v67)
  {
    goto LABEL_38;
  }

LABEL_17:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v44 = swift_dynamicCastClass();
  if (!v44)
  {

    goto LABEL_39;
  }

  v34 = v44;
LABEL_9:

  v35 = v80;
  if ((sub_1005D41D4(v34, v79) & 1) == 0)
  {
    (*(v75 + 104))(v76, enum case for NavigationTab.infer(_:), v6);
    sub_10000C518(&unk_1009231A0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1007A5CF0;
    *(v45 + 32) = a1;

    sub_1007525F4();
    sub_100745824();
    swift_allocObject();
    v46 = sub_1007457E4();
    v47 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph];
    v48 = sub_10000C518(&unk_100923210);
    v49 = v78;
    sub_1007526C4();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) != 1)
    {
      sub_1003C13BC(v46, 1, v47, v49);

      return (*(v50 + 8))(v49, v48);
    }

    v43 = v49;
    return sub_10000C8CC(v43, &unk_100923960);
  }

  v36 = [v35 tabBarController];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 transientViewController];
    if (v38)
    {

      [v37 setTransientViewController:0 animated:0];
      v39 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph];
      v40 = sub_10000C518(&unk_100923210);
      v41 = v73;
      sub_1007526C4();
      v42 = *(v40 - 8);
      if ((*(v42 + 48))(v41, 1, v40) != 1)
      {
        sub_1003C0E00(a1, 1, v39, v41);

        return (*(v42 + 8))(v41, v40);
      }

      v43 = v41;
      return sub_10000C8CC(v43, &unk_100923960);
    }
  }

  v57 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph];
  v58 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v15, 1, v58) == 1)
  {
    sub_10000C8CC(v15, &unk_100923960);
  }

  else
  {
    sub_1003C0E00(a1, 1, v57, v15);

    (*(v59 + 8))(v15, v58);
  }

  v60 = [v35 navigationController];
  v61 = [v60 topViewController];

  if (v61)
  {
    sub_100032B70();
    v62 = v35;
    v63 = sub_100753FC4();

    if (v63)
    {
      v64 = [v62 navigationController];
      if (v64)
      {
        v65 = v64;
      }
    }
  }
}

void sub_1005D51D0()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController];
  sub_10074B974();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_1005D5328()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1005D540C()
{
  v0 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v0 - 8);
  v46 = &v36 - v1;
  v2 = sub_100744574();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100742CF4();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007493D4();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10074A304();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_10074F4D4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100751074();
  __chkstk_darwin(v21 - 8);
  sub_100751064();
  v36 = sub_100751094();
  v22 = objc_allocWithZone(v36);
  swift_errorRetain();
  v23 = sub_100751084();
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v18 + 104))(v20, enum case for FlowPage.viewController(_:), v17);
  v24 = sub_100741264();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = sub_100743FE4();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v50 = 0u;
  v51 = 0u;
  sub_1007525F4();
  (*(v8 + 104))(v37, enum case for FlowPresentationContext.push(_:), v38);
  (*(v40 + 104))(v39, enum case for FlowAnimationBehavior.never(_:), v41);
  (*(v43 + 104))(v42, enum case for FlowOrigin.inapp(_:), v44);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v26 = sub_100742C84();
  *(&v53 + 1) = v36;
  *&v52 = v23;
  v27 = v23;
  v28 = v46;
  v29 = v27;
  sub_100742C24();
  sub_10000C8CC(&v52, &unk_100923520);
  (*(v47 + 104))(v45, enum case for NavigationTab.infer(_:), v48);
  sub_10000C518(&unk_1009231A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007A5CF0;
  *(v30 + 32) = v26;

  sub_1007525F4();
  sub_100745824();
  swift_allocObject();
  v31 = sub_1007457E4();
  v32 = *(v49 + OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_objectGraph);
  v33 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v28, 1, v33) == 1)
  {

    return sub_10000C8CC(v28, &unk_100923960);
  }

  else
  {
    sub_1003C13BC(v31, 1, v32, v28);

    return (*(v34 + 8))(v28, v33);
  }
}

uint64_t sub_1005D5D44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoadingPageViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005D5E28(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  sub_10000C518(&qword_1009242C0);
  v9 = sub_1007532A4();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1005D5EE4(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = sub_10074E984();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  sub_100753BA4();
  if ((a2 & 1) == 0)
  {
    v17 = sub_10034E47C();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      swift_getObjectType();
      [a4 pageMarginInsets];
      (*(v20 + 32))(0, a4, v19, v20, v21);
      v22 = [a4 traitCollection];
      LOBYTE(v19) = (*(*v6 + 696))(a1, v22);

      if (v19)
      {
        v23 = sub_1005E4998(a1, a3, a4);
        (*(v13 + 16))(v16, a1, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != enum case for Shelf.ContentType.annotation(_:) && v24 != enum case for Shelf.ContentType.productCapability(_:) && v24 != enum case for Shelf.ContentType.productPageLink(_:) && v24 != enum case for Shelf.ContentType.privacyType(_:))
        {
          (*(v13 + 8))(v16, v12);
          PageTraitEnvironment.pageColumnMargin.getter();
          if (!__OFSUB__(v23, 1))
          {
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

        if (__OFSUB__(v23, 1))
        {
          __break(1u);
          goto LABEL_13;
        }
      }
    }
  }
}

void sub_1005D61E0(void *a1)
{
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    v14 = sub_1007450A4();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_1005E6BD0(&qword_100930200, &type metadata accessor for IndexSet);
        sub_100754394();
        do
        {
          aBlock[6] = v13;
          sub_100754344();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_1005E6AF4;
        *(v21 + 24) = v20;
        aBlock[4] = sub_100045E0C;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10011B528;
        aBlock[3] = &unk_10087D140;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

void sub_1005D65C4(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  sub_100741674(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

uint64_t sub_1005D6620(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v49 = a2;
  v50 = a3;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = 0;
  if (sub_100745054())
  {
    return v14;
  }

  sub_100745084();
  v44 = a1;
  v15 = sub_100745044();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v45 = v5;
  v46 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v49;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_10;
  }

  v28 = v18 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v18 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v28 || v18 == enum case for Shelf.ContentType.action(_:))
  {
LABEL_7:
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (v18 != enum case for Shelf.ContentType.ribbonBar(_:))
  {
    if (v18 == enum case for Shelf.ContentType.editorialCard(_:) || v18 == enum case for Shelf.ContentType.videoCard(_:))
    {
      goto LABEL_7;
    }

    if (v18 != enum case for Shelf.ContentType.brick(_:) && v18 != enum case for Shelf.ContentType.categoryBrick(_:))
    {
      if (v18 == enum case for Shelf.ContentType.reviews(_:) || v18 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v18 == enum case for Shelf.ContentType.framedVideo(_:) || v18 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v18 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v18 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_7;
      }

      if (v18 != enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        if (v18 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v18 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v18 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v18 == enum case for Shelf.ContentType.posterLockup(_:) || v18 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          goto LABEL_7;
        }

        if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
        {
          if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
          {
            (*(v46 + 8))(v10, v45);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_10034E47C();
  if (v21)
  {
    v23 = v44;
    v24 = v50;
    v25 = sub_1005D6D50(v44, v20, v21, v22, v50, v48);
    v27 = v45;
    v26 = v46;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v47;
  v27 = v45;
  v16(v47, v13, v45);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_10086C040;
    v26 = v46;
LABEL_45:
    v23 = v44;
    [v20 bounds];
    v35 = v34;
    v24 = v50;
    v25 = sub_1005D706C(v23, v36, v37, v13, v33, v35, v50, v48);
    goto LABEL_46;
  }

  v26 = v46;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell();
    v34 = &off_10086E268;
    goto LABEL_45;
  }

  v41 = *(v46 + 8);
  v41(v31, v27);
  v42 = sub_10034E47C();
  v23 = v44;
  if (v42)
  {
    sub_1005D73C4(v44, v13, v42, v43, v50, v20, v48);
    if (!v25)
    {
      v41(v13, v27);
      return 0;
    }

    v24 = v50;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_1005DB714(v23, v24)}];
    sub_1005D8E20(v23, v24, v20);
    sub_100016C60(0, &qword_10092E460);
    isa = sub_100753294().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_1005D8228();
    sub_100016C60(0, &qword_10092E468);
    v39 = sub_100753294().super.isa;

    [v14 setDecorationItems:v39];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_100754534(62);
  v54._object = 0x8000000100786920;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1007531B4(v54);
  sub_1007545F4();
  v55._countAndFlagsBits = 0x7463657320746120;
  v55._object = 0xEC000000206E6F69;
  sub_1007531B4(v55);
  v51 = v23;
  v56._countAndFlagsBits = sub_100754714();
  sub_1007531B4(v56);

  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_1005D6D50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = sub_10074EAB4();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  sub_100745154();
  v16 = sub_10074EB24();

  v17 = sub_1007450E4();
  sub_100745154();
  sub_10074EAD4();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_100753624();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_1005D8FD0(v33, v34, v19, v18);
  aBlock[4] = sub_1005E69AC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005D5E28;
  aBlock[3] = &unk_10087D0C8;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_1005D706C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate();
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = sub_10074E954();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_1004E0DCC(v13, a1, v14 & 1, v16, v15, v17, 0);

  swift_unknownObjectRetain();

  v20 = sub_100745154();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007A5CF0;
  *(v32 + 32) = v30;
  sub_100016C60(0, &qword_100923478);
  v33 = v30;
  isa = sub_100753294().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_1005D73C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = sub_10074E984();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100940638);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_10000C518(&unk_100940640);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = sub_1007417F4();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_1005E5ABC(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_1005E4998(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_1007A6580;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_10000C518(&qword_1009253E0);
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              sub_1007416F4();
              v54 = sub_1005E0BF0(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_100255F94(0, v49[2] + 1, 1, v49);
              }

              v59 = v49[2];
              v58 = v49[3];
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_100255F94(v58 > 1, v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              v49[2] = v59 + 1;
              sub_100066578(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &unk_100940640);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = v49[2];
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < v49[2])
          {
            sub_100016B4C(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &unk_100940640);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_100066578(v34, v20, &qword_100940638);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = sub_1007537E4();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_1005D8830(v67, v68);
          sub_100016C60(0, &unk_10092E470);
          isa = sub_100753294().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_1005DB714(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          sub_100753284();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (sub_100754664() != 1 || !sub_100754664())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_100016C60(0, &qword_100923478);
            v41 = sub_100753294().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_1005DBD54(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            sub_100753284();
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = sub_100754574();
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        sub_100753284();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_100016C60(0, &qword_100923478);
          v95 = sub_100753294().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

void *sub_1005D8228()
{
  v0 = sub_1007457B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745074();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v5 = *(sub_10000C518(&qword_100940630) + 48);
    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A5CF0;
    v7 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007539C4();
    v8 = sub_100753064();

    v9 = [v7 backgroundDecorationItemWithElementKind:v8];

    *(v6 + 32) = v9;
    v10 = sub_100748E34();
    (*(*(v10 - 8) + 8))(&v3[v5], v10);
  }

  else if (v4 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v11 = sub_10000C518(&unk_100940620);
    v12 = v11[12];
    v13 = v11[16];
    v14 = v11[20];
    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A5CF0;
    v15 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007539C4();
    v16 = sub_100753064();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    *(v6 + 32) = v17;
    v18 = sub_100748E34();
    (*(*(v18 - 8) + 8))(&v3[v14], v18);
    v19 = sub_10074D3E4();
    v20 = *(*(v19 - 8) + 8);
    v20(&v3[v13], v19);
    v20(&v3[v12], v19);
  }

  else if (v4 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v21 = *(sub_10000C518(&qword_1009245B8) + 48);
    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A5CF0;
    v22 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007539C4();
    v23 = sub_100753064();

    v24 = [v22 backgroundDecorationItemWithElementKind:v23];

    *(v6 + 32) = v24;
    v25 = sub_100748E34();
    (*(*(v25 - 8) + 8))(&v3[v21], v25);
    v26 = sub_10074DDF4();
    (*(*(v26 - 8) + 8))(v3, v26);
  }

  else if (v4 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = enum case for ShelfBackground.interactive(_:);
    v28 = v4;
    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A5CF0;
    v29 = objc_opt_self();
    if (v28 == v27)
    {
      type metadata accessor for InteractiveSectionBackgroundView();
      sub_1007539C4();
      v30 = sub_100753064();

      v31 = [v29 backgroundDecorationItemWithElementKind:v30];

      *(v6 + 32) = v31;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007539C4();
      v32 = sub_100753064();

      v33 = [v29 backgroundDecorationItemWithElementKind:v32];

      *(v6 + 32) = v33;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v6;
}

void *sub_1005D8830(double a1, double a2)
{
  v4 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_100744E64();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_100745114();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925330);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v14 = (*(v8 + 88))(v10, v7);
    if (v14 == enum case for ItemBackground.ad(_:) || v14 == enum case for ItemBackground.insetAd(_:) || v14 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v17 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v18 = objc_opt_self();
      v19 = [v18 absoluteDimension:a1 + 16.0];
      v20 = [v18 absoluteDimension:a2];
      v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = v21;
      sub_1002BDB54();
      v23 = v17;
      v24 = sub_100753064();

      v25 = [objc_opt_self() supplementaryItemWithLayoutSize:v22 elementKind:v24 containerAnchor:v23];

      [v25 setZIndex:-1];
      sub_10000C518(&unk_1009231A0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1007A5CF0;
      *(v26 + 32) = v25;

      (*(v8 + 8))(v13, v7);
      return v26;
    }

    v28 = *(v8 + 8);
    v28(v13, v7);
    v28(v10, v7);
  }

  return _swiftEmptyArrayStorage;
}

id sub_1005D8C3C(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v3 = sub_100750B04();
  sub_10000D0FC(v3, qword_1009820C8);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_100751044();
  sub_100750544();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void *sub_1005D8E20(uint64_t a1, void *a2, void *a3)
{
  sub_100745164();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_1005DC6C8(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000C518(&unk_1009231A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007A5CF0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_1005D8FD0(uint64_t a1, void *a2, void *a3, uint64_t a4))()
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_1005DB714(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v44 = v47;
  sub_100748464();
  sub_100752754();
  v45 = v47;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  v25 = v24;
  v26 = v4[2];
  v27 = *(v9 + 80);
  v28 = *(v9 + 96);
  swift_unknownObjectRetain();
  v29 = v43;

  v30 = sub_1001FA45C(a1, v16, v18, v20, v22, v25, v29, v26, a4, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_100674230(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  sub_100745154();
  sub_10074EAC4();

  v32 = sub_100752914();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10000C8CC(v12, &unk_100925380);
    v34 = 1;
  }

  else
  {
    sub_1007528F4();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = sub_1007528E4();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_1005DA824(v15, v36, v45, v30);

  sub_10000C8CC(v15, &qword_10093FDE0);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_1005E69AC;
}

uint64_t sub_1005D93F4(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000C518(&qword_100930BC0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_100752914();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_100741654();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_100940650);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_100741664();
  swift_beginAccess();
  sub_1007416B4();
  sub_1005E6BD0(&qword_10092AB90, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_1007534F4();
    sub_1005E6BD0(&unk_100940660, &type metadata accessor for IndexSet.Index);
    v19 = sub_100753014();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_100753514();
    v22 = *v21;
    v20(v49, 0);
    sub_100753504();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_100412104(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_100749564();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_10025B470(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_1007544E4();
    v17 = v44;
    sub_100752EE4();
    sub_100752AD4();
    (*v41)(v17, v45);
  }

  return sub_10000C8CC(v15, &unk_100940650);
}

uint64_t sub_1005D998C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000C518(&qword_100930BC0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_100741654();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100940650);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_100741664();
  sub_1007416B4();
  sub_1005E6BD0(&qword_10092AB90, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_1007534F4();
    sub_1005E6BD0(&unk_100940660, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = sub_100753014();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_100753514();
    v16 = *v15;
    v14(v24, 0);
    sub_100753504();
    v25 = v16;
    sub_1007544E4();
    v17 = v20;
    sub_100752EE4();
    sub_100752AD4();
  }

  return sub_10000C8CC(v9, &unk_100940650);
}

uint64_t sub_1005D9CD0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_100752914();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = sub_1007450A4();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = 0;
    v43 = result;
    v44 = (v41 + 48);
    v42 = (v41 + 32);
    v39 = v5;
    v40 = (v41 + 16);
    v34 = v41 + 40;
    v35 = (v41 + 8);
    v37 = v12;
    v38 = v11;
    v36 = v13;
    do
    {
      sub_100745154();
      sub_10074EAC4();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10000C8CC(v5, &unk_100925380);
      }

      else
      {
        v16 = *v42;
        (*v42)(v11, v5, v6);
        swift_beginAccess();
        v17 = v8;
        v18 = v6;
        (*v40)(v8, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v1[7];
        v20 = v46;
        v21 = v1;
        v1[7] = 0x8000000000000000;
        v23 = sub_100412104(v15);
        v24 = v20[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_1007547B4();
          __break(1u);
          return result;
        }

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100675E4C();
          }
        }

        else
        {
          sub_100671DD0(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_100412104(v15);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_22;
          }

          v23 = v28;
        }

        v8 = v17;
        v30 = v46;
        if (v27)
        {
          v6 = v18;
          (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v17, v18);
        }

        else
        {
          v46[(v23 >> 6) + 8] |= 1 << v23;
          *(v30[6] + 8 * v23) = v15;
          v6 = v18;
          v16((v30[7] + *(v41 + 72) * v23), v17, v18);
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_20;
          }

          v30[2] = v33;
        }

        v1 = v21;
        v21[7] = v30;

        swift_endAccess();

        v11 = v38;
        (*v35)(v38, v6);
        v5 = v39;
      }

      ++v15;
      result = v43;
    }

    while (v43 != v15);
  }

  return result;
}

void sub_1005DA0EC(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    sub_100752474();
  }
}

void sub_1005DA1C8(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000C518(&qword_100930BC0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_1007417F4();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016C60(0, &qword_100925390);
  v11 = sub_1007532A4();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_100754664();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_100754574();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_100741744();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_100741784();
        sub_1007544E4();
        v23 = v34;
        sub_100752EE4();
        sub_100752AD4();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t sub_1005DA55C()
{
  v1 = sub_1007528E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_100752914();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074EAC4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v0 + 112))
    {

      sub_100749544();

      if (*(v0 + 112))
      {

        sub_1007528F4();
        v12 = sub_100749534();

        (*(v2 + 8))(v4, v1);
        (*(v9 + 8))(v11, v8);
        return v12;
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_1005DA824(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1007528E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(sub_100749AF4());
  v18 = sub_100749AE4();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100016B4C(a1, v9, &qword_10093FDE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &qword_10093FDE0);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  sub_10074BC84();
  swift_allocObject();
  swift_retain_n();
  sub_10074BC94();
  sub_100749AD4();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    sub_10074C4B4();
    swift_allocObject();
    v19 = a2;
    sub_10074C4C4();
    sub_100749AD4();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    sub_100749F64();
    swift_allocObject();
    v22 = v21;
    sub_100749F74();
    sub_100749AD4();
  }

  if (v20)
  {
    sub_1005E6BD0(&qword_100940618, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator);

    sub_100749AD4();
  }

  return v18;
}

BOOL sub_1005DABF0()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100745084();
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v8 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v7 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v8 = type metadata accessor for InformationRibbonCollectionViewCell();
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v8 = 0;
  }

  return v8 != 0;
}

double sub_1005DADA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = a4;
  v43 = a3;
  v42[1] = a2;
  v49 = a1;
  v48 = sub_1007457B4();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v42 - v6;
  v8 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v8 - 8);
  v10 = v42 - v9;
  v11 = sub_10074E984();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v49 = sub_100745154();
  v50 = v17;
  sub_10074E994();
  v47 = v7;
  v44 = v10;
  if (v43)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v18 = v45;
    v19 = v48;
    (*(v45 + 104))(v7, enum case for ShelfBackground.none(_:), v48);
  }

  else
  {
    sub_100745084();
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_100745074();
    v19 = v48;
    v18 = v45;
  }

  v20 = v50;
  (*(v12 + 16))(v14, v50, v11);
  v21 = (*(v12 + 88))(v14, v11);
  v22 = v44;
  v23 = v46;
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v24 = &off_10086C040;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v12 + 8))(v14, v11);
      v26 = v47;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v24 = &off_10086E268;
  }

  v25 = (v24[2])();
  v26 = v47;
  v20 = v50;
  if ((v27 & 1) == 0)
  {
    v28 = *&v25;

    v29 = v28;
    (*(v18 + 8))(v26, v19);
    sub_10000C8CC(v22, &unk_100933370);
    (*(v12 + 8))(v20, v11);
    return v29;
  }

LABEL_11:
  v45 = v11;
  v30 = sub_10034E47C();
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    v34 = v42[0];
    sub_10074E944();
    *&v35 = COERCE_DOUBLE((*(v33 + 48))(v22, v26, v34, v23, v32, v33));
    v37 = v36;

    v38 = *(v18 + 8);
    v39 = v34;
    v40 = v48;
    v38(v39, v48);
    v38(v26, v40);
    sub_10000C8CC(v22, &unk_100933370);
    (*(v12 + 8))(v50, v45);
    v29 = 0.0;
    if ((v37 & 1) == 0)
    {
      return *&v35;
    }
  }

  else
  {

    (*(v18 + 8))(v26, v19);
    sub_10000C8CC(v22, &unk_100933370);
    (*(v12 + 8))(v20, v45);
    return 0.0;
  }

  return v29;
}

double sub_1005DB318(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = sub_100745154();
  sub_10074E994();
  v34 = v16;
  if (v33)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v18 = 0;
    v19 = v35;
  }

  else
  {
    v33 = v17;
    sub_100745084();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100745164();
    if (v20)
    {

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v35;
  }

  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v22 = &off_10086C040;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v22 = &off_10086E268;
  }

  v23 = (v22[1])();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    v28 = *&v23;

    v27 = v28;
    goto LABEL_18;
  }

LABEL_14:
  if (sub_10034E47C())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_1005E5F94(v19);

LABEL_18:
  sub_10000C8CC(v8, &unk_100933370);
  (*(v10 + 8))(v15, v9);
  return v27;
}

double sub_1005DB714(uint64_t a1, void *a2)
{
  v5 = sub_10074E984();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v32 - v8;
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007450A4() > a1)
  {
    if (qword_100921740 != -1)
    {
      swift_once();
    }

    v13 = sub_100748144();
    sub_10000D0FC(v13, qword_100982140);
    sub_1007502D4();
    sub_100748134();
    (*(v10 + 8))(v12, v9);
    sub_100745164();
    if (v14)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v16 = a1 - 1;
      }

      else
      {
        v16 = 0;
      }

      top = sub_1005DADA4(a1, v16, a1 < 1, a2);
    }

    v18 = v34;
    v17 = v35;
    v19 = v33;
    v20 = sub_1007450A4();
    if (a1 + 1 < v20)
    {
      v21 = a1 + 1;
    }

    else
    {
      v21 = 0;
    }

    (*(*v2 + 536))(a1, v21, a1 + 1 >= v20, a2);
    sub_100745084();
    if (sub_1005DABF0())
    {
      goto LABEL_46;
    }

    v22 = sub_10034E47C();
    if (!v22)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v18 + 8))(v19, v17);
      return top;
    }

    v24 = v22;
    v35 = v23;
    [a2 pageMarginInsets];
    v26 = v25;
    v27 = sub_100745044();
    v28 = v32;
    (*(v18 + 16))(v32, v19, v17);
    v29 = (*(v18 + 88))(v28, v17);
    if (v29 != enum case for Shelf.ContentType.smallLockup(_:) && v29 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v29 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v30 = 1;
LABEL_45:
        (*(v35 + 32))(v30 & 1, a2, v24, v26, v26);
        goto LABEL_46;
      }

      if (v29 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v29 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v29 != enum case for Shelf.ContentType.action(_:))
      {
        if (v29 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v29 != enum case for Shelf.ContentType.editorialCard(_:) && v29 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v30 = 1;
          if (v29 == enum case for Shelf.ContentType.brick(_:) || v29 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v29 != enum case for Shelf.ContentType.reviews(_:) && v29 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v29 != enum case for Shelf.ContentType.framedVideo(_:) && v29 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v29 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v29 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v29 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v29 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v29 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v29 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v29 != enum case for Shelf.ContentType.posterLockup(_:) && v29 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v30 = v27;
                if (v29 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v18 + 8))(v28, v17);
                  v30 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v30 = v27;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_1005DBD54(uint64_t a1, void *a2)
{
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (sub_1007450A4() > a1)
  {
    sub_100745084();
    if (!sub_1005DABF0())
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_1005DC04C(a1, v15);

        if (v16)
        {
          (*(v6 + 16))(v8, v11, v5);
          v17 = (*(v6 + 88))(v8, v5);
          v18 = *(v6 + 8);
          if (v17 == enum case for Shelf.ContentType.annotation(_:) || v17 == enum case for Shelf.ContentType.productCapability(_:) || v17 == enum case for Shelf.ContentType.productPageLink(_:) || v17 == enum case for Shelf.ContentType.privacyType(_:))
          {
            v18(v11, v5);
            return 30.0;
          }

          v18(v8, v5);
        }

        PageTraitEnvironment.pageColumnMargin.getter();
        v12 = v19;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_1005DC04C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (sub_1007450A4() > a1)
  {
    sub_100745084();
    if (!sub_1005DABF0() && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_1005DC27C(uint64_t a1)
{
  v2 = sub_1007457B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if (sub_1007450A4() <= a1)
  {
    v11 = 0;
  }

  else
  {
    sub_100745074();
    (*(v3 + 104))(v5, enum case for ShelfBackground.none(_:), v2);
    sub_1005E6BD0(&qword_100940610, &type metadata accessor for ShelfBackground);
    v9 = sub_100753014();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    v11 = v9 ^ 1;
  }

  return v11 & 1;
}

double sub_1005DC468(uint64_t a1, void *a2)
{
  v4 = sub_1007457B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1007450A4() > a1)
  {
    sub_100745074();
    if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.color(_:))
    {
      (*(v5 + 96))(v7, v4);

      v8 = *(sub_10000C518(&unk_100930940) + 48);
      v9 = sub_100748E34();
      (*(*(v9 - 8) + 8))(v7 + v8, v9);
      return sub_1005DB714(a1, a2);
    }

    (*(v5 + 8))(v7, v4);
  }

  return UIEdgeInsetsZero.top;
}

uint64_t sub_1005DC660(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = sub_100753804();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

double sub_1005DC6C8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (sub_1007450A4() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_100745164();
  if (v17)
  {
    v48 = v16;
    v49 = v17;
    v18 = sub_1007450B4();
    v50 = v10;
    if (v18)
    {
      v44 = sub_10074ECB4();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_1009202A0 != -1)
      {
        swift_once();
      }

      v21 = qword_100928AB8;
      v45 = a2;
      v46 = v20;
      if (v20)
      {
        v20 = sub_100753064();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v44 = v22;
        v24 = v22;
        v25 = [v24 font];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v27 = 0;
        }

        [v24 setFont:v27];

        v23 = v44;
      }

      [v21 sizeThatFits:{v13, v15}];
      v30 = v29;
      v11 = v31;

      v28 = v30 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];

      a2 = v45;
    }

    else
    {
      v28 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [a2 pageMarginInsets];
    if (a1 >= 1)
    {
      v32 = a1 - 1;
    }

    else
    {
      v32 = 0;
    }

    sub_1005DADA4(a1, v32, a1 < 1, a2);
    v33 = sub_1007450C4();
    v46 = type metadata accessor for TitleHeaderView(0);
    v34 = sub_100745174();
    v36 = v35;
    v37 = sub_100745104();
    v38 = sub_1005DC660(v33 != 0, a2);
    v39 = v50;
    (*(*v4 + 632))(a1, a2);
    LOBYTE(v42) = 1;
    sub_1001072B0(v34, v36, v37, v48, v49, v33, 0, 0, v13, v15, v28, v11, 0, 0, v38, v39, v42, a2);
    v13 = v40;

    sub_1001503E0(v39, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}

uint64_t sub_1005DCBA0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v6 = sub_1007457B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000010076E340 == a2 || (sub_100754754() & 1) != 0)
  {
    v10 = sub_100753064();
    v11 = sub_100753064();
    v12.super.isa = sub_100741704().super.isa;
    v13 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
LABEL_5:
    v14 = v13;

LABEL_6:
    return v14;
  }

  if (sub_100753094() == a1 && v16 == a2)
  {

    goto LABEL_20;
  }

  v18 = sub_100754754();

  if (v18)
  {
LABEL_20:
    sub_100741784();
    sub_100745074();
    v20 = (*(v7 + 88))(v9, v6);
    v21 = enum case for ShelfBackground.interactive(_:);
    v10 = sub_100753064();
    if (v20 == v21)
    {
      type metadata accessor for InteractiveTitleHeaderView();
      sub_1007539D4();
      v11 = sub_100753064();

      v12.super.isa = sub_100741704().super.isa;
      v13 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_1007539D4();
    v22 = sub_100753064();

    isa = sub_100741704().super.isa;
    v24 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v22 forIndexPath:isa];

    (*(v7 + 8))(v9, v6);
    return v24;
  }

  if (sub_100753094() == a1 && v19 == a2)
  {

LABEL_24:
    v26 = sub_100753064();
    type metadata accessor for InfiniteScrollFooterView();
    sub_1007539D4();
    v27 = sub_100753064();

    v12.super.isa = sub_100741704().super.isa;
    v14 = [v33 dequeueReusableSupplementaryViewOfKind:v26 withReuseIdentifier:v27 forIndexPath:v12.super.isa];

    goto LABEL_6;
  }

  v25 = sub_100754754();

  if (v25)
  {
    goto LABEL_24;
  }

  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x80000001007868B0;
  if (sub_100753204(v36))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = sub_100753064();
    sub_1007539D4();
    v30 = sub_100753064();

    v31 = v33;
    [v33 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v29 withReuseIdentifier:v30];

    v10 = sub_100753064();
    sub_1007539D4();
    v11 = sub_100753064();

    v12.super.isa = sub_100741704().super.isa;
    v13 = [v31 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
    goto LABEL_5;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_100754534(29);

  v34 = 0xD00000000000001BLL;
  v35 = 0x8000000100786900;
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  sub_1007531B4(v37);
  result = sub_100754644();
  __break(1u);
  return result;
}

void sub_1005DD194(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v165 = a5;
  v173 = a4;
  v169 = a1;
  v10 = *v6;
  v171 = a6;
  v172 = v10;
  v11 = sub_1007457B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v149 - v16);
  __chkstk_darwin(v18);
  v20 = &v149 - v19;
  v21 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v21 - 8);
  v164 = (&v149 - v22);
  v157 = sub_10074EAB4();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v154 = &v149 - v25;
  v163 = sub_10074F284();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v27 - 8);
  v160 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v153);
  v170 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100753094() == a2 && v30 == a3)
  {

LABEL_5:
    v32 = type metadata accessor for InteractiveTitleHeaderView();
    v33 = v169;
    v149 = v32;
    v34 = swift_dynamicCastClass();
    v151 = v11;
    v150 = v12;
    v152 = v20;
    if (v34)
    {
      v159 = v34;
      v35 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView);
      v36 = v33;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v35 = swift_dynamicCastClassUnconditional();
      v159 = 0;
    }

    sub_1007442C4();
    sub_100752764();
    v37 = v35;
    sub_100752D34();
    v167 = v7;
    v168 = v174[0];
    v38 = v7[2];
    v39 = v172[10];
    v40 = v172[12];
    v41 = sub_100745104();
    v42 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
    v43 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork);

    sub_100100BC8(v41);
    *(v37 + v42) = v41;

    sub_100100BDC(v43);

    v169 = v38;
    v44 = sub_100745174();
    v46 = v45;
    v47 = (v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
    v48 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
    v49 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);

    sub_1001005A8(v44, v46);
    *v47 = v44;
    v47[1] = v46;

    sub_10010063C(v48, v49);

    v50 = *(v37 + v42);

    if (v50)
    {
      v51 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView);
      if (v51)
      {
        v52 = *(v37 + v42);
        v53 = v170;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v54 = v160;
        sub_10015027C(v53, v160);

        v55 = v51;
        sub_1001503E0(v53, type metadata accessor for TitleHeaderView.Style);
        sub_1005E530C(v52, v54, v37);

        sub_1001503E0(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
        v56 = v161;
        sub_10074F294();
        sub_10074F254();
        (*(v162 + 8))(v56, v163);
        sub_10074F374();
        sub_1007433C4();
        sub_1005E6BD0(&qword_100925570, &type metadata accessor for ArtworkView);
        sub_100744204();
      }
    }

    v58 = sub_1007450C4();
    v59 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
    v60 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork);

    sub_100100D68(v58);
    *(v37 + v59) = v58;

    sub_100100E7C(v60);

    v158 = *(v37 + v59);
    v61 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
    v62 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
    sub_100745164();
    if (v63)
    {
      v64 = sub_100753064();
    }

    else
    {
      v64 = 0;
    }

    [v62 setText:v64];

    v65 = *(v37 + v59);
    if (v65)
    {
      v66 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView);
      if (v66)
      {
        v67 = v170;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v68 = v160;
        sub_10015027C(v67 + *(v153 + 20), v160);

        v69 = v66;
        sub_1001503E0(v67, type metadata accessor for TitleHeaderView.Style);
        sub_1005E530C(v65, v68, v37);
        sub_1001503E0(v68, type metadata accessor for TitleHeaderView.TextConfiguration);
        v70 = v161;
        sub_10074F294();
        sub_10074F254();
        (*(v162 + 8))(v70, v163);
        sub_10074F374();
        sub_1007433C4();
        sub_1005E6BD0(&qword_100925570, &type metadata accessor for ArtworkView);
        sub_100744204();
      }
    }

    v71 = v158 != 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v39;
    v73 = v172;
    v74 = v172[11];
    *(v72 + 24) = v74;
    *(v72 + 32) = v40;
    *(v72 + 40) = v71;
    *(v72 + 48) = v73;
    v75 = (v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v75 = sub_1005E68F0;
    v75[1] = v72;

    [*(v37 + v61) setNumberOfLines:{sub_1005DC660(v71, v37)}];

    v76 = v173;
    v77 = sub_1007450B4();
    v166 = v39;
    if (v77)
    {
      v172 = v74;
      sub_100745154();
      v78 = v154;
      sub_10074EAD4();

      v79 = v155;
      sub_10074EA94();
      sub_1005E6BD0(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
      v80 = v157;
      v81 = sub_100754324();
      v82 = *(v156 + 8);
      v82(v79, v80);
      v82(v78, v80);
      if (v81)
      {
        sub_100016C60(0, &qword_100923500);
        v83 = sub_100753DD4();
        v84 = v83;
      }

      else
      {
        v83 = 0;
      }

      v92 = v37;
      v93 = sub_10074ECB4();
      v94 = v164;
      *v164 = v93;
      v94[1] = v95;
      v94[2] = v83;
      v96 = type metadata accessor for Accessory();
      v94[3] = 0;
      v94[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v96 - 8) + 56))(v94, 0, 1, v96);
      (*((swift_isaMask & *v92) + 0x268))(v94, v171);

      sub_10000C8CC(v94, &qword_10093FDB0);
      v97 = swift_allocObject();
      v91 = v167;
      swift_weakInit();
      v98 = swift_allocObject();
      v99 = v172;
      v98[2] = v166;
      v98[3] = v99;
      v98[4] = v40;
      v98[5] = v97;
      v100 = v173;
      v98[6] = v173;
      v101 = (v92 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      v76 = v100;
      v102 = *v101;
      *v101 = sub_1005E6948;
      v101[1] = v98;

      sub_1000164A8(v102);
    }

    else
    {
      v85 = type metadata accessor for Accessory();
      v86 = v164;
      (*(*(v85 - 8) + 56))(v164, 1, 1, v85);
      v87 = *((swift_isaMask & *v37) + 0x268);
      v88 = v37;
      v87(v86, v171);
      sub_10000C8CC(v86, &qword_10093FDB0);
      v89 = (v88 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      v90 = *(v88 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      *v89 = 0;
      v89[1] = 0;
      sub_1000164A8(v90);
      v91 = v167;
    }

    v103 = v170;
    v104 = v165;
    (*(*v91 + 632))(v76, v165);
    (*((swift_isaMask & *v37) + 0x1C8))(v103);
    v105 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
    v106 = v105;

    v107 = v159;
    if (v105)
    {
      sub_100745184();
      if (v108)
      {
        v109 = sub_100753064();
      }

      else
      {
        v109 = 0;
      }

      [v106 setText:v109];

      v91 = v167;
    }

    if (v107)
    {
      swift_beginAccess();
      if (*(v91[8] + 16))
      {
        sub_100412104(v76);
        if (v110)
        {
          v175 = v149;
          v176 = &off_1008683F8;
          v174[0] = v107;
          v107 = v107;

          sub_1001F80E0(v174);

          sub_10000C8CC(v174, &unk_1009242D0);
        }
      }
    }

    else
    {
      v111 = v152;
      sub_100745074();
      [v37 setOverrideUserInterfaceStyle:sub_1002EF020()];
      (*(v150 + 8))(v111, v151);
    }

    [v104 pageMarginInsets];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    if (v76 >= 1)
    {
      v119 = v76 - 1;
    }

    else
    {
      v119 = 0;
    }

    v120 = v112 + sub_1005DADA4(v76, v119, v76 < 1, v104);
    [v37 setLayoutMargins:{v120, v114, v116, v118}];
    v121 = (v37 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
    *v121 = v120;
    v121[1] = v114;
    v121[2] = v116;
    v121[3] = v118;
    [v37 setNeedsLayout];
    [v37 setNeedsLayout];

    return;
  }

  v31 = sub_100754754();

  if (v31)
  {
    goto LABEL_5;
  }

  if (sub_100753094() == a2 && v57 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v123 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC22SubscribePageExtension24InfiniteScrollFooterView_activityIndicator);

    [v123 startAnimating];
    return;
  }

  v152 = v20;
  v122 = sub_100754754();

  if (v122)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (sub_1007539C4() == a2 && v124 == a3)
  {
    goto LABEL_48;
  }

  v125 = sub_100754754();

  if (v125)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (sub_1007539C4() == a2 && v132 == a3)
  {
    goto LABEL_48;
  }

  v133 = sub_100754754();

  if (v133)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (sub_1007539C4() == a2 && v134 == a3)
  {
LABEL_48:

LABEL_50:
    v126 = v169;
    swift_getObjectType();
    v127 = swift_conformsToProtocol2();
    if (v127 && v126)
    {
      v128 = v127;
      ObjectType = swift_getObjectType();
      v130 = v126;
      v131 = v152;
      sub_100745074();
      (*(v128 + 8))(v131, v171, ObjectType, v128, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v12 + 8))(v131, v11);
    }

    return;
  }

  v135 = sub_100754754();

  if (v135)
  {
    goto LABEL_50;
  }

  v136 = type metadata accessor for InteractiveSectionBackgroundView();
  if (sub_1007539C4() == a2 && v137 == a3)
  {
  }

  else
  {
    v138 = sub_100754754();

    if ((v138 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (sub_100754754() & 1) != 0)
      {
        sub_100745074();
        if ((*(v12 + 88))(v17, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v17, v11);
          return;
        }

        (*(v12 + 96))(v17, v11);
        v144 = *v17;
        v145 = *(sub_10000C518(&unk_100930940) + 48);
        v146 = sub_100748E34();
        (*(*(v146 - 8) + 8))(v17 + v145, v146);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x800000010076E340 != a3) && (sub_100754754() & 1) == 0 || sub_1007450A4() < 1)
        {
          return;
        }

        if (__OFSUB__(sub_1007450A4(), 1))
        {
          __break(1u);
          return;
        }

        sub_100745074();
        if ((*(v12 + 88))(v14, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v14, v11);
          return;
        }

        (*(v12 + 96))(v14, v11);
        v144 = *v14;
        v147 = *(sub_10000C518(&unk_100930940) + 48);
        v148 = sub_100748E34();
        (*(*(v148 - 8) + 8))(v14 + v147, v148);
      }

      [v169 setBackgroundColor:v144];

      return;
    }
  }

  v139 = v169;
  v140 = swift_dynamicCastClass();
  if (v140)
  {
    v141 = v140;
    swift_beginAccess();
    if (*(v7[8] + 16))
    {
      sub_100412104(v173);
      if (v142)
      {
        v175 = v136;
        v176 = &off_1008761A8;
        v174[0] = v141;
        v143 = v139;

        sub_1001F80E0(v174);

        sub_10000C8CC(v174, &unk_1009242D0);
      }
    }
  }
}

uint64_t sub_1005DE7FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_100745124();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005DE894(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10074E984();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_100745084();
  v10 = sub_10034E47C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      sub_100745084();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10000C8CC(v5, &unk_100933370);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1005DEAB8(uint64_t a1, void *a2)
{
  v4 = sub_10000C518(&qword_10093A8D0);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_1007457B4();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (sub_1007450A4() < 1)
  {
    return 0;
  }

  sub_100745074();
  v19 = v66;
  sub_100745074();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_1005E6BD0(&qword_100940610, &type metadata accessor for ShelfBackground);
    v42 = sub_100753014();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = sub_1007457A4();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = sub_1007457A4();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = sub_100753014();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10000C8CC(v6, &qword_10093A8D0);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_10000C518(&unk_100930940);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = sub_100748E34();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_100016C60(0, &qword_100923500);
  LOBYTE(v34) = sub_100753FC4();

  if (v34)
  {
    v37 = sub_100748E34();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = sub_100748E34();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

uint64_t sub_1005DF298@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v206 = a3;
  v198 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v198);
  v182 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v167 - v6;
  v204 = sub_100747144();
  v197 = *(v204 - 8);
  __chkstk_darwin(v204);
  v194 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v203 = &v167 - v9;
  v10 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v10 - 8);
  v193 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v192 = &v167 - v13;
  __chkstk_darwin(v14);
  v202 = &v167 - v15;
  __chkstk_darwin(v16);
  v201 = &v167 - v17;
  v18 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v18 - 8);
  v181 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v180 = &v167 - v21;
  __chkstk_darwin(v22);
  v188 = &v167 - v23;
  __chkstk_darwin(v24);
  v187 = &v167 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v195 = *(v26 - 8);
  v196 = v26;
  __chkstk_darwin(v26);
  v179 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v167 - v29;
  __chkstk_darwin(v30);
  v177 = &v167 - v31;
  __chkstk_darwin(v32);
  v191 = (&v167 - v33);
  __chkstk_darwin(v34);
  v186 = &v167 - v35;
  __chkstk_darwin(v36);
  v185 = &v167 - v37;
  __chkstk_darwin(v38);
  v184 = &v167 - v39;
  __chkstk_darwin(v40);
  v200 = (&v167 - v41);
  v42 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v42 - 8);
  v169 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v172 = &v167 - v45;
  __chkstk_darwin(v46);
  v171 = &v167 - v47;
  __chkstk_darwin(v48);
  v174 = &v167 - v49;
  __chkstk_darwin(v50);
  v190 = &v167 - v51;
  __chkstk_darwin(v52);
  v168 = &v167 - v53;
  __chkstk_darwin(v54);
  v170 = &v167 - v55;
  __chkstk_darwin(v56);
  v173 = &v167 - v57;
  __chkstk_darwin(v58);
  v176 = &v167 - v59;
  __chkstk_darwin(v60);
  v175 = &v167 - v61;
  __chkstk_darwin(v62);
  v199 = &v167 - v63;
  v64 = sub_1007457B4();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v167 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v167 - v69;
  v71 = sub_100745064();
  v72 = 0;
  if (v71)
  {
    v72 = sub_100745154();
  }

  v207 = v72;
  sub_100745174();
  v74 = v73;
  if (v73)
  {
  }

  v183 = v74;
  sub_100745184();
  v76 = v75;
  if (v75)
  {
  }

  sub_100745074();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = sub_1007457A4();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v205;
  v80 = sub_1005DEAB8(a1, v205);
  v81 = sub_1005DE894(a1, v79);
  if (v77)
  {
    sub_10071ED04(v76 != 0, v206);
  }

  v83 = v76;
  v167 = v76;
  if (v80)
  {
    if (v207)
    {

      v84 = sub_10074EB44();

      v85 = v184;
      v86 = v199;
      if (v84)
      {
        sub_1007439D4();

        v87 = 0;
      }

      else
      {
        v87 = 1;
      }
    }

    else
    {
      v87 = 1;
      v85 = v184;
      v86 = v199;
    }

    v91 = sub_1007439C4();
    v92 = *(v91 - 8);
    (*(v92 + 56))(v86, v87, 1, v91);
    v93 = sub_100747134();
    v194 = *(v93 - 1);
    (*(v194 + 7))(v201, 1, 1, v93);
    v205 = v93;
    if (v83)
    {
      v94 = (v92 + 48);
      v95 = v86;
      if (v80 == 1)
      {
        v96 = v175;
        sub_100016B4C(v95, v175, &unk_100928A90);
        if ((*v94)(v96, 1, v91) == 1)
        {
          sub_10000C8CC(v96, &unk_100928A90);
          v97 = 0;
        }

        else
        {
          v97 = sub_100743964();
          (*(v92 + 8))(v96, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_1003AFADC(v97, v200);

        if (qword_100920B30 != -1)
        {
          swift_once();
        }

        v109 = qword_100980048;
      }

      else
      {
        v101 = v176;
        sub_100016B4C(v95, v176, &unk_100928A90);
        if ((*v94)(v101, 1, v91) == 1)
        {
          sub_10000C8CC(v101, &unk_100928A90);
          v102 = 0;
        }

        else
        {
          v102 = sub_100743964();
          (*(v92 + 8))(v101, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_1003AFADC(v102, v200);

        if (qword_100920B20 != -1)
        {
          swift_once();
        }

        v109 = qword_100980018;
      }

      v110 = sub_10000D0FC(v107, v109);
      sub_10015027C(v110, v85);
      if (qword_100920AE0 != -1)
      {
        swift_once();
      }

      v111 = 0;
      v112 = qword_10097FF58;
      v113 = v108;
    }

    else
    {
      if (v80 == 1)
      {
        v98 = v86;
        v99 = v173;
        sub_100016B4C(v98, v173, &unk_100928A90);
        if ((*(v92 + 48))(v99, 1, v91) == 1)
        {
          sub_10000C8CC(v99, &unk_100928A90);
          v100 = 0;
        }

        else
        {
          v100 = sub_100743964();
          (*(v92 + 8))(v99, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_1003AFADC(v100, v200);

        if (qword_100920B28 != -1)
        {
          swift_once();
        }

        v111 = 1;
        v112 = qword_100980030;
      }

      else
      {
        v103 = (v92 + 48);
        if (v183)
        {
          v104 = v86;
          v105 = v170;
          sub_100016B4C(v104, v170, &unk_100928A90);
          if ((*v103)(v105, 1, v91) == 1)
          {
            sub_10000C8CC(v105, &unk_100928A90);
            v106 = 0;
          }

          else
          {
            v106 = sub_100743964();
            (*(v92 + 8))(v105, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_1003AFAE4(v106, v200);

          if (qword_100920B18 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_100980000;
        }

        else
        {
          v130 = v86;
          v131 = v168;
          sub_100016B4C(v130, v168, &unk_100928A90);
          if ((*v103)(v131, 1, v91) == 1)
          {
            sub_10000C8CC(v131, &unk_100928A90);
            v132 = 0;
          }

          else
          {
            v132 = sub_100743964();
            (*(v92 + 8))(v131, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_1003AFADC(v132, v200);

          if (qword_100920B10 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_10097FFE8;
        }
      }

      v113 = v85;
    }

    LODWORD(v196) = v83 != 0;
    v152 = sub_10000D0FC(v107, v112);
    sub_10015027C(v152, v113);
    (*(v195 + 56))(v108, v111, 1, v107);
    v153 = v200;
    v154 = v185;
    sub_10015027C(v200, v185);
    v155 = v186;
    sub_10015027C(v85, v186);
    v156 = v188;
    sub_100016B4C(v108, v188, &unk_100940600);
    v157 = v201;
    sub_100016B4C(v201, v202, &qword_100928A88);
    v158 = v197;
    v159 = v204;
    (*(v197 + 104))(v203, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
    sub_100016C60(0, &qword_100923500);
    v195 = sub_100753DB4();

    sub_10000C8CC(v157, &qword_100928A88);
    sub_10000C8CC(v108, &unk_100940600);
    sub_1001503E0(v85, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001503E0(v153, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C8CC(v199, &unk_100928A90);
    v160 = v198;
    v161 = *(v198 + 32);
    v162 = v189;
    sub_1003ED344(v154, v189, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1003ED344(v155, v162 + v160[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100066578(v156, v162 + v160[6], &unk_100940600);
    *(v162 + v160[7]) = 0;
    *(v162 + v161) = 0;
    *(v162 + v160[9]) = v196;
    *(v162 + v160[14]) = 0x4030000000000000;
    *(v162 + v160[12]) = 0;
    *(v162 + v160[13]) = v195;
    v163 = v202;
    (*(v158 + 32))(v162 + v160[11], v203, v159);
    v164 = v194;
    v165 = v205;
    if ((*(v194 + 6))(v163, 1, v205) == 1)
    {
      sub_10000C8CC(v163, &qword_100928A88);
      if (v167)
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v164 + 13))(v162 + v160[10], *v166, v165);
    }

    else
    {
      (*(v164 + 4))(v162 + v160[10], v163, v165);
    }

    v151 = v162;
    return sub_1003ED344(v151, v206, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v205) = v81;
  if (v207)
  {

    v88 = sub_10074EB44();

    v89 = v190;
    if (v88)
    {
      sub_1007439D4();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }
  }

  else
  {
    v90 = 1;
    v89 = v190;
  }

  v114 = sub_1007439C4();
  v115 = *(v114 - 8);
  (*(v115 + 56))(v89, v90, 1, v114);
  v116 = sub_100747134();
  v202 = *(v116 - 8);
  (*(v202 + 56))(v192, 1, 1, v116);
  v117 = (v115 + 48);
  v203 = v116;
  if (v183)
  {
    if (v83)
    {
      v118 = v174;
      sub_100016B4C(v89, v174, &unk_100928A90);
      if ((*v117)(v118, 1, v114) == 1)
      {
        sub_10000C8CC(v118, &unk_100928A90);
        v119 = 0;
      }

      else
      {
        v119 = sub_100743964();
        (*(v115 + 8))(v118, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_1003AFADC(v119, v191);

      if (qword_100920B08 != -1)
      {
        swift_once();
      }

      v127 = qword_10097FFD0;
LABEL_68:
      v133 = sub_10000D0FC(v124, v127);
      sub_10015027C(v133, v126);
      if (qword_100920AE0 != -1)
      {
        swift_once();
      }

      v134 = 0;
      v135 = qword_10097FF58;
      v136 = v125;
      goto LABEL_84;
    }

    v122 = v171;
    sub_100016B4C(v89, v171, &unk_100928A90);
    if ((*v117)(v122, 1, v114) == 1)
    {
      sub_10000C8CC(v122, &unk_100928A90);
      v123 = 0;
    }

    else
    {
      v123 = sub_100743964();
      (*(v115 + 8))(v122, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_1003AFADC(v123, v191);

    if (qword_100920AF0 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_10097FF88;
  }

  else
  {
    if (v83)
    {
      v120 = v172;
      sub_100016B4C(v89, v172, &unk_100928A90);
      if ((*v117)(v120, 1, v114) == 1)
      {
        sub_10000C8CC(v120, &unk_100928A90);
        v121 = 0;
      }

      else
      {
        v121 = sub_100743964();
        (*(v115 + 8))(v120, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_1003AFADC(v121, v191);

      if (qword_100920B00 != -1)
      {
        swift_once();
      }

      v127 = qword_10097FFB8;
      goto LABEL_68;
    }

    v128 = v169;
    sub_100016B4C(v89, v169, &unk_100928A90);
    if ((*v117)(v128, 1, v114) == 1)
    {
      sub_10000C8CC(v128, &unk_100928A90);
      v129 = 0;
    }

    else
    {
      v129 = sub_100743964();
      (*(v115 + 8))(v128, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_1003AFADC(v129, v191);

    if (qword_100920AE8 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_10097FF70;
  }

  v136 = v126;
LABEL_84:
  LODWORD(v201) = v83 != 0;
  v137 = sub_10000D0FC(v124, v135);
  sub_10015027C(v137, v136);
  (*(v195 + 56))(v125, v134, 1, v124);
  v138 = v191;
  v139 = v178;
  sub_10015027C(v191, v178);
  v140 = v179;
  sub_10015027C(v126, v179);
  v141 = v181;
  sub_100016B4C(v125, v181, &unk_100940600);
  v142 = v192;
  sub_100016B4C(v192, v193, &qword_100928A88);
  v143 = v197;
  (*(v197 + 104))(v194, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
  sub_100016C60(0, &qword_100923500);
  v200 = sub_100753DB4();

  sub_10000C8CC(v142, &qword_100928A88);
  sub_10000C8CC(v125, &unk_100940600);
  sub_1001503E0(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001503E0(v138, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(v190, &unk_100928A90);
  v144 = v198;
  v145 = *(v198 + 32);
  v146 = v182;
  sub_1003ED344(v139, v182, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v140, v146 + v144[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100066578(v141, v146 + v144[6], &unk_100940600);
  *(v146 + v144[7]) = v205 & 1;
  *(v146 + v145) = 0;
  *(v146 + v144[9]) = v201;
  *(v146 + v144[14]) = 0x4030000000000000;
  *(v146 + v144[12]) = 0;
  *(v146 + v144[13]) = v200;
  (*(v143 + 32))(v146 + v144[11], v194, v204);
  v147 = v193;
  v149 = v202;
  v148 = v203;
  if ((*(v202 + 48))(v193, 1, v203) == 1)
  {
    sub_10000C8CC(v147, &qword_100928A88);
    if (v167)
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v149 + 104))(v146 + v144[10], *v150, v148);
  }

  else
  {
    (*(v149 + 32))(v146 + v144[10], v147, v148);
  }

  v151 = v146;
  return sub_1003ED344(v151, v206, type metadata accessor for TitleHeaderView.Style);
}

double sub_1005E0BF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = sub_10074EAB4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = sub_100749A94();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = sub_1007417F4();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_10000C518(&qword_100925340);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = sub_10074E984();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  sub_100745084();
  v27 = sub_10034E47C();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    sub_100741784();
    if (sub_100745064())
    {
      v29 = sub_100741784();
      v30 = sub_1005E5ABC(v29);
    }

    else
    {
      v30 = 0;
    }

    sub_100741784();
    if (sub_100745064())
    {
      sub_100741784();
      v90 = sub_100745154();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_1005D5EE4(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    sub_100745144();
    (*(v80 + 16))(v18, a1, v82);
    sub_100752ED4();
    v97 = *(v4 + 24);

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    sub_100752E74();
    sub_100749A84();
    v37 = sub_1005E5098(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      sub_100749A44();
      v41 = v93;
      sub_100729558(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    sub_100745114();
    v44 = sub_100744E64();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10000C8CC(v43, &unk_100925330);
    if (v45 != 1)
    {
      v46 = v94;
      sub_100749A24();
      v47 = v93;
      sub_100729558(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = sub_1007537D4();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      sub_100749A74();
      v54 = v93;
      sub_100729558(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!sub_100741784())
    {
      v56 = v94;
      sub_100749A34();
      v57 = v93;
      sub_100729558(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      sub_10074EAD4();

      v60 = v77;
      sub_10074EA74();
      sub_1005E6BD0(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
      v61 = v79;
      v62 = sub_100754324();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        sub_100749A64();
        v65 = v93;
        sub_100729558(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_10000C620(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_1005E15C0(uint64_t a1, void *a2)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100741784();
  sub_100745084();
  v8 = sub_10074E964();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_1003861D0(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10074E964();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1003DD60C(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10074E964();
    v20 = sub_100753064();

    isa = sub_100741704().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

void sub_1005E1808(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v241 = a6;
  v272 = *&a5;
  v271 = a4;
  v262 = a3;
  v276 = a2;
  v273 = *v6;
  v260 = sub_1007528E4();
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v228 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_100752914();
  v263 = *(v267 - 1);
  __chkstk_darwin(v267);
  v233 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v254 = &v221 - v11;
  __chkstk_darwin(v12);
  v251 = &v221 - v13;
  __chkstk_darwin(v14);
  v230 = &v221 - v15;
  __chkstk_darwin(v16);
  v231 = &v221 - v17;
  v236 = sub_1007416B4();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_1007457B4();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_10074EAB4();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v21 - 8);
  v23 = &v221 - v22;
  v265 = sub_100749A94();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v25 = &v221 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v244 = &v221 - v27;
  __chkstk_darwin(v28);
  v266 = &v221 - v29;
  v30 = sub_1007417F4();
  v256 = *(v30 - 8);
  __chkstk_darwin(v30);
  v240 = v31;
  v255 = &v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v32 - 8);
  v253 = sub_10000C518(&unk_100925370);
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v261 = &v221 - v33;
  v270 = sub_10074E984();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v35 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v257 = &v221 - v37;
  __chkstk_darwin(v38);
  v40 = &v221 - v39;
  v41 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v41 - 8);
  v237 = &v221 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v243 = &v221 - v44;
  __chkstk_darwin(v45);
  v242 = &v221 - v46;
  __chkstk_darwin(v47);
  v229 = &v221 - v48;
  __chkstk_darwin(v49);
  v232 = &v221 - v50;
  __chkstk_darwin(v51);
  v53 = &v221 - v52;
  v54 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v54 - 8);
  v238 = &v221 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v239 = &v221 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v221 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v274 = v6;
  v275 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v226 = v30;
    v258 = a1;
    v70 = v273[10];
    v71 = v276;
    v268 = v273[12];
    if ((sub_1007450F4() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v225 = swift_conformsToProtocol2();
    if (!v225)
    {
      __break(1u);
      return;
    }

    sub_100745144();
    v72 = *(v256 + 16);
    v223 = v256 + 16;
    v222 = v72;
    v72(v255, v71, v226);
    sub_100752ED4();
    v282 = *(v274 + 24);

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    v73 = v276;
    sub_100752944();
    sub_100749A84();
    v74 = sub_1005E4B64(v73, v271);
    v75 = v244;
    if (v74)
    {
      sub_100749A44();
      sub_100729558(v75, v25);
      v76 = *(v264 + 8);
      v77 = v265;
      v76(v25, v265);
      v76(v75, v77);
    }

    sub_100745114();
    v78 = sub_100744E64();
    v79 = (*(*(v78 - 8) + 48))(v23, 1, v78);
    sub_10000C8CC(v23, &unk_100925330);
    if (v79 != 1)
    {
      sub_100749A24();
      sub_100729558(v75, v25);
      v80 = *(v264 + 8);
      v81 = v265;
      v80(v25, v265);
      v80(v75, v81);
    }

    if (!sub_100741784())
    {
      sub_100749A34();
      sub_100729558(v75, v25);
      v82 = *(v264 + 8);
      v83 = v265;
      v82(v25, v265);
      v82(v75, v83);
    }

    sub_100741784();
    v84 = v257;
    sub_100745084();
    sub_100741784();
    v227 = v70;
    v85 = sub_100745044();
    v86 = v269;
    v87 = v84;
    v88 = v270;
    (*(v269 + 16))(v35, v87, v270);
    v89 = (*(v86 + 88))(v35, v88);
    v90 = v272;
    if (v89 == enum case for Shelf.ContentType.smallLockup(_:) || v89 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v89 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v89 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v89 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v89 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v89 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v89 == enum case for Shelf.ContentType.editorialCard(_:) || v89 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v89 == enum case for Shelf.ContentType.brick(_:) || v89 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v89 == enum case for Shelf.ContentType.reviews(_:) || v89 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v89 == enum case for Shelf.ContentType.framedVideo(_:) || v89 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v89 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v89 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v89 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v89 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v89 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v89 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v89 == enum case for Shelf.ContentType.posterLockup(_:) || v89 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v89 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v89 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v269 + 8))(v35, v270);
              goto LABEL_43;
            }

LABEL_38:
            if (v85)
            {
              goto LABEL_39;
            }

LABEL_43:
            v106 = [v271 traitCollection];
            v107 = sub_1007537D4();

            if ((v107 & 1) == 0)
            {
              v224 = 0;
              v110 = v266;
LABEL_46:
              v114 = v258;
              ObjectType = swift_getObjectType();
              sub_100741784();
              sub_100745154();
              v116 = v245;
              sub_10074EAD4();

              (*(v225 + 80))(&v284, v261, COERCE_DOUBLE(*&v90), v110, v116, v271, ObjectType);
              (*(v246 + 8))(v116, v247);
              sub_100741784();
              v117 = v248;
              sub_100745074();
              v118 = sub_1002EF020();
              (*(v249 + 8))(v117, v250);
              if ([v114 overrideUserInterfaceStyle] != v118)
              {
                [v114 setOverrideUserInterfaceStyle:v118];
              }

              sub_10000C824(&v284, &v282);
              *(&v280 + 1) = sub_100016C60(0, &qword_100925390);
              *&v279 = v114;
              v119 = v114;
              sub_1007430A4();
              sub_10000C8CC(&v282, &unk_1009297F0);
              sub_10000C620(&v279);
              swift_getObjectType();
              v120 = swift_conformsToProtocol2();
              if (v120 && v114)
              {
                v121 = v120;
                v122 = swift_getObjectType();
                v123 = *(v121 + 8);
                v124 = v119;
                v125 = v123(v122, v121);
                v114 = v258;
                v126 = v125;
                v127 = (v125 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
                v128 = *(v125 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
                *v127 = 0;
                v127[1] = 0;
                sub_1000164A8(v128);
                [*&v126[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              v129 = swift_conformsToProtocol2();
              v130 = v251;
              if (v129 && v114)
              {
                v131 = swift_allocObject();
                swift_weakInit();
                v132 = v255;
                v133 = v226;
                v222(v255, v276, v226);
                v134 = v256;
                v135 = (*(v256 + 80) + 40) & ~*(v256 + 80);
                v136 = (v240 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
                v137 = swift_allocObject();
                *(v137 + 2) = v227;
                v138 = v268;
                *(v137 + 3) = v273[11];
                *(v137 + 4) = v138;
                (*(v134 + 32))(&v137[v135], v132, v133);
                v114 = v258;
                *&v137[v136] = v131;
                v139 = &v119[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v140 = *&v119[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                *v139 = sub_1005E6820;
                v139[1] = v137;
                v141 = v119;

                sub_1000164A8(v140);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_10074B184();
                sub_100752764();
                v142 = v119;
                sub_100752D34();
                v143 = v282;
                swift_getObjectType();
                v144 = sub_100748FB4();
                v145 = v142;
                sub_10074B164();

                v114 = v258;
              }

              *&v277[0] = v119;
              *(&v277[0] + 1) = v225;
              v146 = v119;
              sub_10000C518(&qword_1009253A0);
              sub_10000C518(&qword_1009253A8);
              if (swift_dynamicCast())
              {
                sub_100012160(&v279, &v282);
                sub_10074B184();
                sub_100752764();
                sub_100752D34();
                v147 = v279;
                sub_10000C888(&v282, v283);
                sub_10074B584();

                sub_10000C620(&v282);
              }

              else
              {
                v281 = 0;
                v280 = 0u;
                v279 = 0u;
                sub_10000C8CC(&v279, &unk_1009253B0);
              }

              v148 = v224;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_100748464();
                v149 = v146;
                sub_100752754();
                v150 = v282;
                if (v282)
                {
                  v151 = v149;
                  v152 = v150;
                  sub_100748454();

                  v149 = v152;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_10000C824(&v284, &v279);
                v153 = v146;
                sub_10000C518(&qword_1009242A0);
                sub_10000C518(&qword_1009253C0);
                if (swift_dynamicCast())
                {
                  sub_100012160(v277, &v282);
                  sub_10000C888(&v282, v283);
                  if (sub_10074CA14())
                  {
                    sub_100748644();
                  }

                  v114 = v258;
                  swift_getObjectType();
                  sub_100747AF4();

                  sub_10000C620(&v282);
                }

                else
                {

                  v278 = 0;
                  memset(v277, 0, sizeof(v277));
                  sub_10000C8CC(v277, &qword_1009253C8);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                swift_getObjectType();
                v154 = v146;
                sub_10074BFE4();
              }

              sub_100741784();
              sub_100745154();
              if (v148)
              {
                v155 = [v241 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v156 = swift_dynamicCastClass();
                if (v156)
                {
                  v157 = v156;
                  v158 = [v156 _orthogonalScrollingSections];
                  v159 = v234;
                  sub_100741684();

                  v114 = v258;
                  v160 = sub_100741784();
                  v161 = sub_1007416A4(v160);
                  (*(v235 + 8))(v159, v236);
                  if (v161)
                  {
                    [v146 frame];
                    v163 = v162;
                    v165 = v164;
                    v167 = v166;
                    v169 = v168;
                    v170 = v232;
                    sub_10074EAC4();
                    v171 = v263;
                    v172 = *(v263 + 48);
                    v173 = v267;
                    if (v172(v170, 1, v267) == 1)
                    {

                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_10000C620(&v284);
                      sub_10000C8CC(v170, &unk_100925380);
                      return;
                    }

                    v193 = v231;
                    v275 = *(v171 + 32);
                    v275(v231, v170, v173);
                    sub_10000C824(&v284, &v282);
                    sub_10000C888(&v282, v283);
                    v194 = v229;
                    sub_100752F24();
                    if (v172(v194, 1, v173) == 1)
                    {

                      (*(v263 + 8))(v193, v173);
                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_10000C620(&v284);
                      v182 = v194;
                      goto LABEL_92;
                    }

                    v271 = v165;
                    v272 = v163;
                    v275(v230, v194, v173);
                    [v157 _layoutFrameForSection:sub_100741784()];
                    v196 = v195;
                    v198 = v197;
                    v200 = v199;
                    v202 = v201;
                    [v157 _offsetForOrthogonalScrollingSection:sub_100741784()];
                    v204 = v274;
                    v205 = *(v274 + 112);
                    v206 = v266;
                    if (v205)
                    {
                      v207 = v203;

                      v208 = v231;
                      v209 = v196;
                      sub_100749544();

                      v210 = v263;
                      v211 = v198;
                      if (*(v204 + 112))
                      {

                        v212 = v228;
                        sub_1007528F4();
                        v279 = v207;
                        *&v280 = v200;
                        *(&v280 + 1) = v202;
                        LOBYTE(v281) = 0;
                        v205 = sub_100749524();

                        (*(v259 + 8))(v212, v260);
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v213 = v253;
                      v214 = v252;
                      v215 = v272;
                    }

                    else
                    {
                      v209 = v196;
                      v210 = v263;
                      v213 = v253;
                      v214 = v252;
                      v208 = v231;
                      v215 = v272;
                      v211 = v198;
                    }

                    v216 = *&v271;
                    v285.origin.x = v209;
                    v285.origin.y = v211;
                    v285.size.width = v200;
                    v285.size.height = v202;
                    v217 = -CGRectGetMinY(v285);
                    v286.origin.x = v215;
                    v286.origin.y = v216;
                    v286.size.width = v167;
                    v286.size.height = v169;
                    CGRectOffset(v286, 0.0, v217);
                    v218 = v230;
                    if (v205)
                    {

                      sub_100749544();
                    }

                    sub_1005E60F4(&v282, v205);

                    v219 = *(v210 + 8);
                    v220 = v267;
                    v219(v218, v267);
                    v219(v208, v220);
                    (*(v269 + 8))(v257, v270);
                    (*(v264 + 8))(v206, v265);
                    (*(v214 + 8))(v261, v213);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                v174 = v146;
                [v174 frame];
                sub_1005DA55C();
                swift_getObjectType();
                sub_10074D3A4();
              }

              v175 = v242;
              sub_10074EAC4();
              v176 = v263;
              v177 = *(v263 + 48);
              v178 = v267;
              if (v177(v175, 1, v267) == 1)
              {
                v179 = v175;
                v180 = v266;
                sub_10000C8CC(v179, &unk_100925380);
              }

              else
              {
                (*(v176 + 32))(v130, v175, v178);
                if (*(v274 + 112))
                {

                  [v146 frame];
                  sub_100749594();
                }

                v180 = v266;
                (*(v176 + 8))(v130, v178);
              }

              sub_10000C824(&v284, &v282);
              sub_10000C888(&v282, v283);
              v181 = v243;
              sub_100752F24();
              if (v177(v181, 1, v178) == 1)
              {

                (*(v269 + 8))(v257, v270);
                (*(v264 + 8))(v180, v265);
                (*(v252 + 8))(v261, v253);
                sub_10000C620(&v284);
                v182 = v181;
LABEL_92:
                sub_10000C8CC(v182, &unk_100925380);
LABEL_103:
                sub_10000C620(&v282);
                return;
              }

              v183 = v178;
              (*(v176 + 32))(v254, v181, v178);
              v184 = v237;
              sub_10074EAC4();
              if (v177(v184, 1, v178) == 1)
              {
                sub_10000C8CC(v184, &unk_100925380);
                v185 = 1;
                v186 = v260;
                v187 = v259;
                v188 = v239;
              }

              else
              {
                v188 = v239;
                sub_1007528F4();
                (*(v176 + 8))(v184, v183);
                v185 = 0;
                v186 = v260;
                v187 = v259;
              }

              v189 = v238;
              (*(v187 + 56))(v188, v185, 1, v186);
              if (*(v274 + 112))
              {
                sub_100016B4C(v188, v189, &qword_10093FDE0);
                v190 = (*(v187 + 48))(v189, 1, v186);

                if (v190 == 1)
                {
                  sub_10000C8CC(v189, &qword_10093FDE0);
                }

                else
                {
                  sub_1007528D4();
                  (*(v187 + 8))(v189, v186);
                }

                v191 = v233;
                sub_1007528A4();

                [v146 frame];
                sub_100749544();

                (*(v176 + 8))(v191, v267);
              }

              [v146 frame];
              v192 = *(v274 + 112);

              sub_1005E60F4(&v282, v192);

              sub_10000C8CC(v188, &qword_10093FDE0);
              (*(v176 + 8))(v254, v267);
              (*(v269 + 8))(v257, v270);
              (*(v264 + 8))(v180, v265);
              (*(v252 + 8))(v261, v253);
LABEL_102:
              sub_10000C620(&v284);
              goto LABEL_103;
            }

            sub_100749A74();
            v224 = 0;
LABEL_45:
            v108 = v75;
            v109 = v75;
            v110 = v266;
            sub_100729558(v108, v25);
            v111 = *(v264 + 8);
            v112 = v25;
            v113 = v265;
            v111(v112, v265);
            v111(v109, v113);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    sub_100749A54();
    v224 = 1;
    goto LABEL_45;
  }

  v268 = v62;
  v63 = a1;
  sub_100741784();
  v264 = v273[12];
  v64 = sub_100745154();
  v266 = v63;
  [v63 frame];
  v265 = sub_1005DA55C();
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v65 = v284;
  sub_100748464();
  sub_100752754();
  v66 = v284;
  sub_10074EAC4();
  v67 = v263;
  v68 = v267;
  if ((*(v263 + 48))(v53, 1, v267) == 1)
  {
    sub_10000C8CC(v53, &unk_100925380);
    v69 = 1;
  }

  else
  {
    sub_1007528F4();
    (*(v67 + 8))(v53, v68);
    v69 = 0;
  }

  (*(v259 + 56))(v61, v69, 1, v260);
  v91 = v65;
  v267 = v91;
  v92 = v274;
  v93 = sub_1005DA824(v61, v65, v66, 0);

  sub_10000C8CC(v61, &qword_10093FDE0);
  type metadata accessor for ShelfComponentContainerDelegate();
  v273 = v66;
  v94 = v275;
  swift_unknownObjectRetain();
  v95 = sub_100741784();
  sub_10074E994();
  v96 = sub_10074E954();
  (*(v269 + 8))(v40, v270);
  v97 = *(v92 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v263 = v93;
  v99 = sub_1004E0DCC(v94, v95, v96 & 1, v97, v93, &protocol witness table for CompoundScrollObserver, v265);

  swift_unknownObjectRetain();

  v100 = v266;
  v101 = swift_getObjectType();
  v102 = sub_100741784();
  WitnessTable = swift_getWitnessTable();
  v104 = v268;
  v105 = *(v268 + 32);

  v105(v64, v102, v262, *&v272, v99, WitnessTable, v271, v101, v104);

  swift_unknownObjectRelease();
}