uint64_t sub_1000B7DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v102 = a4;
  v6 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v92 = &v79 - v8;
  v9 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v79 - v13;
  v14 = sub_1000077C8(&qword_100176DA0, &qword_10011F2D0);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  __chkstk_darwin(v14);
  v97 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v79 - v18;
  v19 = type metadata accessor for AirDropUIButtonStyle.Style();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = *(v87 + 64);
  __chkstk_darwin(v19);
  v86 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AirDropUIButtonStyle();
  v90 = *(v22 - 8);
  v91 = v22;
  v23 = *(v90 + 64);
  __chkstk_darwin(v22);
  v89 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SFAirDrop.DeclineAction();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AirDropAskRequestView();
  v103 = *(v82 - 8);
  v29 = *(v103 + 64);
  __chkstk_darwin(v82);
  v104 = v30;
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v84 = *(v85 - 8);
  v32 = *(v84 + 64);
  __chkstk_darwin(v85);
  v81 = &v79 - v33;
  v93 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v34 = *(v93 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v93);
  v83 = &v79 - v36;
  v37 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v105 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v79 - v41;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v34 + 56))(v42, 1, 1, v93);
    v43 = a2;
    v44 = v31;
  }

  else
  {
    sub_1000C83E8(a2, v31);
    (*(v26 + 16))(&v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25);
    v45 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v46 = *(v26 + 80);
    v80 = v34;
    v44 = v31;
    v47 = a2;
    v48 = (v104 + v46 + v45) & ~v46;
    v49 = swift_allocObject();
    sub_1000C8DD8(v44, v49 + v45, type metadata accessor for AirDropAskRequestView);
    v50 = (*(v26 + 32))(v49 + v48, v28, v25);
    __chkstk_darwin(v50);
    v51 = v81;
    Button.init(action:label:)();
    if (*(v47 + *(v82 + 24)))
    {
      v52 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v52 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v87 + 104))(v86, *v52, v88);
    v53 = v89;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v54 = v83;
    v55 = v85;
    v56 = v91;
    View.buttonStyle<A>(_:)();
    (*(v90 + 8))(v53, v56);
    (*(v84 + 8))(v51, v55);
    v57 = v80;
    v58 = v93;
    (*(v80 + 32))(v42, v54, v93);
    (*(v57 + 56))(v42, 0, 1, v58);
    v43 = v47;
  }

  v59 = v42;
  v107 = v94;
  sub_1000C83E8(v43, v44);
  v60 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v61 = swift_allocObject();
  sub_1000C8DD8(v44, v61 + v60, type metadata accessor for AirDropAskRequestView);

  sub_1000077C8(&qword_100176DA8, &unk_10011F2D8);
  type metadata accessor for UUID();
  sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  sub_1000199C8(&qword_100176DB0, &qword_100176DA8, &unk_10011F2D8);
  sub_1000C8488();
  sub_1000199C8(&qword_100176DB8, &unk_100172F90, &qword_100118CE0);
  ForEach<>.init(_:content:)();
  if (sub_1000ACDD0())
  {
    v62 = v92;
    sub_1000BE958(v92);
    v64 = v95;
    v63 = v96;
    v65 = v98;
    (*(v95 + 32))(v98, v62, v96);
    v66 = 0;
  }

  else
  {
    v66 = 1;
    v65 = v98;
    v64 = v95;
    v63 = v96;
  }

  (*(v64 + 56))(v65, v66, 1, v63);
  v67 = v105;
  sub_100007BA4(v42, v105, &qword_1001769D0, &unk_10011EE38);
  v68 = v65;
  v69 = v99;
  v70 = v100;
  v71 = *(v99 + 16);
  v72 = v97;
  v73 = v106;
  v71(v97, v106, v100);
  v74 = v101;
  sub_100007BA4(v68, v101, &qword_1001769F0, &qword_10011EE60);
  v104 = v59;
  v75 = v102;
  sub_100007BA4(v67, v102, &qword_1001769D0, &unk_10011EE38);
  v76 = sub_1000077C8(&qword_100176DC8, &qword_10011F320);
  v71((v75 + *(v76 + 48)), v72, v70);
  sub_100007BA4(v74, v75 + *(v76 + 64), &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v68, &qword_1001769F0, &qword_10011EE60);
  v77 = *(v69 + 8);
  v77(v73, v70);
  sub_1000159AC(v104, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v74, &qword_1001769F0, &qword_10011EE60);
  v77(v72, v70);
  return sub_1000159AC(v105, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000B8974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v102 = a4;
  v6 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v92 = &v79 - v8;
  v9 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v79 - v13;
  v14 = sub_1000077C8(&qword_1001769F8, &qword_10011EE68);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  __chkstk_darwin(v14);
  v97 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v79 - v18;
  v19 = type metadata accessor for AirDropUIButtonStyle.Style();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = *(v87 + 64);
  __chkstk_darwin(v19);
  v86 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AirDropUIButtonStyle();
  v90 = *(v22 - 8);
  v91 = v22;
  v23 = *(v90 + 64);
  __chkstk_darwin(v22);
  v89 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SFAirDrop.DeclineAction();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AirDropAskRequestView();
  v103 = *(v82 - 8);
  v29 = *(v103 + 64);
  __chkstk_darwin(v82);
  v104 = v30;
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v84 = *(v85 - 8);
  v32 = *(v84 + 64);
  __chkstk_darwin(v85);
  v81 = &v79 - v33;
  v93 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v34 = *(v93 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v93);
  v83 = &v79 - v36;
  v37 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v105 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v79 - v41;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v34 + 56))(v42, 1, 1, v93);
    v43 = a2;
    v44 = v31;
  }

  else
  {
    sub_1000C83E8(a2, v31);
    (*(v26 + 16))(&v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25);
    v45 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v46 = *(v26 + 80);
    v80 = v34;
    v44 = v31;
    v47 = a2;
    v48 = (v104 + v46 + v45) & ~v46;
    v49 = swift_allocObject();
    sub_1000C8DD8(v44, v49 + v45, type metadata accessor for AirDropAskRequestView);
    v50 = (*(v26 + 32))(v49 + v48, v28, v25);
    __chkstk_darwin(v50);
    v51 = v81;
    Button.init(action:label:)();
    if (*(v47 + *(v82 + 24)))
    {
      v52 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v52 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v87 + 104))(v86, *v52, v88);
    v53 = v89;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v54 = v83;
    v55 = v85;
    v56 = v91;
    View.buttonStyle<A>(_:)();
    (*(v90 + 8))(v53, v56);
    (*(v84 + 8))(v51, v55);
    v57 = v80;
    v58 = v93;
    (*(v80 + 32))(v42, v54, v93);
    (*(v57 + 56))(v42, 0, 1, v58);
    v43 = v47;
  }

  v59 = v42;
  v107 = v94;
  sub_1000C83E8(v43, v44);
  v60 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v61 = swift_allocObject();
  sub_1000C8DD8(v44, v61 + v60, type metadata accessor for AirDropAskRequestView);

  sub_1000077C8(&qword_100176A00, &qword_10011EE70);
  type metadata accessor for UUID();
  sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  sub_1000199C8(&qword_100176A10, &qword_100176A00, &qword_10011EE70);
  sub_1000C8488();
  sub_1000199C8(&qword_100176A40, &qword_100176A48, &qword_10011EE90);
  ForEach<>.init(_:content:)();
  if (sub_1000ACDD0())
  {
    v62 = v92;
    sub_1000BE958(v92);
    v64 = v95;
    v63 = v96;
    v65 = v98;
    (*(v95 + 32))(v98, v62, v96);
    v66 = 0;
  }

  else
  {
    v66 = 1;
    v65 = v98;
    v64 = v95;
    v63 = v96;
  }

  (*(v64 + 56))(v65, v66, 1, v63);
  v67 = v105;
  sub_100007BA4(v42, v105, &qword_1001769D0, &unk_10011EE38);
  v68 = v65;
  v69 = v99;
  v70 = v100;
  v71 = *(v99 + 16);
  v72 = v97;
  v73 = v106;
  v71(v97, v106, v100);
  v74 = v101;
  sub_100007BA4(v68, v101, &qword_1001769F0, &qword_10011EE60);
  v104 = v59;
  v75 = v102;
  sub_100007BA4(v67, v102, &qword_1001769D0, &unk_10011EE38);
  v76 = sub_1000077C8(&qword_100176B18, &qword_10011F078);
  v71((v75 + *(v76 + 48)), v72, v70);
  sub_100007BA4(v74, v75 + *(v76 + 64), &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v68, &qword_1001769F0, &qword_10011EE60);
  v77 = *(v69 + 8);
  v77(v73, v70);
  sub_1000159AC(v104, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v74, &qword_1001769F0, &qword_10011EE60);
  v77(v72, v70);
  return sub_1000159AC(v105, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000B94F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v102 = a4;
  v6 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  __chkstk_darwin(v6);
  v92 = &v79 - v8;
  v9 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v79 - v13;
  v14 = sub_1000077C8(&qword_100176C48, &qword_10011F180);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  __chkstk_darwin(v14);
  v97 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v79 - v18;
  v19 = type metadata accessor for AirDropUIButtonStyle.Style();
  v87 = *(v19 - 8);
  v88 = v19;
  v20 = *(v87 + 64);
  __chkstk_darwin(v19);
  v86 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AirDropUIButtonStyle();
  v90 = *(v22 - 8);
  v91 = v22;
  v23 = *(v90 + 64);
  __chkstk_darwin(v22);
  v89 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SFAirDrop.DeclineAction();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AirDropAskRequestView();
  v103 = *(v82 - 8);
  v29 = *(v103 + 64);
  __chkstk_darwin(v82);
  v104 = v30;
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v84 = *(v85 - 8);
  v32 = *(v84 + 64);
  __chkstk_darwin(v85);
  v81 = &v79 - v33;
  v93 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v34 = *(v93 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v93);
  v83 = &v79 - v36;
  v37 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v105 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v79 - v41;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v34 + 56))(v42, 1, 1, v93);
    v43 = a2;
    v44 = v31;
  }

  else
  {
    sub_1000C83E8(a2, v31);
    (*(v26 + 16))(&v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25);
    v45 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v46 = *(v26 + 80);
    v80 = v34;
    v44 = v31;
    v47 = a2;
    v48 = (v104 + v46 + v45) & ~v46;
    v49 = swift_allocObject();
    sub_1000C8DD8(v44, v49 + v45, type metadata accessor for AirDropAskRequestView);
    v50 = (*(v26 + 32))(v49 + v48, v28, v25);
    __chkstk_darwin(v50);
    v51 = v81;
    Button.init(action:label:)();
    if (*(v47 + *(v82 + 24)))
    {
      v52 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v52 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v87 + 104))(v86, *v52, v88);
    v53 = v89;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v54 = v83;
    v55 = v85;
    v56 = v91;
    View.buttonStyle<A>(_:)();
    (*(v90 + 8))(v53, v56);
    (*(v84 + 8))(v51, v55);
    v57 = v80;
    v58 = v93;
    (*(v80 + 32))(v42, v54, v93);
    (*(v57 + 56))(v42, 0, 1, v58);
    v43 = v47;
  }

  v59 = v42;
  v107 = v94;
  sub_1000C83E8(v43, v44);
  v60 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v61 = swift_allocObject();
  sub_1000C8DD8(v44, v61 + v60, type metadata accessor for AirDropAskRequestView);

  sub_1000077C8(&qword_100176C50, &qword_10011F188);
  type metadata accessor for UUID();
  sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  sub_1000199C8(&qword_100176C58, &qword_100176C50, &qword_10011F188);
  sub_1000C8488();
  sub_1000199C8(&qword_100176C60, &qword_100176C68, &qword_10011F190);
  ForEach<>.init(_:content:)();
  if (sub_1000ACDD0())
  {
    v62 = v92;
    sub_1000BE958(v92);
    v64 = v95;
    v63 = v96;
    v65 = v98;
    (*(v95 + 32))(v98, v62, v96);
    v66 = 0;
  }

  else
  {
    v66 = 1;
    v65 = v98;
    v64 = v95;
    v63 = v96;
  }

  (*(v64 + 56))(v65, v66, 1, v63);
  v67 = v105;
  sub_100007BA4(v42, v105, &qword_1001769D0, &unk_10011EE38);
  v68 = v65;
  v69 = v99;
  v70 = v100;
  v71 = *(v99 + 16);
  v72 = v97;
  v73 = v106;
  v71(v97, v106, v100);
  v74 = v101;
  sub_100007BA4(v68, v101, &qword_1001769F0, &qword_10011EE60);
  v104 = v59;
  v75 = v102;
  sub_100007BA4(v67, v102, &qword_1001769D0, &unk_10011EE38);
  v76 = sub_1000077C8(&qword_100176C98, &qword_10011F1E0);
  v71((v75 + *(v76 + 48)), v72, v70);
  sub_100007BA4(v74, v75 + *(v76 + 64), &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v68, &qword_1001769F0, &qword_10011EE60);
  v77 = *(v69 + 8);
  v77(v73, v70);
  sub_1000159AC(v104, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v74, &qword_1001769F0, &qword_10011EE60);
  v77(v72, v70);
  return sub_1000159AC(v105, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000BA074(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.DeclineAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007D20(v9, qword_100176610);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "User declined AirDrop", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v8, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000BA320@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v116 = a3;
  v114 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  v3 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v90 - v4);
  v108 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = &v90 - v6;
  v113 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  v8 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v109 = &v90 - v9;
  v100 = type metadata accessor for AirDropUIButtonStyle.Style();
  v98 = *(v100 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v100);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AirDropUIButtonStyle();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v106);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AirDropAskRequestView();
  v94 = *(v97 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v105);
  v96 = &v90 - v16;
  v107 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v104 = *(v107 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v107);
  v19 = &v90 - v18;
  v20 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v93 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v90 - v30;
  (*(v27 + 16))(&v90 - v30, v110, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  v112 = v31;
  if (v32 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v92 = v19;
    v110 = v7;
    (*(v27 + 96))(v31, v26);
    v33 = v21[4];
    v33(v25, v31, v20);
    v34 = v95;
    sub_1000C83E8(v111, v95);
    v91 = v21;
    v36 = v21 + 2;
    v35 = v21[2];
    v37 = v93;
    v35(v93, v25, v20);
    v38 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v39 = (v14 + v38 + *(v36 + 64)) & ~*(v36 + 64);
    v40 = swift_allocObject();
    sub_1000C8DD8(v34, v40 + v38, type metadata accessor for AirDropAskRequestView);
    v41 = (v33)(v40 + v39, v37, v20);
    __chkstk_darwin(v41);
    v42 = v111;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v43 = v96;
    Button.init(action:label:)();
    v44 = *(v42 + *(v97 + 24));
    v45 = (v98 + 104);
    v90 = v25;
    if (v44)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v45)(v101, *v46, v100);
    }

    else
    {
      (*v45)(v101, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v100);
    }

    v79 = v110;
    v80 = v92;
    v111 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
    v81 = v102;
    AirDropUIButtonStyle.init(style:)();
    v82 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v83 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v85 = v105;
    v84 = v106;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v81, v84);
    (*(v99 + 8))(v43, v85);
    v86 = v104;
    v87 = v107;
    (*(v104 + 16))(v79, v80, v107);
    swift_storeEnumTagMultiPayload();
    v117 = v85;
    v118 = v84;
    v119 = v82;
    v120 = v83;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v88, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v88, &qword_100176A28, &qword_10011EE80);
    (*(v86 + 8))(v80, v87);
    (v91[1])(v90, v20);
    v89 = type metadata accessor for UUID();
    return (*(*(v89 - 8) + 8))(&v112[v111], v89);
  }

  else if (v32 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v27 + 96))(v31, v26);
    v111 = *(sub_1000077C8(&qword_100175310, &qword_10011CF58) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v50 = v7;
    v52 = v51;
    v117 = static Color.red.getter();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10004BBC8(v47, v49, v52 & 1);

    *v50 = v53;
    *(v50 + 1) = v55;
    v50[16] = v57 & 1;
    *(v50 + 3) = v59;
    v110 = v59;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v53, v55, v57 & 1);
    v60 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v61 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);

    v117 = v105;
    v118 = v106;
    v119 = v60;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v53, v55, v57 & 1);

    sub_1000159AC(v62, &qword_100176A28, &qword_10011EE80);
    v63 = type metadata accessor for UUID();
    v64 = v112;
    (*(*(v63 - 8) + 8))(&v112[v111], v63);
    v65 = sub_1000077C8(&qword_100175278, &unk_10011F2F0);
    return (*(*(v65 - 8) + 8))(v64, v65);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v117 = static Color.red.getter();
    v72 = Text.foregroundStyle<A>(_:)();
    v74 = v73;
    v76 = v75;
    v111 = v77;
    sub_10004BBC8(v67, v69, v71 & 1);

    v78 = v115;
    *v115 = v72;
    v78[1] = v74;
    *(v78 + 16) = v76 & 1;
    v78[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v112, v26);
  }
}

uint64_t sub_1000BB144@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v116 = a3;
  v114 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  v3 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v90 - v4);
  v108 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = &v90 - v6;
  v113 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  v8 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v109 = &v90 - v9;
  v100 = type metadata accessor for AirDropUIButtonStyle.Style();
  v98 = *(v100 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v100);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AirDropUIButtonStyle();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v106);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AirDropAskRequestView();
  v94 = *(v97 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v105);
  v96 = &v90 - v16;
  v107 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v104 = *(v107 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v107);
  v19 = &v90 - v18;
  v20 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v93 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = sub_1000077C8(&qword_100176A48, &qword_10011EE90);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v90 - v30;
  (*(v27 + 16))(&v90 - v30, v110, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  v112 = v31;
  if (v32 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v92 = v19;
    v110 = v7;
    (*(v27 + 96))(v31, v26);
    v33 = v21[4];
    v33(v25, v31, v20);
    v34 = v95;
    sub_1000C83E8(v111, v95);
    v91 = v21;
    v36 = v21 + 2;
    v35 = v21[2];
    v37 = v93;
    v35(v93, v25, v20);
    v38 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v39 = (v14 + v38 + *(v36 + 64)) & ~*(v36 + 64);
    v40 = swift_allocObject();
    sub_1000C8DD8(v34, v40 + v38, type metadata accessor for AirDropAskRequestView);
    v41 = (v33)(v40 + v39, v37, v20);
    __chkstk_darwin(v41);
    v42 = v111;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v43 = v96;
    Button.init(action:label:)();
    v44 = *(v42 + *(v97 + 24));
    v45 = (v98 + 104);
    v90 = v25;
    if (v44)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v45)(v101, *v46, v100);
    }

    else
    {
      (*v45)(v101, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v100);
    }

    v79 = v110;
    v80 = v92;
    v111 = *(sub_1000077C8(&qword_100176AD8, &qword_10011EF68) + 48);
    v81 = v102;
    AirDropUIButtonStyle.init(style:)();
    v82 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v83 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v85 = v105;
    v84 = v106;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v81, v84);
    (*(v99 + 8))(v43, v85);
    v86 = v104;
    v87 = v107;
    (*(v104 + 16))(v79, v80, v107);
    swift_storeEnumTagMultiPayload();
    v117 = v85;
    v118 = v84;
    v119 = v82;
    v120 = v83;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v88, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v88, &qword_100176A28, &qword_10011EE80);
    (*(v86 + 8))(v80, v87);
    (v91[1])(v90, v20);
    v89 = type metadata accessor for UUID();
    return (*(*(v89 - 8) + 8))(&v112[v111], v89);
  }

  else if (v32 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v27 + 96))(v31, v26);
    v111 = *(sub_1000077C8(&qword_100176A88, &qword_10011EF30) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v50 = v7;
    v52 = v51;
    v117 = static Color.red.getter();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10004BBC8(v47, v49, v52 & 1);

    *v50 = v53;
    *(v50 + 1) = v55;
    v50[16] = v57 & 1;
    *(v50 + 3) = v59;
    v110 = v59;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v53, v55, v57 & 1);
    v60 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v61 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);

    v117 = v105;
    v118 = v106;
    v119 = v60;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v53, v55, v57 & 1);

    sub_1000159AC(v62, &qword_100176A28, &qword_10011EE80);
    v63 = type metadata accessor for UUID();
    v64 = v112;
    (*(*(v63 - 8) + 8))(&v112[v111], v63);
    v65 = sub_1000077C8(&qword_100176A90, &qword_10011EF38);
    return (*(*(v65 - 8) + 8))(v64, v65);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v117 = static Color.red.getter();
    v72 = Text.foregroundStyle<A>(_:)();
    v74 = v73;
    v76 = v75;
    v111 = v77;
    sub_10004BBC8(v67, v69, v71 & 1);

    v78 = v115;
    *v115 = v72;
    v78[1] = v74;
    *(v78 + 16) = v76 & 1;
    v78[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v112, v26);
  }
}

uint64_t sub_1000BBF68@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v116 = a3;
  v114 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  v3 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v90 - v4);
  v108 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = &v90 - v6;
  v113 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  v8 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v109 = &v90 - v9;
  v100 = type metadata accessor for AirDropUIButtonStyle.Style();
  v98 = *(v100 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v100);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AirDropUIButtonStyle();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v106);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AirDropAskRequestView();
  v94 = *(v97 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v105);
  v96 = &v90 - v16;
  v107 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v104 = *(v107 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v107);
  v19 = &v90 - v18;
  v20 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v93 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = sub_1000077C8(&qword_100176C68, &qword_10011F190);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v90 - v30;
  (*(v27 + 16))(&v90 - v30, v110, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  v112 = v31;
  if (v32 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v92 = v19;
    v110 = v7;
    (*(v27 + 96))(v31, v26);
    v33 = v21[4];
    v33(v25, v31, v20);
    v34 = v95;
    sub_1000C83E8(v111, v95);
    v91 = v21;
    v36 = v21 + 2;
    v35 = v21[2];
    v37 = v93;
    v35(v93, v25, v20);
    v38 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v39 = (v14 + v38 + *(v36 + 64)) & ~*(v36 + 64);
    v40 = swift_allocObject();
    sub_1000C8DD8(v34, v40 + v38, type metadata accessor for AirDropAskRequestView);
    v41 = (v33)(v40 + v39, v37, v20);
    __chkstk_darwin(v41);
    v42 = v111;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v43 = v96;
    Button.init(action:label:)();
    v44 = *(v42 + *(v97 + 24));
    v45 = (v98 + 104);
    v90 = v25;
    if (v44)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v45)(v101, *v46, v100);
    }

    else
    {
      (*v45)(v101, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v100);
    }

    v79 = v110;
    v80 = v92;
    v111 = *(sub_1000077C8(&qword_100176C90, &qword_10011F1B8) + 48);
    v81 = v102;
    AirDropUIButtonStyle.init(style:)();
    v82 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v83 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v85 = v105;
    v84 = v106;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v81, v84);
    (*(v99 + 8))(v43, v85);
    v86 = v104;
    v87 = v107;
    (*(v104 + 16))(v79, v80, v107);
    swift_storeEnumTagMultiPayload();
    v117 = v85;
    v118 = v84;
    v119 = v82;
    v120 = v83;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v88, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v88, &qword_100176A28, &qword_10011EE80);
    (*(v86 + 8))(v80, v87);
    (v91[1])(v90, v20);
    v89 = type metadata accessor for UUID();
    return (*(*(v89 - 8) + 8))(&v112[v111], v89);
  }

  else if (v32 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v27 + 96))(v31, v26);
    v111 = *(sub_1000077C8(&qword_100176C80, &qword_10011F1A8) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v50 = v7;
    v52 = v51;
    v117 = static Color.red.getter();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10004BBC8(v47, v49, v52 & 1);

    *v50 = v53;
    *(v50 + 1) = v55;
    v50[16] = v57 & 1;
    *(v50 + 3) = v59;
    v110 = v59;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v53, v55, v57 & 1);
    v60 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v61 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);

    v117 = v105;
    v118 = v106;
    v119 = v60;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v53, v55, v57 & 1);

    sub_1000159AC(v62, &qword_100176A28, &qword_10011EE80);
    v63 = type metadata accessor for UUID();
    v64 = v112;
    (*(*(v63 - 8) + 8))(&v112[v111], v63);
    v65 = sub_1000077C8(&qword_100176C88, &qword_10011F1B0);
    return (*(*(v65 - 8) + 8))(v64, v65);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v117 = static Color.red.getter();
    v72 = Text.foregroundStyle<A>(_:)();
    v74 = v73;
    v76 = v75;
    v111 = v77;
    sub_10004BBC8(v67, v69, v71 & 1);

    v78 = v115;
    *v115 = v72;
    v78[1] = v74;
    *(v78 + 16) = v76 & 1;
    v78[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v112, v26);
  }
}

uint64_t sub_1000BCD8C(uint64_t a1)
{
  v2 = v1;
  v39 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v7 = &v35 - v6;
  v8 = type metadata accessor for AirDropAskRequestView();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v38 = a1;
  if (sub_1000C3F50(a1, &unk_100173C98, &unk_10011A300) == 0xD000000000000010 && 0x8000000100124D20 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_6:
      if (qword_100172220 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100007D20(v17, qword_100176610);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "User accepted AirDrop", v20, 2u);
      }

      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
      v22 = v39;
      (*(v4 + 16))(v7, v38, v39);
      v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v24 = swift_allocObject();
      (*(v4 + 32))(v24 + v23, v7, v22);
      goto LABEL_16;
    }
  }

  v16 = *(v2 + *(v8 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v40)
  {
    goto LABEL_6;
  }

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100007D20(v25, qword_100176610);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "User chose to show sensitive content", v28, 2u);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v30 = v37;
  sub_1000C83E8(v2, v37);
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_1000C8DD8(v30, v32 + v31, type metadata accessor for AirDropAskRequestView);
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_10011F310;
  *(v33 + 24) = v32;
LABEL_16:
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v13, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000BD32C(uint64_t a1)
{
  v2 = v1;
  v39 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v7 = &v35 - v6;
  v8 = type metadata accessor for AirDropAskRequestView();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v38 = a1;
  if (sub_1000C3F50(a1, &qword_100176A80, &qword_10011EF28) == 0xD000000000000010 && 0x8000000100124D20 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_6:
      if (qword_100172220 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100007D20(v17, qword_100176610);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "User accepted AirDrop", v20, 2u);
      }

      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
      v22 = v39;
      (*(v4 + 16))(v7, v38, v39);
      v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v24 = swift_allocObject();
      (*(v4 + 32))(v24 + v23, v7, v22);
      goto LABEL_16;
    }
  }

  v16 = *(v2 + *(v8 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v40)
  {
    goto LABEL_6;
  }

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100007D20(v25, qword_100176610);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "User chose to show sensitive content", v28, 2u);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v30 = v37;
  sub_1000C83E8(v2, v37);
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_1000C8DD8(v30, v32 + v31, type metadata accessor for AirDropAskRequestView);
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_10011EFD8;
  *(v33 + 24) = v32;
LABEL_16:
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v13, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000BD8CC(uint64_t a1)
{
  v2 = v1;
  v39 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v7 = &v35 - v6;
  v8 = type metadata accessor for AirDropAskRequestView();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v38 = a1;
  if (sub_1000C3F50(a1, &qword_100176C78, &qword_10011F1A0) == 0xD000000000000010 && 0x8000000100124D20 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_6:
      if (qword_100172220 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100007D20(v17, qword_100176610);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "User accepted AirDrop", v20, 2u);
      }

      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
      v22 = v39;
      (*(v4 + 16))(v7, v38, v39);
      v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v24 = swift_allocObject();
      (*(v4 + 32))(v24 + v23, v7, v22);
      goto LABEL_16;
    }
  }

  v16 = *(v2 + *(v8 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v40)
  {
    goto LABEL_6;
  }

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100007D20(v25, qword_100176610);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "User chose to show sensitive content", v28, 2u);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v30 = v37;
  sub_1000C83E8(v2, v37);
  v31 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v32 = swift_allocObject();
  sub_1000C8DD8(v30, v32 + v31, type metadata accessor for AirDropAskRequestView);
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_10011F1D0;
  *(v33 + 24) = v32;
LABEL_16:
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v13, &qword_100172F50, &qword_10011E500);
}

__n128 sub_1000BDE6C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v8 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  if (sub_1000C3F50(a1, a2, a3) == 0xD000000000000010 && 0x8000000100124D20 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v18 = *(v4 + *(type metadata accessor for AirDropAskRequestView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v81.n128_u8[0] != 1)
  {
LABEL_7:
    sub_1000077C8(a2, a3);
    SFAirDrop.AcceptAction.Single.buttonConfiguration.getter();
    v25 = v59;
    v24 = v60;
    v26 = (*(v59 + 88))(v11, v60);
    if (v26 == enum case for SFAirDrop.ButtonConfiguration.text(_:))
    {
      (*(v25 + 96))(v11, v24);
      v27 = v11[1];
      v81.n128_u64[0] = *v11;
      v81.n128_u64[1] = v27;
      sub_10004BB74();
      v28 = Text.init<A>(_:)();
      v30 = v29;
      v62.n128_u64[0] = v28;
      v62.n128_u64[1] = v29;
      v32 = v31 & 1;
      v63.n128_u64[0] = v31 & 1;
      v63.n128_u64[1] = v33;
      LOBYTE(v64) = 0;
      sub_100078974(v28, v29, v31 & 1);

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v67) = v83[0];
      LOBYTE(v69[0]) = 0;
      *&v83[1] = v71;
      *&v83[17] = v72;
      v83[33] = 0;
      sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
      sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
      sub_1000C8960();
      sub_1000C89E4();
      _ConditionalContent<>.init(storage:)();
      v34 = v28;
      v35 = v30;
      v36 = v32;
    }

    else
    {
      if (v26 == enum case for SFAirDrop.ButtonConfiguration.symbol(_:))
      {
        (*(v25 + 96))(v11, v24);
        v37 = *v11;
        v38 = v11[1];
        v62 = Image.init(systemName:)();
        v63 = 0uLL;
        LOBYTE(v64) = 1;

        _ConditionalContent<>.init(storage:)();
        LOBYTE(v67) = v83[0];
        LOBYTE(v69[0]) = 0;
        *&v83[1] = v71;
        *&v83[17] = v72;
        v83[33] = 0;
        sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
        sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
        sub_1000C8960();
        sub_1000C89E4();
        _ConditionalContent<>.init(storage:)();

        goto LABEL_12;
      }

      if (v26 != enum case for SFAirDrop.ButtonConfiguration.symbolText(_:))
      {
        LocalizedStringKey.init(stringLiteral:)();
        v53 = Text.init(_:tableName:bundle:comment:)();
        v55 = v54;
        v57 = v56 & 1;
        v70 = v56 & 1;
        v66 = 1;
        v81.n128_u64[0] = v53;
        v81.n128_u64[1] = v54;
        v82.n128_u8[0] = v56 & 1;
        *(v82.n128_u32 + 1) = v69[0];
        v82.n128_u32[1] = *(v69 + 3);
        v82.n128_u64[1] = v58;
        *v83 = v67;
        *&v83[16] = v68;
        v83[32] = 1;
        sub_100078974(v53, v54, v56 & 1);

        sub_1000077C8(&qword_100175378, &qword_10011EF60);
        sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60);
        _ConditionalContent<>.init(storage:)();
        *v83 = v73;
        *&v83[16] = v74;
        v83[32] = v75;
        v81 = v71;
        v82 = v72;
        v76 = 1;
        v83[33] = 1;
        sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
        sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
        sub_1000C8960();
        sub_1000C89E4();
        _ConditionalContent<>.init(storage:)();
        sub_10004BBC8(v53, v55, v57);

        *v83 = v64;
        *&v83[16] = *v65;
        *&v83[32] = *&v65[16];
        v81 = v62;
        v82 = v63;
        sub_100007BA4(&v81, &v62, &qword_100176AE0, &qword_10011EF70);
        (*(v59 + 8))(v11, v60);
        goto LABEL_13;
      }

      (*(v25 + 96))(v11, v24);
      v42 = *v11;
      v43 = v11[1];
      v44 = v11[2];
      v45 = v11[3];
      v59 = static VerticalAlignment.center.getter();

      v46 = Image.init(systemName:)();
      v81.n128_u64[0] = v44;
      v81.n128_u64[1] = v45;
      sub_10004BB74();

      v47 = Text.init<A>(_:)();
      v49 = v48;
      LOBYTE(v44) = v50;
      v52 = v51;

      sub_100078974(v47, v49, v44 & 1);

      sub_10004BBC8(v47, v49, v44 & 1);

      v76 = 1;
      v70 = v44 & 1;
      LOBYTE(v69[0]) = 0;
      v81 = v59;
      v82.n128_u8[0] = 1;
      v60 = v46;
      v82.n128_u64[1] = v46;
      *v83 = v47;
      *&v83[8] = v49;
      v83[16] = v44 & 1;
      *&v83[24] = v52;
      v83[32] = 0;

      sub_100078974(v47, v49, v44 & 1);

      sub_1000077C8(&qword_100175378, &qword_10011EF60);
      sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60);
      _ConditionalContent<>.init(storage:)();
      *v83 = v73;
      *&v83[16] = v74;
      v83[32] = v75;
      v81 = v71;
      v82 = v72;
      LOBYTE(v67) = 1;
      v83[33] = 1;
      sub_1000077C8(&qword_100176AC0, &qword_10011EF50);
      sub_1000077C8(&qword_100176AD0, &qword_10011EF58);
      sub_1000C8960();
      sub_1000C89E4();
      _ConditionalContent<>.init(storage:)();

      v34 = v47;
      v35 = v49;
      v36 = v44 & 1;
    }

    sub_10004BBC8(v34, v35, v36);

LABEL_12:
    *v83 = v64;
    *&v83[16] = *v65;
    *&v83[32] = *&v65[16];
    v81 = v62;
    v82 = v63;
    sub_100007BA4(&v81, &v62, &qword_100176AE0, &qword_10011EF70);
LABEL_13:
    v77[2] = *v83;
    v77[3] = *&v83[16];
    v78 = *&v83[32];
    v77[0] = v81;
    v77[1] = v82;
    v79[2] = *v83;
    v79[3] = *&v83[16];
    v80 = *&v83[32];
    v79[0] = v81;
    v79[1] = v82;
    v71.n128_u8[0] = 1;
    v83[34] = 1;
    sub_100007BA4(v77, &v62, &qword_100176AE0, &qword_10011EF70);
    sub_1000077C8(&qword_100176AB0, &qword_10011EF48);
    sub_1000C88D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v79, &qword_100176AE0, &qword_10011EF70);
    sub_1000159AC(v77, &qword_100176AB0, &qword_10011EF48);
    *v83 = v64;
    *&v83[16] = *v65;
    *&v83[31] = *&v65[15];
    v81 = v62;
    v82 = v63;
    goto LABEL_14;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v81.n128_u64[0] = String.init(localized:table:bundle:locale:comment:)();
  v81.n128_u64[1] = v19;
  sub_10004BB74();
  v20 = Text.init<A>(_:)();
  v79[0].n128_u8[0] = v21 & 1;
  LOBYTE(v77[0]) = 0;
  v62.n128_u64[0] = v20;
  v62.n128_u64[1] = v22;
  v63.n128_u8[0] = v21 & 1;
  v63.n128_u64[1] = v23;
  v65[18] = 0;
  sub_1000077C8(&qword_100176AB0, &qword_10011EF48);
  sub_1000C88D4();
  _ConditionalContent<>.init(storage:)();
LABEL_14:
  result = v82;
  v40 = *&v83[16];
  v41 = v61;
  *(v61 + 32) = *v83;
  *(v41 + 48) = v40;
  *(v41 + 63) = *&v83[31];
  *v41 = v81;
  *(v41 + 16) = result;
  return result;
}

uint64_t sub_1000BE958@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for AirDropUIButtonStyle.Style();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AirDropUIButtonStyle();
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirDropAskRequestView();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v14 = sub_1000077C8(&qword_100175340, &qword_10011CF70);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  sub_1000C83E8(v1, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_1000C8DD8(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AirDropAskRequestView);
  Button.init(action:label:)();
  if (*(v1 + *(v11 + 32)))
  {
    v21 = &enum case for AirDropUIButtonStyle.Style.jindoAlert(_:);
  }

  else
  {
    v21 = &enum case for AirDropUIButtonStyle.Style.nonJindoAlert(_:);
  }

  (*(v25 + 104))(v24, *v21, v26);
  AirDropUIButtonStyle.init(style:)();
  sub_1000199C8(&qword_100175338, &qword_100175340, &qword_10011CF70);
  sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
  v22 = v27;
  View.buttonStyle<A>(_:)();
  (*(v28 + 8))(v9, v22);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1000BED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v73 = a4;
  v75 = a2;
  v5 = sub_1000077C8(&qword_100176D88, &qword_10011F2B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v74 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = (&v57 - v9);
  v10 = type metadata accessor for AirDropUIButtonStyle.Style();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirDropUIButtonStyle();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFAirDrop.DeclineAction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AirDropAskRequestView();
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  __chkstk_darwin(v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v61 = *(v23 - 8);
  v62 = v23;
  v24 = *(v61 + 64);
  __chkstk_darwin(v23);
  v60 = &v57 - v25;
  v71 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v26 = *(v71 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v71);
  v59 = &v57 - v28;
  v29 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v70 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v57 - v33;
  v35 = a1;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v26 + 56))(v34, 1, 1, v71);
    v36 = v75;
  }

  else
  {
    sub_1000C83E8(v75, &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
    v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v38 = (v21 + *(v17 + 80) + v37) & ~*(v17 + 80);
    v39 = swift_allocObject();
    sub_1000C8DD8(v22, v39 + v37, type metadata accessor for AirDropAskRequestView);
    v40 = (*(v17 + 32))(v39 + v38, v19, v16);
    __chkstk_darwin(v40);
    *(&v57 - 2) = v35;
    v41 = v60;
    Button.init(action:label:)();
    v42 = v75;
    if (*(v75 + *(v58 + 24)))
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v64 + 104))(v63, *v43, v65);
    v44 = v66;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v45 = v59;
    v46 = v62;
    v47 = v68;
    View.buttonStyle<A>(_:)();
    (*(v67 + 8))(v44, v47);
    (*(v61 + 8))(v41, v46);
    v48 = v71;
    (*(v26 + 32))(v34, v45, v71);
    (*(v26 + 56))(v34, 0, 1, v48);
    v36 = v42;
  }

  v49 = static VerticalAlignment.center.getter();
  v50 = v69;
  *v69 = v49;
  *(v50 + 8) = 0x4024000000000000;
  *(v50 + 16) = 0;
  v51 = sub_1000077C8(&qword_100176D90, &qword_10011F2C0);
  sub_1000C05E4(v72, v36, (v50 + *(v51 + 44)));
  v52 = v70;
  sub_100007BA4(v34, v70, &qword_1001769D0, &unk_10011EE38);
  v53 = v74;
  sub_100007BA4(v50, v74, &qword_100176D88, &qword_10011F2B8);
  v54 = v73;
  sub_100007BA4(v52, v73, &qword_1001769D0, &unk_10011EE38);
  v55 = sub_1000077C8(&qword_100176D98, &qword_10011F2C8);
  sub_100007BA4(v53, v54 + *(v55 + 48), &qword_100176D88, &qword_10011F2B8);
  sub_1000159AC(v50, &qword_100176D88, &qword_10011F2B8);
  sub_1000159AC(v34, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v53, &qword_100176D88, &qword_10011F2B8);
  return sub_1000159AC(v52, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000BF50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v73 = a4;
  v75 = a2;
  v5 = sub_1000077C8(&qword_1001769C0, &unk_10011EE20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v74 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = (&v57 - v9);
  v10 = type metadata accessor for AirDropUIButtonStyle.Style();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirDropUIButtonStyle();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFAirDrop.DeclineAction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AirDropAskRequestView();
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  __chkstk_darwin(v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v61 = *(v23 - 8);
  v62 = v23;
  v24 = *(v61 + 64);
  __chkstk_darwin(v23);
  v60 = &v57 - v25;
  v71 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v26 = *(v71 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v71);
  v59 = &v57 - v28;
  v29 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v70 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v57 - v33;
  v35 = a1;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v26 + 56))(v34, 1, 1, v71);
    v36 = v75;
  }

  else
  {
    sub_1000C83E8(v75, &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
    v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v38 = (v21 + *(v17 + 80) + v37) & ~*(v17 + 80);
    v39 = swift_allocObject();
    sub_1000C8DD8(v22, v39 + v37, type metadata accessor for AirDropAskRequestView);
    v40 = (*(v17 + 32))(v39 + v38, v19, v16);
    __chkstk_darwin(v40);
    *(&v57 - 2) = v35;
    v41 = v60;
    Button.init(action:label:)();
    v42 = v75;
    if (*(v75 + *(v58 + 24)))
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v64 + 104))(v63, *v43, v65);
    v44 = v66;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v45 = v59;
    v46 = v62;
    v47 = v68;
    View.buttonStyle<A>(_:)();
    (*(v67 + 8))(v44, v47);
    (*(v61 + 8))(v41, v46);
    v48 = v71;
    (*(v26 + 32))(v34, v45, v71);
    (*(v26 + 56))(v34, 0, 1, v48);
    v36 = v42;
  }

  v49 = static VerticalAlignment.center.getter();
  v50 = v69;
  *v69 = v49;
  *(v50 + 8) = 0x4024000000000000;
  *(v50 + 16) = 0;
  v51 = sub_1000077C8(&qword_1001769D8, &qword_10011EE48);
  sub_1000C0AE4(v72, v36, (v50 + *(v51 + 44)));
  v52 = v70;
  sub_100007BA4(v34, v70, &qword_1001769D0, &unk_10011EE38);
  v53 = v74;
  sub_100007BA4(v50, v74, &qword_1001769C0, &unk_10011EE20);
  v54 = v73;
  sub_100007BA4(v52, v73, &qword_1001769D0, &unk_10011EE38);
  v55 = sub_1000077C8(&qword_1001769E0, &qword_10011EE50);
  sub_100007BA4(v53, v54 + *(v55 + 48), &qword_1001769C0, &unk_10011EE20);
  sub_1000159AC(v50, &qword_1001769C0, &unk_10011EE20);
  sub_1000159AC(v34, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v53, &qword_1001769C0, &unk_10011EE20);
  return sub_1000159AC(v52, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000BFCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v73 = a4;
  v75 = a2;
  v5 = sub_1000077C8(&qword_100176C30, &qword_10011F168);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v74 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = (&v57 - v9);
  v10 = type metadata accessor for AirDropUIButtonStyle.Style();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirDropUIButtonStyle();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFAirDrop.DeclineAction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AirDropAskRequestView();
  v57 = *(v20 - 8);
  v58 = v20;
  v21 = *(v57 + 64);
  __chkstk_darwin(v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v61 = *(v23 - 8);
  v62 = v23;
  v24 = *(v61 + 64);
  __chkstk_darwin(v23);
  v60 = &v57 - v25;
  v71 = sub_1000077C8(&qword_1001769C8, &qword_10011EE30);
  v26 = *(v71 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v71);
  v59 = &v57 - v28;
  v29 = sub_1000077C8(&qword_1001769D0, &unk_10011EE38);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v70 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v57 - v33;
  v35 = a1;
  if (SFAirDrop.DeclineAction.hidden.getter())
  {
    (*(v26 + 56))(v34, 1, 1, v71);
    v36 = v75;
  }

  else
  {
    sub_1000C83E8(v75, &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
    v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v38 = (v21 + *(v17 + 80) + v37) & ~*(v17 + 80);
    v39 = swift_allocObject();
    sub_1000C8DD8(v22, v39 + v37, type metadata accessor for AirDropAskRequestView);
    v40 = (*(v17 + 32))(v39 + v38, v19, v16);
    __chkstk_darwin(v40);
    *(&v57 - 2) = v35;
    v41 = v60;
    Button.init(action:label:)();
    v42 = v75;
    if (*(v75 + *(v58 + 24)))
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v43 = &enum case for AirDropUIButtonStyle.Style.nonJindo(_:);
    }

    (*(v64 + 104))(v63, *v43, v65);
    v44 = v66;
    AirDropUIButtonStyle.init(style:)();
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v45 = v59;
    v46 = v62;
    v47 = v68;
    View.buttonStyle<A>(_:)();
    (*(v67 + 8))(v44, v47);
    (*(v61 + 8))(v41, v46);
    v48 = v71;
    (*(v26 + 32))(v34, v45, v71);
    (*(v26 + 56))(v34, 0, 1, v48);
    v36 = v42;
  }

  v49 = static VerticalAlignment.center.getter();
  v50 = v69;
  *v69 = v49;
  *(v50 + 8) = 0x4024000000000000;
  *(v50 + 16) = 0;
  v51 = sub_1000077C8(&qword_100176C38, &qword_10011F170);
  sub_1000C0FE4(v72, v36, (v50 + *(v51 + 44)));
  v52 = v70;
  sub_100007BA4(v34, v70, &qword_1001769D0, &unk_10011EE38);
  v53 = v74;
  sub_100007BA4(v50, v74, &qword_100176C30, &qword_10011F168);
  v54 = v73;
  sub_100007BA4(v52, v73, &qword_1001769D0, &unk_10011EE38);
  v55 = sub_1000077C8(&qword_100176C40, &qword_10011F178);
  sub_100007BA4(v53, v54 + *(v55 + 48), &qword_100176C30, &qword_10011F168);
  sub_1000159AC(v50, &qword_100176C30, &qword_10011F168);
  sub_1000159AC(v34, &qword_1001769D0, &unk_10011EE38);
  sub_1000159AC(v53, &qword_100176C30, &qword_10011F168);
  return sub_1000159AC(v52, &qword_1001769D0, &unk_10011EE38);
}

uint64_t sub_1000C04D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SFAirDrop.ButtonConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDrop.DeclineAction.buttonConfiguration.getter();
  v7 = SFAirDrop.ButtonConfiguration.localizedTitle.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_10004BB74();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1000C05E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v43 = &v42 - v7;
  v8 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v42 - v12;
  v13 = type metadata accessor for AirDropAskRequestView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v44 = sub_1000077C8(&qword_100176DA0, &qword_10011F2D0);
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  v51 = a1;
  sub_1000C83E8(a2, &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  sub_1000C8DD8(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AirDropAskRequestView);

  sub_1000077C8(&qword_100176DA8, &unk_10011F2D8);
  type metadata accessor for UUID();
  sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  sub_1000199C8(&qword_100176DB0, &qword_100176DA8, &unk_10011F2D8);
  sub_1000C8488();
  sub_1000199C8(&qword_100176DB8, &unk_100172F90, &qword_100118CE0);
  v24 = v21;
  ForEach<>.init(_:content:)();
  if (sub_1000ACDD0())
  {
    v25 = v43;
    sub_1000BE958(v43);
    v27 = v46;
    v26 = v47;
    v28 = v25;
    v29 = v48;
    (*(v47 + 32))(v46, v28, v48);
    v30 = 0;
    v31 = v29;
    v32 = v26;
  }

  else
  {
    v30 = 1;
    v32 = v47;
    v31 = v48;
    v27 = v46;
  }

  (*(v32 + 56))(v27, v30, 1, v31);
  v33 = v16;
  v34 = *(v16 + 16);
  v35 = v44;
  v36 = v45;
  v34(v45, v24, v44);
  v37 = v49;
  sub_100007BA4(v27, v49, &qword_1001769F0, &qword_10011EE60);
  v38 = v50;
  v34(v50, v36, v35);
  v39 = sub_1000077C8(&qword_100176DC0, &qword_10011F2E8);
  sub_100007BA4(v37, &v38[*(v39 + 48)], &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v27, &qword_1001769F0, &qword_10011EE60);
  v40 = *(v33 + 8);
  v40(v24, v35);
  sub_1000159AC(v37, &qword_1001769F0, &qword_10011EE60);
  return (v40)(v36, v35);
}

uint64_t sub_1000C0AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v43 = &v42 - v7;
  v8 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v42 - v12;
  v13 = type metadata accessor for AirDropAskRequestView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v44 = sub_1000077C8(&qword_1001769F8, &qword_10011EE68);
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  v51 = a1;
  sub_1000C83E8(a2, &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  sub_1000C8DD8(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AirDropAskRequestView);

  sub_1000077C8(&qword_100176A00, &qword_10011EE70);
  type metadata accessor for UUID();
  sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  sub_1000199C8(&qword_100176A10, &qword_100176A00, &qword_10011EE70);
  sub_1000C8488();
  sub_1000199C8(&qword_100176A40, &qword_100176A48, &qword_10011EE90);
  v24 = v21;
  ForEach<>.init(_:content:)();
  if (sub_1000ACDD0())
  {
    v25 = v43;
    sub_1000BE958(v43);
    v27 = v46;
    v26 = v47;
    v28 = v25;
    v29 = v48;
    (*(v47 + 32))(v46, v28, v48);
    v30 = 0;
    v31 = v29;
    v32 = v26;
  }

  else
  {
    v30 = 1;
    v32 = v47;
    v31 = v48;
    v27 = v46;
  }

  (*(v32 + 56))(v27, v30, 1, v31);
  v33 = v16;
  v34 = *(v16 + 16);
  v35 = v44;
  v36 = v45;
  v34(v45, v24, v44);
  v37 = v49;
  sub_100007BA4(v27, v49, &qword_1001769F0, &qword_10011EE60);
  v38 = v50;
  v34(v50, v36, v35);
  v39 = sub_1000077C8(&qword_100176A50, &qword_10011EE98);
  sub_100007BA4(v37, &v38[*(v39 + 48)], &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v27, &qword_1001769F0, &qword_10011EE60);
  v40 = *(v33 + 8);
  v40(v24, v35);
  sub_1000159AC(v37, &qword_1001769F0, &qword_10011EE60);
  return (v40)(v36, v35);
}

uint64_t sub_1000C0FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = sub_1000077C8(&qword_1001769E8, &qword_10011EE58);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v43 = &v42 - v7;
  v8 = sub_1000077C8(&qword_1001769F0, &qword_10011EE60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v42 - v12;
  v13 = type metadata accessor for AirDropAskRequestView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v44 = sub_1000077C8(&qword_100176C48, &qword_10011F180);
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  v51 = a1;
  sub_1000C83E8(a2, &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  sub_1000C8DD8(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AirDropAskRequestView);

  sub_1000077C8(&qword_100176C50, &qword_10011F188);
  type metadata accessor for UUID();
  sub_1000077C8(&qword_100176A08, &qword_10011EE78);
  sub_1000199C8(&qword_100176C58, &qword_100176C50, &qword_10011F188);
  sub_1000C8488();
  sub_1000199C8(&qword_100176C60, &qword_100176C68, &qword_10011F190);
  v24 = v21;
  ForEach<>.init(_:content:)();
  if (sub_1000ACDD0())
  {
    v25 = v43;
    sub_1000BE958(v43);
    v27 = v46;
    v26 = v47;
    v28 = v25;
    v29 = v48;
    (*(v47 + 32))(v46, v28, v48);
    v30 = 0;
    v31 = v29;
    v32 = v26;
  }

  else
  {
    v30 = 1;
    v32 = v47;
    v31 = v48;
    v27 = v46;
  }

  (*(v32 + 56))(v27, v30, 1, v31);
  v33 = v16;
  v34 = *(v16 + 16);
  v35 = v44;
  v36 = v45;
  v34(v45, v24, v44);
  v37 = v49;
  sub_100007BA4(v27, v49, &qword_1001769F0, &qword_10011EE60);
  v38 = v50;
  v34(v50, v36, v35);
  v39 = sub_1000077C8(&qword_100176C70, &qword_10011F198);
  sub_100007BA4(v37, &v38[*(v39 + 48)], &qword_1001769F0, &qword_10011EE60);
  sub_1000159AC(v27, &qword_1001769F0, &qword_10011EE60);
  v40 = *(v33 + 8);
  v40(v24, v35);
  sub_1000159AC(v37, &qword_1001769F0, &qword_10011EE60);
  return (v40)(v36, v35);
}

uint64_t sub_1000C14E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v116 = a3;
  v114 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  v3 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v90 - v4);
  v108 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = &v90 - v6;
  v113 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  v8 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v109 = &v90 - v9;
  v100 = type metadata accessor for AirDropUIButtonStyle.Style();
  v98 = *(v100 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v100);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AirDropUIButtonStyle();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v106);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AirDropAskRequestView();
  v94 = *(v97 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v105);
  v96 = &v90 - v16;
  v107 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v104 = *(v107 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v107);
  v19 = &v90 - v18;
  v20 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v93 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v90 - v30;
  (*(v27 + 16))(&v90 - v30, v110, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  v112 = v31;
  if (v32 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v92 = v19;
    v110 = v7;
    (*(v27 + 96))(v31, v26);
    v33 = v21[4];
    v33(v25, v31, v20);
    v34 = v95;
    sub_1000C83E8(v111, v95);
    v91 = v21;
    v36 = v21 + 2;
    v35 = v21[2];
    v37 = v93;
    v35(v93, v25, v20);
    v38 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v39 = (v14 + v38 + *(v36 + 64)) & ~*(v36 + 64);
    v40 = swift_allocObject();
    sub_1000C8DD8(v34, v40 + v38, type metadata accessor for AirDropAskRequestView);
    v41 = (v33)(v40 + v39, v37, v20);
    __chkstk_darwin(v41);
    v42 = v111;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v43 = v96;
    Button.init(action:label:)();
    v44 = *(v42 + *(v97 + 24));
    v45 = (v98 + 104);
    v90 = v25;
    if (v44)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v45)(v101, *v46, v100);
    }

    else
    {
      (*v45)(v101, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v100);
    }

    v79 = v110;
    v80 = v92;
    v111 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
    v81 = v102;
    AirDropUIButtonStyle.init(style:)();
    v82 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v83 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v85 = v105;
    v84 = v106;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v81, v84);
    (*(v99 + 8))(v43, v85);
    v86 = v104;
    v87 = v107;
    (*(v104 + 16))(v79, v80, v107);
    swift_storeEnumTagMultiPayload();
    v117 = v85;
    v118 = v84;
    v119 = v82;
    v120 = v83;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v88, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v88, &qword_100176A28, &qword_10011EE80);
    (*(v86 + 8))(v80, v87);
    (v91[1])(v90, v20);
    v89 = type metadata accessor for UUID();
    return (*(*(v89 - 8) + 8))(&v112[v111], v89);
  }

  else if (v32 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v27 + 96))(v31, v26);
    v111 = *(sub_1000077C8(&qword_100175310, &qword_10011CF58) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v50 = v7;
    v52 = v51;
    v117 = static Color.red.getter();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10004BBC8(v47, v49, v52 & 1);

    *v50 = v53;
    *(v50 + 1) = v55;
    v50[16] = v57 & 1;
    *(v50 + 3) = v59;
    v110 = v59;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v53, v55, v57 & 1);
    v60 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v61 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);

    v117 = v105;
    v118 = v106;
    v119 = v60;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v53, v55, v57 & 1);

    sub_1000159AC(v62, &qword_100176A28, &qword_10011EE80);
    v63 = type metadata accessor for UUID();
    v64 = v112;
    (*(*(v63 - 8) + 8))(&v112[v111], v63);
    v65 = sub_1000077C8(&qword_100175278, &unk_10011F2F0);
    return (*(*(v65 - 8) + 8))(v64, v65);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v117 = static Color.red.getter();
    v72 = Text.foregroundStyle<A>(_:)();
    v74 = v73;
    v76 = v75;
    v111 = v77;
    sub_10004BBC8(v67, v69, v71 & 1);

    v78 = v115;
    *v115 = v72;
    v78[1] = v74;
    *(v78 + 16) = v76 & 1;
    v78[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v112, v26);
  }
}

uint64_t sub_1000C2308@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v116 = a3;
  v114 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  v3 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v90 - v4);
  v108 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = &v90 - v6;
  v113 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  v8 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v109 = &v90 - v9;
  v100 = type metadata accessor for AirDropUIButtonStyle.Style();
  v98 = *(v100 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v100);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AirDropUIButtonStyle();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v106);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AirDropAskRequestView();
  v94 = *(v97 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v105);
  v96 = &v90 - v16;
  v107 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v104 = *(v107 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v107);
  v19 = &v90 - v18;
  v20 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v93 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = sub_1000077C8(&qword_100176A48, &qword_10011EE90);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v90 - v30;
  (*(v27 + 16))(&v90 - v30, v110, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  v112 = v31;
  if (v32 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v92 = v19;
    v110 = v7;
    (*(v27 + 96))(v31, v26);
    v33 = v21[4];
    v33(v25, v31, v20);
    v34 = v95;
    sub_1000C83E8(v111, v95);
    v91 = v21;
    v36 = v21 + 2;
    v35 = v21[2];
    v37 = v93;
    v35(v93, v25, v20);
    v38 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v39 = (v14 + v38 + *(v36 + 64)) & ~*(v36 + 64);
    v40 = swift_allocObject();
    sub_1000C8DD8(v34, v40 + v38, type metadata accessor for AirDropAskRequestView);
    v41 = (v33)(v40 + v39, v37, v20);
    __chkstk_darwin(v41);
    v42 = v111;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v43 = v96;
    Button.init(action:label:)();
    v44 = *(v42 + *(v97 + 24));
    v45 = (v98 + 104);
    v90 = v25;
    if (v44)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v45)(v101, *v46, v100);
    }

    else
    {
      (*v45)(v101, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v100);
    }

    v79 = v110;
    v80 = v92;
    v111 = *(sub_1000077C8(&qword_100176AD8, &qword_10011EF68) + 48);
    v81 = v102;
    AirDropUIButtonStyle.init(style:)();
    v82 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v83 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v85 = v105;
    v84 = v106;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v81, v84);
    (*(v99 + 8))(v43, v85);
    v86 = v104;
    v87 = v107;
    (*(v104 + 16))(v79, v80, v107);
    swift_storeEnumTagMultiPayload();
    v117 = v85;
    v118 = v84;
    v119 = v82;
    v120 = v83;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v88, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v88, &qword_100176A28, &qword_10011EE80);
    (*(v86 + 8))(v80, v87);
    (v91[1])(v90, v20);
    v89 = type metadata accessor for UUID();
    return (*(*(v89 - 8) + 8))(&v112[v111], v89);
  }

  else if (v32 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v27 + 96))(v31, v26);
    v111 = *(sub_1000077C8(&qword_100176A88, &qword_10011EF30) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v50 = v7;
    v52 = v51;
    v117 = static Color.red.getter();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10004BBC8(v47, v49, v52 & 1);

    *v50 = v53;
    *(v50 + 1) = v55;
    v50[16] = v57 & 1;
    *(v50 + 3) = v59;
    v110 = v59;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v53, v55, v57 & 1);
    v60 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v61 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);

    v117 = v105;
    v118 = v106;
    v119 = v60;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v53, v55, v57 & 1);

    sub_1000159AC(v62, &qword_100176A28, &qword_10011EE80);
    v63 = type metadata accessor for UUID();
    v64 = v112;
    (*(*(v63 - 8) + 8))(&v112[v111], v63);
    v65 = sub_1000077C8(&qword_100176A90, &qword_10011EF38);
    return (*(*(v65 - 8) + 8))(v64, v65);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v117 = static Color.red.getter();
    v72 = Text.foregroundStyle<A>(_:)();
    v74 = v73;
    v76 = v75;
    v111 = v77;
    sub_10004BBC8(v67, v69, v71 & 1);

    v78 = v115;
    *v115 = v72;
    v78[1] = v74;
    *(v78 + 16) = v76 & 1;
    v78[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v112, v26);
  }
}

uint64_t sub_1000C312C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v111 = a2;
  v116 = a3;
  v114 = sub_1000077C8(&qword_100176A68, &qword_10011EF10);
  v3 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = (&v90 - v4);
  v108 = sub_1000077C8(&qword_100176A70, &qword_10011EF18);
  v5 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v7 = &v90 - v6;
  v113 = sub_1000077C8(&qword_100176A28, &qword_10011EE80);
  v8 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v109 = &v90 - v9;
  v100 = type metadata accessor for AirDropUIButtonStyle.Style();
  v98 = *(v100 - 8);
  v10 = *(v98 + 64);
  __chkstk_darwin(v100);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AirDropUIButtonStyle();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v106);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AirDropAskRequestView();
  v94 = *(v97 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v97);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000077C8(&qword_100176A30, &qword_10011EE88);
  v99 = *(v105 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v105);
  v96 = &v90 - v16;
  v107 = sub_1000077C8(&qword_100176A78, &qword_10011EF20);
  v104 = *(v107 - 8);
  v17 = *(v104 + 64);
  __chkstk_darwin(v107);
  v19 = &v90 - v18;
  v20 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v93 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  v26 = sub_1000077C8(&qword_100176C68, &qword_10011F190);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v90 - v30;
  (*(v27 + 16))(&v90 - v30, v110, v26, v29);
  v32 = (*(v27 + 88))(v31, v26);
  v112 = v31;
  if (v32 == enum case for SFAirDrop.AcceptAction.single<A>(_:))
  {
    v92 = v19;
    v110 = v7;
    (*(v27 + 96))(v31, v26);
    v33 = v21[4];
    v33(v25, v31, v20);
    v34 = v95;
    sub_1000C83E8(v111, v95);
    v91 = v21;
    v36 = v21 + 2;
    v35 = v21[2];
    v37 = v93;
    v35(v93, v25, v20);
    v38 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v39 = (v14 + v38 + *(v36 + 64)) & ~*(v36 + 64);
    v40 = swift_allocObject();
    sub_1000C8DD8(v34, v40 + v38, type metadata accessor for AirDropAskRequestView);
    v41 = (v33)(v40 + v39, v37, v20);
    __chkstk_darwin(v41);
    v42 = v111;
    sub_1000077C8(&qword_100176A98, &qword_10011EF40);
    sub_1000C8848();
    v43 = v96;
    Button.init(action:label:)();
    v44 = *(v42 + *(v97 + 24));
    v45 = (v98 + 104);
    v90 = v25;
    if (v44)
    {
      if (SFAirDrop.AcceptAction.Single.prominent.getter())
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
      }

      else
      {
        v46 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
      }

      (*v45)(v101, *v46, v100);
    }

    else
    {
      (*v45)(v101, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v100);
    }

    v79 = v110;
    v80 = v92;
    v111 = *(sub_1000077C8(&qword_100176C90, &qword_10011F1B8) + 48);
    v81 = v102;
    AirDropUIButtonStyle.init(style:)();
    v82 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v83 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    v85 = v105;
    v84 = v106;
    View.buttonStyle<A>(_:)();
    (*(v103 + 8))(v81, v84);
    (*(v99 + 8))(v43, v85);
    v86 = v104;
    v87 = v107;
    (*(v104 + 16))(v79, v80, v107);
    swift_storeEnumTagMultiPayload();
    v117 = v85;
    v118 = v84;
    v119 = v82;
    v120 = v83;
    swift_getOpaqueTypeConformance2();
    v88 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v88, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v88, &qword_100176A28, &qword_10011EE80);
    (*(v86 + 8))(v80, v87);
    (v91[1])(v90, v20);
    v89 = type metadata accessor for UUID();
    return (*(*(v89 - 8) + 8))(&v112[v111], v89);
  }

  else if (v32 == enum case for SFAirDrop.AcceptAction.composite<A>(_:))
  {
    (*(v27 + 96))(v31, v26);
    v111 = *(sub_1000077C8(&qword_100176C80, &qword_10011F1A8) + 48);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    v50 = v7;
    v52 = v51;
    v117 = static Color.red.getter();
    v53 = Text.foregroundStyle<A>(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_10004BBC8(v47, v49, v52 & 1);

    *v50 = v53;
    *(v50 + 1) = v55;
    v50[16] = v57 & 1;
    *(v50 + 3) = v59;
    v110 = v59;
    swift_storeEnumTagMultiPayload();
    sub_100078974(v53, v55, v57 & 1);
    v60 = sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    v61 = sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);

    v117 = v105;
    v118 = v106;
    v119 = v60;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v62 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v115, &qword_100176A28, &qword_10011EE80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v53, v55, v57 & 1);

    sub_1000159AC(v62, &qword_100176A28, &qword_10011EE80);
    v63 = type metadata accessor for UUID();
    v64 = v112;
    (*(*(v63 - 8) + 8))(&v112[v111], v63);
    v65 = sub_1000077C8(&qword_100176C88, &qword_10011F1B0);
    return (*(*(v65 - 8) + 8))(v64, v65);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v67 = Text.init(_:tableName:bundle:comment:)();
    v69 = v68;
    v71 = v70;
    v117 = static Color.red.getter();
    v72 = Text.foregroundStyle<A>(_:)();
    v74 = v73;
    v76 = v75;
    v111 = v77;
    sub_10004BBC8(v67, v69, v71 & 1);

    v78 = v115;
    *v115 = v72;
    v78[1] = v74;
    *(v78 + 16) = v76 & 1;
    v78[3] = v111;
    swift_storeEnumTagMultiPayload();
    sub_1000C8514();
    _ConditionalContent<>.init(storage:)();
    return (*(v27 + 8))(v112, v26);
  }
}

uint64_t sub_1000C3F50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000077C8(a2, a3);
  SFAirDrop.AcceptAction.Single.id.getter();
  sub_10004BB74();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32 * v4);
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];

    v10 = static String._fromSubstring(_:)();
  }

  else
  {

    return 0x72616C75676552;
  }

  return v10;
}

uint64_t sub_1000C4044(uint64_t a1)
{
  v2 = type metadata accessor for AirDropAskRequestView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000C83E8(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1000C8DD8(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AirDropAskRequestView);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v8, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000C421C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = *(*(sub_1000077C8(&qword_100173D50, &unk_10011D120) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = *(*(sub_1000077C8(&qword_100176A58, &qword_10011EEB0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C4380, v9, v8);
}

uint64_t sub_1000C4380()
{
  v1 = v0[8];

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100176610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Launching 'Ways to Get Help' URL", v5, 2u);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  v11 = *(v10 + *(type metadata accessor for AirDropAskRequestView() + 20) + 8);
  sub_1000807A4();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v9 + 8))(v7, v8);
  v12 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_1000159AC(v0[6], &qword_100173D50, &unk_10011D120);
  }

  else
  {
    v14 = v0[6];
    v15 = v0[7];
    SFAirDrop.PermissionRequest.telemetryData.getter();
    (*(v13 + 8))(v14, v12);
    v16 = sub_1000077C8(&qword_100176A60, &unk_10011EEB8);
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    v19 = v0[7];
    if (v18 == 1)
    {
      sub_1000159AC(v0[7], &qword_100176A58, &qword_10011EEB0);
    }

    else
    {
      v20 = v0[2];
      v21 = SFAirDrop.PermissionRequest.TelemetryData.items.getter();
      (*(v17 + 8))(v19, v16);
      v22 = objc_opt_self();
      v23 = sub_1000C46FC(v21);

      [v22 waysToGetHelpTappedWithContentType:v23 isBlurred:sub_10007A24C() & 1];
    }
  }

  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[5];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000C46FC(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v33 - v8;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v37 = v3 + 32;
  v38 = v3 + 16;
  v36 = (v3 + 8);

  v34 = 0;
  v14 = 0;
  v15 = 0;
LABEL_4:
  v16 = v15;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
    v35 = v14;
    v15 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = a1;
    v19 = v39;
    (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * (v17 | (v15 << 6)), v2);
    (*(v3 + 32))(v6, v19, v2);
    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    v20 = String._bridgeToObjectiveC()();

    LOBYTE(v19) = SFIsImage();

    if ((v19 & 1) == 0)
    {
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v21 = String._bridgeToObjectiveC()();

      v22 = SFIsVideo();

      (*v36)(v6, v2);
      v34 |= v22;
      a1 = v18;
      v14 = v35;
      goto LABEL_4;
    }

    (*v36)(v6, v2);
    v14 = 1;
    v16 = v15;
    a1 = v18;
  }

  while (v12);
  while (1)
  {
LABEL_6:
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_21;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      v35 = v14;
      goto LABEL_10;
    }
  }

  if (v14)
  {
    if (v34)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  if (v34)
  {
    return 2;
  }

  if (qword_100172220 != -1)
  {
    goto LABEL_25;
  }

LABEL_21:
  v24 = type metadata accessor for Logger();
  sub_100007D20(v24, qword_100176610);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136315138;
    sub_1000AC810(a1);
    v29 = Array.description.getter();
    v31 = v30;

    v32 = sub_10003E81C(v29, v31, &v40);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Found no images or videos in AirDrop with file types %s - falling back to type .none", v27, 0xCu);
    sub_100007920(v28);
  }

  return 0;
}

uint64_t sub_1000C4B00@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000C4B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100176DD0, &qword_10011F328);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for AirDropAskRequestView();
  v12 = *(a1 + *(v11 + 24));
  if (v12 == 1)
  {
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v31 = 0;
    v32 = v36;
    v29 = v40;
    v30 = v38;
    v28 = v41;
    v35 = 1;
    v34 = v37;
    v33 = v39;
    v13 = 1;
    v26 = v37;
    v27 = v39;
    LOBYTE(v42) = 0;
  }

  else
  {
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v13 = 0;
    v31 = 1;
  }

  v14 = *(a1 + *(v11 + 20) + 8);
  type metadata accessor for AirDropTransferSession();
  sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession);

  v15 = ObservedObject.init(wrappedValue:)();
  v17 = v16;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = sub_1000077C8(&qword_100176DD8, &qword_10011F330);
  sub_1000C4E8C(a1, &v10[*(v18 + 44)]);
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v10[*(v4 + 36)];
  v20 = v43;
  *v19 = v42;
  *(v19 + 1) = v20;
  *(v19 + 2) = v44;
  sub_100007BA4(v10, v7, &qword_100176DD0, &qword_10011F328);
  *a2 = 0;
  *(a2 + 8) = v13;
  v21 = v26;
  *(a2 + 16) = v32;
  *(a2 + 24) = v21;
  v22 = v27;
  *(a2 + 32) = v30;
  *(a2 + 40) = v22;
  v23 = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v23;
  *(a2 + 64) = v31;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17;
  *(a2 + 88) = v12;
  *(a2 + 96) = xmmword_100117C60;
  *(a2 + 112) = 1;
  v24 = sub_1000077C8(&qword_100176DE0, &qword_10011F338);
  sub_100007BA4(v7, a2 + *(v24 + 64), &qword_100176DD0, &qword_10011F328);

  sub_10004DC90(0, 1);
  sub_1000159AC(v10, &qword_100176DD0, &qword_10011F328);
  sub_1000159AC(v7, &qword_100176DD0, &qword_10011F328);

  return sub_10004DCF4(0, 1);
}

uint64_t sub_1000C4E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100176DE8, &qword_10011F340);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v60 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v48 = type metadata accessor for Font.TextStyle();
  v46 = *(v48 - 8);
  v10 = *(v46 + 64);
  __chkstk_darwin(v48);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirDropDescriptionView();
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  v17 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v59 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v47 = &v44 - v20;
  __chkstk_darwin(v21);
  v58 = &v44 - v22;
  v23 = type metadata accessor for AirDropAskRequestView();
  if (*(a1 + *(v23 + 24)) == 1)
  {
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v56 = 0;
    v57 = v64;
    v55 = v66;
    v53 = v68;
    v52 = v69;
    v63 = 1;
    v62 = v65;
    v61 = v67;
    v49 = 1;
    v50 = v65;
    v51 = v67;
    LOBYTE(v70) = 0;
  }

  else
  {
    v57 = 0;
    v55 = 0;
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
    v49 = 0;
    v56 = 1;
  }

  v24 = *(a1 + *(v23 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = a1;
  static Published.subscript.getter();

  v25 = v70;
  v27 = *(v24 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v26 = *(v24 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName + 8);
  *&v70 = 0x402C000000000000;
  (*(v46 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v48);
  sub_10004A578();

  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v16[v13[5]] = v25;
  v28 = &v16[v13[6]];
  *v28 = v27;
  *(v28 + 1) = v26;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v28[32] = 64;
  *&v16[v13[7]] = 0x3FE0000000000000;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v47;
  sub_1000C8DD8(v16, v47, type metadata accessor for AirDropDescriptionView);
  v30 = (v29 + *(v54 + 36));
  v31 = v75;
  v30[4] = v74;
  v30[5] = v31;
  v30[6] = v76;
  v32 = v71;
  *v30 = v70;
  v30[1] = v32;
  v33 = v73;
  v30[2] = v72;
  v30[3] = v33;
  v34 = v58;
  sub_100021A84(v29, v58, &qword_100174138, &unk_10011AE80);
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v35 = sub_1000077C8(&qword_100176DF0, &qword_10011F390);
  sub_1000C5524(v45, &v9[*(v35 + 44)]);
  v36 = v59;
  sub_100007BA4(v34, v59, &qword_100174138, &unk_10011AE80);
  v37 = v60;
  sub_100007BA4(v9, v60, &qword_100176DE8, &qword_10011F340);
  v38 = v49;
  *a2 = 0;
  *(a2 + 8) = v38;
  v39 = v50;
  *(a2 + 16) = v57;
  *(a2 + 24) = v39;
  v40 = v51;
  *(a2 + 32) = v55;
  *(a2 + 40) = v40;
  v41 = v52;
  *(a2 + 48) = v53;
  *(a2 + 56) = v41;
  *(a2 + 64) = v56;
  v42 = sub_1000077C8(&qword_100176DF8, &qword_10011F398);
  sub_100007BA4(v36, a2 + *(v42 + 48), &qword_100174138, &unk_10011AE80);
  sub_100007BA4(v37, a2 + *(v42 + 64), &qword_100176DE8, &qword_10011F340);
  sub_1000159AC(v9, &qword_100176DE8, &qword_10011F340);
  sub_1000159AC(v34, &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v37, &qword_100176DE8, &qword_10011F340);
  return sub_1000159AC(v36, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_1000C5524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v96 = a2;
  v88 = type metadata accessor for BorderedProminentButtonStyle();
  v104 = *(v88 - 8);
  v3 = *(v104 + 64);
  __chkstk_darwin(v88);
  v98 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AirDropAskRequestView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v84 = v7;
  v101 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v102 = *(v101 - 8);
  v8 = *(v102 + 64);
  __chkstk_darwin(v101);
  v91 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v76 - v11;
  v97 = sub_1000077C8(&qword_100176E00, &qword_10011F3A0);
  v12 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v93 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v87 = sub_1000077C8(&qword_100176E08, &qword_10011F3A8);
  v103 = *(v87 - 8);
  v17 = *(v103 + 64);
  __chkstk_darwin(v87);
  v92 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v86 = &v76 - v20;
  v21 = sub_1000077C8(&qword_100176E10, &qword_10011F3B0);
  v22 = *(v21 - 8);
  v100 = v21 - 8;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21 - 8);
  v95 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v94 = &v76 - v26;
  __chkstk_darwin(v27);
  v89 = &v76 - v28;
  __chkstk_darwin(v29);
  v90 = &v76 - v30;
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  __chkstk_darwin(v34);
  v99 = &v76 - v35;
  LocalizedStringKey.init(stringLiteral:)();
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C83E8(a1, v79);
  v36 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v81 = v36;
  v37 = swift_allocObject();
  v83 = type metadata accessor for AirDropAskRequestView;
  sub_1000C8DD8(&v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for AirDropAskRequestView);
  v38 = v80;
  Button<>.init(_:action:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = *(v102 + 32);
  v102 += 32;
  v82 = v39;
  v39(v16, v38, v101);
  v40 = &v16[*(v97 + 36)];
  v41 = v110;
  *(v40 + 4) = v109;
  *(v40 + 5) = v41;
  *(v40 + 6) = v111;
  v42 = v106;
  *v40 = v105;
  *(v40 + 1) = v42;
  v43 = v108;
  *(v40 + 2) = v107;
  *(v40 + 3) = v43;
  v44 = v98;
  BorderedProminentButtonStyle.init()();
  v80 = sub_1000C99F4();
  v78 = sub_1000C9AAC(&qword_100176E20, &type metadata accessor for BorderedProminentButtonStyle);
  v45 = v86;
  v46 = v88;
  View.buttonStyle<A>(_:)();
  v47 = *(v104 + 8);
  v104 += 8;
  v77 = v47;
  v47(v44, v46);
  sub_1000159AC(v16, &qword_100176E00, &qword_10011F3A0);
  v48 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v50 = *(v103 + 32);
  v103 += 32;
  v76 = v50;
  v51 = v87;
  v50(v33, v45, v87);
  v52 = &v33[*(v100 + 44)];
  *v52 = KeyPath;
  v52[1] = v48;
  sub_100021A84(v33, v99, &qword_100176E10, &qword_10011F3B0);
  LocalizedStringKey.init(stringLiteral:)();
  v53 = v79;
  sub_1000C83E8(v85, v79);
  v54 = v81;
  v55 = swift_allocObject();
  sub_1000C8DD8(v53, v55 + v54, v83);
  v56 = v91;
  Button<>.init(_:action:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v57 = v93;
  v82(v93, v56, v101);
  v58 = &v57[*(v97 + 36)];
  v59 = v57;
  v60 = v117;
  *(v58 + 4) = v116;
  *(v58 + 5) = v60;
  *(v58 + 6) = v118;
  v61 = v113;
  *v58 = v112;
  *(v58 + 1) = v61;
  v62 = v115;
  *(v58 + 2) = v114;
  *(v58 + 3) = v62;
  v63 = v98;
  BorderedProminentButtonStyle.init()();
  v64 = v92;
  View.buttonStyle<A>(_:)();
  v77(v63, v46);
  sub_1000159AC(v59, &qword_100176E00, &qword_10011F3A0);
  v65 = static Color.blue.getter();
  v66 = swift_getKeyPath();
  v67 = v89;
  v76(v89, v64, v51);
  v68 = (v67 + *(v100 + 44));
  *v68 = v66;
  v68[1] = v65;
  v69 = v90;
  sub_100021A84(v67, v90, &qword_100176E10, &qword_10011F3B0);
  v70 = v99;
  v71 = v94;
  sub_100007BA4(v99, v94, &qword_100176E10, &qword_10011F3B0);
  v72 = v95;
  sub_100007BA4(v69, v95, &qword_100176E10, &qword_10011F3B0);
  v73 = v96;
  sub_100007BA4(v71, v96, &qword_100176E10, &qword_10011F3B0);
  v74 = sub_1000077C8(&qword_100176E28, &qword_10011F3E8);
  sub_100007BA4(v72, v73 + *(v74 + 48), &qword_100176E10, &qword_10011F3B0);
  sub_1000159AC(v69, &qword_100176E10, &qword_10011F3B0);
  sub_1000159AC(v70, &qword_100176E10, &qword_10011F3B0);
  sub_1000159AC(v72, &qword_100176E10, &qword_10011F3B0);
  return sub_1000159AC(v71, &qword_100176E10, &qword_10011F3B0);
}

uint64_t sub_1000C5FC0(uint64_t a1, const char *a2, uint64_t (*a3)(void))
{
  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100176610);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 2u);
  }

  v10 = *(a1 + *(type metadata accessor for AirDropAskRequestView() + 20) + 8);
  return a3();
}

uint64_t sub_1000C60C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C615C, v3, v2);
}

uint64_t sub_1000C615C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v2 + *(type metadata accessor for AirDropAskRequestView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  static Published.subscript.setter();
  if (sub_100079F8C())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 32) = 1;
    static Published.subscript.setter();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000C6268(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v7;
  v2[12] = v6;

  return _swift_task_switch(sub_1000C635C, v7, v6);
}

uint64_t sub_1000C635C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v4 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1000C642C;
  v6 = v0[9];
  v7 = v0[6];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v6, v3);
}

uint64_t sub_1000C642C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_1000C66E8;
  }

  else
  {
    v10 = sub_1000C65C4;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000C65C4()
{
  v1 = v0[10];

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100176610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "permissionRequest accepted", v5, 2u);
  }

  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C66E8()
{
  v20 = v0;
  v1 = v0[10];

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100176610);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_10003E81C(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "permissionRequest accept failed {error: %s}", v8, 0xCu);
    sub_100007920(v9);
  }

  else
  {
  }

  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000C68B8(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_1000C6950, v4, v3);
}

uint64_t sub_1000C6950()
{
  v1 = *(v0 + 48);
  v2 = sub_1000077C8(&qword_100176A80, &qword_10011EF28);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v3 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000C6A14;
  v5 = *(v0 + 48);

  return SFAirDrop.AcceptAction.Single.accept(with:)(v0 + 96, v2);
}

uint64_t sub_1000C6A14()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1000C6C44;
  }

  else
  {
    v6 = sub_1000C6B28;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000C6B28()
{
  v1 = *(v0 + 56);

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100176610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "permissionRequest accepted", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000C6C44()
{
  v19 = v0;
  v1 = v0[7];

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100176610);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_10003E81C(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "permissionRequest accept failed {error: %s}", v8, 0xCu);
    sub_100007920(v9);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000C6E0C(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for SFAirDrop.ContactRequest();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v7;
  v2[12] = v6;

  return _swift_task_switch(sub_1000C6F00, v7, v6);
}

uint64_t sub_1000C6F00()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = sub_1000077C8(&qword_100176C78, &qword_10011F1A0);
  SFAirDrop.AcceptAction.Single.defaultAnswer.getter();
  v4 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1000C6FD0;
  v6 = v0[9];
  v7 = v0[6];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v6, v3);
}

uint64_t sub_1000C6FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_1000C9DB0;
  }

  else
  {
    v10 = sub_1000C9D38;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000C7168()
{
  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v1 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000C7218;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_1000C7218()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_1000C7490;
  }

  else
  {
    v8 = sub_1000C7374;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000C7374()
{
  v1 = *(v0 + 56);

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100176610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "permissionRequest declined", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000C7490()
{
  v19 = v0;
  v1 = v0[7];

  if (qword_100172220 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100176610);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_10003E81C(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "permissionRequest decline failed {error: %s}", v8, 0xCu);
    sub_100007920(v9);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000C765C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = sub_1000077C8(&qword_100176E38, &qword_10011F468);
  v25 = *(v3 - 8);
  v4 = v25;
  v5 = *(v25 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_1000077C8(&qword_100176E40, &qword_10011F470);
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v12;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  static Axis.Set.vertical.getter();
  v27 = a1;
  sub_1000199C8(&qword_100176E48, &qword_100176E38, &qword_10011F468);
  ScrollView.init(_:showsIndicators:content:)();
  v16 = *(v4 + 16);
  v16(v7, a1, v3);
  v17 = v9[2];
  v17(v12, v15, v8);
  v18 = v26;
  v16(v26, v7, v3);
  v19 = &v18[*(sub_1000077C8(&qword_100176E50, &qword_10011F478) + 48)];
  v20 = v24;
  v17(v19, v24, v8);
  v21 = v9[1];
  v21(v15, v8);
  v21(v20, v8);
  return (*(v25 + 8))(v7, v3);
}

uint64_t sub_1000C7918@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = static Axis.Set.vertical.getter();
  v4 = sub_1000077C8(&qword_100176E30, &qword_10011F460);
  return sub_1000C765C(a1, &a2[*(v4 + 44)]);
}

unint64_t sub_1000C7978()
{
  result = qword_100176770;
  if (!qword_100176770)
  {
    sub_100007CCC(&qword_100176720, &qword_10011EB78);
    sub_1000C7A04();
    sub_1000C7EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176770);
  }

  return result;
}

unint64_t sub_1000C7A04()
{
  result = qword_100176778;
  if (!qword_100176778)
  {
    sub_100007CCC(&qword_100176718, &qword_10011EB70);
    sub_1000C7ABC();
    sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176778);
  }

  return result;
}

unint64_t sub_1000C7ABC()
{
  result = qword_100176780;
  if (!qword_100176780)
  {
    sub_100007CCC(&qword_100176758, &unk_10011EBC0);
    sub_1000C7B48();
    sub_1000C7DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176780);
  }

  return result;
}

unint64_t sub_1000C7B48()
{
  result = qword_100176788;
  if (!qword_100176788)
  {
    sub_100007CCC(&qword_100176748, &qword_10011EBA8);
    sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
    sub_1000C7F9C(&qword_1001767C8, &qword_100176730, &unk_10011EB88, sub_1000C7D14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176788);
  }

  return result;
}

unint64_t sub_1000C7C5C()
{
  result = qword_1001767A8;
  if (!qword_1001767A8)
  {
    sub_100007CCC(&qword_1001767B0, &qword_10011EC78);
    sub_1000199C8(&qword_1001767B8, &qword_1001767C0, &qword_10011EC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001767A8);
  }

  return result;
}

unint64_t sub_1000C7D44()
{
  result = qword_1001767E0;
  if (!qword_1001767E0)
  {
    sub_100007CCC(&qword_1001767E8, &qword_10011EC90);
    sub_1000199C8(&qword_1001767F0, &qword_1001767F8, &qword_10011EC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001767E0);
  }

  return result;
}

unint64_t sub_1000C7DFC()
{
  result = qword_100176800;
  if (!qword_100176800)
  {
    sub_100007CCC(&qword_100176728, &qword_10011EB80);
    sub_1000199C8(&qword_100176808, &qword_100176810, &qword_10011ECA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176800);
  }

  return result;
}

unint64_t sub_1000C7EB4()
{
  result = qword_100176818;
  if (!qword_100176818)
  {
    sub_100007CCC(&qword_1001766F8, &qword_10011EB50);
    sub_1000C7F9C(&qword_100176820, &qword_100176700, &qword_10011EB58, sub_1000C7F6C);
    sub_1000C80D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176818);
  }

  return result;
}

uint64_t sub_1000C7F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C8020()
{
  result = qword_100176838;
  if (!qword_100176838)
  {
    sub_100007CCC(&qword_100176840, &qword_10011ECB0);
    sub_1000199C8(&qword_100176848, &qword_100176850, &qword_10011ECB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176838);
  }

  return result;
}

unint64_t sub_1000C80D8()
{
  result = qword_100176858;
  if (!qword_100176858)
  {
    sub_100007CCC(&qword_1001766E8, &qword_10011EB40);
    sub_1000199C8(&qword_100176860, &qword_1001766E0, &qword_10011EB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176858);
  }

  return result;
}

unint64_t sub_1000C8190()
{
  result = qword_100176868;
  if (!qword_100176868)
  {
    sub_100007CCC(&qword_100176760, &qword_10011EBD0);
    sub_1000C7978();
    sub_1000C7DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176868);
  }

  return result;
}

unint64_t sub_1000C821C()
{
  result = qword_100176918;
  if (!qword_100176918)
  {
    sub_100007CCC(&qword_1001768D0, &qword_10011ED30);
    sub_1000199C8(&qword_100176920, &qword_100176928, &qword_10011ED78);
    sub_1000C82D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176918);
  }

  return result;
}

unint64_t sub_1000C82D4()
{
  result = qword_100176930;
  if (!qword_100176930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176930);
  }

  return result;
}

unint64_t sub_1000C8330()
{
  result = qword_100176960;
  if (!qword_100176960)
  {
    sub_100007CCC(&qword_1001768E0, &qword_10011ED40);
    sub_1000199C8(&qword_100176968, &qword_100176890, &qword_10011ECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176960);
  }

  return result;
}

uint64_t sub_1000C83E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropAskRequestView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C8488()
{
  result = qword_100176A18;
  if (!qword_100176A18)
  {
    sub_100007CCC(&qword_100176A08, &qword_10011EE78);
    sub_1000C8514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176A18);
  }

  return result;
}

unint64_t sub_1000C8514()
{
  result = qword_100176A20;
  if (!qword_100176A20)
  {
    sub_100007CCC(&qword_100176A28, &qword_10011EE80);
    sub_100007CCC(&qword_100176A30, &qword_10011EE88);
    type metadata accessor for AirDropUIButtonStyle();
    sub_1000199C8(&qword_100176A38, &qword_100176A30, &qword_10011EE88);
    sub_1000C9AAC(&qword_100175308, &type metadata accessor for AirDropUIButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176A20);
  }

  return result;
}

uint64_t sub_1000C8660()
{
  v1 = *(type metadata accessor for AirDropAskRequestView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000C4044(v2);
}

uint64_t sub_1000C86C0(uint64_t a1)
{
  v4 = *(type metadata accessor for AirDropAskRequestView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_1000C421C(a1, v1 + v5);
}

__n128 sub_1000C87E0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1000BDE6C(v3, &qword_100176A80, &qword_10011EF28, v7);
  v5 = *v8;
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 63) = *&v8[15];
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C8848()
{
  result = qword_100176AA0;
  if (!qword_100176AA0)
  {
    sub_100007CCC(&qword_100176A98, &qword_10011EF40);
    sub_1000C88D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AA0);
  }

  return result;
}

unint64_t sub_1000C88D4()
{
  result = qword_100176AA8;
  if (!qword_100176AA8)
  {
    sub_100007CCC(&qword_100176AB0, &qword_10011EF48);
    sub_1000C8960();
    sub_1000C89E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AA8);
  }

  return result;
}

unint64_t sub_1000C8960()
{
  result = qword_100176AB8;
  if (!qword_100176AB8)
  {
    sub_100007CCC(&qword_100176AC0, &qword_10011EF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AB8);
  }

  return result;
}

unint64_t sub_1000C89E4()
{
  result = qword_100176AC8;
  if (!qword_100176AC8)
  {
    sub_100007CCC(&qword_100176AD0, &qword_10011EF58);
    sub_1000199C8(&qword_100175380, &qword_100175378, &qword_10011EF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176AC8);
  }

  return result;
}

uint64_t sub_1000C8AB8(uint64_t a1)
{
  v4 = *(sub_1000077C8(&qword_100176A80, &qword_10011EF28) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000C68B8(a1, v1 + v5);
}

uint64_t sub_1000C8BA0()
{
  v2 = *(type metadata accessor for AirDropAskRequestView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000167E4;

  return sub_1000C60C4(v0 + v3);
}

uint64_t sub_1000C8C6C()
{
  v1 = type metadata accessor for SFAirDrop.DeclineAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C8CF4()
{
  v1 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1000167E4;

  return sub_1000C7168();
}

uint64_t sub_1000C8DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C8E58(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AirDropAskRequestView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000C8EEC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t))
{
  v7 = *(type metadata accessor for AirDropAskRequestView() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1000077C8(a1, a2) - 8);
  return a3(v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));
}

unint64_t sub_1000C8FC8()
{
  result = qword_100176BD8;
  if (!qword_100176BD8)
  {
    sub_100007CCC(&qword_100176B88, &qword_10011F0E8);
    sub_1000199C8(&qword_100176BE0, &qword_100176B50, &qword_10011F0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176BD8);
  }

  return result;
}

__n128 sub_1000C90C0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1000BDE6C(v3, &qword_100176C78, &qword_10011F1A0, v7);
  v5 = *v8;
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 63) = *&v8[15];
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C913C(uint64_t a1)
{
  v4 = *(sub_1000077C8(&qword_100176C78, &qword_10011F1A0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000C6E0C(a1, v1 + v5);
}

unint64_t sub_1000C9254()
{
  result = qword_100176D30;
  if (!qword_100176D30)
  {
    sub_100007CCC(&qword_100176CF0, &qword_10011F238);
    sub_1000199C8(&qword_100176D38, &qword_100176CB8, &qword_10011F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D30);
  }

  return result;
}

__n128 sub_1000C9360@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1000BDE6C(v3, &unk_100173C98, &unk_10011A300, v7);
  v5 = *v8;
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 63) = *&v8[15];
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C93DC(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000C6268(a1, v1 + v5);
}

uint64_t sub_1000C94C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C94FC()
{
  v1 = type metadata accessor for AirDropAskRequestView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for SFAirDrop.DeclineAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  sub_1000077C8(&qword_100173070, &qword_100118EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v9 + *(v1 + 20) + 8);

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_1000C96B8()
{
  v1 = *(type metadata accessor for AirDropAskRequestView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  return sub_1000BA074(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_1000C9790(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for AirDropAskRequestView();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = sub_1000077C8(a1, a2);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = (v2 + v7);
  sub_1000077C8(&qword_100173070, &qword_100118EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for DynamicTypeSize();
    (*(*(v14 - 8) + 8))(v2 + v7, v14);
  }

  else
  {
    v15 = *v13;
  }

  v16 = (v7 + v8 + v11) & ~v11;
  v17 = *(v13 + *(v5 + 20) + 8);

  (*(v10 + 8))(v2 + v16, v9);

  return _swift_deallocObject(v2, v16 + v12, v6 | v11 | 7);
}

unint64_t sub_1000C99F4()
{
  result = qword_100176E18;
  if (!qword_100176E18)
  {
    sub_100007CCC(&qword_100176E00, &qword_10011F3A0);
    sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176E18);
  }

  return result;
}

uint64_t sub_1000C9AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C9AFC()
{
  v1 = type metadata accessor for AirDropAskRequestView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_1000077C8(&qword_100173070, &qword_100118EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C9C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1000077C8(&qword_100176E38, &qword_10011F468);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1000C9DB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100176E70);
  v1 = sub_100007D20(v0, qword_100176E70);
  if (qword_1001721F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000C9E80(void *a1)
{
  v2 = v1;
  if (qword_100172228 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100176E70);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "App delegate did finish launching: %@", v8, 0xCu);
    sub_1000CA3B0(v9);
  }

  NameDropIdentity.shared.unsafeMutableAddressor();
  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v2 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];
}

id sub_1000CA258()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_1000CA3B0(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100172EB0, &qword_100119410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000CA418()
{
  result = qword_100176F28;
  if (!qword_100176F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100176F28);
  }

  return result;
}

unint64_t sub_1000CA464()
{
  result = qword_100176F30;
  if (!qword_100176F30)
  {
    sub_1000CA418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176F30);
  }

  return result;
}

void sub_1000CA4BC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000CA418();
    sub_1000CA464();
    Set.Iterator.init(_cocoa:)();
    v1 = v36;
    v2 = v37;
    v3 = v38;
    v4 = v39;
    v5 = v40;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v33 = v3;
  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v4;
  v11 = v5;
  v12 = v4;
  if (v5)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14)
    {
      while (1)
      {
        v34 = v13;
        v15 = [v14 role];
        v16 = static UISceneSessionRole.activityListItem.getter();
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
        if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            sub_100026860();

            return;
          }
        }

        v23 = [v14 persistentIdentifier];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v24;
        sub_10004BB74();
        v25 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

        if (v25[2] < 2uLL)
        {
          break;
        }

        v26 = v25[8];
        v27 = v25[9];
        v28 = v25[10];
        v29 = v25[11];

        v30 = static String._fromSubstring(_:)();
        v32 = v31;

        if (qword_100172150 != -1)
        {
          swift_once();
        }

        sub_100037940(v30, v32);

        v4 = v12;
        v5 = v34;
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          sub_1000CA418();
          swift_dynamicCast();
          v14 = v35;
          v12 = v4;
          v13 = v5;
          if (v35)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      sub_100026860();
    }

    else
    {
LABEL_28:
      sub_100026860();
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_28;
      }

      v11 = *(v2 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000CA860()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100176F40);
  v1 = sub_100007D20(v0, qword_100176F40);
  if (qword_1001721F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000CAAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000CAB64(void *a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = qword_100172230;
    v11 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100007D20(v12, qword_100176F40);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42[0] = v41;
      *v16 = 136315138;
      v17 = [v9 description];
      v18 = v7;
      v19 = v2;
      v20 = v13;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v21;
      v13 = v20;
      v2 = v19;
      v7 = v18;
      v25 = sub_10003E81C(v24, v23, v42);

      *(v16 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "DefaultSceneDelegate: Received windowScene: %s. Hosting debugging UI for AirDropUI Launch Angel.", v16, 0xCu);
      sub_100007920(v41);
    }

    v26 = [objc_allocWithZone(type metadata accessor for SFSecureWindow()) initWithWindowScene:v9];
    v27 = objc_allocWithZone(sub_1000077C8(&unk_100176F90, &qword_10011F4D0));
    v28 = UIHostingController.init(rootView:)();
    v29 = v26;
    [v29 setRootViewController:v28];
    [v29 makeKeyAndVisible];
    v30 = *(v2 + OBJC_IVAR____TtC9AirDropUI20DefaultSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC9AirDropUI20DefaultSceneDelegate_window) = v29;

    if (qword_100172150 != -1)
    {
      swift_once();
    }

    v31 = qword_10017F1E0;
    sub_100083E84();
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = static Published.subscript.modify();
    v34 = v33;
    v35 = *v33;

    *v34 = &_swiftEmptyDictionarySingleton;
    v32(v42, 0);

    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    v38 = swift_allocObject();
    *(v38 + 16) = &unk_10011F520;
    *(v38 + 24) = v37;
    v39 = v31;
    static Task<>.noThrow(priority:operation:)();

    sub_1000CB188(v7);
  }
}

void sub_1000CAF8C(const char *a1)
{
  if (qword_100172230 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100176F40);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_1000CB084()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CB0BC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BCF0;

  return sub_10002861C(v2);
}

uint64_t sub_1000CB150()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CB188(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CB2D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&unk_100177BF0, &unk_100120630);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  v11 = a1[1];
  if (a1[9] >> 62)
  {
    v15 = a1[3];
    v14 = a1[4];
    v16 = a1[2];
    sub_1000E1814(a1, v37);

    LOBYTE(v30[0]) = 1;
    *&v32 = v16;
    *(&v32 + 1) = v15;
    *&v33 = 0x4051000000000000;
    v36 = 1;
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v25) = v40;
    v24[8] = v42;
    LOBYTE(v30[0]) = 0;
    *&v32 = v12;
    *(&v32 + 1) = v11;
    *&v33 = v39;
    BYTE8(v33) = v40;
    *&v34 = v41;
    BYTE8(v34) = v42;
    v35 = v43;
    v36 = 0;
  }

  sub_1000077C8(&qword_100178250, &unk_100121070);
  sub_1000E184C();
  sub_100063CDC();
  _ConditionalContent<>.init(storage:)();
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = sub_1000077C8(&qword_100177C18, &qword_100120640);
  sub_1000CB5DC(a1, &v10[*(v17 + 44)]);
  v27 = v37[2];
  v28 = v37[3];
  v29 = v38;
  v25 = v37[0];
  v26 = v37[1];
  sub_100007BA4(v10, v7, &unk_100177BF0, &unk_100120630);
  v18 = v28;
  v30[3] = v28;
  v19 = v29;
  v31 = v29;
  v21 = v25;
  v20 = v26;
  v30[1] = v26;
  v30[2] = v27;
  v30[0] = v25;
  *(a2 + 32) = v27;
  *(a2 + 48) = v18;
  *(a2 + 64) = v19;
  *a2 = v21;
  *(a2 + 16) = v20;
  v22 = sub_1000077C8(&qword_100177C20, &qword_100120648);
  sub_100007BA4(v7, a2 + *(v22 + 48), &unk_100177BF0, &unk_100120630);
  sub_100007BA4(v30, &v32, &qword_100177C28, &qword_100120650);
  sub_1000159AC(v10, &unk_100177BF0, &unk_100120630);
  sub_1000159AC(v7, &unk_100177BF0, &unk_100120630);
  v34 = v27;
  v35 = v28;
  v36 = v29;
  v32 = v25;
  v33 = v26;
  return sub_1000159AC(&v32, &qword_100177C28, &qword_100120650);
}

uint64_t sub_1000CB5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1000077C8(&qword_100177478, &qword_10011FCC8);
  v4 = *(v3 - 8);
  v43 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = sub_1000077C8(&qword_100177C30, &qword_100120658);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v41 = v15;
  v16 = sub_1000077C8(&qword_100177C38, &qword_100120660);
  sub_1000CB990(a1, &v15[*(v16 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  static Font.headline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_10004BBC8(v17, v19, v21 & 1);

  v46 = static Color.white.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10004BBC8(v22, v24, v26 & 1);

  v34 = *(v43 + 44);
  *&v9[v34] = swift_getKeyPath();
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  *v9 = v27;
  *(v9 + 1) = v29;
  v9[16] = v31 & 1;
  *(v9 + 3) = v33;
  v36 = v41;
  v35 = v42;
  sub_100007BA4(v41, v42, &qword_100177C30, &qword_100120658);
  v37 = v44;
  sub_100007BA4(v9, v44, &qword_100177478, &qword_10011FCC8);
  v38 = v45;
  sub_100007BA4(v35, v45, &qword_100177C30, &qword_100120658);
  v39 = sub_1000077C8(&qword_100177C40, &qword_100120668);
  sub_100007BA4(v37, v38 + *(v39 + 48), &qword_100177478, &qword_10011FCC8);
  sub_1000159AC(v9, &qword_100177478, &qword_10011FCC8);
  sub_1000159AC(v36, &qword_100177C30, &qword_100120658);
  sub_1000159AC(v37, &qword_100177478, &qword_10011FCC8);
  return sub_1000159AC(v35, &qword_100177C30, &qword_100120658);
}

uint64_t sub_1000CB990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v71 = sub_1000077C8(&qword_100177C48, &qword_100120670);
  v3 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = (&v65 - v4);
  v72 = sub_1000077C8(&qword_100177C50, &qword_100120678);
  v5 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v7 = &v65 - v6;
  v8 = *(*(sub_1000077C8(&qword_100177C58, &qword_100120680) - 8) + 64);
  __chkstk_darwin(a1);
  __chkstk_darwin(v9);
  v14 = (&v65 - v13);
  v15 = *(a1 + 32);
  if (v10[9] >> 62)
  {
    v45 = v10[3];
    v46 = v10[1];
    v75[13] = *v10;
    v75[14] = v46;
    sub_1000E1814(v10, v75);
    sub_10004BB74();
    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;

    LODWORD(v75[0]) = static HierarchicalShapeStyle.primary.getter();
    v52 = Text.foregroundStyle<A>(_:)();
    v54 = v53;
    v56 = v55;
    sub_10004BBC8(v47, v49, v51 & 1);

    static Font.title2.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v57 = Text.font(_:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_10004BBC8(v52, v54, v56 & 1);

    sub_100078974(v57, v59, v61 & 1);

    sub_100078974(v57, v59, v61 & 1);

    sub_10004BBC8(v57, v59, v61 & 1);

    v64 = v73;
    *v73 = v57;
    v64[1] = v59;
    *(v64 + 16) = v61 & 1;
    v64[3] = v63;
    v64[4] = 0;
    *(v64 + 40) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100177C60, &qword_100120688);
    sub_1000199C8(&qword_100177C68, &qword_100177C50, &qword_100120678);
    sub_1000199C8(&qword_100177C70, &qword_100177C60, &qword_100120688);
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v57, v59, v61 & 1);
  }

  else
  {
    v16 = v10[5];
    v75[0] = v15;
    v75[1] = v16;
    v70 = v11;
    v69 = v12;
    sub_10004BB74();

    v17 = Text.init<A>(_:)();
    v19 = v18;
    v21 = v20;
    LODWORD(v75[0]) = static HierarchicalShapeStyle.primary.getter();
    v22 = Text.foregroundStyle<A>(_:)();
    v24 = v23;
    v26 = v25;
    sub_10004BBC8(v17, v19, v21 & 1);

    static Font.title2.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v27 = Text.font(_:)();
    v29 = v28;
    LOBYTE(v17) = v30;
    v68 = v31;

    sub_10004BBC8(v22, v24, v26 & 1);

    v32 = Image.init(systemName:)();
    v33 = (v14 + *(sub_1000077C8(&unk_1001778C0, &qword_100120038) + 36));
    v34 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
    v35 = enum case for Image.Scale.large(_:);
    v36 = type metadata accessor for Image.Scale();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = swift_getKeyPath();
    *v14 = v32;
    v37 = (v14 + *(sub_1000077C8(&qword_100177B30, &qword_100120588) + 36));
    v38 = *(sub_1000077C8(&qword_100177B50, &qword_100120590) + 28);
    static SymbolRenderingMode.monochrome.getter();
    v39 = type metadata accessor for SymbolRenderingMode();
    (*(*(v39 - 8) + 56))(v37 + v38, 0, 1, v39);
    *v37 = swift_getKeyPath();
    v40 = static Color.white.getter();
    *(v14 + *(sub_1000077C8(&qword_100177C78, &qword_100120690) + 36)) = v40;
    v41 = *(v69 + 9);
    *(v14 + v41) = swift_getKeyPath();
    sub_1000077C8(&qword_100174C00, &qword_10011BD80);
    swift_storeEnumTagMultiPayload();
    v42 = v70;
    sub_100007BA4(v14, v70, &qword_100177C58, &qword_100120680);
    *v7 = v27;
    *(v7 + 1) = v29;
    LOBYTE(v17) = v17 & 1;
    v7[16] = v17;
    *(v7 + 3) = v68;
    *(v7 + 4) = 0;
    v7[40] = 1;
    v43 = sub_1000077C8(&qword_100177C80, &qword_100120698);
    sub_100007BA4(v42, &v7[*(v43 + 64)], &qword_100177C58, &qword_100120680);
    sub_100078974(v27, v29, v17);

    v69 = v14;
    v66 = v27;
    v67 = v29;
    sub_100078974(v27, v29, v17);

    sub_1000159AC(v42, &qword_100177C58, &qword_100120680);
    sub_10004BBC8(v27, v29, v17);

    sub_100007BA4(v7, v73, &qword_100177C50, &qword_100120678);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100177C60, &qword_100120688);
    sub_1000199C8(&qword_100177C68, &qword_100177C50, &qword_100120678);
    sub_1000199C8(&qword_100177C70, &qword_100177C60, &qword_100120688);
    _ConditionalContent<>.init(storage:)();
    sub_10004BBC8(v66, v67, v17);

    sub_1000159AC(v7, &qword_100177C50, &qword_100120678);
    return sub_1000159AC(v69, &qword_100177C58, &qword_100120680);
  }
}

uint64_t sub_1000CC208@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = 0;
  v6 = sub_1000077C8(&qword_100177BE0, &qword_100120620);
  sub_1000CB2D4(v8, a1 + *(v6 + 44));
  result = sub_1000077C8(&qword_100177BE8, &qword_100120628);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000CC2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000077C8(&qword_100177B80, &qword_1001205D8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v70 - v11;
  v13 = sub_1000077C8(&qword_100177B70, &qword_1001205D0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v73 = &v70 - v17;
  (*(v4 + 16))(v7, a1, v3, v16);
  v18 = Text.init(_:)();
  v20 = v19;
  LOBYTE(a1) = v21;
  static Font.headline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v22 = Text.font(_:)();
  v71 = v23;
  v72 = v22;
  LOBYTE(v7) = v24;
  v70 = v25;

  sub_10004BBC8(v18, v20, a1 & 1);

  LOBYTE(v18) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v3) = v7 & 1;
  v76 = v7 & 1;
  v75 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v77[3] + 7) = *(&v77[10] + 8);
  *(&v77[4] + 7) = *(&v77[11] + 8);
  *(&v77[5] + 7) = *(&v77[12] + 8);
  *(&v77[6] + 7) = *(&v77[13] + 8);
  *(v77 + 7) = *(&v77[7] + 8);
  *(&v77[1] + 7) = *(&v77[8] + 8);
  v34 = &v12[*(v9 + 44)];
  *(&v77[2] + 7) = *(&v77[9] + 8);
  v35 = *(type metadata accessor for RoundedRectangle() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = type metadata accessor for RoundedCornerStyle();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #30.0 }

  *v34 = _Q0;
  v43 = static Color.white.getter();
  v44 = sub_1000077C8(&qword_100177BB8, &qword_1001205F8);
  *&v34[*(v44 + 52)] = v43;
  *&v34[*(v44 + 56)] = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = &v34[*(sub_1000077C8(&qword_100177BB0, &qword_1001205F0) + 36)];
  *v48 = v45;
  v48[1] = v47;
  v49 = v71;
  *v12 = v72;
  *(v12 + 1) = v49;
  v12[16] = v3;
  *(v12 + 3) = v70;
  v12[32] = v18;
  *(v12 + 5) = v27;
  *(v12 + 6) = v29;
  *(v12 + 7) = v31;
  *(v12 + 8) = v33;
  v12[72] = 0;
  v50 = v77[2];
  *(v12 + 121) = v77[3];
  *(v12 + 105) = v50;
  v51 = v77[0];
  *(v12 + 89) = v77[1];
  *(v12 + 73) = v51;
  *(v12 + 23) = *(&v77[6] + 15);
  v52 = v77[5];
  *(v12 + 169) = v77[6];
  v53 = v77[4];
  *(v12 + 153) = v52;
  *(v12 + 137) = v53;
  LOBYTE(v45) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v73;
  sub_100021A84(v12, v73, &qword_100177B80, &qword_1001205D8);
  v63 = v62 + *(v14 + 44);
  *v63 = v45;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  static Color.black.getter();
  v64 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v66 = v62;
  v67 = v74;
  sub_100021A84(v66, v74, &qword_100177B70, &qword_1001205D0);
  result = sub_1000077C8(&qword_100177B58, &qword_1001205C8);
  v69 = (v67 + *(result + 36));
  *v69 = KeyPath;
  v69[1] = v64;
  return result;
}

uint64_t sub_1000CC754(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000DDA5C(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShareableContentActionButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1000DDBAC(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for ShareableContentActionButton);
  v8 = v1;
  sub_1000077C8(&qword_100177B58, &qword_1001205C8);
  sub_1000E1508();
  return Button.init(action:label:)();
}

uint64_t sub_1000CC8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v31 = enum case for Image.ResizingMode.stretch(_:);
  v30 = v7[13];
  v30(v10);
  v35 = Image.resizable(capInsets:resizingMode:)();

  v29 = v7[1];
  v29(v10, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v51) = 1;
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v11;
  sub_10004BB74();
  v12 = Text.init<A>(_:)();
  v33 = v13;
  v34 = v14;
  v32 = v15;
  Image.init(systemName:)();
  (v30)(v10, v31, v6);
  v16 = Image.resizable(capInsets:resizingMode:)();

  v29(v10, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v39[6] = *&v40[51];
  *&v39[22] = *&v40[59];
  *&v39[38] = v41;
  v42[0] = v35;
  v42[1] = 0;
  *v43 = 1;
  *&v43[48] = *&v40[23];
  v44[0] = v16;
  *&v43[34] = *&v40[16];
  *&v43[18] = *&v40[8];
  *&v43[2] = *v40;
  v44[1] = 0;
  *v45 = 1;
  *&v45[48] = *(&v41 + 1);
  v17 = *&v39[32];
  *&v45[34] = *&v39[32];
  v18 = *&v39[16];
  *&v45[18] = *&v39[16];
  v19 = *v39;
  *&v45[2] = *v39;
  *(v36 + 7) = v16;
  *(&v36[4] + 7) = *&v45[48];
  *(&v36[3] + 7) = *&v45[32];
  *(&v36[2] + 7) = *&v45[16];
  *(&v36[1] + 7) = *v45;
  v20 = v35;
  v21 = *v43;
  v22 = *&v43[32];
  *(a1 + 32) = *&v43[16];
  *(a1 + 48) = v22;
  *a1 = v20;
  *(a1 + 16) = v21;
  v23 = v36[1];
  *(a1 + 113) = v36[0];
  *(a1 + 176) = *(&v36[3] + 15);
  v24 = v36[2];
  *(a1 + 161) = v36[3];
  *(a1 + 145) = v24;
  LOBYTE(v51) = 1;
  v25 = v32 & 1;
  v38 = v32 & 1;
  v37 = 1;
  *(a1 + 64) = *&v43[48];
  *(a1 + 72) = v12;
  v27 = v33;
  v26 = v34;
  *(a1 + 80) = v33;
  *(a1 + 88) = v25;
  *(a1 + 96) = v26;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 129) = v23;
  v46[0] = v16;
  v46[1] = 0;
  v47 = 1;
  *&v50[14] = *&v39[46];
  *v50 = v17;
  v49 = v18;
  v48 = v19;
  sub_100007BA4(v42, &v51, &qword_100173590, &unk_100119660);
  sub_100078974(v12, v27, v25);

  sub_100007BA4(v44, &v51, &qword_100173590, &unk_100119660);
  sub_1000159AC(v46, &qword_100173590, &unk_100119660);
  sub_10004BBC8(v12, v27, v25);

  v51 = v35;
  v52 = 0;
  v53 = 1;
  v54 = *v40;
  v55 = *&v40[8];
  *v56 = *&v40[16];
  *&v56[14] = *&v40[23];
  return sub_1000159AC(&v51, &qword_100173590, &unk_100119660);
}

double sub_1000CCE4C@<D0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v49 = 1;
  a1(&v36);
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47;
  v55 = v40;
  v56 = v41;
  v57 = v42;
  v58 = v43;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v63[8] = v44;
  v63[9] = v45;
  v63[10] = v46;
  v63[11] = v47;
  v63[4] = v40;
  v63[5] = v41;
  v63[6] = v42;
  v63[7] = v43;
  v63[0] = v36;
  v63[1] = v37;
  v63[2] = v38;
  v63[3] = v39;
  sub_100007BA4(&v51, v35, &qword_100177BC0, &qword_100120600);
  sub_1000159AC(v63, &qword_100177BC0, &qword_100120600);
  *&v48[135] = v59;
  *&v48[151] = v60;
  *&v48[167] = v61;
  *&v48[183] = v62;
  *&v48[71] = v55;
  *&v48[87] = v56;
  *&v48[103] = v57;
  *&v48[119] = v58;
  *&v48[7] = v51;
  *&v48[23] = v52;
  *&v48[39] = v53;
  *&v48[55] = v54;
  v5 = v49;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v50 = 0;
  v14 = (a2 + *(sub_1000077C8(&qword_100177BC8, &qword_100120608) + 36));
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #30.0 }

  *v14 = _Q0;
  v14[*(sub_1000077C8(&unk_100177BD0, &unk_100120610) + 36)] = 0;
  v23 = *&v48[128];
  *(a2 + 161) = *&v48[144];
  v24 = *&v48[176];
  *(a2 + 177) = *&v48[160];
  *(a2 + 193) = v24;
  v25 = *&v48[64];
  *(a2 + 97) = *&v48[80];
  v26 = *&v48[112];
  *(a2 + 113) = *&v48[96];
  *(a2 + 129) = v26;
  *(a2 + 145) = v23;
  v27 = *v48;
  *(a2 + 33) = *&v48[16];
  v28 = *&v48[48];
  *(a2 + 49) = *&v48[32];
  *(a2 + 65) = v28;
  *(a2 + 81) = v25;
  *(a2 + 17) = v27;
  v29 = v40;
  v30 = v41;
  v31 = v38;
  *(a2 + 264) = v39;
  *(a2 + 280) = v29;
  v32 = v42;
  *(a2 + 296) = v30;
  *(a2 + 312) = v32;
  result = *&v36;
  v34 = v37;
  *(a2 + 216) = v36;
  *(a2 + 232) = v34;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 208) = *&v48[191];
  *(a2 + 248) = v31;
  *(a2 + 328) = a1;
  *(a2 + 332) = *(v35 + 3);
  *(a2 + 329) = v35[0];
  *(a2 + 336) = v7;
  *(a2 + 344) = v9;
  *(a2 + 352) = v11;
  *(a2 + 360) = v13;
  *(a2 + 368) = 0;
  return result;
}

uint64_t sub_1000CD240@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  v31 = enum case for Image.ResizingMode.stretch(_:);
  v30 = v7[13];
  v30(v10);
  v35 = Image.resizable(capInsets:resizingMode:)();

  v29 = v7[1];
  v29(v10, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v51) = 1;
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v11;
  sub_10004BB74();
  v12 = Text.init<A>(_:)();
  v33 = v13;
  v34 = v14;
  v32 = v15;
  Image.init(systemName:)();
  (v30)(v10, v31, v6);
  v16 = Image.resizable(capInsets:resizingMode:)();

  v29(v10, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v39[6] = *&v40[51];
  *&v39[22] = *&v40[59];
  *&v39[38] = v41;
  v42[0] = v35;
  v42[1] = 0;
  *v43 = 1;
  *&v43[48] = *&v40[23];
  v44[0] = v16;
  *&v43[34] = *&v40[16];
  *&v43[18] = *&v40[8];
  *&v43[2] = *v40;
  v44[1] = 0;
  *v45 = 1;
  *&v45[48] = *(&v41 + 1);
  v17 = *&v39[32];
  *&v45[34] = *&v39[32];
  v18 = *&v39[16];
  *&v45[18] = *&v39[16];
  v19 = *v39;
  *&v45[2] = *v39;
  *(v36 + 7) = v16;
  *(&v36[4] + 7) = *&v45[48];
  *(&v36[3] + 7) = *&v45[32];
  *(&v36[2] + 7) = *&v45[16];
  *(&v36[1] + 7) = *v45;
  v20 = v35;
  v21 = *v43;
  v22 = *&v43[32];
  *(a1 + 32) = *&v43[16];
  *(a1 + 48) = v22;
  *a1 = v20;
  *(a1 + 16) = v21;
  v23 = v36[1];
  *(a1 + 113) = v36[0];
  *(a1 + 176) = *(&v36[3] + 15);
  v24 = v36[2];
  *(a1 + 161) = v36[3];
  *(a1 + 145) = v24;
  LOBYTE(v51) = 1;
  v25 = v32 & 1;
  v38 = v32 & 1;
  v37 = 1;
  *(a1 + 64) = *&v43[48];
  *(a1 + 72) = v12;
  v27 = v33;
  v26 = v34;
  *(a1 + 80) = v33;
  *(a1 + 88) = v25;
  *(a1 + 96) = v26;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 129) = v23;
  v46[0] = v16;
  v46[1] = 0;
  v47 = 1;
  *&v50[14] = *&v39[46];
  *v50 = v17;
  v49 = v18;
  v48 = v19;
  sub_100007BA4(v42, &v51, &qword_100173590, &unk_100119660);
  sub_100078974(v12, v27, v25);

  sub_100007BA4(v44, &v51, &qword_100173590, &unk_100119660);
  sub_1000159AC(v46, &qword_100173590, &unk_100119660);
  sub_10004BBC8(v12, v27, v25);

  v51 = v35;
  v52 = 0;
  v53 = 1;
  v54 = *v40;
  v55 = *&v40[8];
  *v56 = *&v40[16];
  *&v56[14] = *&v40[23];
  return sub_1000159AC(&v51, &qword_100173590, &unk_100119660);
}

uint64_t sub_1000CD794@<X0>(uint64_t a1@<X8>)
{
  v44[1] = a1;
  v44[0] = sub_1000077C8(&qword_1001779F0, &qword_1001204B0);
  v2 = *(*(v44[0] - 8) + 64);
  __chkstk_darwin(v44[0]);
  v4 = (v44 - v3);
  v5 = sub_1000077C8(&qword_1001779F8, &qword_1001204B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v44 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000077C8(&qword_100177A00, &qword_1001204C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v44 - v16;
  v18 = v1[6];
  if (v18)
  {
    v19 = v18;
    Image.init(uiImage:)();
    (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v10 + 8))(v13, v9);
    v21 = &v17[*(sub_1000077C8(&unk_100177A30, &qword_1001204D8) + 36)];
    v22 = *(type metadata accessor for RoundedRectangle() + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = type metadata accessor for RoundedCornerStyle();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    __asm { FMOV            V0.2D, #15.0 }

    *v21 = _Q0;
    *&v21[*(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)] = 256;
    *v17 = v20;
    *(v17 + 1) = 0;
    *(v17 + 8) = 1;
    LOBYTE(v23) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v17[*(sub_1000077C8(&qword_100177A20, &qword_1001204D0) + 36)];
    *v38 = v23;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    static Color.black.getter();
    v39 = Color.opacity(_:)();

    v40 = &v17[*(v14 + 36)];
    *v40 = v39;
    *(v40 + 8) = xmmword_10011F540;
    *(v40 + 3) = 0x4010000000000000;
    sub_100007BA4(v17, v8, &qword_100177A00, &qword_1001204C0);
    swift_storeEnumTagMultiPayload();
    sub_1000E0C94();
    sub_1000199C8(&qword_100177A48, &qword_1001779F0, &qword_1001204B0);
    _ConditionalContent<>.init(storage:)();

    return sub_1000159AC(v17, &qword_100177A00, &qword_1001204C0);
  }

  else
  {
    *v4 = static Alignment.center.getter();
    v4[1] = v42;
    v43 = sub_1000077C8(&qword_100177A08, &qword_1001204C8);
    sub_1000CDC68(v1, v4 + *(v43 + 44));
    sub_100007BA4(v4, v8, &qword_1001779F0, &qword_1001204B0);
    swift_storeEnumTagMultiPayload();
    sub_1000E0C94();
    sub_1000199C8(&qword_100177A48, &qword_1001779F0, &qword_1001204B0);
    _ConditionalContent<>.init(storage:)();
    return sub_1000159AC(v4, &qword_1001779F0, &qword_1001204B0);
  }
}

uint64_t sub_1000CDC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a1;
  v157 = a2;
  v153 = sub_1000077C8(&qword_100177A50, &unk_100121550);
  v2 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v138 = (&v138 - v3);
  v146 = sub_1000077C8(&qword_100177A58, &qword_1001204F0);
  v4 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v147 = (&v138 - v5);
  v142 = sub_1000077C8(&qword_100177A60, &qword_1001204F8);
  v6 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v141 = &v138 - v7;
  v145 = sub_1000077C8(&qword_100177A68, &unk_100120500);
  v8 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v144 = &v138 - v9;
  v10 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v152 = &v138 - v12;
  v143 = sub_1000077C8(&qword_100177A78, &qword_100120510);
  v13 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v140 = (&v138 - v14);
  v15 = sub_1000077C8(&qword_100177A80, &qword_100120518);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v156 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v155 = &v138 - v19;
  v20 = type metadata accessor for RoundedRectangle();
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000077C8(&qword_100177A88, &qword_100120520);
  v26 = *(v25 - 8);
  v150 = v25 - 8;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25 - 8);
  v154 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v138 - v30;
  v32 = *(v21 + 28);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v149) = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  v35 = *(*(v34 - 8) + 104);
  v35(&v24[v32], v33, v34);
  __asm { FMOV            V0.2D, #15.0 }

  v148 = _Q0;
  *v24 = _Q0;
  v139 = objc_opt_self();
  v41 = [v139 tertiaryLabelColor];
  Color.init(_:)();
  v42 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_1000DDA5C(v24, v31, &type metadata accessor for RoundedRectangle);
  v43 = *&v158 * 0.5;
  v44 = &v31[*(sub_1000077C8(&qword_100177A90, &qword_100120528) + 68)];
  sub_1000DDA5C(v24, v44, &type metadata accessor for RoundedRectangle);
  *(v44 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v43;
  v45 = v44 + *(sub_1000077C8(&qword_100177A98, &qword_100120530) + 36);
  v46 = v159;
  *v45 = v158;
  *(v45 + 16) = v46;
  *(v45 + 32) = v160;
  v47 = sub_1000077C8(&qword_100177AA0, &qword_100120538);
  *(v44 + *(v47 + 52)) = v42;
  *(v44 + *(v47 + 56)) = 256;
  v48 = static Alignment.center.getter();
  v50 = v49;
  sub_1000E0E64(v24, &type metadata accessor for RoundedRectangle);
  v51 = (v44 + *(sub_1000077C8(&qword_100177AA8, &qword_100120540) + 36));
  *v51 = v48;
  v51[1] = v50;
  v52 = v31;
  v53 = &v31[*(sub_1000077C8(&qword_100177AB0, &qword_100120548) + 36)];
  v35(&v53[*(v21 + 28)], v149, v34);
  *v53 = v148;
  v54 = &v53[*(sub_1000077C8(&qword_100177858, &qword_10011FFF0) + 36)];
  v169 = xmmword_10011F550;
  v170 = xmmword_10011F560;
  v171 = xmmword_10011F570;
  v172 = xmmword_10011F580;
  v149 = xmmword_10011F590;
  v173 = xmmword_10011F590;
  View._colorMatrix(_:)();
  v55 = &v54[*(sub_1000077C8(&qword_100177860, &qword_10011FFF8) + 36)];
  *v55 = 0x4069000000000000;
  v55[8] = 0;
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = &v53[*(sub_1000077C8(&qword_100177720, &qword_10011FF08) + 36)];
  *v59 = v56;
  v59[1] = v58;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = &v31[*(sub_1000077C8(&qword_100177AB8, &qword_100120550) + 36)];
  v61 = v162;
  *v60 = v161;
  *(v60 + 1) = v61;
  *(v60 + 2) = v163;
  static Color.black.getter();
  v62 = Color.opacity(_:)();

  v63 = &v31[*(v150 + 44)];
  *v63 = v62;
  v64 = v151;
  *(v63 + 8) = xmmword_10011F540;
  *(v63 + 3) = 0x4010000000000000;
  v65 = v64[3];
  sub_1000078DC(v64, v65);
  if (sub_10008C9EC(v65))
  {
    v66 = Image.init(systemName:)();
    v67 = *(sub_1000077C8(&qword_100177AE8, &unk_100120568) + 36);
    v164 = xmmword_10011F5A0;
    v165 = xmmword_10011F5B0;
    v166 = xmmword_10011F5C0;
    v167 = xmmword_10011F5D0;
    v168 = v149;
    v68 = v140;
    View._colorMatrix(_:)();
    *v68 = v66;
    static Font.Weight.medium.getter();
    v69 = enum case for Font.Design.default(_:);
    v70 = type metadata accessor for Font.Design();
    v71 = *(v70 - 8);
    v72 = v152;
    (*(v71 + 104))(v152, v69, v70);
    (*(v71 + 56))(v72, 0, 1, v70);
    v73 = static Font.system(size:weight:design:)();
    sub_1000159AC(v72, &qword_100177A70, &qword_10011AC50);
    KeyPath = swift_getKeyPath();
    v75 = (v68 + *(v143 + 36));
    *v75 = KeyPath;
    v75[1] = v73;
    sub_100007BA4(v68, v141, &qword_100177A78, &qword_100120510);
    swift_storeEnumTagMultiPayload();
    sub_1000E0F50();
    sub_1000E10C0();
    v76 = v144;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v76, v147, &qword_100177A68, &unk_100120500);
    swift_storeEnumTagMultiPayload();
    sub_1000E0EC4();
    v77 = v155;
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v76, &qword_100177A68, &unk_100120500);
    sub_1000159AC(v68, &qword_100177A78, &qword_100120510);
    v78 = 0;
    v79 = v77;
  }

  else
  {
    v80 = v152;
    v81 = v153;
    v82 = v64[3];
    v83 = v64[4];
    sub_1000078DC(v64, v82);
    sub_10008B7C8(v82, v83);
    if (v84)
    {
      v85 = Image.init(systemName:)();
      v86 = sub_1000077C8(&unk_1001778C0, &qword_100120038);
      v87 = v138;
      v88 = (v138 + *(v86 + 36));
      v89 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
      v90 = enum case for Image.Scale.large(_:);
      v91 = type metadata accessor for Image.Scale();
      (*(*(v91 - 8) + 104))(v88 + v89, v90, v91);
      *v88 = swift_getKeyPath();
      *v87 = v85;
      v92 = (v87 + *(sub_1000077C8(&qword_100177B30, &qword_100120588) + 36));
      v93 = *(sub_1000077C8(&qword_100177B50, &qword_100120590) + 28);
      static SymbolRenderingMode.monochrome.getter();
      v94 = type metadata accessor for SymbolRenderingMode();
      (*(*(v94 - 8) + 56))(v92 + v93, 0, 1, v94);
      *v92 = swift_getKeyPath();
      static Font.Weight.medium.getter();
      v95 = enum case for Font.Design.default(_:);
      v96 = type metadata accessor for Font.Design();
      v97 = *(v96 - 8);
      (*(v97 + 104))(v80, v95, v96);
      (*(v97 + 56))(v80, 0, 1, v96);
      v98 = static Font.system(size:weight:design:)();
      sub_1000159AC(v80, &qword_100177A70, &qword_10011AC50);
      v99 = swift_getKeyPath();
      v100 = (v87 + *(sub_1000077C8(&qword_100177B20, &qword_100120580) + 36));
      *v100 = v99;
      v100[1] = v98;
      v101 = [v139 quaternaryLabelColor];
      v102 = Color.init(_:)();
      v103 = swift_getKeyPath();
      v104 = (v87 + *(v81 + 36));
      *v104 = v103;
      v104[1] = v102;
      sub_100007BA4(v87, v141, &qword_100177A50, &unk_100121550);
      swift_storeEnumTagMultiPayload();
      sub_1000E0F50();
      sub_1000E10C0();
      v105 = v144;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v105, v147, &qword_100177A68, &unk_100120500);
      swift_storeEnumTagMultiPayload();
      sub_1000E0EC4();
      v79 = v155;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v105, &qword_100177A68, &unk_100120500);
      sub_1000159AC(v87, &qword_100177A50, &unk_100121550);
    }

    else
    {
      v106 = v64[3];
      v107 = v64[4];
      sub_1000078DC(v64, v106);
      v108 = sub_10008BC30(v106, v107);
      if (!v109)
      {
        v78 = 1;
        v79 = v155;
        goto LABEL_8;
      }

      *&v164 = v108;
      *(&v164 + 1) = v109;
      sub_10004BB74();
      v110 = Text.init<A>(_:)();
      v150 = v111;
      v151 = v110;
      v113 = v112;
      v115 = v114;
      static Font.Weight.medium.getter();
      v116 = enum case for Font.Design.default(_:);
      v117 = type metadata accessor for Font.Design();
      v118 = *(v117 - 8);
      (*(v118 + 104))(v80, v116, v117);
      (*(v118 + 56))(v80, 0, 1, v117);
      static Font.system(size:weight:design:)();
      v153 = v52;
      sub_1000159AC(v80, &qword_100177A70, &qword_10011AC50);
      v119 = v151;
      v120 = Text.font(_:)();
      v122 = v121;
      LOBYTE(v118) = v123;

      sub_10004BBC8(v119, v113, v115 & 1);

      v124 = [v139 quaternaryLabelColor];
      Color.init(_:)();
      v125 = Text.foregroundColor(_:)();
      v127 = v126;
      LOBYTE(v113) = v128;
      v130 = v129;

      sub_10004BBC8(v120, v122, v118 & 1);

      v131 = v147;
      *v147 = v125;
      v131[1] = v127;
      *(v131 + 16) = v113 & 1;
      v131[3] = v130;
      v52 = v153;
      swift_storeEnumTagMultiPayload();
      sub_1000E0EC4();
      v79 = v155;
      _ConditionalContent<>.init(storage:)();
    }

    v78 = 0;
  }

LABEL_8:
  v132 = sub_1000077C8(&qword_100177AC0, &qword_100120558);
  (*(*(v132 - 8) + 56))(v79, v78, 1, v132);
  v133 = v154;
  sub_100007BA4(v52, v154, &qword_100177A88, &qword_100120520);
  v134 = v156;
  sub_100007BA4(v79, v156, &qword_100177A80, &qword_100120518);
  v135 = v157;
  sub_100007BA4(v133, v157, &qword_100177A88, &qword_100120520);
  v136 = sub_1000077C8(&qword_100177AC8, &qword_100120560);
  sub_100007BA4(v134, v135 + *(v136 + 48), &qword_100177A80, &qword_100120518);
  sub_1000159AC(v79, &qword_100177A80, &qword_100120518);
  sub_1000159AC(v52, &qword_100177A88, &qword_100120520);
  sub_1000159AC(v134, &qword_100177A80, &qword_100120518);
  return sub_1000159AC(v133, &qword_100177A88, &qword_100120520);
}

Swift::Int sub_1000CECA0@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  result = Hasher._finalize()();
  *a1 = result;
  return result;
}

BOOL sub_1000CECF8()
{
  v1 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10[-v3];
  v5 = *(v0 + 176);
  v10[16] = *(v0 + 168);
  v11 = v5;
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  if (v10[15] != 1)
  {
    return 0;
  }

  v6 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = type metadata accessor for ContinuousClock.Instant();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) == 1;
  sub_1000159AC(v4, &qword_100174328, &qword_10011AF08);
  return v8;
}

void sub_1000CEE60()
{
  v1 = sub_1000077C8(&qword_1001778E8, &qword_1001200C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11[-v3 - 8];
  v5 = *(v0 + 160);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_100007878(v8, v11);
      sub_1000077C8(&unk_1001778F0, &qword_10011E000);
      started = type metadata accessor for StartCollaborationAction(0);
      if (swift_dynamicCast())
      {
        (*(*(started - 8) + 56))(v4, 0, 1, started);
        sub_1000159AC(v4, &qword_1001778E8, &qword_1001200C0);
        return;
      }

      ++v7;
      (*(*(started - 8) + 56))(v4, 1, 1, started);
      sub_1000159AC(v4, &qword_1001778E8, &qword_1001200C0);
      v8 += 40;
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000CF028()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10 && (v6 = [v10 createCollaborationFooterViewModel], swift_unknownObjectRelease(), v6) && (v7 = objc_msgSend(v6, "optionsSummary"), v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v8;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_1000CF1EC()
{
  v1 = sub_1000077C8(&qword_1001778E0, &qword_1001200B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v7 = &v23[-v6 - 8];
  v8 = type metadata accessor for PersonNameComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100007878(v0 + 120, v23);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_7:
    sub_1000159AC(v7, &qword_1001778E0, &qword_1001200B8);
    return 0;
  }

  v13 = v22;
  v14 = [v22 content];

  v15 = [v14 initiatorNameComponents];
  if (v15)
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v9 + 56))(v4, v16, 1, v8);
  sub_100021A84(v4, v7, &qword_1001778E0, &qword_1001200B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_7;
  }

  (*(v9 + 32))(v12, v7, v8);
  v18 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v20 = [v18 stringFromPersonNameComponents:isa];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 8))(v12, v8);
  return v21;
}

uint64_t sub_1000CF51C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_1000077C8(&qword_100177228, &qword_10011FAC8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v18 - v4);
  *v5 = static Alignment.center.getter();
  v5[1] = v6;
  v7 = sub_1000077C8(&qword_100177230, &qword_10011FAD0);
  sub_1000CF780(v1, v5 + *(v7 + 44));
  v8 = *(v1 + 208);
  LOBYTE(v34) = *(v1 + 200);
  *(&v34 + 1) = v8;
  sub_1000077C8(&qword_100177238, &qword_10011FAD8);
  State.projectedValue.getter();
  v34 = v19;
  v35 = v20;
  sub_1000DDCDC(v1, &v19);
  v9 = swift_allocObject();
  v10 = v32;
  *(v9 + 208) = v31;
  *(v9 + 224) = v10;
  *(v9 + 240) = v33;
  v11 = v28;
  *(v9 + 144) = v27;
  *(v9 + 160) = v11;
  v12 = v30;
  *(v9 + 176) = v29;
  *(v9 + 192) = v12;
  v13 = v24;
  *(v9 + 80) = v23;
  *(v9 + 96) = v13;
  v14 = v26;
  *(v9 + 112) = v25;
  *(v9 + 128) = v14;
  v15 = v20;
  *(v9 + 16) = v19;
  *(v9 + 32) = v15;
  v16 = v22;
  *(v9 + 48) = v21;
  *(v9 + 64) = v16;
  sub_1000077C8(&qword_100177240, &qword_10011FAE0);
  sub_1000199C8(&qword_100177248, &qword_100177228, &qword_10011FAC8);
  sub_1000DDD1C();
  sub_1000DDD70();
  View.sheet<A, B>(item:onDismiss:content:)();

  return sub_1000159AC(v5, &qword_100177228, &qword_10011FAC8);
}

uint64_t sub_1000CF780@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = sub_1000077C8(&qword_1001772D0, &qword_10011FB70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v80 - v5;
  v85 = sub_1000077C8(&qword_1001772D8, &qword_10011FB78);
  v89 = *(v85 - 8);
  v7 = v89[8];
  __chkstk_darwin(v85);
  v84 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v80 - v10;
  v11 = sub_1000077C8(&qword_1001772E0, &qword_10011FB80);
  v82 = *(v11 - 8);
  v12 = v82;
  v83 = v11;
  v13 = *(v82 + 64);
  __chkstk_darwin(v11);
  v87 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v80 - v16;
  v106 = sub_1000CECF8();
  sub_1000DDCDC(a1, &v91);
  v18 = swift_allocObject();
  v19 = v104;
  *(v18 + 208) = v103;
  *(v18 + 224) = v19;
  *(v18 + 240) = v105;
  v20 = v100;
  *(v18 + 144) = v99;
  *(v18 + 160) = v20;
  v21 = v102;
  *(v18 + 176) = v101;
  *(v18 + 192) = v21;
  v22 = v96;
  *(v18 + 80) = v95;
  *(v18 + 96) = v22;
  v23 = v98;
  *(v18 + 112) = v97;
  *(v18 + 128) = v23;
  v24 = v92;
  *(v18 + 16) = v91;
  *(v18 + 32) = v24;
  v25 = v94;
  *(v18 + 48) = v93;
  *(v18 + 64) = v25;
  sub_1000DDF80();
  v81 = v17;
  View.onTapGesture(count:perform:)();

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v26 = sub_1000077C8(&qword_1001772F0, &qword_10011FB88);
  sub_1000D0238(a1, &v6[*(v26 + 44)]);
  v27 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v6[*(sub_1000077C8(&qword_1001772F8, &qword_10011FB90) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v6[*(sub_1000077C8(&qword_100177300, &qword_10011FB98) + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = &v6[*(sub_1000077C8(&qword_100177308, &qword_10011FBA0) + 36)];
  *v56 = v47;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  sub_1000DDCDC(a1, &v91);
  v57 = swift_allocObject();
  v58 = v104;
  *(v57 + 208) = v103;
  *(v57 + 224) = v58;
  *(v57 + 240) = v105;
  v59 = v100;
  *(v57 + 144) = v99;
  *(v57 + 160) = v59;
  v60 = v102;
  *(v57 + 176) = v101;
  *(v57 + 192) = v60;
  v61 = v96;
  *(v57 + 80) = v95;
  *(v57 + 96) = v61;
  v62 = v98;
  *(v57 + 112) = v97;
  *(v57 + 128) = v62;
  v63 = v92;
  *(v57 + 16) = v91;
  *(v57 + 32) = v63;
  v64 = v94;
  *(v57 + 48) = v93;
  *(v57 + 64) = v64;
  v65 = &v6[*(v3 + 36)];
  *v65 = sub_1000DDFD4;
  v65[1] = v57;
  v65[2] = 0;
  v65[3] = 0;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v90 = a1;
  sub_1000077C8(&qword_100177310, &qword_10011FBA8);
  sub_1000DDFE4();
  sub_1000DE240();
  v66 = v88;
  View.animation<A>(_:body:)();

  sub_1000159AC(v6, &qword_1001772D0, &qword_10011FB70);
  v67 = *(v12 + 16);
  v68 = v87;
  v69 = v17;
  v70 = v83;
  v67(v87, v69, v83);
  v71 = v89[2];
  v72 = v84;
  v73 = v66;
  v74 = v85;
  v71(v84, v73, v85);
  v75 = v86;
  v67(v86, v68, v70);
  v76 = sub_1000077C8(&unk_100177380, &qword_10011FBD0);
  v71(&v75[*(v76 + 48)], v72, v74);
  v77 = v89[1];
  v77(v88, v74);
  v78 = *(v82 + 8);
  v78(v81, v70);
  v77(v72, v74);
  return (v78)(v87, v70);
}

uint64_t sub_1000CFDE0(uint64_t a1)
{
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v34);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v33 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  v17 = *(a1 + 176);
  LOBYTE(v39[0]) = *(a1 + 168);
  *(&v39[0] + 1) = v17;
  LOBYTE(v38[0]) = 0;
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.setter();
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v32 = *(v10 + 8);
  v32(v13, v9);
  sub_1000DDCDC(a1, v39);
  v18 = swift_allocObject();
  v19 = v39[13];
  *(v18 + 208) = v39[12];
  *(v18 + 224) = v19;
  *(v18 + 240) = v40;
  v20 = v39[9];
  *(v18 + 144) = v39[8];
  *(v18 + 160) = v20;
  v21 = v39[11];
  *(v18 + 176) = v39[10];
  *(v18 + 192) = v21;
  v22 = v39[5];
  *(v18 + 80) = v39[4];
  *(v18 + 96) = v22;
  v23 = v39[7];
  *(v18 + 112) = v39[6];
  *(v18 + 128) = v23;
  v24 = v39[1];
  *(v18 + 16) = v39[0];
  *(v18 + 32) = v24;
  v25 = v39[3];
  *(v18 + 48) = v39[2];
  *(v18 + 64) = v25;
  v38[4] = sub_1000E0654;
  v38[5] = v18;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_100106B40;
  v38[3] = &unk_100160DE0;
  v26 = _Block_copy(v38);

  static DispatchQoS.unspecified.getter();
  *&v39[0] = _swiftEmptyArrayStorage;
  sub_1000DC14C(&qword_100175D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000077C8(&unk_100176420, &unk_10011D928);
  sub_1000199C8(&qword_100175D28, &unk_100176420, &unk_10011D928);
  v27 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v31;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v4, v27);
  (*(v35 + 8))(v8, v36);
  return (v32)(v16, v33);
}

uint64_t sub_1000D0238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v775 = a2;
  v774 = sub_1000077C8(&qword_100177390, &qword_10011FBE0);
  v3 = *(*(v774 - 8) + 64);
  __chkstk_darwin(v774);
  v760 = &v675 - v4;
  v5 = sub_1000077C8(&qword_100177398, &qword_10011FBE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v727 = (&v675 - v7);
  v726 = sub_1000077C8(&qword_1001773A0, &qword_10011FBF0);
  v8 = *(*(v726 - 8) + 64);
  __chkstk_darwin(v726);
  v729 = &v675 - v9;
  v728 = sub_1000077C8(&qword_1001773A8, &qword_10011FBF8);
  v10 = *(*(v728 - 8) + 64);
  __chkstk_darwin(v728);
  v731 = &v675 - v11;
  v759 = sub_1000077C8(&qword_1001773B0, &qword_10011FC00);
  v12 = *(*(v759 - 8) + 64);
  __chkstk_darwin(v759);
  v730 = &v675 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v732 = &v675 - v15;
  v757 = sub_1000077C8(&qword_1001773B8, &qword_10011FC08);
  v16 = *(*(v757 - 8) + 64);
  __chkstk_darwin(v757);
  v758 = &v675 - v17;
  v737 = sub_1000077C8(&qword_1001773C0, &qword_10011FC10);
  v698 = *(v737 - 8);
  v18 = *(v698 + 64);
  __chkstk_darwin(v737);
  v697 = &v675 - v19;
  v734 = sub_1000077C8(&qword_1001773C8, &qword_10011FC18);
  v20 = *(*(v734 - 8) + 64);
  __chkstk_darwin(v734);
  v736 = &v675 - v21;
  v735 = sub_1000077C8(&qword_1001773D0, &qword_10011FC20);
  v22 = *(*(v735 - 8) + 64);
  __chkstk_darwin(v735);
  v706 = &v675 - v23;
  v699 = sub_1000077C8(&qword_1001773D8, &qword_10011FC28);
  v24 = *(*(v699 - 8) + 64);
  __chkstk_darwin(v699);
  v702 = &v675 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v700 = &v675 - v27;
  __chkstk_darwin(v28);
  v705 = &v675 - v29;
  v30 = sub_1000077C8(&qword_1001773E0, &qword_10011FC30);
  v703 = *(v30 - 8);
  v704 = v30;
  v31 = *(v703 + 64);
  __chkstk_darwin(v30);
  v701 = &v675 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v738 = &v675 - v34;
  v754 = sub_1000077C8(&qword_1001773E8, &qword_10011FC38);
  v35 = *(*(v754 - 8) + 64);
  __chkstk_darwin(v754);
  v733 = &v675 - v36;
  v37 = sub_1000077C8(&qword_1001773F0, &qword_10011FC40);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v755 = &v675 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v756 = &v675 - v41;
  v752 = sub_1000077C8(&qword_1001773F8, &qword_10011FC48);
  v751 = *(v752 - 8);
  v42 = *(v751 + 64);
  __chkstk_darwin(v752);
  v725 = &v675 - v43;
  v44 = sub_1000077C8(&qword_100177400, &qword_10011FC50);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v724 = &v675 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v723 = &v675 - v48;
  v717 = sub_1000077C8(&qword_100177408, &qword_10011FC58);
  v49 = *(*(v717 - 8) + 64);
  __chkstk_darwin(v717);
  v718 = (&v675 - v50);
  v682 = sub_1000077C8(&qword_100177410, &qword_10011FC60);
  v51 = *(*(v682 - 8) + 64);
  __chkstk_darwin(v682);
  v685 = &v675 - v52;
  v683 = sub_1000077C8(&qword_100177418, &qword_10011FC68);
  v53 = *(*(v683 - 8) + 64);
  __chkstk_darwin(v683);
  v688 = &v675 - v54;
  v687 = sub_1000077C8(&qword_100177420, &qword_10011FC70);
  v55 = *(*(v687 - 8) + 64);
  __chkstk_darwin(v687);
  v690 = &v675 - v56;
  v689 = sub_1000077C8(&qword_100177428, &qword_10011FC78);
  v57 = *(*(v689 - 8) + 64);
  __chkstk_darwin(v689);
  v692 = &v675 - v58;
  v713 = sub_1000077C8(&qword_100177430, &qword_10011FC80);
  v59 = *(*(v713 - 8) + 64);
  __chkstk_darwin(v713);
  v691 = &v675 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v693 = &v675 - v62;
  v63 = sub_1000077C8(&qword_100177438, &qword_10011FC88);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  v722 = &v675 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v746 = &v675 - v67;
  v68 = sub_1000077C8(&qword_100177440, &qword_10011FC90);
  v69 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68 - 8);
  v753 = &v675 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v778 = &v675 - v72;
  v771 = sub_1000077C8(&qword_100177448, &qword_10011FC98);
  v73 = *(*(v771 - 8) + 64);
  __chkstk_darwin(v771);
  v773 = &v675 - v74;
  v772 = sub_1000077C8(&qword_100177450, &qword_10011FCA0);
  v75 = *(*(v772 - 8) + 64);
  __chkstk_darwin(v772);
  v750 = (&v675 - v76);
  v748 = sub_1000077C8(&qword_100177458, &qword_10011FCA8);
  v77 = *(*(v748 - 8) + 64);
  __chkstk_darwin(v748);
  v749 = &v675 - v78;
  v712 = sub_1000077C8(&qword_100177460, &qword_10011FCB0);
  v79 = *(*(v712 - 8) + 64);
  __chkstk_darwin(v712);
  v716 = &v675 - v80;
  v715 = sub_1000077C8(&qword_100177468, &qword_10011FCB8);
  v81 = *(*(v715 - 8) + 64);
  __chkstk_darwin(v715);
  v686 = &v675 - v82;
  v679 = sub_1000077C8(&qword_100177470, &qword_10011FCC0);
  v83 = *(*(v679 - 8) + 64);
  __chkstk_darwin(v679);
  v681 = &v675 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v680 = &v675 - v86;
  __chkstk_darwin(v87);
  v684 = &v675 - v88;
  v761 = sub_1000077C8(&qword_100177478, &qword_10011FCC8);
  v89 = *(*(v761 - 8) + 64);
  __chkstk_darwin(v761);
  v743 = &v675 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v711 = &v675 - v92;
  v744 = sub_1000077C8(&qword_100177480, &qword_10011FCD0);
  v93 = *(*(v744 - 8) + 64);
  __chkstk_darwin(v744);
  v714 = &v675 - v94;
  v95 = sub_1000077C8(&qword_100177488, &qword_10011FCD8);
  v96 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95 - 8);
  v745 = &v675 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v98);
  v747 = &v675 - v99;
  v100 = sub_1000077C8(&qword_100177490, &qword_10011FCE0);
  v101 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100 - 8);
  v784 = &v675 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v103);
  v105 = &v675 - v104;
  v106 = type metadata accessor for Locale();
  v107 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106 - 8);
  v777 = &v675 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for String.LocalizationValue();
  v110 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109 - 8);
  v776 = &v675 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v779 = sub_1000077C8(&qword_100177498, &qword_10011FCE8);
  v770 = *(v779 - 8);
  v112 = *(v770 + 64);
  __chkstk_darwin(v779);
  v710 = &v675 - v113;
  v114 = sub_1000077C8(&qword_1001774A0, &qword_10011FCF0);
  v115 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114 - 8);
  v783 = &v675 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v117);
  v786 = &v675 - v118;
  v119 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v120 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119 - 8);
  v721 = &v675 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v122);
  v720 = &v675 - v123;
  __chkstk_darwin(v124);
  v719 = &v675 - v125;
  __chkstk_darwin(v126);
  v696 = &v675 - v127;
  __chkstk_darwin(v128);
  v695 = &v675 - v129;
  __chkstk_darwin(v130);
  v694 = &v675 - v131;
  __chkstk_darwin(v132);
  v678 = &v675 - v133;
  __chkstk_darwin(v134);
  v677 = &v675 - v135;
  __chkstk_darwin(v136);
  v676 = &v675 - v137;
  __chkstk_darwin(v138);
  v765 = &v675 - v139;
  __chkstk_darwin(v140);
  v767 = &v675 - v141;
  __chkstk_darwin(v142);
  v766 = &v675 - v143;
  __chkstk_darwin(v144);
  v781 = &v675 - v145;
  __chkstk_darwin(v146);
  v780 = &v675 - v147;
  __chkstk_darwin(v148);
  v709 = &v675 - v149;
  __chkstk_darwin(v150);
  v708 = &v675 - v151;
  __chkstk_darwin(v152);
  v707 = &v675 - v153;
  __chkstk_darwin(v154);
  v764 = (&v675 - v155);
  __chkstk_darwin(v156);
  *&v742 = &v675 - v157;
  __chkstk_darwin(v158);
  v160 = &v675 - v159;
  *&v741 = sub_1000077C8(&qword_1001774A8, &qword_10011FCF8);
  v161 = *(v741 - 8);
  v162 = *(v161 + 64);
  __chkstk_darwin(v741);
  v164 = &v675 - v163;
  v739 = sub_1000077C8(&qword_1001774B0, &qword_10011FD00);
  v165 = *(*(v739 - 8) + 64);
  __chkstk_darwin(v739);
  v167 = &v675 - v166;
  *&v762 = sub_1000077C8(&qword_1001774B8, &qword_10011FD08);
  v168 = *(*(v762 - 8) + 64);
  __chkstk_darwin(v762);
  v740 = &v675 - v169;
  v769 = sub_1000077C8(&qword_1001774C0, &qword_10011FD10);
  *&v768 = *(v769 - 1);
  v170 = *(v768 + 64);
  __chkstk_darwin(v769);
  v763 = &v675 - v171;
  v172 = sub_1000077C8(&qword_1001774C8, &qword_10011FD18);
  v173 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172 - 8);
  v782 = &v675 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v175);
  v177 = *(a1 + 8);
  v178 = *(v177 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_includeRemotePersonDetails);
  v789 = a1;
  v788 = v177;
  v787 = v105;
  v785 = &v675 - v176;
  if (v178 == 1)
  {
    v179 = *(a1 + 64);
    v180 = *(a1 + 96);
    *&v834[64] = *(a1 + 80);
    *&v834[80] = v180;
    v181 = *(a1 + 32);
    *v834 = *(a1 + 16);
    *&v834[16] = v181;
    v182 = *(a1 + 64);
    v184 = *(a1 + 16);
    v183 = *(a1 + 32);
    *&v834[32] = *(a1 + 48);
    *&v834[48] = v182;
    v185 = *(a1 + 96);
    v823[2] = *&v834[64];
    v824 = v185;
    v821 = v184;
    v822 = v183;
    *&v834[96] = *(a1 + 112);
    LODWORD(v825) = *(a1 + 112);
    v823[0] = *&v834[32];
    v823[1] = v179;
    sub_1000DDCDC(a1, v836);
    v186 = swift_allocObject();
    v187 = *&v836[176];
    v188 = *&v836[208];
    *(v186 + 208) = *&v836[192];
    *(v186 + 224) = v188;
    *(v186 + 240) = *&v836[224];
    v189 = *&v836[112];
    v190 = *&v836[144];
    *(v186 + 144) = *&v836[128];
    *(v186 + 160) = v190;
    *(v186 + 176) = *&v836[160];
    *(v186 + 192) = v187;
    v191 = *&v836[48];
    v192 = *&v836[80];
    *(v186 + 80) = *&v836[64];
    *(v186 + 96) = v192;
    *(v186 + 112) = *&v836[96];
    *(v186 + 128) = v189;
    v193 = *&v836[16];
    *(v186 + 16) = *v836;
    *(v186 + 32) = v193;
    *(v186 + 48) = *&v836[32];
    *(v186 + 64) = v191;
    sub_1000555B0(v834, &v794);
    sub_1000DFDE8();
    View.onTapGesture(count:perform:)();

    *&v796[32] = v823[2];
    v797 = v824;
    LODWORD(v798) = v825;
    v794 = v821;
    v795 = v822;
    *v796 = v823[0];
    *&v796[16] = v823[1];
    sub_1000DFE3C(&v794);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v194 = type metadata accessor for ContinuousClock.Instant();
    v195 = *(*(v194 - 8) + 48);
    v196 = 0.0;
    if (v195(v160, 1, v194) == 1)
    {
      v197 = 0.0;
    }

    else
    {
      v197 = 10.0;
    }

    sub_1000159AC(v160, &qword_100174328, &qword_10011AF08);
    (*(v161 + 32))(v167, v164, v741);
    v198 = &v167[*(v739 + 36)];
    *v198 = v197;
    v198[8] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v199 = v742;
    static Published.subscript.getter();

    if (v195(v199, 1, v194) == 1)
    {
      v196 = 1.0;
    }

    sub_1000159AC(v199, &qword_100174328, &qword_10011AF08);
    v200 = v167;
    v201 = v740;
    sub_100021A84(v200, v740, &qword_1001774B0, &qword_10011FD00);
    *(v201 + *(v762 + 36)) = v196;
    v202 = static Animation.spring(response:dampingFraction:blendDuration:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v203 = v764;
    static Published.subscript.getter();

    v204 = v195(v203, 1, v194);
    a1 = v789;
    v205 = v204 != 1;
    sub_1000159AC(v203, &qword_100174328, &qword_10011AF08);
    v206 = v201;
    v207 = v763;
    sub_100021A84(v206, v763, &qword_1001774B8, &qword_10011FD08);
    v208 = v769;
    v209 = &v207[v769[9]];
    *v209 = v202;
    v209[8] = v205;
    v210 = v785;
    sub_100021A84(v207, v785, &qword_1001774C0, &qword_10011FD10);
    (*(v768 + 56))(v210, 0, 1, v208);
  }

  else
  {
    (*(v768 + 56))(&v675 - v176, 1, 1, v769);
  }

  sub_1000CEE60();
  if (v211 & 1) == 0 || (v212 = *(a1 + 224), v836[0] = *(a1 + 216), *&v836[8] = v212, sub_1000077C8(&qword_100178430, &qword_10011FBD8), State.wrappedValue.getter(), (v794))
  {
    (*(v770 + 56))(v786, 1, 1, v779);
    goto LABEL_23;
  }

  v213 = *(a1 + 32);
  *v836 = *(a1 + 16);
  *&v836[16] = v213;
  v214 = *(a1 + 64);
  *&v836[32] = *(a1 + 48);
  v215 = *(a1 + 96);
  *&v836[64] = *(a1 + 80);
  *&v836[48] = v214;
  *&v836[80] = v215;
  *&v836[96] = *(a1 + 112);
  v216 = a1;
  v217 = *v836;
  v218 = *&v836[8];
  v219 = *&v836[16];
  v220 = *&v836[24];
  v221 = *&v836[32];
  if (*&v836[72] >> 62)
  {
    v229 = v216[18];
    v230 = v216[19];
    sub_1000078DC(v216 + 15, v229);
    v849 = v217;
    v850 = v218;
    v851 = v219;
    v852 = v220;
    v853 = v221;
    v856 = 0x8000000000000000;
    sub_1000555B0(v836, &v794);
    v226 = sub_10008AFCC(&v849, v229, v230);
    v228 = v231;

    if (!v228)
    {
LABEL_16:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v226 = String.init(localized:table:bundle:locale:comment:)();
      v228 = v232;
    }
  }

  else
  {
    LODWORD(v763) = *&v836[96];
    v222 = *&v836[88];
    v223 = *&v836[80];
    v224 = v216[19];
    *&v768 = v216[18];
    v769 = v224;
    v225 = *&v836[72];
    v762 = *&v836[40];
    v742 = *&v836[56];
    v764 = sub_1000078DC(v216 + 15, v768);
    v849 = v217;
    v850 = v218;
    v851 = v219;
    v852 = v220;
    v855 = v742;
    v854 = v762;
    v853 = v221;
    v856 = v225;
    v857 = v223;
    v858 = v222;
    v859 = v763;
    *&v796[32] = *&v836[64];
    v797 = *&v836[80];
    LODWORD(v798) = *&v836[96];
    v794 = *v836;
    v795 = *&v836[16];
    *v796 = *&v836[32];
    *&v796[16] = *&v836[48];
    *&v796[40] = *&v836[72] & 0x3FFFFFFFFFFFFFFFLL;
    sub_100070BB4(&v794, v834);
    v226 = sub_10008AFCC(&v849, v768, v769);
    v228 = v227;
    sub_100056DB4(v836);
    if (!v228)
    {
      goto LABEL_16;
    }
  }

  *&v794 = v226;
  *(&v794 + 1) = v228;
  sub_10004BB74();
  v233 = Text.init<A>(_:)();
  v235 = v234;
  v237 = v236;
  static Font.subheadline.getter();
  v769 = Text.font(_:)();
  *&v768 = v238;
  v240 = v239;
  v764 = v241;

  sub_10004BBC8(v233, v235, v237 & 1);

  LODWORD(v763) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v243 = v242;
  v245 = v244;
  v247 = v246;
  v249 = v248;
  LODWORD(v742) = v240 & 1;
  LOBYTE(v794) = v240 & 1;
  v834[0] = 0;
  LODWORD(v762) = static HierarchicalShapeStyle.primary.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v250 = v707;
  static Published.subscript.getter();

  v251 = type metadata accessor for ContinuousClock.Instant();
  v252 = *(*(v251 - 8) + 48);
  v253 = 0.0;
  if (v252(v250, 1, v251) == 1)
  {
    v254 = 0.0;
  }

  else
  {
    v254 = 10.0;
  }

  sub_1000159AC(v250, &qword_100174328, &qword_10011AF08);
  swift_getKeyPath();
  swift_getKeyPath();
  v255 = v708;
  static Published.subscript.getter();

  if (v252(v255, 1, v251) == 1)
  {
    v253 = 1.0;
  }

  sub_1000159AC(v255, &qword_100174328, &qword_10011AF08);
  v256 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v257 = v709;
  static Published.subscript.getter();

  v258 = v252(v257, 1, v251) != 1;
  sub_1000159AC(v257, &qword_100174328, &qword_10011AF08);
  v259 = v779;
  v260 = *(v779 + 36);
  KeyPath = swift_getKeyPath();
  v262 = v710;
  *&v710[v260] = KeyPath;
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  v263 = v768;
  *v262 = v769;
  *(v262 + 8) = v263;
  *(v262 + 16) = v742;
  *(v262 + 24) = v764;
  *(v262 + 32) = v763;
  *(v262 + 40) = v243;
  *(v262 + 48) = v245;
  *(v262 + 56) = v247;
  *(v262 + 64) = v249;
  *(v262 + 72) = 0;
  *(v262 + 76) = v762;
  *(v262 + 80) = v254;
  *(v262 + 88) = 0;
  *(v262 + 96) = v253;
  *(v262 + 104) = v256;
  *(v262 + 112) = v258;
  v264 = v786;
  sub_100021A84(v262, v786, &qword_100177498, &qword_10011FCE8);
  (*(v770 + 56))(v264, 0, 1, v259);
  a1 = v789;
LABEL_23:
  sub_1000DC0F0(a1 + 120, &v821);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v823[1] = *v836;
  *(&v823[1] + 1) = 0x3FF0000000000000;
  v265 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v823[2]) = v265;
  *(&v823[2] + 1) = v266;
  *&v824 = v267;
  *(&v824 + 1) = v268;
  v825 = v269;
  v826 = 0;
  v270 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v827 = v270;
  v828 = v271;
  v829 = v272;
  v830 = v273;
  v831 = v274;
  v832 = 0;
  v275 = *(a1 + 160);
  v276 = *(v275 + 16);
  *&v742 = v275;
  if (v276 && (sub_100007878(v275 + 40 * v276 - 8, v836), v277 = *&v836[24], v278 = *&v836[32], sub_1000078DC(v836, *&v836[24]), v279 = (*(v278 + 16))(v277, v278), sub_100007920(v836), (v279 & 1) == 0))
  {
    sub_1000D5604(&v821, a1, v834);
    sub_100007BA4(v834, &v794, &qword_1001774D0, &qword_10011FD68);
    v807 = 0;
    sub_1000077C8(&qword_1001774D0, &qword_10011FD68);
    sub_1000077C8(&qword_1001774D8, &qword_10011FD70);
    sub_1000DE418();
    sub_1000DE4A4();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v834, &qword_1001774D0, &qword_10011FD68);
  }

  else
  {
    sub_100007BA4(&v821, &v794, &qword_1001774D8, &qword_10011FD70);
    v807 = 1;
    sub_1000077C8(&qword_1001774D0, &qword_10011FD68);
    sub_1000077C8(&qword_1001774D8, &qword_10011FD70);
    sub_1000DE418();
    sub_1000DE4A4();
    _ConditionalContent<>.init(storage:)();
  }

  sub_1000159AC(&v821, &qword_1001774D8, &qword_10011FD70);
  swift_getKeyPath();
  swift_getKeyPath();
  v280 = v780;
  static Published.subscript.getter();

  v281 = type metadata accessor for ContinuousClock.Instant();
  v282 = *(v281 - 8);
  v283 = *(v282 + 48);
  v284 = v282 + 48;
  LODWORD(v770) = v283(v280, 1, v281) != 1;
  sub_1000159AC(v280, &qword_100174328, &qword_10011AF08);
  memcpy(v834, v836, 0x112uLL);
  v285 = *(v789 + 168);
  v286 = *(v789 + 176);
  v836[0] = v285;
  *&v836[8] = v286;
  v287 = sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  if (v794)
  {
    v288 = 1.0;
  }

  else
  {
    v288 = 0.25;
  }

  static UnitPoint.center.getter();
  v290 = v289;
  v292 = v291;
  v833[0] = *v836;
  *(v833 + 3) = *&v836[3];
  v780 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v836[0] = v285;
  *&v836[8] = v286;
  v779 = v287;
  State.wrappedValue.getter();
  v293 = v794;
  v294 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v295 = v781;
  static Published.subscript.getter();

  v764 = v281;
  v763 = v283;
  *&v762 = v284;
  v296 = v283(v295, 1, v281) != 1;
  sub_1000159AC(v295, &qword_100174328, &qword_10011AF08);
  memcpy(v836, v834, sizeof(v836));
  *v838 = v833[0];
  *&v838[3] = *(v833 + 3);
  v837 = v770;
  v839 = 0x4059000000000000;
  v840 = v288;
  v841 = v288;
  v842 = v290;
  v843 = v292;
  v844 = v780;
  v845 = v293;
  v297 = v789;
  *v846 = *v835;
  *&v846[3] = *&v835[3];
  v847 = v294;
  v848 = v296;
  sub_1000CEE60();
  if (v298)
  {
    v770 = 0;
    v769 = 0;
    *&v768 = 0;
    v781 = 0;
    v765 = 0;
    v767 = 0;
    LODWORD(v766) = 0;
    v780 = 0;
    v299 = v778;
    goto LABEL_42;
  }

  v300 = *(v297 + 32);
  v794 = *(v297 + 16);
  v795 = v300;
  v301 = *(v297 + 64);
  *v796 = *(v297 + 48);
  *&v796[16] = v301;
  v302 = *(v297 + 96);
  *&v796[32] = *(v297 + 80);
  v797 = v302;
  LODWORD(v798) = *(v297 + 112);
  v303 = v794;
  v304 = v795;
  v305 = *v796;
  if (*&v796[40] >> 62)
  {
    v313 = *(v297 + 144);
    v314 = *(v297 + 152);
    sub_1000078DC((v297 + 120), v313);
    v821 = v303;
    v822 = v304;
    *&v823[0] = v305;
    *(&v823[2] + 1) = 0x8000000000000000;
    sub_1000555B0(&v794, &v814);
    v310 = sub_10008AFCC(&v821, v313, v314);
    v312 = v315;

    if (!v312)
    {
LABEL_36:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v310 = String.init(localized:table:bundle:locale:comment:)();
      v312 = v316;
    }
  }

  else
  {
    LODWORD(v769) = v798;
    v306 = *(&v797 + 1);
    v307 = v797;
    v308 = *(v297 + 152);
    v780 = *(v297 + 144);
    v781 = v308;
    v309 = *&v796[40];
    v768 = *&v796[8];
    v741 = *&v796[24];
    v770 = sub_1000078DC((v297 + 120), v780);
    v821 = v303;
    v822 = v304;
    *(&v823[1] + 8) = v741;
    *(v823 + 8) = v768;
    *&v823[0] = v305;
    *(&v823[2] + 1) = v309;
    v824 = __PAIR128__(v306, v307);
    LODWORD(v825) = v769;
    *&v818 = *&v796[32];
    v819 = v797;
    v820 = v798;
    v814 = v794;
    v815 = v795;
    v816 = *v796;
    v817 = *&v796[16];
    *(&v818 + 1) = *&v796[40] & 0x3FFFFFFFFFFFFFFFLL;
    sub_100070BB4(&v814, v790);
    v310 = sub_10008AFCC(&v821, v780, v781);
    v312 = v311;
    sub_100056DB4(&v794);
    if (!v312)
    {
      goto LABEL_36;
    }
  }

  *&v814 = v310;
  *(&v814 + 1) = v312;
  sub_10004BB74();
  v317 = Text.init<A>(_:)();
  v319 = v318;
  v321 = v320;
  static Font.headline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v322 = Text.font(_:)();
  v324 = v323;
  v326 = v325;

  sub_10004BBC8(v317, v319, v321 & 1);

  LODWORD(v814) = static HierarchicalShapeStyle.primary.getter();
  v770 = Text.foregroundStyle<A>(_:)();
  v769 = v327;
  LODWORD(v781) = v328;
  *&v768 = v329;
  sub_10004BBC8(v322, v324, v326 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  v330 = v766;
  static Published.subscript.getter();

  v331 = v764;
  v332 = v763;
  LODWORD(v741) = (v763)(v330, 1, v764);
  sub_1000159AC(v330, &qword_100174328, &qword_10011AF08);
  swift_getKeyPath();
  swift_getKeyPath();
  v333 = v767;
  static Published.subscript.getter();

  v334 = (v332)(v333, 1, v331);
  sub_1000159AC(v333, &qword_100174328, &qword_10011AF08);
  v767 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v335 = v765;
  static Published.subscript.getter();

  LODWORD(v766) = (v332)(v335, 1, v331) != 1;
  sub_1000159AC(v335, &qword_100174328, &qword_10011AF08);
  LOBYTE(v814) = v781 & 1;
  v780 = (v781 & 1);
  v336 = 0x4024000000000000;
  if (v741 == 1)
  {
    v336 = 0;
  }

  v781 = v336;
  v337 = 0x3FF0000000000000;
  if (v334 != 1)
  {
    v337 = 0;
  }

  v765 = v337;
  v299 = v778;
  v297 = v789;
LABEL_42:
  v338 = *(v297 + 224);
  LOBYTE(v794) = *(v297 + 216);
  *(&v794 + 1) = v338;
  State.wrappedValue.getter();
  v339 = v814;
  sub_1000CEE60();
  if (v339 != 1)
  {
    if ((v340 & 1) == 0)
    {
      v452 = 1;
      goto LABEL_74;
    }

    v376 = *(v297 + 144);
    v377 = *(v297 + 152);
    sub_1000078DC((v297 + 120), v376);
    sub_10008CB60(v376, v377);
    if (v378)
    {
      __chkstk_darwin(v378);
      __chkstk_darwin(v379);
      sub_1000077C8(&qword_100177828, &qword_10011FFB0);
      sub_1000077C8(&qword_100177830, &qword_10011FFB8);
      sub_1000DFAE0();
      sub_1000199C8(&qword_100177850, &qword_100177830, &qword_10011FFB8);
      v380 = v685;
      Menu.init(content:label:)();
      v297 = v789;
      v381 = static Color.primary.getter();
      v382 = swift_getKeyPath();
      v383 = &v380[*(sub_1000077C8(&qword_1001776E0, &qword_10011FEF8) + 36)];
      *v383 = v382;
      v383[1] = v381;
      v384 = &v380[*(sub_1000077C8(&qword_1001776D0, &qword_10011FEF0) + 36)];
      v385 = v380;
      v386 = type metadata accessor for RoundedRectangle();
      v387 = *(v386 + 20);
      v388 = enum case for RoundedCornerStyle.continuous(_:);
      v389 = type metadata accessor for RoundedCornerStyle();
      v390 = *(*(v389 - 8) + 104);
      v390(&v384[v387], v388, v389);
      __asm { FMOV            V0.2D, #15.0 }

      *v384 = _Q0;
      *&v384[*(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)] = 256;
      v396 = (v385 + *(sub_1000077C8(&qword_1001776C0, &qword_10011FEE8) + 36));
      v390(&v396[*(v386 + 20)], v388, v389);
      __asm { FMOV            V0.2D, #30.0 }

      *v396 = _Q0;
      v398 = &v396[*(sub_1000077C8(&qword_100177858, &qword_10011FFF0) + 36)];
      v814 = xmmword_10011F550;
      v815 = xmmword_10011F560;
      v816 = xmmword_10011F570;
      v817 = xmmword_10011F580;
      v818 = xmmword_10011F590;
      View._colorMatrix(_:)();
      v399 = &v398[*(sub_1000077C8(&qword_100177860, &qword_10011FFF8) + 36)];
      *v399 = 0x4069000000000000;
      v399[8] = 0;
      v400 = static Alignment.center.getter();
      v402 = v401;
      v403 = &v396[*(sub_1000077C8(&qword_100177720, &qword_10011FF08) + 36)];
      *v403 = v400;
      v403[1] = v402;
      LOBYTE(v400) = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v404 = v385 + *(v682 + 36);
      *v404 = v400;
      *(v404 + 8) = v405;
      *(v404 + 16) = v406;
      *(v404 + 24) = v407;
      *(v404 + 32) = v408;
      *(v404 + 40) = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      v409 = v676;
      static Published.subscript.getter();

      v410 = v764;
      v411 = v763;
      v412 = 0.0;
      if ((v763)(v409, 1, v764) == 1)
      {
        v413 = 0.0;
      }

      else
      {
        v413 = 10.0;
      }

      sub_1000159AC(v409, &qword_100174328, &qword_10011AF08);
      v414 = v688;
      sub_100021A84(v385, v688, &qword_100177410, &qword_10011FC60);
      v415 = v414 + *(v683 + 36);
      *v415 = v413;
      *(v415 + 8) = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      v416 = v677;
      static Published.subscript.getter();

      if ((v411)(v416, 1, v410) == 1)
      {
        v412 = 1.0;
      }

      sub_1000159AC(v416, &qword_100174328, &qword_10011AF08);
      v417 = v690;
      sub_100021A84(v414, v690, &qword_100177418, &qword_10011FC68);
      *(v417 + *(v687 + 36)) = v412;
      v418 = static Animation.spring(response:dampingFraction:blendDuration:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v419 = v678;
      static Published.subscript.getter();

      v420 = (v411)(v419, 1, v410) != 1;
      sub_1000159AC(v419, &qword_100174328, &qword_10011AF08);
      v421 = v692;
      sub_100021A84(v417, v692, &qword_100177420, &qword_10011FC70);
      v422 = v421 + *(v689 + 36);
      *v422 = v418;
      *(v422 + 8) = v420;
      v423 = *(v713 + 36);
      v424 = swift_getKeyPath();
      v425 = v691;
      *&v691[v423] = v424;
      sub_1000077C8(&qword_100174C00, &qword_10011BD80);
      swift_storeEnumTagMultiPayload();
      sub_100021A84(v421, v425, &qword_100177428, &qword_10011FC78);
      v426 = v693;
      sub_100021A84(v425, v693, &qword_100177430, &qword_10011FC80);
      sub_100007BA4(v426, v718, &qword_100177430, &qword_10011FC80);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100177688, &qword_10011FEE0);
      sub_1000DF174(&qword_100177690, &qword_100177430, &qword_10011FC80, sub_1000DF228);
      sub_1000DF6D8();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v426, &qword_100177430, &qword_10011FC80);
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v476 = v814;
      v477 = BYTE8(v814);
      v478 = v815;
      v479 = BYTE8(v815);
      LOBYTE(v794) = 1;
      LOBYTE(v790[0]) = BYTE8(v814);
      LOBYTE(v808) = BYTE8(v815);
      v480 = v718;
      *v718 = 0;
      *(v480 + 8) = 1;
      v480[2] = v476;
      *(v480 + 24) = v477;
      v480[4] = v478;
      *(v480 + 40) = v479;
      *(v480 + 3) = v816;
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100177688, &qword_10011FEE0);
      sub_1000DF174(&qword_100177690, &qword_100177430, &qword_10011FC80, sub_1000DF228);
      sub_1000DF6D8();
      _ConditionalContent<>.init(storage:)();
    }

    v481 = v723;
    v482 = *(v297 + 192);
    LOBYTE(v794) = *(v297 + 184);
    *(&v794 + 1) = v482;
    State.wrappedValue.getter();
    if (LOBYTE(v790[0]) != 1)
    {
      goto LABEL_65;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v794)
    {
      v792 = &OBJC_PROTOCOL___SFCollaborationCKShareItem;
      v483 = swift_dynamicCastObjCProtocolConditional();
      if (v483)
      {
        v484 = [v483 isServiceManatee];
        swift_unknownObjectRelease();
        if (v484)
        {
LABEL_65:
          v485 = 1;
LABEL_73:
          v537 = sub_1000077C8(&qword_100177738, &qword_10011FF10);
          (*(*(v537 - 8) + 56))(v481, v485, 1, v537);
          v538 = v746;
          v539 = v722;
          sub_100007BA4(v746, v722, &qword_100177438, &qword_10011FC88);
          v540 = v724;
          sub_100007BA4(v481, v724, &qword_100177400, &qword_10011FC50);
          v541 = v725;
          sub_100007BA4(v539, v725, &qword_100177438, &qword_10011FC88);
          v542 = sub_1000077C8(&qword_100177740, &unk_10011FF18);
          sub_100007BA4(v540, v541 + *(v542 + 48), &qword_100177400, &qword_10011FC50);
          sub_1000159AC(v481, &qword_100177400, &qword_10011FC50);
          sub_1000159AC(v538, &qword_100177438, &qword_10011FC88);
          sub_1000159AC(v540, &qword_100177400, &qword_10011FC50);
          sub_1000159AC(v539, &qword_100177438, &qword_10011FC88);
          v299 = v778;
          sub_100021A84(v541, v778, &qword_1001773F8, &qword_10011FC48);
          v452 = 0;
LABEL_74:
          (*(v751 + 56))(v299, v452, 1, v752);
          sub_1000CEE60();
          if ((v543 & 1) == 0)
          {
            v565 = static VerticalAlignment.center.getter();
            v566 = v727;
            *v727 = v565;
            v566[1] = 0;
            *(v566 + 16) = 1;
            v567 = *(sub_1000077C8(&unk_100177530, &qword_10011FD90) + 44);
            v790[0] = v742;
            swift_getKeyPath();
            sub_1000DDCDC(v297, &v794);
            v568 = swift_allocObject();
            v569 = v805;
            *(v568 + 208) = v804;
            *(v568 + 224) = v569;
            *(v568 + 240) = v806;
            v570 = v801;
            *(v568 + 144) = v800;
            *(v568 + 160) = v570;
            v571 = v803;
            *(v568 + 176) = v802;
            *(v568 + 192) = v571;
            v572 = v797;
            *(v568 + 80) = *&v796[32];
            *(v568 + 96) = v572;
            v573 = v799;
            *(v568 + 112) = v798;
            *(v568 + 128) = v573;
            v574 = v795;
            *(v568 + 16) = v794;
            *(v568 + 32) = v574;
            v575 = *&v796[16];
            *(v568 + 48) = *v796;
            *(v568 + 64) = v575;

            sub_1000077C8(&unk_100178470, &qword_10011FDC0);
            type metadata accessor for ShareableContentActionButton(0);
            sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0);
            sub_1000DC14C(&qword_100177548, type metadata accessor for ShareableContentActionButton);
            ForEach<>.init(_:id:content:)();
            swift_getKeyPath();
            swift_getKeyPath();
            v576 = v719;
            static Published.subscript.getter();

            v577 = v764;
            v578 = v763;
            v579 = 0.0;
            if ((v763)(v576, 1, v764) == 1)
            {
              v580 = 0.0;
            }

            else
            {
              v580 = 10.0;
            }

            sub_1000159AC(v576, &qword_100174328, &qword_10011AF08);
            v581 = v566;
            v582 = v729;
            sub_100021A84(v581, v729, &qword_100177398, &qword_10011FBE8);
            v583 = v582 + *(v726 + 36);
            *v583 = v580;
            *(v583 + 8) = 0;
            swift_getKeyPath();
            swift_getKeyPath();
            v584 = v720;
            static Published.subscript.getter();

            if ((v578)(v584, 1, v577) == 1)
            {
              v579 = 1.0;
            }

            sub_1000159AC(v584, &qword_100174328, &qword_10011AF08);
            v585 = v731;
            sub_100021A84(v582, v731, &qword_1001773A0, &qword_10011FBF0);
            *(v585 + *(v728 + 36)) = v579;
            v586 = static Animation.spring(response:dampingFraction:blendDuration:)();
            swift_getKeyPath();
            swift_getKeyPath();
            v587 = v721;
            static Published.subscript.getter();

            v588 = (v578)(v587, 1, v577);
            v299 = v778;
            v589 = v588 != 1;
            sub_1000159AC(v587, &qword_100174328, &qword_10011AF08);
            v590 = v730;
            sub_100021A84(v585, v730, &qword_1001773A8, &qword_10011FBF8);
            v591 = v590 + *(v759 + 36);
            *v591 = v586;
            *(v591 + 8) = v589;
            v592 = &qword_1001773B0;
            v593 = &qword_10011FC00;
            v594 = v732;
            sub_100021A84(v590, v732, &qword_1001773B0, &qword_10011FC00);
            sub_100007BA4(v594, v758, &qword_1001773B0, &qword_10011FC00);
            swift_storeEnumTagMultiPayload();
            sub_1000DE790();
            sub_1000DEAB4();
            v595 = v756;
            _ConditionalContent<>.init(storage:)();
            v596 = v594;
            goto LABEL_96;
          }

          v544 = *(v297 + 192);
          LOBYTE(v794) = *(v297 + 184);
          *(&v794 + 1) = v544;
          State.wrappedValue.getter();
          if (LOBYTE(v790[0]) != 1)
          {
            v790[0] = v742;
            swift_getKeyPath();
            sub_1000DDCDC(v297, &v794);
            v597 = swift_allocObject();
            v598 = v805;
            *(v597 + 208) = v804;
            *(v597 + 224) = v598;
            *(v597 + 240) = v806;
            v599 = v801;
            *(v597 + 144) = v800;
            *(v597 + 160) = v599;
            v600 = v803;
            *(v597 + 176) = v802;
            *(v597 + 192) = v600;
            v601 = v797;
            *(v597 + 80) = *&v796[32];
            *(v597 + 96) = v601;
            v602 = v799;
            *(v597 + 112) = v798;
            *(v597 + 128) = v602;
            v603 = v795;
            *(v597 + 16) = v794;
            *(v597 + 32) = v603;
            v604 = *&v796[16];
            *(v597 + 48) = *v796;
            *(v597 + 64) = v604;

            sub_1000077C8(&unk_100178470, &qword_10011FDC0);
            sub_1000077C8(&qword_100177570, &qword_10011FDC8);
            sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0);
            sub_1000DE8CC();
            v605 = v697;
            ForEach<>.init(_:id:content:)();
            v606 = v698;
            v607 = v737;
            (*(v698 + 16))(v736, v605, v737);
            swift_storeEnumTagMultiPayload();
            sub_1000199C8(&qword_100177558, &qword_1001773D0, &qword_10011FC20);
            sub_1000DE848();
            v608 = v733;
            _ConditionalContent<>.init(storage:)();
            (*(v606 + 8))(v605, v607);
LABEL_95:
            v592 = &qword_1001773E8;
            v593 = &qword_10011FC38;
            sub_100007BA4(v608, v758, &qword_1001773E8, &qword_10011FC38);
            swift_storeEnumTagMultiPayload();
            sub_1000DE790();
            sub_1000DEAB4();
            v595 = v756;
            _ConditionalContent<>.init(storage:)();
            v596 = v608;
LABEL_96:
            sub_1000159AC(v596, v592, v593);
            v653 = v753;
            sub_100007BA4(v299, v753, &qword_100177440, &qword_10011FC90);
            v654 = v755;
            sub_100007BA4(v595, v755, &qword_1001773F0, &qword_10011FC40);
            v655 = v760;
            sub_100007BA4(v653, v760, &qword_100177440, &qword_10011FC90);
            v656 = sub_1000077C8(&qword_1001775D8, &qword_10011FDF0);
            v657 = v655 + *(v656 + 48);
            *v657 = 0x4040000000000000;
            *(v657 + 8) = 0;
            sub_100007BA4(v654, v655 + *(v656 + 64), &qword_1001773F0, &qword_10011FC40);
            sub_1000159AC(v654, &qword_1001773F0, &qword_10011FC40);
            sub_1000159AC(v653, &qword_100177440, &qword_10011FC90);
            sub_100007BA4(v655, v773, &qword_100177390, &qword_10011FBE0);
            swift_storeEnumTagMultiPayload();
            sub_1000199C8(&qword_1001775E0, &qword_100177450, &qword_10011FCA0);
            sub_1000199C8(&qword_1001775E8, &qword_100177390, &qword_10011FBE0);
            _ConditionalContent<>.init(storage:)();
            sub_1000159AC(v655, &qword_100177390, &qword_10011FBE0);
            sub_1000159AC(v595, &qword_1001773F0, &qword_10011FC40);
            sub_1000159AC(v299, &qword_100177440, &qword_10011FC90);
            goto LABEL_97;
          }

          v790[0] = v742;
          swift_getKeyPath();
          sub_1000DDCDC(v297, &v794);
          v545 = swift_allocObject();
          v546 = v805;
          *(v545 + 208) = v804;
          *(v545 + 224) = v546;
          *(v545 + 240) = v806;
          v547 = v801;
          *(v545 + 144) = v800;
          *(v545 + 160) = v547;
          v548 = v803;
          *(v545 + 176) = v802;
          *(v545 + 192) = v548;
          v549 = v797;
          *(v545 + 80) = *&v796[32];
          *(v545 + 96) = v549;
          v550 = v799;
          *(v545 + 112) = v798;
          *(v545 + 128) = v550;
          v551 = v795;
          *(v545 + 16) = v794;
          *(v545 + 32) = v551;
          v552 = *&v796[16];
          *(v545 + 48) = *v796;
          *(v545 + 64) = v552;

          sub_1000077C8(&unk_100178470, &qword_10011FDC0);
          sub_1000077C8(&qword_100177608, &qword_10011FE10);
          sub_1000199C8(&qword_100177540, &unk_100178470, &qword_10011FDC0);
          sub_1000DECC0();
          ForEach<>.init(_:id:content:)();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
          v553 = swift_allocObject();
          *(v553 + 16) = xmmword_10011F5E0;
          v554 = sub_1000CF1EC();
          v556 = v555;
          *(v553 + 56) = &type metadata for String;
          v557 = sub_10004C144();
          *(v553 + 64) = v557;
          *(v553 + 32) = v554;
          *(v553 + 40) = v556;
          sub_100007878(v297 + 120, &v794);
          sub_1000077C8(&qword_100172E68, &qword_100118B30);
          sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
          if ((swift_dynamicCast() & 1) != 0 && (v558 = v790[0], v559 = [v790[0] content], v558, v560 = objc_msgSend(v559, "initiatorHandle"), v559, v560))
          {
            v561 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v563 = v562;

            v564 = (v553 + 72);
            *(v553 + 96) = &type metadata for String;
            *(v553 + 104) = v557;
            if (v563)
            {
              *v564 = v561;
LABEL_89:
              *(v553 + 80) = v563;
              v609 = static String.localizedStringWithFormat(_:_:)();
              v611 = v610;

              *&v794 = v609;
              *(&v794 + 1) = v611;
              sub_10004BB74();
              v789 = Text.init<A>(_:)();
              v779 = v612;
              LOBYTE(v609) = v613;
              v777 = v614;
              LODWORD(v776) = static Edge.Set.top.getter();
              EdgeInsets.init(_all:)();
              v761 = v615;
              v752 = v616;
              v618 = v617;
              v620 = v619;
              LODWORD(v750) = v609 & 1;
              LOBYTE(v808) = v609 & 1;
              v793 = 0;
              LODWORD(v751) = static Edge.Set.bottom.getter();
              EdgeInsets.init(_all:)();
              v622 = v621;
              v624 = v623;
              v626 = v625;
              v628 = v627;
              LOBYTE(v790[0]) = 0;
              v749 = static Font.caption.getter();
              v748 = swift_getKeyPath();
              LODWORD(v747) = static HierarchicalShapeStyle.primary.getter();
              v746 = swift_getKeyPath();
              v745 = swift_getKeyPath();
              LOBYTE(v794) = 0;
              swift_getKeyPath();
              swift_getKeyPath();
              v629 = v694;
              static Published.subscript.getter();

              v630 = v764;
              v631 = v763;
              v632 = 0.0;
              if ((v763)(v629, 1, v764) == 1)
              {
                v633 = 0.0;
              }

              else
              {
                v633 = 10.0;
              }

              sub_1000159AC(v629, &qword_100174328, &qword_10011AF08);
              swift_getKeyPath();
              swift_getKeyPath();
              v634 = v695;
              static Published.subscript.getter();

              if ((v631)(v634, 1, v630) == 1)
              {
                v632 = 1.0;
              }

              sub_1000159AC(v634, &qword_100174328, &qword_10011AF08);
              v635 = static Animation.spring(response:dampingFraction:blendDuration:)();
              swift_getKeyPath();
              swift_getKeyPath();
              v636 = v696;
              static Published.subscript.getter();

              v637 = (v631)(v636, 1, v630) != 1;
              sub_1000159AC(v636, &qword_100174328, &qword_10011AF08);
              v638 = *(v699 + 36);
              v639 = swift_getKeyPath();
              v640 = v700;
              *&v700[v638] = v639;
              sub_1000077C8(&qword_100174C00, &qword_10011BD80);
              swift_storeEnumTagMultiPayload();
              v641 = v779;
              *v640 = v789;
              *(v640 + 8) = v641;
              *(v640 + 16) = v750;
              *(v640 + 24) = v777;
              *(v640 + 32) = v776;
              v642 = v752;
              *(v640 + 40) = v761;
              *(v640 + 48) = v642;
              *(v640 + 56) = v618;
              *(v640 + 64) = v620;
              *(v640 + 72) = 0;
              *(v640 + 80) = v751;
              *(v640 + 88) = v622;
              *(v640 + 96) = v624;
              *(v640 + 104) = v626;
              *(v640 + 112) = v628;
              *(v640 + 120) = 0;
              v643 = v749;
              *(v640 + 128) = v748;
              *(v640 + 136) = v643;
              *(v640 + 144) = v747;
              *(v640 + 152) = v746;
              *(v640 + 160) = 1;
              *(v640 + 168) = v745;
              *(v640 + 176) = 2;
              *(v640 + 184) = 0;
              *(v640 + 192) = v633;
              *(v640 + 200) = 0;
              *(v640 + 208) = v632;
              *(v640 + 216) = v635;
              *(v640 + 224) = v637;
              v644 = v705;
              sub_100021A84(v640, v705, &qword_1001773D8, &qword_10011FC28);
              v646 = v703;
              v645 = v704;
              v647 = *(v703 + 16);
              v648 = v701;
              v647(v701, v738, v704);
              v649 = v702;
              sub_100007BA4(v644, v702, &qword_1001773D8, &qword_10011FC28);
              v650 = v706;
              v647(v706, v648, v645);
              v651 = sub_1000077C8(&qword_100177680, &qword_10011FED8);
              sub_100007BA4(v649, v650 + *(v651 + 48), &qword_1001773D8, &qword_10011FC28);
              sub_1000159AC(v649, &qword_1001773D8, &qword_10011FC28);
              v652 = *(v646 + 8);
              v652(v648, v645);
              sub_100007BA4(v650, v736, &qword_1001773D0, &qword_10011FC20);
              swift_storeEnumTagMultiPayload();
              sub_1000199C8(&qword_100177558, &qword_1001773D0, &qword_10011FC20);
              sub_1000DE848();
              v608 = v733;
              _ConditionalContent<>.init(storage:)();
              sub_1000159AC(v650, &qword_1001773D0, &qword_10011FC20);
              sub_1000159AC(v644, &qword_1001773D8, &qword_10011FC28);
              v652(v738, v645);
              v299 = v778;
              goto LABEL_95;
            }
          }

          else
          {
            v564 = (v553 + 72);
            *(v553 + 96) = &type metadata for String;
            *(v553 + 104) = v557;
          }

          *v564 = 0;
          v563 = 0xE000000000000000;
          goto LABEL_89;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_1000DDCDC(v297, &v794);
    v529 = swift_allocObject();
    *(v529 + 240) = v806;
    v530 = v805;
    *(v529 + 208) = v804;
    *(v529 + 224) = v530;
    v531 = v801;
    *(v529 + 144) = v800;
    *(v529 + 160) = v531;
    v532 = v803;
    *(v529 + 176) = v802;
    *(v529 + 192) = v532;
    v533 = v797;
    *(v529 + 80) = *&v796[32];
    *(v529 + 96) = v533;
    v534 = v799;
    *(v529 + 112) = v798;
    *(v529 + 128) = v534;
    v535 = v795;
    *(v529 + 16) = v794;
    *(v529 + 32) = v535;
    v536 = *&v796[16];
    *(v529 + 48) = *v796;
    *(v529 + 64) = v536;
    __chkstk_darwin(v529);
    sub_1000077C8(&qword_100177748, &qword_10011FF70);
    sub_1000DF174(&qword_100177750, &qword_100177748, &qword_10011FF70, sub_1000DF790);
    Button.init(action:label:)();
    v485 = 0;
    goto LABEL_73;
  }

  if (v340)
  {
    v341 = *(v297 + 192);
    LOBYTE(v794) = *(v297 + 184);
    *(&v794 + 1) = v341;
    State.wrappedValue.getter();
    if (v814 != 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      *&v794 = String.init(localized:table:bundle:locale:comment:)();
      *(&v794 + 1) = v453;
      sub_10004BB74();
      v454 = Text.init<A>(_:)();
      v456 = v455;
      v458 = v457;
      static Font.headline.getter();
      static Font.Weight.regular.getter();
      Font.weight(_:)();

      v459 = Text.font(_:)();
      v461 = v460;
      v463 = v462;

      sub_10004BBC8(v454, v456, v458 & 1);

      LODWORD(v794) = static HierarchicalShapeStyle.primary.getter();
      v464 = Text.foregroundStyle<A>(_:)();
      v466 = v465;
      v468 = v467;
      v470 = v469;
      sub_10004BBC8(v459, v461, v463 & 1);

      v471 = *(v761 + 36);
      v472 = swift_getKeyPath();
      v473 = v743;
      *(v743 + v471) = v472;
      sub_1000077C8(&qword_100174C00, &qword_10011BD80);
      swift_storeEnumTagMultiPayload();
      *v473 = v464;
      *(v473 + 8) = v466;
      *(v473 + 16) = v468 & 1;
      *(v473 + 24) = v470;
      sub_100007BA4(v473, v716, &qword_100177478, &qword_10011FCC8);
      swift_storeEnumTagMultiPayload();
      sub_1000199C8(&qword_100177870, &qword_100177468, &qword_10011FCB8);
      sub_1000DFD24();
      v474 = v714;
      _ConditionalContent<>.init(storage:)();
      v475 = v473;
LABEL_69:
      sub_1000159AC(v475, &qword_100177478, &qword_10011FCC8);
      v448 = &qword_100177480;
      v449 = &qword_10011FCD0;
      sub_100007BA4(v474, v749, &qword_100177480, &qword_10011FCD0);
      swift_storeEnumTagMultiPayload();
      sub_1000DFC6C();
      sub_1000DFD24();
      v450 = v747;
      _ConditionalContent<>.init(storage:)();
      v451 = v474;
      goto LABEL_70;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *&v794 = String.init(localized:table:bundle:locale:comment:)();
    *(&v794 + 1) = v342;
    v788 = sub_10004BB74();
    v343 = Text.init<A>(_:)();
    v345 = v344;
    v347 = v346;
    static Font.headline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v348 = Text.font(_:)();
    v350 = v349;
    v352 = v351;

    sub_10004BBC8(v343, v345, v347 & 1);

    LODWORD(v794) = static HierarchicalShapeStyle.primary.getter();
    v353 = Text.foregroundStyle<A>(_:)();
    v355 = v354;
    v357 = v356;
    v359 = v358;
    sub_10004BBC8(v348, v350, v352 & 1);

    v360 = *(v761 + 36);
    v361 = swift_getKeyPath();
    v362 = v711;
    *(v711 + v360) = v361;
    v779 = sub_1000077C8(&qword_100174C00, &qword_10011BD80);
    swift_storeEnumTagMultiPayload();
    *v362 = v353;
    *(v362 + 8) = v355;
    *(v362 + 16) = v357 & 1;
    *(v362 + 24) = v359;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_1000077C8(&qword_1001740D8, &qword_10011DF00);
    v363 = swift_allocObject();
    *(v363 + 16) = xmmword_10011F5E0;
    v364 = v789;
    v365 = sub_1000CF1EC();
    v367 = v366;
    *(v363 + 56) = &type metadata for String;
    v368 = sub_10004C144();
    *(v363 + 64) = v368;
    *(v363 + 32) = v365;
    *(v363 + 40) = v367;
    sub_100007878(v364 + 120, &v794);
    sub_1000077C8(&qword_100172E68, &qword_100118B30);
    sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
    if ((swift_dynamicCast() & 1) != 0 && (v369 = v814, v370 = [v814 content], v369, v371 = objc_msgSend(v370, "initiatorHandle"), v370, v371))
    {
      v372 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v374 = v373;

      v375 = (v363 + 72);
      *(v363 + 96) = &type metadata for String;
      *(v363 + 104) = v368;
      if (v374)
      {
        *v375 = v372;
LABEL_68:
        *(v363 + 80) = v374;
        v486 = static String.localizedStringWithFormat(_:_:)();
        v488 = v487;

        *&v794 = v486;
        *(&v794 + 1) = v488;
        v789 = Text.init<A>(_:)();
        v788 = v489;
        v491 = v490;
        v778 = v492;
        LODWORD(v777) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v494 = v493;
        v496 = v495;
        v498 = v497;
        v500 = v499;
        LOBYTE(v488) = v491 & 1;
        LOBYTE(v790[0]) = v491 & 1;
        LOBYTE(v808) = 0;
        v501 = static Edge.Set.bottom.getter();
        EdgeInsets.init(_all:)();
        v503 = v502;
        v505 = v504;
        v507 = v506;
        v509 = v508;
        LOBYTE(v814) = 0;
        v510 = static Font.caption.getter();
        v511 = swift_getKeyPath();
        v512 = static HierarchicalShapeStyle.primary.getter();
        v513 = swift_getKeyPath();
        v514 = swift_getKeyPath();
        LOBYTE(v794) = 0;
        v515 = *(v679 + 36);
        v516 = swift_getKeyPath();
        v517 = v680;
        *&v680[v515] = v516;
        swift_storeEnumTagMultiPayload();
        v518 = v788;
        *v517 = v789;
        *(v517 + 8) = v518;
        *(v517 + 16) = v488;
        *(v517 + 24) = v778;
        *(v517 + 32) = v777;
        *(v517 + 40) = v494;
        *(v517 + 48) = v496;
        *(v517 + 56) = v498;
        *(v517 + 64) = v500;
        *(v517 + 72) = 0;
        *(v517 + 80) = v501;
        *(v517 + 88) = v503;
        *(v517 + 96) = v505;
        *(v517 + 104) = v507;
        *(v517 + 112) = v509;
        *(v517 + 120) = 0;
        *(v517 + 128) = v511;
        *(v517 + 136) = v510;
        *(v517 + 144) = v512;
        *(v517 + 152) = v513;
        *(v517 + 160) = 1;
        *(v517 + 168) = v514;
        *(v517 + 176) = 2;
        *(v517 + 184) = 0;
        v519 = v684;
        sub_100021A84(v517, v684, &qword_100177470, &qword_10011FCC0);
        v520 = v711;
        v521 = v743;
        sub_100007BA4(v711, v743, &qword_100177478, &qword_10011FCC8);
        v522 = v681;
        sub_100007BA4(v519, v681, &qword_100177470, &qword_10011FCC0);
        v523 = v686;
        sub_100007BA4(v521, v686, &qword_100177478, &qword_10011FCC8);
        v524 = sub_1000077C8(&qword_100177888, &qword_100120008);
        sub_100007BA4(v522, v523 + *(v524 + 48), &qword_100177470, &qword_10011FCC0);
        sub_1000159AC(v522, &qword_100177470, &qword_10011FCC0);
        sub_1000159AC(v521, &qword_100177478, &qword_10011FCC8);
        sub_100007BA4(v523, v716, &qword_100177468, &qword_10011FCB8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100177870, &qword_100177468, &qword_10011FCB8);
        sub_1000DFD24();
        v525 = v714;
        _ConditionalContent<>.init(storage:)();
        v474 = v525;
        sub_1000159AC(v523, &qword_100177468, &qword_10011FCB8);
        sub_1000159AC(v519, &qword_100177470, &qword_10011FCC0);
        v475 = v520;
        goto LABEL_69;
      }
    }

    else
    {
      v375 = (v363 + 72);
      *(v363 + 96) = &type metadata for String;
      *(v363 + 104) = v368;
    }

    *v375 = 0;
    v374 = 0xE000000000000000;
    goto LABEL_68;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v794 = String.init(localized:table:bundle:locale:comment:)();
  *(&v794 + 1) = v427;
  sub_10004BB74();
  v428 = Text.init<A>(_:)();
  v430 = v429;
  v432 = v431;
  static Font.headline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v433 = Text.font(_:)();
  v435 = v434;
  v437 = v436;

  sub_10004BBC8(v428, v430, v432 & 1);

  LODWORD(v794) = static HierarchicalShapeStyle.primary.getter();
  v438 = Text.foregroundStyle<A>(_:)();
  v440 = v439;
  v442 = v441;
  v444 = v443;
  sub_10004BBC8(v433, v435, v437 & 1);

  v445 = *(v761 + 36);
  v446 = swift_getKeyPath();
  v447 = v743;
  *(v743 + v445) = v446;
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  *v447 = v438;
  *(v447 + 8) = v440;
  *(v447 + 16) = v442 & 1;
  *(v447 + 24) = v444;
  v448 = &qword_100177478;
  v449 = &qword_10011FCC8;
  sub_100007BA4(v447, v749, &qword_100177478, &qword_10011FCC8);
  swift_storeEnumTagMultiPayload();
  sub_1000DFC6C();
  sub_1000DFD24();
  v450 = v747;
  _ConditionalContent<>.init(storage:)();
  v451 = v447;
LABEL_70:
  sub_1000159AC(v451, v448, v449);
  v526 = v745;
  sub_100007BA4(v450, v745, &qword_100177488, &qword_10011FCD8);
  v527 = v750;
  *v750 = 0x4040000000000000;
  *(v527 + 8) = 0;
  v528 = sub_1000077C8(&qword_100177880, &qword_100120000);
  sub_100007BA4(v526, v527 + *(v528 + 48), &qword_100177488, &qword_10011FCD8);
  sub_1000159AC(v526, &qword_100177488, &qword_10011FCD8);
  sub_100007BA4(v527, v773, &qword_100177450, &qword_10011FCA0);
  swift_storeEnumTagMultiPayload();
  sub_1000199C8(&qword_1001775E0, &qword_100177450, &qword_10011FCA0);
  sub_1000199C8(&qword_1001775E8, &qword_100177390, &qword_10011FBE0);
  _ConditionalContent<>.init(storage:)();
  sub_1000159AC(v527, &qword_100177450, &qword_10011FCA0);
  sub_1000159AC(v450, &qword_100177488, &qword_10011FCD8);
LABEL_97:
  v658 = v782;
  sub_100007BA4(v785, v782, &qword_1001774C8, &qword_10011FD18);
  v659 = v783;
  sub_100007BA4(v786, v783, &qword_1001774A0, &qword_10011FCF0);
  sub_100007BA4(v836, &v794, &qword_1001775F0, &qword_10011FDF8);
  sub_100007BA4(v787, v784, &qword_100177490, &qword_10011FCE0);
  v660 = v658;
  v661 = v775;
  sub_100007BA4(v660, v775, &qword_1001774C8, &qword_10011FD18);
  v662 = sub_1000077C8(&qword_1001775F8, &qword_10011FE00);
  v663 = v661 + v662[12];
  *v663 = 0x4040000000000000;
  *(v663 + 8) = 0;
  sub_100007BA4(v659, v661 + v662[16], &qword_1001774A0, &qword_10011FCF0);
  sub_100007BA4(&v794, v661 + v662[20], &qword_1001775F0, &qword_10011FDF8);
  v664 = v661 + v662[24];
  v665 = v770;
  *&v808 = v770;
  v666 = v769;
  *(&v808 + 1) = v769;
  *&v809 = v780;
  v667 = v768;
  *(&v809 + 1) = v768;
  v810 = v781;
  v811 = 0;
  v668 = v765;
  *&v812 = v765;
  v669 = v767;
  *(&v812 + 1) = v767;
  v670 = v766;
  v813 = v766;
  v671 = v812;
  *(v664 + 32) = v781;
  *(v664 + 48) = v671;
  *(v664 + 64) = v670;
  v672 = v809;
  *v664 = v808;
  *(v664 + 16) = v672;
  v673 = v784;
  sub_100007BA4(v784, v661 + v662[28], &qword_100177490, &qword_10011FCE0);
  sub_100007BA4(&v808, v790, &qword_100177600, &qword_10011FE08);
  sub_1000159AC(v787, &qword_100177490, &qword_10011FCE0);
  sub_1000159AC(v836, &qword_1001775F0, &qword_10011FDF8);
  sub_1000159AC(v786, &qword_1001774A0, &qword_10011FCF0);
  sub_1000159AC(v785, &qword_1001774C8, &qword_10011FD18);
  sub_1000159AC(v673, &qword_100177490, &qword_10011FCE0);
  v790[0] = v665;
  v790[1] = v666;
  v790[2] = v780;
  v790[3] = v667;
  v790[4] = v781;
  v790[5] = 0;
  v790[6] = v668;
  v790[7] = v669;
  v791 = v670;
  sub_1000159AC(v790, &qword_100177600, &qword_10011FE08);
  sub_1000159AC(&v794, &qword_1001775F0, &qword_10011FDF8);
  sub_1000159AC(v783, &qword_1001774A0, &qword_10011FCF0);
  return sub_1000159AC(v782, &qword_1001774C8, &qword_10011FD18);
}

uint64_t sub_1000D5598(uint64_t result)
{
  if (!(*(result + 88) >> 62))
  {
    v1 = *(result + 200);
    v2 = *(result + 208);
    sub_1000077C8(&qword_100177238, &qword_10011FAD8);
    return State.wrappedValue.setter();
  }

  return result;
}

__n128 sub_1000D5604@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *(a2 + 216);
  v19 = *(a2 + 224);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.projectedValue.getter();
  static Animation.default.getter();
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  Binding.animation(_:)();

  v6 = v25;
  v7 = v26;
  v8 = v27;
  sub_1000DDCDC(a2, v23);
  v9 = swift_allocObject();
  v10 = v23[13];
  *(v9 + 208) = v23[12];
  *(v9 + 224) = v10;
  *(v9 + 240) = v24;
  v11 = v23[9];
  *(v9 + 144) = v23[8];
  *(v9 + 160) = v11;
  v12 = v23[11];
  *(v9 + 176) = v23[10];
  *(v9 + 192) = v12;
  v13 = v23[5];
  *(v9 + 80) = v23[4];
  *(v9 + 96) = v13;
  v14 = v23[7];
  *(v9 + 112) = v23[6];
  *(v9 + 128) = v14;
  v15 = v23[1];
  *(v9 + 16) = v23[0];
  *(v9 + 32) = v15;
  v16 = v23[3];
  *(v9 + 48) = v23[2];
  *(v9 + 64) = v16;
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  GestureState.init(wrappedValue:resetTransaction:)();
  sub_100007BA4(a1, a3, &qword_1001774D8, &qword_10011FD70);
  *(a3 + 160) = xmmword_10011F5F0;
  *(a3 + 176) = 0x3FD51EB851EB851FLL;
  *(a3 + 184) = 0;
  *(a3 + 192) = sub_1000E064C;
  *(a3 + 200) = v9;
  *(a3 + 208) = v18;
  *(a3 + 216) = v19;
  *(a3 + 224) = v20;
  *(a3 + 232) = v21;
  result = v22;
  *(a3 + 240) = v22;
  *(a3 + 256) = v6;
  *(a3 + 264) = v7;
  *(a3 + 272) = v8;
  return result;
}

uint64_t sub_1000D580C(uint64_t result)
{
  v1 = *(result + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    sub_100007878(v1 + 40 * v2 - 8, v8);
    v4 = *(v3 + 8);
    v5 = v9;
    v6 = v10;
    v7 = sub_1000078DC(v8, v9);
    sub_10005560C(v7, v3 + 120, 0, v4, v5, v6);
    return sub_100007920(v8);
  }

  return result;
}

uint64_t sub_1000D5894@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000077C8(&qword_100177898, &qword_100120010);
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = sub_1000077C8(&qword_1001778A0, &qword_100120018);
  v48 = *(v11 - 8);
  v12 = v48;
  v13 = *(v48 + 64);
  __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  sub_1000DDCDC(a1, &v50);
  v19 = swift_allocObject();
  v20 = v63;
  *(v19 + 208) = v62;
  *(v19 + 224) = v20;
  *(v19 + 240) = v64;
  v21 = v59;
  *(v19 + 144) = v58;
  *(v19 + 160) = v21;
  v22 = v61;
  *(v19 + 176) = v60;
  *(v19 + 192) = v22;
  v23 = v55;
  *(v19 + 80) = v54;
  *(v19 + 96) = v23;
  v24 = v57;
  *(v19 + 112) = v56;
  *(v19 + 128) = v24;
  v25 = v51;
  *(v19 + 16) = v50;
  *(v19 + 32) = v25;
  v26 = v53;
  *(v19 + 48) = v52;
  *(v19 + 64) = v26;
  sub_1000DFB6C();
  v47 = v18;
  Button.init(action:label:)();
  sub_1000DDCDC(a1, &v50);
  v27 = swift_allocObject();
  v28 = v63;
  *(v27 + 208) = v62;
  *(v27 + 224) = v28;
  *(v27 + 240) = v64;
  v29 = v59;
  *(v27 + 144) = v58;
  *(v27 + 160) = v29;
  v30 = v61;
  *(v27 + 176) = v60;
  *(v27 + 192) = v30;
  v31 = v55;
  *(v27 + 80) = v54;
  *(v27 + 96) = v31;
  v32 = v57;
  *(v27 + 112) = v56;
  *(v27 + 128) = v32;
  v33 = v51;
  *(v27 + 16) = v50;
  *(v27 + 32) = v33;
  v34 = v53;
  *(v27 + 48) = v52;
  *(v27 + 64) = v34;
  sub_1000DFBC0();
  v45 = v10;
  Button.init(action:label:)();
  v35 = *(v12 + 16);
  v46 = v15;
  v35(v15, v18, v11);
  v36 = v4[2];
  v37 = v10;
  v38 = v3;
  v36(v7, v37, v3);
  v39 = v49;
  v35(v49, v15, v11);
  v40 = &v39[*(sub_1000077C8(&qword_1001778A8, &qword_100120020) + 48)];
  v36(v40, v7, v38);
  v41 = v4[1];
  v41(v45, v38);
  v42 = *(v48 + 8);
  v42(v47, v11);
  v41(v7, v38);
  return (v42)(v46, v11);
}

uint64_t sub_1000D5CE8(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  return State.wrappedValue.setter();
}

uint64_t sub_1000D5D44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 184);
  v5 = *(a1 + 192);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  sub_1000DFB6C();
  sub_1000DFBC0();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v4;
  return result;
}

uint64_t sub_1000D5DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v49 - v7;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_1000077C8(&qword_100177790, &qword_10011FF90);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = sub_1000077C8(&qword_100177780, &qword_10011FF88);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v21 = sub_1000077C8(&qword_100177770, &qword_10011FF80);
  v22 = *(v21 - 8);
  v51 = v21 - 8;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21 - 8);
  v50 = &v49 - v24;
  v25 = sub_1000077C8(&qword_100177760, &qword_10011FF78);
  v26 = *(v25 - 8);
  v54 = v25 - 8;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25 - 8);
  v52 = &v49 - v28;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0x4008000000000000;
  v15[16] = 0;
  v29 = sub_1000077C8(&qword_1001778B0, &qword_100120028);
  sub_1000D6368(&v15[*(v29 + 44)]);
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = &v15[*(sub_1000077C8(&qword_1001777A0, &qword_10011FF98) + 36)];
  v31 = v58;
  *v30 = v57;
  *(v30 + 1) = v31;
  *(v30 + 2) = v59;
  v15[*(v12 + 44)] = 0;
  v32 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v33 = type metadata accessor for ContinuousClock.Instant();
  v34 = *(*(v33 - 8) + 48);
  v35 = 0.0;
  if (v34(v10, 1, v33) == 1)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 10.0;
  }

  sub_1000159AC(v10, &qword_100174328, &qword_10011AF08);
  sub_100021A84(v15, v20, &qword_100177790, &qword_10011FF90);
  v37 = &v20[*(v17 + 44)];
  *v37 = v36;
  v37[8] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v53;
  static Published.subscript.getter();

  if (v34(v38, 1, v33) == 1)
  {
    v35 = 1.0;
  }

  sub_1000159AC(v38, &qword_100174328, &qword_10011AF08);
  v39 = v50;
  sub_100021A84(v20, v50, &qword_100177780, &qword_10011FF88);
  *(v39 + *(v51 + 44)) = v35;
  v40 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v55;
  static Published.subscript.getter();

  v42 = v34(v41, 1, v33) != 1;
  sub_1000159AC(v41, &qword_100174328, &qword_10011AF08);
  v43 = v52;
  sub_100021A84(v39, v52, &qword_100177770, &qword_10011FF80);
  v44 = v43 + *(v54 + 44);
  *v44 = v40;
  *(v44 + 8) = v42;
  v45 = *(sub_1000077C8(&qword_100177748, &qword_10011FF70) + 36);
  KeyPath = swift_getKeyPath();
  v47 = v56;
  *(v56 + v45) = KeyPath;
  sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  swift_storeEnumTagMultiPayload();
  return sub_100021A84(v43, v47, &qword_100177760, &qword_10011FF78);
}

uint64_t sub_1000D6368@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000077C8(&qword_1001778B8, &qword_100120030);
  v2 = *(v1 - 8);
  v45 = v1 - 8;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v43 - v6);
  v47 = sub_1000CF028();
  v48 = v8;
  sub_10004BB74();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.subheadline.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10004BBC8(v9, v11, v13 & 1);

  LODWORD(v47) = static HierarchicalShapeStyle.primary.getter();
  v19 = Text.foregroundStyle<A>(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10004BBC8(v14, v16, v18 & 1);

  v26 = Image.init(systemName:)();
  v27 = (v7 + *(sub_1000077C8(&unk_1001778C0, &qword_100120038) + 36));
  v28 = *(sub_1000077C8(&qword_1001781F0, &qword_100120040) + 28);
  v29 = enum case for Image.Scale.small(_:);
  v30 = type metadata accessor for Image.Scale();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *v7 = v26;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  v31 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v33 = (v7 + *(sub_1000077C8(&qword_1001778D0, &qword_100120078) + 36));
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = [objc_opt_self() tertiaryLabelColor];
  v35 = Color.init(_:)();
  v36 = swift_getKeyPath();
  v37 = v44;
  v38 = (v7 + *(v45 + 44));
  *v38 = v36;
  v38[1] = v35;
  sub_100007BA4(v7, v37, &qword_1001778B8, &qword_100120030);
  v39 = v46;
  *v46 = v19;
  v39[1] = v21;
  *(v39 + 16) = v23 & 1;
  v39[3] = v25;
  v40 = v39;
  v41 = sub_1000077C8(&qword_1001778D8, &qword_1001200B0);
  sub_100007BA4(v37, v40 + *(v41 + 48), &qword_1001778B8, &qword_100120030);
  sub_100078974(v19, v21, v23 & 1);

  sub_1000159AC(v7, &qword_1001778B8, &qword_100120030);
  sub_1000159AC(v37, &qword_1001778B8, &qword_100120030);
  sub_10004BBC8(v19, v21, v23 & 1);
}

uint64_t sub_1000D6704@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000078DC(a1, a1[3]);
  result = sub_10000814C();
  *a2 = result;
  return result;
}

uint64_t sub_1000D6750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v96 = a3;
  v4 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v93 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v85 - v8;
  __chkstk_darwin(v9);
  v11 = &v85 - v10;
  v85 = sub_1000077C8(&qword_100177650, &qword_10011FE30);
  v12 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v14 = &v85 - v13;
  v87 = sub_1000077C8(&qword_100177640, &qword_10011FE28);
  v15 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v17 = &v85 - v16;
  v88 = sub_1000077C8(&qword_100177630, &qword_10011FE20);
  v18 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v92 = &v85 - v19;
  v94 = sub_1000077C8(&qword_100177620, &qword_10011FE18);
  v95 = *(v94 - 8);
  v20 = *(v95 + 64);
  __chkstk_darwin(v94);
  v90 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v85 - v23;
  v24 = sub_1000077C8(&qword_1001778E8, &qword_1001200C0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v85 - v26;
  started = type metadata accessor for StartCollaborationAction(0);
  v29 = *(started - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(started);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v85 - v33;
  sub_100007878(a1, v97);
  sub_1000077C8(&unk_1001778F0, &qword_10011E000);
  v35 = swift_dynamicCast();
  v36 = *(v29 + 56);
  if (v35)
  {
    v36(v27, 0, 1, started);
    sub_1000DDBAC(v27, v34, type metadata accessor for StartCollaborationAction);
    LocalizedStringResource.init(stringLiteral:)();
    v37 = v86;
    sub_1000DDCDC(v86, v97);
    sub_1000DDA5C(v34, v31, type metadata accessor for StartCollaborationAction);
    v38 = (*(v29 + 80) + 248) & ~*(v29 + 80);
    v39 = swift_allocObject();
    v40 = v97[13];
    *(v39 + 208) = v97[12];
    *(v39 + 224) = v40;
    *(v39 + 240) = v98;
    v41 = v97[9];
    *(v39 + 144) = v97[8];
    *(v39 + 160) = v41;
    v42 = v97[11];
    *(v39 + 176) = v97[10];
    *(v39 + 192) = v42;
    v43 = v97[5];
    *(v39 + 80) = v97[4];
    *(v39 + 96) = v43;
    v44 = v97[7];
    *(v39 + 112) = v97[6];
    *(v39 + 128) = v44;
    v45 = v97[1];
    *(v39 + 16) = v97[0];
    *(v39 + 32) = v45;
    v46 = v97[3];
    *(v39 + 48) = v97[2];
    *(v39 + 64) = v46;
    sub_1000DDBAC(v31, v39 + v38, type metadata accessor for StartCollaborationAction);
    v47 = &v14[*(type metadata accessor for ShareableContentActionButton(0) + 20)];
    *v47 = sub_1000E00C8;
    v47[1] = v39;
    LOBYTE(v39) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = &v14[*(sub_1000077C8(&unk_100177660, &qword_10011FE38) + 36)];
    *v56 = v39;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    LOBYTE(v39) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v57 = &v14[*(v85 + 36)];
    *v57 = v39;
    *(v57 + 1) = v58;
    *(v57 + 2) = v59;
    *(v57 + 3) = v60;
    *(v57 + 4) = v61;
    v57[40] = 0;
    v62 = *(v37 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v63 = type metadata accessor for ContinuousClock.Instant();
    v64 = *(*(v63 - 8) + 48);
    v65 = 0.0;
    if (v64(v11, 1, v63) == 1)
    {
      v66 = 0.0;
    }

    else
    {
      v66 = 10.0;
    }

    v86 = v34;
    sub_1000159AC(v11, &qword_100174328, &qword_10011AF08);
    sub_100021A84(v14, v17, &qword_100177650, &qword_10011FE30);
    v67 = &v17[*(v87 + 36)];
    *v67 = v66;
    v67[8] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v91;
    static Published.subscript.getter();

    if (v64(v68, 1, v63) == 1)
    {
      v65 = 1.0;
    }

    sub_1000159AC(v68, &qword_100174328, &qword_10011AF08);
    v69 = v17;
    v70 = v92;
    sub_100021A84(v69, v92, &qword_100177640, &qword_10011FE28);
    *(v70 + *(v88 + 36)) = v65;
    v71 = static Animation.spring(response:dampingFraction:blendDuration:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v93;
    static Published.subscript.getter();

    sub_1000E0E64(v86, type metadata accessor for StartCollaborationAction);
    v73 = v64(v72, 1, v63) != 1;
    sub_1000159AC(v72, &qword_100174328, &qword_10011AF08);
    v74 = v90;
    sub_100021A84(v70, v90, &qword_100177630, &qword_10011FE20);
    v75 = v94;
    v76 = v74 + *(v94 + 36);
    *v76 = v71;
    *(v76 + 8) = v73;
    v77 = v74;
    v78 = v89;
    sub_100021A84(v77, v89, &qword_100177620, &qword_10011FE18);
    v79 = v78;
    v80 = v96;
    sub_100021A84(v79, v96, &qword_100177620, &qword_10011FE18);
    v81 = 0;
    v82 = v80;
    v83 = v75;
  }

  else
  {
    v81 = 1;
    v36(v27, 1, 1, started);
    sub_1000159AC(v27, &qword_1001778E8, &qword_1001200C0);
    v82 = v96;
    v83 = v94;
  }

  return (*(v95 + 56))(v82, v81, 1, v83);
}

uint64_t sub_1000D7078(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartCollaborationAction(0);
  v5 = *(*(started - 8) + 64);
  __chkstk_darwin(started - 8);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  sub_1000DDA5C(a2, v7, type metadata accessor for StartCollaborationAction);
  sub_100007878(a1 + 120, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v11;
  sub_1000DC7D0(v7, v12, v11, v8, type metadata accessor for StartCollaborationAction, &unk_100177900, type metadata accessor for StartCollaborationAction, &unk_100118A28, type metadata accessor for StartCollaborationAction, &unk_100160D00, qword_10011B380);

  sub_100007920(v12);
  return sub_1000E0E64(v7, type metadata accessor for StartCollaborationAction);
}

uint64_t sub_1000D721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v82 = a3;
  v4 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v71 - v8;
  __chkstk_darwin(v9);
  v11 = &v71 - v10;
  v71 = type metadata accessor for ShareableContentActionButton(0);
  v12 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1000077C8(&unk_1001775A0, &unk_10011FDE0);
  v15 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v17 = &v71 - v16;
  v74 = sub_1000077C8(&qword_100177590, &qword_10011FDD8);
  v18 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v78 = &v71 - v19;
  v80 = sub_1000077C8(&qword_100177580, &qword_10011FDD0);
  v81 = *(v80 - 8);
  v20 = *(v81 + 64);
  __chkstk_darwin(v80);
  v76 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v75 = &v71 - v23;
  v24 = sub_1000077C8(&unk_100177910, &qword_100120160);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v71 - v26;
  v28 = type metadata accessor for SendOverAirDropAction(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v71 - v33;
  sub_100007878(a1, v83);
  sub_1000077C8(&unk_1001778F0, &qword_10011E000);
  v35 = swift_dynamicCast();
  v36 = *(v29 + 56);
  if (v35)
  {
    v36(v27, 0, 1, v28);
    sub_1000DDBAC(v27, v34, type metadata accessor for SendOverAirDropAction);
    LocalizedStringResource.init(stringLiteral:)();
    v37 = v72;
    sub_1000DDCDC(v72, v83);
    sub_1000DDA5C(v34, v31, type metadata accessor for SendOverAirDropAction);
    v38 = (*(v29 + 80) + 248) & ~*(v29 + 80);
    v39 = swift_allocObject();
    v40 = v83[13];
    *(v39 + 208) = v83[12];
    *(v39 + 224) = v40;
    *(v39 + 240) = v84;
    v41 = v83[9];
    *(v39 + 144) = v83[8];
    *(v39 + 160) = v41;
    v42 = v83[11];
    *(v39 + 176) = v83[10];
    *(v39 + 192) = v42;
    v44 = v83[5];
    v43 = v83[6];
    *(v39 + 80) = v83[4];
    *(v39 + 96) = v44;
    v45 = v83[7];
    *(v39 + 112) = v43;
    *(v39 + 128) = v45;
    v46 = v83[1];
    *(v39 + 16) = v83[0];
    *(v39 + 32) = v46;
    v47 = v83[3];
    *(v39 + 48) = v83[2];
    *(v39 + 64) = v47;
    sub_1000DDBAC(v31, v39 + v38, type metadata accessor for SendOverAirDropAction);
    v48 = &v14[*(v71 + 20)];
    *v48 = sub_1000E0294;
    v48[1] = v39;
    v49 = *(v37 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v50 = type metadata accessor for ContinuousClock.Instant();
    v51 = *(*(v50 - 8) + 48);
    v52 = 0.0;
    if (v51(v11, 1, v50) == 1)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = 10.0;
    }

    sub_1000159AC(v11, &qword_100174328, &qword_10011AF08);
    sub_1000DDBAC(v14, v17, type metadata accessor for ShareableContentActionButton);
    v54 = &v17[*(v73 + 36)];
    *v54 = v53;
    v54[8] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v77;
    static Published.subscript.getter();

    if (v51(v55, 1, v50) == 1)
    {
      v52 = 1.0;
    }

    sub_1000159AC(v55, &qword_100174328, &qword_10011AF08);
    v56 = v78;
    sub_100021A84(v17, v78, &unk_1001775A0, &unk_10011FDE0);
    *(v56 + *(v74 + 36)) = v52;
    v57 = static Animation.spring(response:dampingFraction:blendDuration:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v79;
    static Published.subscript.getter();

    sub_1000E0E64(v34, type metadata accessor for SendOverAirDropAction);
    v59 = v51(v58, 1, v50) != 1;
    sub_1000159AC(v58, &qword_100174328, &qword_10011AF08);
    v60 = v76;
    sub_100021A84(v56, v76, &qword_100177590, &qword_10011FDD8);
    v61 = v80;
    v62 = v60 + *(v80 + 36);
    *v62 = v57;
    *(v62 + 8) = v59;
    v63 = v60;
    v64 = v75;
    sub_100021A84(v63, v75, &qword_100177580, &qword_10011FDD0);
    v65 = v64;
    v66 = v82;
    sub_100021A84(v65, v82, &qword_100177580, &qword_10011FDD0);
    v67 = 0;
    v68 = v66;
    v69 = v61;
  }

  else
  {
    v67 = 1;
    v36(v27, 1, 1, v28);
    sub_1000159AC(v27, &unk_100177910, &qword_100120160);
    v68 = v82;
    v69 = v80;
  }

  return (*(v81 + 56))(v68, v67, 1, v69);
}

uint64_t sub_1000D7AA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1000078DC(a1, v6);
  (*(v7 + 24))(v6, v7);
  sub_1000DDCDC(a2, v19);
  sub_100007878(a1, v18);
  v8 = swift_allocObject();
  v9 = v19[13];
  *(v8 + 208) = v19[12];
  *(v8 + 224) = v9;
  *(v8 + 240) = v20;
  v10 = v19[9];
  *(v8 + 144) = v19[8];
  *(v8 + 160) = v10;
  v11 = v19[11];
  *(v8 + 176) = v19[10];
  *(v8 + 192) = v11;
  v12 = v19[5];
  *(v8 + 80) = v19[4];
  *(v8 + 96) = v12;
  v13 = v19[7];
  *(v8 + 112) = v19[6];
  *(v8 + 128) = v13;
  v14 = v19[1];
  *(v8 + 16) = v19[0];
  *(v8 + 32) = v14;
  v15 = v19[3];
  *(v8 + 48) = v19[2];
  *(v8 + 64) = v15;
  sub_1000590D8(v18, v8 + 248);
  result = type metadata accessor for ShareableContentActionButton(0);
  v17 = (a3 + *(result + 20));
  *v17 = sub_1000E0640;
  v17[1] = v8;
  return result;
}

uint64_t sub_1000D7BC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_1000078DC(a2, v4);

  return sub_10005560C(v6, a1 + 120, 0, v3, v4, v5);
}

uint64_t sub_1000D7C28(uint64_t a1)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  return State.wrappedValue.setter();
}

uint64_t sub_1000D7C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000077C8(&qword_100177368, &qword_10011FBC0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v29[-v9];
  v11 = sub_1000077C8(&qword_100177358, &qword_10011FBB8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v29[-v14];
  v16 = *(a2 + 168);
  v17 = *(a2 + 176);
  v31 = v16;
  v32 = v17;
  sub_1000077C8(&qword_100178430, &qword_10011FBD8);
  State.wrappedValue.getter();
  v18 = 0.0;
  if (v30)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = sub_1000077C8(&qword_100177378, &qword_10011FBC8);
  (*(*(v20 - 8) + 16))(v10, a1, v20);
  *&v10[*(v7 + 44)] = v19;
  v31 = v16;
  v32 = v17;
  State.wrappedValue.getter();
  if (!v30)
  {
    v18 = 10.0;
  }

  sub_100021A84(v10, v15, &qword_100177368, &qword_10011FBC0);
  v21 = &v15[*(v12 + 44)];
  *v21 = v18;
  *(v21 + 8) = 0;
  v31 = v16;
  v32 = v17;
  State.wrappedValue.getter();
  if (v30)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.66;
  }

  static UnitPoint.center.getter();
  v24 = v23;
  v26 = v25;
  sub_100021A84(v15, a3, &qword_100177358, &qword_10011FBB8);
  result = sub_1000077C8(&qword_100177310, &qword_10011FBA8);
  v28 = a3 + *(result + 36);
  *v28 = v22;
  *(v28 + 8) = v22;
  *(v28 + 16) = v24;
  *(v28 + 24) = v26;
  return result;
}

uint64_t sub_1000D7EE4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000077C8(&qword_100177280, &qword_10011FAF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = sub_1000077C8(&qword_100177288, &qword_10011FAF8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v39 - v14);
  LOBYTE(v14) = *a1;
  v45 = a3;
  if (v14)
  {
    v44 = &v39;
    __chkstk_darwin(v13);
    *(&v39 - 2) = a2;
    v43 = v11;
    v42 = sub_1000077C8(&qword_100177290, &qword_10011FB00);
    v16 = sub_100007CCC(&qword_100177298, &qword_10011FB08);
    v17 = sub_100007CCC(&qword_1001772A0, &qword_10011FB10);
    v18 = sub_100007CCC(&qword_1001772A8, &qword_10011FB18);
    v19 = sub_1000199C8(&unk_1001772B0, &qword_1001772A8, &qword_10011FB18);
    v20 = sub_10004BB74();
    v47 = v18;
    v48 = &type metadata for String;
    v49 = v19;
    v50 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
    v47 = v16;
    v48 = v17;
    v49 = OpaqueTypeConformance2;
    v50 = v22;
    swift_getOpaqueTypeConformance2();
    NavigationView.init(content:)();
    (*(v7 + 16))(v15, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&unk_100177268, &qword_10011FAE8);
    sub_1000DDE28();
    sub_1000199C8(&qword_100177278, &qword_100177280, &qword_10011FAF0);
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v44 = v6;
    v24 = *(a2 + 88);
    if (v24 >> 62)
    {
      v24 = 0;
      v36 = 0;
      v35 = 0;
      v34 = 0;
      v33 = 0;
      v29 = 0;
      v38 = 0;
      v31 = 0;
      v30 = 0;
      v32 = 0;
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v37 = 0;
    }

    else
    {
      v25 = *(a2 + 112);
      v27 = *(a2 + 96);
      v26 = *(a2 + 104);
      v42 = *(a2 + 80);
      v40 = *(a2 + 72);
      v28 = *(a2 + 56);
      v39 = *(a2 + 64);
      v41 = v28;
      v29 = *(a2 + 48);
      v43 = *(a2 + 40);
      v30 = *(a2 + 24);
      v31 = *(a2 + 32);
      v32 = *(a2 + 16);
      v47 = v32;
      v48 = v30;
      v49 = v31;
      v50 = v43;
      v51 = v29;
      v52 = v28;
      v53 = v39;
      v54 = v40;
      v55 = v42;
      v56 = v24;
      v57 = v27;
      v58 = v26;
      v59 = v25;
      sub_100070BB4(&v47, v46);
      v33 = v41;
      v34 = v39;
      v35 = v40;
      v36 = v42;
      v37 = sub_1000D8410;
      v38 = v43;
    }

    *v15 = v32;
    v15[1] = v30;
    v15[2] = v31;
    v15[3] = v38;
    v15[4] = v29;
    v15[5] = v33;
    v15[6] = v34;
    v15[7] = v35;
    v15[8] = v36;
    v15[9] = v24;
    v15[10] = v27;
    v15[11] = v26;
    v15[12] = v25;
    v15[13] = v37;
    v15[14] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&unk_100177268, &qword_10011FAE8);
    sub_1000DDE28();
    sub_1000199C8(&qword_100177278, &qword_100177280, &qword_10011FAF0);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000D8424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v46 = a2;
  v3 = sub_1000077C8(&qword_1001772A0, &qword_10011FB10);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v43 = &v37 - v6;
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v40 = sub_1000077C8(&qword_1001772A8, &qword_10011FB18);
  v11 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v13 = &v37 - v12;
  v14 = sub_1000077C8(&qword_100177298, &qword_10011FB08);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v47 = &v37 - v17;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v18 = *(sub_1000077C8(&qword_1001772C8, &qword_10011FB20) + 44);
  type metadata accessor for SharingOptionsViewModel();
  v19 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10004E218();
  SharingOptionsViewModel.__allocating_init(collaborationShareOptions:layoutMargins:userDidChangeOption:contentSizeDidChange:)();
  SharingOptionsView.init(viewModel:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v48 = String.init(localized:table:bundle:locale:comment:)();
  *(&v48 + 1) = v20;
  v38 = sub_1000199C8(&unk_1001772B0, &qword_1001772A8, &qword_10011FB18);
  v21 = sub_10004BB74();
  v22 = v40;
  View.navigationTitle<A>(_:)();

  sub_1000159AC(v13, &qword_1001772A8, &qword_10011FB18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v63 = String.init(localized:table:bundle:locale:comment:)();
  v64 = v23;
  sub_1000DDCDC(v39, &v48);
  v24 = swift_allocObject();
  v25 = v61;
  *(v24 + 208) = v60;
  *(v24 + 224) = v25;
  *(v24 + 240) = v62;
  v26 = v57;
  *(v24 + 144) = v56;
  *(v24 + 160) = v26;
  v27 = v59;
  *(v24 + 176) = v58;
  *(v24 + 192) = v27;
  v28 = v53;
  *(v24 + 80) = v52;
  *(v24 + 96) = v28;
  v29 = v55;
  *(v24 + 112) = v54;
  *(v24 + 128) = v29;
  v30 = v49;
  *(v24 + 16) = v48;
  *(v24 + 32) = v30;
  v31 = v51;
  *(v24 + 48) = v50;
  *(v24 + 64) = v31;
  v32 = v43;
  Button<>.init<A>(_:action:)();
  *&v48 = v22;
  *(&v48 + 1) = &type metadata for String;
  *&v49 = v38;
  *(&v49 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_1001772C0, &qword_1001772A0, &qword_10011FB10);
  v33 = v41;
  v34 = v44;
  v35 = v47;
  View.navigationBarItems<A>(trailing:)();
  (*(v45 + 8))(v32, v34);
  return (*(v42 + 8))(v35, v33);
}

uint64_t sub_1000D89B4(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  sub_1000077C8(&qword_100177238, &qword_10011FAD8);
  return State.wrappedValue.setter();
}

uint64_t sub_1000D8A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = static Alignment.center.getter();
  a2[1] = v11;
  v12 = a2 + *(sub_1000077C8(&qword_100177200, &qword_10011FA70) + 44);
  (*(v7 + 16))(v10, v2, v6);
  sub_1000DDA5C(v2, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NameDrop);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1000DDBAC(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NameDrop);
  NameDropView.init(transactionIdentifier:dismissViewAction:)();
  v15 = sub_100060910();
  *&v12[*(sub_1000077C8(&qword_100177208, &qword_10011FA78) + 36)] = v15;
  KeyPath = swift_getKeyPath();
  v17 = (a2 + *(sub_1000077C8(&unk_100177210, &unk_10011FAB0) + 36));
  v18 = *(sub_1000077C8(&qword_1001749A0, &qword_10011B760) + 28);
  v19 = enum case for ColorScheme.light(_:);
  v20 = type metadata accessor for ColorScheme();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = KeyPath;
  v21 = static Color.black.getter();
  LOBYTE(v19) = static Edge.Set.all.getter();
  result = sub_1000077C8(&qword_100177220, &qword_10011FAC0);
  v23 = a2 + *(result + 36);
  *v23 = v21;
  v23[8] = v19;
  return result;
}