void sub_2380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_239C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = CLFLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Error attempting to authenticate to access shared albums. %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 32) interfaceHelper];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_24CC;
    v8[3] = &unk_10968;
    v8[4] = *(a1 + 32);
    [v6 loadPlaylistsWithCompletionHandler:v8];
  }
}

Class sub_2A68(uint64_t a1)
{
  sub_2AC0();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_8FEC();
  }

  qword_14E10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2AC0()
{
  v1[0] = 0;
  if (!qword_14E18)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_2BBC;
    v1[4] = &unk_109F0;
    v1[5] = v1;
    v2 = off_109D8;
    v3 = 0;
    qword_14E18 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_14E18)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_2BBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_14E18 = result;
  return result;
}

Class sub_2C30(uint64_t a1)
{
  sub_2AC0();
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_9014();
  }

  qword_14E20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_2F10(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v5 = [*(a1 + 32) curatorName];
  v3 = __AXStringForVariables();

  return v3;
}

uint64_t sub_2F98()
{
  v1 = v0;
  v19 = sub_917C();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_5170(&qword_14CE8, &qword_A880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = (&v18 - v7);
  v9 = sub_90DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C60(v1, v8, &qword_14CE8, &qword_A880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v14 = *v8;
    sub_951C();
    v15 = sub_91DC();
    sub_908C();

    sub_916C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  v16 = sub_90CC();
  (*(v10 + 8))(v13, v9);
  return v16 & 1;
}

uint64_t sub_321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_5170(&qword_14BE8, &qword_A758);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = type metadata accessor for PlaylistRow.Placeholder(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5170(&qword_14BF0, &qword_A760);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v63 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = (&v56 - v21);
  v23 = type metadata accessor for PlaylistRow(0);
  sub_59A8(a1 + *(v23 + 24), v15);
  v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v25 = swift_allocObject();
  sub_5B18(v15, v25 + v24);
  v26 = sub_934C();
  v28 = v27;
  v29 = v22 + *(sub_5170(&qword_14BF8, &qword_A768) + 36);
  sub_424C(a1, v29);
  v30 = (v29 + *(sub_5170(&qword_14C00, &qword_A770) + 36));
  *v30 = v26;
  v30[1] = v28;
  *v22 = sub_5B7C;
  v22[1] = v25;
  v31 = v22 + *(sub_5170(&qword_14C08, &qword_A778) + 36);
  *v31 = 0x3FF0000000000000;
  *(v31 + 4) = 0;
  v32 = *(a1 + *(v23 + 28));
  sub_934C();
  sub_90AC();
  v33 = (v22 + *(sub_5170(&qword_14C10, &qword_A780) + 36));
  v34 = v65;
  *v33 = v64;
  v33[1] = v34;
  v33[2] = v66;
  v35 = v22 + *(v17 + 44);
  v36 = *(sub_90EC() + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = sub_91AC();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #10.0 }

  *v35 = _Q0;
  *&v35[*(sub_5170(&qword_14C18, &qword_A788) + 36)] = 256;
  sub_934C();
  sub_90AC();
  v59 = v69;
  v60 = v67;
  v58 = v71;
  v57 = v72;
  v75 = 1;
  v74 = v68;
  v73 = v70;
  v44 = sub_91BC();
  v45 = sub_2F98();
  *v9 = v44;
  *(v9 + 1) = 0;
  v9[16] = (v45 & 1) == 0;
  v46 = sub_5170(&qword_14C20, &qword_A790);
  sub_376C(a1, &v9[*(v46 + 44)]);
  v56 = v11;
  sub_5CC8(v9, v11, &qword_14BE8, &qword_A758);
  v47 = v63;
  sub_5C60(v22, v63, &qword_14BF0, &qword_A760);
  LOBYTE(v44) = v75;
  LOBYTE(a1) = v74;
  LOBYTE(v25) = v73;
  v48 = v61;
  sub_5C60(v11, v61, &qword_14BE8, &qword_A758);
  v49 = v47;
  v50 = v62;
  sub_5C60(v49, v62, &qword_14BF0, &qword_A760);
  v51 = sub_5170(&qword_14C28, &qword_A798);
  v52 = v50 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = v44;
  v53 = v59;
  *(v52 + 16) = v60;
  *(v52 + 24) = a1;
  *(v52 + 32) = v53;
  *(v52 + 40) = v25;
  v54 = v57;
  *(v52 + 48) = v58;
  *(v52 + 56) = v54;
  sub_5C60(v48, v50 + *(v51 + 64), &qword_14BE8, &qword_A758);
  sub_608C(v56, &qword_14BE8, &qword_A758);
  sub_608C(v22, &qword_14BF0, &qword_A760);
  sub_608C(v48, &qword_14BE8, &qword_A758);
  return sub_608C(v63, &qword_14BF0, &qword_A760);
}

uint64_t sub_376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = sub_5170(&qword_14C30, &qword_A7A0);
  v110 = *(v112 - 8);
  v3 = *(v110 + 64);
  v4 = (__chkstk_darwin)();
  v101 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = v98 - v6;
  v7 = sub_5170(&qword_14C38, &qword_A7A8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v113 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = v98 - v11;
  v116 = sub_5170(&qword_14C40, &qword_A7B0);
  v115 = *(v116 - 8);
  v12 = *(v115 + 64);
  v13 = __chkstk_darwin(v116);
  v99 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v98 - v15;
  v107 = sub_5170(&qword_14C48, &qword_A7B8);
  v106 = *(v107 - 8);
  v17 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v105 = v98 - v18;
  v103 = sub_5170(&qword_14C50, &qword_A7C0);
  v19 = *(*(v103 - 8) + 64);
  v20 = __chkstk_darwin(v103);
  v108 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v104 = v98 - v23;
  __chkstk_darwin(v22);
  v117 = v98 - v24;
  v25 = type metadata accessor for PlaylistRow(0);
  v26 = *(v25 + 20);
  v109 = a1;
  v102 = v26;
  *&v122 = sub_93DC();
  *(&v122 + 1) = v27;
  v98[1] = sub_5BFC();
  v28 = sub_926C();
  v30 = v29;
  v32 = v31;
  if (qword_14A40 != -1)
  {
    swift_once();
  }

  v33 = sub_925C();
  v35 = v34;
  v37 = v36;
  sub_5C50(v28, v30, v32 & 1);

  if (qword_14A48 != -1)
  {
    swift_once();
  }

  v38 = sub_924C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_5C50(v33, v35, v37 & 1);

  *&v122 = v38;
  *(&v122 + 1) = v40;
  LOBYTE(v123) = v42 & 1;
  *(&v123 + 1) = v44;
  sub_92DC();
  sub_5C50(v38, v40, v42 & 1);

  v45 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v45 lineHeight];

  v46 = v109 + *(v25 + 28);
  v47 = *v46 + 12.0;
  *&v122 = &type metadata for Text;
  *(&v122 + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v48 = v105;
  v49 = v116;
  sub_92CC();
  (*(v115 + 8))(v16, v49);
  if (sub_2F98())
  {
    v50 = *(v46 + 8);
  }

  v51 = v111;
  sub_934C();
  v52 = 1;
  sub_90FC();
  v53 = v104;
  (*(v106 + 32))(v104, v48, v107);
  v54 = (v53 + *(v103 + 36));
  v55 = v127;
  v54[4] = v126;
  v54[5] = v55;
  v54[6] = v128;
  v56 = v123;
  *v54 = v122;
  v54[1] = v56;
  v57 = v125;
  v54[2] = v124;
  v54[3] = v57;
  sub_5CC8(v53, v117, &qword_14C50, &qword_A7C0);
  v58 = sub_93BC();
  if (v59)
  {
    v118 = v58;
    v119 = v59;
    v60 = sub_926C();
    v62 = v61;
    v64 = v63;
    if (qword_14A50 != -1)
    {
      swift_once();
    }

    v65 = sub_925C();
    v67 = v66;
    v69 = v68;
    sub_5C50(v60, v62, v64 & 1);

    if (qword_14A58 != -1)
    {
      swift_once();
    }

    v70 = sub_924C();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_5C50(v65, v67, v69 & 1);

    v118 = v70;
    v119 = v72;
    v120 = v74 & 1;
    v121 = v76;
    v77 = v99;
    sub_92DC();
    sub_5C50(v70, v72, v74 & 1);

    v78 = sub_91EC();
    sub_2F98();
    sub_909C();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v101;
    (*(v115 + 32))(v101, v77, v116);
    v88 = v112;
    v89 = &v87[*(v112 + 36)];
    *v89 = v78;
    *(v89 + 1) = v80;
    *(v89 + 2) = v82;
    *(v89 + 3) = v84;
    *(v89 + 4) = v86;
    v89[40] = 0;
    v90 = v87;
    v91 = v100;
    sub_5CC8(v90, v100, &qword_14C30, &qword_A7A0);
    sub_5CC8(v91, v51, &qword_14C30, &qword_A7A0);
    v52 = 0;
  }

  else
  {
    v88 = v112;
  }

  (*(v110 + 56))(v51, v52, 1, v88);
  v92 = v117;
  v93 = v108;
  sub_5C60(v117, v108, &qword_14C50, &qword_A7C0);
  v94 = v113;
  sub_5C60(v51, v113, &qword_14C38, &qword_A7A8);
  v95 = v114;
  sub_5C60(v93, v114, &qword_14C50, &qword_A7C0);
  v96 = sub_5170(&qword_14C60, &qword_A7C8);
  sub_5C60(v94, v95 + *(v96 + 48), &qword_14C38, &qword_A7A8);
  sub_608C(v51, &qword_14C38, &qword_A7A8);
  sub_608C(v92, &qword_14C50, &qword_A7C0);
  sub_608C(v94, &qword_14C38, &qword_A7A8);
  return sub_608C(v93, &qword_14C50, &qword_A7C0);
}

uint64_t sub_424C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_907C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5170(&qword_14C68, &qword_A7D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_938C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 + *(type metadata accessor for PlaylistRow(0) + 20);
  sub_93EC();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_608C(v15, &qword_14C68, &qword_A7D0);
    v22 = 1;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    (*(v17 + 16))(v13, v20, v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    sub_906C();
    (*(v17 + 8))(v20, v16);
    (*(v5 + 32))(a2, v8, v4);
    v22 = 0;
  }

  return (*(v5 + 56))(a2, v22, 1, v4);
}

uint64_t sub_4540()
{
  v1 = sub_5170(&qword_14BD0, &qword_A748);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  if (sub_2F98())
  {
    v5 = sub_918C();
  }

  else
  {
    v5 = sub_919C();
  }

  *v4 = v5;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6 = sub_5170(&qword_14BD8, &qword_A750);
  sub_321C(v0, &v4[*(v6 + 44)]);
  sub_6044(&qword_14BE0, &qword_14BD0, &qword_A748);
  sub_92EC();
  return sub_608C(v4, &qword_14BD0, &qword_A748);
}

uint64_t sub_466C()
{
  v1 = v0;
  v2 = sub_5170(&qword_14B10, &qword_A510);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_939C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_5C60(v1, v5, &qword_14B10, &qword_A510);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v14 = 0x6F6E2E636973756DLL;
    sub_608C(v5, &qword_14B10, &qword_A510);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v15 = (*(v7 + 88))(v11, v6);
    if (v15 == enum case for Playlist.Variant.smart(_:))
    {
      (*(v7 + 8))(v13, v6);
      return 0x7061687372616567;
    }

    else if (v15 == enum case for Playlist.Variant.genius(_:))
    {
      (*(v7 + 8))(v13, v6);
      return 0x7375696E6567;
    }

    else
    {
      v16 = enum case for Playlist.Variant.folder(_:);
      v17 = *(v7 + 8);
      v18 = v15;
      v17(v13, v6);
      if (v18 == v16)
      {
        return 0x7265646C6F66;
      }

      else
      {
        v14 = 0x6F6E2E636973756DLL;
        v17(v11, v6);
      }
    }
  }

  return v14;
}

uint64_t sub_495C@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_5170(&qword_14C70, &qword_A7D8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_5170(&qword_14C78, &qword_A7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_90BC();
  sub_90BC();
  v9 = [objc_opt_self() tertiarySystemFillColor];
  v25 = sub_932C();
  sub_466C();
  v10 = sub_933C();
  v11 = sub_92FC();
  KeyPath = swift_getKeyPath();
  v13 = sub_921C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = sub_923C();
  sub_608C(v4, &qword_14C70, &qword_A7D8);
  v15 = swift_getKeyPath();
  v27 = v10;
  v28 = KeyPath;
  v29 = v11;
  v30 = v15;
  v31 = v14;
  sub_922C();
  sub_5170(&qword_14C80, &qword_A848);
  sub_5DE0();
  sub_929C();

  *&v8[*(v5 + 36)] = 0x3FF0000000000000;
  v16 = sub_5170(&qword_14CC0, &qword_A868);
  v17 = v26;
  v18 = v26 + *(v16 + 36);
  sub_5F50();
  sub_92AC();
  sub_608C(v8, &qword_14C78, &qword_A7E0);
  v19 = sub_934C();
  v21 = v20;
  result = sub_5170(&qword_14CE0, &qword_A878);
  v23 = &v18[*(result + 36)];
  *v23 = v19;
  v23[1] = v21;
  *v17 = v25;
  return result;
}

uint64_t sub_4C4C()
{
  result = sub_920C();
  qword_151C8 = result;
  return result;
}

uint64_t sub_4C6C()
{
  result = sub_930C();
  qword_151D0 = result;
  return result;
}

uint64_t sub_4C8C()
{
  result = sub_91FC();
  qword_151D8 = result;
  return result;
}

uint64_t sub_4CAC()
{
  result = sub_931C();
  qword_151E0 = result;
  return result;
}

uint64_t sub_4CD4(uint64_t a1, id *a2)
{
  result = sub_942C();
  *a2 = 0;
  return result;
}

uint64_t sub_4D4C(uint64_t a1, id *a2)
{
  v3 = sub_943C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_4DCC@<X0>(void *a1@<X8>)
{
  sub_944C();
  v2 = sub_941C();

  *a1 = v2;
  return result;
}

uint64_t sub_4E10()
{
  v1 = *v0;
  sub_944C();
  v2 = sub_947C();

  return v2;
}

uint64_t sub_4E4C()
{
  v1 = *v0;
  sub_944C();
  sub_946C();
}

Swift::Int sub_4EA0()
{
  v1 = *v0;
  sub_944C();
  sub_957C();
  sub_946C();
  v2 = sub_958C();

  return v2;
}

uint64_t sub_4F14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_944C();
  v6 = v5;
  if (v4 == sub_944C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_956C();
  }

  return v9 & 1;
}

uint64_t sub_4F9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_941C();

  *a2 = v5;
  return result;
}

uint64_t sub_4FE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_944C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_5024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5170(&qword_14A60, &unk_A4B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_93FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for PlaylistRow.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_5170(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_51EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5170(&qword_14A60, &unk_A4B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_93FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for PlaylistRow.Placeholder(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_5364(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_539C()
{
  sub_56A4(319, &unk_14AD0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_93FC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaylistRow.Placeholder(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_5494(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_54A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_54C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_5500(uint64_t a1, uint64_t a2)
{
  v4 = sub_5170(&qword_14B10, &qword_A510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_558C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5170(&qword_14B10, &qword_A510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_5608()
{
  sub_56A4(319, &unk_14B80, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_56A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_571C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_5768(uint64_t a1)
{
  v2 = sub_58B4(&qword_14CF0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_58B4(&qword_14CF8, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_58B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_59A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistRow.Placeholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A0C()
{
  v1 = *(type metadata accessor for PlaylistRow.Placeholder(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_939C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistRow.Placeholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*(type metadata accessor for PlaylistRow.Placeholder(0) - 8) + 80);

  return sub_495C(a1);
}

unint64_t sub_5BFC()
{
  result = qword_14C58;
  if (!qword_14C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C58);
  }

  return result;
}

uint64_t sub_5C50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5170(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5CC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5170(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_5D30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_912C();
  *a1 = result;
  return result;
}

uint64_t sub_5D5C(uint64_t *a1)
{
  v1 = *a1;

  return sub_913C();
}

uint64_t sub_5D88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_914C();
  *a1 = result;
  return result;
}

uint64_t sub_5DB4(uint64_t *a1)
{
  v1 = *a1;

  return sub_915C();
}

unint64_t sub_5DE0()
{
  result = qword_14C88;
  if (!qword_14C88)
  {
    sub_5960(&qword_14C80, &qword_A848);
    sub_5E98();
    sub_6044(&qword_14CB0, &qword_14CB8, &qword_A860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C88);
  }

  return result;
}

unint64_t sub_5E98()
{
  result = qword_14C90;
  if (!qword_14C90)
  {
    sub_5960(&qword_14C98, &qword_A850);
    sub_6044(&qword_14CA0, &qword_14CA8, &qword_A858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C90);
  }

  return result;
}

unint64_t sub_5F50()
{
  result = qword_14CC8;
  if (!qword_14CC8)
  {
    sub_5960(&qword_14C78, &qword_A7E0);
    sub_5960(&qword_14C80, &qword_A848);
    sub_5DE0();
    swift_getOpaqueTypeConformance2();
    sub_6044(&qword_14CD0, &qword_14CD8, &qword_A870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14CC8);
  }

  return result;
}

uint64_t sub_6044(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5960(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_608C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5170(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_60F0()
{
  result = qword_14D00;
  if (!qword_14D00)
  {
    sub_5960(&qword_14D08, qword_A888);
    sub_6044(&qword_14BE0, &qword_14BD0, &qword_A748);
    sub_58B4(&qword_14D10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D00);
  }

  return result;
}

uint64_t sub_6230()
{
  v1[9] = v0;
  v2 = sub_93FC();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_5170(&qword_14D48, &qword_A8C0);
  v1[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v7 = sub_5170(&qword_14D50, &qword_A8C8);
  v1[16] = v7;
  v8 = *(v7 - 8);
  v1[17] = v8;
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v10 = *(*(sub_5170(&qword_14D58, &qword_A8D0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v11 = sub_5170(&qword_14D60, &qword_A8D8);
  v1[23] = v11;
  v12 = *(v11 - 8);
  v1[24] = v12;
  v13 = *(v12 + 64) + 15;
  v1[25] = swift_task_alloc();
  sub_94BC();
  v1[26] = sub_94AC();
  v15 = sub_949C();
  v1[27] = v15;
  v1[28] = v14;

  return _swift_task_switch(sub_6498, v15, v14);
}

uint64_t sub_6498()
{
  v1 = v0[25];
  v2 = v0[10];
  sub_936C();
  v3 = async function pointer to MusicLibraryRequest.response()[1];
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_6548;
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[23];

  return MusicLibraryRequest.response()(v6, v7);
}

uint64_t sub_6548()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 216);
    v6 = *(v2 + 224);
    v7 = sub_6C10;
  }

  else
  {
    v5 = *(v2 + 216);
    v6 = *(v2 + 224);
    v7 = sub_666C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_666C()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];

  v4 = sub_5170(&qword_14D68, &qword_A8E0);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_5C60(v3, v2, &qword_14D58, &qword_A8D0);
  v5 = sub_5170(&qword_14D68, &qword_A8E0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v8 = *(v62 + 192);
    v7 = *(v62 + 200);
    v9 = *(v62 + 184);
    v10 = *(v62 + 168);
    sub_608C(*(v62 + 176), &qword_14D58, &qword_A8D0);
    (*(v8 + 8))(v7, v9);
    sub_608C(v10, &qword_14D58, &qword_A8D0);
  }

  else
  {
    v12 = *(v62 + 160);
    v11 = *(v62 + 168);
    v13 = *(v62 + 144);
    v14 = *(v62 + 152);
    v15 = *(v62 + 128);
    v16 = *(v62 + 136);
    v17 = *(v62 + 120);
    v66 = *(v62 + 112);
    sub_937C();
    (*(v6 + 8))(v11, v5);
    (*(v16 + 32))(v12, v14, v15);
    v61 = [objc_allocWithZone(NSMutableArray) init];
    (*(v16 + 16))(v13, v12, v15);
    sub_6044(&qword_14D70, &qword_14D50, &qword_A8C8);
    sub_948C();
    v18 = *(v66 + 36);
    sub_6044(&qword_14D78, &qword_14D50, &qword_A8C8);
    sub_94EC();
    if (*(v17 + v18) != *(v62 + 64))
    {
      v19 = v18;
      v20 = *(v62 + 88);
      v60 = (v20 + 8);
      v67 = v17;
      v21 = (v20 + 16);
      do
      {
        v22 = *(v62 + 104);
        v63 = *(v62 + 96);
        v23 = *(v62 + 80);
        v64 = *(v62 + 120);
        v65 = *(v62 + 128);
        v24 = sub_950C();
        v25 = *v21;
        (*v21)(v22);
        v24(v62 + 16, 0);
        sub_94FC();
        (v25)(v63, v22, v23);
        v26 = type metadata accessor for CLMPlaylist();
        v27 = objc_allocWithZone(v26);
        v28 = v23;
        (v25)(&v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_playlist], v63, v23);
        v29 = sub_93CC();
        v30 = &v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_musicItemID];
        *v30 = v29;
        v30[1] = v31;
        v32 = sub_93DC();
        v33 = &v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_name];
        *v33 = v32;
        v33[1] = v34;
        v35 = sub_93BC();
        v36 = &v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_curatorName];
        *v36 = v35;
        v36[1] = v37;
        *(v62 + 48) = v27;
        *(v62 + 56) = v26;
        v38 = objc_msgSendSuper2((v62 + 48), "init");
        v39 = *v60;
        (*v60)(v63, v28);
        [v61 addObject:v38];

        v39(v22, v28);
        sub_94EC();
      }

      while (*(v67 + v19) != *(v62 + 64));
    }

    v41 = *(v62 + 192);
    v40 = *(v62 + 200);
    v43 = *(v62 + 176);
    v42 = *(v62 + 184);
    v44 = *(v62 + 160);
    v45 = *(v62 + 128);
    v46 = *(v62 + 136);
    v47 = *(v62 + 72);
    sub_608C(*(v62 + 120), &qword_14D48, &qword_A8C0);
    (*(v46 + 8))(v44, v45);
    sub_608C(v43, &qword_14D58, &qword_A8D0);
    (*(v41 + 8))(v40, v42);
    v48 = *(v47 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists);
    *(v47 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists) = v61;
  }

  v49 = *(v62 + 200);
  v50 = *(v62 + 168);
  v51 = *(v62 + 176);
  v53 = *(v62 + 152);
  v52 = *(v62 + 160);
  v54 = *(v62 + 144);
  v55 = *(v62 + 120);
  v57 = *(v62 + 96);
  v56 = *(v62 + 104);

  v58 = *(v62 + 8);

  return v58();
}

uint64_t sub_6C10()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];

  v4 = sub_5170(&qword_14D68, &qword_A8E0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_5C60(v3, v2, &qword_14D58, &qword_A8D0);
  v5 = sub_5170(&qword_14D68, &qword_A8E0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v8 = *(v62 + 192);
    v7 = *(v62 + 200);
    v9 = *(v62 + 184);
    v10 = *(v62 + 168);
    sub_608C(*(v62 + 176), &qword_14D58, &qword_A8D0);
    (*(v8 + 8))(v7, v9);
    sub_608C(v10, &qword_14D58, &qword_A8D0);
  }

  else
  {
    v12 = *(v62 + 160);
    v11 = *(v62 + 168);
    v13 = *(v62 + 144);
    v14 = *(v62 + 152);
    v15 = *(v62 + 128);
    v16 = *(v62 + 136);
    v17 = *(v62 + 120);
    v66 = *(v62 + 112);
    sub_937C();
    (*(v6 + 8))(v11, v5);
    (*(v16 + 32))(v12, v14, v15);
    v61 = [objc_allocWithZone(NSMutableArray) init];
    (*(v16 + 16))(v13, v12, v15);
    sub_6044(&qword_14D70, &qword_14D50, &qword_A8C8);
    sub_948C();
    v18 = *(v66 + 36);
    sub_6044(&qword_14D78, &qword_14D50, &qword_A8C8);
    sub_94EC();
    if (*(v17 + v18) != *(v62 + 64))
    {
      v19 = v18;
      v20 = *(v62 + 88);
      v60 = (v20 + 8);
      v67 = v17;
      v21 = (v20 + 16);
      do
      {
        v22 = *(v62 + 104);
        v63 = *(v62 + 96);
        v23 = *(v62 + 80);
        v64 = *(v62 + 120);
        v65 = *(v62 + 128);
        v24 = sub_950C();
        v25 = *v21;
        (*v21)(v22);
        v24(v62 + 16, 0);
        sub_94FC();
        (v25)(v63, v22, v23);
        v26 = type metadata accessor for CLMPlaylist();
        v27 = objc_allocWithZone(v26);
        v28 = v23;
        (v25)(&v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_playlist], v63, v23);
        v29 = sub_93CC();
        v30 = &v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_musicItemID];
        *v30 = v29;
        v30[1] = v31;
        v32 = sub_93DC();
        v33 = &v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_name];
        *v33 = v32;
        v33[1] = v34;
        v35 = sub_93BC();
        v36 = &v27[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_curatorName];
        *v36 = v35;
        v36[1] = v37;
        *(v62 + 48) = v27;
        *(v62 + 56) = v26;
        v38 = objc_msgSendSuper2((v62 + 48), "init");
        v39 = *v60;
        (*v60)(v63, v28);
        [v61 addObject:v38];

        v39(v22, v28);
        sub_94EC();
      }

      while (*(v67 + v19) != *(v62 + 64));
    }

    v41 = *(v62 + 192);
    v40 = *(v62 + 200);
    v43 = *(v62 + 176);
    v42 = *(v62 + 184);
    v44 = *(v62 + 160);
    v45 = *(v62 + 128);
    v46 = *(v62 + 136);
    v47 = *(v62 + 72);
    sub_608C(*(v62 + 120), &qword_14D48, &qword_A8C0);
    (*(v46 + 8))(v44, v45);
    sub_608C(v43, &qword_14D58, &qword_A8D0);
    (*(v41 + 8))(v40, v42);
    v48 = *(v47 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists);
    *(v47 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists) = v61;
  }

  v49 = *(v62 + 200);
  v50 = *(v62 + 168);
  v51 = *(v62 + 176);
  v53 = *(v62 + 152);
  v52 = *(v62 + 160);
  v54 = *(v62 + 144);
  v55 = *(v62 + 120);
  v57 = *(v62 + 96);
  v56 = *(v62 + 104);

  v58 = *(v62 + 8);

  return v58();
}

uint64_t sub_7328(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_94BC();
  v2[4] = sub_94AC();
  v4 = sub_949C();

  return _swift_task_switch(sub_73C0, v4, v3);
}

uint64_t sub_73C0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_7470;
  v6 = v0[3];

  return sub_6230();
}

uint64_t sub_7470()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_75AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_93FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1 + OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_playlist, v4);
  *a2 = swift_getKeyPath();
  sub_5170(&qword_14CE8, &qword_A880);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for PlaylistRow(0);
  *(a2 + v10[7]) = vdupq_n_s64(0x4050000000000000uLL);
  v9(a2 + v10[5], v8, v4);
  v11 = a2 + v10[6];
  sub_93AC();
  return (*(v5 + 8))(v8, v4);
}

id sub_7954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMInterfaceHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_79BC(uint64_t a1)
{
  v2 = sub_90DC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_911C();
}

uint64_t sub_7A84(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_8CF8;

  return v7();
}

uint64_t sub_7B6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_7C54;

  return v8();
}

uint64_t sub_7C54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_7D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5170(&qword_14D98, &qword_A900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_5C60(a3, v25 - v11, &qword_14D98, &qword_A900);
  v13 = sub_94DC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_608C(v12, &qword_14D98, &qword_A900);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_94CC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_949C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_945C() + 32;
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

    sub_608C(a3, &qword_14D98, &qword_A900);

    return v23;
  }

LABEL_8:
  sub_608C(a3, &qword_14D98, &qword_A900);
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

uint64_t sub_8044(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_813C;

  return v7(a1);
}

uint64_t sub_813C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_8234(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_944C();
  sub_957C();
  sub_946C();
  v4 = sub_958C();

  return sub_82C8(a1, v4);
}

unint64_t sub_82C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_944C();
      v9 = v8;
      if (v7 == sub_944C() && v9 == v10)
      {
        break;
      }

      v12 = sub_956C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_83CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5170(&qword_14D88, &qword_A8F0);
    v3 = sub_954C();
    v4 = a1 + 32;

    while (1)
    {
      sub_5C60(v4, &v11, &qword_14D90, &qword_A8F8);
      v5 = v11;
      result = sub_8234(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_87A0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_87A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_87B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_87F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7C54;

  return sub_7328(v2, v3);
}

uint64_t sub_889C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_8CF8;

  return sub_7A84(v2, v3, v5);
}

uint64_t sub_8960()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_89A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_8CF8;

  return sub_7B6C(a1, v4, v5, v7);
}

uint64_t sub_8A6C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8AA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_8CF8;

  return sub_8044(a1, v5);
}

uint64_t sub_8B5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7C54;

  return sub_8044(a1, v5);
}

uint64_t *sub_8C1C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_8C80(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_8D74(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_941C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_8E10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMPlaylist();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CLMPlaylist()
{
  result = qword_14DF8;
  if (!qword_14DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8F44()
{
  result = sub_93FC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}