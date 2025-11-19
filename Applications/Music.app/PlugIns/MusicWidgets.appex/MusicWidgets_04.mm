uint64_t sub_100075970()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10000CC8C(v1, v3, &qword_1006E3100);
  sub_10000CC8C(v2, v3 + v8, &qword_1006E3100);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_10001036C(v0[9], &qword_1006E3100);
    sub_10001036C(v10, &qword_1006E3100);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_10001036C(v0[7], &qword_1006E3100);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_10000CC8C(v0[7], v0[8], &qword_1006E3100);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_10001036C(v0[9], &qword_1006E3100);
    sub_10001036C(v15, &qword_1006E3100);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_10001036C(v0[7], &qword_1006E30F8);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100082424(&qword_1006E3108, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v12 = sub_1005727E8();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_10001036C(v16, &qword_1006E3100);
  sub_10001036C(v15, &qword_1006E3100);
  v23(v17, v22);
  sub_10001036C(v26, &qword_1006E3100);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

Swift::Int sub_100075D08()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100075E34()
{
  if (qword_1006DFA08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for WidgetMusicRecommendation(0);
  v2 = sub_10000C49C(v1, qword_1006FC250);
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v3 = v1[5];
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  v6 = (v2 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *v4 == *v6 && v5 == v7;
    if (!v8 && (sub_100574498() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = (v0 + v9);
  v11 = *(v0 + v9 + 8);
  v12 = (v2 + v9);
  v13 = v12[1];
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = *v10 == *v12 && v11 == v13;
  if (!v14 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v15 = v1[7];
  v16 = *(v0 + v15);
  v17 = *(v2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v17 == 6 || (sub_1000386DC(v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v1[8];
  v19 = *(v0 + v18);
  v20 = *(v2 + v18);

  return sub_10006B354(v19, v20);
}

id sub_100075F9C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_100009DCC(&qword_1006DFD70);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_10000CC8C(a1, v15, &qword_1006DFD70);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_10001036C(v15, &qword_1006DFD70);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = sub_10056DF68();
    v28 = sub_100573448();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10008190C(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v31 = sub_100574408();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_10008190C(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_10008237C(v15, v23, type metadata accessor for WidgetChartDiskCache.ChartList);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E31C8, type metadata accessor for WidgetChartDiskCache.ChartList);
    v35 = sub_10056C2A8();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    sub_10056C928();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_100081FB4(v49, v70, type metadata accessor for WidgetChartDiskCache.ChartList);

    v52 = sub_10056DF68();
    v53 = sub_100573448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v55 = sub_100574408();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_10008190C(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_10008190C(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_100081FB4(v51, v69, type metadata accessor for WidgetChartDiskCache.ChartList);
      v60 = sub_100572978();
      v62 = v61;
      sub_10008201C(v51, type metadata accessor for WidgetChartDiskCache.ChartList);
      v63 = sub_10008190C(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v65, v66);
    }

    else
    {
      sub_10008246C(v65, v66);

      sub_10008201C(v51, type metadata accessor for WidgetChartDiskCache.ChartList);
      (*(v8 + 8))(v50, v7);
    }

    return sub_10008201C(v49, type metadata accessor for WidgetChartDiskCache.ChartList);
  }
}

id sub_1000769CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_100009DCC(&qword_1006DFCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_10000CC8C(a1, v15, &qword_1006DFCE0);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_10001036C(v15, &qword_1006DFCE0);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = sub_10056DF68();
    v28 = sub_100573448();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10008190C(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v31 = sub_100574408();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_10008190C(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_10008237C(v15, v23, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E31A0, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v35 = sub_10056C2A8();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    sub_10056C928();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_100081FB4(v49, v70, type metadata accessor for TopChartsWidgetDataProvider.Chart);

    v52 = sub_10056DF68();
    v53 = sub_100573448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v55 = sub_100574408();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_10008190C(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_10008190C(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_100081FB4(v51, v69, type metadata accessor for TopChartsWidgetDataProvider.Chart);
      v60 = sub_100572978();
      v62 = v61;
      sub_10008201C(v51, type metadata accessor for TopChartsWidgetDataProvider.Chart);
      v63 = sub_10008190C(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v65, v66);
    }

    else
    {
      sub_10008246C(v65, v66);

      sub_10008201C(v51, type metadata accessor for TopChartsWidgetDataProvider.Chart);
      (*(v8 + 8))(v50, v7);
    }

    return sub_10008201C(v49, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  }
}

id sub_1000773FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_100009DCC(&qword_1006E0790);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for WidgetMusicRecommendation(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_10000CC8C(a1, v15, &qword_1006E0790);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_10001036C(v15, &qword_1006E0790);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = sub_10056DF68();
    v28 = sub_100573448();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10008190C(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v31 = sub_100574408();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_10008190C(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_10008237C(v15, v23, type metadata accessor for WidgetMusicRecommendation);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E3068, type metadata accessor for WidgetMusicRecommendation);
    v35 = sub_10056C2A8();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    sub_10056C928();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_100081FB4(v49, v70, type metadata accessor for WidgetMusicRecommendation);

    v52 = sub_10056DF68();
    v53 = sub_100573448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v55 = sub_100574408();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_10008190C(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_10008190C(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_100081FB4(v51, v69, type metadata accessor for WidgetMusicRecommendation);
      v60 = sub_100572978();
      v62 = v61;
      sub_10008201C(v51, type metadata accessor for WidgetMusicRecommendation);
      v63 = sub_10008190C(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v65, v66);
    }

    else
    {
      sub_10008246C(v65, v66);

      sub_10008201C(v51, type metadata accessor for WidgetMusicRecommendation);
      (*(v8 + 8))(v50, v7);
    }

    return sub_10008201C(v49, type metadata accessor for WidgetMusicRecommendation);
  }
}

id sub_100077E2C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_100009DCC(&qword_1006E0AE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v25 = v24;
  sub_10000CC8C(a1, v15, &qword_1006E0AE0);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_10001036C(v15, &qword_1006E0AE0);
    type metadata accessor for WidgetDiskCache();
    (*(v8 + 16))(v12, a5, v7);
    v26 = v73;

    v27 = sub_10056DF68();
    v28 = sub_100573448();

    v29 = v7;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10008190C(v72, v26, &v75);
      *(v30 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v31 = sub_100574408();
      v33 = v32;
      (*(v8 + 8))(v12, v29);
      v34 = sub_10008190C(v31, v33, &v75);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Nil value set for item named %{public}s, removing file %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v41 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v42);
    v44 = v43;
    v75 = 0;
    v45 = [v41 removeItemAtURL:v43 error:&v75];

    v46 = v75;
    if (v45)
    {

      return v46;
    }

    else
    {
      v74 = v75;
      v48 = v75;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v68 = a5;
    sub_10008237C(v15, v23, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E3160, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
    v35 = sub_10056C2A8();
    v37 = v36;

    v38 = v25;
    v39 = v73;
    v67 = v38;
    v40 = v68;
    sub_10056C928();
    v65 = v35;
    v66 = v37;
    type metadata accessor for WidgetDiskCache();
    v49 = v23;
    v50 = v71;
    (*(v8 + 16))(v71, v40, v7);
    v51 = v70;
    sub_100081FB4(v49, v70, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);

    v52 = sub_10056DF68();
    v53 = sub_100573448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v54 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL);
      v55 = sub_100574408();
      LODWORD(v68) = v53;
      v56 = v55;
      v58 = v57;
      (*(v8 + 8))(v50, v7);
      v59 = sub_10008190C(v56, v58, &v75);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_10008190C(v72, v39, &v75);
      *(v54 + 22) = 2082;
      sub_100081FB4(v51, v69, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      v60 = sub_100572978();
      v62 = v61;
      sub_10008201C(v51, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      v63 = sub_10008190C(v60, v62, &v75);

      *(v54 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v52, v68, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v54, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v65, v66);
    }

    else
    {
      sub_10008246C(v65, v66);

      sub_10008201C(v51, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      (*(v8 + 8))(v50, v7);
    }

    return sub_10008201C(v49, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
  }
}

uint64_t sub_10007885C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1000788B0()
{
  result = qword_1006E2E80;
  if (!qword_1006E2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2E80);
  }

  return result;
}

uint64_t sub_10007890C()
{
  sub_1005729F8();
}

uint64_t sub_100078A28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008AD24(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100078A58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x736B636950706F74;
  v5 = 0xEB00000000736573;
  v6 = 0x61656C655277656ELL;
  v7 = 0xEE00756F59726F46;
  v8 = 0x736E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001005A9ED0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000756FLL;
  v10 = 0x59726F466564616DLL;
  if (v2 != 1)
  {
    v10 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100078C40()
{
  v1 = sub_10056CAA8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0xD00000000000001ALL;
  v18 = 0x80000001005AAE10;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v16, "fetchDate: ");
  BYTE5(v16._object) = 0;
  HIWORD(v16._object) = -5120;
  sub_100082424(&qword_1006DFD50, &type metadata accessor for Date);
  v19._countAndFlagsBits = sub_100574408();
  sub_100572A98(v19);

  v20._countAndFlagsBits = 2108450;
  v20._object = 0xE300000000000000;
  sub_100572A98(v20);
  sub_100572A98(v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100573ED8(20);

  v16._countAndFlagsBits = 0x617A696C61636F6CLL;
  v16._object = 0xEF22203A6E6F6974;
  v5 = type metadata accessor for WidgetMusicRecommendation(0);
  v6 = (v0 + v5[5]);
  v7 = v6[1];
  v14 = *v6;
  v15 = v7;

  sub_100009DCC(&qword_1006DFD58);
  v21._countAndFlagsBits = sub_100572978();
  sub_100572A98(v21);

  v22._countAndFlagsBits = 2108450;
  v22._object = 0xE300000000000000;
  sub_100572A98(v22);
  sub_100572A98(v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100573ED8(23);

  v16._countAndFlagsBits = 0xD000000000000012;
  v16._object = 0x80000001005AA010;
  if ((sub_100075E34() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A680C();
    }
  }

  sub_10056C9D8();
  v8 = sub_100574408();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  v23._countAndFlagsBits = v8;
  v23._object = v10;
  sub_100572A98(v23);

  v24._countAndFlagsBits = 2108450;
  v24._object = 0xE300000000000000;
  sub_100572A98(v24);
  sub_100572A98(v16);

  strcpy(&v16, "title: ");
  BYTE1(v16._object) = 0;
  WORD1(v16._object) = 0;
  HIDWORD(v16._object) = -402653184;
  v11 = (v0 + v5[6]);
  v12 = v11[1];
  v14 = *v11;
  v15 = v12;

  v25._countAndFlagsBits = sub_100572978();
  sub_100572A98(v25);

  v26._countAndFlagsBits = 2108450;
  v26._object = 0xE300000000000000;
  sub_100572A98(v26);
  sub_100572A98(v16);

  strcpy(&v16, "kind: ");
  v16._object = 0xE700000000000000;
  LOBYTE(v14) = *(v0 + v5[7]);
  sub_100009DCC(&qword_1006E0798);
  v27._countAndFlagsBits = sub_100572978();
  sub_100572A98(v27);

  v28._countAndFlagsBits = 2108450;
  v28._object = 0xE300000000000000;
  sub_100572A98(v28);
  sub_100572A98(v16);

  strcpy(&v16, "items: ");
  BYTE1(v16._object) = 0;
  WORD1(v16._object) = 0;
  HIDWORD(v16._object) = -402653184;
  type metadata accessor for WidgetMusicItem();
  v29._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v29);

  v30._countAndFlagsBits = 2108450;
  v30._object = 0xE300000000000000;
  sub_100572A98(v30);
  sub_100572A98(v16);

  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  sub_100572A98(v31);
  return v17;
}

uint64_t sub_100079138()
{
  v0 = type metadata accessor for WidgetMusicItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056CAA8();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetMusicRecommendation(0);
  sub_10000C910(v7, qword_1006FC250);
  v8 = sub_10000C49C(v7, qword_1006FC250);
  sub_10056CA68();
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 preferredLocalizations];

  v11 = sub_100572D28();
  if (v11[2])
  {
    v12 = v11[4];
    v25 = v11[5];
    v26 = v12;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (qword_1006DF9E0 != -1)
  {
    swift_once();
  }

  v13 = unk_1006FC230;
  v24 = qword_1006FC228;
  v14 = qword_1006DF9B8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10000C49C(v0, qword_1006FC1D8);
  sub_100081FB4(v15, v3, type metadata accessor for WidgetMusicItem);
  v16 = sub_100572D98();
  *(v16 + 16) = 8;
  v17 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  sub_100081FB4(v3, v17, type metadata accessor for WidgetMusicItem);
  v18 = *(v1 + 72);
  sub_100081FB4(v3, v17 + v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 2 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 3 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 4 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 5 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 6 * v18, type metadata accessor for WidgetMusicItem);
  sub_10008237C(v3, v17 - v18 + 8 * v18, type metadata accessor for WidgetMusicItem);
  result = (*(v27 + 32))(v8, v6, v28);
  v20 = (v8 + v7[5]);
  v21 = v25;
  *v20 = v26;
  v20[1] = v21;
  v22 = (v8 + v7[6]);
  *v22 = v24;
  v22[1] = v13;
  *(v8 + v7[7]) = 6;
  *(v8 + v7[8]) = v16;
  return result;
}

uint64_t sub_1000794E0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1005711D8();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3070);
  v2[10] = swift_task_alloc();
  v5 = sub_10056CAA8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10007963C, 0, 0);
}

uint64_t sub_10007963C()
{
  sub_10056CA68();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 preferredLocalizations];

  v3 = sub_100572D28();
  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(v0 + 112) = v4;
  *(v0 + 120) = v5;
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  *(v0 + 16) = sub_1005711C8();
  *(v0 + 24) = v10;
  *(v0 + 176) = sub_100079AE8();
  sub_1005711B8();
  v11 = sub_1000745E4(8, &qword_1006E3070, &unk_10057FA80, &qword_1006E3110);
  v21 = v12;
  v14 = v13;
  v16 = v15;
  *(v0 + 128) = v11;
  (*(v7 + 16))(v6, v9, v8);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v0 + 136) = v18;
  (*(v7 + 32))(v18 + v17, v6, v8);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v19[1] = sub_10007986C;

  return (sub_10006C190)(&unk_10057FA90, v18, v11, v21, v14, v16);
}

uint64_t sub_10007986C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = v4[2];
    v7 = v4[3];

    swift_unknownObjectRelease();
    v4[19] = a1;
    v4[20] = v7;
    v4[21] = v6;

    return _swift_task_switch(sub_1000799CC, 0, 0);
  }
}

uint64_t sub_1000799CC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v15 = *(v0 + 152);
  v9 = *(v0 + 32);
  (*(*(v0 + 56) + 8))(*(v0 + 40), *(v0 + 48));
  (*(v7 + 32))(v9, v6, v8);
  v10 = type metadata accessor for WidgetMusicRecommendation(0);
  v11 = (v9 + v10[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v9 + v10[6]);
  *v12 = v1;
  v12[1] = v2;
  *(v9 + v10[7]) = v3;
  *(v9 + v10[8]) = v15;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100079AE8()
{
  v1 = sub_1005711D8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006E30A0);
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_100571128();
  v12 = sub_100571118();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_10000CC8C(v11, v9, &qword_1006E30A0);
    v24 = (*(v13 + 88))(v9, v12);
    if (v24 == enum case for MusicPersonalRecommendation.Kind.friendsListening(_:))
    {
      v25 = 5;
      goto LABEL_10;
    }

    if (v24 == enum case for MusicPersonalRecommendation.Kind.madeForYou(_:))
    {
      v25 = 1;
      goto LABEL_10;
    }

    if (v24 == enum case for MusicPersonalRecommendation.Kind.moodsForYou(_:))
    {
      v25 = 2;
      goto LABEL_10;
    }

    if (v24 == enum case for MusicPersonalRecommendation.Kind.newReleases(_:))
    {
      v25 = 3;
      goto LABEL_10;
    }

    if (v24 == enum case for MusicPersonalRecommendation.Kind.stationsForYou(_:))
    {
      v25 = 4;
      goto LABEL_10;
    }

    if (v24 == enum case for MusicPersonalRecommendation.Kind.topPicks(_:))
    {
      v25 = 0;
      goto LABEL_10;
    }

    (*(v13 + 8))(v9, v12);
  }

  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v14 = sub_10056DF88();
  sub_10000C49C(v14, qword_1006E2E68);
  (*(v2 + 16))(v4, v0, v1);
  v15 = sub_10056DF68();
  v16 = sub_100573428();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v1;
    v28 = v18;
    v19 = v18;
    *v17 = 136315138;
    sub_100571128();
    v20 = sub_100572978();
    v22 = v21;
    (*(v2 + 8))(v4, v27);
    v23 = sub_10008190C(v20, v22, &v28);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unhandled recommendation kind=%s", v17, 0xCu);
    sub_100010474(v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v25 = 6;
LABEL_10:
  sub_10001036C(v11, &qword_1006E30A0);
  return v25;
}

uint64_t sub_100079F40(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E32A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_10008B1DC();
  sub_100574718();
  v17 = 0;
  sub_10056CAA8();
  sub_100082424(&qword_1006DFF90, &type metadata accessor for Date);
  sub_100574368();
  if (!v2)
  {
    v9 = type metadata accessor for WidgetMusicRecommendation(0);
    v16 = 1;
    sub_100574308();
    v15 = 2;
    sub_100574308();
    v14 = *(v3 + *(v9 + 28));
    v13 = 3;
    sub_10008B230();
    sub_100574318();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_100009DCC(&qword_1006DFF98);
    sub_10008B284(&qword_1006DFFA0, &qword_1006DFFA8);
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007A204@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10056CAA8();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006E32B8);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_10008B1DC();
  v28 = v8;
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v12 = v24;
  v35 = 0;
  sub_100082424(&qword_1006DFFB8, &type metadata accessor for Date);
  v13 = v25;
  sub_1005742D8();
  (*(v12 + 32))(v11, v13, v4);
  v34 = 1;
  v14 = sub_100574278();
  v15 = &v11[v9[5]];
  *v15 = v14;
  v15[1] = v16;
  v33 = 2;
  v17 = sub_100574278();
  v18 = v26;
  v19 = &v11[v9[6]];
  *v19 = v17;
  v19[1] = v20;
  v31 = 3;
  sub_10008B320();
  sub_100574288();
  v11[v9[7]] = v32;
  sub_100009DCC(&qword_1006DFF98);
  v30 = 4;
  sub_10008B284(&qword_1006DFFC0, &qword_1006DFFC8);
  sub_1005742D8();
  (*(v18 + 8))(v28, v27);
  *&v11[v9[8]] = v29;
  sub_100081FB4(v11, v23, type metadata accessor for WidgetMusicRecommendation);
  sub_100010474(a1);
  return sub_10008201C(v11, type metadata accessor for WidgetMusicRecommendation);
}

uint64_t sub_10007A6E8()
{
  v1 = *v0;
  v2 = 0x7461446863746566;
  v3 = 0x656C746974;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617A696C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007A780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008B48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007A7A8(uint64_t a1)
{
  v2 = sub_10008B1DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A7E4(uint64_t a1)
{
  v2 = sub_10008B1DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A858(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_100009DCC(&qword_1006E3028);
  *(v3 + 32) = swift_task_alloc();
  v4 = sub_1005711D8();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for WidgetRecommendationDiskCache(0);
  *(v3 + 72) = swift_task_alloc();
  sub_100009DCC(&qword_1006E0790);
  *(v3 + 80) = swift_task_alloc();
  v5 = type metadata accessor for WidgetMusicRecommendation(0);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10007AA2C, 0, 0);
}

uint64_t sub_10007AA2C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 24);
  v6 = OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache;
  *(v0 + 120) = OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache;
  v7 = *(v0 + 144);
  sub_100081FB4(v5 + v6, v3, type metadata accessor for WidgetRecommendationDiskCache);
  sub_10007B198(v7, v4);
  sub_10008201C(v3, type metadata accessor for WidgetRecommendationDiskCache);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 80), &qword_1006E0790);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_10007AC5C;
    v9 = *(v0 + 32);
    v10 = *(v0 + 144);

    return sub_10007C2A8(v9, v10);
  }

  else
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 16);
    sub_10008237C(*(v0 + 80), v12, type metadata accessor for WidgetMusicRecommendation);
    sub_10008237C(v12, v13, type metadata accessor for WidgetMusicRecommendation);
    (*(*(v0 + 96) + 56))(*(v0 + 16), 0, 1, *(v0 + 88));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10007AC5C()
{

  return _swift_task_switch(sub_10007AD58, 0, 0);
}

uint64_t sub_10007AD58()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(v3, &qword_1006E3028);
    (*(v0[12] + 56))(v0[2], 1, 1, v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_10007AF34;
    v9 = v0[13];
    v10 = v0[7];

    return sub_1000794E0(v9, v10);
  }
}

uint64_t sub_10007AF34()
{

  return _swift_task_switch(sub_10007B030, 0, 0);
}

uint64_t sub_10007B030()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[2];
  sub_100081FB4(v0[3] + v0[15], v2, type metadata accessor for WidgetRecommendationDiskCache);
  sub_10007BC28(v1);
  sub_10008201C(v2, type metadata accessor for WidgetRecommendationDiskCache);
  (*(v5 + 8))(v3, v4);
  sub_10008237C(v1, v6, type metadata accessor for WidgetMusicRecommendation);
  (*(v0[12] + 56))(v0[2], 0, 1, v0[11]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10007B198@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v93 = sub_10056CAA8();
  v3 = *(v93 - 8);
  v4 = __chkstk_darwin(v93);
  v92 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v8 = &v84[-v7];
  __chkstk_darwin(v6);
  v10 = &v84[-v9];
  v11 = sub_100009DCC(&qword_1006E0790);
  __chkstk_darwin(v11 - 8);
  v13 = &v84[-v12];
  v14 = type metadata accessor for WidgetMusicRecommendation(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v91 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v89 = &v84[-v19];
  __chkstk_darwin(v18);
  v21 = &v84[-v20];
  LOBYTE(v96[0]) = a1;
  v22 = sub_100572978();
  sub_100070DB0(v22, v23, v13);
  v24 = v14;
  v25 = v15;

  v26 = *(v15 + 48);
  v95 = v24;
  if (v26(v13, 1, v24) == 1)
  {
    sub_10001036C(v13, &qword_1006E0790);
    if (qword_1006DFA18 != -1)
    {
      swift_once();
    }

    v27 = sub_10056DF88();
    sub_10000C49C(v27, qword_1006E2E68);
    v28 = sub_10056DF68();
    v29 = sub_100573448();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v96[0] = v31;
      *v30 = 136446210;
      LOBYTE(v97) = a1;
      v32 = sub_100572978();
      v34 = sub_10008190C(v32, v33, v96);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Cache miss for recommendation kind: %{public}s", v30, 0xCu);
      sub_100010474(v31);
    }

LABEL_29:
    v68 = 1;
    v69 = v94;
    return v25[7](v69, v68, 1, v95);
  }

  sub_10008237C(v13, v21, type metadata accessor for WidgetMusicRecommendation);
  v35 = v10;
  sub_10056CA68();
  v36 = [objc_opt_self() mainBundle];
  v37 = [v36 preferredLocalizations];

  v38 = sub_100572D28();
  if (v38[2])
  {
    v39 = v38[4];
    v40 = v38[5];
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v41 = v93;

  v42 = v35;
  if ((sub_100075E34() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A680C();
    }
  }

  sub_10056C9D8();
  v43 = sub_10056C9F8();
  v44 = *(v3 + 8);
  v90 = v3 + 8;
  v44(v8, v41);
  v45 = v92;
  if ((v43 & 1) == 0)
  {
    goto LABEL_23;
  }

  v46 = &v21[*(v95 + 20)];
  v47 = v46[1];
  if (!v47)
  {
    if (!v40)
    {
      goto LABEL_31;
    }

LABEL_23:
    v93 = v39;
    if (qword_1006DFA18 != -1)
    {
      swift_once();
    }

    v48 = sub_10056DF88();
    sub_10000C49C(v48, qword_1006E2E68);
    (*(v3 + 16))(v45, v42, v41);
    v49 = v91;
    sub_100081FB4(v21, v91, type metadata accessor for WidgetMusicRecommendation);

    v50 = v45;
    v51 = sub_10056DF68();
    v52 = sub_100573448();
    v88 = v42;
    v53 = v52;

    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v89 = v25;
      v55 = v54;
      v87 = swift_slowAlloc();
      v97 = v87;
      *v55 = 136446722;
      sub_100082424(&qword_1006DFD50, &type metadata accessor for Date);
      v85 = v53;
      v56 = sub_100574408();
      v86 = v44;
      v58 = v57;
      v44(v50, v41);
      v59 = sub_10008190C(v56, v58, &v97);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v96[0] = v93;
      v96[1] = v40;
      sub_100009DCC(&qword_1006DFD58);
      v60 = sub_100572978();
      v62 = sub_10008190C(v60, v61, &v97);

      *(v55 + 14) = v62;
      *(v55 + 22) = 2082;
      v63 = sub_100078C40();
      v64 = v41;
      v66 = v65;
      sub_10008201C(v49, type metadata accessor for WidgetMusicRecommendation);
      v67 = sub_10008190C(v63, v66, &v97);

      *(v55 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v51, v85, "Cache miss now %{public}s, expected localization %{public}s, for recommendation: %{public}s", v55, 0x20u);
      swift_arrayDestroy();

      v25 = v89;

      v86(v88, v64);
    }

    else
    {

      sub_10008201C(v49, type metadata accessor for WidgetMusicRecommendation);
      v44(v50, v41);
      v44(v88, v41);
    }

    sub_10008201C(v21, type metadata accessor for WidgetMusicRecommendation);
    goto LABEL_29;
  }

  if (!v40 || (*v46 != v39 || v47 != v40) && (sub_100574498() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_31:
  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v71 = sub_10056DF88();
  sub_10000C49C(v71, qword_1006E2E68);
  v72 = v89;
  sub_100081FB4(v21, v89, type metadata accessor for WidgetMusicRecommendation);
  v73 = sub_10056DF68();
  v74 = sub_100573448();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v88 = v42;
    v76 = v75;
    v77 = v44;
    v78 = swift_slowAlloc();
    v96[0] = v78;
    *v76 = 136446210;
    v79 = sub_100078C40();
    v81 = v80;
    sub_10008201C(v72, type metadata accessor for WidgetMusicRecommendation);
    v82 = sub_10008190C(v79, v81, v96);

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v73, v74, "Using cached recommendation: %{public}s", v76, 0xCu);
    sub_100010474(v78);

    v77(v88, v93);
  }

  else
  {

    sub_10008201C(v72, type metadata accessor for WidgetMusicRecommendation);
    v44(v42, v93);
  }

  v83 = v94;
  sub_10008237C(v21, v94, type metadata accessor for WidgetMusicRecommendation);
  v69 = v83;
  v68 = 0;
  return v25[7](v69, v68, 1, v95);
}

void sub_10007BC28(uint64_t a1)
{
  v2 = type metadata accessor for WidgetMusicRecommendation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100009DCC(&qword_1006E0790);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  if (*(a1 + *(v2 + 28)) == 6)
  {
    if (qword_1006DFA18 != -1)
    {
      swift_once();
    }

    v9 = sub_10056DF88();
    sub_10000C49C(v9, qword_1006E2E68);
    sub_100081FB4(a1, v5, type metadata accessor for WidgetMusicRecommendation);
    v10 = sub_10056DF68();
    v11 = sub_100573448();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      v14 = sub_100078C40();
      v16 = v15;
      sub_10008201C(v5, type metadata accessor for WidgetMusicRecommendation);
      v17 = sub_10008190C(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unknown kind, unable to save to disk recommendation: %{public}s", v12, 0xCu);
      sub_100010474(v13);
    }

    else
    {

      sub_10008201C(v5, type metadata accessor for WidgetMusicRecommendation);
    }
  }

  else
  {
    v21[7] = *(a1 + *(v2 + 28));
    v18 = sub_100572978();
    v20 = v19;
    sub_100081FB4(a1, v8, type metadata accessor for WidgetMusicRecommendation);
    (*(v3 + 56))(v8, 0, 1, v2);
    sub_1000735A8(v18, v20, v8);

    sub_10001036C(v8, &qword_1006E0790);
  }
}

id sub_10007BF44()
{
  type metadata accessor for RecommendationsWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10007BF84();
  qword_1006FC268 = result;
  return result;
}

id sub_10007BF84()
{
  v1 = v0;
  v2 = sub_100570D58();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AC28(0x6E656D6D6F636552, 0xEF736E6F69746164, (v0 + OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache));
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  sub_100570D68();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];

  v8 = sub_1005728D8();
  v10 = v9;

  if (v8 == 0x646957636973754DLL && v10 == 0xEC00000073746567)
  {
  }

  else
  {
    v12 = sub_100574498();

    if ((v12 & 1) == 0)
    {
      return v1;
    }
  }

  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, qword_1006E2E68);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "running in widget process, disabling fallback cache", v16, 2u);
  }

  v17 = [objc_opt_self() defaultMediaLibrary];
  if ([v17 artworkDataSource])
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      [v18 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v20 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C2A8(uint64_t a1, char a2)
{
  *(v2 + 290) = a2;
  *(v2 + 64) = a1;
  v3 = sub_100009DCC(&qword_1006E3010);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  v4 = sub_1005712D8();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  sub_100009DCC(&qword_1006E3018);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  sub_100009DCC(&qword_1006E3020);
  *(v2 + 136) = swift_task_alloc();
  v5 = sub_100570D78();
  *(v2 + 144) = v5;
  *(v2 + 152) = *(v5 - 8);
  *(v2 + 160) = swift_task_alloc();
  v6 = sub_1005712B8();
  *(v2 + 168) = v6;
  *(v2 + 176) = *(v6 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = sub_100009DCC(&qword_1006E3028);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10007C55C, 0, 0);
}

uint64_t sub_10007C55C()
{
  v38 = v0;
  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  *(v0 + 224) = sub_10000C49C(v1, qword_1006E2E68);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 290);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136446210;
    *(v0 + 289) = v4;
    v7 = sub_100572978();
    v9 = sub_10008190C(v7, v8, &v37);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asking server for %{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v10 = *(v0 + 216);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 290);
  v15 = sub_1005711D8();
  *(v0 + 232) = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  *(v0 + 240) = v17;
  *(v0 + 248) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v10, 1, 1, v15);
  sub_1005712A8();
  (*(v12 + 104))(v11, enum case for MusicDataRequest.Source.widgets(_:), v13);
  sub_100571258();
  v18 = sub_100571118();
  v19 = *(*(v18 - 8) + 104);
  v20 = *(v0 + 136);
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v21 = &enum case for MusicPersonalRecommendation.Kind.madeForYou(_:);
      }

      else
      {
        v21 = &enum case for MusicPersonalRecommendation.Kind.moodsForYou(_:);
      }
    }

    else
    {
      v21 = &enum case for MusicPersonalRecommendation.Kind.topPicks(_:);
    }

    goto LABEL_15;
  }

  if (v14 == 3)
  {
    v21 = &enum case for MusicPersonalRecommendation.Kind.newReleases(_:);
    goto LABEL_15;
  }

  if (v14 == 4)
  {
    v21 = &enum case for MusicPersonalRecommendation.Kind.stationsForYou(_:);
LABEL_15:
    v19(v20, *v21, v18);
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v19(v20, enum case for MusicPersonalRecommendation.Kind.friendsListening(_:), v18);
  sub_100009DCC(&qword_1006E3030);
  v33 = sub_100571268();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v22 = swift_allocObject();
  *(v22 + 1) = xmmword_10057B510;
  (*(v34 + 104))(v22 + v35, enum case for MusicPersonalRecommendationsRequest.Content.AdditionalContent.friends(_:), v33);
LABEL_16:
  v23 = *(v0 + 128);
  v24 = *(v0 + 136);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  *(v24 + *(sub_100009DCC(&qword_1006E3038) + 48)) = v22;
  v27 = enum case for MusicPersonalRecommendationsRequest.Content.module(_:);
  v28 = sub_100571278();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v24, v27, v28);
  (*(v29 + 56))(v24, 0, 1, v28);
  sub_100571288();
  v30 = *(v26 + 56);
  *(v0 + 256) = v30;
  *(v0 + 264) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30(v23, 1, 1, v25);
  v31 = swift_task_alloc();
  *(v0 + 272) = v31;
  *v31 = v0;
  v31[1] = sub_10007CA24;
  v32 = *(v0 + 120);

  return MusicPersonalRecommendationsRequest.response()(v32);
}

uint64_t sub_10007CA24()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10007CF08;
  }

  else
  {
    v2 = sub_10007CB38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007CB38()
{
  v32 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(v0 + 256))(v1, 0, 1, v3);
  sub_10008B71C(v1, v2, &qword_1006E3018);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    (*(v0 + 240))(*(v0 + 208), 1, 1, *(v0 + 232));
  }

  else
  {
    v5 = *(v0 + 208);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    (*(v7 + 16))(v6, *(v0 + 128), v8);
    sub_1005712C8();
    (*(v7 + 8))(v6, v8);
    sub_10006E340(&qword_1006E3010, &qword_1006E3040, &type metadata accessor for MusicPersonalRecommendation, v5);
    (*(v11 + 8))(v9, v10);
  }

  sub_10008B71C(*(v0 + 208), *(v0 + 216), &qword_1006E3028);
  v12 = sub_10056DF68();
  v13 = sub_100573448();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v30 = *(v0 + 184);
    v17 = *(v0 + 168);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136446210;
    swift_beginAccess();
    sub_10000CC8C(v14, v15, &qword_1006E3028);
    v20 = sub_100572978();
    v22 = sub_10008190C(v20, v21, &v31);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Server returned: %{public}s", v18, 0xCu);
    sub_100010474(v19);

    (*(v16 + 8))(v30, v17);
  }

  else
  {
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 168);

    (*(v24 + 8))(v23, v25);
  }

  sub_10001036C(*(v0 + 128), &qword_1006E3018);
  v26 = *(v0 + 216);
  v27 = *(v0 + 64);
  swift_beginAccess();
  sub_10000CC8C(v26, v27, &qword_1006E3028);
  sub_10001036C(v26, &qword_1006E3028);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10007CF08()
{
  v17 = v0;
  v1 = *(v0 + 128);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  sub_10001036C(v1, &qword_1006E3018);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 290);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136446466;
    *(v0 + 288) = v4;
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v16);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Request %{public}s failed with %{public}@", v5, 0x16u);
    sub_10001036C(v6, &qword_1006DFD00);

    sub_100010474(v7);
  }

  else
  {
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 64);
  swift_beginAccess();
  sub_10000CC8C(v12, v13, &qword_1006E3028);
  sub_10001036C(v12, &qword_1006E3028);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10007D1D8()
{
  sub_10008201C(v0 + OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache, type metadata accessor for WidgetRecommendationDiskCache);

  return swift_deallocClassInstance();
}

uint64_t sub_10007D28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007D30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for WidgetMusicRecommendationKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicRecommendationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10007D4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100009DCC(&unk_1006E1E90);
  v3[5] = swift_task_alloc();
  v4 = sub_10056CAA8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_1005711A8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100571B78();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_100009DCC(&qword_1006E30A0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10007D6FC, 0, 0);
}

uint64_t sub_10007D6FC()
{
  v1 = v0[18];
  sub_100571128();
  v2 = sub_100571118();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_7;
  }

  v4 = v0[17];
  sub_10000CC8C(v0[18], v4, &qword_1006E30A0);
  if ((*(v3 + 88))(v4, v2) != enum case for MusicPersonalRecommendation.Kind.newReleases(_:))
  {
    (*(v3 + 8))(v0[17], v2);
LABEL_7:
    v18 = sub_100571158();
    v20 = v19;
    goto LABEL_8;
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  (*(v7 + 16))(v5, v0[3], v6);
  if ((*(v7 + 88))(v5, v6) != enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    (*(v0[11] + 8))(v0[13], v0[10]);
    goto LABEL_12;
  }

  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[5];
  (*(v0[11] + 96))(v11, v0[10]);
  (*(v9 + 32))(v8, v11, v10);
  sub_100571AE8();
  v15 = (*(v13 + 48))(v14, 1, v12);
  v16 = v0[15];
  if (v15 == 1)
  {
    v17 = v0[5];
    (*(v16 + 8))(v0[16], v0[14]);
    sub_10001036C(v17, &unk_1006E1E90);
LABEL_12:
    v18 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  v29 = v0[8];
  v31 = v0[6];
  v30 = v0[7];
  v39 = v0[16];
  v40 = v0[14];
  v38 = v0[9];
  (*(v30 + 32))();
  v32 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  isa = sub_10056C9E8().super.isa;
  sub_10056CA68();
  v34 = sub_10056C9E8().super.isa;
  v35 = *(v30 + 8);
  v35(v29, v31);
  v36 = [v32 localizedStringForDate:isa relativeToDate:v34];

  v18 = sub_1005728D8();
  v20 = v37;

  v35(v38, v31);
  (*(v16 + 8))(v39, v40);
LABEL_8:
  v22 = v0[11];
  v21 = v0[12];
  v23 = v0[10];
  v24 = v0[3];
  sub_10001036C(v0[18], &qword_1006E30A0);
  (*(v22 + 16))(v21, v24, v23);
  v25 = swift_task_alloc();
  v0[19] = v25;
  *v25 = v0;
  v25[1] = sub_10007DAF0;
  v26 = v0[12];
  v27 = v0[2];

  return sub_10007DCE0(v27, v26, v18, v20);
}

uint64_t sub_10007DAF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_100009DCC(&qword_1006E30A8);
  v4[12] = swift_task_alloc();
  v5 = sub_10056D5A8();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v4[16] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20);
  v4[17] = swift_task_alloc();
  v6 = sub_10056C8A8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_100571F08();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  sub_10056CC38();
  v4[24] = swift_task_alloc();
  sub_100572888();
  v4[25] = swift_task_alloc();
  sub_100572868();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&unk_1006E1E90);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = sub_10056CAA8();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v9 = sub_1005721C8();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = sub_100009DCC(&qword_1006E30B0);
  v4[38] = swift_task_alloc();
  sub_100009DCC(&qword_1006E30B8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v10 = sub_1005722D8();
  v4[42] = v10;
  v4[43] = *(v10 - 8);
  v4[44] = swift_task_alloc();
  v11 = sub_100571B78();
  v4[45] = v11;
  v4[46] = *(v11 - 8);
  v4[47] = swift_task_alloc();
  v12 = sub_1005711A8();
  v4[48] = v12;
  v4[49] = *(v12 - 8);
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_10007E230, 0, 0);
}

uint64_t sub_10007E230()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  (*(v2 + 16))(v1, v0[9], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    v5 = v0[50];
    v6 = v0[47];
    v8 = v0[45];
    v7 = v0[46];
    (*(v0[49] + 96))(v5, v0[48]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = sub_100571B28();
    v11 = v10;
    v12 = sub_100571AC8();
    v14 = v13;
    v15 = sub_100571198();
    v17 = v16;
    (*(v7 + 8))(v6, v8);
    goto LABEL_19;
  }

  if (v4 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    v18 = v0[50];
    v20 = v0[43];
    v19 = v0[44];
    v22 = v0[41];
    v21 = v0[42];
    v23 = v0[40];
    v24 = v0[38];
    v107 = v0[37];
    v26 = v0[34];
    v25 = v0[35];
    (*(v0[49] + 96))(v18, v0[48]);
    (*(v20 + 32))(v19, v18, v21);
    v114 = sub_1005721A8();
    v112 = v27;
    v110 = sub_100572158();
    v113 = v28;
    sub_1005721D8();
    (*(v25 + 104))(v23, enum case for Playlist.Kind.personalMix(_:), v26);
    (*(v25 + 56))(v23, 0, 1, v26);
    v29 = *(v107 + 48);
    sub_10000CC8C(v22, v24, &qword_1006E30B8);
    sub_10000CC8C(v23, v24 + v29, &qword_1006E30B8);
    v30 = *(v25 + 48);
    if (v30(v24, 1, v26) == 1)
    {
      v31 = v0[41];
      v32 = v0[34];
      sub_10001036C(v0[40], &qword_1006E30B8);
      sub_10001036C(v31, &qword_1006E30B8);
      v33 = v30(v24 + v29, 1, v32);
      v12 = v110;
      v14 = v113;
      if (v33 == 1)
      {
        sub_10001036C(v0[38], &qword_1006E30B8);
        v9 = v114;
LABEL_15:
        v57 = v0[30];
        v58 = v0[31];
        v59 = v0[29];
        sub_100572198();
        if ((*(v58 + 48))(v59, 1, v57) != 1)
        {
          v109 = v0[42];
          v111 = v0[44];
          v92 = v0[32];
          v94 = v0[30];
          v93 = v0[31];
          v105 = v0[33];
          v106 = v0[43];
          v104 = v94;
          (*(v93 + 32))();
          v95 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
          [v95 setUnitsStyle:0];
          [v95 setDateTimeStyle:1];
          isa = sub_10056C9E8().super.isa;
          sub_10056CA68();
          v97 = sub_10056C9E8().super.isa;
          v98 = *(v93 + 8);
          v98(v92, v94);
          v99 = [v95 localizedStringForDate:isa relativeToDate:v97];

          v100 = sub_1005728D8();
          v102 = v101;

          sub_100572858();
          v116._countAndFlagsBits = 0x2064657461647055;
          v116._object = 0xE800000000000000;
          sub_100572848(v116);
          v117._countAndFlagsBits = v100;
          v117._object = v102;
          sub_100572838(v117);
          v9 = v114;

          v118._countAndFlagsBits = 0;
          v118._object = 0xE000000000000000;
          sub_100572848(v118);
          sub_100572878();
          sub_10056CBC8();
          v15 = sub_100572948();
          v17 = v103;

          v98(v105, v104);
          v14 = v113;
          (*(v106 + 8))(v111, v109);
          goto LABEL_18;
        }

        sub_10001036C(v0[29], &unk_1006E1E90);
LABEL_17:
        v61 = v0[43];
        v60 = v0[44];
        v62 = v0[42];
        v15 = sub_100571198();
        v17 = v63;
        (*(v61 + 8))(v60, v62);
LABEL_18:
        v11 = v112;
        goto LABEL_19;
      }
    }

    else
    {
      v42 = v0[34];
      sub_10000CC8C(v0[38], v0[39], &qword_1006E30B8);
      v43 = v30(v24 + v29, 1, v42);
      v45 = v0[40];
      v44 = v0[41];
      v46 = v0[39];
      if (v43 != 1)
      {
        v52 = v0[38];
        v54 = v0[35];
        v53 = v0[36];
        v55 = v0[34];
        (*(v54 + 32))(v53, v24 + v29, v55);
        sub_100082424(&qword_1006E30C8, &type metadata accessor for Playlist.Kind);
        v108 = sub_1005727E8();
        v56 = *(v54 + 8);
        v56(v53, v55);
        sub_10001036C(v45, &qword_1006E30B8);
        sub_10001036C(v44, &qword_1006E30B8);
        v56(v46, v55);
        sub_10001036C(v52, &qword_1006E30B8);
        v14 = v113;
        v9 = v114;
        v12 = v110;
        if ((v108 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      v47 = v0[34];
      v48 = v0[35];
      sub_10001036C(v0[40], &qword_1006E30B8);
      sub_10001036C(v44, &qword_1006E30B8);
      (*(v48 + 8))(v46, v47);
      v12 = v110;
      v14 = v113;
    }

    sub_10001036C(v0[38], &qword_1006E30B0);
    v9 = v114;
    goto LABEL_17;
  }

  v34 = v0[49];
  v35 = v0[50];
  v36 = v0[48];
  if (v4 == enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    v38 = v0[22];
    v37 = v0[23];
    v39 = v0[21];
    (*(v34 + 96))(v0[50], v0[48]);
    (*(v38 + 32))(v37, v35, v39);
    v9 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v11 = v40;
    v15 = sub_100571198();
    v17 = v41;
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v9 = sub_100571168();
    v50 = v49;
    v15 = sub_100571198();
    v17 = v51;
    (*(v34 + 8))(v35, v36);
    v11 = v50;
  }

  v12 = 0;
  v14 = 0;
LABEL_19:
  v0[53] = v15;
  v0[54] = v17;
  v0[2] = v9;
  v0[3] = v11;
  v0[51] = v12;
  v0[52] = v14;
  v64 = v0[20];
  v65 = v0[17];
  v0[4] = sub_100571178();
  v0[5] = v66;
  sub_10007F894(v64);
  sub_100571188();
  v67 = sub_100571E58();
  v0[55] = v67;
  v68 = *(v67 - 8);
  v0[56] = v68;
  if ((*(v68 + 48))(v65, 1, v67) == 1)
  {
    sub_10001036C(v0[17], &unk_1006DFD20);
    v0[59] = 0;
    v69 = v0[15];
    v70 = v0[13];
    v71 = v0[14];
    v72 = v0[12];
    sub_100081080(v0[16]);
    sub_100571148();
    v0[6] = sub_10056D578();
    v0[7] = v73;
    (*(v71 + 8))(v69, v70);
    sub_100571138();
    v74 = sub_100009DCC(&qword_1006E30C0);
    if ((*(*(v74 - 8) + 48))(v72, 1, v74) == 1)
    {
      sub_10001036C(v0[12], &qword_1006E30A8);
      v75 = v0[6];
      v76 = v0[7];
      v77 = v0[4];
      v78 = v0[5];
      v79 = v0[2];
      v80 = v0[3];
      v0[63] = _swiftEmptyArrayStorage;
      v0[64] = v76;
      v0[65] = v75;
      v0[66] = v78;
      v0[67] = v77;
      v0[68] = v80;
      v0[69] = v79;
      v0[70] = sub_100080088();
      v81 = swift_task_alloc();
      v0[71] = v81;
      *v81 = v0;
      v81[1] = sub_10007F334;

      return sub_10008066C();
    }

    else
    {
      v84 = sub_1000745E4(3, &qword_1006E30C0, &unk_10057FB40, &qword_1006E30F0);
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v0[60] = v84;
      v91 = swift_task_alloc();
      v0[61] = v91;
      *v91 = v0;
      v91[1] = sub_10007F12C;

      return sub_10006DEB8(&unk_10057FB50, 0, v84, v86, v88, v90);
    }
  }

  else
  {
    v83 = swift_task_alloc();
    v0[57] = v83;
    *v83 = v0;
    v83[1] = sub_10007ED4C;

    return sub_10003E58C(50.0);
  }
}

uint64_t sub_10007ED4C(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 136);
  *(*v1 + 464) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10007EEAC, 0, 0);
}

uint64_t sub_10007EEAC()
{
  v0[59] = v0[58];
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  sub_100081080(v0[16]);
  sub_100571148();
  v0[6] = sub_10056D578();
  v0[7] = v5;
  (*(v3 + 8))(v1, v2);
  sub_100571138();
  v6 = sub_100009DCC(&qword_1006E30C0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_10001036C(v0[12], &qword_1006E30A8);
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    v0[63] = _swiftEmptyArrayStorage;
    v0[64] = v8;
    v0[65] = v7;
    v0[66] = v10;
    v0[67] = v9;
    v0[68] = v12;
    v0[69] = v11;
    v0[70] = sub_100080088();
    v13 = swift_task_alloc();
    v0[71] = v13;
    *v13 = v0;
    v13[1] = sub_10007F334;

    return sub_10008066C();
  }

  else
  {
    v15 = sub_1000745E4(3, &qword_1006E30C0, &unk_10057FB40, &qword_1006E30F0);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v0[60] = v15;
    v22 = swift_task_alloc();
    v0[61] = v22;
    *v22 = v0;
    v22[1] = sub_10007F12C;

    return sub_10006DEB8(&unk_10057FB50, 0, v15, v17, v19, v21);
  }
}

uint64_t sub_10007F12C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 496) = a1;

    return _swift_task_switch(sub_10007F270, 0, 0);
  }
}

uint64_t sub_10007F270()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v0[63] = v0[62];
  v0[64] = v2;
  v0[65] = v1;
  v0[66] = v4;
  v0[67] = v3;
  v0[68] = v6;
  v0[69] = v5;
  v0[70] = sub_100080088();
  v7 = swift_task_alloc();
  v0[71] = v7;
  *v7 = v0;
  v7[1] = sub_10007F334;

  return sub_10008066C();
}

uint64_t sub_10007F334(char a1)
{
  *(*v1 + 576) = a1;

  return _swift_task_switch(sub_10007F434, 0, 0);
}

uint64_t sub_10007F434()
{
  v36 = *(v0 + 576);
  v35 = *(v0 + 560);
  v29 = *(v0 + 544);
  v30 = *(v0 + 552);
  v24 = *(v0 + 528);
  v25 = *(v0 + 536);
  v31 = *(v0 + 512);
  v32 = *(v0 + 520);
  v22 = *(v0 + 424);
  v23 = *(v0 + 432);
  v27 = *(v0 + 408);
  v28 = *(v0 + 416);
  v39 = *(v0 + 504);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v40 = *(v0 + 472);
  v1 = *(v0 + 240);
  v21 = *(v0 + 80);
  v26 = *(v0 + 224);
  v2 = *(v0 + 216);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 64);
  v33 = *(v0 + 72);
  v8 = *(*(v0 + 248) + 56);
  v8();
  (v8)(v2, 1, 1, v1);
  v9 = type metadata accessor for WidgetMusicItem();
  v34 = v9[25];
  *(v7 + v34) = 0;
  *(v7 + v9[26]) = _swiftEmptyArrayStorage;
  *v7 = v21;
  *(v7 + 16) = v25;
  *(v7 + 24) = v24;
  *(v7 + 32) = v22;
  *(v7 + 40) = v23;
  (*(v4 + 16))(v7 + v9[7], v3, v5);
  sub_100081FB4(v6, v7 + v9[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v7 + v9[24]) = 0x3FF0000000000000;
  *(v7 + v9[8]) = 8;
  v10 = (v7 + v9[9]);
  *v10 = v30;
  v10[1] = v29;
  v11 = (v7 + v9[10]);
  *v11 = v27;
  v11[1] = v28;
  v12 = (v7 + v9[11]);
  *v12 = v32;
  v12[1] = v31;
  v13 = (v7 + v9[12]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + v9[13]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + v9[14]);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + v9[15]) = v35;
  *(v7 + v9[16]) = v36;
  sub_10000CC8C(v26, v7 + v9[17], &unk_1006E1E90);
  sub_10000CC8C(v2, v7 + v9[18], &unk_1006E1E90);
  v16 = (v7 + v9[19]);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + v9[20]) = _swiftEmptyArrayStorage;
  v17 = v7 + v9[21];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 1;
  v18 = v7 + v9[22];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 1;
  sub_1000396D8(v39);
  (*(v37 + 8))(v33, v38);
  sub_10001036C(v2, &unk_1006E1E90);
  sub_10001036C(v26, &unk_1006E1E90);
  sub_10008201C(v6, type metadata accessor for ArtworkImage.Placeholder);
  (*(v4 + 8))(v3, v5);
  *(v7 + v34) = v40;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10007F894@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_100571F08();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005722D8();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(qword_1006E1D50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v48 = &v47 - v11;
  v12 = __chkstk_darwin(v10);
  v49 = &v47 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v18 = &v47 - v17;
  v19 = sub_100571B78();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1005711A8();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26, v56, v23);
  v27 = (*(v24 + 88))(v26, v23);
  if (v27 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    (*(v24 + 96))(v26, v23);
    (*(v20 + 32))(v22, v26, v19);
    sub_100571B38();
    v28 = sub_10056C8A8();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (v30(v18, 1, v28) == 1)
    {
      v31 = sub_100571B28();
      sub_1000B3260(v31, v32, v55);

      (*(v20 + 8))(v22, v19);
      result = v30(v18, 1, v28);
      if (result != 1)
      {
        return sub_10001036C(v18, qword_1006E1D50);
      }
    }

    else
    {
      (*(v20 + 8))(v22, v19);
      return (*(v29 + 32))(v55, v18, v28);
    }

    return result;
  }

  if (v27 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    (*(v24 + 96))(v26, v23);
    v35 = v53;
    v34 = v54;
    (*(v53 + 32))(v5, v26, v54);
    sub_1005721B8();
    v36 = sub_10056C8A8();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    if (v38(v16, 1, v36) == 1)
    {
      v39 = sub_1005721A8();
      sub_1000B30D8(v39, v40, v55);

      (*(v35 + 8))(v5, v34);
      goto LABEL_13;
    }

    (*(v35 + 8))(v5, v34);
    return (*(v37 + 32))(v55, v16, v36);
  }

  if (v27 != enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    sub_10056C868();
    v45 = sub_10056C8A8();
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v9, 1, v45);
    if (result != 1)
    {
      (*(v46 + 32))(v55, v9, v45);
      return (*(v24 + 8))(v26, v23);
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v24 + 96))(v26, v23);
  v42 = v50;
  v41 = v51;
  v43 = v52;
  (*(v51 + 32))(v50, v26, v52);
  v16 = v49;
  sub_100571ED8();
  v36 = sub_10056C8A8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v16, 1, v36) != 1)
  {
    (*(v41 + 8))(v42, v43);
    return (*(v37 + 32))(v55, v16, v36);
  }

  v44 = v48;
  sub_10056C868();
  result = (v38)(v44, 1, v36);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v41 + 8))(v42, v43);
  (*(v37 + 32))(v55, v44, v36);
LABEL_13:
  result = (v38)(v16, 1, v36);
  if (result != 1)
  {
    return sub_10001036C(v16, qword_1006E1D50);
  }

  return result;
}

void *sub_100080088()
{
  v1 = v0;
  v2 = sub_100571F08();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005722D8();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006DFD38);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100009DCC(&qword_1006DFD40);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_100571B78();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005711A8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    (*(v18 + 96))(v20, v17);
    (*(v14 + 32))(v16, v20, v13);
    sub_100009DCC(&qword_1006DFD48);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B500;
    sub_100571B08();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    sub_100571A88();
    v23 = sub_10056D558();
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
    *(v22 + 33) = TextBadge.init(for:)(v9);
    (*(v14 + 8))(v16, v13);
  }

  else if (v21 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    (*(v18 + 96))(v20, v17);
    v25 = v35;
    v24 = v36;
    (*(v35 + 32))(v6, v20, v36);
    sub_100009DCC(&qword_1006DFD48);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B500;
    sub_100572068();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    sub_100572078();
    v26 = sub_10056D558();
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
    *(v22 + 33) = TextBadge.init(for:)(v9);
    (*(v25 + 8))(v6, v24);
  }

  else if (v21 == enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    (*(v18 + 96))(v20, v17);
    v27 = v32;
    v28 = v33;
    v29 = v34;
    (*(v33 + 32))(v32, v20, v34);
    sub_100009DCC(&qword_1006DFD48);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B510;
    sub_100571EB8();
    *(v22 + 32) = TextBadge.init(for:isPlayable:)(v12, 1);
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    (*(v18 + 8))(v20, v17);
    return _swiftEmptyArrayStorage;
  }

  return v22;
}

uint64_t sub_10008066C()
{
  v1[8] = v0;
  v2 = sub_100571F08();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1005722D8();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_100571B78();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_1005711A8();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100080840, 0, 0);
}

uint64_t sub_100080840()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[8], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[15];
    v8 = v0[16];
    (*(v0[19] + 96))(v5, v0[18]);
    (*(v8 + 32))(v6, v5, v7);
    v24 = sub_100075004;
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_100080B54;
LABEL_7:

    return v24();
  }

  if (v4 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    v10 = v0[20];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    (*(v0[19] + 96))(v10, v0[18]);
    (*(v12 + 32))(v11, v10, v13);
    v24 = sub_100074DBC;
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_100080D0C;
    goto LABEL_7;
  }

  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[18];
  if (v4 == enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    (*(v15 + 96))(v0[20], v17);
    (*(v19 + 32))(v18, v16, v20);
    v24 = sub_100074B74;
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_100080EC4;
    goto LABEL_7;
  }

  (*(v15 + 8))(v0[20], v17);

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_100080B54(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return _swift_task_switch(sub_100080C58, 0, 0);
}

uint64_t sub_100080C58()
{
  v1 = *(v0 + 24);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100080D0C(char a1)
{
  v2 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_100080E10, 0, 0);
}

uint64_t sub_100080E10()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100080EC4(char a1)
{
  v2 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 48) = v1;

  return _swift_task_switch(sub_100080FC8, 0, 0);
}

uint64_t sub_100080FC8()
{
  v1 = *(v0 + 56);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100081080@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005711A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    v13 = sub_100009DCC(&qword_1006DFD30);
    (*(*(v13 - 8) + 56))(a1, 1, 11, v13);
    return (*(v9 + 8))(v11, v8);
  }

  else if (v12 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    sub_100572148();
    (*(v5 + 8))(v7, v4);
    v15 = sub_100009DCC(&qword_1006DFD30);
    return (*(*(v15 - 8) + 56))(a1, 0, 11, v15);
  }

  else
  {
    v16 = enum case for MusicPersonalRecommendation.Item.station(_:);
    v17 = v12;
    v18 = sub_100009DCC(&qword_1006DFD30);
    if (v17 == v16)
    {
      v19 = 9;
    }

    else
    {
      v19 = 1;
    }

    (*(*(v18 - 8) + 56))(a1, v19, 11, v18);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000813B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100009DCC(&unk_1006DFD20);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100081450, 0, 0);
}

uint64_t sub_100081450()
{
  v1 = *(v0 + 32);
  sub_10056D9D8();
  v2 = sub_100571E58();
  *(v0 + 40) = v2;
  v3 = *(v2 - 8);
  *(v0 + 48) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 32), &unk_1006DFD20);
    **(v0 + 16) = 0;

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_1000815A8;

    return sub_10003E58C(18.0);
  }
}

uint64_t sub_1000815A8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100081708, 0, 0);
}

uint64_t sub_100081708()
{
  **(v0 + 16) = *(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081778()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E2E68);
  sub_10000C49C(v0, qword_1006E2E68);
  return static Logger.music(_:)();
}

uint64_t sub_1000817DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100081828(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1000818B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10008190C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10008190C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000819D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_1000819D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100081AE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100573F98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100081AE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100081B30(a1, a2);
  sub_100081C60(&off_100680018);
  return v3;
}

void *sub_100081B30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100081D4C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100573F98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100081D4C(v10, 0);
        result = sub_100573EC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100081C60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100081DC0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100081D4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006E3048);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100081DC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E3048);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100081EB4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100081EC4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100081F38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100081FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008201C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008207C()
{
  v1 = *(sub_100009DCC(&qword_1006E0790) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v17 = *(*(v4 - 8) + 64);
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + v2;
  v11 = type metadata accessor for WidgetMusicRecommendation(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_10056CAA8();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  v13 = v0 + v6;
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  v14 = *(v4 + 24);
  v15 = sub_10056DF88();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  (*(v8 + 8))(v0 + ((((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_10008237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008240C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008246C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000824C0()
{
  v1 = sub_1005711D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100082548(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1005711D8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CB98;

  return sub_10007D4EC(a1, a2, v2 + v7);
}

uint64_t sub_10008262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[18] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v8[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080);
  v8[20] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E3088);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_100571C48();
  v8[24] = v10;
  v11 = *(v10 - 8);
  v8[25] = v11;
  v8[26] = *(v11 + 64);
  v8[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E3188);
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3190);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000828FC, 0, 0);
}

uint64_t sub_1000828FC()
{
  v2 = *(v1 + 248);
  v44 = *(v1 + 240);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112) >> 1;
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v43 = *(v1 + 200);
  swift_unknownObjectRetain();
  v39 = v4;
  v40 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 104))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v1 + 256);
      v8 = *(v1 + 192);
      v9 = *(v1 + 96) + *(v43 + 72) * v3;
      v10 = *(v44 + 48);
      *v7 = v40;
      (*(v43 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v40, 1);
      v0 = ++v40;
      if (v11)
      {
        goto LABEL_23;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 256), *(v1 + 264), &qword_1006E3188);
      v5 = 0;
    }

    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 240);
    (*v42)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E3190);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v50 = v6;
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);
    v46 = v16;
    v49 = *(v1 + 224);
    v17 = *(v1 + 216);
    v18 = *(v1 + 192);
    v45 = v18;
    v19 = *(v1 + 128);
    v48 = *(v1 + 120);
    v47 = *v15;
    v20 = *(v44 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v43 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v47;
    v25[5] = v48;
    v25[6] = v19;
    v23(v25 + v24, v17, v45);
    v26 = v21;
    sub_10000CC8C(v46, v49, &qword_1006DFD60);
    LODWORD(v21) = (*(v22 + 48))(v49, 1, v21);

    v27 = *(v1 + 224);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 224), &qword_1006DFD60);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v50;
    v31 = **(v1 + 80);

    sub_100009DCC(&qword_1006E3078);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 232);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60);
    v4 = v39;
  }

  v33 = *(v1 + 136);
  swift_unknownObjectRelease();
  *(v1 + 280) = sub_100009DCC(&qword_1006E3078);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_24:
  v0 = sub_10008890C(v0);
LABEL_19:
  **(v1 + 136) = v0;
  v35 = swift_task_alloc();
  *(v1 + 288) = v35;
  *v35 = v1;
  v35[1] = sub_100082E4C;
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, 0, 0, v37, v1 + 72);
}

uint64_t sub_100082E4C()
{

  if (v0)
  {
    v1 = sub_10008B9C8;
  }

  else
  {
    v1 = sub_100082F5C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100082F5C()
{
  v1 = v0[35];
  v2 = v0[20];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[17];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[19], v9 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v7, &qword_1006E0618);
          v15 = swift_task_alloc();
          v0[36] = v15;
          *v15 = v0;
          v15[1] = sub_100082E4C;
          isUniquelyReferenced_nonNull_native = v0[20];
          v13 = v0[21];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100083208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v7 = sub_100009DCC(&qword_1006E31C0);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_100083320, 0, 0);
}

uint64_t sub_100083320()
{
  v1 = v0[13];
  v36 = *(v1 + 16);
  if (v36)
  {
    v31 = v0 + 2;
    v34 = v1 + 32;
    v35 = *v0[12];
    v2 = sub_100572F48();
    v3 = 0;
    v4 = *(v2 - 8);
    v33 = *(v4 + 56);
    v32 = (v4 + 48);
    v30 = (v4 + 8);
    v5 = &qword_1006DFD60;
    do
    {
      v8 = v0[20];
      v7 = v0[21];
      v10 = v0[14];
      v9 = v0[15];
      v11 = v0;
      v12 = v5;
      v13 = *(v34 + v3);
      v33(v7, 1, 1, v2);
      v14 = swift_allocObject();
      v15 = v3;
      *(v14 + 16) = 0;
      v16 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v15;
      v37 = v15;
      *(v14 + 40) = v10;
      *(v14 + 48) = v9;
      *(v14 + 56) = v13;
      v5 = v12;
      v0 = v11;
      sub_10000CC8C(v7, v8, v5);
      LODWORD(v8) = (*v32)(v8, 1, v2);

      v17 = v11[20];
      if (v8 == 1)
      {
        sub_10001036C(v11[20], v5);
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100572F38();
        (*v30)(v17, v2);
        if (*v16)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_100572E78();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:

      sub_100009DCC(&qword_1006E31B0);
      v21 = (v19 | v18);
      if (v19 | v18)
      {
        v21 = v31;
        *v31 = 0;
        v31[1] = 0;
        v11[4] = v18;
        v11[5] = v19;
      }

      v3 = v37 + 1;
      v6 = v11[21];
      v11[6] = 1;
      v11[7] = v21;
      v11[8] = v35;
      swift_task_create();

      sub_10001036C(v6, v5);
    }

    while (v36 != v37 + 1);
  }

  v22 = v0[16];
  sub_100009DCC(&qword_1006E31B0);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v23 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100088920(v23);
  }

  v25 = v0[16];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v23;
  if ((v26 & 1) == 0)
  {
    v23 = sub_100088920(v23);
  }

  *v0[16] = v23;
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_100083704;
  v28 = v0[17];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 9, 0, 0, v28, v0 + 11);
}

uint64_t sub_100083704()
{

  if (v0)
  {
    v1 = sub_100083994;
  }

  else
  {
    v1 = sub_100083814;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100083814()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 72);
    v5 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = *(v0 + 128);
      isUniquelyReferenced_nonNull_native = sub_100088920(v5);
      v5 = isUniquelyReferenced_nonNull_native;
      *v12 = isUniquelyReferenced_nonNull_native;
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v4 < *(v5 + 16))
        {
          *(v5 + v4 + 32) = 0;
          v11 = swift_task_alloc();
          *(v0 + 176) = v11;
          *v11 = v0;
          v11[1] = sub_100083704;
          v9 = *(v0 + 136);
          isUniquelyReferenced_nonNull_native = v0 + 72;
          v10 = v0 + 88;
          v7 = 0;
          v8 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100083994()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100083A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[18] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v8[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080);
  v8[20] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E3088);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_1005711A8();
  v8[24] = v10;
  v11 = *(v10 - 8);
  v8[25] = v11;
  v8[26] = *(v11 + 64);
  v8[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E3090);
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3098);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_100083D00, 0, 0);
}

uint64_t sub_100083D00()
{
  v2 = *(v1 + 248);
  v44 = *(v1 + 240);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112) >> 1;
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v43 = *(v1 + 200);
  swift_unknownObjectRetain();
  v39 = v4;
  v40 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 104))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v1 + 256);
      v8 = *(v1 + 192);
      v9 = *(v1 + 96) + *(v43 + 72) * v3;
      v10 = *(v44 + 48);
      *v7 = v40;
      (*(v43 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v40, 1);
      v0 = ++v40;
      if (v11)
      {
        goto LABEL_23;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 256), *(v1 + 264), &qword_1006E3090);
      v5 = 0;
    }

    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 240);
    (*v42)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E3098);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v50 = v6;
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);
    v46 = v16;
    v49 = *(v1 + 224);
    v17 = *(v1 + 216);
    v18 = *(v1 + 192);
    v45 = v18;
    v19 = *(v1 + 128);
    v48 = *(v1 + 120);
    v47 = *v15;
    v20 = *(v44 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v43 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v47;
    v25[5] = v48;
    v25[6] = v19;
    v23(v25 + v24, v17, v45);
    v26 = v21;
    sub_10000CC8C(v46, v49, &qword_1006DFD60);
    LODWORD(v21) = (*(v22 + 48))(v49, 1, v21);

    v27 = *(v1 + 224);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 224), &qword_1006DFD60);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v50;
    v31 = **(v1 + 80);

    sub_100009DCC(&qword_1006E3078);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 232);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60);
    v4 = v39;
  }

  v33 = *(v1 + 136);
  swift_unknownObjectRelease();
  *(v1 + 280) = sub_100009DCC(&qword_1006E3078);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_24:
  v0 = sub_10008890C(v0);
LABEL_19:
  **(v1 + 136) = v0;
  v35 = swift_task_alloc();
  *(v1 + 288) = v35;
  *v35 = v1;
  v35[1] = sub_100084250;
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, 0, 0, v37, v1 + 72);
}

uint64_t sub_100084250()
{

  if (v0)
  {
    v1 = sub_10008460C;
  }

  else
  {
    v1 = sub_100084360;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100084360()
{
  v1 = v0[35];
  v2 = v0[20];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[17];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[19], v9 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v7, &qword_1006E0618);
          v15 = swift_task_alloc();
          v0[36] = v15;
          *v15 = v0;
          v15[1] = sub_100084250;
          isUniquelyReferenced_nonNull_native = v0[20];
          v13 = v0[21];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008460C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100084708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[18] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v8[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080);
  v8[20] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E3088);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_100571F08();
  v8[24] = v10;
  v11 = *(v10 - 8);
  v8[25] = v11;
  v8[26] = *(v11 + 64);
  v8[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E3168);
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3170);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000849D8, 0, 0);
}

uint64_t sub_1000849D8()
{
  v2 = *(v1 + 248);
  v44 = *(v1 + 240);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112) >> 1;
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v43 = *(v1 + 200);
  swift_unknownObjectRetain();
  v39 = v4;
  v40 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 104))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v1 + 256);
      v8 = *(v1 + 192);
      v9 = *(v1 + 96) + *(v43 + 72) * v3;
      v10 = *(v44 + 48);
      *v7 = v40;
      (*(v43 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v40, 1);
      v0 = ++v40;
      if (v11)
      {
        goto LABEL_23;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 256), *(v1 + 264), &qword_1006E3168);
      v5 = 0;
    }

    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 240);
    (*v42)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E3170);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v50 = v6;
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);
    v46 = v16;
    v49 = *(v1 + 224);
    v17 = *(v1 + 216);
    v18 = *(v1 + 192);
    v45 = v18;
    v19 = *(v1 + 128);
    v48 = *(v1 + 120);
    v47 = *v15;
    v20 = *(v44 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v43 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v47;
    v25[5] = v48;
    v25[6] = v19;
    v23(v25 + v24, v17, v45);
    v26 = v21;
    sub_10000CC8C(v46, v49, &qword_1006DFD60);
    LODWORD(v21) = (*(v22 + 48))(v49, 1, v21);

    v27 = *(v1 + 224);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 224), &qword_1006DFD60);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v50;
    v31 = **(v1 + 80);

    sub_100009DCC(&qword_1006E3078);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 232);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60);
    v4 = v39;
  }

  v33 = *(v1 + 136);
  swift_unknownObjectRelease();
  *(v1 + 280) = sub_100009DCC(&qword_1006E3078);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_24:
  v0 = sub_10008890C(v0);
LABEL_19:
  **(v1 + 136) = v0;
  v35 = swift_task_alloc();
  *(v1 + 288) = v35;
  *v35 = v1;
  v35[1] = sub_100084F28;
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, 0, 0, v37, v1 + 72);
}

uint64_t sub_100084F28()
{

  if (v0)
  {
    v1 = sub_10008B9C8;
  }

  else
  {
    v1 = sub_100085038;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100085038()
{
  v1 = v0[35];
  v2 = v0[20];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[17];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[19], v9 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v7, &qword_1006E0618);
          v15 = swift_task_alloc();
          v0[36] = v15;
          *v15 = v0;
          v15[1] = sub_100084F28;
          isUniquelyReferenced_nonNull_native = v0[20];
          v13 = v0[21];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000852E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v6[20] = *(sub_100009DCC(&qword_1006E1F80) - 8);
  v6[21] = swift_task_alloc();
  sub_100009DCC(&qword_1006E32F8);
  v6[22] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E3300);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E3308);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_10056D888();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3310);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_100009DCC(&qword_1006E32E0);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3318);
  v6[41] = swift_task_alloc();
  v6[42] = sub_100009DCC(&qword_1006E3320);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_100085690, 0, 0);
}

uint64_t sub_100085690()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v55 = *(v0 + 224);
  (*(v6 + 16))(v4, *(v0 + 128), v5);
  (*(v6 + 32))(v3, v4, v5);
  sub_100010BC0(&qword_1006E3328, &qword_1006E32E0);
  sub_100572B98();
  v46 = *(v1 + 36);
  *(v2 + v46) = 0;
  v47 = (v7 + 16);
  v50 = v7;
  v54 = (v7 + 32);
  v9 = *(sub_100009DCC(&qword_1006E3330) + 36);
  v52 = (v8 + 48);
  v53 = (v8 + 56);
  v51 = 0;
  sub_100010BC0(&qword_1006E32E8, &qword_1006E32E0);
  v48 = v2;
  v49 = v9;
  while (1)
  {
    sub_100573208();
    if (*(v2 + v9) == *(v0 + 104))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 280);
      v13 = *(v0 + 240);
      v14 = *(v0 + 248);
      v15 = sub_1005732E8();
      (*v47)(v12);
      v15(v0 + 16, 0);
      sub_100573218();
      v16 = *(v55 + 48);
      *v13 = v51;
      (*v54)(&v13[v16], v12, v14);
      v17 = (v51 + 1);
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 240);
      ++v51;
      *(v2 + v46) = v17;
      sub_100019B40(v19, v18, &qword_1006E3308);
      v11 = 0;
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 224);
    (*v53)(v20, v11, 1, v22);
    sub_100019B40(v20, v21, &qword_1006E3310);
    if ((*v52)(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);
    v56 = v25;
    v57 = v26;
    v27 = *(v0 + 144);
    v59 = *(v0 + 136);
    v60 = *(v0 + 208);
    v58 = *v23;
    v28 = *(v55 + 48);
    v29 = sub_100572F48();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = *(v50 + 32);
    v31(v24, v23 + v28, v25);
    v32 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v58;
    v33[5] = v59;
    v33[6] = v27;
    v31(v33 + v32, v24, v56);
    sub_10000CC8C(v57, v60, &qword_1006DFD60);
    LODWORD(v28) = (*(v30 + 48))(v60, 1, v29);

    v34 = *(v0 + 208);
    if (v28 == 1)
    {
      sub_10001036C(*(v0 + 208), &qword_1006DFD60);
    }

    else
    {
      sub_100572F38();
      (*(v30 + 8))(v34, v29);
    }

    v9 = v49;
    if (v33[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = sub_100572E78();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v48;
    v38 = **(v0 + 120);

    sub_100009DCC(&qword_1006E32F0);
    v39 = v37 | v35;
    if (v37 | v35)
    {
      v39 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v35;
      *(v0 + 72) = v37;
    }

    v10 = *(v0 + 216);
    *(v0 + 80) = 1;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    swift_task_create();

    sub_10001036C(v10, &qword_1006DFD60);
  }

  v40 = *(v0 + 152);
  sub_10001036C(*(v0 + 344), &qword_1006E3320);
  *(v0 + 352) = sub_100009DCC(&qword_1006E32F0);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v17 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = sub_100088934(v17);
LABEL_17:
  **(v0 + 152) = v17;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_100085D2C;
  v43 = *(v0 + 176);
  v44 = *(v0 + 184);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, 0, 0, v44, v0 + 112);
}

uint64_t sub_100085D2C()
{

  if (v0)
  {
    v1 = sub_100086118;
  }

  else
  {
    v1 = sub_100085E3C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100085E3C()
{
  v1 = v0[44];
  v2 = v0[22];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[21];
    v6 = v0[19];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicPin);
    v8 = type metadata accessor for WidgetMusicPin();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_100088934(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[21], v9 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v7, &qword_1006E1F80);
          v15 = swift_task_alloc();
          v0[45] = v15;
          *v15 = v0;
          v15[1] = sub_100085D2C;
          isUniquelyReferenced_nonNull_native = v0[22];
          v13 = v0[23];
          v14 = v0 + 14;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100086118()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100086248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v6[20] = *(sub_100009DCC(&qword_1006E0618) - 8);
  v6[21] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080);
  v6[22] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E3088);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E3128);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_100570CC8();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3130);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_100009DCC(&qword_1006E2AB0);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3138);
  v6[41] = swift_task_alloc();
  v6[42] = sub_100009DCC(&qword_1006E3140);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_1000865F4, 0, 0);
}

uint64_t sub_1000865F4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v55 = *(v0 + 224);
  (*(v6 + 16))(v4, *(v0 + 128), v5);
  (*(v6 + 32))(v3, v4, v5);
  sub_100010BC0(&qword_1006E3148, &qword_1006E2AB0);
  sub_100572B98();
  v46 = *(v1 + 36);
  *(v2 + v46) = 0;
  v47 = (v7 + 16);
  v50 = v7;
  v54 = (v7 + 32);
  v9 = *(sub_100009DCC(&qword_1006E3150) + 36);
  v52 = (v8 + 48);
  v53 = (v8 + 56);
  v51 = 0;
  sub_100010BC0(&qword_1006E3120, &qword_1006E2AB0);
  v48 = v2;
  v49 = v9;
  while (1)
  {
    sub_100573208();
    if (*(v2 + v9) == *(v0 + 104))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 280);
      v13 = *(v0 + 240);
      v14 = *(v0 + 248);
      v15 = sub_1005732E8();
      (*v47)(v12);
      v15(v0 + 16, 0);
      sub_100573218();
      v16 = *(v55 + 48);
      *v13 = v51;
      (*v54)(&v13[v16], v12, v14);
      v17 = (v51 + 1);
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 240);
      ++v51;
      *(v2 + v46) = v17;
      sub_100019B40(v19, v18, &qword_1006E3128);
      v11 = 0;
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 224);
    (*v53)(v20, v11, 1, v22);
    sub_100019B40(v20, v21, &qword_1006E3130);
    if ((*v52)(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);
    v56 = v25;
    v57 = v26;
    v27 = *(v0 + 144);
    v59 = *(v0 + 136);
    v60 = *(v0 + 208);
    v58 = *v23;
    v28 = *(v55 + 48);
    v29 = sub_100572F48();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = *(v50 + 32);
    v31(v24, v23 + v28, v25);
    v32 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v58;
    v33[5] = v59;
    v33[6] = v27;
    v31(v33 + v32, v24, v56);
    sub_10000CC8C(v57, v60, &qword_1006DFD60);
    LODWORD(v28) = (*(v30 + 48))(v60, 1, v29);

    v34 = *(v0 + 208);
    if (v28 == 1)
    {
      sub_10001036C(*(v0 + 208), &qword_1006DFD60);
    }

    else
    {
      sub_100572F38();
      (*(v30 + 8))(v34, v29);
    }

    v9 = v49;
    if (v33[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = sub_100572E78();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v48;
    v38 = **(v0 + 120);

    sub_100009DCC(&qword_1006E3078);
    v39 = v37 | v35;
    if (v37 | v35)
    {
      v39 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v35;
      *(v0 + 72) = v37;
    }

    v10 = *(v0 + 216);
    *(v0 + 80) = 1;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    swift_task_create();

    sub_10001036C(v10, &qword_1006DFD60);
  }

  v40 = *(v0 + 152);
  sub_10001036C(*(v0 + 344), &qword_1006E3140);
  *(v0 + 352) = sub_100009DCC(&qword_1006E3078);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v17 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = sub_10008890C(v17);
LABEL_17:
  **(v0 + 152) = v17;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_100086C90;
  v43 = *(v0 + 176);
  v44 = *(v0 + 184);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, 0, 0, v44, v0 + 112);
}

uint64_t sub_100086C90()
{

  if (v0)
  {
    v1 = sub_10008B9C4;
  }

  else
  {
    v1 = sub_100086DA0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100086DA0()
{
  v1 = v0[44];
  v2 = v0[22];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[21];
    v6 = v0[19];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[21], v9 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v7, &qword_1006E0618);
          v15 = swift_task_alloc();
          v0[45] = v15;
          *v15 = v0;
          v15[1] = sub_100086C90;
          isUniquelyReferenced_nonNull_native = v0[22];
          v13 = v0[23];
          v14 = v0 + 14;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *(sub_100009DCC(&qword_1006E1F50) - 8);
  v6[16] = swift_task_alloc();
  sub_100009DCC(&qword_1006E31E8);
  v6[17] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E31F0);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_100087230, 0, 0);
}

uint64_t sub_100087230()
{
  v1 = v0[11];
  v35 = *(v1 + 16);
  if (v35)
  {
    v30 = v0 + 2;
    v33 = v1 + 32;
    v34 = *v0[10];
    v2 = sub_100572F48();
    v3 = 0;
    v4 = *(v2 - 8);
    v32 = *(v4 + 56);
    v31 = (v4 + 48);
    v29 = (v4 + 8);
    v5 = &qword_1006DFD60;
    do
    {
      v8 = v0[21];
      v7 = v0[22];
      v10 = v0[12];
      v9 = v0[13];
      v11 = v0;
      v12 = v5;
      v13 = *(v33 + v3);
      v32(v7, 1, 1, v2);
      v14 = swift_allocObject();
      v15 = v3;
      *(v14 + 16) = 0;
      v16 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v15;
      v36 = v15;
      *(v14 + 40) = v10;
      *(v14 + 48) = v9;
      *(v14 + 56) = v13;
      v5 = v12;
      v0 = v11;
      sub_10000CC8C(v7, v8, v5);
      LODWORD(v8) = (*v31)(v8, 1, v2);

      v17 = v11[21];
      if (v8 == 1)
      {
        sub_10001036C(v11[21], v5);
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100572F38();
        (*v29)(v17, v2);
        if (*v16)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_100572E78();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:

      sub_100009DCC(&qword_1006E31E0);
      v21 = (v19 | v18);
      if (v19 | v18)
      {
        v21 = v30;
        *v30 = 0;
        v30[1] = 0;
        v11[4] = v18;
        v11[5] = v19;
      }

      v3 = v36 + 1;
      v6 = v11[22];
      v11[6] = 1;
      v11[7] = v21;
      v11[8] = v34;
      swift_task_create();

      sub_10001036C(v6, v5);
    }

    while (v35 != v36 + 1);
  }

  v22 = v0[14];
  v0[23] = sub_100009DCC(&qword_1006E31E0);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v23 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100088948(v23);
  }

  *v0[14] = v23;
  v25 = swift_task_alloc();
  v0[24] = v25;
  *v25 = v0;
  v25[1] = sub_1000875F0;
  v26 = v0[17];
  v27 = v0[18];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v26, 0, 0, v27, v0 + 9);
}

uint64_t sub_1000875F0()
{

  if (v0)
  {
    v1 = sub_100087970;
  }

  else
  {
    v1 = sub_100087700;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100087700()
{
  v1 = v0[23];
  v2 = v0[17];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = *v2;
    sub_100019B40(v2 + *(v1 + 48), v5, &qword_1006E1F40);
    v8 = sub_100009DCC(&qword_1006E1F40);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[14];
      isUniquelyReferenced_nonNull_native = sub_100088948(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[16], v9 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v7, &qword_1006E1F50);
          v15 = swift_task_alloc();
          v0[24] = v15;
          *v15 = v0;
          v15[1] = sub_1000875F0;
          isUniquelyReferenced_nonNull_native = v0[17];
          v13 = v0[18];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100087970()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100087A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v15;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a2;
  v8[13] = a3;
  v9 = sub_100009DCC(&qword_1006E30D8);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = sub_10056D9E8();
  v8[23] = v10;
  v11 = *(v10 - 8);
  v8[24] = v11;
  v8[25] = *(v11 + 64);
  v8[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E30E0);
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();
  sub_100009DCC(&qword_1006E30E8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return _swift_task_switch(sub_100087C5C, 0, 0);
}

uint64_t sub_100087C5C()
{
  v2 = *(v1 + 240);
  v45 = *(v1 + 232);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128) >> 1;
  v42 = (v2 + 48);
  v43 = (v2 + 56);
  v44 = *(v1 + 192);
  swift_unknownObjectRetain();
  v40 = v4;
  v41 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 120))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 = *(v1 + 248);
      v8 = *(v1 + 184);
      v9 = *(v1 + 112) + *(v44 + 72) * v3;
      v10 = *(v45 + 48);
      *v7 = v41;
      (*(v44 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v41, 1);
      v0 = ++v41;
      if (v11)
      {
        goto LABEL_25;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 248), *(v1 + 256), &qword_1006E30E0);
      v5 = 0;
    }

    v13 = *(v1 + 256);
    v12 = *(v1 + 264);
    v14 = *(v1 + 232);
    (*v43)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E30E8);
    if ((*v42)(v12, 1, v14) == 1)
    {
      break;
    }

    v51 = v6;
    v15 = *(v1 + 264);
    v16 = *(v1 + 224);
    v47 = v16;
    v50 = *(v1 + 216);
    v17 = *(v1 + 208);
    v18 = *(v1 + 184);
    v46 = v18;
    v19 = *(v1 + 144);
    v49 = *(v1 + 136);
    v48 = *v15;
    v20 = *(v45 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v44 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v44 + 80) + 56) & ~*(v44 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v48;
    v25[5] = v49;
    v25[6] = v19;
    v23(v25 + v24, v17, v46);
    v26 = v21;
    sub_10000CC8C(v47, v50, &qword_1006DFD60);
    LODWORD(v21) = (*(v22 + 48))(v50, 1, v21);

    v27 = *(v1 + 216);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 216), &qword_1006DFD60);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v51;
    v31 = **(v1 + 96);

    sub_100009DCC(&qword_1006E30D0);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 224);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60);
    v4 = v40;
  }

  v33 = *(v1 + 152);
  swift_unknownObjectRelease();
  sub_100009DCC(&qword_1006E30D0);
  sub_100009DCC(&qword_1006E1C08);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_26:
  v0 = sub_10008895C(v0);
LABEL_19:
  v35 = *(v1 + 152);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v0;
  if ((v36 & 1) == 0)
  {
    v0 = sub_10008895C(v0);
  }

  **(v1 + 152) = v0;
  v37 = swift_task_alloc();
  *(v1 + 272) = v37;
  *v37 = v1;
  v37[1] = sub_1000881D0;
  v38 = *(v1 + 160);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v1 + 72, 0, 0, v38, v1 + 88);
}

uint64_t sub_1000881D0()
{

  if (v0)
  {
    v1 = sub_1000884B0;
  }

  else
  {
    v1 = sub_1000882E0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000882E0()
{
  v1 = v0[10];
  if (v1 != 1)
  {
    v4 = v0[19];
    v5 = v0[9];
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_10008895C(v6);
      v6 = isUniquelyReferenced_nonNull_native;
      *v15 = isUniquelyReferenced_nonNull_native;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v5 < v6[2])
        {
          v12 = &v6[v5];
          v13 = v12[4];
          v12[4] = v1;
          sub_100019990(v13);
          v14 = swift_task_alloc();
          v0[34] = v14;
          *v14 = v0;
          v14[1] = sub_1000881D0;
          v10 = v0[20];
          isUniquelyReferenced_nonNull_native = (v0 + 9);
          v11 = v0 + 11;
          v8 = 0;
          v9 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000884B0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100088588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1000885B0, 0, 0);
}

uint64_t sub_1000885B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100009DCC(&qword_1006E3078) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10008B99C;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1000886D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1000886F8, 0, 0);
}

uint64_t sub_1000886F8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100009DCC(&qword_1006E32F0) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100088818;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100088818()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100088970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x10008262CLL);
}

uint64_t sub_100088A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000116F0;

  return sub_100083208(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_100088B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, _BYTE *a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  *(v7 + 48) = *a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v7 + 32) = v8;
  *v8 = v7;
  v8[1] = sub_100088C60;

  return v10();
}

uint64_t sub_100088C60()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100088D94;
  }

  else
  {
    v2 = sub_100088D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100088DAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x100083A30);
}

void sub_100088EB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_100088DAC();
}

uint64_t sub_100088FA8(uint64_t a1)
{
  v4 = *(sub_1005711A8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_1000890C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x100084708);
}

uint64_t sub_1000891D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10000CB98;

  return sub_10008707C(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1000892B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  *(v7 + 64) = *a7;
  return _swift_task_switch(sub_1000892E4, 0, 0);
}

uint64_t sub_1000892E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100009DCC(&qword_1006E31E0) + 48);
  *v3 = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100089408;

  return (v7)(v3 + v4, v0 + 8);
}

uint64_t sub_100089408()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100089534;
  }

  else
  {
    v2 = sub_10008951C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10008954C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x100087A28);
}

uint64_t sub_100089654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a1;
  v7[4] = a4;
  v11 = (a5 + *a5);
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_100089758;

  return (v11)(v7 + 2, a7);
}

uint64_t sub_100089758()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100089890;
  }

  else
  {
    v2 = sub_10008986C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008986C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  *v1 = *(v0 + 32);
  v1[1] = v2;
  return (*(v0 + 8))();
}

void *sub_1000898A8(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100009DCC(&qword_1006E1EF8);
    v4 = sub_100572D98();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        sub_10003E57C(v3);
        *v7++ = v3;
        --v6;
      }

      while (v6);
    }

    sub_10003E57C(v3);
    return v5;
  }

  return result;
}

void sub_100089944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_10008954C();
}

uint64_t sub_100089A38(uint64_t a1)
{
  v4 = *(sub_10056D9E8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100089654(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100089B74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_100086248(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100089C68(uint64_t a1)
{
  v4 = *(sub_100570CC8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_100089DD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_1000890C8();
}

uint64_t sub_100089ECC(uint64_t a1)
{
  v4 = *(sub_100571F08() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_100089FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_100088970();
}

uint64_t sub_10008A0E0(uint64_t a1)
{
  v4 = *(sub_100571C48() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008A200()
{
  v1 = *(sub_100009DCC(&qword_1006DFCE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v17 = *(*(v4 - 8) + 64);
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + v2;
  v11 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_10056CAA8();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  v13 = v0 + v6;
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  v14 = *(v4 + 24);
  v15 = sub_10056DF88();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  (*(v8 + 8))(v0 + ((((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_10008A538(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_100088A78(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008A618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_100088B60(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t sub_10008A720(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100009DCC(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for WidgetDiskCache();
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v21 = *(*(v8 - 8) + 64);
  v11 = sub_10056C8A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v3 + v6;
  v15 = a3(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = sub_10056CAA8();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  v17 = v3 + v10;
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v18 = *(v8 + 24);
  v19 = sub_10056DF88();
  (*(*(v19 - 8) + 8))(v17 + v18, v19);

  (*(v12 + 8))(v3 + ((((v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13), v11);

  return swift_deallocObject();
}

uint64_t sub_10008AA30(uint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_100009DCC(a1) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for WidgetDiskCache() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_10056C8A8() - 8);
  v11 = *(v3 + v9);
  v12 = *(v3 + v9 + 8);
  v13 = v3 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80));

  return a3(v3 + v5, v3 + v8, v11, v12, v13);
}

unint64_t sub_10008AB7C()
{
  result = qword_1006E31D8;
  if (!qword_1006E31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E31D8);
  }

  return result;
}

uint64_t sub_10008ABD0(uint64_t a1, uint64_t a2)
{
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetMusicRecommendation(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_100574498();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_100574498();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_20:
  v21 = v4[7];
  v22 = *(a2 + v21);
  if (*(a1 + v21) == 6)
  {
    if (v22 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v22 == 6)
    {
      return 0;
    }

    v23 = v4;
    v24 = sub_1000386DC(*(a1 + v21), v22);
    v4 = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v4[8];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);

  return sub_10006B354(v26, v27);
}

uint64_t sub_10008AD24(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100680250;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008AD70(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_1000891D0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008AE4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008AE8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1000892B8(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t sub_10008AF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008B050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_10008B108()
{
  sub_10056CAA8();
  if (v0 <= 0x3F)
  {
    sub_100016918(319, &qword_1006DFE60);
    if (v1 <= 0x3F)
    {
      sub_100016918(319, &unk_1006E3260);
      if (v2 <= 0x3F)
      {
        sub_100010A58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10008B1DC()
{
  result = qword_1006E32A8;
  if (!qword_1006E32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32A8);
  }

  return result;
}

unint64_t sub_10008B230()
{
  result = qword_1006E32B0;
  if (!qword_1006E32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32B0);
  }

  return result;
}

uint64_t sub_10008B284(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98);
    sub_100082424(a2, type metadata accessor for WidgetMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008B320()
{
  result = qword_1006E32C0;
  if (!qword_1006E32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32C0);
  }

  return result;
}

unint64_t sub_10008B388()
{
  result = qword_1006E32C8;
  if (!qword_1006E32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32C8);
  }

  return result;
}

unint64_t sub_10008B3E0()
{
  result = qword_1006E32D0;
  if (!qword_1006E32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32D0);
  }

  return result;
}

unint64_t sub_10008B438()
{
  result = qword_1006E32D8;
  if (!qword_1006E32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32D8);
  }

  return result;
}

uint64_t sub_10008B48C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10008B640(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_1000852E4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008B71C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100009DCC(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008B79C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_10008B870(uint64_t a1)
{
  v4 = *(sub_10056D888() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_1000886D0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008B9E8(uint64_t a1, int a2)
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

uint64_t sub_10008BA30(uint64_t result, int a2, int a3)
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

__n128 sub_10008BA98@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100009DCC(&qword_1006E3338);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = sub_10056F218();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100009DCC(&qword_1006E3340);
  sub_10008BBF0(a1, a2, &v8[*(v9 + 44)]);
  sub_1005709E8();
  sub_10056EDF8();
  sub_10008C32C(v8, a3);
  v10 = a3 + *(sub_100009DCC(&qword_1006E3348) + 36);
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

uint64_t sub_10008BBF0@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v65 = a3;
  v63 = sub_100009DCC(&qword_1006E1918);
  __chkstk_darwin(v63);
  v64 = &v55 - v5;
  v62 = sub_100009DCC(&qword_1006E0FF0);
  __chkstk_darwin(v62);
  v69 = &v55 - v6;
  v7 = sub_10056FBF8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006E3350);
  v67 = *(v11 - 8);
  v68 = v11;
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = sub_100009DCC(&qword_1006E3358);
  v56 = *(v14 - 8);
  v57 = v14;
  __chkstk_darwin(v14);
  v66 = &v55 - v15;
  v16 = sub_100009DCC(&qword_1006E3360);
  v60 = *(v16 - 8);
  v61 = v16;
  v17 = __chkstk_darwin(v16);
  v59 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v55 - v19;
  v70 = a1;
  v71 = a2;
  sub_10001B550();

  v20 = sub_10056FF28();
  v22 = v21;
  v24 = v23;
  sub_10056FC58();
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  sub_10056FC28();

  (*(v8 + 8))(v10, v7);
  v25 = sub_10056FE88();
  v27 = v26;
  v29 = v28;

  sub_10001B5A4(v20, v22, v24 & 1);

  if (qword_1006DF920 != -1)
  {
    swift_once();
  }

  v30 = sub_10056FE18();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10001B5A4(v25, v27, v29 & 1);

  v70 = v30;
  v71 = v32;
  v72 = v34 & 1;
  v73 = v36;
  sub_10056FF58();
  sub_10001B5A4(v30, v32, v34 & 1);

  v70 = &type metadata for Text;
  v71 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v66;
  v39 = v68;
  sub_10056FFD8();
  (*(v67 + 8))(v13, v39);
  v40 = enum case for DynamicTypeSize.xLarge(_:);
  v41 = sub_10056EBD8();
  v42 = v69;
  (*(*(v41 - 8) + 104))(v69, v40, v41);
  sub_10008C39C();
  if ((sub_1005727E8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v70 = v39;
  v71 = OpaqueTypeConformance2;
  LOBYTE(OpaqueTypeConformance2) = 1;
  swift_getOpaqueTypeConformance2();
  sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0);
  v43 = v57;
  v20 = v58;
  sub_1005700D8();
  sub_10008C3F4(v42);
  (*(v56 + 8))(v38, v43);
  if (qword_1006DF960 != -1)
  {
LABEL_7:
    swift_once();
  }

  v44 = sub_10000C49C(v63, qword_1006FC140);
  v46 = v59;
  v45 = v60;
  v47 = *(v60 + 16);
  v48 = v61;
  v47(v59, v20, v61);
  v49 = v64;
  sub_10008C45C(v44, v64);
  v50 = v65;
  v47(v65, v46, v48);
  v51 = sub_100009DCC(&qword_1006E3368);
  v52 = &v50[*(v51 + 48)];
  *v52 = 0;
  v52[8] = OpaqueTypeConformance2;
  sub_10008C45C(v49, &v50[*(v51 + 64)]);
  v53 = *(v45 + 8);
  v53(v20, v48);
  sub_10008C4CC(v49);
  return (v53)(v46, v48);
}

uint64_t sub_10008C32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E3338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008C39C()
{
  result = qword_1006E1060;
  if (!qword_1006E1060)
  {
    sub_10056EBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1060);
  }

  return result;
}

uint64_t sub_10008C3F4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E0FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C4CC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E1918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008C538()
{
  result = qword_1006E3370;
  if (!qword_1006E3370)
  {
    sub_100010324(&qword_1006E3348);
    sub_100010BC0(&qword_1006E3378, &qword_1006E3338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E3370);
  }

  return result;
}

uint64_t sub_10008C604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008C684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008C714()
{
  result = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008C79C()
{
  v1 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v1 - 8);
  v3 = v10 - v2;
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  if (((*(v0 + *(v4 + 20)) & 0xFE) == 2 || (v5 = v4, sub_10000CC8C(v0 + *(v4 + 24), v3, &qword_1006E0618), v6 = type metadata accessor for WidgetMusicItem(), v7 = (*(*(v6 - 8) + 48))(v3, 1, v6), sub_10001036C(v3, &qword_1006E0618), v7 == 1) || !*(v0 + *(v5 + 32))) && (sub_1000913DC(), v8))
  {

    return sub_10056ED98();
  }

  else
  {
    sub_10056EDA8();
    v10[1] = _swiftEmptyArrayStorage;
    sub_100091584(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
    sub_100009DCC(&qword_1006E0C80);
    sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80);
    return sub_100573DA8();
  }
}

uint64_t sub_10008C9A4()
{
  sub_10008CD84();

  return sub_10056F1A8();
}

uint64_t sub_10008C9EC(uint64_t a1)
{
  v2 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1000A0630(a1, &v9 - v6, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_1000A0630(v7, v5, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_10008CD84();
  sub_10056F1B8();
  return sub_10008CDD8(v7, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
}

uint64_t sub_10008CAF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10056EDA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecentlyPlayedContentView(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148);
  swift_storeEnumTagMultiPayload();
  sub_10008C79C();
  sub_100091584(&qword_1006E3410, type metadata accessor for RecentlyPlayedContentView);
  sub_100570358();
  (*(v5 + 8))(v7, v4);
  sub_10008CDD8(v10, type metadata accessor for RecentlyPlayedContentView);
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(sub_100009DCC(&qword_1006E3418) + 36));
  v13 = sub_100009DCC(&qword_1006E3420);
  result = sub_1000A0630(v2, v12 + *(v13 + 28), type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  *v12 = KeyPath;
  return result;
}

unint64_t sub_10008CD84()
{
  result = qword_1006E3428;
  if (!qword_1006E3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E3428);
  }

  return result;
}

uint64_t sub_10008CDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008CE38@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v57 = type metadata accessor for RecentlyPlayedExtraLargeContentView(0);
  __chkstk_darwin(v57);
  v52 = (&v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100009DCC(&qword_1006E34D0);
  __chkstk_darwin(v54);
  v56 = &v51 - v2;
  v63 = sub_100009DCC(&qword_1006E34D8);
  __chkstk_darwin(v63);
  v58 = &v51 - v3;
  v55 = type metadata accessor for RecentlyPlayedLargeContentView(0);
  __chkstk_darwin(v55);
  v53 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for RecentlyPlayedMediumContentView(0);
  __chkstk_darwin(v64);
  v59 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_100009DCC(&qword_1006E34E0);
  __chkstk_darwin(v66);
  v65 = (&v51 - v6);
  v61 = sub_100009DCC(&qword_1006E34E8);
  __chkstk_darwin(v61);
  v8 = &v51 - v7;
  v60 = sub_100009DCC(&qword_1006E34F0);
  __chkstk_darwin(v60);
  v10 = &v51 - v9;
  v62 = sub_100009DCC(&qword_1006E34F8);
  __chkstk_darwin(v62);
  v12 = &v51 - v11;
  v67 = sub_100009DCC(&qword_1006E3500);
  __chkstk_darwin(v67);
  v14 = &v51 - v13;
  v15 = type metadata accessor for RecentlyPlayedSmallContentView(0);
  __chkstk_darwin(v15);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1005724A8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8194(v21);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for WidgetFamily.systemSmall(_:))
  {
    *v17 = swift_getKeyPath();
    sub_100009DCC(&qword_1006E3540);
    swift_storeEnumTagMultiPayload();
    v23 = v17 + v15[5];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    v24 = v15[6];
    *(v17 + v24) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E2140);
    swift_storeEnumTagMultiPayload();
    v25 = v15[7];
    *(v17 + v25) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70);
    swift_storeEnumTagMultiPayload();
    v26 = v15[8];
    *(v17 + v26) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0);
    swift_storeEnumTagMultiPayload();
    sub_1000A0630(v17, v10, type metadata accessor for RecentlyPlayedSmallContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3518, type metadata accessor for RecentlyPlayedSmallContentView);
    sub_100091584(&qword_1006E3520, type metadata accessor for RecentlyPlayedMediumContentView);
    sub_10056F5B8();
    sub_10000CC8C(v12, v8, &qword_1006E34F8);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006E34F8);
    sub_10000CC8C(v14, v65, &qword_1006E3500);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500);
    v27 = type metadata accessor for RecentlyPlayedSmallContentView;
LABEL_5:
    v32 = v27;
    v33 = v17;
    return sub_10008CDD8(v33, v32);
  }

  v28 = v64;
  if (v22 == enum case for WidgetFamily.systemMedium(_:))
  {
    KeyPath = swift_getKeyPath();
    v17 = v59;
    *v59 = KeyPath;
    sub_100009DCC(&qword_1006E3540);
    swift_storeEnumTagMultiPayload();
    v30 = *(v28 + 20);
    *(v17 + v30) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70);
    swift_storeEnumTagMultiPayload();
    v31 = *(v28 + 24);
    *(v17 + v31) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0);
    swift_storeEnumTagMultiPayload();
    sub_1000A0630(v17, v10, type metadata accessor for RecentlyPlayedMediumContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3518, type metadata accessor for RecentlyPlayedSmallContentView);
    sub_100091584(&qword_1006E3520, type metadata accessor for RecentlyPlayedMediumContentView);
    sub_10056F5B8();
    sub_10000CC8C(v12, v8, &qword_1006E34F8);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006E34F8);
    sub_10000CC8C(v14, v65, &qword_1006E3500);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500);
    v27 = type metadata accessor for RecentlyPlayedMediumContentView;
    goto LABEL_5;
  }

  if (v22 == enum case for WidgetFamily.systemLarge(_:))
  {
    v35 = swift_getKeyPath();
    v36 = v53;
    *v53 = v35;
    sub_100009DCC(&qword_1006E3540);
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    v38 = *(v55 + 20);
    *(v36 + v38) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EA8);
    swift_storeEnumTagMultiPayload();
    v39 = v37[6];
    *(v36 + v39) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70);
    swift_storeEnumTagMultiPayload();
    v40 = v37[7];
    *(v36 + v40) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0);
    swift_storeEnumTagMultiPayload();
    v41 = v36 + v37[8];
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    sub_1000A0630(v36, v56, type metadata accessor for RecentlyPlayedLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3530, type metadata accessor for RecentlyPlayedLargeContentView);
    sub_100091584(&qword_1006E3538, type metadata accessor for RecentlyPlayedExtraLargeContentView);
    v42 = v58;
    sub_10056F5B8();
    sub_10000CC8C(v42, v8, &qword_1006E34D8);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v42, &qword_1006E34D8);
    sub_10000CC8C(v14, v65, &qword_1006E3500);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500);
    v43 = type metadata accessor for RecentlyPlayedLargeContentView;
  }

  else
  {
    v44 = v65;
    if (v22 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      *v65 = 0xD000000000000012;
      v44[1] = 0x80000001005AAE70;
      *(v44 + 16) = 0;
      v44[3] = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      sub_1000A03B8();
      sub_10056F5B8();
      return (*(v19 + 8))(v21, v18);
    }

    v45 = swift_getKeyPath();
    v36 = v52;
    *v52 = v45;
    sub_100009DCC(&qword_1006E3540);
    swift_storeEnumTagMultiPayload();
    v46 = v57;
    v47 = *(v57 + 20);
    *(v36 + v47) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70);
    swift_storeEnumTagMultiPayload();
    v48 = *(v46 + 24);
    *(v36 + v48) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0);
    swift_storeEnumTagMultiPayload();
    v49 = v36 + *(v46 + 28);
    *v49 = swift_getKeyPath();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    sub_1000A0630(v36, v56, type metadata accessor for RecentlyPlayedExtraLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3530, type metadata accessor for RecentlyPlayedLargeContentView);
    sub_100091584(&qword_1006E3538, type metadata accessor for RecentlyPlayedExtraLargeContentView);
    v50 = v58;
    sub_10056F5B8();
    sub_10000CC8C(v50, v8, &qword_1006E34D8);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v50, &qword_1006E34D8);
    sub_10000CC8C(v14, v44, &qword_1006E3500);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500);
    v43 = type metadata accessor for RecentlyPlayedExtraLargeContentView;
  }

  v32 = v43;
  v33 = v36;
  return sub_10008CDD8(v33, v32);
}

uint64_t sub_10008DD98@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v88 = sub_10056E698();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v103 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009DCC(&qword_1006E0618);
  v4 = __chkstk_darwin(v3 - 8);
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = &v78 - v6;
  v7 = sub_100009DCC(qword_1006E1D50);
  v8 = __chkstk_darwin(v7 - 8);
  v79 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = &v78 - v10;
  v92 = sub_100009DCC(&qword_1006E37E0);
  __chkstk_darwin(v92);
  v96 = &v78 - v11;
  v95 = sub_100009DCC(&qword_1006E37E8);
  __chkstk_darwin(v95);
  v13 = &v78 - v12;
  v94 = sub_100009DCC(&qword_1006E37F0);
  __chkstk_darwin(v94);
  v15 = &v78 - v14;
  v16 = sub_100009DCC(&qword_1006E37F8);
  v17 = __chkstk_darwin(v16 - 8);
  v93 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v78 - v19;
  v91 = sub_100009DCC(&qword_1006E3800);
  __chkstk_darwin(v91);
  v90 = &v78 - v21;
  v105 = sub_100009DCC(&qword_1006E3808);
  __chkstk_darwin(v105);
  v106 = &v78 - v22;
  v86 = sub_100009DCC(&qword_1006E3810);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v100 = &v78 - v23;
  v83 = sub_100009DCC(&qword_1006E3818);
  __chkstk_darwin(v83);
  v84 = &v78 - v24;
  v107 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v25 = __chkstk_darwin(v107);
  v98 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v78 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v78 - v31;
  __chkstk_darwin(v30);
  v34 = &v78 - v33;
  v104 = type metadata accessor for WidgetMusicItem();
  v97 = *(v104 - 8);
  __chkstk_darwin(v104);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A84D4(v34);
  sub_10008EB88(v36);
  sub_10008CDD8(v34, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  *v15 = sub_10056F378();
  *(v15 + 1) = 0x4014000000000000;
  v15[16] = 0;
  v37 = &v15[*(sub_100009DCC(&qword_1006E3820) + 44)];
  v99 = v36;
  sub_10008EF00(v1, v36, v37);
  v102 = v1;
  sub_1000A84D4(v32);
  v38 = sub_1000913DC();
  v40 = v39;
  sub_10008CDD8(v32, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  if (v40)
  {
    v80 = v20;
    v41 = &v13[*(v95 + 36)];
    *v41 = v38;
    *(v41 + 1) = v40;
    *(v41 + 2) = 0;
    *(v41 + 3) = 0;
    type metadata accessor for CGSize(0);
    v108 = 0;
    v109 = 0;
    sub_100570668();
    v42 = v111;
    *(v41 + 2) = v110;
    *(v41 + 6) = v42;
    v43 = type metadata accessor for ErrorMessageModifier();
    sub_10056FDE8();
    v44 = *(v43 + 36);
    *&v41[v44] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v45 = &v41[*(v43 + 40)];
    *v45 = swift_getKeyPath();
    *(v45 + 1) = 0;
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    v45[32] = 0;
    sub_10000CC8C(v15, v13, &qword_1006E37F0);
    sub_10000CC8C(v13, v96, &qword_1006E37E8);
    swift_storeEnumTagMultiPayload();
    sub_1000A1B80();
    sub_100010BC0(&qword_1006E3830, &qword_1006E37F0);
    v46 = v93;
    v20 = v80;
    sub_10056F5B8();
    sub_10001036C(v13, &qword_1006E37E8);
  }

  else
  {
    sub_10000CC8C(v15, v96, &qword_1006E37F0);
    swift_storeEnumTagMultiPayload();
    sub_1000A1B80();
    sub_100010BC0(&qword_1006E3830, &qword_1006E37F0);
    v46 = v93;
    sub_10056F5B8();
  }

  sub_10001036C(v15, &qword_1006E37F0);
  sub_100019B40(v46, v20, &qword_1006E37F8);
  v47 = v90;
  sub_1000A84D4(v90);
  sub_100019B40(v20, v47 + *(v91 + 36), &qword_1006E37F8);
  v48 = sub_1005709B8();
  v50 = v49;
  v51 = v106;
  v52 = &v106[*(v105 + 36)];
  sub_1000918B0(v52);
  v53 = (v52 + *(sub_100009DCC(&qword_1006E23C8) + 36));
  *v53 = v48;
  v53[1] = v50;
  sub_100019B40(v47, v51, &qword_1006E3800);
  sub_1000A84D4(v29);
  v54 = v107;
  v56 = v99;
  v55 = v100;
  if ((v29[*(v107 + 20)] & 0xFE) == 2 || (v57 = v81, sub_10000CC8C(&v29[*(v107 + 24)], v81, &qword_1006E0618), v58 = (*(v97 + 48))(v57, 1, v104), sub_10001036C(v57, &qword_1006E0618), v58 == 1) || !*&v29[*(v54 + 32)])
  {
    sub_10008CDD8(v29, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v67 = *(v104 + 28);
    v60 = sub_10056C8A8();
    v64 = v101;
    (*(*(v60 - 8) + 16))(v101, v56 + v67, v60);
    v66 = v87;
    v63 = v103;
    v65 = v98;
  }

  else
  {
    sub_10008CDD8(v29, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v59 = v79;
    sub_10056C868();
    v60 = sub_10056C8A8();
    v61 = *(v60 - 8);
    result = (*(v61 + 48))(v59, 1, v60);
    v63 = v103;
    v64 = v101;
    v65 = v98;
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v61 + 32))(v101, v59, v60);
    v66 = v87;
  }

  sub_10056C8A8();
  (*(*(v60 - 8) + 56))(v64, 0, 1, v60);
  sub_1000A1C68();
  v68 = v106;
  sub_10056FF68();
  sub_10001036C(v64, qword_1006E1D50);
  sub_10001036C(v68, &qword_1006E3808);
  sub_1000A84D4(v65);
  if ((*(v65 + *(v107 + 20)) & 0xFE) == 2 || (v69 = v82, sub_10000CC8C(v65 + *(v107 + 24), v82, &qword_1006E0618), v70 = (*(v97 + 48))(v69, 1, v104), v71 = v69, v72 = v107, sub_10001036C(v71, &qword_1006E0618), v70 == 1) || !*(v65 + *(v72 + 32)))
  {
    sub_10008CDD8(v65, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    type metadata accessor for RecentlyPlayedSmallContentView(0);
    sub_1000A81E4(v63);
    v73 = v88;
  }

  else
  {
    sub_10008CDD8(v65, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v73 = v88;
    (*(v66 + 104))(v63, enum case for ColorScheme.light(_:), v88);
  }

  KeyPath = swift_getKeyPath();
  v75 = v84;
  v76 = &v84[*(v83 + 36)];
  v77 = sub_100009DCC(&qword_1006E0DE0);
  (*(v66 + 32))(v76 + *(v77 + 28), v63, v73);
  *v76 = KeyPath;
  (*(v85 + 32))(v75, v55, v86);
  sub_100019B40(v75, v89, &qword_1006E3818);
  return sub_10008CDD8(v56, type metadata accessor for WidgetMusicItem);
}

uint64_t sub_10008EB88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009DCC(&qword_1006E0618);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v13 = v12;
  if ((*(v1 + *(v12 + 20)) & 0xFE) != 2)
  {
    v28 = *(v12 + 24);
    sub_10000CC8C(v1 + v28, v11, &qword_1006E0618);
    v14 = type metadata accessor for WidgetMusicItem();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1;
    v17 = v15(v11, 1, v14);
    sub_10001036C(v11, &qword_1006E0618);
    v18 = v17 == 1;
    a1 = v16;
    if (!v18)
    {
      if (*(v1 + *(v13 + 32)))
      {
        sub_10000CC8C(v1 + v28, v9, &qword_1006E0618);
        if (v15(v9, 1, v14) != 1)
        {
          v24 = v9;
          return sub_1000A2F00(v24, a1, type metadata accessor for WidgetMusicItem);
        }

        sub_10001036C(v9, &qword_1006E0618);
      }
    }
  }

  v19 = *(v1 + *(v13 + 28));
  v20 = *(v19 + 16);
  v21 = type metadata accessor for WidgetMusicItem();
  v22 = *(v21 - 8);
  v23 = v22;
  if (v20)
  {
    sub_1000A0630(v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v6, type metadata accessor for WidgetMusicItem);
    (*(v23 + 56))(v6, 0, 1, v21);
    v24 = v6;
    return sub_1000A2F00(v24, a1, type metadata accessor for WidgetMusicItem);
  }

  (*(v22 + 56))(v6, 1, 1, v21);
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000C49C(v21, qword_1006FC1D8);
  sub_1000A0630(v26, a1, type metadata accessor for WidgetMusicItem);
  result = (*(v23 + 48))(v6, 1, v21);
  if (result != 1)
  {
    return sub_10001036C(v6, &qword_1006E0618);
  }

  return result;
}

uint64_t sub_10008EF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v88 = a3;
  v4 = sub_100009DCC(&qword_1006E3848);
  __chkstk_darwin(v4 - 8);
  v6 = &v74 - v5;
  v79 = sub_100009DCC(&qword_1006E3850);
  __chkstk_darwin(v79);
  v84 = &v74 - v7;
  v83 = sub_100009DCC(&qword_1006E3858);
  __chkstk_darwin(v83);
  v82 = &v74 - v8;
  v80 = sub_100009DCC(&qword_1006E3860);
  v9 = __chkstk_darwin(v80);
  v89 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v74 - v12;
  __chkstk_darwin(v11);
  v87 = &v74 - v13;
  v14 = sub_100009DCC(&qword_1006E3868);
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = sub_100572508();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v74 - v22;
  v24 = sub_100009DCC(&qword_1006E3870);
  v25 = __chkstk_darwin(v24 - 8);
  v86 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v74 - v27;
  v90 = a1;
  sub_10008F920(v23);
  sub_1005724C8();
  v29 = sub_1005724E8();
  v30 = *(v18 + 8);
  v30(v21, v17);
  v81 = v17;
  v78 = v30;
  v77 = v18 + 8;
  v30(v23, v17);
  v75 = v28;
  if (v29)
  {
    v31 = v76;
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v32 = sub_100009DCC(&qword_1006E1910);
    v33 = sub_10000C49C(v32, qword_1006FC128);
    (*(*(v32 - 8) + 16))(v16, v33, v32);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1038);
    v34 = sub_100010324(&qword_1006E1928);
    v35 = sub_1000378D0();
    *&v93 = v34;
    *(&v93 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_1000A1D54();
    sub_10056F5B8();
  }

  else
  {
    *(&v94 + 1) = type metadata accessor for WidgetMusicItem();
    *v95 = &off_100681290;
    v36 = sub_10002AB7C(&v93);
    v31 = v76;
    sub_1000A0630(v76, v36, type metadata accessor for WidgetMusicItem);
    v37 = Corner.small.unsafeMutableAddressor();
    v38 = *(v37 + 16);
    *&v95[8] = *v37;
    v95[24] = v38;
    v39 = sub_10056FA88();
    sub_10056E598();
    LOBYTE(v96) = v39;
    *(&v96 + 1) = v40;
    *&v97 = v41;
    *(&v97 + 1) = v42;
    *&v98 = v43;
    BYTE8(v98) = 0;
    sub_10000CC8C(&v93, v16, &qword_1006E1038);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910);
    sub_100009DCC(&qword_1006E1038);
    v44 = sub_100010324(&qword_1006E1928);
    v45 = sub_1000378D0();
    v91 = v44;
    v92 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1000A1D54();
    sub_10056F5B8();
    sub_10001036C(&v93, &qword_1006E1038);
  }

  *v6 = sub_10056F378();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v46 = sub_100009DCC(&qword_1006E3880);
  sub_10008FC58(v90, v31, &v6[*(v46 + 44)]);
  sub_1005709F8();
  sub_10056EDF8();
  v47 = v84;
  sub_100019B40(v6, v84, &qword_1006E3848);
  v48 = (v47 + *(v79 + 36));
  v49 = v97;
  v48[4] = v96;
  v48[5] = v49;
  v48[6] = v98;
  v50 = v94;
  *v48 = v93;
  v48[1] = v50;
  v51 = *&v95[16];
  v48[2] = *v95;
  v48[3] = v51;
  sub_10008F920(v23);
  sub_1005724C8();
  v52 = sub_1005724E8();
  v53 = v21;
  v54 = v81;
  v79 = v21;
  v55 = v78;
  v78(v53, v81);
  v55(v23, v54);
  if (v52)
  {
    v56 = 2;
  }

  else
  {
    v56 = 1;
  }

  KeyPath = swift_getKeyPath();
  v58 = v82;
  sub_100019B40(v47, v82, &qword_1006E3850);
  v59 = v58 + *(v83 + 36);
  *v59 = KeyPath;
  *(v59 + 8) = v56;
  *(v59 + 16) = 0;
  v60 = v85;
  v61 = &v85[*(v80 + 36)];
  v62 = *(sub_100009DCC(&qword_1006E3888) + 28);
  v63 = enum case for Text.TruncationMode.tail(_:);
  v64 = sub_10056FE08();
  (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
  *v61 = swift_getKeyPath();
  sub_100019B40(v58, v60, &qword_1006E3858);
  v65 = v87;
  sub_100019B40(v60, v87, &qword_1006E3860);
  sub_10008F920(v23);
  v66 = v79;
  sub_1005724C8();
  LOBYTE(v63) = sub_1005724E8();
  v55(v66, v54);
  v55(v23, v54);
  LODWORD(v90) = v63 & 1;
  v67 = v75;
  v68 = v86;
  sub_10000CC8C(v75, v86, &qword_1006E3870);
  v69 = v89;
  sub_10000CC8C(v65, v89, &qword_1006E3860);
  v70 = v88;
  sub_10000CC8C(v68, v88, &qword_1006E3870);
  v71 = sub_100009DCC(&qword_1006E3890);
  sub_10000CC8C(v69, v70 + *(v71 + 48), &qword_1006E3860);
  v72 = v70 + *(v71 + 64);
  *v72 = 0;
  *(v72 + 8) = v90;
  *(v72 + 9) = (v63 & 1) == 0;
  sub_10001036C(v65, &qword_1006E3860);
  sub_10001036C(v67, &qword_1006E3870);
  sub_10001036C(v69, &qword_1006E3860);
  return sub_10001036C(v68, &qword_1006E3870);
}

uint64_t sub_10008F920@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_10056F198();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100572468();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for RecentlyPlayedSmallContentView(0);
  sub_1000A8484(v12);
  sub_100572458();
  v14 = sub_100572448();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = v2 + *(v13 + 20);
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      if ((v17 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }

    else
    {

      sub_100573438();
      v19 = sub_10056F9D8();
      sub_10056DE58();

      sub_10056F188();
      swift_getAtKeyPath();
      sub_100053068(v17, 0);
      (*(v24 + 8))(v5, v3);
      if ((v26 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }
  }

  v20 = v2 + *(v13 + 20);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  else
  {

    sub_100573438();
    v22 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v21, 0);
    (*(v24 + 8))(v5, v3);
    if ((v27 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  return sub_1005724B8();
}

uint64_t sub_10008FC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v65 = a3;
  v64 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v5 = __chkstk_darwin(v64);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v60 - v7;
  v8 = sub_100009DCC(&qword_1006E3898);
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v62 = &v60 - v9;
  v10 = sub_100009DCC(&qword_1006E38A0);
  v11 = __chkstk_darwin(v10 - 8);
  v84 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v60 - v13;
  v76 = sub_10056F808();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100009DCC(&qword_1006E38A8);
  __chkstk_darwin(v74);
  v17 = &v60 - v16;
  v18 = sub_100009DCC(&qword_1006E38B0);
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = __chkstk_darwin(v18);
  v77 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v60 - v21;
  v22 = sub_10056EDA8();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  type metadata accessor for RecentlyPlayedSmallContentView(0);
  v80 = a1;
  sub_1000A84AC(v28);
  sub_10056ED98();
  sub_100091584(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
  LOBYTE(a1) = sub_100573D78();
  v29 = *(v23 + 8);
  v29(v26, v22);
  v29(v28, v22);
  if (a1)
  {
    sub_1005709E8();
    sub_10056E888();
    v72 = 0;
    v73 = v90;
    v71 = v92;
    v70 = v94;
    v69 = v95;
    v88 = 1;
    v87 = v91;
    v86 = v93;
    v66 = 1;
    v67 = v91;
    v68 = v93;
    v89 = 0;
  }

  else
  {
    v73 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v72 = 1;
  }

  *v17 = sub_10056F378();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v30 = sub_100009DCC(&qword_1006E38B8);
  sub_10009052C(a2, &v17[*(v30 + 44)]);
  sub_10056F7E8();
  sub_100010BC0(&qword_1006E38C0, &qword_1006E38A8);
  sub_1005701F8();
  (*(v75 + 8))(v15, v76);
  sub_10001036C(v17, &qword_1006E38A8);
  if (*(a2 + *(type metadata accessor for WidgetMusicItem() + 64)) == 1)
  {
    v31 = v62;
    sub_1000A0630(a2, v62, type metadata accessor for WidgetMusicItem);
    v32 = v61;
    sub_1000A84D4(v61);
    v33 = v64;
    v34 = *(v64 + 24);
    v35 = type metadata accessor for PlaybackButtonLarge();
    sub_10000CC8C(v32 + v34, v31 + *(v35 + 20), &qword_1006E0618);
    sub_10008CDD8(v32, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v36 = v63;
    sub_1000A84D4(v63);
    LOBYTE(v34) = *(v36 + *(v33 + 20));
    sub_10008CDD8(v36, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    *(v31 + *(v35 + 24)) = v34;
    LOBYTE(v34) = sub_10056FA48();
    sub_10056E598();
    v37 = v82;
    v38 = v31 + *(v82 + 36);
    *v38 = v34;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    v43 = v31;
    v44 = v83;
    sub_100019B40(v43, v83, &qword_1006E3898);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v37 = v82;
    v44 = v83;
  }

  (*(v81 + 56))(v44, v45, 1, v37);
  v47 = v77;
  v46 = v78;
  v48 = *(v78 + 16);
  v49 = v85;
  v50 = v79;
  v48(v77, v85, v79);
  v51 = v84;
  sub_10000CC8C(v44, v84, &qword_1006E38A0);
  v52 = v65;
  v53 = v66;
  *v65 = 0;
  v52[1] = v53;
  v54 = v67;
  v52[2] = v73;
  v52[3] = v54;
  v55 = v68;
  v52[4] = v71;
  v52[5] = v55;
  v56 = v69;
  v52[6] = v70;
  v52[7] = v56;
  *(v52 + 64) = v72;
  v57 = sub_100009DCC(&qword_1006E38C8);
  v48(v52 + *(v57 + 48), v47, v50);
  sub_10000CC8C(v51, v52 + *(v57 + 64), &qword_1006E38A0);
  sub_10001036C(v44, &qword_1006E38A0);
  v58 = *(v46 + 8);
  v58(v49, v50);
  sub_10001036C(v51, &qword_1006E38A0);
  return (v58)(v47, v50);
}

uint64_t sub_10009052C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v113 = a1;
  v112 = a2;
  v122 = sub_10056FC68();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v3 = v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin(v4 - 8);
  v6 = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100009DCC(&qword_1006E24B0);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v8 = v111 - v7;
  v9 = sub_100572508();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v111 - v14;
  v16 = sub_100009DCC(&qword_1006E38D0);
  v17 = __chkstk_darwin(v16 - 8);
  v114 = v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v115 = v111 - v19;
  sub_10008F920(v15);
  sub_1005724C8();
  v20 = sub_1005724E8();
  v21 = *(v10 + 8);
  v21(v13, v9);
  v21(v15, v9);
  if (v20)
  {
    sub_1000A84D4(v6);
    v22 = sub_1000911F8();
    v24 = v23;
    v26 = v25;
    sub_10008CDD8(v6, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v27 = [objc_opt_self() systemFontOfSize:0.0];
    v28 = [v27 fontName];

    sub_1005728D8();
    v29 = v121;
    v30 = v122;
    (*(v121 + 104))(v3, enum case for Font.TextStyle.caption2(_:), v122);
    sub_10056FB98();

    (*(v29 + 8))(v3, v30);
    v31 = sub_10056FE88();
    v33 = v32;
    LOBYTE(v29) = v34;

    sub_10001B5A4(v22, v24, v26 & 1);

    sub_10056FB88();
    v35 = sub_10056FD98();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_10001B5A4(v31, v33, v29 & 1);

    v42 = &v8[*(sub_100009DCC(&qword_1006E24C8) + 36)];
    v43 = *(sub_100009DCC(&qword_1006E1050) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = sub_10056FE68();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    *v8 = v35;
    *(v8 + 1) = v37;
    v8[16] = v39 & 1;
    *(v8 + 3) = v41;
    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    v47 = sub_100009DCC(&qword_1006E1058);
    v48 = sub_10000C49C(v47, qword_1006FC0D8);
    v49 = v124;
    sub_10000CC8C(v48, &v8[*(v124 + 36)], &qword_1006E1058);
    v50 = v115;
    sub_100019B40(v8, v115, &qword_1006E24B0);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v50 = v115;
    v49 = v124;
  }

  (*(v123 + 56))(v50, v51, 1, v49);
  v52 = v113;
  v53 = *(v113 + 24);
  v111[1] = *(v113 + 16);
  v54 = *(v52 + *(type metadata accessor for WidgetMusicItem() + 60));
  v55 = *(v54 + 16);
  v111[2] = v53;
  if (v55)
  {
    v56 = (v54 + 32);
    v57 = qword_1006DF8F0;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = 0;
    v59 = 0;
    v60 = _swiftEmptyArrayStorage;
    v61 = 0xE000000000000000;
    v62 = v55;
    do
    {
      v123 = v60;
      v124 = v58;
      v63 = *v56++;
      TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07D0, v63);
      v65 = v64;
      v67 = v66;
      v69 = v68;
      sub_10056FC18();
      v121 = sub_10056FE88();
      KeyPath = v70;
      LODWORD(v122) = v71;
      v118 = v72;

      sub_10001B5A4(v65, v67, v69 & 1);

      v73 = v124;
      v74 = v121;
      v55 = KeyPath;
      v119 = sub_10056FE58();
      v117 = v75;
      v116 = v76;
      v78 = v77;
      sub_10001B5A4(v73, v61, v59 & 1);

      sub_10001B5A4(v74, v55, v122 & 1);
      v79 = v119;
      v80 = v117;
      LOBYTE(v55) = v116;

      v58 = v79;
      v61 = v80;
      v59 = v55;
      v60 = v78;
      --v62;
    }

    while (v62);
  }

  else
  {

    v79 = 0;
    v80 = 0xE000000000000000;
  }

  v123 = sub_10056FE58();
  v122 = v81;
  v83 = v82;
  v124 = v84;
  sub_10001B5A4(v79, v80, v55 & 1);

  sub_10056FC18();
  v121 = sub_10056FB28();

  KeyPath = swift_getKeyPath();
  v85 = v83 & 1;
  v144 = v85;
  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v86 = qword_1006FC0D0;
  v118 = swift_getKeyPath();
  v119 = v86;

  sub_10056FC18();
  v87 = sub_10056FE88();
  v89 = v88;
  v91 = v90;

  if (qword_1006DF938 != -1)
  {
    swift_once();
  }

  v92 = sub_100009DCC(&qword_1006E1058);
  sub_10000C49C(v92, qword_1006FC0D8);
  sub_100010BC0(&qword_1006E24F0, &qword_1006E1058);
  v93 = sub_10056FE28();
  v95 = v94;
  v116 = v96;
  v117 = v97;
  sub_10001B5A4(v87, v89, v91 & 1);

  v98 = v114;
  sub_10000CC8C(v115, v114, &qword_1006E38D0);
  v99 = v112;
  sub_10000CC8C(v98, v112, &qword_1006E38D0);
  v100 = sub_100009DCC(&qword_1006E38D8);
  v101 = v99 + *(v100 + 48);
  *&v125 = v123;
  v102 = v122;
  *(&v125 + 1) = v122;
  LOBYTE(v126) = v85;
  *(&v126 + 1) = *v143;
  DWORD1(v126) = *&v143[3];
  LODWORD(v113) = v85;
  *(&v126 + 1) = v124;
  LOWORD(v127) = 256;
  *(&v127 + 2) = v141;
  WORD3(v127) = v142;
  v103 = KeyPath;
  v104 = v121;
  *(&v127 + 1) = KeyPath;
  *&v128 = v121;
  v105 = v118;
  v106 = v119;
  *(&v128 + 1) = v118;
  v129 = v119;
  *(v101 + 64) = v119;
  v107 = v126;
  *v101 = v125;
  *(v101 + 16) = v107;
  v108 = v128;
  *(v101 + 32) = v127;
  *(v101 + 48) = v108;
  v109 = v99 + *(v100 + 64);
  *v109 = v93;
  *(v109 + 8) = v95;
  LOBYTE(v99) = v116 & 1;
  *(v109 + 16) = v116 & 1;
  *(v109 + 24) = v117;
  sub_10000CC8C(&v125, v130, &qword_1006E38E0);
  sub_10002AAC4(v93, v95, v99);

  sub_10001036C(v115, &qword_1006E38D0);
  sub_10001B5A4(v93, v95, v99);

  v130[0] = v123;
  v130[1] = v102;
  v131 = v113;
  *v132 = *v143;
  *&v132[3] = *&v143[3];
  v133 = v124;
  v134 = 256;
  v135 = v141;
  v136 = v142;
  v137 = v103;
  v138 = v104;
  v139 = v105;
  v140 = v106;
  sub_10001036C(v130, &qword_1006E38E0);
  return sub_10001036C(v114, &qword_1006E38D0);
}

uint64_t sub_1000911F8()
{
  v1 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v1 - 8);
  v3 = v9 - v2;
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  if ((*(v0 + *(v4 + 20)) & 0xFE) == 2 || (v5 = v4, sub_10000CC8C(v0 + *(v4 + 24), v3, &qword_1006E0618), v6 = type metadata accessor for WidgetMusicItem(), v7 = (*(*(v6 - 8) + 48))(v3, 1, v6), sub_10001036C(v3, &qword_1006E0618), v7 == 1) || !*(v0 + *(v5 + 32)))
  {
    if (qword_1006DFA38 != -1)
    {
      swift_once();
    }

    v9[2] = qword_1006FC2C8;
    v9[3] = unk_1006FC2D0;
    sub_10001B550();

    return sub_10056FF28();
  }

  else
  {
    sub_10056F2A8();
    return sub_10056FF08();
  }
}

uint64_t sub_1000913DC()
{
  v1 = sub_100009DCC(&qword_1006E0618);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v5 = v4;
  if ((*(v0 + *(v4 + 20)) & 0xFE) != 2)
  {
    sub_10000CC8C(v0 + *(v4 + 24), v3, &qword_1006E0618);
    v6 = type metadata accessor for WidgetMusicItem();
    v7 = (*(*(v6 - 8) + 48))(v3, 1, v6);
    sub_10001036C(v3, &qword_1006E0618);
    if (v7 != 1)
    {
      if (*(v0 + v5[8]))
      {
        return 0;
      }
    }
  }

  v8 = (v0 + v5[10]);
  if (!v8[1])
  {
    if (!*(*(v0 + v5[7]) + 16))
    {
      if (qword_1006DF988 != -1)
      {
        swift_once();
      }

      v9 = qword_1006FC198;
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *v8;
LABEL_6:

  return v9;
}

uint64_t sub_100091584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000915F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0800);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009167C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0800);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000916F8()
{
  sub_1000A4D04(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100091798()
{
  result = qword_1006E34C0;
  if (!qword_1006E34C0)
  {
    sub_100010324(&qword_1006E3418);
    type metadata accessor for RecentlyPlayedContentView(255);
    sub_100091584(&qword_1006E3410, type metadata accessor for RecentlyPlayedContentView);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E34C8, &qword_1006E3420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E34C0);
  }

  return result;
}

uint64_t sub_1000918B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009DCC(&qword_1006E23F8);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_100572508();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  sub_10008F920(&v26 - v10);
  sub_1005724F8();
  v12 = sub_1005724E8();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    if (qword_1006DF960 != -1)
    {
      swift_once();
    }

    v14 = sub_100009DCC(&qword_1006E1918);
    v15 = sub_10000C49C(v14, qword_1006FC140);
    sub_10000CC8C(v15, v4, &qword_1006E1918);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910);
    sub_100052FA0();
    v16 = sub_100010324(&qword_1006E1928);
    v17 = sub_1000378D0();
    v26 = v16;
    v27 = v17;
    swift_getOpaqueTypeConformance2();
LABEL_10:
    sub_10056F5B8();
    v19 = 0;
    goto LABEL_11;
  }

  sub_10008F920(v11);
  sub_1005724C8();
  sub_100091584(&qword_1006E2400, &type metadata accessor for WidgetLocation);
  v18 = sub_1005727E8();
  v13(v9, v5);
  v13(v11, v5);
  if ((v18 & 1) == 0)
  {
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v20 = sub_100009DCC(&qword_1006E1910);
    v21 = sub_10000C49C(v20, qword_1006FC128);
    (*(*(v20 - 8) + 16))(v4, v21, v20);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1918);
    sub_100052FA0();
    v22 = sub_100010324(&qword_1006E1928);
    v23 = sub_1000378D0();
    v26 = v22;
    v27 = v23;
    swift_getOpaqueTypeConformance2();
    goto LABEL_10;
  }

  v19 = 1;
LABEL_11:
  v24 = sub_100009DCC(&qword_1006E2410);
  return (*(*(v24 - 8) + 56))(a1, v19, 1, v24);
}

uint64_t sub_100091D28@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_10056E698();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v94 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E0618);
  v5 = __chkstk_darwin(v4 - 8);
  v85 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v83 - v7;
  v8 = sub_100009DCC(qword_1006E1D50);
  v9 = __chkstk_darwin(v8 - 8);
  v83 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = &v83 - v11;
  v100 = sub_100009DCC(&qword_1006E38E8);
  __chkstk_darwin(v100);
  v13 = &v83 - v12;
  v104 = sub_100009DCC(&qword_1006E38F0);
  __chkstk_darwin(v104);
  v15 = &v83 - v14;
  v102 = sub_100009DCC(&qword_1006E38F8);
  __chkstk_darwin(v102);
  v17 = &v83 - v16;
  v18 = sub_100009DCC(&qword_1006E3900);
  v19 = __chkstk_darwin(v18 - 8);
  v101 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v103 = &v83 - v21;
  v99 = sub_100009DCC(&qword_1006E3908);
  __chkstk_darwin(v99);
  v105 = &v83 - v22;
  v108 = sub_100009DCC(&qword_1006E3910);
  __chkstk_darwin(v108);
  v109 = &v83 - v23;
  v92 = sub_100009DCC(&qword_1006E3918);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v83 - v24;
  v88 = sub_100009DCC(&qword_1006E3920);
  __chkstk_darwin(v88);
  v89 = &v83 - v25;
  v110 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v26 = __chkstk_darwin(v110);
  v86 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v98 = &v83 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v83 - v31;
  __chkstk_darwin(v30);
  v34 = &v83 - v33;
  v35 = type metadata accessor for WidgetMusicItem();
  v106 = *(v35 - 8);
  v107 = v35;
  __chkstk_darwin(v35);
  v37 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A84D4(v34);
  sub_10008EB88(v37);
  sub_10008CDD8(v34, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  *v17 = sub_10056F218();
  *(v17 + 1) = 0x4030000000000000;
  v17[16] = 0;
  v38 = &v17[*(sub_100009DCC(&qword_1006E3928) + 44)];
  v87 = v37;
  sub_100092B84(v37, v1, v38);
  sub_1000A84D4(v32);
  v39 = sub_1000913DC();
  v41 = v40;
  sub_10008CDD8(v32, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  if (v41)
  {
    v42 = &v15[*(v104 + 36)];
    *v42 = v39;
    *(v42 + 1) = v41;
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    type metadata accessor for CGSize(0);
    v111 = 0;
    v112 = 0;
    sub_100570668();
    v43 = v114;
    *(v42 + 2) = v113;
    *(v42 + 6) = v43;
    v44 = type metadata accessor for ErrorMessageModifier();
    sub_10056FDE8();
    v45 = *(v44 + 36);
    *&v42[v45] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v46 = &v42[*(v44 + 40)];
    *v46 = swift_getKeyPath();
    *(v46 + 1) = 0;
    *(v46 + 2) = 0;
    *(v46 + 3) = 0;
    v46[32] = 0;
    sub_10000CC8C(v17, v15, &qword_1006E38F8);
    sub_10000CC8C(v15, v13, &qword_1006E38F0);
    swift_storeEnumTagMultiPayload();
    sub_1000A1EF0();
    sub_100010BC0(&qword_1006E3938, &qword_1006E38F8);
    v47 = v101;
    sub_10056F5B8();
    sub_10001036C(v15, &qword_1006E38F0);
  }

  else
  {
    sub_10000CC8C(v17, v13, &qword_1006E38F8);
    swift_storeEnumTagMultiPayload();
    sub_1000A1EF0();
    sub_100010BC0(&qword_1006E3938, &qword_1006E38F8);
    v47 = v101;
    sub_10056F5B8();
  }

  sub_10001036C(v17, &qword_1006E38F8);
  v48 = v103;
  sub_100019B40(v47, v103, &qword_1006E3900);
  v49 = v105;
  sub_1000A84D4(v105);
  sub_100019B40(v48, v49 + *(v99 + 36), &qword_1006E3900);
  v50 = sub_1005709B8();
  v52 = v51;
  v53 = v109;
  v54 = &v109[*(v108 + 36)];
  v55 = v110;
  if (qword_1006DF958 != -1)
  {
    swift_once();
  }

  v56 = sub_100009DCC(&qword_1006E1910);
  v57 = sub_10000C49C(v56, qword_1006FC128);
  (*(*(v56 - 8) + 16))(v54, v57, v56);
  v58 = &v54[*(sub_100009DCC(&qword_1006E3940) + 36)];
  *v58 = v50;
  v58[1] = v52;
  sub_100019B40(v49, v53, &qword_1006E3908);
  v59 = v98;
  sub_1000A84D4(v98);
  if ((*(v59 + v55[5]) & 0xFE) == 2 || (v60 = v84, sub_10000CC8C(v59 + v55[6], v84, &qword_1006E0618), v61 = (*(v106 + 48))(v60, 1, v107), sub_10001036C(v60, &qword_1006E0618), v61 == 1) || !*(v59 + v55[8]))
  {
    sub_10008CDD8(v59, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v71 = *(v107 + 28);
    v63 = sub_10056C8A8();
    v70 = v87;
    v66 = v93;
    (*(*(v63 - 8) + 16))(v93, &v87[v71], v63);
    v67 = v95;
    v68 = v94;
    v69 = v90;
  }

  else
  {
    sub_10008CDD8(v59, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v62 = v83;
    sub_10056C868();
    v63 = sub_10056C8A8();
    v64 = *(v63 - 8);
    result = (*(v64 + 48))(v62, 1, v63);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v66 = v93;
    (*(v64 + 32))(v93, v62, v63);
    v67 = v95;
    v68 = v94;
    v69 = v90;
    v70 = v87;
  }

  v72 = v86;
  sub_10056C8A8();
  (*(*(v63 - 8) + 56))(v66, 0, 1, v63);
  sub_1000A1FD8();
  v73 = v109;
  sub_10056FF68();
  sub_10001036C(v66, qword_1006E1D50);
  sub_10001036C(v73, &qword_1006E3910);
  sub_1000A84D4(v72);
  if ((*(v72 + *(v110 + 20)) & 0xFE) == 2 || (v74 = v85, sub_10000CC8C(v72 + *(v110 + 24), v85, &qword_1006E0618), v75 = (*(v106 + 48))(v74, 1, v107), v76 = v74, v77 = v110, sub_10001036C(v76, &qword_1006E0618), v75 == 1) || !*(v72 + *(v77 + 32)))
  {
    sub_10008CDD8(v72, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    type metadata accessor for RecentlyPlayedMediumContentView(0);
    sub_1000A81E4(v68);
    v78 = v96;
  }

  else
  {
    sub_10008CDD8(v72, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v78 = v96;
    (*(v67 + 104))(v68, enum case for ColorScheme.light(_:), v96);
  }

  KeyPath = swift_getKeyPath();
  v80 = v89;
  v81 = &v89[*(v88 + 36)];
  v82 = sub_100009DCC(&qword_1006E0DE0);
  (*(v67 + 32))(v81 + *(v82 + 28), v68, v78);
  *v81 = KeyPath;
  (*(v91 + 32))(v80, v69, v92);
  sub_100019B40(v80, v97, &qword_1006E3920);
  return sub_10008CDD8(v70, type metadata accessor for WidgetMusicItem);
}

uint64_t sub_100092B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v334 = a3;
  v5 = sub_100009DCC(&qword_1006E3960);
  v6 = __chkstk_darwin(v5 - 8);
  v333 = &v315[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v356 = &v315[-v8];
  v9 = sub_100009DCC(&qword_1006E3968);
  v10 = __chkstk_darwin(v9 - 8);
  v332 = &v315[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v355 = &v315[-v12];
  v13 = sub_100009DCC(&qword_1006E3970);
  v14 = __chkstk_darwin(v13 - 8);
  v330 = &v315[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v335 = &v315[-v17];
  v18 = __chkstk_darwin(v16);
  v352 = &v315[-v19];
  __chkstk_darwin(v18);
  v327 = &v315[-v20];
  v349 = sub_10056F808();
  v360 = *(v349 - 8);
  __chkstk_darwin(v349);
  v348 = &v315[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v346 = sub_100009DCC(&qword_1006E3978);
  __chkstk_darwin(v346);
  v347 = &v315[-v22];
  v351 = sub_100009DCC(&qword_1006E3980);
  v362 = *(v351 - 8);
  v23 = __chkstk_darwin(v351);
  v340 = &v315[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v344 = &v315[-v26];
  v27 = __chkstk_darwin(v25);
  v361 = &v315[-v28];
  __chkstk_darwin(v27);
  v342 = &v315[-v29];
  v325 = sub_100009DCC(&qword_1006E3988);
  v30 = __chkstk_darwin(v325);
  v337 = &v315[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v341 = &v315[-v32];
  v33 = sub_100009DCC(&qword_1006E3990);
  v34 = __chkstk_darwin(v33 - 8);
  v328 = &v315[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v350 = &v315[-v36];
  v329 = sub_100009DCC(&qword_1006E3998);
  v37 = __chkstk_darwin(v329);
  v331 = &v315[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v354 = &v315[-v39];
  v40 = sub_100009DCC(&qword_1006E39A0);
  v357 = *(v40 - 8);
  v358 = v40;
  __chkstk_darwin(v40);
  v353 = &v315[-v41];
  v321 = sub_100009DCC(&qword_1006E39A8);
  v42 = __chkstk_darwin(v321);
  v345 = &v315[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v363 = &v315[-v44];
  v324 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v45 = __chkstk_darwin(v324);
  v323 = &v315[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __chkstk_darwin(v45);
  v322 = &v315[-v48];
  __chkstk_darwin(v47);
  v50 = &v315[-v49];
  v51 = sub_100009DCC(&qword_1006E39B0);
  v52 = v51 - 8;
  __chkstk_darwin(v51);
  v54 = &v315[-v53];
  v364 = (sub_100009DCC(&qword_1006E39B8) - 8);
  __chkstk_darwin(v364);
  v319 = &v315[-v55];
  v370 = sub_100009DCC(&qword_1006E39C0);
  __chkstk_darwin(v370);
  v369 = &v315[-v56];
  v57 = sub_100009DCC(&qword_1006E39C8);
  v371 = *(v57 - 8);
  v372 = v57;
  __chkstk_darwin(v57);
  v367 = &v315[-v58];
  v365 = sub_100009DCC(&qword_1006E39D0);
  __chkstk_darwin(v365);
  v368 = &v315[-v59];
  v366 = sub_100009DCC(&qword_1006E39D8);
  v60 = __chkstk_darwin(v366);
  v339 = &v315[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __chkstk_darwin(v60);
  v343 = &v315[-v63];
  __chkstk_darwin(v62);
  v359 = &v315[-v64];
  v336 = type metadata accessor for WidgetMusicItem();
  v449[3] = v336;
  v449[4] = &off_100681290;
  v65 = sub_10002AB7C(v449);
  v338 = a1;
  sub_1000A0630(a1, v65, type metadata accessor for WidgetMusicItem);
  v66 = Corner.medium.unsafeMutableAddressor();
  v67 = *(v66 + 16);
  v450 = *v66;
  v451 = v67;
  v326 = a2;
  sub_1000A84D4(v50);
  v68 = sub_1000911F8();
  v70 = v69;
  v72 = v71;
  v320 = v73;
  sub_10008CDD8(v50, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_1005709F8();
  sub_10056EDF8();
  v72 &= 1u;
  v448 = v72;
  v74 = &v54[*(v52 + 44)];
  v75 = *(sub_100009DCC(&qword_1006E1050) + 28);
  v76 = enum case for Text.Case.uppercase(_:);
  v77 = sub_10056FE68();
  v78 = *(v77 - 8);
  (*(v78 + 104))(v74 + v75, v76, v77);
  (*(v78 + 56))(v74 + v75, 0, 1, v77);
  *v74 = swift_getKeyPath();
  *v54 = v68;
  *(v54 + 1) = v70;
  v54[16] = v72;
  *(v54 + 17) = *v447;
  *(v54 + 5) = *&v447[3];
  *(v54 + 3) = v320;
  v79 = v445;
  *(v54 + 6) = v444;
  *(v54 + 7) = v79;
  *(v54 + 8) = v446;
  v80 = v441;
  *(v54 + 2) = v440;
  *(v54 + 3) = v80;
  v81 = v443;
  *(v54 + 4) = v442;
  *(v54 + 5) = v81;
  sub_10056FC38();
  v82 = sub_10056FB28();

  KeyPath = swift_getKeyPath();
  v84 = v54;
  v85 = v319;
  sub_100019B40(v84, v319, &qword_1006E39B0);
  v86 = &v85[v364[11]];
  *v86 = KeyPath;
  v86[1] = v82;
  if (qword_1006DF928 != -1)
  {
    swift_once();
  }

  v320 = sub_100009DCC(&qword_1006E1058);
  v87 = sub_10000C49C(v320, qword_1006FC0B8);
  v88 = v369;
  sub_10000CC8C(v87, &v369[*(v370 + 36)], &qword_1006E1058);
  sub_100019B40(v85, v88, &qword_1006E39B8);
  sub_1000A20BC();
  v89 = v367;
  sub_10056FF58();
  sub_10001036C(v88, &qword_1006E39C0);
  v90 = sub_10056FA88();
  sub_10056E598();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v368;
  (*(v371 + 32))(v368, v89, v372);
  v100 = &v99[*(v365 + 36)];
  *v100 = v90;
  *(v100 + 1) = v92;
  *(v100 + 2) = v94;
  *(v100 + 3) = v96;
  *(v100 + 4) = v98;
  v100[40] = 0;
  v101 = sub_10056FA58();
  sub_10056E598();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = v99;
  v111 = v359;
  sub_100019B40(v110, v359, &qword_1006E39D0);
  v112 = &v111[*(v366 + 36)];
  *v112 = v101;
  *(v112 + 1) = v103;
  *(v112 + 2) = v105;
  *(v112 + 3) = v107;
  *(v112 + 4) = v109;
  v112[40] = 0;
  v113 = v338;
  v114 = v338[3];
  *&v428 = v338[2];
  *(&v428 + 1) = v114;
  sub_10001B550();

  v115 = sub_10056FF28();
  v317 = v116;
  v318 = v115;
  v316 = v117;
  v319 = v118;
  v119 = *(v113 + *(v336 + 60));
  v120 = *(v119 + 16);
  if (v120)
  {
    v121 = (v119 + 32);
    if (qword_1006DF8E8 != -1)
    {
      swift_once();
    }

    v122 = 0;
    v123 = 0;
    v124 = _swiftEmptyArrayStorage;
    v125 = 0xE000000000000000;
    do
    {
      LODWORD(v368) = v123;
      v369 = v125;
      v370 = v124;
      v371 = v122;
      v372 = v120;
      TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07A0, *v121);
      v127 = v126;
      v129 = v128;
      v131 = v130;
      sub_10056FB08();
      sub_10056FB88();
      sub_10056FBE8();

      v364 = sub_10056FE88();
      v365 = v132;
      LODWORD(v367) = v133;
      v366 = v134;
      ++v121;

      sub_10001B5A4(v127, v129, v131 & 1);

      v135 = v368;
      v136 = v371;
      v137 = v369;
      v138 = v365;
      v139 = sub_10056FE58();
      v141 = v140;
      v143 = v142;
      v145 = v144;
      v146 = v136;
      v147 = v139;
      sub_10001B5A4(v146, v137, v135 & 1);

      v148 = v372;
      v149 = v138;
      v150 = v141;
      sub_10001B5A4(v364, v149, v367 & 1);

      v122 = v147;
      v125 = v141;
      v123 = v143;
      v124 = v145;
      v120 = v148 - 1;
    }

    while (v120);
  }

  else
  {
    v147 = 0;
    LOBYTE(v143) = 0;
    v150 = 0xE000000000000000;
  }

  v151 = v316;
  v153 = v317;
  v152 = v318;
  v154 = sub_10056FE58();
  v371 = v155;
  v372 = v154;
  v157 = v156;
  v370 = v158;
  sub_10001B5A4(v147, v150, v143 & 1);

  sub_10001B5A4(v152, v153, v151 & 1);

  sub_1005709F8();
  sub_10056EDF8();
  v159 = v157 & 1;
  v439 = v157 & 1;
  v160 = sub_10056FC58();
  v161 = swift_getKeyPath();
  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v162 = qword_1006FC0D0;
  v163 = swift_getKeyPath();
  *&v428 = v372;
  *(&v428 + 1) = v371;
  LOBYTE(v429) = v159;
  *(&v429 + 1) = v370;
  v434 = v425;
  v435 = v426;
  v436 = v427;
  v430 = v421;
  v431 = v422;
  v433 = v424;
  v432 = v423;
  *&v437 = v161;
  *(&v437 + 1) = v160;
  *&v438 = v163;
  *(&v438 + 1) = v162;
  v164 = v338;
  v166 = v338[4];
  v165 = v338[5];

  sub_1005709F8();
  if (v165)
  {
    v167 = v166;
  }

  else
  {
    v167 = 0;
  }

  if (v165)
  {
    v168 = v165;
  }

  else
  {
    v168 = 0xE000000000000000;
  }

  sub_10056EDF8();
  v420 = 0;
  v169 = sub_10056FB18();
  v170 = swift_getKeyPath();
  if (qword_1006DF938 != -1)
  {
    swift_once();
  }

  v171 = sub_10000C49C(v320, qword_1006FC0D8);
  v172 = v363;
  sub_10000CC8C(v171, &v363[*(v321 + 36)], &qword_1006E1058);
  *v172 = v167;
  *(v172 + 1) = v168;
  v172[16] = 0;
  *(v172 + 3) = _swiftEmptyArrayStorage;
  v173 = v416;
  *(v172 + 6) = v415;
  *(v172 + 7) = v173;
  *(v172 + 8) = v417;
  v174 = v412;
  *(v172 + 2) = v411;
  *(v172 + 3) = v174;
  v175 = v414;
  *(v172 + 4) = v413;
  *(v172 + 5) = v175;
  *(v172 + 18) = v170;
  *(v172 + 19) = v169;
  v176 = v353;
  sub_1000A0630(v164, v353, type metadata accessor for WidgetMusicItem);
  v177 = v322;
  sub_1000A84D4(v322);
  v178 = v324;
  v179 = *(v324 + 24);
  v180 = type metadata accessor for PlaybackButtonLarge();
  sub_10000CC8C(&v177[v179], &v176[*(v180 + 20)], &qword_1006E0618);
  sub_10008CDD8(v177, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v181 = v323;
  sub_1000A84D4(v323);
  v182 = v181[*(v178 + 20)];
  sub_10008CDD8(v181, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v176[*(v180 + 24)] = v182;
  v183 = sub_10056FA48();
  sub_10056E598();
  v185 = v184;
  v187 = v186;
  v189 = v188;
  v191 = v190;
  v192 = &v176[*(sub_100009DCC(&qword_1006E3898) + 36)];
  *v192 = v183;
  *(v192 + 1) = v185;
  *(v192 + 2) = v187;
  *(v192 + 3) = v189;
  *(v192 + 4) = v191;
  v192[40] = 0;
  v193 = sub_10056FA58();
  sub_10056E598();
  v194 = &v176[*(v358 + 36)];
  *v194 = v193;
  *(v194 + 1) = v195;
  *(v194 + 2) = v196;
  *(v194 + 3) = v197;
  *(v194 + 4) = v198;
  v194[40] = 0;
  *v354 = sub_10056FA08();
  sub_10000CC8C(&v428, v419, &qword_1006E3A00);
  v199 = sub_10056F378();
  v200 = v350;
  *v350 = v199;
  v200[1] = 0;
  *(v200 + 16) = 0;
  v201 = swift_getKeyPath();
  v202 = v341;
  sub_10000CC8C(v359, v341, &qword_1006E39D8);
  v203 = &v202[*(v325 + 36)];
  *v203 = v201;
  *(v203 + 1) = 2;
  v203[16] = 0;
  v204 = sub_10056F378();
  v205 = v347;
  *v347 = v204;
  *(v205 + 8) = 0;
  *(v205 + 16) = 0;
  v372 = sub_100009DCC(&qword_1006E3A08);
  v206 = (v205 + *(v372 + 11));
  v408 = v436;
  v409 = v437;
  v410 = v438;
  v404 = v432;
  v405 = v433;
  v407 = v435;
  v406 = v434;
  v400 = v428;
  v401 = v429;
  v403 = v431;
  v402 = v430;
  v207 = v172;
  v208 = v345;
  sub_10000CC8C(v207, v345, &qword_1006E39A8);
  v209 = v409;
  v418[8] = v408;
  v418[9] = v409;
  v210 = v410;
  v418[10] = v410;
  v211 = v404;
  v212 = v405;
  v418[4] = v404;
  v418[5] = v405;
  v213 = v407;
  v214 = v406;
  v418[7] = v407;
  v418[6] = v406;
  v215 = v400;
  v216 = v401;
  v418[0] = v400;
  v418[1] = v401;
  v217 = v403;
  v218 = v402;
  v418[3] = v403;
  v418[2] = v402;
  v206[8] = v408;
  v206[9] = v209;
  v206[10] = v210;
  v206[4] = v211;
  v206[5] = v212;
  v206[6] = v214;
  v206[7] = v213;
  *v206 = v215;
  v206[1] = v216;
  v206[2] = v218;
  v206[3] = v217;
  v369 = sub_100009DCC(&qword_1006E3A10);
  sub_10000CC8C(v208, v206 + *(v369 + 12), &qword_1006E39A8);
  sub_10000CC8C(&v428, v419, &qword_1006E3A00);
  sub_10000CC8C(v418, v419, &qword_1006E3A00);
  sub_10001036C(v208, &qword_1006E39A8);
  v419[8] = v408;
  v419[9] = v409;
  v419[10] = v410;
  v419[4] = v404;
  v419[5] = v405;
  v419[7] = v407;
  v419[6] = v406;
  v419[0] = v400;
  v419[1] = v401;
  v419[3] = v403;
  v419[2] = v402;
  sub_10001036C(v419, &qword_1006E3A00);
  v219 = v348;
  sub_10056F7E8();
  v368 = sub_100010BC0(&qword_1006E3A18, &qword_1006E3978);
  sub_1005701F8();
  v220 = *(v360 + 8);
  v360 += 8;
  v367 = v220;
  (v220)(v219, v349);
  sub_10001036C(v205, &qword_1006E3978);
  LODWORD(v366) = *(v164 + *(v336 + 64));
  if (v366 == 1)
  {
    v221 = v327;
    sub_10000CC8C(v176, v327, &qword_1006E39A0);
    v222 = 0;
  }

  else
  {
    v222 = 1;
    v221 = v327;
  }

  v223 = *(v357 + 56);
  v357 += 56;
  v365 = v223;
  v223(v221, v222, 1, v358);
  v224 = sub_100009DCC(&qword_1006E3A20);
  v225 = v350 + *(v224 + 44);
  v226 = v337;
  sub_10000CC8C(v341, v337, &qword_1006E3988);
  v227 = v362;
  v229 = v362 + 16;
  v228 = *(v362 + 16);
  v230 = v351;
  v228(v361, v342, v351);
  v231 = v352;
  sub_10000CC8C(v221, v352, &qword_1006E3970);
  *v225 = 0;
  v225[8] = 0;
  v232 = sub_100009DCC(&qword_1006E3A28);
  sub_10000CC8C(v226, &v225[v232[12]], &qword_1006E3988);
  v233 = &v225[v232[16]];
  v234 = v361;
  v370 = v228;
  v371 = v229;
  v228(v233, v361, v230);
  sub_10000CC8C(v231, &v225[v232[20]], &qword_1006E3970);
  sub_10001036C(v221, &qword_1006E3970);
  v235 = *(v227 + 8);
  (v235)(v342, v230);
  sub_10001036C(v341, &qword_1006E3988);
  sub_10001036C(v231, &qword_1006E3970);
  v362 = v227 + 8;
  v364 = v235;
  (v235)(v234, v230);
  sub_10001036C(v337, &qword_1006E3988);
  v236 = sub_10056F378();
  v237 = v355;
  *v355 = v236;
  v237[1] = 0;
  *(v237 + 16) = 0;
  sub_10000CC8C(v359, v343, &qword_1006E39D8);
  v238 = sub_10056F378();
  v239 = v347;
  *v347 = v238;
  *(v239 + 8) = 0;
  *(v239 + 16) = 0;
  v240 = (v239 + *(v372 + 11));
  v395 = v436;
  v396 = v437;
  v397 = v438;
  v391 = v432;
  v392 = v433;
  v394 = v435;
  v393 = v434;
  v387 = v428;
  v388 = v429;
  v390 = v431;
  v389 = v430;
  v241 = v345;
  sub_10000CC8C(v363, v345, &qword_1006E39A8);
  v242 = v396;
  v398[8] = v395;
  v398[9] = v396;
  v243 = v397;
  v398[10] = v397;
  v244 = v391;
  v245 = v392;
  v398[4] = v391;
  v398[5] = v392;
  v246 = v394;
  v247 = v393;
  v398[7] = v394;
  v398[6] = v393;
  v248 = v387;
  v249 = v388;
  v398[0] = v387;
  v398[1] = v388;
  v250 = v390;
  v251 = v389;
  v398[3] = v390;
  v398[2] = v389;
  v240[8] = v395;
  v240[9] = v242;
  v240[10] = v243;
  v240[4] = v244;
  v240[5] = v245;
  v240[6] = v247;
  v240[7] = v246;
  *v240 = v248;
  v240[1] = v249;
  v240[2] = v251;
  v240[3] = v250;
  sub_10000CC8C(v241, v240 + *(v369 + 12), &qword_1006E39A8);
  sub_10000CC8C(&v428, v399, &qword_1006E3A00);
  sub_10000CC8C(v398, v399, &qword_1006E3A00);
  sub_10001036C(v241, &qword_1006E39A8);
  v399[8] = v395;
  v399[9] = v396;
  v399[10] = v397;
  v399[4] = v391;
  v399[5] = v392;
  v399[7] = v394;
  v399[6] = v393;
  v399[0] = v387;
  v399[1] = v388;
  v399[3] = v390;
  v399[2] = v389;
  sub_10001036C(v399, &qword_1006E3A00);
  v252 = v348;
  sub_10056F7E8();
  sub_1005701F8();
  (v367)(v252, v349);
  sub_10001036C(v239, &qword_1006E3978);
  v253 = 1;
  if (v366)
  {
    sub_10000CC8C(v353, v335, &qword_1006E39A0);
    v253 = 0;
  }

  v254 = v335;
  (v365)(v335, v253, 1, v358);
  v255 = sub_100009DCC(&qword_1006E3A30);
  v256 = v355 + *(v255 + 44);
  v257 = v339;
  sub_10000CC8C(v343, v339, &qword_1006E39D8);
  v258 = v361;
  v259 = v351;
  v260 = v370;
  (v370)(v361, v344, v351);
  v261 = v352;
  sub_10000CC8C(v254, v352, &qword_1006E3970);
  *v256 = 0;
  v256[8] = 0;
  v262 = sub_100009DCC(&qword_1006E3A38);
  sub_10000CC8C(v257, &v256[v262[12]], &qword_1006E39D8);
  v260(&v256[v262[16]], v258, v259);
  sub_10000CC8C(v261, &v256[v262[20]], &qword_1006E3970);
  sub_10001036C(v254, &qword_1006E3970);
  v263 = v364;
  (v364)(v344, v259);
  sub_10001036C(v343, &qword_1006E39D8);
  sub_10001036C(v261, &qword_1006E3970);
  v263(v258, v259);
  sub_10001036C(v339, &qword_1006E39D8);
  v264 = sub_10056F378();
  v265 = v356;
  *v356 = v264;
  v265[1] = 0;
  *(v265 + 16) = 0;
  v266 = sub_10056F378();
  v267 = v347;
  *v347 = v266;
  *(v267 + 8) = 0;
  *(v267 + 16) = 0;
  v268 = (v267 + *(v372 + 11));
  v382 = v436;
  v383 = v437;
  v384 = v438;
  v378 = v432;
  v379 = v433;
  v380 = v434;
  v381 = v435;
  v374 = v428;
  v375 = v429;
  v376 = v430;
  v377 = v431;
  v269 = v345;
  sub_10000CC8C(v363, v345, &qword_1006E39A8);
  v270 = v383;
  v385[8] = v382;
  v385[9] = v383;
  v271 = v384;
  v385[10] = v384;
  v272 = v378;
  v273 = v379;
  v385[4] = v378;
  v385[5] = v379;
  v275 = v380;
  v274 = v381;
  v385[6] = v380;
  v385[7] = v381;
  v276 = v374;
  v277 = v375;
  v385[0] = v374;
  v385[1] = v375;
  v279 = v376;
  v278 = v377;
  v385[2] = v376;
  v385[3] = v377;
  v268[8] = v382;
  v268[9] = v270;
  v268[10] = v271;
  v268[4] = v272;
  v268[5] = v273;
  v268[6] = v275;
  v268[7] = v274;
  *v268 = v276;
  v268[1] = v277;
  v268[2] = v279;
  v268[3] = v278;
  sub_10000CC8C(v269, v268 + *(v369 + 12), &qword_1006E39A8);
  sub_10000CC8C(&v428, v386, &qword_1006E3A00);
  sub_10000CC8C(v385, v386, &qword_1006E3A00);
  sub_10001036C(v269, &qword_1006E39A8);
  v386[8] = v382;
  v386[9] = v383;
  v386[10] = v384;
  v386[4] = v378;
  v386[5] = v379;
  v386[6] = v380;
  v386[7] = v381;
  v386[0] = v374;
  v386[1] = v375;
  v386[2] = v376;
  v386[3] = v377;
  sub_10001036C(v386, &qword_1006E3A00);
  v280 = v348;
  sub_10056F7E8();
  v281 = v340;
  sub_1005701F8();
  (v367)(v280, v349);
  sub_10001036C(v267, &qword_1006E3978);
  v282 = 1;
  v283 = v330;
  if (v366)
  {
    sub_10000CC8C(v353, v330, &qword_1006E39A0);
    v282 = 0;
  }

  (v365)(v283, v282, 1, v358);
  v284 = sub_100009DCC(&qword_1006E3A40);
  v372 = &v354[*(v284 + 44)];
  v285 = sub_100009DCC(&qword_1006E3A48);
  v286 = v356 + *(v285 + 44);
  v287 = v361;
  v288 = v351;
  v289 = v370;
  (v370)(v361, v281, v351);
  v290 = v352;
  sub_10000CC8C(v283, v352, &qword_1006E3970);
  *v286 = 0;
  v286[8] = 0;
  v291 = sub_100009DCC(&qword_1006E3A50);
  v289(&v286[*(v291 + 48)], v287, v288);
  sub_10000CC8C(v290, &v286[*(v291 + 64)], &qword_1006E3970);
  sub_10001036C(v283, &qword_1006E3970);
  v292 = v364;
  (v364)(v340, v288);
  sub_10001036C(v290, &qword_1006E3970);
  v292(v287, v288);
  v293 = v350;
  v294 = v328;
  sub_10000CC8C(v350, v328, &qword_1006E3990);
  v295 = v355;
  v296 = v332;
  sub_10000CC8C(v355, v332, &qword_1006E3968);
  v297 = v356;
  v298 = v333;
  sub_10000CC8C(v356, v333, &qword_1006E3960);
  v299 = v372;
  sub_10000CC8C(v294, v372, &qword_1006E3990);
  v300 = sub_100009DCC(&qword_1006E3A58);
  sub_10000CC8C(v296, v299 + *(v300 + 48), &qword_1006E3968);
  sub_10000CC8C(v298, v299 + *(v300 + 64), &qword_1006E3960);
  sub_10001036C(v297, &qword_1006E3960);
  sub_10001036C(v295, &qword_1006E3968);
  sub_10001036C(v293, &qword_1006E3990);
  sub_10001036C(v298, &qword_1006E3960);
  sub_10001036C(v296, &qword_1006E3968);
  sub_10001036C(v294, &qword_1006E3990);
  sub_10001036C(&v428, &qword_1006E3A00);
  v301 = swift_getKeyPath();
  v302 = sub_100009DCC(&qword_1006E3A60);
  v303 = v354;
  v304 = &v354[*(v302 + 36)];
  *v304 = v301;
  v304[8] = 0;
  v305 = swift_getKeyPath();
  v306 = v303 + *(sub_100009DCC(&qword_1006E3A68) + 36);
  *v306 = v305;
  *(v306 + 8) = 1;
  *(v306 + 16) = 0;
  v307 = (v303 + *(v329 + 36));
  v308 = *(sub_100009DCC(&qword_1006E3888) + 28);
  v309 = enum case for Text.TruncationMode.tail(_:);
  v310 = sub_10056FE08();
  (*(*(v310 - 8) + 104))(v307 + v308, v309, v310);
  *v307 = swift_getKeyPath();
  sub_100053074(v449, v373);
  v311 = v331;
  sub_10000CC8C(v303, v331, &qword_1006E3998);
  v312 = v334;
  sub_100053074(v373, v334);
  v313 = sub_100009DCC(&qword_1006E3A70);
  sub_10000CC8C(v311, v312 + *(v313 + 48), &qword_1006E3998);
  sub_10001036C(&v428, &qword_1006E3A00);
  sub_10001036C(v303, &qword_1006E3998);
  sub_100053124(v449);
  sub_10001036C(v311, &qword_1006E3998);
  sub_100053124(v373);
  sub_10001036C(v353, &qword_1006E39A0);
  sub_10001036C(v363, &qword_1006E39A8);
  return sub_10001036C(v359, &qword_1006E39D8);
}