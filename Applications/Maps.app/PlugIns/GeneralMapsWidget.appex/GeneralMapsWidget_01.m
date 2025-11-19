void sub_100021B40(uint64_t a1, id a2, uint64_t a3, NSObject *a4)
{
  p_base_meths = &GeneralMapsTimelineProvider.base_meths;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v9 = sub_10007D5C8();
    sub_1000046BC(v9, qword_1000E4B28);
    swift_errorRetain();
    v10 = sub_10007D5A8();
    v11 = sub_10007E2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33[0] = v13;
      *v12 = 136446210;
      v34 = a1;
      swift_errorRetain();
      sub_100015240(&unk_1000DF540, &qword_100082988);
      v14 = sub_10007E178();
      v16 = sub_100051190(v14, v15, v33);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "GeneralMapsStateCollector: could not determine transport type: %{public}s", v12, 0xCu);
      sub_1000250AC(v13);

      p_base_meths = (&GeneralMapsTimelineProvider + 32);
    }

    else
    {
    }
  }

  if ([a2 containsKey:@"MapsSuggestionsTransportTypeKey"])
  {
    v17 = [a2 integerForKey:@"MapsSuggestionsTransportTypeKey"];
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      if (v17 <= 2)
      {
        switch(v17)
        {
          case 0:
            v18 = @"AUTOMOBILE";
            goto LABEL_27;
          case 1:
            v18 = @"TRANSIT";
            goto LABEL_27;
          case 2:
            v18 = @"WALKING";
LABEL_27:
            v21 = v18;
LABEL_28:
            v22 = v18;
            if (v22)
            {
              v23 = v22;
              v20 = sub_10007E158();
              v19 = v24;
            }

            else
            {
              v20 = 0;
              v19 = 0;
            }

            goto LABEL_31;
        }
      }

      else
      {
        if (v17 <= 4)
        {
          if (v17 == 3)
          {
            v18 = @"BICYCLE";
          }

          else
          {
            v18 = @"UNKNOWN_TRANSPORT_TYPE";
          }

          goto LABEL_27;
        }

        if (v17 == 5)
        {
          v18 = @"FERRY";
          goto LABEL_27;
        }

        if (v17 == 6)
        {
          v18 = @"RIDESHARE";
          goto LABEL_27;
        }
      }

      v18 = [NSString stringWithFormat:@"(unknown: %i)", v17, v33[0]];
      goto LABEL_28;
    }

    __break(1u);
    return;
  }

  v19 = 0xE700000000000000;
  v20 = 0x6E776F6E6B6E75;
LABEL_31:
  if (p_base_meths[77] != -1)
  {
    swift_once();
  }

  v25 = sub_10007D5C8();
  sub_1000046BC(v25, qword_1000E4B28);

  v26 = sub_10007D5A8();
  v27 = sub_10007E298();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33[1] = v19;
    v34 = v29;
    *v28 = 136315138;
    v33[0] = v20;
    sub_100015240(&unk_1000DE990, &qword_100082980);
    v30 = sub_10007E178();
    v32 = sub_100051190(v30, v31, &v34);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "GeneralMapsStateCollector: determineTransportType complete, determined=%s", v28, 0xCu);
    sub_1000250AC(v29);
  }

  else
  {
  }

  dispatch_group_leave(*(a3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
  dispatch_group_leave(a4);
}

uint64_t sub_100021FB0(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10007DEB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007DED8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = *&a3[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  aBlock[4] = sub_10002643C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8410;
  v21 = _Block_copy(aBlock);
  v22 = a3;
  v23 = a4;

  sub_10007DEC8();
  v25[1] = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v21);
  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
}

uint64_t sub_100022244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v7 = sub_10007D5C8();
  sub_1000046BC(v7, qword_1000E4B28);
  v8 = sub_10007D5A8();
  v9 = sub_10007E298();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "GeneralMapsStateCollector: GEOMapItemFromMapsSuggestionsEntry complete", v10, 2u);
  }

  result = sub_100022364(a2, a3, a4);
  if ((result & 1) == 0)
  {
    return a3(0);
  }

  return result;
}

BOOL sub_100022364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10007DF48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = sub_10007DF68();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  sub_100015ECC(&v30);
  if (v30)
  {
    v24 = v30;
    v27 = v33;
    v28 = v34;
    v29[0] = v35[0];
    *(v29 + 9) = *(v35 + 9);
    v25 = v31;
    v26 = v32;
    v14 = v30;
    sub_100024FF8(&v24);
    v15 = *(v3 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_transportModePredictor);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v23[4] = sub_1000250F8;
    v23[5] = v16;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_1000226BC;
    v23[3] = &unk_1000C82A8;
    v17 = _Block_copy(v23);

    LODWORD(v15) = [v15 transportTypeFromLocation:v14 toEntry:a1 completion:v17];

    _Block_release(v17);
    return v15 == 1;
  }

  v24 = 0;
  v27 = v33;
  v28 = v34;
  v29[0] = v35[0];
  *(v29 + 9) = *(v35 + 9);
  v25 = v31;
  v26 = v32;
  sub_100024FF8(&v24);
  if (qword_1000DE268 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = sub_10007D5C8();
  sub_1000046BC(v19, qword_1000E4B28);
  v20 = sub_10007D5A8();
  v21 = sub_10007E298();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "GeneralMapsStateCollector: determineTransportType had no origin location", v22, 2u);
  }

  return 0;
}

void sub_1000226BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100022734()
{
  v0 = sub_10007D418();
  v35 = *(v0 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007D5F8();

  if ((v40 & 1) != 0 || v39)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v19 = sub_10007D5C8();
    sub_1000046BC(v19, qword_1000E4B28);
    v20 = sub_10007D5A8();
    v21 = sub_10007E298();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_22;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "GeneralMapsStateCollector: canFetchRoutesForSuggestions location is not precise";
    goto LABEL_21;
  }

  sub_100015ECC(&v39);
  v13 = v39;
  sub_100024FF8(&v39);
  if (!v13)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v24 = sub_10007D5C8();
    sub_1000046BC(v24, qword_1000E4B28);
    v20 = sub_10007D5A8();
    v21 = sub_10007E298();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_22;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "GeneralMapsStateCollector: canFetchRoutesForSuggestions no location";
    goto LABEL_21;
  }

  Integer = GEOConfigGetInteger();
  if (Integer <= 0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v25 = sub_10007D5C8();
    sub_1000046BC(v25, qword_1000E4B28);
    v20 = sub_10007D5A8();
    v21 = sub_10007E298();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_22;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "GeneralMapsStateCollector: canFetchRoutesForSuggestions routing requests not allowed";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

LABEL_22:

    return 0;
  }

  v15 = Integer;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_10007E138();
  v18 = [v16 objectForKey:v17];

  if (v18)
  {
    sub_10007E3D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (*(&v37 + 1))
  {
    v27 = swift_dynamicCast();
    (*(v9 + 56))(v7, v27 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000256C0(v38, &qword_1000DE930, &unk_100083CC0);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_10007D3A8();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1000256C0(v7, &qword_1000DE928, &unk_100082900);
  }

LABEL_31:
  v28 = sub_10007E138();
  v29 = [v16 integerForKey:v28];

  sub_10007D408();
  LOBYTE(v28) = sub_10007D3F8();
  (*(v35 + 8))(v3, v0);
  if ((v28 & 1) != 0 && v29 >= v15)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v30 = sub_10007D5C8();
    sub_1000046BC(v30, qword_1000E4B28);
    v31 = sub_10007D5A8();
    v32 = sub_10007E298();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v31, v32, "GeneralMapsStateCollector: canFetchRoutesForSuggestions already fetched the maximum number of routes for today (%ld)", v33, 0xCu);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }

  (*(v9 + 8))(v12, v8);

  return 1;
}

void sub_100022E8C(void *a1)
{
  v2 = v1;
  v101 = a1;
  v3 = sub_10007D418();
  v94 = *(v3 - 1);
  v95 = v3;
  v4 = v94[8];
  __chkstk_darwin(v3);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v87 - v9;
  v11 = sub_10007D3B8();
  v12 = *(v11 - 8);
  v99 = v11;
  v100 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  v97 = &v87 - v16;
  v17 = __chkstk_darwin(v15);
  v98 = &v87 - v18;
  __chkstk_darwin(v17);
  v102 = &v87 - v19;
  v20 = sub_10007DF48();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = sub_10007DF68();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_45:
    swift_once();
LABEL_5:
    v93 = v24;
    v27 = sub_10007D5C8();
    v90 = sub_1000046BC(v27, qword_1000E4B28);
    v28 = sub_10007D5A8();
    v29 = sub_10007E2C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "GeneralMapsStateCollector: fetchRouteForSuggestion BEGIN", v30, 2u);
    }

    v91 = v2;
    dispatch_group_enter(*&v2[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup]);
    sub_10007D3A8();
    v31 = [objc_opt_self() standardUserDefaults];
    v32 = sub_10007E138();
    v33 = [v31 objectForKey:v32];

    if (v33)
    {
      sub_10007E3D8();
      swift_unknownObjectRelease();
    }

    else
    {
      v107 = 0u;
      v108 = 0u;
    }

    v43 = v99;
    v42 = v100;
    v103 = v107;
    v104 = v108;
    v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (*(&v108 + 1))
    {
      v44 = swift_dynamicCast();
      (*(v42 + 56))(v10, v44 ^ 1u, 1, v43);
      if ((*(v42 + 48))(v10, 1, v43) != 1)
      {
        (*(v42 + 32))(v98, v10, v43);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1000256C0(&v103, &qword_1000DE930, &unk_100083CC0);
      (*(v42 + 56))(v10, 1, 1, v43);
    }

    sub_10007D3A8();
    if ((*(v42 + 48))(v10, 1, v43) != 1)
    {
      sub_1000256C0(v10, &qword_1000DE928, &unk_100082900);
    }

LABEL_26:
    v45 = sub_10007E138();
    v46 = [v31 integerForKey:v45];

    sub_10007D408();
    LOBYTE(v45) = sub_10007D3F8();
    (v94[1])(v6, v95);
    if (v45)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v47 = 1;
    }

    isa = sub_10007D2C8().super.isa;
    v49 = sub_10007E138();
    [v31 setObject:isa forKey:v49];

    v50 = sub_10007E138();
    [v31 setInteger:v47 forKey:v50];

    BOOL = GEOConfigGetBOOL();
    v52 = GEOTransportTypeFromUserPreference();
    v53 = v101;
    if (![v101 containsKey:@"MapsSuggestionsTransportTypeKey"])
    {
      goto LABEL_34;
    }

    v54 = [v53 integerForKey:@"MapsSuggestionsTransportTypeKey"];
    v55 = v93;
    if (v54 >= 0xFFFFFFFF80000000)
    {
      v52 = v54;
      if (v54 <= 0x7FFFFFFF)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_34:
      v55 = v93;
LABEL_35:
      v95 = v31;
      if (v52 > 5)
      {
        v56 = 1;
      }

      else
      {
        v56 = qword_100082AB8[v52];
      }

      v57 = [objc_allocWithZone(MKDirectionsRequest) init];
      [v55 coordinate];
      v60 = [objc_allocWithZone(MKPlacemark) initWithCoordinate:{v58, v59}];
      v61 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v60];

      [v57 setSource:v61];
      [v57 setDestination:v96];
      [v57 setTransportType:v56];
      [v57 _setUseBackgroundURL:BOOL];
      v94 = [objc_allocWithZone(MKDirections) initWithRequest:v57];
      v62 = [objc_opt_self() sharedService];
      if (v62)
      {
        v63 = v62;
        v89 = v57;
        v87 = v47;
        v64 = [v62 defaultTraits];

        if (v64)
        {
          [v64 setIsWidgetRequest:1];
          v65 = [objc_allocWithZone(GEOLocation) initWithCLLocation:v55];
          [v64 setDeviceLocation:v65];

          [v64 addTransportType:v52];
          v66 = v99;
          v67 = v100;
          v88 = *(v100 + 16);
          v68 = v97;
          v88(v97, v102, v99);
          v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v70 = swift_allocObject();
          v71 = v91;
          v72 = v101;
          *(v70 + 16) = v91;
          *(v70 + 24) = v72;
          (*(v67 + 32))(v70 + v69, v68, v66);
          v105 = sub_100025028;
          v106 = v70;
          *&v103 = _NSConcreteStackBlock;
          *(&v103 + 1) = 1107296256;
          *&v104 = sub_100026438;
          *(&v104 + 1) = &unk_1000C8258;
          v73 = _Block_copy(&v103);
          v74 = v64;
          v75 = v71;
          v76 = v72;
          v77 = v66;

          v78 = v94;
          [v94 _calculateDirectionsWithTraits:v74 completionHandler:v73];
          _Block_release(v73);
          v101 = v74;

          v79 = v92;
          v88(v92, v102, v77);
          v80 = sub_10007D5A8();
          v81 = sub_10007E298();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 134349312;
            v83 = v97;
            sub_10007D3A8();
            sub_10007D2B8();
            v85 = v84;
            v86 = *(v100 + 8);
            v86(v83, v77);
            v86(v79, v77);
            *(v82 + 4) = v85;
            *(v82 + 12) = 2050;
            *(v82 + 14) = v87;
            _os_log_impl(&_mh_execute_header, v80, v81, "GeneralMapsStateCollector: fetchRouteForSuggestion blocked caller for %{public}f seconds, request %{public}ld", v82, 0x16u);
          }

          else
          {

            v86 = *(v100 + 8);
            v86(v79, v77);
          }

          v86(v98, v77);
          v86(v102, v77);
          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100015ECC(&v115);
  if (v115)
  {
    v109 = v115;
    v112 = v118;
    v113 = v119;
    v114[0] = v120[0];
    *(v114 + 9) = *(v120 + 9);
    v110 = v116;
    v111 = v117;
    v24 = v115;
    sub_100024FF8(&v109);
    v96 = [v101 MKMapItem];
    if (v96)
    {
      if (qword_1000DE268 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_45;
    }

    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v38 = sub_10007D5C8();
    sub_1000046BC(v38, qword_1000E4B28);
    v39 = sub_10007D5A8();
    v40 = sub_10007E2A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "GeneralMapsStateCollector: fetchRouteForSuggestion had no map item", v41, 2u);
    }
  }

  else
  {
    v109 = 0;
    v112 = v118;
    v113 = v119;
    v114[0] = v120[0];
    *(v114 + 9) = *(v120 + 9);
    v110 = v116;
    v111 = v117;
    sub_100024FF8(&v109);
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v34 = sub_10007D5C8();
    sub_1000046BC(v34, qword_1000E4B28);
    v35 = sub_10007D5A8();
    v36 = sub_10007E2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "GeneralMapsStateCollector: fetchRouteForSuggestion had no origin location", v37, 2u);
    }
  }
}

void sub_100023C54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v63 = a5;
  v64 = a3;
  v8 = sub_10007D3B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v62 = &v60 - v15;
  __chkstk_darwin(v14);
  v61 = &v60 - v16;
  v17 = sub_10007DF48();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(a1);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v20)
  {
    goto LABEL_20;
  }

  v60 = a4;
  v23 = [v20 routes];
  sub_10002620C(0, &unk_1000DE940, MKRoute_ptr);
  v24 = sub_10007E1D8();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_10007E528())
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = sub_10007E468();
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;

  v27 = [v26 _geoComposedRoute];

  v28 = v60;
  if (!v27)
  {
LABEL_20:
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v48 = sub_10007D5C8();
    sub_1000046BC(v48, qword_1000E4B28);
    (*(v9 + 16))(v13, v63, v8);
    swift_errorRetain();
    v49 = sub_10007D5A8();
    v50 = sub_10007E2A8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v68[0] = v52;
      *v51 = 136446466;
      *&v66[0] = a2;
      swift_errorRetain();
      sub_100015240(&qword_1000DE938, &qword_100082910);
      v53 = sub_10007E178();
      v55 = sub_100051190(v53, v54, v68);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2050;
      v56 = v62;
      sub_10007D3A8();
      sub_10007D2B8();
      v58 = v57;
      v59 = *(v9 + 8);
      v59(v56, v8);
      v59(v13, v8);
      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "GeneralMapsStateCollector: fetchRouteForSuggestion END (error: %{public}s, %{public}f seconds elapsed)", v51, 0x16u);
      sub_1000250AC(v52);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    a2 = v64;
    goto LABEL_26;
  }

  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  *v22 = sub_10007E328();
  (*(v18 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v17);
  v29 = sub_10007DF68();
  (*(v18 + 8))(v22, v17);
  if ((v29 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
LABEL_15:
    v39 = sub_10007D5C8();
    sub_1000046BC(v39, qword_1000E4B28);
    (*(v9 + 16))(v17, v63, v8);
    v40 = v22;
    v41 = sub_10007D5A8();
    v42 = sub_10007E2C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67174913;
      *(v43 + 4) = [v40 expectedTime] / 0x3C;

      *(v43 + 8) = 2050;
      v44 = v62;
      sub_10007D3A8();
      sub_10007D2B8();
      v46 = v45;
      v47 = *(v9 + 8);
      v47(v44, v8);
      v47(v17, v8);
      *(v43 + 10) = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "GeneralMapsStateCollector: fetchRouteForSuggestion END (route with expected travel time: %{private}u mins, %{public}f seconds elapsed)", v43, 0x12u);
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }

LABEL_26:
    dispatch_group_leave(*(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup));
    return;
  }

  v22 = v27;
  a2 = v64;
  sub_100015ECC(v68);
  v30 = v69;
  v17 = v61;
  if ((v69 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

  if (v69 >= 0)
  {
    v30 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  v31 = sub_10007E4E8();
  if (!__OFADD__(v31, 1))
  {
    v30 = sub_1000248B0(v30, v31 + 1);
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v30;
    sub_10003FCB4(v22, v28, isUniquelyReferenced_nonNull_native);
    v33 = v65;
    v34 = a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state;
    v35 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 80);
    v66[4] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 64);
    v66[5] = v35;
    v67 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 96);
    v36 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 16);
    v66[0] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state);
    v66[1] = v36;
    v37 = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 32);
    v66[3] = *(a2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector____lazy_storage___state + 48);
    v66[2] = v37;
    v38 = v68[1];
    *v34 = v68[0];
    *(v34 + 16) = v38;
    *(v34 + 32) = v68[2];
    *(v34 + 48) = v33;
    *(v34 + 81) = *&v71[9];
    *(v34 + 72) = *v71;
    *(v34 + 56) = v70;
    sub_1000256C0(v66, &qword_1000DE950, &qword_100082918);
    if (qword_1000DE268 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  __break(1u);
}

void sub_100024404(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_100024520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeneralMapsStateCollector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100024694(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000246C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024774(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_1000247CC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002620C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10002481C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_10002483C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

Swift::Int sub_1000248B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100015240(&qword_1000DE958, &qword_100082920);
    v2 = sub_10007E558();
    v19 = v2;
    sub_10007E4D8();
    v3 = sub_10007E508();
    if (v3)
    {
      v4 = v3;
      sub_10002620C(0, &qword_1000DE960, MapsSuggestionsEntry_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10002620C(0, &qword_1000DE968, GEOComposedRoute_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10003F078(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_10007E388(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10007E508();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_100024AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&qword_1000DE958, &qword_100082920);
    v3 = sub_10007E568();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100077B00(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100024BF4(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DEA20, &qword_1000829B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100015240(&qword_1000DEA28, &qword_1000829C0);
    v8 = sub_10007E568();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100026310(v10, v6, &qword_1000DEA20, &qword_1000829B8);
      v12 = *v6;
      result = sub_100077B50(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
      result = sub_100025500(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_100024DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&qword_1000DEB28, &qword_100082AB0);
    v3 = sub_10007E568();
    v4 = a1 + 32;

    while (1)
    {
      sub_100026310(v4, v13, &unk_1000DEB30, &qword_1000846D0);
      result = sub_100077BBC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100026378(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100024EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015240(&qword_1000DEB20, &unk_100083CD0);
    v3 = sub_10007E568();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_100077C00(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

void sub_100025028(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10007D3B8() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100023C54(a1, a2, v6, v7, v8);
}

uint64_t sub_1000250AC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000250F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

void sub_10002513C()
{
  v1 = *(v0 + 16);
  sub_100022E8C(*(v0 + 24));
  v2 = *(v1 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup);

  dispatch_group_leave(v2);
}

uint64_t sub_10002518C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002522C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015240(&qword_1000DE928, &unk_100082900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10002529C()
{
  v1 = *(sub_100015240(&qword_1000DE928, &unk_100082900) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10001EDF4(v5, v6, v0 + v2, v7, v8, v9);
}

uint64_t type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot()
{
  result = qword_1000DEAB8;
  if (!qword_1000DEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000253E0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10007D3B8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001D134(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_10002549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025564(uint64_t a1)
{
  v2 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000255C4()
{
  v1 = *(sub_10007D3B8() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10001D4E4(v4, v5, v6, (v0 + v2), v7, v8);
}

uint64_t sub_100025664(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000256C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100015240(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10002576C(double a1, double a2)
{
  v5 = *(sub_10007D3B8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  sub_1000186BC(v7, v8, v9, (v2 + v6), v11, v12, a1, a2);
}

void sub_100025844(uint64_t a1)
{
  v3 = *(sub_10007D3B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  sub_100018EEC(a1, v5, v1 + v4, v7, v8);
}

void sub_1000258E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  v3 = *(v2 + OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_collectorGroup);

  dispatch_group_leave(v3);
}

void sub_100025934(void *a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v7 = *(sub_10007D3B8() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + v10 + 16) & ~v8;
  v12 = *(v3 + 16);
  v13 = v3 + v10;
  v14 = *v13;
  v15 = *(v13 + 8);

  sub_100017498(a1, a2, a3, v12, v3 + v9, v14, v15, v3 + v11);
}

uint64_t sub_100025A00()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025ADC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_10007D3B8() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100025B54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100025B94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_100016C18(*(v0 + 16));
}

void sub_100025BA0()
{
  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v0 = sub_10007D5C8();
  sub_1000046BC(v0, qword_1000E4B28);
  oslog = sub_10007D5A8();
  v1 = sub_10007E298();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "GeneralMapsStateCollector: MSg invalidate sink", v2, 2u);
  }
}

uint64_t sub_100025C88()
{
  v1 = sub_10007DEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget25GeneralMapsStateCollector_isolationQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_10000485C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8938;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_10007DEC8();
  v16[1] = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_100025EF8(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10)
{
  if (a7)
  {
    v12 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeneralMapsStateCollector.NearbyCategoryCacheDomain(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GeneralMapsStateCollector.NearbyCategoryCacheDomain(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100026128()
{
  sub_10007D3B8();
  if (v0 <= 0x3F)
  {
    sub_10002620C(319, &qword_1000DEAC8, GEOLocation_ptr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GEOUserPreferredTransportType(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GEOURLOptions_MapType(319);
        if (v3 <= 0x3F)
        {
          sub_100026254();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10002620C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100026254()
{
  if (!qword_1000DEAD0)
  {
    sub_100015288(&unk_1000DEAD8, &qword_1000861D0);
    v0 = sub_10007E3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DEAD0);
    }
  }
}

unint64_t sub_1000262BC()
{
  result = qword_1000DEB18;
  if (!qword_1000DEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEB18);
  }

  return result;
}

uint64_t sub_100026310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015240(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100026378(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100026488()
{
  type metadata accessor for NearbyEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100026544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  v2 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - v4;
  v6 = sub_10007DD98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&qword_1000DF1F0, &unk_1000831F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v26 - v13;
  v15 = sub_100015240(&qword_1000DF1F8, &qword_100084360);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v26 - v17;
  v19 = enum case for Image.TemplateRenderingMode.original(_:);
  v20 = sub_10007DDC8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v14, v19, v20);
  (*(v21 + 56))(v14, 0, 1, v20);
  sub_10007DDA8();
  sub_1000256C0(v14, &qword_1000DF1F0, &unk_1000831F0);
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  sub_10007DDE8();

  (*(v7 + 8))(v10, v6);
  sub_10007DFA8();
  v22 = sub_10007DFC8();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  sub_10007DDD8();

  sub_1000256C0(v5, &qword_1000DF1E8, &unk_100084A40);
  sub_10007DE88();
  sub_10007D668();
  v23 = &v18[*(v15 + 36)];
  v24 = v28;
  *v23 = v27;
  *(v23 + 1) = v24;
  *(v23 + 2) = v29;
  sub_10002DDF4();
  sub_10007DC78();
  return sub_1000256C0(v18, &qword_1000DF1F8, &qword_100084360);
}

uint64_t sub_100026908@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = sub_100015240(&qword_1000DF1B8, &qword_1000831D0);
  v2 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v4 = (&v37 - v3);
  v5 = sub_10007D288();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for NearbyButtonAction(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100015240(&qword_1000DF1C0, &qword_1000831D8);
  v17 = *(v37 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v37);
  v20 = &v37 - v19;
  v21 = type metadata accessor for NearbyButtonContent(0);
  sub_10002CE34(v1 + *(v21 + 24), v16, type metadata accessor for NearbyButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v6 + 32))(v12, v16, v5);
  (*(v6 + 16))(v10, v12, v5);
  if (EnumCaseMultiPayload == 1)
  {
    sub_10007DB78();
  }

  else
  {
    sub_10007DB68();
  }

  (*(v6 + 8))(v12, v5);
  v23 = *(v1 + *(type metadata accessor for NearbyButtonActionLink(0) + 20));
  v24 = sub_10007DE88();
  v26 = v25;
  v27 = v37;
  v28 = v4 + *(v38 + 36);
  (*(v17 + 16))(v28, v20, v37);
  v29 = &v28[*(sub_100015240(&qword_1000DF1C8, &unk_1000831E0) + 36)];
  *v29 = v24;
  v29[1] = v26;
  *v4 = v23;
  v30 = *(v1 + 16);
  v31 = *(v1 + 24);
  v40 = v30;
  v41 = v31;
  sub_10002D9A8();

  v32 = sub_10007DBF8();
  v34 = v33;
  LOBYTE(v26) = v35;
  sub_10002DCA0();
  sub_10007DC88();
  sub_10002D9FC(v32, v34, v26 & 1);

  sub_1000256C0(v4, &qword_1000DF1B8, &qword_1000831D0);
  return (*(v17 + 8))(v20, v27);
}

uint64_t sub_100026D24@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NearbyButtonAction(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyButtonContent(0);
  sub_10002CE34(v1 + *(v7 + 24), v6, type metadata accessor for NearbyButtonAction);
  v8 = sub_10007D288();
  return (*(*(v8 - 8) + 32))(a1, v6, v8);
}

uint64_t sub_100026DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_10007DA88();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for NearbyEntryContent(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100015240(&qword_1000DF060, &qword_100083010);
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  __chkstk_darwin(v18);
  v43 = &v42 - v20;
  v21 = sub_10007DE88();
  v23 = v22;
  v24 = *(v1 + 8);
  v49 = v6;
  v50 = a1;
  if (v24 == 2)
  {
    goto LABEL_4;
  }

  v25 = *v1;
  sub_10002CE34(v1, v17, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v17[*(v14 + 20)], v13, &qword_1000DEF00, &qword_100082E50);
  v26 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v26 - 8) + 48))(v13, 1, v26);
  if (result != 1)
  {
    v28 = &v13[*(v26 + 28)];
    v29 = *v28;
    v30 = v28[8];
    sub_10002D1C4(v13, type metadata accessor for NearbyEntryContent.ResolvedContent);
    if ((v30 & 1) == 0)
    {
      v31 = v24 & 1;
      goto LABEL_6;
    }

LABEL_4:
    v25 = 0;
    v29 = 0;
    v31 = 2;
LABEL_6:
    v51 = v21;
    v52 = v23;
    v53 = v25;
    v54 = v31;
    v56 = 0;
    v57 = 0;
    v55 = v29;
    v32 = v44;
    v33 = sub_10007DA78();
    v42 = &v42;
    __chkstk_darwin(v33);
    sub_10007DE88();
    v34 = sub_100015240(&qword_1000DF068, &qword_100083018);
    v35 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
    v36 = sub_10002DDAC(&qword_1000DF070, &qword_1000DF068, &qword_100083018);
    v41 = sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60);
    v37 = v43;
    sub_10007DCB8();
    (*(v47 + 8))(v32, v48);
    v38 = sub_10007D288();
    v39 = v49;
    (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
    v51 = v34;
    v52 = v35;
    v53 = v36;
    v54 = v41;
    swift_getOpaqueTypeConformance2();
    v40 = v46;
    sub_10007DC18();
    sub_1000256C0(v39, &qword_1000DEEE0, &qword_100082E30);
    return (*(v45 + 8))(v37, v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_100027320@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for NearbyEntryContent(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CE34(a1, v11, type metadata accessor for NearbyEntryContent);
  if (*(a1 + 8) == 2)
  {
    v12 = 0;
LABEL_5:
    v16 = v12 & 1;
    *a2 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v18 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
    *(a2 + v18[9]) = KeyPath;
    sub_100015240(&qword_1000DEF28, &qword_100083930);
    swift_storeEnumTagMultiPayload();
    result = sub_10002D858(v11, a2 + v18[10], type metadata accessor for NearbyEntryContent);
    *(a2 + v18[11]) = v16;
    return result;
  }

  sub_100026310(a1 + *(v8 + 20), v7, &qword_1000DEF00, &qword_100082E50);
  v13 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v13 - 8) + 48))(v7, 1, v13);
  if (result != 1)
  {
    v15 = v7[*(v13 + 28) + 8];
    sub_10002D1C4(v7, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v12 = v15 ^ 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100027578@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v1 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v104 = &v95 - v3;
  v100 = sub_10007DA88();
  v99 = *(v100 - 8);
  v4 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100015240(&qword_1000DF078, &qword_100083020);
  v6 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v97 = (&v95 - v7);
  v8 = sub_100015240(&qword_1000DF080, &qword_100083028);
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v8);
  v101 = &v95 - v10;
  v110 = sub_10007D848();
  v120 = *(v110 - 8);
  v11 = *(v120 + 64);
  __chkstk_darwin(v110);
  v109 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v13 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v128 = &v95 - v14;
  v15 = sub_10007D638();
  v119 = *(v15 - 8);
  v16 = *(v119 + 64);
  v17 = __chkstk_darwin(v15);
  v125 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v130 = &v95 - v19;
  v20 = sub_100015240(&qword_1000DEEF8, &qword_100082E48);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v95 - v22;
  v124 = type metadata accessor for NearbyButtonActionLink(0);
  v111 = *(v124 - 8);
  v24 = *(v111 + 64);
  v25 = __chkstk_darwin(v124);
  v123 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v112 = &v95 - v28;
  __chkstk_darwin(v27);
  v122 = &v95 - v29;
  v30 = type metadata accessor for NearbyButtonContent(0);
  v127 = *(v30 - 8);
  v31 = *(v127 + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = (&v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v36 = &v95 - v35;
  v37 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v95 - v39;
  v41 = type metadata accessor for NearbyEntryContent(0);
  v42 = v41 - 8;
  v43 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v45 = &v95 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = &_swiftEmptyArrayStorage;
  v46 = type metadata accessor for NearbyMediumWidgetView(0);
  sub_10002CE34(v129 + *(v46 + 20), v45, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v45[*(v42 + 28)], v40, &qword_1000DEF00, &qword_100082E50);
  v47 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if ((*(*(v47 - 8) + 48))(v40, 1, v47) != 1)
  {
    v96 = v8;
    v48 = *&v40[*(v47 + 20)];

    sub_10002D1C4(v40, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v121 = *(v48 + 16);
    if (!v121)
    {
LABEL_25:

      v80 = sub_10007DE88();
      v81 = v97;
      *v97 = v80;
      *(v81 + 8) = v82;
      v83 = sub_100015240(&qword_1000DF088, &qword_100083030);
      sub_100028450(&v135, *&v129, v81 + *(v83 + 44));
      v84 = v98;
      v85 = sub_10007DA78();
      v130 = &v95;
      __chkstk_darwin(v85);
      sub_10007DE88();
      v86 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
      v87 = sub_10002DDAC(&qword_1000DF090, &qword_1000DF078, &qword_100083020);
      v94 = sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60);
      v88 = v101;
      v89 = v102;
      sub_10007DCB8();
      (*(v99 + 8))(v84, v100);
      sub_1000256C0(v81, &qword_1000DF078, &qword_100083020);
      v90 = sub_10007D288();
      v91 = v104;
      (*(*(v90 - 8) + 56))(v104, 1, 1, v90);
      v131 = v89;
      v132 = v86;
      v133 = v87;
      v134 = v94;
      swift_getOpaqueTypeConformance2();
      v92 = v96;
      sub_10007DC18();
      sub_1000256C0(v91, &qword_1000DEEE0, &qword_100082E30);
      (*(v103 + 8))(v88, v92);
    }

    v49 = 0;
    v108 = (v120 + 8);
    v107 = (v119 + 32);
    v117 = (v119 + 88);
    v118 = (v119 + 16);
    v116 = enum case for ColorScheme.light(_:);
    v106 = enum case for ColorScheme.dark(_:);
    v115 = (v119 + 8);
    v114 = (v111 + 56);
    v50 = &_swiftEmptyArrayStorage;
    v113 = (v111 + 48);
    v51 = v128;
    v52 = v130;
    v119 = v48;
    v120 = v15;
    while (v49 < *(v48 + 16))
    {
      sub_10002CE34(v48 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v49, v36, type metadata accessor for NearbyButtonContent);
      if (v50[2] > 1uLL)
      {
        sub_10002D1C4(v36, type metadata accessor for NearbyButtonContent);
        goto LABEL_25;
      }

      sub_10002CE34(v36, v34, type metadata accessor for NearbyButtonContent);
      sub_100026310(v129, v51, &qword_1000DEC18, &qword_100082C10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v107)(v52, v51, v15);
      }

      else
      {
        v53 = *v51;
        sub_10007E2B8();
        v54 = sub_10007DA98();
        sub_10007D598();

        v51 = v128;
        v55 = v109;
        sub_10007D838();
        swift_getAtKeyPath();

        (*v108)(v55, v110);
      }

      v56 = v52;
      v58 = *v34;
      v57 = v34[1];
      v59 = v125;
      (*v118)(v125, v56, v15);
      v60 = (*v117)(v59, v15);
      if (v60 == v116)
      {
        v57 = v58;
        v61 = v124;
      }

      else
      {
        v61 = v124;
        if (v60 != v106)
        {
          goto LABEL_28;
        }
      }

      if (v57)
      {
        v62 = v34;
        v63 = v49;
        v64 = v130;
        v65 = v34;
        v66 = v50;
        v67 = v23;
        v68 = v36;
        v69 = v15;
        v70 = v112;
        sub_10002CE34(v62, v112, type metadata accessor for NearbyButtonContent);
        v71 = v57;
        v72 = sub_10007DD78();
        v73 = v64;
        v49 = v63;
        v74 = v69;
        v36 = v68;
        v23 = v67;
        v50 = v66;
        v34 = v65;
        v51 = v128;
        (*v115)(v73, v74);
        sub_10002D1C4(v34, type metadata accessor for NearbyButtonContent);
        *(v70 + *(v61 + 20)) = v72;
        sub_10002D858(v70, v23, type metadata accessor for NearbyButtonActionLink);
        v75 = 0;
      }

      else
      {
        (*v115)(v130, v15);
        sub_10002D1C4(v34, type metadata accessor for NearbyButtonContent);
        v75 = 1;
      }

      (*v114)(v23, v75, 1, v61);
      if ((*v113)(v23, 1, v61) == 1)
      {
        sub_10002D1C4(v36, type metadata accessor for NearbyButtonContent);
        sub_1000256C0(v23, &qword_1000DEEF8, &qword_100082E48);
        v48 = v119;
        v15 = v120;
        v52 = v130;
      }

      else
      {
        v76 = v122;
        sub_10002D858(v23, v122, type metadata accessor for NearbyButtonActionLink);
        sub_10002CE34(v76, v123, type metadata accessor for NearbyButtonActionLink);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v120;
        v52 = v130;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_1000771EC(0, v50[2] + 1, 1, v50);
        }

        v79 = v50[2];
        v78 = v50[3];
        if (v79 >= v78 >> 1)
        {
          v50 = sub_1000771EC(v78 > 1, v79 + 1, 1, v50);
        }

        sub_10002D1C4(v122, type metadata accessor for NearbyButtonActionLink);
        sub_10002D1C4(v36, type metadata accessor for NearbyButtonContent);
        v50[2] = v79 + 1;
        sub_10002D858(v123, v50 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v79, type metadata accessor for NearbyButtonActionLink);
        v135 = v50;
        v48 = v119;
      }

      if (v121 == ++v49)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100028450@<X0>(uint64_t *a1@<X0>, float64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v64.f64[0] = a2;
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v59 - v6;
  v8 = type metadata accessor for NearbyEntryContent(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100015240(&qword_1000DF098, &qword_100083038);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v19 = sub_100015240(&qword_1000DF0A0, &qword_100083040);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  v24 = sub_100015240(&qword_1000DF0A8, &qword_100083048);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v62 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v59 - v28;
  if (*(*a1 + 16))
  {
    *v23 = sub_10007D948();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v30 = *(sub_100015240(&qword_1000DF0B8, &qword_100083058) + 44);
    *&v61 = v29;
    v31 = v7;
    v32 = &v23[v30];
    *v18 = sub_10007D878();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v33 = sub_100015240(&qword_1000DF0C0, &qword_100083060);
    sub_100028A14(a1, &v18[*(v33 + 44)]);
    v60 = v19;
    sub_100026310(v18, v16, &qword_1000DF098, &qword_100083038);
    *v32 = 0;
    v32[8] = 1;
    *(v32 + 2) = 0x3FF0000000000000;
    v34 = &v32[*(sub_100015240(&qword_1000DF0C8, &qword_100083068) + 48)];
    v7 = v31;
    v29 = v61;
    sub_100026310(v16, v34, &qword_1000DF098, &qword_100083038);
    sub_1000256C0(v18, &qword_1000DF098, &qword_100083038);
    sub_1000256C0(v16, &qword_1000DF098, &qword_100083038);
    sub_10002DB0C(v23, v29, &qword_1000DF0A0, &qword_100083040);
    (*(v20 + 56))(v29, 0, 1, v60);
  }

  else
  {
    (*(v20 + 56))(&v59 - v28, 1, 1, v19);
  }

  v35 = *&v64.f64[0] + *(type metadata accessor for NearbyMediumWidgetView(0) + 20);
  v36 = *(v35 + 8);
  v64 = 0u;
  if (v36 == 2)
  {
    goto LABEL_7;
  }

  v37 = *v35;
  sub_10002CE34(v35, v11, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v11[*(v8 + 20)], v7, &qword_1000DEF00, &qword_100082E50);
  v38 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v38 - 8) + 48))(v7, 1, v38);
  if (result != 1)
  {
    v40 = &v7[*(v38 + 28)];
    v41 = *v40;
    v42 = v40[8];
    sub_10002D1C4(v7, type metadata accessor for NearbyEntryContent.ResolvedContent);
    if ((v42 & 1) == 0)
    {
      v44 = objc_opt_self();
      v45 = [v44 mainScreen];
      [v45 scale];
      v64 = v46;

      v47 = [v44 mainScreen];
      [v47 scale];
      v61 = v48;

      v49.f64[0] = v64.f64[0];
      *&v49.f64[1] = v61;
      __asm { FMOV            V0.2D, #1.0 }

      v55 = vdivq_f64(_Q0, v49);
      v64 = vmulq_f64(v55, vrndaq_f64(vdivq_f64(xmmword_100082AF0, v55)));
      v43 = v36 & 1;
      goto LABEL_9;
    }

LABEL_7:
    v37 = 0;
    v41 = 0;
    v43 = 2;
LABEL_9:
    v56 = v62;
    sub_100026310(v29, v62, &qword_1000DF0A8, &qword_100083048);
    v57 = v63;
    sub_100026310(v56, v63, &qword_1000DF0A8, &qword_100083048);
    v58 = v57 + *(sub_100015240(&qword_1000DF0B0, &qword_100083050) + 48);
    *v58 = v37;
    *(v58 + 8) = v43;
    *(v58 + 16) = v41;
    *(v58 + 24) = v64;
    sub_1000256C0(v29, &qword_1000DF0A8, &qword_100083048);
    return sub_1000256C0(v56, &qword_1000DF0A8, &qword_100083048);
  }

  __break(1u);
  return result;
}

uint64_t sub_100028A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100015240(&qword_1000DF0D0, &qword_100083070);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v17 - v10);
  *v11 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v5 + 44)) = 0x4030000000000000;
  v12 = v11 + *(v5 + 48);
  *v12 = sub_10007D948();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v12[*(sub_100015240(&qword_1000DF0D8, &qword_100083078) + 44)];
  *v13 = sub_10007D878();
  *(v13 + 1) = 0x402E000000000000;
  v13[16] = 0;
  v14 = sub_100015240(&qword_1000DF0E0, &qword_100083080);
  sub_100028BEC(a1, &v13[*(v14 + 44)]);
  sub_100026310(v11, v9, &qword_1000DF0D0, &qword_100083070);
  sub_100026310(v9, a2, &qword_1000DF0D0, &qword_100083070);
  v15 = a2 + *(sub_100015240(&qword_1000DF0E8, &qword_100083088) + 48);
  sub_1000256C0(v11, &qword_1000DF0D0, &qword_100083070);
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v15 + 16) = 0x3FF0000000000000;
  return sub_1000256C0(v9, &qword_1000DF0D0, &qword_100083070);
}

uint64_t sub_100028BEC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v16 = a1;
  v17 = a2;
  v3 = sub_100015240(&qword_1000DF0F0, &qword_100083090);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v18 = *v2;

  sub_100015240(&qword_1000DF0F8, &qword_100083098);
  sub_10007D288();
  type metadata accessor for NearbyButtonActionLink(0);
  sub_10002DDAC(&qword_1000DF100, &qword_1000DF0F8, &qword_100083098);
  sub_10002CE9C(&qword_1000DF108, type metadata accessor for NearbyButtonActionLink);
  sub_10002CE9C(&qword_1000DF110, type metadata accessor for NearbyButtonActionLink);
  sub_10007DE38();
  LOBYTE(v2) = *(*v16 + 16) != 1;
  v11 = v4[2];
  v11(v8, v10, v3);
  v12 = v17;
  v11(v17, v8, v3);
  v12[*(sub_100015240(&qword_1000DF118, &unk_1000830A0) + 48)] = v2;
  v13 = v4[1];
  v13(v10, v3);
  return (v13)(v8, v3);
}

uint64_t sub_100028EB8@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v1 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v95 = &v86 - v3;
  v90 = sub_10007DA88();
  v89 = *(v90 - 8);
  v4 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100015240(&qword_1000DEEE8, &qword_100082E38);
  v6 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v87 = (&v86 - v7);
  v94 = sub_100015240(&qword_1000DEEF0, &qword_100082E40);
  v93 = *(v94 - 8);
  v8 = *(v93 + 64);
  __chkstk_darwin(v94);
  v91 = &v86 - v9;
  v101 = sub_10007D848();
  v110 = *(v101 - 8);
  v10 = *(v110 + 64);
  __chkstk_darwin(v101);
  v100 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v12 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v117 = &v86 - v13;
  v14 = sub_10007D638();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v114 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v86 - v19;
  v21 = type metadata accessor for NearbyButtonContent(0);
  v116 = *(v21 - 8);
  v22 = *(v116 + 64);
  __chkstk_darwin(v21 - 8);
  v24 = (&v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100015240(&qword_1000DEEF8, &qword_100082E48);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v86 - v27;
  v29 = type metadata accessor for NearbyButtonActionLink(0);
  v102 = *(v29 - 8);
  v30 = *(v102 + 64);
  v31 = __chkstk_darwin(v29);
  v113 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v103 = &v86 - v34;
  __chkstk_darwin(v33);
  v112 = &v86 - v35;
  v36 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v86 - v38;
  v40 = type metadata accessor for NearbyEntryContent(0);
  v41 = v40 - 8;
  v42 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v44 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = swift_allocObject();
  *(v119 + 16) = &_swiftEmptyArrayStorage;
  v45 = type metadata accessor for NearbyLargeWidgetView(0);
  sub_10002CE34(v120 + *(v45 + 20), v44, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(&v44[*(v41 + 28)], v39, &qword_1000DEF00, &qword_100082E50);
  v46 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  if ((*(*(v46 - 8) + 48))(v39, 1, v46) != 1)
  {
    v47 = *&v39[*(v46 + 20)];

    sub_10002D1C4(v39, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v118 = v47;
    v48 = v117;
    v111 = *(v47 + 16);
    if (!v111)
    {
LABEL_22:

      v71 = sub_10007DE88();
      v72 = v87;
      *v87 = v71;
      *(v72 + 8) = v73;
      v74 = sub_100015240(&qword_1000DEF08, &qword_100082E58);
      sub_100029CB8(v119, *&v120, v72 + *(v74 + 44));
      v75 = v88;
      v76 = sub_10007DA78();
      __chkstk_darwin(v76);
      sub_10007DE88();
      v77 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
      v78 = sub_10002DDAC(&qword_1000DEF18, &qword_1000DEEE8, &qword_100082E38);
      v85 = sub_10002DDAC(&qword_1000DEF20, &qword_1000DEF10, &qword_100082E60);
      v79 = v91;
      v80 = v92;
      sub_10007DCB8();
      (*(v89 + 8))(v75, v90);
      sub_1000256C0(v72, &qword_1000DEEE8, &qword_100082E38);
      v81 = sub_10007D288();
      v82 = v95;
      (*(*(v81 - 8) + 56))(v95, 1, 1, v81);
      v121 = v80;
      v122 = v77;
      v123 = v78;
      v124 = v85;
      swift_getOpaqueTypeConformance2();
      v83 = v94;
      sub_10007DC18();
      sub_1000256C0(v82, &qword_1000DEEE0, &qword_100082E30);
      (*(v93 + 8))(v79, v83);
    }

    v49 = 0;
    v109 = v118 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v99 = (v110 + 8);
    v98 = (v15 + 32);
    v107 = (v15 + 88);
    v108 = (v15 + 16);
    v106 = enum case for ColorScheme.light(_:);
    v97 = enum case for ColorScheme.dark(_:);
    v105 = (v15 + 8);
    v104 = (v102 + 56);
    v50 = (v102 + 48);
    v110 = v29;
    while (v49 < *(v118 + 16))
    {
      sub_10002CE34(v109 + *(v116 + 72) * v49, v24, type metadata accessor for NearbyButtonContent);
      sub_100026310(v120, v48, &qword_1000DEC18, &qword_100082C10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v98)(v20, v48, v14);
      }

      else
      {
        v51 = *v48;
        sub_10007E2B8();
        v52 = sub_10007DA98();
        v48 = v117;
        sub_10007D598();

        v53 = v100;
        sub_10007D838();
        swift_getAtKeyPath();

        (*v99)(v53, v101);
      }

      v54 = v20;
      v56 = *v24;
      v55 = v24[1];
      v57 = v114;
      v58 = v54;
      (*v108)(v114);
      v59 = (*v107)(v57, v14);
      if (v59 == v106)
      {
        v55 = v56;
      }

      else if (v59 != v97)
      {
        goto LABEL_25;
      }

      v20 = v58;
      if (v55)
      {
        v60 = v103;
        sub_10002CE34(v24, v103, type metadata accessor for NearbyButtonContent);
        v61 = v55;
        v62 = sub_10007DD78();
        (*v105)(v58, v14);
        sub_10002D1C4(v24, type metadata accessor for NearbyButtonContent);
        v63 = v110;
        *(v60 + *(v110 + 20)) = v62;
        sub_10002D858(v60, v28, type metadata accessor for NearbyButtonActionLink);
        v64 = 0;
      }

      else
      {
        (*v105)(v58, v14);
        sub_10002D1C4(v24, type metadata accessor for NearbyButtonContent);
        v64 = 1;
        v63 = v110;
      }

      (*v104)(v28, v64, 1, v63);
      if ((*v50)(v28, 1, v63) == 1)
      {
        sub_1000256C0(v28, &qword_1000DEEF8, &qword_100082E48);
      }

      else
      {
        v65 = v112;
        sub_10002D858(v28, v112, type metadata accessor for NearbyButtonActionLink);
        sub_10002CE34(v65, v113, type metadata accessor for NearbyButtonActionLink);
        v66 = v119;
        v67 = *(v119 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + 16) = v67;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = sub_1000771EC(0, v67[2] + 1, 1, v67);
          *(v119 + 16) = v67;
        }

        v70 = v67[2];
        v69 = v67[3];
        if (v70 >= v69 >> 1)
        {
          v67 = sub_1000771EC(v69 > 1, v70 + 1, 1, v67);
          *(v119 + 16) = v67;
        }

        sub_10002D1C4(v112, type metadata accessor for NearbyButtonActionLink);
        v67[2] = v70 + 1;
        sub_10002D858(v113, v67 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v70, type metadata accessor for NearbyButtonActionLink);
        *(v119 + 16) = v67;
        v48 = v117;
      }

      if (v111 == ++v49)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100029CB8@<X0>(uint64_t a1@<X0>, float64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v64.f64[0] = a2;
  v4 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v59 - v6;
  *&v61 = type metadata accessor for NearbyEntryContent(0);
  v8 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DEF30, &qword_100082EA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v59 - v15);
  v17 = sub_100015240(&qword_1000DEF38, &qword_100082EA8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v59 - v20;
  v22 = sub_100015240(&qword_1000DEF40, &qword_100082EB0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v62 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v59 - v26;
  swift_beginAccess();
  v28 = 1;
  if (*(*(a1 + 16) + 16))
  {
    *v21 = sub_10007D948();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v29 = *(sub_100015240(&qword_1000DEF50, &qword_100082EC0) + 44);
    v59 = v7;
    v30 = &v21[v29];
    *v16 = swift_getKeyPath();
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    *(v16 + *(v10 + 36)) = 0x4030000000000000;
    v31 = v16 + *(v10 + 40);
    *v31 = sub_10007D878();
    *(v31 + 1) = 0;
    v31[16] = 1;
    v32 = sub_100015240(&qword_1000DEF60, &qword_100082F00);
    sub_10002A2B4(a1, &v31[*(v32 + 44)]);
    sub_100026310(v16, v14, &qword_1000DEF30, &qword_100082EA0);
    *v30 = 0;
    v30[8] = 1;
    *(v30 + 2) = 0x3FF0000000000000;
    v33 = &v30[*(sub_100015240(&qword_1000DEF68, &qword_100082F08) + 48)];
    v7 = v59;
    sub_100026310(v14, v33, &qword_1000DEF30, &qword_100082EA0);
    sub_1000256C0(v16, &qword_1000DEF30, &qword_100082EA0);
    sub_1000256C0(v14, &qword_1000DEF30, &qword_100082EA0);
    sub_10002DB0C(v21, v27, &qword_1000DEF38, &qword_100082EA8);
    v28 = 0;
  }

  (*(v18 + 56))(v27, v28, 1, v17);
  v34 = *&v64.f64[0] + *(type metadata accessor for NearbyLargeWidgetView(0) + 20);
  v35 = *(v34 + 8);
  v64 = 0u;
  if (v35 == 2)
  {
    goto LABEL_6;
  }

  v36 = *v34;
  v37 = v60;
  sub_10002CE34(v34, v60, type metadata accessor for NearbyEntryContent);
  sub_10002DB0C(v37 + *(v61 + 20), v7, &qword_1000DEF00, &qword_100082E50);
  v38 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v38 - 8) + 48))(v7, 1, v38);
  if (result != 1)
  {
    v40 = &v7[*(v38 + 28)];
    v41 = *v40;
    v42 = v40[8];
    sub_10002D1C4(v7, type metadata accessor for NearbyEntryContent.ResolvedContent);
    if ((v42 & 1) == 0)
    {
      v44 = objc_opt_self();
      v45 = [v44 mainScreen];
      [v45 scale];
      v64 = v46;

      v47 = [v44 mainScreen];
      [v47 scale];
      v61 = v48;

      v49.f64[0] = v64.f64[0];
      *&v49.f64[1] = v61;
      __asm { FMOV            V0.2D, #1.0 }

      v55 = vdivq_f64(_Q0, v49);
      v64 = vmulq_f64(v55, vrndaq_f64(vdivq_f64(xmmword_100082B00, v55)));
      v43 = v35 & 1;
      goto LABEL_8;
    }

LABEL_6:
    v36 = 0;
    v41 = 0;
    v43 = 2;
LABEL_8:
    v56 = v62;
    sub_100026310(v27, v62, &qword_1000DEF40, &qword_100082EB0);
    v57 = v63;
    sub_100026310(v56, v63, &qword_1000DEF40, &qword_100082EB0);
    v58 = v57 + *(sub_100015240(&qword_1000DEF48, &qword_100082EB8) + 48);
    *v58 = v36;
    *(v58 + 8) = v43;
    *(v58 + 16) = v41;
    *(v58 + 24) = v64;
    sub_1000256C0(v27, &qword_1000DEF40, &qword_100082EB0);
    return sub_1000256C0(v56, &qword_1000DEF40, &qword_100082EB0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A2B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_100015240(&qword_1000DEF70, &qword_100082F10);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v37 = &v37 - v5;
  v6 = sub_100015240(&qword_1000DEF78, &qword_100082F18);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_100015240(&qword_1000DEF80, &unk_100082F20);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  v14 = __chkstk_darwin(v12);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  swift_beginAccess();
  v18 = *(*(a1 + 16) + 16);
  v45 = 0;
  v46 = v18;
  swift_getKeyPath();

  sub_100015240(&qword_1000DEF88, &qword_100082F48);
  sub_100015240(&qword_1000DEF90, &qword_100082F50);
  sub_10002D8C8();
  sub_10002DDAC(&qword_1000DEFA8, &qword_1000DEF90, &qword_100082F50);
  v19 = v17;
  sub_10007DE28();
  swift_beginAccess();
  if (*(*(a1 + 16) + 16) == 1)
  {
    sub_100015240(&qword_1000DEFB8, &qword_100082F60);
    sub_10002DDAC(&qword_1000DEFC0, &qword_1000DEFB8, &qword_100082F60);
    v20 = v37;
    sub_10007DE48();
    v21 = v41;
    v22 = v20;
    v23 = v42;
    (*(v41 + 32))(v11, v22, v42);
    v24 = 0;
    v25 = v23;
    v26 = v11;
    v27 = v21;
  }

  else
  {
    v24 = 1;
    v27 = v41;
    v25 = v42;
    v26 = v11;
  }

  (*(v27 + 56))(v26, v24, 1, v25);
  v28 = v38;
  v29 = v39;
  v30 = *(v38 + 16);
  v31 = v40;
  v30(v40, v19, v39);
  v32 = v43;
  sub_100026310(v26, v43, &qword_1000DEF78, &qword_100082F18);
  v33 = v44;
  v30(v44, v31, v29);
  v34 = sub_100015240(&qword_1000DEFB0, &qword_100082F58);
  sub_100026310(v32, &v33[*(v34 + 48)], &qword_1000DEF78, &qword_100082F18);
  sub_1000256C0(v26, &qword_1000DEF78, &qword_100082F18);
  v35 = *(v28 + 8);
  v35(v19, v29);
  sub_1000256C0(v32, &qword_1000DEF78, &qword_100082F18);
  return (v35)(v31, v29);
}

uint64_t sub_10002A76C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NearbyButtonActionLink(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *a1;
  result = swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = *(a2 + 16);
  v17 = *(v16 + 16);
  if (v14 >= v17)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_10002CE34(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v13, type metadata accessor for NearbyButtonActionLink);
  v18 = v14 >= v17 - 1;
  v19 = !v18;
  sub_10002CE34(v13, v11, type metadata accessor for NearbyButtonActionLink);
  sub_10002CE34(v11, a3, type metadata accessor for NearbyButtonActionLink);
  v20 = a3 + *(sub_100015240(&qword_1000DEFC8, &qword_100082F68) + 48);
  *v20 = 0;
  *(v20 + 8) = v19;
  *(v20 + 9) = v18;
  sub_10002D1C4(v13, type metadata accessor for NearbyButtonActionLink);
  return sub_10002D1C4(v11, type metadata accessor for NearbyButtonActionLink);
}

uint64_t sub_10002A93C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100015240(&qword_1000DEF00, &qword_100082E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for NearbyEntryContent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + *(a2(0) + 20);
  sub_10002CE34(v14, v13, type metadata accessor for NearbyEntryContent);
  if (*(v14 + 8) == 2)
  {
    v15 = 0;
LABEL_5:
    v19 = v15 & 1;
    *a3 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v21 = sub_100015240(&qword_1000DEF10, &qword_100082E60);
    *(a3 + v21[9]) = KeyPath;
    sub_100015240(&qword_1000DEF28, &qword_100083930);
    swift_storeEnumTagMultiPayload();
    result = sub_10002D858(v13, a3 + v21[10], type metadata accessor for NearbyEntryContent);
    *(a3 + v21[11]) = v19;
    return result;
  }

  sub_100026310(v14 + *(v10 + 20), v9, &qword_1000DEF00, &qword_100082E50);
  v16 = type metadata accessor for NearbyEntryContent.ResolvedContent(0);
  result = (*(*(v16 - 8) + 48))(v9, 1, v16);
  if (result != 1)
  {
    v18 = v9[*(v16 + 28) + 8];
    sub_10002D1C4(v9, type metadata accessor for NearbyEntryContent.ResolvedContent);
    v15 = v18 ^ 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002ABC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = sub_100015240(&qword_1000DEFE8, &qword_100082F80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v27 - v5);
  v7 = sub_100015240(&qword_1000DEFF0, &qword_100082F88);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  *v6 = sub_10007DE88();
  v6[1] = v14;
  v15 = sub_100015240(&qword_1000DEFF8, &qword_100082F90);
  sub_10002AEBC(v6 + *(v15 + 44));
  sub_10002DDAC(&qword_1000DF000, &qword_1000DEFE8, &qword_100082F80);
  sub_10007DC78();
  sub_1000256C0(v6, &qword_1000DEFE8, &qword_100082F80);
  v16 = sub_10007D958();
  LOBYTE(v33[0]) = 0;
  sub_10002B2BC(v28, v30);
  *&v29[7] = v30[0];
  *&v29[23] = v30[1];
  *&v29[39] = v30[2];
  *&v29[55] = v30[3];
  v17 = v33[0];
  sub_100006D48(v13, v11);
  sub_100006D48(v11, a2);
  v18 = sub_100015240(&qword_1000DF008, &qword_100082F98);
  v19 = a2 + *(v18 + 48);
  v31[0] = v16;
  v31[1] = 0;
  v32[0] = v17;
  *&v32[1] = *v29;
  *&v32[17] = *&v29[16];
  *&v32[33] = *&v29[32];
  *&v32[49] = *&v29[48];
  v20 = *&v29[63];
  *&v32[64] = *&v29[63];
  v21 = *v32;
  *v19 = v16;
  *(v19 + 16) = v21;
  v22 = *&v32[16];
  v23 = *&v32[32];
  v24 = *&v32[48];
  *(v19 + 80) = v20;
  *(v19 + 48) = v23;
  *(v19 + 64) = v24;
  *(v19 + 32) = v22;
  v25 = a2 + *(v18 + 64);
  *v25 = 0;
  *(v25 + 8) = 0;
  sub_100026310(v31, v33, &qword_1000DF010, &qword_100082FA0);
  sub_1000256C0(v13, &qword_1000DEFF0, &qword_100082F88);
  v33[0] = v16;
  v33[1] = 0;
  v34 = v17;
  v36 = *&v29[16];
  v37 = *&v29[32];
  *v38 = *&v29[48];
  *&v38[15] = *&v29[63];
  v35 = *v29;
  sub_1000256C0(v33, &qword_1000DF010, &qword_100082FA0);
  return sub_1000256C0(v11, &qword_1000DEFF0, &qword_100082F88);
}

uint64_t sub_10002AEBC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100015240(&qword_1000DF018, &qword_100082FA8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_100015240(&qword_1000DF020, &qword_100082FB0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_100015240(&qword_1000DF028, &qword_100082FB8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  sub_10007DE68();
  *&v18[*(sub_100015240(&qword_1000DF030, &qword_100082FC0) + 56)] = 256;
  sub_10007DE88();
  sub_10007D668();
  v19 = &v18[*(v13 + 44)];
  v20 = v40;
  *v19 = v39;
  *(v19 + 1) = v20;
  *(v19 + 2) = v41;
  v21 = sub_10007DD88();
  v22 = sub_10007DB08();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = sub_10007DB28();
  sub_1000256C0(v4, &qword_1000DF018, &qword_100082FA8);
  KeyPath = swift_getKeyPath();
  v36 = v21;
  v37 = KeyPath;
  v38 = v23;
  sub_10007DB18();
  sub_100015240(&qword_1000DF038, &qword_100082FF8);
  sub_10002DA1C();
  sub_10007DC48();

  v25 = v35;
  sub_100026310(v18, v35, &qword_1000DF028, &qword_100082FB8);
  v26 = v6[2];
  v27 = v33;
  v26(v33, v11, v5);
  v28 = v25;
  v29 = v34;
  sub_100026310(v28, v34, &qword_1000DF028, &qword_100082FB8);
  v30 = sub_100015240(&qword_1000DF058, &qword_100083008);
  v26((v29 + *(v30 + 48)), v27, v5);
  v31 = v6[1];
  v31(v11, v5);
  sub_1000256C0(v18, &qword_1000DF028, &qword_100082FB8);
  v31(v27, v5);
  return sub_1000256C0(v35, &qword_1000DF028, &qword_100082FB8);
}

uint64_t sub_10002B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = type metadata accessor for NearbyAccessoryRectangularWidgetView(0);
  v3 = (a1 + *(v45 + 28));
  v47 = *v3;
  v49 = v3[1];
  sub_10002D9A8();

  v4 = sub_10007DBF8();
  v37 = v5;
  v36 = v6;
  sub_10007DA38();
  v7 = sub_10007DBA8();
  v9 = v8;
  v11 = v10;
  sub_10007DB38();
  v12 = sub_10007DBB8();
  v14 = v13;
  v16 = v15;

  sub_10002D9FC(v7, v9, v11 & 1);

  sub_10007DB18();
  v17 = sub_10007DB88();
  v42 = v18;
  v43 = v17;
  v41 = v19;
  v40 = v20;
  sub_10002D9FC(v12, v14, v16 & 1);

  sub_10002D9FC(v4, v37, v36 & 1);

  v21 = (a1 + *(v45 + 32));
  v48 = *v21;
  v50 = v21[1];

  v44 = sub_10007DBF8();
  v39 = v22;
  LOBYTE(v7) = v23;
  sub_10007DA48();
  v24 = sub_10007DBA8();
  v26 = v25;
  v28 = v27;
  sub_10007DAF8();
  v29 = sub_10007DBB8();
  v31 = v30;
  LOBYTE(v4) = v32;
  v34 = v33;

  sub_10002D9FC(v24, v26, v28 & 1);

  sub_10002D9FC(v44, v39, v7 & 1);

  *a2 = v43;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v29;
  *(a2 + 40) = v31;
  *(a2 + 48) = v4 & 1;
  *(a2 + 56) = v34;
  sub_10002DA0C(v43, v41, v40 & 1);

  sub_10002DA0C(v29, v31, v4 & 1);

  sub_10002D9FC(v29, v31, v4 & 1);

  sub_10002D9FC(v43, v41, v40 & 1);
}

uint64_t sub_10002B5F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v19 - v12);
  v14 = a1(0);
  sub_100026310(v2 + *(v14 + 20), v13, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10007DFF8();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_10007E2B8();
    v18 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10002B800()
{
  v1 = sub_10007DFF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_100015240(&qword_1000DEFD0, &qword_100082F70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  *v13 = sub_10007D878();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_100015240(&qword_1000DEFD8, &qword_100082F78);
  sub_10002ABC4(v0, &v13[*(v14 + 44)]);
  sub_10002B5F0(type metadata accessor for NearbyAccessoryRectangularWidgetView, v5);
  sub_10006707C(v5);
  (*(v2 + 8))(v5, v1);
  v15 = sub_10007D288();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_10002DDAC(&qword_1000DEFE0, &qword_1000DEFD0, &qword_100082F70);
  sub_10007DC18();
  sub_1000256C0(v9, &qword_1000DEEE0, &qword_100082E30);
  return sub_1000256C0(v13, &qword_1000DEFD0, &qword_100082F70);
}

uint64_t sub_10002BA80@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v66 = type metadata accessor for NearbyAccessoryRectangularWidgetView(0);
  v2 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v61 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_100015240(&qword_1000DEBE0, &qword_100082BA8);
  v4 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &v59 - v5;
  v74 = sub_100015240(&qword_1000DEBE8, &qword_100082BB0);
  v6 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v67 = &v59 - v7;
  v64 = type metadata accessor for NearbyLargeWidgetView(0);
  v8 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v60 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for NearbyMediumWidgetView(0);
  v10 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v62 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_100015240(&qword_1000DEBF0, &qword_100082BB8);
  v12 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v59 - v13;
  v71 = sub_100015240(&qword_1000DEBF8, &qword_100082BC0);
  v14 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v76 = &v59 - v15;
  v16 = sub_100015240(&qword_1000DEC00, &qword_100082BC8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v59 - v18;
  v72 = sub_100015240(&qword_1000DEC08, &qword_100082BD0);
  v20 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v22 = &v59 - v21;
  v75 = sub_100015240(&qword_1000DEC10, &qword_100082BD8);
  v23 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v25 = &v59 - v24;
  v26 = type metadata accessor for NearbySmallWidgetView(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_10007DFF8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B5F0(type metadata accessor for NearbyWidgetView, v34);
  v35 = (*(v31 + 88))(v34, v30);
  if (v35 != enum case for WidgetFamily.systemSmall(_:))
  {
    v40 = v25;
    v41 = v69;
    if (v35 == enum case for WidgetFamily.systemMedium(_:))
    {
      v42 = v62;
      sub_10002CE34(v1, v62 + *(v68 + 20), type metadata accessor for NearbyEntryContent);
      *v42 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      sub_10002CE34(v42, v19, type metadata accessor for NearbyMediumWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10002CE9C(&qword_1000DEC40, type metadata accessor for NearbySmallWidgetView);
      sub_10002CE9C(&qword_1000DEC48, type metadata accessor for NearbyMediumWidgetView);
      sub_10007D9D8();
      sub_100026310(v22, v76, &qword_1000DEC08, &qword_100082BD0);
      swift_storeEnumTagMultiPayload();
      sub_10002CEE4();
      sub_10002CFD0();
      sub_10007D9D8();
      sub_1000256C0(v22, &qword_1000DEC08, &qword_100082BD0);
      sub_100026310(v40, v41, &qword_1000DEC10, &qword_100082BD8);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_10002D0BC();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v40, &qword_1000DEC10, &qword_100082BD8);
      v43 = type metadata accessor for NearbyMediumWidgetView;
    }

    else
    {
      v44 = v76;
      if (v35 == enum case for WidgetFamily.systemLarge(_:))
      {
        v36 = v60;
        sub_10002CE34(v1, v60 + *(v64 + 20), type metadata accessor for NearbyEntryContent);
        *v36 = swift_getKeyPath();
        sub_100015240(&qword_1000DEC18, &qword_100082C10);
        swift_storeEnumTagMultiPayload();
        sub_10002CE34(v36, v65, type metadata accessor for NearbyLargeWidgetView);
        swift_storeEnumTagMultiPayload();
        sub_10002CE9C(&qword_1000DEC28, type metadata accessor for NearbyLargeWidgetView);
        sub_10002CE9C(&qword_1000DEC30, type metadata accessor for NearbyAccessoryRectangularWidgetView);
        v45 = v67;
        sub_10007D9D8();
        sub_100026310(v45, v44, &qword_1000DEBE8, &qword_100082BB0);
        swift_storeEnumTagMultiPayload();
        sub_10002CEE4();
        sub_10002CFD0();
        sub_10007D9D8();
        sub_1000256C0(v45, &qword_1000DEBE8, &qword_100082BB0);
        sub_100026310(v40, v41, &qword_1000DEC10, &qword_100082BD8);
        swift_storeEnumTagMultiPayload();
        sub_100015240(&qword_1000DEC58, &unk_100082C50);
        sub_10002D0BC();
        sub_10002D148();
        sub_10007D9D8();
        sub_1000256C0(v40, &qword_1000DEC10, &qword_100082BD8);
        v37 = type metadata accessor for NearbyLargeWidgetView;
        goto LABEL_3;
      }

      if (v35 == enum case for WidgetFamily.systemExtraLarge(_:) || v35 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v35 == enum case for WidgetFamily.accessoryCorner(_:) || v35 == enum case for WidgetFamily.accessoryCircular(_:) || (v46 = v40, v47 = v66, v42 = v61, v35 != enum case for WidgetFamily.accessoryRectangular(_:)))
      {
        while (1)
        {
          sub_10007E518();
          __break(1u);
        }
      }

      sub_10002CE34(v1, v61 + *(v66 + 24), type metadata accessor for NearbyEntryContent);
      *v42 = swift_getKeyPath();
      sub_100015240(&qword_1000DEC18, &qword_100082C10);
      swift_storeEnumTagMultiPayload();
      *(v42 + v47[5]) = swift_getKeyPath();
      sub_100015240(&qword_1000DEC20, &unk_100083720);
      swift_storeEnumTagMultiPayload();
      v48 = (v42 + v47[7]);
      if (qword_1000DE280 != -1)
      {
        swift_once();
      }

      v49 = qword_1000E4B68;
      v77._countAndFlagsBits = 0xD000000000000014;
      v57._countAndFlagsBits = 0x800000010008F6C0;
      v81._countAndFlagsBits = 0x686372616553;
      v77._object = 0x800000010008F6A0;
      v79.value._countAndFlagsBits = 0;
      v79.value._object = 0;
      v50.super.isa = qword_1000E4B68;
      v81._object = 0xE600000000000000;
      *v48 = sub_10007D258(v77, v79, v50, v81, v57);
      v48[1] = v51;
      v52 = (v42 + v47[8]);
      v78._countAndFlagsBits = 0xD000000000000010;
      v58._countAndFlagsBits = 0x800000010008F700;
      v78._object = 0x800000010008F6E0;
      v80.value._countAndFlagsBits = 0;
      v80.value._object = 0;
      v53.super.isa = v49;
      v82._countAndFlagsBits = 1936744781;
      v82._object = 0xE400000000000000;
      *v52 = sub_10007D258(v78, v80, v53, v82, v58);
      v52[1] = v54;
      sub_10002CE34(v42, v65, type metadata accessor for NearbyAccessoryRectangularWidgetView);
      swift_storeEnumTagMultiPayload();
      sub_10002CE9C(&qword_1000DEC28, type metadata accessor for NearbyLargeWidgetView);
      sub_10002CE9C(&qword_1000DEC30, type metadata accessor for NearbyAccessoryRectangularWidgetView);
      v55 = v67;
      sub_10007D9D8();
      sub_100026310(v55, v76, &qword_1000DEBE8, &qword_100082BB0);
      swift_storeEnumTagMultiPayload();
      sub_10002CEE4();
      sub_10002CFD0();
      sub_10007D9D8();
      sub_1000256C0(v55, &qword_1000DEBE8, &qword_100082BB0);
      sub_100026310(v46, v41, &qword_1000DEC10, &qword_100082BD8);
      swift_storeEnumTagMultiPayload();
      sub_100015240(&qword_1000DEC58, &unk_100082C50);
      sub_10002D0BC();
      sub_10002D148();
      sub_10007D9D8();
      sub_1000256C0(v46, &qword_1000DEC10, &qword_100082BD8);
      v43 = type metadata accessor for NearbyAccessoryRectangularWidgetView;
    }

    v38 = v43;
    v39 = v42;
    return sub_10002D1C4(v39, v38);
  }

  v36 = v29;
  sub_10002CE34(v1, v29, type metadata accessor for NearbyEntryContent);
  sub_10002CE34(v29, v19, type metadata accessor for NearbySmallWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_10002CE9C(&qword_1000DEC40, type metadata accessor for NearbySmallWidgetView);
  sub_10002CE9C(&qword_1000DEC48, type metadata accessor for NearbyMediumWidgetView);
  sub_10007D9D8();
  sub_100026310(v22, v76, &qword_1000DEC08, &qword_100082BD0);
  swift_storeEnumTagMultiPayload();
  sub_10002CEE4();
  sub_10002CFD0();
  sub_10007D9D8();
  sub_1000256C0(v22, &qword_1000DEC08, &qword_100082BD0);
  sub_100026310(v25, v69, &qword_1000DEC10, &qword_100082BD8);
  swift_storeEnumTagMultiPayload();
  sub_100015240(&qword_1000DEC58, &unk_100082C50);
  sub_10002D0BC();
  sub_10002D148();
  sub_10007D9D8();
  sub_1000256C0(v25, &qword_1000DEC10, &qword_100082BD8);
  v37 = type metadata accessor for NearbySmallWidgetView;
LABEL_3:
  v38 = v37;
  v39 = v36;
  return sub_10002D1C4(v39, v38);
}

uint64_t sub_10002CA74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100026310(v2, &v17 - v11, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D638();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10002CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10002CE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002CE9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002CEE4()
{
  result = qword_1000DEC38;
  if (!qword_1000DEC38)
  {
    sub_100015288(&qword_1000DEC08, &qword_100082BD0);
    sub_10002CE9C(&qword_1000DEC40, type metadata accessor for NearbySmallWidgetView);
    sub_10002CE9C(&qword_1000DEC48, type metadata accessor for NearbyMediumWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC38);
  }

  return result;
}

unint64_t sub_10002CFD0()
{
  result = qword_1000DEC50;
  if (!qword_1000DEC50)
  {
    sub_100015288(&qword_1000DEBE8, &qword_100082BB0);
    sub_10002CE9C(&qword_1000DEC28, type metadata accessor for NearbyLargeWidgetView);
    sub_10002CE9C(&qword_1000DEC30, type metadata accessor for NearbyAccessoryRectangularWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC50);
  }

  return result;
}

unint64_t sub_10002D0BC()
{
  result = qword_1000DEC60;
  if (!qword_1000DEC60)
  {
    sub_100015288(&qword_1000DEC10, &qword_100082BD8);
    sub_10002CEE4();
    sub_10002CFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC60);
  }

  return result;
}

unint64_t sub_10002D148()
{
  result = qword_1000DEC68;
  if (!qword_1000DEC68)
  {
    sub_100015288(&qword_1000DEC58, &unk_100082C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC68);
  }

  return result;
}

uint64_t sub_10002D1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10002D24C()
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NearbyEntryContent(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002D330(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10002D3AC()
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NearbyEntryContent(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002D460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for NearbyEntryContent(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002D570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100015240(&qword_1000DEC70, &unk_100083760);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for NearbyEntryContent(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002D6A0()
{
  result = type metadata accessor for NearbyEntryContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002D70C()
{
  result = qword_1000DEED0;
  if (!qword_1000DEED0)
  {
    sub_100015288(&qword_1000DEED8, &qword_100082CE8);
    sub_10002D0BC();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEED0);
  }

  return result;
}

uint64_t sub_10002D858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002D8C8()
{
  result = qword_1000DEF98;
  if (!qword_1000DEF98)
  {
    sub_100015288(&qword_1000DEF88, &qword_100082F48);
    sub_10002D954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEF98);
  }

  return result;
}

unint64_t sub_10002D954()
{
  result = qword_1000DEFA0;
  if (!qword_1000DEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEFA0);
  }

  return result;
}

unint64_t sub_10002D9A8()
{
  result = qword_1000E0940;
  if (!qword_1000E0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0940);
  }

  return result;
}

uint64_t sub_10002D9FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002DA0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002DA1C()
{
  result = qword_1000DF040;
  if (!qword_1000DF040)
  {
    sub_100015288(&qword_1000DF038, &qword_100082FF8);
    sub_10002DDAC(&qword_1000DF048, &qword_1000DF050, &qword_100083000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF040);
  }

  return result;
}

uint64_t sub_10002DB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100015240(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002DB9C()
{
  result = type metadata accessor for NearbyButtonContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002DCA0()
{
  result = qword_1000DF1D0;
  if (!qword_1000DF1D0)
  {
    sub_100015288(&qword_1000DF1B8, &qword_1000831D0);
    sub_10002DD58();
    sub_10002DDAC(&qword_1000DF1E0, &qword_1000DF1C8, &unk_1000831E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1D0);
  }

  return result;
}

unint64_t sub_10002DD58()
{
  result = qword_1000DF1D8;
  if (!qword_1000DF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF1D8);
  }

  return result;
}

uint64_t sub_10002DDAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002DDF4()
{
  result = qword_1000DF200;
  if (!qword_1000DF200)
  {
    sub_100015288(&qword_1000DF1F8, &qword_100084360);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF200);
  }

  return result;
}

uint64_t sub_10002DE98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100015288(a2, a3);
    a4();
    sub_10002CE9C(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002DF60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002DFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002E01C()
{
  result = [v0 destination];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result mapItemStorage];

  if (!v3)
  {
    return 1;
  }

  v4 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v3 isPlaceHolderPlace:0];
  if (!v4)
  {

    return 1;
  }

  v5 = v4;
  v6 = [v4 _styleAttributes];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 scale];
  v10 = v9;

  if (!v6 || (v11 = [objc_opt_self() imageForStyle:v6 size:3 forScale:0 format:0 nightMode:v10]) == 0)
  {
    v12 = objc_opt_self();
    v13 = [objc_opt_self() markerStyleAttributes];
    v11 = [v12 imageForStyle:v13 size:3 forScale:0 format:0 nightMode:v10];
  }

  v14 = [v7 mainScreen];
  [v14 scale];
  v16 = v15;

  if (!v6 || ![objc_opt_self() imageForStyle:v6 size:3 forScale:0 format:1 nightMode:v16])
  {
    v17 = objc_opt_self();
    v18 = [objc_opt_self() markerStyleAttributes];
    [v17 imageForStyle:v18 size:3 forScale:0 format:1 nightMode:v16];
  }

  return v11;
}

id sub_10002E2C0()
{
  v1 = v0;
  v2 = sub_10007D6B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = sub_100015240(&qword_1000DF230, &qword_100083280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - v12;
  *(&v40 - v12) = swift_getKeyPath();
  sub_100015240(&qword_1000DF238, &qword_1000832B8);
  swift_storeEnumTagMultiPayload();
  if ([v0 type] != 24)
  {
    goto LABEL_5;
  }

  v14 = [v0 dataForKey:@"MapsSuggestionsContactAsDataKey"];
  if (v14)
  {
    v15 = v14;
    v16 = sub_10007D2A8();
    v18 = v17;

    sub_10002620C(0, &qword_1000DF240, NSKeyedUnarchiver_ptr);
    sub_10002620C(0, &qword_1000DF248, CNContact_ptr);
    v33 = sub_10007E2D8();
    sub_100005744(v16, v18);
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v19 = [v1 stringForKey:@"MapsSuggestionsContactLikelyAppleIDKey"];
  v33 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v19];

  if (v33)
  {
LABEL_13:
    v34 = [objc_opt_self() mainScreen];
    [v34 scale];
    v36 = v35;

    sub_10002E98C(v13, v9);
    (*(v3 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v2);
    LOBYTE(v34) = sub_10007D6A8();
    v37 = *(v3 + 8);
    v37(v7, v2);
    v37(v9, v2);
    v25 = [v33 avatarImageWithSize:v34 & 1 scale:128.0 rightToLeft:{128.0, v36}];

    sub_10002EE0C(v13);
    v38 = v25;
  }

  else
  {
LABEL_5:
    v20 = [v1 styleAttributes];
    v21 = objc_opt_self();
    v22 = [v21 mainScreen];
    [v22 scale];
    v24 = v23;

    if (!v20 || (v25 = [objc_opt_self() imageForStyle:v20 size:3 forScale:0 format:0 nightMode:v24]) == 0)
    {
      v26 = objc_opt_self();
      v27 = [objc_opt_self() markerStyleAttributes];
      v25 = [v26 imageForStyle:v27 size:3 forScale:0 format:0 nightMode:v24];
    }

    v28 = [v21 mainScreen];
    [v28 scale];
    v30 = v29;

    if (!v20 || ![objc_opt_self() imageForStyle:v20 size:3 forScale:0 format:1 nightMode:v30])
    {
      v31 = objc_opt_self();
      v32 = [objc_opt_self() markerStyleAttributes];
      [v31 imageForStyle:v32 size:3 forScale:0 format:1 nightMode:v30];
    }

    sub_10002EE0C(v13);
  }

  return v25;
}

uint64_t sub_10002E8C4(uint64_t a1)
{
  v2 = sub_10007D6B8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10007D798();
}

uint64_t sub_10002E98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_10007D848();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015240(&qword_1000DF238, &qword_1000832B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = sub_100015240(&qword_1000DF230, &qword_100083280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  sub_100026310(a1, &v19 - v13, &qword_1000DF230, &qword_100083280);
  sub_100026310(v14, v10, &qword_1000DF238, &qword_1000832B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002EE0C(v14);
    v15 = sub_10007D6B8();
    return (*(*(v15 - 8) + 32))(v20, v10, v15);
  }

  else
  {
    v17 = *v10;
    sub_10007E2B8();
    v18 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v19);
    return sub_10002EE0C(v14);
  }
}

void sub_10002EC08()
{
  v0 = objc_opt_self();
  v1 = [v0 recentSearchStyleAttributes];
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  if (!v1 || (v6 = [objc_opt_self() imageForStyle:v1 size:4 forScale:0 format:0 nightMode:v5]) == 0)
  {
    v7 = objc_opt_self();
    v8 = [v0 markerStyleAttributes];
    v6 = [v7 imageForStyle:v8 size:4 forScale:0 format:0 nightMode:v5];
  }

  v9 = [v2 mainScreen];
  [v9 scale];
  v11 = v10;

  if (!v1 || (v12 = [objc_opt_self() imageForStyle:v1 size:4 forScale:0 format:1 nightMode:v11]) == 0)
  {
    v13 = objc_opt_self();
    v14 = [v0 markerStyleAttributes];
    v12 = [v13 imageForStyle:v14 size:4 forScale:0 format:1 nightMode:v11];
  }

  qword_1000E4AD0 = v6;
  *algn_1000E4AD8 = v12;
}

uint64_t sub_10002EE0C(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DF230, &qword_100083280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002EE74(uint64_t a1)
{
  v2 = sub_10007D638();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000DE228 != -1)
  {
    swift_once();
  }

  v8 = qword_1000E4AD0;
  v7 = *algn_1000E4AD8;
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 88))(v6, v2);
  if (v9 == enum case for ColorScheme.light(_:))
  {
    v7 = v8;
  }

  else if (v9 != enum case for ColorScheme.dark(_:))
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v10 = v7;
LABEL_10:
    v12 = v7;
    return v10;
  }

  v11 = sub_10007E138();
  v10 = [objc_opt_self() imageNamed:v11];

  if (v10)
  {
    v7 = 0;
    goto LABEL_10;
  }

  __break(1u);
LABEL_12:
  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_10002F074()
{
  result = sub_10007DD58();
  qword_1000E4AE0 = result;
  return result;
}

__n128 sub_10002F0BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10002F0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10002F120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002F1A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007D8E8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10007D8D8();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_10007D8C8(v56);
  v54 = v1;
  v4 = *v1;
  v5 = v1[1];
  v47 = v1[3];
  v49 = v1[2];

  sub_10007DDB8();
  sub_10007D8A8();

  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_10007D8C8(v57);
  sub_10007D908();
  v6 = sub_10007DBD8();
  v44 = v7;
  v45 = v6;
  v43 = v8;
  sub_10007DA38();
  v9 = sub_10007DBA8();
  v11 = v10;
  v13 = v12;
  sub_10007DB58();
  v14 = sub_10007DBB8();
  v16 = v15;
  v18 = v17;

  sub_10002D9FC(v9, v11, v13 & 1);

  sub_10007DB18();
  v19 = sub_10007DB88();
  v52 = v20;
  v53 = v19;
  v50 = v21;
  v51 = v22;
  sub_10002D9FC(v14, v16, v18 & 1);

  sub_10002D9FC(v45, v44, v43 & 1);

  sub_10007D8D8();
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  sub_10007D8C8(v58);
  v59._object = v47;
  v59._countAndFlagsBits = v49;
  sub_10007D8B8(v59);
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  sub_10007D8C8(v60);
  sub_10007D908();
  v23 = sub_10007DBD8();
  v46 = v24;
  v48 = v23;
  LOBYTE(v45) = v25;
  sub_10007DA38();
  v26 = sub_10007DBA8();
  v28 = v27;
  LOBYTE(v9) = v29;
  sub_10007DB38();
  v30 = sub_10007DBB8();
  v32 = v31;
  LOBYTE(v16) = v33;

  sub_10002D9FC(v26, v28, v9 & 1);

  sub_10007DB18();
  v34 = sub_10007DB88();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002D9FC(v30, v32, v16 & 1);

  sub_10002D9FC(v48, v46, v45 & 1);

  *a1 = sub_10007D878();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v41 = sub_100015240(&qword_1000DF250, &qword_1000833F8);
  sub_10002F5D4(v51, v34, v36, v38 & 1, v40, a1 + *(v41 + 44), v54);
  sub_10002D9FC(v53, v52, v50 & 1);

  sub_10002D9FC(v34, v36, v38 & 1);
}

uint64_t sub_10002F5D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X5>, char a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v20 = a3;
  v21 = a5;
  v19[0] = a1;
  v19[1] = a2;
  v9 = sub_100015240(&qword_1000DF258, &qword_100083400);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  *v15 = sub_10007D958();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = sub_100015240(&qword_1000DF260, &qword_100083408);
  sub_10002F768(v20, a4 & 1, &v15[*(v16 + 44)], a7);
  sub_100026310(v15, v13, &qword_1000DF258, &qword_100083400);
  sub_100026310(v13, a6, &qword_1000DF258, &qword_100083400);
  v17 = a6 + *(sub_100015240(&qword_1000DF268, &unk_100083410) + 48);
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_1000256C0(v15, &qword_1000DF258, &qword_100083400);
  return sub_1000256C0(v13, &qword_1000DF258, &qword_100083400);
}

uint64_t sub_10002F768@<X0>(void *a1@<X5>, int a2@<W6>, uint64_t a3@<X8>, uint64_t a4)
{
  LODWORD(v90) = a2;
  v91 = a1;
  v87 = a3;
  v4 = sub_10007D8E8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v84 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100015240(&qword_1000DF270, &unk_1000857B0);
  v89 = *(v95 - 8);
  v7 = v89[8];
  v8 = __chkstk_darwin(v95);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v76 - v10;
  v12 = sub_100015240(&qword_1000DF278, &qword_100083420);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v85 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v93 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v92 = &v76 - v19;
  __chkstk_darwin(v18);
  v88 = &v76 - v20;
  sub_10007D8D8();
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  sub_10007D8C8(v100);
  sub_10007D898();
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  sub_10007D8C8(v101);
  sub_10007D898();
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  sub_10007D8C8(v102);
  sub_10007D908();
  v21 = sub_10007DBD8();
  v23 = v22;
  v96 = v21;
  v97 = v22;
  v25 = v24 & 1;
  v98 = v24 & 1;
  v99 = v26;
  sub_10007DCA8();
  sub_10002D9FC(v21, v23, v25);

  v96 = &type metadata for Text;
  v97 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v95;
  v94 = v11;
  sub_10007DC78();
  v90 = v89[1];
  v91 = v89 + 1;
  v90(v11, v27);
  v28 = *(a4 + 32);
  v29 = *(a4 + 40);
  v30 = *(a4 + 56);
  v82 = *(a4 + 48);
  v81 = v30;
  v83 = *(a4 + 72);
  v80 = *(a4 + 64);
  v96 = v28;
  v97 = v29;
  sub_10002D9A8();

  v77 = sub_10007DBF8();
  v76 = v31;
  v33 = v32;
  v78 = v34;
  LODWORD(v96) = sub_10007DA38();
  v35 = sub_10007DBA8();
  v37 = v36;
  v39 = v38;
  sub_10007DB38();
  v40 = sub_10007DBB8();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_10002D9FC(v35, v37, v39 & 1);

  sub_10002D9FC(v77, v76, v33 & 1);

  v96 = v40;
  v97 = v42;
  v98 = v44 & 1;
  v99 = v46;
  v47 = v94;
  sub_10007DCA8();
  sub_10002D9FC(v40, v42, v44 & 1);

  v48 = v95;
  sub_10007DC78();
  v90(v47, v48);
  sub_10007D8D8();
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  sub_10007D8C8(v103);
  sub_10007D898();
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  sub_10007D8C8(v104);
  sub_10007D908();
  v83 = sub_10007DBD8();
  v82 = v49;
  LOBYTE(v42) = v50;
  v84 = v51;
  LODWORD(v96) = sub_10007DA48();
  v52 = sub_10007DBA8();
  v54 = v53;
  v56 = v55;
  sub_10007DAF8();
  v57 = sub_10007DBB8();
  v59 = v58;
  v61 = v60;
  v63 = v62;

  sub_10002D9FC(v52, v54, v56 & 1);

  sub_10002D9FC(v83, v82, v42 & 1);

  v96 = v57;
  v97 = v59;
  v98 = v61 & 1;
  v99 = v63;
  v64 = v94;
  sub_10007DCA8();
  sub_10002D9FC(v57, v59, v61 & 1);

  v65 = v93;
  sub_100026310(v88, v93, &qword_1000DF278, &qword_100083420);
  v66 = v92;
  v67 = v85;
  sub_100026310(v92, v85, &qword_1000DF278, &qword_100083420);
  v68 = v89[2];
  v69 = v86;
  v70 = v95;
  v68(v86, v64, v95);
  v71 = v65;
  v72 = v87;
  sub_100026310(v71, v87, &qword_1000DF278, &qword_100083420);
  v73 = sub_100015240(&qword_1000DF280, &qword_100083428);
  sub_100026310(v67, v72 + *(v73 + 48), &qword_1000DF278, &qword_100083420);
  v68((v72 + *(v73 + 64)), v69, v70);
  v74 = v90;
  v90(v94, v70);
  sub_1000256C0(v66, &qword_1000DF278, &qword_100083420);
  sub_1000256C0(v88, &qword_1000DF278, &qword_100083420);
  v74(v69, v70);
  sub_1000256C0(v67, &qword_1000DF278, &qword_100083420);
  return sub_1000256C0(v93, &qword_1000DF278, &qword_100083420);
}

uint64_t sub_10002FFBC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_10002F1A4(a1);
}

__n128 sub_100030000(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003001C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100030064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000300C8()
{
  result = qword_1000DF288;
  if (!qword_1000DF288)
  {
    sub_100015288(&unk_1000DF290, &unk_1000834E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF288);
  }

  return result;
}

void sub_10003012C(uint64_t a1, void (*a2)(void *, void *))
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_1000301E4(v3, v4);
  a2(v3, v4);

  sub_100030228(v3, v4);
}

uint64_t sub_100030190()
{
  sub_10003AAE8();

  return swift_deallocClassInstance();
}

id sub_1000301E4(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

void sub_100030228(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_10003026C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10007DFF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v33[-v9];
  sub_10007E0B8();
  v11 = *(v4 + 88);
  v12 = v11(v10, v3);
  if (v12 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_23;
  }

  v34 = enum case for WidgetFamily.systemLarge(_:);
  if (v12 != enum case for WidgetFamily.systemMedium(_:) && v12 != enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_23;
  }

  v35 = enum case for WidgetFamily.systemMedium(_:);
  v36 = enum case for WidgetFamily.systemSmall(_:);
  if (a2 >> 62)
  {
    v14 = sub_10007E528();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v37 = v11;
  v38 = v3;
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    v19 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = sub_10007E468();
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      v22 = [v20 boundingMapRegion];
      GEOMapRectForMapRegion();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v41.origin.x = v24;
      v41.origin.y = v26;
      v41.size.width = v28;
      v41.size.height = v30;
      v40 = MKMapRectUnion(v39, v41);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
    }

    while (v14 != v19);
  }

  sub_10007E0A8();
  sub_10007E0B8();
  v31 = v37(v8, v38);
  if (v31 != v36)
  {
    if (v31 == v35)
    {
      sub_10007E0A8();
      return _MKMapRectThatFits();
    }

    if (v31 == v34)
    {
      return _MKMapRectThatFits();
    }
  }

LABEL_23:
  result = sub_10007E518();
  __break(1u);
  return result;
}

void sub_1000306EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = xmmword_1000834F0;
  *(v5 + 32) = 0;
  *(v5 + 40) = dispatch_group_create();
  *(v5 + 48) = 0;
  *(v5 + 56) = sub_100024EF0(&_swiftEmptyArrayStorage);
  *(v5 + 64) = 0;
  *(v5 + 72) = &_swiftEmptyArrayStorage;
  v10 = objc_allocWithZone(MKMapSnapshotOptions);

  v11 = [v10 init];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  v13 = *(v5 + 16);
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v13 _setShowsAppleLogo:0];
  v14 = *(v5 + 16);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  sub_10007E0A8();
  [v15 setSize:?];

  v16 = *(v5 + 16);
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100015240(&qword_1000DF448, &unk_100083550);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100083500;
  v18 = objc_opt_self();
  v19 = v16;
  *(v17 + 32) = [v18 customFeatureAnnotationForMapItem:a2 styleAttributes:a3 suppressLabel:1];
  sub_100015240(&unk_1000DF450, &qword_100083560);
  isa = sub_10007E1C8().super.isa;

  [v19 _setCustomFeatureAnnotations:isa];

  v21 = *(v5 + 16);
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v21 _setSearchResultsType:1];
  v22 = *(v5 + 16);
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  sub_10003026C(a1, a4);
  [v23 setMapRect:?];

  v24 = *(v5 + 16);
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_100030A4C();
  v25 = v24;
  v26 = sub_10007E1C8().super.isa;
  [v25 _setComposedRoutesForRouteLines:v26 selectedRouteIndex:0];

  v27 = *(v5 + 16);
  v28 = v27;

  if (v27)
  {
    if (a4 >> 62)
    {
      if (sub_10007E528())
      {
        goto LABEL_10;
      }
    }

    else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((a4 & 0xC000000000000001) != 0)
      {
        v29 = sub_10007E468();
        goto LABEL_13;
      }

      if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(a4 + 32);
LABEL_13:
        v30 = v29;

        v31 = [v30 mapType];

LABEL_16:
        [v28 setMapType:v31];

        v32 = sub_10007E0C8();
        (*(*(v32 - 8) + 8))(a1, v32);
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v31 = 0;
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_100030A4C()
{
  result = qword_1000DE968;
  if (!qword_1000DE968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DE968);
  }

  return result;
}

void sub_100030A98(void *a1)
{
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location] = 0;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error] = 0;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager] = 0;
  *&v1[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup] = 0;
  v3 = sub_10007E138();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for GeneralMapsLocationUpdater();
  v4 = objc_msgSendSuper2(&v15, "initWithName:queue:", v3, a1);

  v5 = qword_1000DE278;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(qword_1000E4B58 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier);
  v8 = *(qword_1000E4B58 + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier + 8);
  v9 = objc_allocWithZone(CLLocationManager);

  v10 = a1;
  v11 = sub_10007E138();

  v12 = [v9 initWithEffectiveBundleIdentifier:v11 delegate:v6 onQueue:v10];

  v13 = *&v6[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  *&v6[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager] = v12;
  v14 = v12;

  if (v14)
  {
    [v14 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
  }

  else
  {
    __break(1u);
  }
}

id sub_100030C50()
{
  v1 = v0;
  v2 = sub_10007DEB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DED8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  if (v13)
  {
    v23 = v10;
    v14 = v13;
    v22 = [v1 dispatchQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    aBlock[4] = sub_100032FE8;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C8D80;
    v16 = _Block_copy(aBlock);
    v17 = v14;
    sub_10007DEC8();
    v24 = &_swiftEmptyArrayStorage;
    sub_100002E64();
    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    v18 = v22;
    sub_10007E338();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v23);
  }

  v19 = type metadata accessor for GeneralMapsLocationUpdater();
  v26.receiver = v1;
  v26.super_class = v19;
  return objc_msgSendSuper2(&v26, "dealloc");
}

uint64_t sub_100030FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10007DEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007DED8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 dispatchQueue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_100004690;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8CB8;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  sub_10007DEC8();
  v21[1] = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void sub_100031240(void (*a1)(id, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = sub_1000312D4();
  v6 = v5;
  v7 = *(a3 + OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error);
  swift_errorRetain();
  a1(v8, v6, v7);
}

void *sub_1000312D4()
{
  v1 = sub_10007DF48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = [v0 dispatchQueue];
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = sub_10007DF68();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location];
    if (!v8)
    {
      return sub_10003145C();
    }

    v9 = *&v0[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
    if (v9)
    {
      v10 = v8;
      v11 = [v9 accuracyAuthorization];
      v12 = qword_1000DF460;
      qword_1000DF460 = v8;
      qword_1000DF468 = v11;
      v13 = v10;

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10003145C()
{
  v1 = sub_10007D3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v49[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v49[-1] - v8;
  if (!qword_1000DF460)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v29 = sub_10007D5C8();
    sub_1000046BC(v29, qword_1000E4B28);
    v30 = sub_10007D5A8();
    v31 = sub_10007E288();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "GeneralMapsLocationUpdater: previousLocationInfo: no previous location data available", v32, 2u);
    }

    goto LABEL_31;
  }

  v10 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager;
  v11 = *(v0 + OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager);
  if (!v11)
  {
    __break(1u);
    goto LABEL_34;
  }

  v12 = qword_1000DF468;
  v13 = qword_1000DF460;
  v14 = qword_1000DF460;
  if ([v11 authorizationStatus] - 3 > 1)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v33 = sub_10007D5C8();
    sub_1000046BC(v33, qword_1000E4B28);
    v34 = sub_10007D5A8();
    v35 = sub_10007E288();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_25;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "GeneralMapsLocationUpdater: previousLocationInfo: previous location authorization revoked";
    goto LABEL_24;
  }

  result = *(v0 + v10);
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  if (v12 != [result accuracyAuthorization])
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v38 = sub_10007D5C8();
    sub_1000046BC(v38, qword_1000E4B28);
    v34 = sub_10007D5A8();
    v35 = sub_10007E288();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_25;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "GeneralMapsLocationUpdater: previousLocationInfo: previous location accuracy authorization changed";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);

LABEL_25:

    return 0;
  }

  sub_10007D3A8();
  v15 = [v14 timestamp];
  sub_10007D388();

  sub_10007D2B8();
  v17 = v16;
  v18 = *(v2 + 8);
  v18(v6, v1);
  v18(v9, v1);
  if (v17 >= 3600.0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v39 = sub_10007D5C8();
    sub_1000046BC(v39, qword_1000E4B28);
    v40 = v14;
    v30 = sub_10007D5A8();
    v41 = sub_10007E288();

    if (os_log_type_enabled(v30, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49[0] = v43;
      *v42 = 136446210;
      v44 = [v40 timestamp];
      sub_10007D388();

      v45 = sub_10007E178();
      v47 = sub_100051190(v45, v46, v49);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v30, v41, "GeneralMapsLocationUpdater: previousLocationInfo: previous location is too old (%{public}s)", v42, 0xCu);
      sub_1000250AC(v43);
    }

LABEL_31:
    return 0;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v19 = sub_10007D5C8();
  sub_1000046BC(v19, qword_1000E4B28);
  v20 = v14;
  v21 = sub_10007D5A8();
  v22 = sub_10007E288();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v49[1] = v12;
    v50 = v24;
    *v23 = 136380675;
    v49[0] = v20;
    v25 = v20;
    v26 = sub_10007E178();
    v28 = sub_100051190(v26, v27, &v50);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "GeneralMapsLocationUpdater: previousLocationInfo: using previous location (%{private}s)", v23, 0xCu);
    sub_1000250AC(v24);
  }

  return v13;
}

uint64_t sub_100031AA8()
{
  v1 = sub_10007DEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007DED8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 dispatchQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_100032FC4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8D30;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_10007DEC8();
  v16[1] = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_100031D78(void *a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_10007DF48();
  isa = v7[-1].isa;
  v9 = *(isa + 8);
  __chkstk_darwin(v7);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = [v4 dispatchQueue];
  (*(isa + 13))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = sub_10007DF68();
  (*(isa + 1))(v11, v7);
  if (v12)
  {
    v3 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup;
    v13 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup];
    if (!v13)
    {
      if (qword_1000DE268 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    v7 = v13;
    [v4 considerMyAllowanceAsLimited:{objc_msgSend(a1, "accuracyAuthorization") != 0}];
    if (!(a2 >> 62))
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_19:
      if (qword_1000DE268 != -1)
      {
        swift_once();
      }

      v33 = sub_10007D5C8();
      sub_1000046BC(v33, qword_1000E4B28);
      v29 = sub_10007D5A8();
      v34 = sub_10007E2A8();
      if (os_log_type_enabled(v29, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v29, v34, "GeneralMapsLocationUpdater: singleLocationUpdate END (no location)", v35, 2u);
      }

      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = sub_10007E528();
  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_5:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_26:
    v17 = sub_10007E468();
LABEL_10:
    a2 = v17;
    if (qword_1000DE268 == -1)
    {
LABEL_11:
      v18 = sub_10007D5C8();
      sub_1000046BC(v18, qword_1000E4B28);
      v19 = a2;
      v20 = sub_10007D5A8();
      v21 = sub_10007E2C8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v37 = v19;
        v38 = v23;
        *v22 = 136380675;
        sub_10002620C(0, &qword_1000DF538, CLLocation_ptr);
        v24 = v19;
        v25 = sub_10007E178();
        v27 = sub_100051190(v25, v26, &v38);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "GeneralMapsLocationUpdater: singleLocationUpdate END (location: %{private}s)", v22, 0xCu);
        sub_1000250AC(v23);
      }

      v28 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location];
      *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location] = v19;
      v29 = v19;

      [v4 considerMyNewLocation:v29];
LABEL_23:

      v36 = *&v4[v3];
      *&v4[v3] = 0;

      dispatch_group_leave(v7);
      goto LABEL_24;
    }

LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v16 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(a2 + 8 * v16 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_15:
  v30 = sub_10007D5C8();
  sub_1000046BC(v30, qword_1000E4B28);
  v7 = sub_10007D5A8();
  v31 = sub_10007E2A8();
  if (os_log_type_enabled(v7, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v7, v31, "GeneralMapsLocationUpdater: locationManager:didUpdateLocations: was called when not expected", v32, 2u);
  }

LABEL_24:
}

uint64_t sub_1000324B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007DEB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = sub_10007DED8();
  v13 = *(v22[0] - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22[0]);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v4 dispatchQueue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = sub_100032C1C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C8C18;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  sub_10007DEC8();
  v22[1] = &_swiftEmptyArrayStorage;
  sub_100002E64();
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v19);

  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22[0]);
}

void sub_1000327E8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10002620C(0, &qword_1000DF518, _CLPlaceInference_ptr);
    isa = sub_10007E1C8().super.isa;
  }

  if (a2)
  {
    v6 = sub_10007D268();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_100032894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10007DF48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = [v4 dispatchQueue];
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = sub_10007DF68();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_1000DE268 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_10007D5C8();
  sub_1000046BC(v14, qword_1000E4B28);
  v15 = sub_10007D5A8();
  v16 = sub_10007E298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching Place Inference", v17, 2u);
  }

  v18 = *&v4[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_locationManager];
  if (v18)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032B24;
    aBlock[3] = &unk_1000C8BC8;
    v19 = _Block_copy(aBlock);
    v20 = v18;

    [v20 _fetchPlaceInferencesWithFidelityPolicy:a1 handler:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100032B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10002620C(0, &qword_1000DF518, _CLPlaceInference_ptr);
    v4 = sub_10007E1D8();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_100032C1C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_100032894(v1, v2, v3);
}

void sub_100032C50(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10007DF48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9->isa = [v3 dispatchQueue];
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = sub_10007DF68();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup;
  v11 = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_waitForLocationGroup];
  if (v11)
  {
    v12 = qword_1000DE268;
    v9 = v11;
    if (v12 == -1)
    {
LABEL_4:
      v13 = sub_10007D5C8();
      sub_1000046BC(v13, qword_1000E4B28);
      swift_errorRetain();
      v14 = sub_10007D5A8();
      v15 = sub_10007E2A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26 = a1;
        v27 = v17;
        *v16 = 136446210;
        swift_errorRetain();
        sub_100015240(&unk_1000DF540, &qword_100082988);
        v18 = sub_10007E178();
        v20 = sub_100051190(v18, v19, &v27);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "GeneralMapsLocationUpdater: singleLocationUpdate END (error: %{public}s)", v16, 0xCu);
        sub_1000250AC(v17);
      }

      v21 = *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error];
      *&v3[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_error] = a1;
      swift_errorRetain();

      v22 = *&v3[v2];
      *&v3[v2] = 0;

      dispatch_group_leave(v9);
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1000DE268 != -1)
  {
    swift_once();
  }

  v23 = sub_10007D5C8();
  sub_1000046BC(v23, qword_1000E4B28);
  v9 = sub_10007D5A8();
  v24 = sub_10007E2A8();
  if (os_log_type_enabled(v9, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v9, v24, "GeneralMapsLocationUpdater: locationManager:didFailWithError: was called when not expected", v25, 2u);
  }

LABEL_11:
}

char *sub_100032FC4()
{
  result = *(v0 + 16);
  if (*&result[OBJC_IVAR____TtC17GeneralMapsWidget26GeneralMapsLocationUpdater_location])
  {
    return [result considerMyNewLocation:?];
  }

  return result;
}

uint64_t sub_100032FF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100033040(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1000330F0()
{
  type metadata accessor for CommuteWindowEntryContent(319);
  if (v0 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000331AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v40 - v5;
  v6 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v44 = sub_10007DA88();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v44);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100015240(&qword_1000DF888, &qword_100083988);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v40 - v16);
  v18 = sub_100015240(&qword_1000DF890, qword_100083990);
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 64);
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v22 = type metadata accessor for CommuteWindowPlatterContent();
  v23 = v17 + v22[7];
  v45 = v2;
  sub_100035A24(v2, v23, type metadata accessor for CommuteWindowEntryContent);
  *v17 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v17 + v22[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  *(v17 + v22[6]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v24 = (v17 + v22[8]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v25.super.isa = qword_1000E4B68;
  v39._countAndFlagsBits = 0x800000010008FAB0;
  v50._countAndFlagsBits = 0x20B7C22040243125;
  v50._object = 0xAC00000040243225;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v52._countAndFlagsBits = 0x20B7C22040243125;
  v52._object = 0xAC00000040243225;
  *v24 = sub_10007D258(v50, v51, v25, v52, v39);
  v24[1] = v26;
  v27 = sub_10007DAC8();
  sub_10007D628();
  v28 = v17 + *(v14 + 36);
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_10007DA78();
  sub_10007DE88();
  v33 = sub_100036114();
  sub_10007DCB8();
  (*(v10 + 8))(v13, v44);
  sub_1000256C0(v17, &qword_1000DF888, &qword_100083988);
  v34 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v45 + *(v34 + 40), v9, &qword_1000DF810, &qword_1000838C0);
  v35 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v35 - 8) + 48))(v9, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v42;
    sub_100026310(&v9[*(v35 + 24)], v42, &qword_1000DEEE0, &qword_100082E30);
    sub_100035D38(v9, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    v46 = v14;
    v47 = &type metadata for Color;
    v48 = v33;
    v49 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v38 = v41;
    sub_10007DC18();
    sub_1000256C0(v37, &qword_1000DEEE0, &qword_100082E30);
    return (*(v40 + 8))(v21, v38);
  }

  return result;
}

uint64_t sub_100033748@<X0>(void *a1@<X8>)
{
  if (qword_1000DE238 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000E4AE8;
}

uint64_t sub_1000337D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = &v58 - v5;
  v6 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v68 = &v58 - v8;
  v9 = sub_10007DA88();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100015240(&qword_1000DF818, &qword_1000838C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  v64 = sub_100015240(&qword_1000DF820, &qword_1000838D0);
  v19 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v21 = &v58 - v20;
  v22 = sub_100015240(&qword_1000DF828, &qword_1000838D8);
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  __chkstk_darwin(v22);
  v69 = &v58 - v24;
  v25 = sub_10007DFF8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v58 - v31;
  sub_1000349B0(type metadata accessor for CommuteWindowMediumLargeWidgetView, &v58 - v31);
  (*(v26 + 104))(v30, enum case for WidgetFamily.systemMedium(_:), v25);
  sub_100035A8C(&qword_1000DF830, &type metadata accessor for WidgetFamily);
  sub_10007E1B8();
  sub_10007E1B8();
  v33 = *(v26 + 8);
  v33(v30, v25);
  v33(v32, v25);
  v34 = v71;
  v35 = v75;
  v36 = sub_10007D948();
  v37 = v34 == v35;
  v38 = v34 == v35;
  v39 = !v37;
  *v21 = v36;
  *(v21 + 1) = 0;
  v21[16] = 1;
  if (v37)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0x3FF0000000000000;
  }

  v41 = &v21[*(sub_100015240(&qword_1000DF838, &qword_1000838E0) + 44)];
  *v18 = sub_10007D878();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v42 = &v18[*(sub_100015240(&qword_1000DF840, &qword_1000838E8) + 44)];
  v43 = v2;
  v63 = v2;
  sub_100033F4C(v2, v38, v42);
  sub_100026310(v18, v16, &qword_1000DF818, &qword_1000838C8);
  *v41 = 0;
  *(v41 + 1) = v39;
  *(v41 + 2) = v40;
  v41[24] = v38;
  v44 = sub_100015240(&qword_1000DF848, &qword_1000838F0);
  sub_100026310(v16, &v41[*(v44 + 48)], &qword_1000DF818, &qword_1000838C8);
  sub_1000256C0(v18, &qword_1000DF818, &qword_1000838C8);
  sub_1000256C0(v16, &qword_1000DF818, &qword_1000838C8);
  v45 = v65;
  sub_10007DA78();
  v70 = v43;
  sub_10007DE88();
  v46 = sub_100015240(&qword_1000DF850, &qword_1000838F8);
  v47 = sub_10002DDAC(&qword_1000DF858, &qword_1000DF820, &qword_1000838D0);
  v48 = v64;
  v49 = sub_10002DDAC(&qword_1000DF860, &qword_1000DF850, &qword_1000838F8);
  v58 = v46;
  sub_10007DCB8();
  v50 = v68;
  (*(v66 + 8))(v45, v67);
  sub_1000256C0(v21, &qword_1000DF820, &qword_1000838D0);
  v51 = v63 + *(type metadata accessor for CommuteWindowMediumLargeWidgetView(0) + 24);
  v52 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v51 + *(v52 + 40), v50, &qword_1000DF810, &qword_1000838C0);
  v53 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v53 - 8) + 48))(v50, 1, v53);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v55 = v61;
    sub_100026310(v50 + *(v53 + 24), v61, &qword_1000DEEE0, &qword_100082E30);
    sub_100035D38(v50, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    v71 = v48;
    v72 = v58;
    v73 = v47;
    v74 = v49;
    swift_getOpaqueTypeConformance2();
    v56 = v60;
    v57 = v69;
    sub_10007DC18();
    sub_1000256C0(v55, &qword_1000DEEE0, &qword_100082E30);
    return (*(v59 + 8))(v57, v56);
  }

  return result;
}

uint64_t sub_100033F4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v47 = a3;
  v4 = sub_10007E0C8();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_100015240(&qword_1000DF868, &qword_100083938);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v43 - v15);
  v46 = sub_100015240(&qword_1000DF870, &qword_100083940);
  v17 = *(*(v46 - 8) + 64);
  v18 = __chkstk_darwin(v46);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v43 - v22;
  __chkstk_darwin(v21);
  v25 = &v43 - v24;
  *v16 = swift_getKeyPath();
  sub_100015240(&qword_1000DEF58, &qword_100083AB0);
  swift_storeEnumTagMultiPayload();
  *(v16 + *(v13 + 44)) = 0x4024000000000000;
  v26 = (v16 + *(v13 + 48));
  v27 = a1 + *(type metadata accessor for CommuteWindowMediumLargeWidgetView(0) + 24);
  v28 = type metadata accessor for CommuteWindowPlatterContent();
  sub_100035A24(v27, v26 + v28[7], type metadata accessor for CommuteWindowEntryContent);
  *v26 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v26 + v28[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  *(v26 + v28[6]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v29 = (v26 + v28[8]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v30.super.isa = qword_1000E4B68;
  v42._countAndFlagsBits = 0x800000010008FAB0;
  v52._countAndFlagsBits = 0x20B7C22040243125;
  v52._object = 0xAC00000040243225;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v54._countAndFlagsBits = 0x20B7C22040243125;
  v54._object = 0xAC00000040243225;
  *v29 = sub_10007D258(v52, v53, v30, v54, v42);
  v29[1] = v31;
  v32 = v48;
  if ((v48 & 1) == 0)
  {
    goto LABEL_6;
  }

  v33 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v27 + *(v33 + 40), v11, &qword_1000DF810, &qword_1000838C0);
  v34 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v34 - 8) + 48))(v11, 1, v34);
  if (result != 1)
  {
    v37 = v44;
    v36 = v45;
    (*(v44 + 16))(v7, v11, v45);
    sub_100035D38(v11, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    sub_10007E0A8();
    (*(v37 + 8))(v7, v36);
LABEL_6:
    sub_10007DE88();
    sub_10007D668();
    sub_10002DB0C(v16, v23, &qword_1000DF868, &qword_100083938);
    v38 = &v23[*(v46 + 36)];
    v39 = v50;
    *v38 = v49;
    *(v38 + 1) = v39;
    *(v38 + 2) = v51;
    sub_10002DB0C(v23, v25, &qword_1000DF870, &qword_100083940);
    sub_100026310(v25, v20, &qword_1000DF870, &qword_100083940);
    v40 = v47;
    sub_100026310(v20, v47, &qword_1000DF870, &qword_100083940);
    v41 = v40 + *(sub_100015240(&qword_1000DF878, &qword_100083980) + 48);
    *v41 = 0;
    *(v41 + 8) = v32 & 1;
    *(v41 + 9) = (v32 & 1) == 0;
    sub_1000256C0(v25, &qword_1000DF870, &qword_100083940);
    return sub_1000256C0(v20, &qword_1000DF870, &qword_100083940);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000344FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for CommuteWindowMediumLargeWidgetView(0) + 24);
  v5 = sub_100015240(&qword_1000DF850, &qword_1000838F8);
  sub_100035A24(a1 + v4, a2 + v5[10], type metadata accessor for CommuteWindowEntryContent);
  *a2 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[9]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5[11]) = 3;
  return result;
}

uint64_t sub_1000345EC()
{
  v1 = v0;
  v2 = sub_100015240(&qword_1000DEEE0, &qword_100082E30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_100015240(&qword_1000DF810, &qword_1000838C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CommuteWindowPlatterContent();
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100035A24(v1, v14 + *(v12 + 28), type metadata accessor for CommuteWindowEntryContent);
  *v14 = swift_getKeyPath();
  sub_100015240(&qword_1000DEC18, &qword_100082C10);
  swift_storeEnumTagMultiPayload();
  *(v14 + v10[5]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEF28, &qword_100083930);
  swift_storeEnumTagMultiPayload();
  *(v14 + v10[6]) = swift_getKeyPath();
  sub_100015240(&qword_1000DEC20, &unk_100083720);
  swift_storeEnumTagMultiPayload();
  v15 = (v14 + v10[8]);
  if (qword_1000DE280 != -1)
  {
    swift_once();
  }

  v16.super.isa = qword_1000E4B68;
  v21._countAndFlagsBits = 0x800000010008FAB0;
  v23._countAndFlagsBits = 0x20B7C22040243125;
  v23._object = 0xAC00000040243225;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v25._countAndFlagsBits = 0x20B7C22040243125;
  v25._object = 0xAC00000040243225;
  *v15 = sub_10007D258(v23, v24, v16, v25, v21);
  v15[1] = v17;
  v18 = type metadata accessor for CommuteWindowEntryContent(0);
  sub_100026310(v1 + *(v18 + 40), v9, &qword_1000DF810, &qword_1000838C0);
  v19 = type metadata accessor for CommuteWindowEntryContent.ResolvedContent(0);
  result = (*(*(v19 - 8) + 48))(v9, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100026310(&v9[*(v19 + 24)], v5, &qword_1000DEEE0, &qword_100082E30);
    sub_100035D38(v9, type metadata accessor for CommuteWindowEntryContent.ResolvedContent);
    sub_100035A8C(&qword_1000DF880, type metadata accessor for CommuteWindowPlatterContent);
    sub_10007DC18();
    sub_1000256C0(v5, &qword_1000DEEE0, &qword_100082E30);
    return sub_100035D38(v14, type metadata accessor for CommuteWindowPlatterContent);
  }

  return result;
}

uint64_t sub_1000349B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DEC20, &unk_100083720);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v19 - v12);
  v14 = a1(0);
  sub_100026310(v2 + *(v14 + 20), v13, &qword_1000DEC20, &unk_100083720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10007DFF8();
    return (*(*(v15 - 8) + 32))(a2, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_10007E2B8();
    v18 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100034BC4@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v51 = type metadata accessor for CommuteWindowAccessoryRectangularWidgetView(0);
  v2 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100015240(&qword_1000DF5E0, &qword_100083678);
  v4 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v50 = &v47 - v5;
  v57 = sub_100015240(&qword_1000DF5E8, &qword_100083680);
  v6 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v52 = &v47 - v7;
  v56 = type metadata accessor for CommuteWindowMediumLargeWidgetView(0);
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v53 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_100015240(&qword_1000DF5F0, &qword_100083688);
  v10 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v58 = &v47 - v11;
  v55 = sub_100015240(&qword_1000DF5F8, &qword_100083690);
  v12 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54 = &v47 - v13;
  v14 = sub_100015240(&qword_1000DF600, &qword_100083698);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v60 = sub_100015240(&qword_1000DF608, &qword_1000836A0);
  v18 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v20 = &v47 - v19;
  v61 = sub_100015240(&qword_1000DF610, &unk_1000836A8);
  v21 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v23 = &v47 - v22;
  v24 = type metadata accessor for CommuteWindowSmallWidgetView(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10007DFF8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000349B0(type metadata accessor for CommuteWindowWidgetView, v32);
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_100035A24(v1, v27, type metadata accessor for CommuteWindowEntryContent);
    sub_100035A24(v27, v17, type metadata accessor for CommuteWindowSmallWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100035A8C(&qword_1000DF630, type metadata accessor for CommuteWindowSmallWidgetView);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    sub_10007D9D8();
    sub_100026310(v20, v54, &qword_1000DF608, &qword_1000836A0);
    swift_storeEnumTagMultiPayload();
    sub_100035AD4();
    sub_100035BC0();
    sub_10007D9D8();
    sub_1000256C0(v20, &qword_1000DF608, &qword_1000836A0);
    sub_100026310(v23, v58, &qword_1000DF610, &unk_1000836A8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100035CAC();
    sub_10002D148();
    sub_10007D9D8();
    sub_1000256C0(v23, &qword_1000DF610, &unk_1000836A8);
    v34 = type metadata accessor for CommuteWindowSmallWidgetView;
    v35 = v27;
    return sub_100035D38(v35, v34);
  }

  v36 = v17;
  v37 = v54;
  if (v33 == enum case for WidgetFamily.systemMedium(_:))
  {
    v38 = v20;
    v39 = v56;
    v40 = v53;
    sub_100035A24(v1, v53 + *(v56 + 24), type metadata accessor for CommuteWindowEntryContent);
    *v40 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v40 + *(v39 + 20)) = swift_getKeyPath();
    sub_100015240(&qword_1000DEC20, &unk_100083720);
    swift_storeEnumTagMultiPayload();
    sub_100035A24(v40, v36, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100035A8C(&qword_1000DF630, type metadata accessor for CommuteWindowSmallWidgetView);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    sub_10007D9D8();
    sub_100026310(v38, v37, &qword_1000DF608, &qword_1000836A0);
    swift_storeEnumTagMultiPayload();
    sub_100035AD4();
    sub_100035BC0();
    sub_10007D9D8();
    sub_1000256C0(v38, &qword_1000DF608, &qword_1000836A0);
    sub_100026310(v23, v58, &qword_1000DF610, &unk_1000836A8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100035CAC();
    sub_10002D148();
LABEL_7:
    sub_10007D9D8();
    sub_1000256C0(v23, &qword_1000DF610, &unk_1000836A8);
    v34 = type metadata accessor for CommuteWindowMediumLargeWidgetView;
    v35 = v40;
    return sub_100035D38(v35, v34);
  }

  if (v33 == enum case for WidgetFamily.systemLarge(_:))
  {
    v41 = v56;
    v40 = v53;
    sub_100035A24(v1, v53 + *(v56 + 24), type metadata accessor for CommuteWindowEntryContent);
    *v40 = swift_getKeyPath();
    sub_100015240(&qword_1000DEC18, &qword_100082C10);
    swift_storeEnumTagMultiPayload();
    *(v40 + *(v41 + 20)) = swift_getKeyPath();
    sub_100015240(&qword_1000DEC20, &unk_100083720);
    swift_storeEnumTagMultiPayload();
    sub_100035A24(v40, v50, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    sub_100035A8C(&qword_1000DF620, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView);
    v42 = v52;
    sub_10007D9D8();
    sub_100026310(v42, v37, &qword_1000DF5E8, &qword_100083680);
    swift_storeEnumTagMultiPayload();
    sub_100035AD4();
    sub_100035BC0();
    sub_10007D9D8();
    sub_1000256C0(v42, &qword_1000DF5E8, &qword_100083680);
    sub_100026310(v23, v58, &qword_1000DF610, &unk_1000836A8);
    swift_storeEnumTagMultiPayload();
    sub_100015240(&qword_1000DEC58, &unk_100082C50);
    sub_100035CAC();
    sub_10002D148();
    goto LABEL_7;
  }

  v43 = v58;
  if (v33 == enum case for WidgetFamily.systemExtraLarge(_:) || v33 == enum case for WidgetFamily.systemExtraLargePortrait(_:) || v33 == enum case for WidgetFamily.accessoryCorner(_:) || v33 == enum case for WidgetFamily.accessoryCircular(_:) || v33 != enum case for WidgetFamily.accessoryRectangular(_:))
  {
    while (1)
    {
      sub_10007E518();
      __break(1u);
    }
  }

  v44 = v48;
  sub_100035A24(v1, v48, type metadata accessor for CommuteWindowEntryContent);
  sub_100035A24(v44, v50, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView);
  sub_100035A8C(&qword_1000DF620, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView);
  v45 = v52;
  sub_10007D9D8();
  sub_100026310(v45, v37, &qword_1000DF5E8, &qword_100083680);
  swift_storeEnumTagMultiPayload();
  sub_100035AD4();
  sub_100035BC0();
  sub_10007D9D8();
  sub_1000256C0(v45, &qword_1000DF5E8, &qword_100083680);
  sub_100026310(v23, v43, &qword_1000DF610, &unk_1000836A8);
  swift_storeEnumTagMultiPayload();
  sub_100015240(&qword_1000DEC58, &unk_100082C50);
  sub_100035CAC();
  sub_10002D148();
  sub_10007D9D8();
  sub_1000256C0(v23, &qword_1000DF610, &unk_1000836A8);
  v34 = type metadata accessor for CommuteWindowAccessoryRectangularWidgetView;
  v35 = v44;
  return sub_100035D38(v35, v34);
}

uint64_t sub_100035A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100035A8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100035AD4()
{
  result = qword_1000DF628;
  if (!qword_1000DF628)
  {
    sub_100015288(&qword_1000DF608, &qword_1000836A0);
    sub_100035A8C(&qword_1000DF630, type metadata accessor for CommuteWindowSmallWidgetView);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF628);
  }

  return result;
}

unint64_t sub_100035BC0()
{
  result = qword_1000DF638;
  if (!qword_1000DF638)
  {
    sub_100015288(&qword_1000DF5E8, &qword_100083680);
    sub_100035A8C(&qword_1000DF618, type metadata accessor for CommuteWindowMediumLargeWidgetView);
    sub_100035A8C(&qword_1000DF620, type metadata accessor for CommuteWindowAccessoryRectangularWidgetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF638);
  }

  return result;
}

unint64_t sub_100035CAC()
{
  result = qword_1000DF640;
  if (!qword_1000DF640)
  {
    sub_100015288(&qword_1000DF610, &unk_1000836A8);
    sub_100035AD4();
    sub_100035BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF640);
  }

  return result;
}

uint64_t sub_100035D38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100035DE8()
{
  sub_10002D330(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10002D330(319, &qword_1000DEBB0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CommuteWindowEntryContent(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100035ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommuteWindowEntryContent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100035F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommuteWindowEntryContent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100035FC0()
{
  result = type metadata accessor for CommuteWindowEntryContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003602C()
{
  result = qword_1000DF800;
  if (!qword_1000DF800)
  {
    sub_100015288(&qword_1000DF808, &qword_1000837C0);
    sub_100035CAC();
    sub_10002D148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF800);
  }

  return result;
}

unint64_t sub_100036114()
{
  result = qword_1000DF898[0];
  if (!qword_1000DF898[0])
  {
    sub_100015288(&qword_1000DF888, &qword_100083988);
    sub_100035A8C(&qword_1000DF880, type metadata accessor for CommuteWindowPlatterContent);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000DF898);
  }

  return result;
}

void sub_1000361D4(uint64_t a1)
{
  sub_1000368BC(319, &unk_1000DECE0, &type metadata accessor for ColorScheme);
  if (v2 <= 0x3F)
  {
    sub_1000368BC(319, &qword_1000DF920, &type metadata accessor for RedactionReasons);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000362B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10007D638() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_10007D708() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v7 + v15 + 1;
  v17 = v9 + v13 + 1;
  if (a2 <= v14)
  {
    goto LABEL_34;
  }

  v18 = *(v10 + 64) + ((v17 + (v16 & ~v15)) & ~v13) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v11 > 0xFE)
      {
        v27 = *(v10 + 48);

        return v27((v17 + ((a1 + v16) & ~v15)) & ~v13);
      }

      else
      {
        v26 = *(a1 + v7);
        if (v26 >= 2)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void sub_100036534(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10007D638() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_10007D708() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v9 + 1;
  v18 = v14 & 0xF8 | 7;
  v19 = v9 + 1 + v18;
  v20 = v11 + v15 + 1;
  v21 = *(v12 + 64) + ((v20 + (v19 & ~v18)) & ~v15) + 1;
  if (a3 <= v16)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v16 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v16 < a2)
  {
    v23 = ~v16 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (*(v12 + 64) + ((v20 + (v19 & ~v18)) & ~v15) != -1)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_61:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v13 > 0xFE)
  {
    v28 = *(v12 + 56);

    v28((v20 + (&a1[v19] & ~v18)) & ~v15, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v17 <= 3)
    {
      v29 = ~(-1 << (8 * v17));
    }

    else
    {
      v29 = -1;
    }

    if (v9 != -1)
    {
      v30 = v29 & (a2 - 255);
      if (v17 <= 3)
      {
        v31 = v9 + 1;
      }

      else
      {
        v31 = 4;
      }

      bzero(a1, v17);
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else
        {
          *a1 = v30;
        }
      }

      else if (v31 == 1)
      {
        *a1 = v30;
      }

      else
      {
        *a1 = v30;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_1000368BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007D648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MapSnapshotImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MapSnapshotImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100036A68(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100036A84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100036AF0(char a1)
{
  if ((a1 - 2) < 3u)
  {
    return 0;
  }

  if (a1)
  {
    if (qword_1000DE280 != -1)
    {
      v6._object = "t without user location";
      swift_once();
    }

    v2.super.isa = qword_1000E4B68;
    v6._countAndFlagsBits = 0x800000010008FCB0;
    v3._countAndFlagsBits = 0xD000000000000030;
    v3._object = 0x800000010008FC50;
    v5._object = 0x800000010008FC90;
    v4.value._countAndFlagsBits = 0;
    v4.value._object = 0;
    v5._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    if (qword_1000DE280 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1000E4B68;
    v6._countAndFlagsBits = 0x800000010008FC00;
    v3._countAndFlagsBits = 0xD000000000000033;
    v3._object = 0x800000010008FBC0;
    v4.value._countAndFlagsBits = 0;
    v4.value._object = 0;
    v5._countAndFlagsBits = 7364941;
    v5._object = 0xE300000000000000;
  }

  return sub_10007D258(v3, v4, v2, v5, v6);
}

uint64_t sub_100036C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015240(&qword_1000DEC18, &qword_100082C10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100026310(v2, &v17 - v11, &qword_1000DEC18, &qword_100082C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007D638();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10007E2B8();
    v16 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100036E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DEF28, &qword_100083930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_100026310(v2 + *(a1 + 36), &v18 - v12, &qword_1000DEF28, &qword_100083930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10007D708();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_10007E2B8();
    v17 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100037060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_10007DE88();
  a2[1] = v5;
  v6 = sub_100015240(&qword_1000DF928, &qword_100083A58);
  return sub_1000370BC(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
}

uint64_t sub_1000370BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v94 = type metadata accessor for PlaceholderBackgroundView(0);
  v7 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v89 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_100015240(&qword_1000DF930, &unk_100083A60);
  v9 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = &v73 - v10;
  v11 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v76 = &v73 - v13;
  v14 = sub_100015240(&qword_1000DF938, &qword_100083A70);
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  __chkstk_darwin(v14);
  v77 = &v73 - v16;
  v90 = sub_100015240(&qword_1000DF940, &qword_100083A78);
  v17 = *(*(v90 - 8) + 64);
  v18 = __chkstk_darwin(v90);
  v80 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = &v73 - v20;
  v21 = sub_10007D638();
  v84 = *(v21 - 8);
  v85 = v21;
  v22 = *(v84 + 64);
  v23 = __chkstk_darwin(v21);
  v82 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v83 = &v73 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_10007E3A8();
  v86 = *(v27 - 8);
  v87 = v27;
  v28 = *(v86 + 64);
  __chkstk_darwin(v27);
  v30 = &v73 - v29;
  v31 = sub_10007D708();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v73 - v37;
  v88 = a3;
  v39 = type metadata accessor for MapSnapshotImage();
  v40 = v39;
  v75 = *(a1 + *(v39 + 44));
  if ((v75 & 0xFE) == 2)
  {
    v74 = a1;
    sub_100036E5C(v39, v38);
    sub_10007D6F8();
    sub_100037CE4(&qword_1000DF958, &type metadata accessor for RedactionReasons);
    v41 = sub_10007E3E8();
    v42 = *(v32 + 8);
    v42(v36, v31);
    v42(v38, v31);
    a1 = v74;
    if (v41)
    {
      goto LABEL_10;
    }
  }

  v43 = a1 + *(v40 + 40);
  (*(v88 + 24))(a2, v88);
  v44 = *(AssociatedTypeWitness - 8);
  if ((*(v44 + 48))(v30, 1, AssociatedTypeWitness) == 1)
  {
    (*(v86 + 8))(v30, v87);
LABEL_10:
    KeyPath = swift_getKeyPath();
    v72 = v89;
    *v89 = KeyPath;
    sub_100015240(&qword_1000DEF58, &qword_100083AB0);
    swift_storeEnumTagMultiPayload();
    sub_100037AE8(v72, v92);
    swift_storeEnumTagMultiPayload();
    sub_100037B4C();
    sub_100037CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView);
    sub_10007D9D8();
    return sub_100037C20(v72);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v48 = v47;
  (*(v44 + 8))(v30, AssociatedTypeWitness);
  if (v46 == 1)
  {
    goto LABEL_10;
  }

  v49 = v83;
  sub_100036C5C(v83);
  v51 = v84;
  v50 = v85;
  v52 = v82;
  (*(v84 + 16))(v82, v49, v85);
  v53 = (*(v51 + 88))(v52, v50);
  v54 = v46;
  if (v53 == enum case for ColorScheme.light(_:) || (v54 = v48, v53 == enum case for ColorScheme.dark(_:)))
  {
    v55 = *(v51 + 8);
    v56 = v54;
    v55(v49, v50);

    if (v54)
    {
      v57 = v56;
      sub_10007DD78();
      v58 = v76;
      sub_10007DFB8();
      v59 = sub_10007DFC8();
      (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
      v60 = v77;
      sub_10007DDD8();

      sub_100037C7C(v58);
      v61 = v75;
      swift_getOpaqueTypeConformance2();
      v62 = v79;
      v63 = v80;
      sub_10007DCC8();

      (*(v78 + 8))(v60, v62);
      v95 = sub_100036AF0(v61);
      v96 = v64;
      sub_10002D9A8();
      v65 = sub_10007DBF8();
      v67 = v66;
      LOBYTE(v60) = v68;
      sub_100036AF0(v61);

      v69 = v81;
      sub_10007D6D8();
      sub_10002D9FC(v65, v67, v60 & 1);

      sub_100007C84(v63);
      sub_100007CEC(v69, v92);
      swift_storeEnumTagMultiPayload();
      sub_100037B4C();
      sub_100037CE4(&qword_1000DF950, type metadata accessor for PlaceholderBackgroundView);
      sub_10007D9D8();

      return sub_100007C84(v69);
    }

    goto LABEL_10;
  }

  result = sub_10007E518();
  __break(1u);
  return result;
}

uint64_t sub_100037AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderBackgroundView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100037B4C()
{
  result = qword_1000DF948;
  if (!qword_1000DF948)
  {
    sub_100015288(&qword_1000DF940, &qword_100083A78);
    swift_getOpaqueTypeConformance2();
    sub_100037CE4(&qword_1000DF218, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF948);
  }

  return result;
}

uint64_t sub_100037C20(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderBackgroundView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037C7C(uint64_t a1)
{
  v2 = sub_100015240(&qword_1000DF1E8, &unk_100084A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037CE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100037D5C()
{
  result = qword_1000DF960;
  if (!qword_1000DF960)
  {
    sub_100015288(qword_1000DF968, &qword_100083AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DF960);
  }

  return result;
}

uint64_t sub_100037DC0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_10007DEA8();
}

uint64_t sub_100037F90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v37 = a2;
  v3 = sub_100015240(&qword_1000DF9F8, &qword_100083B50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = v31 - v5;
  sub_100015288(&qword_1000DFA00, &qword_100083B58);
  v32 = *(a1 + 16);
  sub_10007D6E8();
  swift_getTupleTypeMetadata2();
  v31[3] = sub_10007DE98();
  v31[2] = swift_getWitnessTable();
  v6 = sub_10007DE18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  v11 = sub_10007D6E8();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = v31 - v13;
  WitnessTable = swift_getWitnessTable();
  v42 = &protocol witness table for _PaddingLayout;
  v31[1] = swift_getWitnessTable();
  v15 = type metadata accessor for ContentSizeCategoryLimiter();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v31 - v21;
  v23 = *(v33 + 24);
  v38 = v32;
  v39 = v23;
  v40 = v35;
  sub_10007DE88();
  sub_10007DE08();
  sub_10007DCD8();
  (*(v7 + 8))(v10, v6);
  v24 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v25 = sub_10007D938();
  v26 = *(v25 - 8);
  v27 = v36;
  (*(v26 + 104))(v36, v24, v25);
  (*(v26 + 56))(v27, 0, 1, v25);
  sub_100038820(v27, v11, v20);
  sub_1000256C0(v27, &qword_1000DF9F8, &qword_100083B50);
  (*(v34 + 8))(v14, v11);
  swift_getWitnessTable();
  v28 = v16[2];
  v28(v22, v20, v15);
  v29 = v16[1];
  v29(v20, v15);
  v28(v37, v22, v15);
  return (v29)(v22, v15);
}

uint64_t sub_100038454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_10007D6E8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &WitnessTable - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v33 = &WitnessTable - v11;
  v12 = sub_100015240(&qword_1000DFA00, &qword_100083B58);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v32 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &WitnessTable - v16;
  sub_10007DE58();
  *&v17[*(sub_100015240(&qword_1000DFA18, &qword_100083BA0) + 56)] = 256;
  if (qword_1000DE240 != -1)
  {
    swift_once();
  }

  v18 = qword_1000E4AF0;
  v19 = &v17[*(sub_100015240(&qword_1000DFA20, &qword_100083BA8) + 36)];
  *v19 = v18;
  v19[1] = 0x4000000000000000;
  v19[2] = 0;
  v19[3] = 0;
  v20 = qword_1000DE248;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = &v17[*(v12 + 36)];
  *v21 = qword_1000E4AF8;
  *(v21 + 8) = xmmword_100083AC0;
  *(v21 + 3) = 0x3FF8000000000000;
  v22 = type metadata accessor for PlatterView();
  v23 = *(v22 + 40);
  v24 = *(a1 + *(v22 + 36));

  sub_10007DCD8();
  v38[2] = a2;
  v38[3] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v25 = v12;
  v26 = v6[2];
  v27 = v33;
  v26(v33, v10, v5);
  v28 = v6[1];
  v28(v10, v5);
  v29 = v32;
  sub_100026310(v17, v32, &qword_1000DFA00, &qword_100083B58);
  v38[0] = v29;
  v26(v10, v27, v5);
  v38[1] = v10;
  v37[0] = v25;
  v37[1] = v5;
  v35 = sub_100039A14();
  v36 = WitnessTable;
  sub_100037DC0(v38, 2uLL, v37);
  v28(v27, v5);
  sub_1000256C0(v17, &qword_1000DFA00, &qword_100083B58);
  v28(v10, v5);
  return sub_1000256C0(v29, &qword_1000DFA00, &qword_100083B58);
}

uint64_t sub_100038820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22 = a3;
  v7 = sub_100015240(&qword_1000DFA08, &qword_100083B60);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = (&v21 - v10);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100015240(&qword_1000DF9F8, &qword_100083B50);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v21 - v18;
  sub_100026310(a1, &v21 - v18, &qword_1000DF9F8, &qword_100083B50);
  (*(v12 + 16))(v15, v4, a2);
  sub_1000398E4(v11);
  return sub_100039944(v19, v11, v15, a2, v22);
}

uint64_t sub_1000389E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007D848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100015240(&qword_1000DFA10, &qword_100083B98);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_100026310(v2 + *(a1 + 36), &v18 - v12, &qword_1000DFA10, &qword_100083B98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10007D938();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_10007E2B8();
    v17 = sub_10007DA98();
    sub_10007D598();

    sub_10007D838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100038BE8()
{
  result = sub_10007DD58();
  qword_1000E4AE8 = result;
  return result;
}

void sub_100038C24(uint64_t a1)
{
  sub_10003A39C(319, &qword_1000DF9F0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100038CE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10007DF98() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v12 = (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9) + v10;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v21 = *(*(*(a3 + 16) - 8) + 48);

        return v21((((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
      }

      else
      {
        v20 = *(a1 + v6);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_100038EF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10007DF98() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + v13;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v22 = v8 + 1;
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(((&a1[v22 + 7] & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v22 <= 3)
    {
      v24 = ~(-1 << (8 * v22));
    }

    else
    {
      v24 = -1;
    }

    if (v8 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v22 <= 3)
      {
        v26 = v8 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v22);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v8] = -a2;
  }
}

uint64_t sub_10003927C()
{
  result = sub_10007DD58();
  qword_1000E4AF0 = result;
  return result;
}

uint64_t sub_1000392C0()
{
  result = sub_10007DD58();
  qword_1000E4AF8 = result;
  return result;
}

uint64_t sub_1000392FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100015240(&qword_1000DF9F8, &qword_100083B50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_10007D938();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_100026310(v2, v8, &qword_1000DF9F8, &qword_100083B50);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v31 = a2;
    v30 = *(v10 + 32);
    v30(v16, v8, v9);
    v29 = a1;
    sub_1000389E4(a1, v14);
    v17 = sub_10007D928();
    v18 = sub_100039B5C(v14, v17);
    v20 = v19;

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }

    v22 = sub_10007D928();
    v23 = sub_100039B5C(v16, v22);
    v25 = v24;

    v26 = *(v10 + 8);
    v26(v14, v9);
    if (v25)
    {
      if (v21 > 0)
      {
        return (v30)(v31, v16, v9);
      }
    }

    else if (v23 < v21)
    {
      return (v30)(v31, v16, v9);
    }

    v26(v16, v9);
    a2 = v31;
    a1 = v29;
    return sub_1000389E4(a1, a2);
  }

  sub_1000256C0(v8, &qword_1000DF9F8, &qword_100083B50);
  return sub_1000389E4(a1, a2);
}

uint64_t sub_100039584@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v22 = sub_10007D938();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a1 + 16);
  sub_100015288(&qword_1000DFAD0, &unk_100083C30);
  v7 = sub_10007D6E8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  v15 = *(a1 + 40);
  swift_getKeyPath();
  sub_1000392FC(a1, v6);
  v16 = *(a1 + 24);
  sub_10007DC68();

  (*(v3 + 8))(v6, v22);
  v17 = sub_10002DDAC(&qword_1000DFAD8, &qword_1000DFAD0, &unk_100083C30);
  v24 = v16;
  v25 = v17;
  swift_getWitnessTable();
  v18 = v8[2];
  v18(v14, v12, v7);
  v19 = v8[1];
  v19(v12, v7);
  v18(v23, v14, v7);
  return (v19)(v14, v7);
}

uint64_t sub_10003981C(uint64_t a1)
{
  v2 = sub_10007D938();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10007D758();
}

uint64_t sub_1000398E4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100015240(&qword_1000DFA10, &qword_100083B98);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100039944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10002DB0C(a1, a5, &qword_1000DF9F8, &qword_100083B50);
  v9 = type metadata accessor for ContentSizeCategoryLimiter();
  sub_10002DB0C(a2, a5 + *(v9 + 36), &qword_1000DFA08, &qword_100083B60);
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 40);

  return v10(v11, a3, a4);
}

unint64_t sub_100039A14()
{
  result = qword_1000DFA28;
  if (!qword_1000DFA28)
  {
    sub_100015288(&qword_1000DFA00, &qword_100083B58);
    sub_100039AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFA28);
  }

  return result;
}

unint64_t sub_100039AA0()
{
  result = qword_1000DFA30;
  if (!qword_1000DFA30)
  {
    sub_100015288(&qword_1000DFA20, &qword_100083BA8);
    sub_10002DDAC(qword_1000DFA38, &qword_1000DFA18, &qword_100083BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFA30);
  }

  return result;
}

uint64_t sub_100039B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_10007D938() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_10003A444();
  v7 = 0;
  while ((sub_10007E128() & 1) == 0)
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

void sub_100039C4C(uint64_t a1)
{
  sub_10003A39C(319, &qword_1000DFAC0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    sub_10003A39C(319, &qword_1000DFAC8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100039D4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_10007D938() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v6 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v6 + 64);
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v9 <= v13)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v6 + 80) & 0xF8 | 7;
  v19 = v17 + v18;
  v20 = v11 + v14 + 1;
  if (a2 > v16)
  {
    v21 = ((v20 + (v19 & ~v18)) & ~v14) + *(v12 + 64);
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_19;
    }

    v24 = ((a2 - v16 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v24 >= 2)
    {
LABEL_19:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_39;
      }

LABEL_26:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = ((v20 + (v19 & ~v18)) & ~v14) + *(v12 + 64);
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v16 + (v27 | v25) + 1;
    }
  }

LABEL_39:
  if (v9 == v16)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v31 = (*(v7 + 48))(a1);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v29 = (a1 + v19) & ~v18;
    if (v15 > 0xFE)
    {
      v32 = *(v12 + 48);

      return v32((v20 + v29) & ~v14, v13);
    }

    else
    {
      v30 = *(v29 + v11);
      if (v30 >= 2)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_100039FEC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_10007D938();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(*(v8 - 8) + 64);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  if (v13 <= v16)
  {
    v18 = *(v15 + 84);
  }

  else
  {
    v18 = v13;
  }

  if (v18 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v18;
  }

  if (!v11)
  {
    ++v12;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = v12 + v20;
  v22 = (v12 + v20) & ~v20;
  v23 = v14 + 1;
  v24 = v14 + 1 + v17;
  v25 = ((v24 + v22) & ~v17) + *(v15 + 64);
  if (a3 <= v19)
  {
    goto LABEL_26;
  }

  if (v25 <= 3)
  {
    v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v26))
    {
      v9 = 4;
      if (v19 >= a2)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }

LABEL_26:
    if (v19 >= a2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v9 = 1;
  if (v19 >= a2)
  {
LABEL_36:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_43;
      }

      *&a1[v25] = 0;
    }

    else if (v9)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

LABEL_43:
      if (v13 == v19)
      {
        v31 = *(v10 + 56);

        v31(a1, (a2 + 1));
      }

      else
      {
        v32 = (&a1[v21] & ~v20);
        if (v18 > 0xFE)
        {
          v33 = *(v15 + 56);

          v33(&v32[v24] & ~v17, a2, v16);
        }

        else if (a2 > 0xFE)
        {
          if (v23 <= 3)
          {
            v34 = ~(-1 << (8 * v23));
          }

          else
          {
            v34 = -1;
          }

          if (v14 != -1)
          {
            v35 = v34 & (a2 - 255);
            if (v23 <= 3)
            {
              v36 = v14 + 1;
            }

            else
            {
              v36 = 4;
            }

            bzero(v32, v23);
            if (v36 > 2)
            {
              if (v36 == 3)
              {
                *v32 = v35;
                v32[2] = BYTE2(v35);
              }

              else
              {
                *v32 = v35;
              }
            }

            else if (v36 == 1)
            {
              *v32 = v35;
            }

            else
            {
              *v32 = v35;
            }
          }
        }

        else
        {
          v32[v14] = -a2;
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

LABEL_27:
  v28 = ~v19 + a2;
  if (v25 >= 4)
  {
    bzero(a1, v25);
    *a1 = v28;
    v29 = 1;
    if (v9 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v29 = (v28 >> (8 * v25)) + 1;
  if (!v25)
  {
LABEL_56:
    if (v9 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v30 = v28 & ~(-1 << (8 * v25));
  bzero(a1, v25);
  if (v25 == 3)
  {
    *a1 = v30;
    a1[2] = BYTE2(v30);
    goto LABEL_56;
  }

  if (v25 == 2)
  {
    *a1 = v30;
    if (v9 > 1)
    {
LABEL_60:
      if (v9 == 2)
      {
        *&a1[v25] = v29;
      }

      else
      {
        *&a1[v25] = v29;
      }

      return;
    }
  }

  else
  {
    *a1 = v28;
    if (v9 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v9)
  {
    a1[v25] = v29;
  }
}

void sub_10003A39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10003A444()
{
  result = qword_1000DFAE0;
  if (!qword_1000DFAE0)
  {
    sub_10007D938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DFAE0);
  }

  return result;
}

void *sub_10003A4A0(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_10007E4A8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10003ECFC(i, v6);
    sub_10002620C(0, &qword_1000DFD10, GEOSearchCategory_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_10007E488();
    v4 = v7[2];
    sub_10007E4B8();
    sub_10007E4C8();
    sub_10007E498();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void *sub_10003A5AC(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_10007E4A8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10003ECFC(i, v6);
    type metadata accessor for MapSnapshotter.Context();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_10007E488();
    v4 = v7[2];
    sub_10007E4B8();
    sub_10007E4C8();
    sub_10007E498();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t *sub_10003A698(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_100077E54(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10003ECFC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100077E54((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10003A7AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100015240(&qword_1000DEA10, &unk_100083CE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for GeneralMapsStateCollector.NearbyCategorySnapshot();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000256C0(a1, &qword_1000DEA10, &unk_100083CE0);
    v15 = *v2;
    v16 = sub_100077B50(a2 & 1);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100040210();
        v21 = v26;
      }

      sub_100025500(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_10003F80C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1000256C0(v9, &qword_1000DEA10, &unk_100083CE0);
  }

  else
  {
    sub_100025500(a1, v14);
    v22 = *v2;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v2;
    result = sub_10003FB68(v14, a2 & 1, v23);
    *v2 = v26;
  }

  return result;
}

void sub_10003A9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10003FE2C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v9 = *v3;
    v10 = sub_100077C00(a3);
    if (v11)
    {
      v12 = v10;
      v13 = *v4;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v19 = *v4;
      if (!v14)
      {
        sub_10004057C();
        v15 = v19;
      }

      v16 = *(*(v15 + 56) + 16 * v12 + 8);

      sub_10003F9DC(v12, v15);

      *v4 = v15;
    }

    else
    {
    }
  }
}

uint64_t sub_10003AAE8()
{
  sub_100030228(*(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  return v0;
}

uint64_t sub_10003AB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v23 = a1;
  v24 = a2;
  v3 = sub_10007DEB8();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007DED8();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100015240(&qword_1000DE928, &unk_100082900);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v22 - v14;
  sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
  v16 = sub_10007E328();
  sub_100026310(v23, v15, &qword_1000DE928, &unk_100082900);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v25;
  v18[3] = v19;
  v18[4] = v26;
  sub_10002522C(v15, v18 + v17);
  aBlock[4] = sub_100040980;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000041A4;
  aBlock[3] = &unk_1000C9100;
  v20 = _Block_copy(aBlock);

  sub_10007DEC8();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100040A84(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);
  sub_100015240(&unk_1000DE980, &unk_1000835B0);
  sub_100002EBC();
  sub_10007E3F8();
  sub_10007E338();
  _Block_release(v20);

  (*(v29 + 8))(v6, v3);
  return (*(v27 + 8))(v10, v28);
}

void sub_10003AECC()
{
  v1 = v0;
  v2 = sub_10007DEF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v42[-v8];
  v10 = sub_10007DEB8();
  v11 = *(v10[-1].isa + 8);
  __chkstk_darwin(v10);
  sub_10007D318();
  v13 = v12 + -5.0;
  if (v12 + -5.0 <= 0.0)
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v34 = sub_10007D5C8();
    sub_1000046BC(v34, qword_1000E4B28);

    v45 = sub_10007D5A8();
    v35 = sub_10007E2A8();

    if (os_log_type_enabled(v45, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136446210;
      v46 = *v1;
      aBlock[0] = v37;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v38 = sub_10007E168();
      v40 = sub_100051190(v38, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v45, v35, "%{public}s: could not schedule snapshot cancellation", v36, 0xCu);
      sub_1000250AC(v37);
    }

    else
    {
      v41 = v45;
    }
  }

  else
  {
    if (qword_1000DE268 != -1)
    {
      swift_once();
    }

    v45 = v10;
    v14 = sub_10007D5C8();
    sub_1000046BC(v14, qword_1000E4B28);

    v15 = sub_10007D5A8();
    v16 = sub_10007E298();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v17 = 136446466;
      v46 = *v1;
      aBlock[0] = v18;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v19 = sub_10007E168();
      v43 = v16;
      v21 = v7;
      v22 = v9;
      v23 = v3;
      v24 = v2;
      v25 = sub_100051190(v19, v20, aBlock);

      *(v17 + 4) = v25;
      v2 = v24;
      v3 = v23;
      v9 = v22;
      v7 = v21;
      *(v17 + 12) = 2050;
      *(v17 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v15, v43, "%{public}s: scheduled snapshot cancellation in %{public}f seconds", v17, 0x16u);
      sub_1000250AC(v44);
    }

    v26 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100040978;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000041A4;
    aBlock[3] = &unk_1000C90B0;
    _Block_copy(aBlock);
    v46 = &_swiftEmptyArrayStorage;
    sub_100040A84(&qword_1000DF520, &type metadata accessor for DispatchWorkItemFlags);

    sub_100015240(&unk_1000DE980, &unk_1000835B0);
    sub_100002EBC();
    sub_10007E3F8();
    v27 = sub_10007DF38();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_10007DF08();

    v31 = *(v1 + 64);
    *(v1 + 64) = v30;

    sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
    v32 = sub_10007E328();
    sub_10007DEE8();
    sub_10007DF58();
    v33 = *(v3 + 8);
    v33(v7, v2);
    if (*(v1 + 64))
    {

      sub_10007E308();

      v33(v9, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10003B530()
{
  v1 = v0;
  v2 = sub_10007DF48();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v7 = v0[7];
  v8 = qword_1000DE268;

  if (v8 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v9 = sub_10007D5C8();
    sub_1000046BC(v9, qword_1000E4B28);
    swift_bridgeObjectRetain_n();

    v10 = sub_10007D5A8();
    v11 = sub_10007E2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136446466;
      v33 = *v1;
      v34 = v13;
      sub_100015240(&qword_1000DFCD8, &qword_100083CB0);
      v14 = sub_10007E168();
      v16 = sub_100051190(v14, v15, &v34);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      v17 = *(v7 + 16);

      *(v12 + 14) = v17;

      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: will cancel %{public}ld snapshots", v12, 0x16u);
      sub_1000250AC(v13);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10002620C(0, &qword_1000E0890, OS_dispatch_queue_ptr);
    *v6 = sub_10007E328();
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v18 = sub_10007DF68();
    v19 = *(v3 + 8);
    v3 += 8;
    result = v19(v6, v2);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v1 = 0;
    v6 = (v7 + 64);
    v21 = 1 << *(v7 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v7 + 64);
    v24 = (v21 + 63) >> 6;
    while (v23)
    {
      v25 = v1;
LABEL_14:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v27 = v26 | (v25 << 6);
      v28 = *(*(v7 + 48) + 8 * v27);
      v29 = *(v7 + 56) + 16 * v27;
      v31 = *v29;
      v30 = *(v29 + 8);
      v2 = v28;

      [v2 cancel];
      v33 = 0;
      v34 = 0;
      v31(&v34, &v33);
    }

    while (1)
    {
      v25 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v25 >= v24)
      {
      }

      v23 = v6[v25];
      v1 = (v1 + 1);
      if (v23)
      {
        v1 = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  __break(1u);
  return result;
}