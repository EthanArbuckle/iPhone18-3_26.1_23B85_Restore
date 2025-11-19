uint64_t sub_10003A078()
{
  v0 = sub_100080308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A794(v3, qword_1000AE700);
  sub_10000A480(v0, qword_1000AE700);
  v6 = [objc_opt_self() books];
  v7 = [v6 containerURL];

  sub_1000802C8();
  sub_1000802B8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10003A1D4()
{
  v0 = sub_100080308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A794(v3, qword_1000AE718);
  sub_10000A480(v0, qword_1000AE718);
  if (qword_1000AC670 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A480(v0, qword_1000AE700);
  (*(v1 + 16))(v5, v6, v0);
  sub_1000802B8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10003A334@<X0>(uint64_t a1@<X8>)
{
  v29 = 1;
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  if (qword_1000AC678 != -1)
  {
    swift_once();
  }

  v4 = sub_100080308();
  v5 = sub_10000A480(v4, qword_1000AE718);
  sub_1000802D8();
  v6 = sub_1000811D8();

  v7 = [v3 fileExistsAtPath:v6 isDirectory:&v29];

  if (v7)
  {
    return (*(*(v4 - 8) + 16))(a1, v5, v4);
  }

  if (qword_1000AC688 != -1)
  {
    swift_once();
  }

  v9 = sub_1000806F8();
  sub_10000A480(v9, qword_1000AE738);
  v10 = sub_1000806D8();
  v11 = sub_100081468();
  v28 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    sub_10003C290();
    v14 = sub_100081608();
    v16 = sub_10006150C(v14, v15, &v30);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating caches directory for cover at %s", v12, 0xCu);
    sub_100019DF8(v13);
  }

  v17 = [v2 defaultManager];
  sub_1000802A8(v18);
  v20 = v19;
  v30 = 0;
  v21 = [v17 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v30];

  if (v21)
  {
    v22 = v30;
    v23 = [v2 defaultManager];
    sub_1000802D8();
    v24 = sub_1000811D8();

    v25 = [v23 fileExistsAtPath:v24 isDirectory:&v29];

    a1 = v28;
    if (v25)
    {
      return (*(*(v4 - 8) + 16))(a1, v5, v4);
    }

    sub_10003C23C();
    swift_allocError();
    *v26 = 0;
  }

  else
  {
    v27 = v30;
    sub_1000801C8();
  }

  return swift_willThrow();
}

void sub_10003A6D0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1000AE730 = v2;
}

id sub_10003A734(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  v8 = sub_100080308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v21 - v14;
  if (qword_1000AC680 != -1)
  {
    swift_once();
  }

  v21[3] = a3;
  sub_100039DE0(a1, a2, a3, *&qword_1000AE730);
  sub_10003A334(v13);
  sub_1000802B8();

  v16 = *(v9 + 8);
  v16(v13, v8);
  v17 = [objc_opt_self() defaultManager];
  sub_1000802D8();
  v18 = sub_1000811D8();

  v19 = [v17 fileExistsAtPath:v18];

  v16(v15, v8);
  return v19;
}

id sub_10003ABAC(uint64_t a1, unint64_t a2, int a3)
{
  v7 = *v3;
  v8 = sub_100080308();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v56 = &v51 - v14;
  if (qword_1000AC688 != -1)
  {
    swift_once();
  }

  v15 = sub_1000806F8();
  v16 = sub_10000A480(v15, qword_1000AE738);

  v17 = sub_1000806D8();
  v18 = sub_100081468();

  if (os_log_type_enabled(v17, v18))
  {
    v51 = v7;
    v52 = v16;
    v19 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v19 = 136315394;
    v53 = a1;
    *(v19 + 4) = sub_10006150C(a1, a2, v57);
    *(v19 + 12) = 2080;
    v20 = 0xEE007265766F4364;
    v21 = a3;
    v22 = 0x436E6F6349707061;
    v23 = 0xEC0000007265766FLL;
    if (a3 != 2)
    {
      v22 = 0xD000000000000010;
      v23 = 0x8000000100082F90;
    }

    v24 = 0x706F72646B636162;
    if (a3)
    {
      v20 = 0xE800000000000000;
    }

    else
    {
      v24 = 0x6574616572746E75;
    }

    if (a3 <= 1u)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
    }

    if (a3 <= 1u)
    {
      v26 = v20;
    }

    else
    {
      v26 = v23;
    }

    v27 = sub_10006150C(v25, v26, v57);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Getting cached image. (assetID: '%s', type: %s)", v19, 0x16u);
    swift_arrayDestroy();

    a3 = v21;
    a1 = v53;
  }

  else
  {
  }

  if (qword_1000AC680 != -1)
  {
    swift_once();
  }

  v28 = *&qword_1000AE730;
  sub_100039DE0(a1, a2, a3, *&qword_1000AE730);
  sub_10003A334(v12);
  LODWORD(v52) = a3;
  sub_1000802B8();

  v29 = v54;
  v30 = v12;
  v31 = v55;
  v53 = *(v54 + 8);
  v53(v30, v55);
  v32 = v56;
  (*(v29 + 32))();
  v33 = [objc_opt_self() defaultManager];
  sub_1000802D8();
  v34 = sub_1000811D8();

  v35 = [v33 fileExistsAtPath:v34];

  if (v35)
  {
    v43 = sub_100080318();
    v45 = v44;
    v46 = objc_allocWithZone(UIImage);
    isa = sub_100080328().super.isa;
    v48 = [v46 initWithData:isa scale:v28];

    sub_10001F0D4(v43, v45);
    v53(v32, v31);
    return v48;
  }

  else
  {
    v36 = a1;

    v37 = sub_1000806D8();
    v38 = sub_100081468();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_10006150C(v36, a2, v57);
      *(v39 + 12) = 2080;
      if (v52 > 1u)
      {
        if (v52 == 2)
        {
          v40 = 0x436E6F6349707061;
          v41 = 0xEC0000007265766FLL;
        }

        else
        {
          v40 = 0xD000000000000010;
          v41 = 0x8000000100082F90;
        }
      }

      else if (v52)
      {
        v41 = 0xE800000000000000;
        v40 = 0x706F72646B636162;
      }

      else
      {
        v40 = 0x6574616572746E75;
        v41 = 0xEE007265766F4364;
      }

      v50 = sub_10006150C(v40, v41, v57);

      *(v39 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "No cached image found. (assetID: '%s', type: %s)", v39, 0x16u);
      swift_arrayDestroy();

      v42 = v56;
    }

    else
    {

      v42 = v32;
    }

    v53(v42, v31);
    return 0;
  }
}

void sub_10003B608(uint64_t a1, unint64_t a2, int a3, CGImage *a4, void (**a5)(char *, uint64_t), uint64_t *a6)
{
  v109 = a4;
  v107 = *a5;
  v10 = sub_100080608();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v99 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100080308();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  v16 = __chkstk_darwin(v14);
  v96 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v110 = &v95 - v19;
  __chkstk_darwin(v18);
  v106 = &v95 - v20;
  if (qword_1000AC688 != -1)
  {
    swift_once();
  }

  v21 = sub_1000806F8();
  v22 = sub_10000A480(v21, qword_1000AE738);

  v105 = v22;
  v23 = sub_1000806D8();
  v24 = sub_100081468();

  v25 = os_log_type_enabled(v23, v24);
  v100 = v10;
  v102 = v11;
  if (v25)
  {
    v103 = a6;
    v104 = v14;
    v26 = a3;
    v27 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v27 = 136315394;
    v101 = a1;
    *(v27 + 4) = sub_10006150C(a1, a2, &v111);
    *(v27 + 12) = 2080;
    v28 = 0xEE007265766F4364;
    v98 = v26;
    v29 = 0x436E6F6349707061;
    v30 = 0xEC0000007265766FLL;
    if (v26 != 2)
    {
      v29 = 0xD000000000000010;
      v30 = 0x8000000100082F90;
    }

    v31 = 0x706F72646B636162;
    if (v26)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v31 = 0x6574616572746E75;
    }

    if (v26 <= 1u)
    {
      v32 = v31;
    }

    else
    {
      v32 = v29;
    }

    if (v26 <= 1u)
    {
      v33 = v28;
    }

    else
    {
      v33 = v30;
    }

    v34 = sub_10006150C(v32, v33, &v111);

    *(v27 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Saving cached image. (assetID: '%s', type: %s)", v27, 0x16u);
    swift_arrayDestroy();

    a6 = v103;
    v14 = v104;
    a1 = v101;
    a3 = v98;
  }

  else
  {
  }

  v35 = [(CGImage *)v109 CGImage];
  v36 = v110;
  if (v35)
  {
    v109 = v35;
    if (qword_1000AC680 != -1)
    {
      swift_once();
    }

    sub_100039DE0(a1, a2, a3, *&qword_1000AE730);
    v37 = v108;
    sub_10003A334(v36);
    v38 = v36;
    v39 = v37;
    if (v37)
    {
    }

    else
    {
      v98 = a3;
      v101 = a1;
      v103 = a6;
      sub_1000802B8();

      v50 = v97;
      v51 = *(v97 + 8);
      v110 = (v97 + 8);
      v108 = v51;
      v51(v38, v14);
      sub_1000802A8(v52);
      v104 = v14;
      v54 = v53;
      v55 = v99;
      sub_1000805D8();
      sub_1000805B8();
      v57 = v102 + 8;
      v56 = *(v102 + 8);
      v56(v55, v100);
      v58 = sub_1000811D8();

      v59 = CGImageDestinationCreateWithURL(v54, v58, 1uLL, 0);

      if (v59)
      {
        v60 = v109;
        CGImageDestinationAddImage(v59, v109, 0);
        if (CGImageDestinationFinalize(v59))
        {
          v108(v106, v104);

          return;
        }

        v79 = sub_1000806D8();
        v80 = sub_100081448();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *v81 = 136315394;
          *(v81 + 4) = sub_10006150C(v101, a2, &v111);
          *(v81 + 12) = 2080;
          v82 = 0xEE007265766F4364;
          v83 = 0x436E6F6349707061;
          v84 = 0xEC0000007265766FLL;
          if (v98 != 2)
          {
            v83 = 0xD000000000000010;
            v84 = 0x8000000100082F90;
          }

          v85 = 0x706F72646B636162;
          if (v98)
          {
            v82 = 0xE800000000000000;
          }

          else
          {
            v85 = 0x6574616572746E75;
          }

          if (v98 <= 1u)
          {
            v86 = v85;
          }

          else
          {
            v86 = v83;
          }

          if (v98 <= 1u)
          {
            v87 = v82;
          }

          else
          {
            v87 = v84;
          }

          v88 = sub_10006150C(v86, v87, &v111);

          *(v81 + 14) = v88;
          _os_log_impl(&_mh_execute_header, v79, v80, "Failed to write cached image file. (assetID: '%s', type: %s)", v81, 0x16u);
          swift_arrayDestroy();
        }

        v89 = v104;
        v90 = v106;
        sub_10003C23C();
        v39 = swift_allocError();
        *v91 = 3;
        swift_willThrow();

        v108(v90, v89);
        a6 = v103;
      }

      else
      {
        v107 = v56;
        v102 = v57;
        v62 = v96;
        v63 = v104;
        (*(v50 + 16))(v96, v106, v104);

        v64 = sub_1000806D8();
        v65 = sub_100081448();

        v66 = v63;
        if (os_log_type_enabled(v64, v65))
        {
          v67 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v111 = v105;
          *v67 = 136315650;
          *(v67 + 4) = sub_10006150C(v101, a2, &v111);
          *(v67 + 12) = 2080;
          v68 = v99;
          sub_1000805D8();
          v69 = sub_1000805B8();
          v71 = v70;
          v107(v68, v100);
          v72 = sub_10006150C(v69, v71, &v111);

          *(v67 + 14) = v72;
          *(v67 + 22) = 2080;
          sub_10003C290();
          v73 = sub_100081608();
          v75 = v74;
          v76 = v62;
          v77 = v108;
          v108(v76, v66);
          v78 = sub_10006150C(v73, v75, &v111);

          *(v67 + 24) = v78;
          _os_log_impl(&_mh_execute_header, v64, v65, "Failed to create destination in CGImageDestinationCreateWithURL. (assetID: '%s', type: %s, url: %s", v67, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v92 = v62;
          v77 = v108;
          v108(v92, v63);
        }

        a6 = v103;
        v93 = v109;
        sub_10003C23C();
        v39 = swift_allocError();
        *v94 = 2;
        swift_willThrow();

        v77(v106, v66);
      }
    }
  }

  else
  {

    v40 = sub_1000806D8();
    v41 = sub_100081448();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = sub_10006150C(a1, a2, &v111);
      *(v42 + 12) = 2080;
      v43 = 0xEE007265766F4364;
      v44 = 0x436E6F6349707061;
      v45 = 0xEC0000007265766FLL;
      if (a3 != 2)
      {
        v44 = 0xD000000000000010;
        v45 = 0x8000000100082F90;
      }

      v46 = 0x706F72646B636162;
      if (a3)
      {
        v43 = 0xE800000000000000;
      }

      else
      {
        v46 = 0x6574616572746E75;
      }

      if (a3 <= 1u)
      {
        v47 = v46;
      }

      else
      {
        v47 = v44;
      }

      if (a3 <= 1u)
      {
        v48 = v43;
      }

      else
      {
        v48 = v45;
      }

      v49 = sub_10006150C(v47, v48, &v111);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Can't save cached image without cgImage. (assetID: '%s', type: %s)", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10003C23C();
    v39 = swift_allocError();
    *v61 = 1;
    swift_willThrow();
  }

  *a6 = v39;
}

uint64_t sub_10003C1BC()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AE738);
  sub_10000A480(v0, qword_1000AE738);
  return sub_1000806E8();
}

unint64_t sub_10003C23C()
{
  result = qword_1000AE810;
  if (!qword_1000AE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE810);
  }

  return result;
}

unint64_t sub_10003C290()
{
  result = qword_1000AE818;
  if (!qword_1000AE818)
  {
    sub_100080308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE818);
  }

  return result;
}

uint64_t sub_10003C2E8(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD570, &qword_10008A6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WidgetRelevance(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetRelevance(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003C4A4()
{
  result = qword_1000AE820;
  if (!qword_1000AE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE820);
  }

  return result;
}

void sub_10003C4F8()
{
  v0 = sub_100080308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v42 = [v5 bu_groupUserDefaults];
  v6 = sub_1000811D8();
  v7 = [v42 integerForKey:v6];

  if (!v7)
  {
    v8 = [v5 standardUserDefaults];
    v9 = sub_1000811D8();
    [v8 integerForKey:v9];

    isa = sub_100081418().super.super.isa;
    v11 = sub_1000811D8();
    [v42 setValue:isa forKey:v11];
  }

  v12 = sub_1000811D8();
  v13 = [v42 integerForKey:v12];

  if (v13 > 3)
  {
    v31 = v42;
  }

  else
  {
    if (qword_1000AC678 != -1)
    {
      swift_once();
    }

    v14 = sub_10000A480(v0, qword_1000AE718);
    (*(v1 + 16))(v4, v14, v0);
    v43 = 1;
    v15 = objc_opt_self();
    v16 = [v15 defaultManager];
    sub_1000802D8();
    v17 = sub_1000811D8();

    v18 = [v16 fileExistsAtPath:v17 isDirectory:&v43];

    if (v18)
    {
      v19 = [v15 defaultManager];
      sub_1000802A8(v20);
      v22 = v21;
      v44 = 0;
      v23 = [v19 removeItemAtURL:v21 error:&v44];

      if (v23)
      {
        v24 = v44;
        v25 = sub_100081418().super.super.isa;
        v26 = sub_1000811D8();
        [v42 setValue:v25 forKey:v26];

        if (qword_1000AC688 != -1)
        {
          swift_once();
        }

        v27 = sub_1000806F8();
        sub_10000A480(v27, qword_1000AE738);
        v28 = sub_1000806D8();
        v29 = sub_100081468();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134217984;
          *(v30 + 4) = 4;
          _os_log_impl(&_mh_execute_header, v28, v29, "Successfully deleted previous image cache folder. Updated current cache folder version to %ld.", v30, 0xCu);
        }

        else
        {
        }

        (*(v1 + 8))(v4, v0);
      }

      else
      {
        v32 = v44;
        sub_1000801C8();

        swift_willThrow();
        (*(v1 + 8))(v4, v0);
        if (qword_1000AC688 != -1)
        {
          swift_once();
        }

        v33 = sub_1000806F8();
        sub_10000A480(v33, qword_1000AE738);
        swift_errorRetain();
        v34 = sub_1000806D8();
        v35 = sub_100081448();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v44 = v37;
          *v36 = 136315138;
          swift_getErrorValue();
          v38 = sub_100081668();
          v40 = sub_10006150C(v38, v39, &v44);

          *(v36 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v34, v35, "Failed to delete previous image cache folder: %s", v36, 0xCu);
          sub_100019DF8(v37);
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v1 + 8))(v4, v0);
    }
  }
}

void *sub_10003CB64(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v8 = sub_100002840(&qword_1000AD610, &qword_1000887C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1000803D8();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v27 = &v24 - v18;
  if (a3 == a4)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    if (a4 >= a3)
    {
      v29 = (v28 + 32);
      v30 = (v28 + 48);
      v19 = _swiftEmptyArrayStorage;
      v25 = a1;
      v26 = a4;
      v24 = v16;
      while (a4 != a3)
      {
        v32 = a3;
        a1(&v32);
        if (v4)
        {

          return v19;
        }

        if ((*v30)(v11, 1, v12) == 1)
        {
          result = sub_100005B2C(v11, &qword_1000AD610, &qword_1000887C0);
        }

        else
        {
          v20 = *v29;
          v21 = v27;
          (*v29)(v27);
          (v20)(v16, v21, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10003F07C(0, v19[2] + 1, 1, v19, &qword_1000AE920, &qword_1000887E8, &type metadata accessor for Date);
          }

          v23 = v19[2];
          v22 = v19[3];
          if (v23 >= v22 >> 1)
          {
            v19 = sub_10003F07C(v22 > 1, v23 + 1, 1, v19, &qword_1000AE920, &qword_1000887E8, &type metadata accessor for Date);
          }

          v19[2] = v23 + 1;
          v16 = v24;
          result = (v20)(v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, v24, v12);
          a1 = v25;
          a4 = v26;
        }

        if (a4 == ++a3)
        {
          return v19;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10003CEA8()
{
  v0 = sub_1000803D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_100080568();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100080548();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v19 = sub_100080478();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v20 = *(v12 + 8);
  v20(v16, v11);
  sub_1000804B8();
  sub_1000803C8();
  sub_100080498();
  (*(v1 + 8))(v4, v0);
  return (v20)(v18, v11);
}

uint64_t sub_10003D170()
{
  v28[0] = sub_1000803D8();
  v0 = *(v28[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v28[0]);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - v6;
  v8 = sub_100080568();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100080548();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v28 - v16;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v18 = sub_100080478();
  (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_1000804B8();
  sub_100080498();
  v20 = sub_10003E50C();
  v21 = sub_1000804A8();
  if (__OFSUB__(v21, v20))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  __chkstk_darwin(v21);
  v28[-2] = v17;
  v28[-1] = v3;
  v20 = sub_10003CB64(sub_100043FF0, &v28[-4], v22, v22 + 7);
  if (*(v20 + 16) == 7)
  {
    goto LABEL_7;
  }

  if (qword_1000AC690 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v23 = sub_1000806F8();
  sub_10000A480(v23, qword_1000AE828);
  v24 = sub_1000806D8();
  v25 = sub_100081458();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected: a week should have 7 days", v26, 2u);
  }

LABEL_7:
  (*(v0 + 8))(v3, v28[0]);
  v19(v17, v10);
  return v20;
}

uint64_t sub_10003D574(uint64_t a1)
{
  v2 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v2 - 8);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100002840(&qword_1000AE900, &qword_1000887C8);
  v5 = *(*(v62 - 8) + 64);
  v6 = __chkstk_darwin(v62);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - v9;
  __chkstk_darwin(v8);
  v61 = &v53 - v11;
  v57 = &_swiftEmptyDictionarySingleton;
  v64 = &_swiftEmptyDictionarySingleton;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v63 = a1;

  v18 = 0;
  v58 = v16;
  v59 = a1 + 64;
  v60 = v10;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v18 = v19;
LABEL_10:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v18 << 6);
      v22 = v63;
      v23 = *(v63 + 48);
      v24 = sub_1000803D8();
      v25 = *(v24 - 8);
      v26 = v25;
      v27 = *(v25 + 72);
      v28 = v61;
      (*(v25 + 16))(v61, v23 + v27 * v21, v24);
      v29 = *(*(v22 + 56) + 8 * v21);
      v30 = v62;
      *(v28 + *(v62 + 48)) = v29;
      v31 = v60;
      sub_100043F80(v28, v60);
      v32 = *(v31 + *(v30 + 48));
      if (*(v32 + 16))
      {
        break;
      }

      result = sub_100005B2C(v31, &qword_1000AE900, &qword_1000887C8);
      v19 = v18;
      v16 = v58;
      v12 = v59;
      if (!v15)
      {
LABEL_7:
        while (1)
        {
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v18 >= v16)
          {

            return v57;
          }

          v15 = *(v12 + 8 * v18);
          ++v19;
          if (v15)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v33 = v26;
    v34 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    sub_100043F80(v31, v56);
    sub_100043DFC(v32 + v34, v54);
    v35 = v57[2];
    if (v57[3] <= v35)
    {

      sub_1000403A0(v35 + 1, 1);
    }

    else
    {
    }

    v36 = v64;
    v37 = v64[5];
    sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date);
    result = sub_100081118();
    v38 = v36 + 8;
    v57 = v36;
    v39 = -1 << *(v36 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~v36[(v40 >> 6) + 8]) == 0)
    {
      break;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~v36[(v40 >> 6) + 8])) | v40 & 0x7FFFFFFFFFFFFFC0;
    v43 = v33;
LABEL_26:
    v48 = *(v62 + 48);
    *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v49 = v57;
    v50 = v57[6] + v42 * v27;
    v51 = v56;
    (*(v43 + 32))(v50, v56, v24);
    sub_100043E60(v54, v49[7] + *(v55 + 72) * v42);
    ++v49[2];
    v52 = *(v51 + v48);

    v16 = v58;
    v12 = v59;
  }

  v44 = 0;
  v45 = (63 - v39) >> 6;
  v43 = v33;
  while (++v41 != v45 || (v44 & 1) == 0)
  {
    v46 = v41 == v45;
    if (v41 == v45)
    {
      v41 = 0;
    }

    v44 |= v46;
    v47 = v38[v41];
    if (v47 != -1)
    {
      v42 = __clz(__rbit64(~v47)) + (v41 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10003DA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v7 = sub_100002840(&qword_1000AE8E0, &qword_1000887A8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v45 = &v43[-v9];
  v47 = sub_1000803D8();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v47);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v43[-v20];
  v22 = *(a2 + 16);
  v46 = a1;
  if (v22 && (v23 = sub_10003F3B4(a1), a1 = v46, (v24 & 1) != 0))
  {
    sub_100043DFC(*(a2 + 56) + *(v15 + 72) * v23, v19);
    sub_100043E60(v19, v21);
  }

  else
  {
    (*(v10 + 16))(v21, a1, v47);
    v25 = &v21[*(v14 + 20)];
    *v25 = 0;
    *(v25 + 1) = 0;
    v25[16] = 0;
  }

  if (sub_100080378())
  {
    *&v26 = ~v21[*(v14 + 20) + 16] & 1;
  }

  else
  {
    if ((sub_100080398() & 1) == 0)
    {
      v44 = 1;
      *&v26 = 2;
      goto LABEL_14;
    }

    v27 = &v21[*(v14 + 20)];
    v29 = *v27;
    v28 = v27[1];
    if (v29 >= v28)
    {
      v29 = v28;
    }

    if (v29 / v28 < 1.0)
    {
      v44 = 0;
      v26 = v29 / v28;
      goto LABEL_14;
    }

    v26 = 0.0;
  }

  v44 = 1;
LABEL_14:
  sub_10003DE00(v13);
  if (*(a2 + 16) && (v30 = sub_10003F3B4(v13), (v31 & 1) != 0))
  {
    v32 = *(a2 + 56) + *(v15 + 72) * v30;
    v33 = v45;
    sub_100043DFC(v32, v45);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v45;
  }

  (*(v10 + 8))(v13, v47);
  (*(v15 + 56))(v33, v34, 1, v14);
  v35 = sub_10003E1C0(v48, v33);
  sub_100005B2C(v33, &qword_1000AE8E0, &qword_1000887A8);
  v36 = sub_10003E924(sub_1000419F8);
  v38 = v37;
  v39 = sub_10003E924(sub_100042194);
  v41 = v40;
  result = sub_100043DA0(v21);
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v39;
  *(a4 + 24) = v41;
  *(a4 + 32) = v26;
  *(a4 + 40) = v44;
  *(a4 + 41) = v35;
  return result;
}

uint64_t sub_10003DE00@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_100080528();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_100080568();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100080548();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = sub_100002840(&qword_1000AD610, &qword_1000887C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v29 - v22;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v24 = sub_100080478();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v25 = *(v13 + 8);
  v25(v17, v12);
  sub_1000804B8();
  (*(v2 + 104))(v5, enum case for Calendar.Component.day(_:), v1);
  sub_1000804E8();
  (*(v2 + 8))(v5, v1);
  v25(v19, v12);
  v26 = sub_1000803D8();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v23, 1, v26);
  if (result != 1)
  {
    return (*(v27 + 32))(v29, v23, v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE8E0, &qword_1000887A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  sub_100043EC8(a2, &v16 - v6);
  v8 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100005B2C(v7, &qword_1000AE8E0, &qword_1000887A8);
  }

  else
  {
    v9 = v7[*(v8 + 20) + 16];
    sub_100043DA0(v7);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if ((sub_100080368() & 1) == 0)
  {
    return 4;
  }

LABEL_5:
  v10 = sub_10003E50C();
  v11 = sub_100080398();
  v12 = v2 + *(v8 + 20);
  if ((v11 & 1) == 0)
  {
    if (*(v12 + 16) == 1)
    {
      return 2 * (v10 == 1);
    }

    return 4;
  }

  v14 = *v12;
  v13 = *(v12 + 8);
  if (v14 >= v13)
  {
    v14 = v13;
  }

  if (v14 / v13 >= 1.0)
  {
    return 2 * (v10 == 1);
  }

  if (v10 == 1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10003E350(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_100061AD4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = *(sub_1000803D8() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v24 = *(v7 + 72);
  while (1)
  {
    a1(&v26, v8);
    if (v3)
    {
      break;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v14 = v31;
    v15 = v32;
    v33 = v5;
    v17 = v5[2];
    v16 = v5[3];
    if (v17 >= v16 >> 1)
    {
      v23 = v30;
      v19 = v27;
      v21 = v32;
      v22 = v31;
      sub_100061AD4((v16 > 1), v17 + 1, 1);
      v15 = v21;
      v14 = v22;
      v13 = v23;
      v9 = v19;
      v5 = v33;
    }

    v5[2] = v17 + 1;
    v18 = &v5[6 * v17];
    v18[4] = v10;
    v18[5] = v9;
    v18[6] = v11;
    v18[7] = v12;
    v18[8] = v13;
    *(v18 + 72) = v14;
    *(v18 + 73) = v15;
    v8 += v24;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E50C()
{
  v0 = sub_100080528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_100080568();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100080548();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v19 = sub_100080478();
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v20 = *(v12 + 8);
  v20(v16, v11);
  sub_1000804B8();
  (*(v1 + 104))(v4, enum case for Calendar.Component.weekday(_:), v0);
  v21 = sub_100080538();
  (*(v1 + 8))(v4, v0);
  v20(v18, v11);
  return v21;
}

uint64_t sub_10003E7FC(uint64_t *a1)
{
  v2 = sub_100080528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, enum case for Calendar.Component.day(_:), v2);
  sub_1000804E8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10003E924(uint64_t (*a1)(uint64_t))
{
  v2 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_100080568();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100080548();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = sub_10003E50C();
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v17 = sub_100080478();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v18 = *(v9 + 8);
  v18(v13, v8);
  sub_1000804B8();
  v19 = sub_1000804A8();
  result = (v18)(v15, v8);
  v21 = v16 - v19;
  if (__OFSUB__(v16, v19))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 >= 0)
  {
    v22 = v16 - v19;
  }

  else
  {
    v22 = v21 + 7;
  }

  result = a1(result);
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v22 < *(result + 16))
  {
    v23 = result + 16 * v22;
    v24 = *(v23 + 32);
    v25 = *(v23 + 40);

    return v24;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_10003EBB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_100061AB4(0, v6, 0);
  v26 = v5;
  v27 = v4;
  v28 = a1;
  v29 = a2;
  v25 = v6;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    v10 = v5;
    while (v4)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *v8;
      v30 = *(v9 - 1);
      v32 = *(v8 - 1);
      v14 = *(&_swiftEmptyArrayStorage + 2);
      v13 = *(&_swiftEmptyArrayStorage + 3);
      v34 = v14 + 1;

      if (v14 >= v13 >> 1)
      {
        result = sub_100061AB4((v13 > 1), v34, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v34;
      v15 = (&_swiftEmptyArrayStorage + 32 * v14);
      v15[4] = v30;
      v15[5] = v11;
      --v10;
      v15[6] = v32;
      v15[7] = v12;
      --v4;
      v8 += 2;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v17 = v26;
    v16 = v27;
    if (v27 <= v26)
    {
      return &_swiftEmptyArrayStorage;
    }

    v18 = v25;
    v31 = 16 * v25;
    while (v18 < v16)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (v17 != v18)
      {
        if (v18 >= v17)
        {
          goto LABEL_25;
        }

        v20 = *(v28 + v31 + 40);
        v21 = *(v29 + v31 + 40);
        v33 = *(v29 + v31 + 32);
        v35 = *(v28 + v31 + 32);
        v23 = *(&_swiftEmptyArrayStorage + 2);
        v22 = *(&_swiftEmptyArrayStorage + 3);

        if (v23 >= v22 >> 1)
        {
          result = sub_100061AB4((v22 > 1), v23 + 1, 1);
        }

        ++v18;
        v28 += 16;
        v29 += 16;
        *(&_swiftEmptyArrayStorage + 2) = v23 + 1;
        v24 = (&_swiftEmptyArrayStorage + 32 * v23);
        v24[4] = v35;
        v24[5] = v20;
        v24[6] = v33;
        v24[7] = v21;
        v17 = v26;
        v16 = v27;
        if (v19 != v27)
        {
          continue;
        }
      }

      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10003EDCC()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AE828);
  sub_10000A480(v0, qword_1000AE828);
  return sub_1000806E8();
}

char *sub_10003EE4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000ACB30, &qword_100085BE0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003EF58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000ACD90, "na");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10003F07C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002840(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10003F258(uint64_t a1, uint64_t a2)
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

  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_10003F2DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100002840(&qword_1000ACB30, &qword_100085BE0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_10003F3B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000803D8();
  sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date);
  v5 = sub_100081118();

  return sub_10003F72C(a1, v5);
}

unint64_t sub_10003F450(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000816B8();
  sub_100081298();

  v5 = sub_1000816F8();

  return sub_10003F8EC(a1 & 1, v5);
}

unint64_t sub_10003F4E8(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000816B8();
  sub_100081298();

  v5 = sub_1000816F8();
  return sub_10003FA18(a1 & 1, v5);
}

unint64_t sub_10003F590(char a1)
{
  v3 = *(v1 + 40);
  sub_1000816B8();
  sub_100054574(a1);
  sub_100081298();

  v4 = sub_1000816F8();

  return sub_10003FB60(a1, v4);
}

unint64_t sub_10003F618(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000816B8();
  sub_100081298();

  v5 = sub_1000816F8();

  return sub_1000401B4(a1 & 1, v5);
}

unint64_t sub_10003F6B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000816B8();
  sub_100081298();
  v6 = sub_1000816F8();

  return sub_1000402E8(a1, a2, v6);
}

unint64_t sub_10003F72C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000803D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100043F38(&qword_1000AE8F8, &type metadata accessor for Date);
      v16 = sub_100081148();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10003F8EC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 6710384;
    }

    else
    {
      v6 = 1802465122;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 6710384 : 1802465122;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100081618();

      if ((v11 & 1) == 0)
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

unint64_t sub_10003FA18(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6369666963657073;
    }

    else
    {
      v6 = 0x6563655274736F6DLL;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEA0000000000746ELL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6369666963657073 : 0x6563655274736F6DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEA0000000000746ELL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100081618();

      if ((v11 & 1) == 0)
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

unint64_t sub_10003FB60(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6D49747265766E69;
          v7 = 0xEC00000073656761;
          break;
        case 2:
          v7 = 0xEA00000000007466;
          v8 = 0x654C6E4F756E656DLL;
          break;
        case 3:
          v8 = 0x47676E6964616572;
          v7 = 0xEC000000736C616FLL;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100081EC0;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100081EE0;
          break;
        case 6:
          v7 = 0xE700000000000000;
          v8 = 0x676E69636E7973;
          break;
        case 7:
          v7 = 0xE900000000000067;
          v8 = 0x6E69686372616573;
          break;
        case 8:
          v8 = 0x6F6F626F69647561;
          v7 = 0xEA0000000000736BLL;
          break;
        case 9:
          v8 = 0x77726F4670696B73;
          v7 = 0xEB00000000647261;
          break;
        case 0xA:
          v8 = 0x6B63614270696B73;
          v7 = 0xEC00000064726177;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100081F30;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x79636176697270;
          break;
        case 0xD:
          v8 = 1701670760;
          break;
        case 0xE:
          v8 = 0x74616E6568707968;
          v7 = 0xEB000000006E6F69;
          break;
        case 0xF:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100081F60;
          break;
        case 0x10:
          v8 = 0x726F74536B6F6F62;
          v7 = 0xE900000000000065;
          break;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100081F80;
          break;
        case 0x12:
          v8 = 0x6564497465736572;
          v7 = 0xEF7265696669746ELL;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1953460082;
      switch(a1)
      {
        case 1:
          v11 = 0x6D49747265766E69;
          v12 = 1936025441;
          goto LABEL_41;
        case 2:
          v9 = 0xEA00000000007466;
          if (v8 != 0x654C6E4F756E656DLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v11 = 0x47676E6964616572;
          v12 = 1936482671;
LABEL_41:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v11)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          v9 = 0x8000000100081EC0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v9 = 0x8000000100081EE0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 6:
          v9 = 0xE700000000000000;
          if (v8 != 0x676E69636E7973)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 7:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E69686372616573)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v9 = 0xEA0000000000736BLL;
          if (v8 != 0x6F6F626F69647561)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v13 = 0x77726F4670696B73;
          v14 = 6582881;
          goto LABEL_34;
        case 10:
          v10 = 0x6B63614270696B73;
          v9 = 0xEC00000064726177;
          goto LABEL_56;
        case 11:
          v9 = 0x8000000100081F30;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v9 = 0xE700000000000000;
          if (v8 != 0x79636176697270)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 13:
          if (v8 != 1701670760)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v13 = 0x74616E6568707968;
          v14 = 7237481;
LABEL_34:
          v9 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v13)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v9 = 0x8000000100081F60;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v9 = 0xE900000000000065;
          if (v8 != 0x726F74536B6F6F62)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v9 = 0x8000000100081F80;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v9 = 0xEF7265696669746ELL;
          if (v8 != 0x6564497465736572)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v8 != v10)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_58:
          v15 = sub_100081618();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000401B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7468676972;
    }

    else
    {
      v6 = 1952867692;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7468676972 : 1952867692;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100081618();

      if ((v11 & 1) == 0)
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

unint64_t sub_1000402E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100081618())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000403A0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000803D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100002840(&qword_1000AE908, &unk_1000887D0);
  v48 = a2;
  result = sub_1000815C8();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_100043E60(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_100043DFC(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date);
      result = sub_100081118();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_100043E60(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_100040804(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000803D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002840(&qword_1000AE918, &qword_1000887E0);
  v43 = a2;
  result = sub_1000815C8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date);
      result = sub_100081118();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100040BE0(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_100081628();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10003F258(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = v1[1];
        v16 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v17 = *(v5 + 16);
          v13 = __OFADD__(v14, v17);
          v18 = v14 + v17;
          if (!v13)
          {
            if (v18 >= v14)
            {
              if ((v18 & 0x8000000000000000) == 0)
              {
                v19 = (2 * v18) | 1;
                v20 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v16 - 16 * v14;
                v1[2] = v14;
                v1[3] = v19;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100040D60(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v14;
  v34 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  result = sub_1000412AC(v7);
  v36 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 16 * a3);
    v32 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 16 * v20);
    v22 = &v21[16 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[16 * v34];
    if (__dst != v23 || __dst >= &v23[16 * v33])
    {
      memmove(__dst, v23, 16 * v33);
    }

    *(v19 + 16);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v32;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v25 = v4[1];
    swift_arrayInitWithCopy();
    result = (a4)(v36 + 16 * a2, a3);
    v26 = v24 + v34;
    if (__OFADD__(v24, v34))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v28 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v20, v29);
  v30 = v20 + v29;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v36 - 16 * v20;
  v4[2] = v20;
  v4[3] = (2 * v30) | 1;
}

void *sub_100041018(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_100081628();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v9 = result[2];
  v5 = __OFADD__(v9, v7);
  v10 = &v7[v9];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v10;

  v11 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_1000410D0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10003F258(v6, v25);
}

void *sub_1000412AC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  if ((v10 + 16 * v8) != &v11[2 * v12 + 4])
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = v11[3];

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v17 = v10 - result - 17;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 4);
  v6 = v8 + (v17 >> 4);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = result[2];
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_10004140C(v6, v5, 0);
    return v18;
  }

  return result;
}

unint64_t sub_10004140C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_1000414CC(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_46;
  }

  v5 = result[4];
  v41 = result[3] >> 1;
  if (v5 == v41)
  {
    return result;
  }

  v40 = result[2];
  v6 = result[3] >> 1;
  if (v5 < v40 || v5 >= v41)
  {
    goto LABEL_47;
  }

  v8 = result[1];
  v9 = v5 + 1;
  v10 = (v8 + 16 * v5);
  v11 = *v10;
  v12 = v10[1];

  v32 = v1;
  v33 = v8 + 8;
  while (!__OFADD__(v4, 1))
  {
    v42 = sub_1000410D0(v4, v4 + 1, *v1, v1[1], v2, v3);
    v13 = sub_100041290();
    sub_100040D60(&v42, v4, 0, v13);

    v2 = v1[2];
    v14 = v1[3];
    v15 = (v14 >> 1) - v2;
    if (__OFSUB__(v14 >> 1, v2))
    {
      goto LABEL_41;
    }

    v36 = v14 >> 1;
    v38 = v1[3];
    v39 = v1[1];
    v37 = *v1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_100081628();
    swift_unknownObjectRetain();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = _swiftEmptyArrayStorage;
    }

    v17 = v16[2];
    if ((v39 + 16 * v2 + 16 * v15) != &v16[2 * v17 + 4])
    {

LABEL_19:
      v18 = v15;
      v19 = v4 - v15;
      if (v4 >= v15)
      {
        goto LABEL_31;
      }

LABEL_23:
      v23 = 0;
      v24 = v2;
      v25 = (v33 + 16 * v9);
      v34 = v4;
      v35 = v24;
      v26 = (v39 + 16 * v4 + 16 * v24 + 8);
      while (1)
      {
        *(v26 - 1) = v11;
        *v26 = v12;
        if (v41 - v9 == v23)
        {
          break;
        }

        if (v9 < v40 || v9 + v23 >= v41)
        {
          goto LABEL_39;
        }

        v11 = *(v25 - 1);
        v12 = *v25;

        ++v23;
        v25 += 2;
        v26 += 2;
        if (!(v19 + v23))
        {
          v9 += v23;
          v4 = v18;
          goto LABEL_30;
        }
      }

      v11 = 0;
      v12 = 0;
      v4 = v34 + v23 + 1;
      v9 = v41;
LABEL_30:
      v1 = v32;
      v2 = v35;
      goto LABEL_31;
    }

    v20 = v2;
    v21 = v16[3];

    v22 = (v21 >> 1) - v17;
    v18 = v15 + v22;
    if (__OFADD__(v15, v22))
    {
      goto LABEL_45;
    }

    v2 = v20;
    v19 = v4 - v18;
    if (v4 < v18)
    {
      goto LABEL_23;
    }

LABEL_31:
    v27 = __OFSUB__(v4, v15);
    v28 = v4 - v15;
    v3 = v38;
    if (v27)
    {
      goto LABEL_42;
    }

    if (v28)
    {
      sub_100081628();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v29 = result[2];
      v27 = __OFADD__(v29, v28);
      v30 = v29 + v28;
      if (v27)
      {
        goto LABEL_43;
      }

      result[2] = v30;

      v31 = v36 + v28;
      if (__OFADD__(v36, v28))
      {
        goto LABEL_44;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

      v3 = v38 & 1 | (2 * v31);
      v1[3] = v3;
    }

    if (!v12)
    {
      return result;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void *sub_1000417B4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v32 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v16 = v9;
    goto LABEL_10;
  }

  v13 = *v4;
  v12 = v4[1];
  sub_100081628();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = v14[2];
  if ((v12 + 16 * v8 + 16 * v9) != &v14[2 * v15 + 4])
  {

    goto LABEL_8;
  }

  v17 = v14[3];

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v9, v18);
  v16 = v9 + v18;
  if (v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v16 < result)
  {
    if (v16 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v16;
    if (v20 > result)
    {
      result = v20;
    }
  }

  result = sub_100040BE0(result);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = v4[1] + 16 * v22 + 16 * v23;
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v28 = v23;
    goto LABEL_23;
  }

  v25 = *v4;
  sub_100081628();
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = _swiftEmptyArrayStorage;
  }

  v27 = v26[2];
  if (v24 != &v26[2 * v27 + 4])
  {

    goto LABEL_21;
  }

  v29 = v26[3];

  v30 = (v29 >> 1) - v27;
  v19 = __OFADD__(v23, v30);
  v28 = v23 + v30;
  if (v19)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v31 = v28 - v23;
  if (__OFSUB__(v28, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v31 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v23 + v6);
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_100041018(result);
  }

LABEL_31:
  if (v6 == v31)
  {
    v34[0] = v32;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v5;
    return sub_1000414CC(v34);
  }

  return result;
}

void *sub_1000419F8()
{
  v0 = sub_100080478();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000811C8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_100080548();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000804D8();
  v17 = sub_1000804A8();
  (*(v13 + 8))(v16, v12);
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v59 = v17 - 1;
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100088770;
  sub_100081158();
  v19 = v5[2];
  v19(v9, v11, v4);
  v57 = v3;
  sub_100080448();
  v20 = sub_100081258();
  v22 = v21;
  v61 = v5[1];
  v61(v11, v4);
  *(v18 + 32) = v20;
  v56 = v18 + 32;
  *(v18 + 40) = v22;
  sub_100081158();
  v19(v9, v11, v4);
  v60 = v5 + 2;
  sub_100080448();
  v23 = sub_100081258();
  v25 = v24;
  v61(v11, v4);
  *(v18 + 48) = v23;
  *(v18 + 56) = v25;
  sub_100081158();
  v19(v9, v11, v4);
  v26 = v19;
  sub_100080448();
  v27 = sub_100081258();
  v29 = v28;
  v30 = v61;
  v61(v11, v4);
  v58 = (v5 + 1);
  *(v18 + 64) = v27;
  *(v18 + 72) = v29;
  sub_100081158();
  v26(v9, v11, v4);
  sub_100080448();
  v31 = sub_100081258();
  v33 = v32;
  v30(v11, v4);
  *(v18 + 80) = v31;
  *(v18 + 88) = v33;
  sub_100081158();
  v26(v9, v11, v4);
  sub_100080448();
  v34 = sub_100081258();
  v36 = v35;
  v37 = v4;
  v38 = v4;
  v39 = v58;
  v40 = v61;
  v61(v11, v38);
  *(v18 + 96) = v34;
  *(v18 + 104) = v36;
  sub_100081158();
  v26(v9, v11, v37);
  sub_100080448();
  v41 = sub_100081258();
  v43 = v42;
  v40(v11, v37);
  v3 = v39;
  *(v18 + 112) = v41;
  *(v18 + 120) = v43;
  sub_100081158();
  v26(v9, v11, v37);
  sub_100080448();
  v4 = sub_100081258();
  v16 = v44;
  v61(v11, v37);
  v45 = v59;
  *(v18 + 128) = v4;
  *(v18 + 136) = v16;
  v46 = *(v18 + 16);
  if (v46 < v45)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v45 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v47 = v56;
  v62 = v18;
  v63 = v56;
  v48 = (2 * v45) | 1;
  v64 = v45;
  v65 = (2 * v46) | 1;

  sub_1000417B4(v49, v47, 0, v48);

  v4 = v62;
  v16 = v63;
  v3 = v64;
  v11 = v65;
  if ((v65 & 1) == 0)
  {
LABEL_5:
    sub_10003F2DC(v4, v16, v3, v11);
    v51 = v50;
LABEL_12:
    swift_unknownObjectRelease();
    return v51;
  }

  sub_100081628();
  swift_unknownObjectRetain_n();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v52 = _swiftEmptyArrayStorage;
  }

  v53 = v52[2];

  if (__OFSUB__(v11 >> 1, v3))
  {
    goto LABEL_17;
  }

  if (v53 != (v11 >> 1) - v3)
  {
LABEL_18:
    swift_unknownObjectRelease_n();
    goto LABEL_5;
  }

  v51 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v51)
  {
    v51 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  return v51;
}

void *sub_100042194()
{
  v0 = sub_100080478();
  v99 = *(v0 - 8);
  v1 = *(v99 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v86 - v5;
  v7 = sub_1000811C8();
  v103 = *(v7 - 8);
  v8 = v103[8];
  v9 = __chkstk_darwin(v7);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v86 - v12;
  v14 = sub_100080548();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000804D8();
  v19 = sub_1000804A8();
  (*(v15 + 8))(v18, v14);
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v89 = v19 - 1;
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100088770;
  sub_100081158();
  sub_100080448();
  v20 = v103[2];
  v93 = v103 + 2;
  v94 = v20;
  v20(v11, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v96 = ObjCClassFromMetadata;
  v102 = objc_opt_self();
  v22 = [v102 bundleForClass:ObjCClassFromMetadata];
  v23 = v99;
  v24 = v11;
  v25 = *(v99 + 16);
  v100 = v99 + 16;
  v98 = v25;
  v25(v4, v6, v0);
  v26 = sub_100081268();
  v28 = v27;
  v29 = *(v23 + 8);
  v99 = v23 + 8;
  v101 = v29;
  v29(v6, v0);
  v97 = v103[1];
  ++v103;
  v92 = v7;
  v97(v13, v7);
  v30 = v95;
  v31 = v95;
  *(v95 + 32) = v26;
  v87 = v31 + 32;
  *(v30 + 40) = v28;
  sub_100081158();
  sub_100080448();
  v32 = v94;
  v94(v11, v13, v7);
  v33 = v96;
  v34 = [v102 bundleForClass:v96];
  v91 = v4;
  v98(v4, v6, v0);
  v35 = sub_100081268();
  v37 = v36;
  v38 = v0;
  v101(v6, v0);
  v39 = v92;
  v97(v13, v92);
  v40 = v95;
  *(v95 + 48) = v35;
  *(v40 + 56) = v37;
  sub_100081158();
  sub_100080448();
  v32(v11, v13, v39);
  v41 = [v102 bundleForClass:v33];
  v42 = v91;
  v43 = v38;
  v98(v91, v6, v38);
  v44 = sub_100081268();
  v46 = v45;
  v101(v6, v38);
  v47 = v92;
  v97(v13, v92);
  v48 = v95;
  *(v95 + 64) = v44;
  *(v48 + 72) = v46;
  sub_100081158();
  sub_100080448();
  v88 = v24;
  v49 = v47;
  v50 = v94;
  v94(v24, v13, v49);
  v51 = [v102 bundleForClass:v96];
  v90 = v43;
  v52 = v98;
  v98(v42, v6, v43);
  v53 = sub_100081268();
  v55 = v54;
  v101(v6, v43);
  v56 = v92;
  v97(v13, v92);
  v57 = v95;
  *(v95 + 80) = v53;
  *(v57 + 88) = v55;
  sub_100081158();
  sub_100080448();
  v58 = v88;
  v50(v88, v13, v56);
  v59 = [v102 bundleForClass:v96];
  v60 = v90;
  v52(v91, v6, v90);
  v61 = sub_100081268();
  v63 = v62;
  v101(v6, v60);
  v64 = v56;
  v65 = v97;
  v97(v13, v56);
  v66 = v95;
  *(v95 + 96) = v61;
  *(v66 + 13) = v63;
  sub_100081158();
  sub_100080448();
  v94(v58, v13, v64);
  v67 = [v102 bundleForClass:v96];
  v68 = v91;
  v98(v91, v6, v60);
  v69 = sub_100081268();
  v71 = v70;
  v101(v6, v60);
  v11 = v92;
  v65(v13, v92);
  *(v66 + 14) = v69;
  *(v66 + 15) = v71;
  sub_100081158();
  sub_100080448();
  v94(v58, v13, v11);
  v72 = [v102 bundleForClass:v96];
  v73 = v90;
  v98(v68, v6, v90);
  v18 = sub_100081268();
  v75 = v74;
  v101(v6, v73);
  v0 = v66;
  v97(v13, v11);
  v76 = v89;
  *(v66 + 16) = v18;
  *(v66 + 17) = v75;
  v77 = *(v66 + 2);
  if (v77 < v76)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v76 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v78 = v87;
  v104 = v66;
  v105 = v87;
  v79 = (2 * v76) | 1;
  v106 = v76;
  v107 = (2 * v77) | 1;

  sub_1000417B4(v80, v78, 0, v79);

  v11 = v104;
  v18 = v105;
  v6 = v106;
  v0 = v107;
  if ((v107 & 1) == 0)
  {
LABEL_5:
    sub_10003F2DC(v11, v18, v6, v0);
    v82 = v81;
LABEL_12:
    swift_unknownObjectRelease();
    return v82;
  }

  sub_100081628();
  swift_unknownObjectRetain_n();
  v83 = swift_dynamicCastClass();
  if (!v83)
  {
    swift_unknownObjectRelease();
    v83 = _swiftEmptyArrayStorage;
  }

  v84 = v83[2];

  if (__OFSUB__(v0 >> 1, v6))
  {
    goto LABEL_17;
  }

  if (v84 != (v0 >> 1) - v6)
  {
LABEL_18:
    swift_unknownObjectRelease_n();
    goto LABEL_5;
  }

  v82 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v82)
  {
    v82 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  return v82;
}

void *sub_100042C1C()
{
  result = sub_10003E50C();
  v1 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v2 = sub_1000419F8();
    v3 = sub_100042194();
    v4 = sub_10003EBB4(v2, v3);

    v5 = v4[2];
    if (!v5)
    {
LABEL_12:

      return _swiftEmptyArrayStorage;
    }

    result = sub_100061AD4(0, v5, 0);
    v6 = 0;
    v17 = v4;
    v18 = v4[2];
    v7 = v4 + 7;
    v16 = v5;
    while (v18 != v6)
    {
      if (v6 >= v4[2])
      {
        goto LABEL_14;
      }

      v8 = *(v7 - 2);
      v9 = *v7;
      v19 = *(v7 - 1);
      v20 = *(v7 - 3);
      if (v6 < v1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (v1 != v6);
      }

      v11 = v1;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];

      if (v13 >= v12 >> 1)
      {
        result = sub_100061AD4((v12 > 1), v13 + 1, 1);
      }

      v14 = v11 != v6++;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v15 = &_swiftEmptyArrayStorage[6 * v13];
      v15[4] = v20;
      v15[5] = v8;
      v15[6] = v19;
      v15[7] = v9;
      v15[8] = v10;
      *(v15 + 72) = v14;
      *(v15 + 73) = 4;
      v7 += 4;
      v1 = v11;
      v4 = v17;
      if (v16 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100042DE4()
{
  v0 = sub_1000419F8();
  v1 = sub_100042194();
  v2 = sub_10003EBB4(v0, v1);

  v3 = v2[2];
  if (v3)
  {
    result = sub_100061AD4(0, v3, 0);
    v5 = 0;
    v15 = v2;
    v16 = v2[2];
    v6 = v2 + 7;
    v14 = v3;
    while (v16 != v5)
    {
      if (v5 >= v2[2])
      {
        goto LABEL_10;
      }

      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];

      if (v11 >= v12 >> 1)
      {
        result = sub_100061AD4((v12 > 1), v11 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v11 + 1;
      v13 = &_swiftEmptyArrayStorage[6 * v11];
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v9;
      v13[7] = v10;
      v13[8] = 1;
      *(v13 + 36) = 1025;
      v6 += 4;
      v2 = v15;
      if (v14 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100042F68(uint64_t a1)
{
  v2 = sub_1000803D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v41 - v13;
  v14 = &_swiftEmptyDictionarySingleton;
  v53 = &_swiftEmptyDictionarySingleton;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v45 = *(v12 + 80);
  v16 = v3;
  v17 = *(v12 + 72);
  v18 = a1 + ((v45 + 32) & ~v45);
  v50 = (v45 + 32) & ~v45;
  v51 = (v16 + 16);
  v43 = (v16 + 8);
  v44 = v16 + 32;
  v42 = xmmword_100085C00;
  v46 = v11;
  v47 = v16;
  v48 = v2;
  v49 = v17;
  while (1)
  {
    v21 = v52;
    sub_100043DFC(v18, v52);
    (*v51)(v6, v21, v2);
    v23 = sub_10003F3B4(v6);
    v24 = v14[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v14[3] < v26)
    {
      sub_100040804(v26, 1);
      v14 = v53;
      v28 = sub_10003F3B4(v6);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      (*v43)(v6, v2);
      v30 = v14[7];
      sub_100043E60(v52, v11);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_10003F07C(0, v31[2] + 1, 1, v31, &qword_1000AE910, &unk_10008A6C0, type metadata accessor for WidgetReadingHistory.DayEntry);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_10003F07C(v33 > 1, v34 + 1, 1, v31, &qword_1000AE910, &unk_10008A6C0, type metadata accessor for WidgetReadingHistory.DayEntry);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v2 = v48;
      v19 = v49;
      v20 = v31 + v50 + v34 * v49;
      v11 = v46;
      sub_100043E60(v46, v20);
    }

    else
    {
      sub_100002840(&qword_1000AE910, &unk_10008A6C0);
      v35 = v50;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_100043E60(v52, v36 + v35);
      v14[(v23 >> 6) + 8] |= 1 << v23;
      (*(v47 + 32))(v14[6] + *(v47 + 72) * v23, v6, v2);
      *(v14[7] + 8 * v23) = v36;
      v37 = v14[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v14[2] = v39;
      v19 = v49;
    }

    v18 += v19;
    if (!--v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_100081658();
  __break(1u);
  return result;
}

__n128 sub_100043380@<Q0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v84 = a1;
  v11 = *(a2 + 8);
  v86 = *a2;
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = sub_1000803D8();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  __chkstk_darwin(v14);
  v76 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100081038();
  v83 = *(v17 - 8);
  v18 = v83[8];
  v19 = __chkstk_darwin(v17);
  v77 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v75 - v22;
  v85 = v13;
  *&v82 = a4;
  *(&v82 + 1) = a5;
  if (v13)
  {
    if (v11 >= v12)
    {
      v24 = v12;
    }

    else
    {
      v24 = v11;
    }

    if (__OFSUB__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      v25 = ceil((v12 - v11) / 60.0);
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v25 > -9.22337204e18)
        {
          if (v25 < 9.22337204e18)
          {
            v26 = v24 / v12;
            v81 = v25 & ~(v25 >> 63);
            goto LABEL_11;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          swift_once();
          goto LABEL_36;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v86 = 0;
  v81 = 0;
  v26 = 0.0;
LABEL_11:
  v11 = &v96;
  v13 = v21;
  if (*(a3 + 16))
  {
  }

  else
  {
    sub_100002840(&qword_1000ACD90, "na");
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_100085C00;
    v27 = BDSCloudAssetTypeStoreEbook;
    v28 = BDSLibraryContentAssetTypeUnknown;
    LOBYTE(v105) = 1;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    *(a3 + 56) = 1;
    *(a3 + 64) = 0xD000000000000023;
    *(a3 + 72) = 0x8000000100082090;
    *(a3 + 80) = v27;
    *(a3 + 88) = v28;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    v29 = v27;
    v30 = v28;
  }

  v31 = *(a3 + 80);
  v107 = *(a3 + 64);
  v108 = v31;
  v109 = *(a3 + 96);
  LOBYTE(v110) = *(a3 + 112);
  v32 = *(a3 + 48);
  v105 = *(a3 + 32);
  v106 = v32;
  sub_10000C328(&v105, &v96);
  v116 = v107;
  v117 = v108;
  v118 = v109;
  v119 = v110;
  v114 = v105;
  v115 = v106;
  if (__PAIR128__(0x8000000100082090, 0xD000000000000023) == v107)
  {
    goto LABEL_15;
  }

  v34 = sub_100081618();
  v33 = 0;
  if ((v34 & 1) == 0 && ((*&v115 == 1.0) & ~BYTE8(v115)) == 0 && v85)
  {
    v39 = *(a2 + 16);
    v120 = *a2;
    v121 = v39;
    v122 = v85;
    v40 = COERCE_DOUBLE(WidgetReadingHistory.State.daysSinceLastReadDate.getter());
    if (v41)
    {
LABEL_15:
      v33 = 0;
      goto LABEL_17;
    }

    if (v40 < 0.0 || v40 >= 4.0)
    {
      if (v40 < 4.0 || v40 >= 7.0)
      {
        v33 = v40 < 14.0 && v40 >= 7.0;
      }

      else
      {
        v33 = 2;
      }
    }

    else
    {
      v33 = 3;
    }
  }

LABEL_17:
  v80 = v33;
  v35 = v83;
  v12 = v83[2];
  (v12)(v23, v84, v13);
  v36 = (v35[11])(v23, v13);
  if (v36 == enum case for WidgetFamily.systemSmall(_:))
  {
    v37 = v85 == 0;

    v87 = v37;
    v92 = v116;
    v93 = v117;
    v94 = v118;
    v95[0] = v119;
    v90 = v114;
    v91 = v115;
    *&v88 = v26;
    *(&v88 + 1) = v81;
    LOBYTE(v89) = v37;
    *(&v89 + 1) = v86;
    v95[1] = v80;
    *&v95[8] = v82;
    sub_10000AAA4(&v88);
LABEL_41:
    v102 = v94;
    v103 = *v95;
    v104 = *&v95[16];
    v98 = v90;
    v99 = v91;
    v100 = v92;
    v101 = v93;
    v96 = v88;
    v97 = v89;
    WidgetReadingHistory.Day.readingTime.getter(&v96);
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v107 = v98;
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v105 = v96;
    v106 = v97;

    goto LABEL_42;
  }

  if (v36 == enum case for WidgetFamily.systemMedium(_:))
  {
    v38 = v85 == 0;
    sub_10002B884(&v114);
    v87 = v38;
    *&v88 = v26;
    *(&v88 + 1) = v81;
    LOBYTE(v89) = v38;
    *(&v89 + 1) = v86;
    *&v90 = a3;
    BYTE8(v90) = v80;
    v91 = v82;
    sub_10000AA80(&v88);
    goto LABEL_41;
  }

  if (v36 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (sub_100062184())
    {
      v42 = v76;
      sub_10003CEA8();
      v43 = *(a2 + 32);
      if (v43 && *(v43 + 16))
      {
        v44 = *a2;
        v45 = sub_10003D170();

        v46 = sub_100042F68(v43);
        sub_100005B2C(a2, &qword_1000AE8D8, "ĵ");
        v47 = sub_10003D574(v46);

        __chkstk_darwin(v48);
        *(&v75 - 2) = v47;
        *(&v75 - 1) = v42;
        v49 = sub_10003E350(sub_100043D60, (&v75 - 4), v45);
      }

      else
      {
        v49 = sub_100042C1C();
        v44 = v64;
      }

      (*(v78 + 8))(v42, v79);
    }

    else
    {
      v49 = sub_100042DE4();
      v44 = v51;
    }

    v65 = v85 == 0;
    sub_10002B884(&v114);
    v87 = v65;
    *&v88 = v26;
    *(&v88 + 1) = v81;
    LOBYTE(v89) = v65;
    *(&v89 + 1) = v86;
    *&v90 = v49;
    *(&v90 + 1) = v44;
    *&v91 = a3;
    BYTE8(v91) = v80;
    v92 = v82;
    sub_10000AA5C(&v88);
    goto LABEL_41;
  }

  if (v36 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v50 = v85 == 0;

    v87 = v50;
    v92 = v116;
    v93 = v117;
    v94 = v118;
    v95[0] = v119;
    v90 = v114;
    v91 = v115;
    *&v88 = v26;
    *(&v88 + 1) = v81;
    LOBYTE(v89) = v50;
    *(&v89 + 1) = v86;
    v95[1] = v80;
    *&v95[8] = v82;
    sub_100043D80(&v88);
    goto LABEL_41;
  }

  if (qword_1000AC690 != -1)
  {
    goto LABEL_55;
  }

LABEL_36:
  v52 = sub_1000806F8();
  sub_10000A480(v52, qword_1000AE828);
  v53 = v77;
  (v12)(v77, v84, v13);
  v54 = sub_1000806D8();
  v55 = sub_100081458();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v85 = v56;
    v86 = swift_slowAlloc();
    *&v105 = v86;
    *v56 = 136315138;
    sub_100043F38(&qword_1000ADB10, &type metadata accessor for WidgetFamily);
    v84 = v54;
    v57 = sub_100081608();
    v59 = v58;
    DWORD2(v82) = v55;
    v60 = v83[1];
    v60(v53, v13);
    v61 = sub_10006150C(v57, v59, &v105);

    v63 = v84;
    v62 = v85;
    *(v85 + 1) = v61;
    _os_log_impl(&_mh_execute_header, v63, BYTE8(v82), "Widget family '%s' is not supported", v62, 0xCu);
    sub_100019DF8(v86);

    sub_10002B884(&v114);
  }

  else
  {
    sub_10002B884(&v114);

    v60 = v83[1];
    v60(v53, v13);
  }

  v70 = sub_10000AA2C(&v96);
  (v60)(v23, v13, v70);
  v71 = v11[7];
  v11[15] = v11[6];
  v11[16] = v71;
  v113 = v104;
  v72 = v11[3];
  v11[11] = v11[2];
  v11[12] = v72;
  v73 = v11[5];
  v11[13] = v11[4];
  v11[14] = v73;
  v74 = v11[1];
  v11[9] = *v11;
  v11[10] = v74;
LABEL_42:
  v66 = v11[16];
  a6[6] = v11[15];
  a6[7] = v66;
  a6[8].n128_u64[0] = v113;
  v67 = v11[12];
  a6[2] = v11[11];
  a6[3] = v67;
  v68 = v11[14];
  a6[4] = v11[13];
  a6[5] = v68;
  result = v11[10];
  *a6 = v11[9];
  a6[1] = result;
  return result;
}

uint64_t sub_100043D80(uint64_t result)
{
  v1 = *(result + 112) & 0x301;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_100043DA0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE8E0, &qword_1000887A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100043F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE900, &qword_1000887C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043FF0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10003E7FC(a1);
}

uint64_t sub_100044010@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v32 = result;
    v33 = a2;
    v34 = a3;

    v10 = sub_100044444(v32, v33, 10);
    v36 = v35;

    a3 = v34;
    result = v32;
    a2 = v33;
    if (v36)
    {
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v43 = result;
    v44 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v5)
      {
        v6 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          v20 = &v43 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_77:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v5)
      {
        v10 = 0;
        v25 = &v43;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          v25 = (v25 + 1);
          if (!--v5)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      v6 = v5 - 1;
      if (v5 != 1)
      {
        v10 = 0;
        v14 = &v43 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v38 = result;
    v39 = a2;
    v40 = a3;
    v41 = sub_1000815A8();
    a3 = v40;
    v8 = v41;
    result = v38;
    v6 = v42;
    a2 = v39;
  }

  v9 = *v8;
  if (v9 == 43)
  {
    if (v6 >= 1)
    {
      if (--v6)
      {
        v10 = 0;
        if (v8)
        {
          v17 = v8 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_76;
  }

  if (v9 == 45)
  {
    if (v6 >= 1)
    {
      if (--v6)
      {
        v10 = 0;
        if (v8)
        {
          v11 = v8 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v6) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v6)
  {
    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v23 = *v8 - 48;
        if (v23 > 9)
        {
          goto LABEL_61;
        }

        v24 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          goto LABEL_61;
        }

        v10 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_61;
        }

        ++v8;
        if (!--v6)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v10 = 0;
  LOBYTE(v6) = 1;
LABEL_62:
  v45 = v6;
  if (v6)
  {
LABEL_72:
    v37 = sub_100080308();
    return (*(*(v37 - 8) + 56))(a4, 1, 1, v37);
  }

LABEL_63:
  if (v10 < 1)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    v28 = 0x6F6F626F69647561;
  }

  else
  {
    v28 = 1802465122;
  }

  if (a3)
  {
    v29 = 0xE90000000000006BLL;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  v30 = result;
  v31 = a2;
  sub_100081588(31);

  v43 = 0xD000000000000018;
  v44 = 0x80000001000833A0;
  v46._countAndFlagsBits = v28;
  v46._object = v29;
  sub_1000812A8(v46);

  v47._countAndFlagsBits = 6580527;
  v47._object = 0xE300000000000000;
  sub_1000812A8(v47);
  v48._countAndFlagsBits = v30;
  v48._object = v31;
  sub_1000812A8(v48);
  sub_1000802E8();
}

unsigned __int8 *sub_100044444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100081328();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000449D0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000815A8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000449D0()
{
  v0 = sub_100081338();
  v4 = sub_100044A50(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100044A50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100081288();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100081528();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10006194C(v9, 0);
  v12 = sub_100044BA8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100081288();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000815A8();
LABEL_4:

  return sub_100081288();
}

unint64_t sub_100044BA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100044DC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000812E8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000815A8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100044DC8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000812C8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100044DC8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000812F8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000812D8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100044E44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v48 - v12;
  v14 = sub_100080308();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_11;
  }

  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_11:
    v20 = _swiftEmptyArrayStorage;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v49 = a3;
  v50 = a5;

  v20 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v21 >> 1;
  v24 = v22 + 1;
  if (v21 >> 1 <= v22)
  {
    v20 = sub_10003EE4C((v21 > 1), v22 + 1, 1, v20);
    v21 = *(v20 + 3);
    v23 = v21 >> 1;
  }

  *(v20 + 2) = v24;
  v25 = &v20[16 * v22];
  *(v25 + 4) = a1;
  *(v25 + 5) = a2;
  if (v23 < (v22 + 2))
  {
    v20 = sub_10003EE4C((v21 > 1), v22 + 2, 1, v20);
  }

  *(v20 + 2) = v22 + 2;
  v26 = &v20[16 * v24];
  *(v26 + 4) = 10;
  *(v26 + 5) = 0xE100000000000000;
  a3 = v49;
  a5 = v50;
  if (a4)
  {
LABEL_12:
    v27 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v27 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      v28 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10003EE4C(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v20 + 2);
      v29 = *(v20 + 3);
      v31 = v29 >> 1;
      v32 = v30 + 1;
      if (v29 >> 1 <= v30)
      {
        v20 = sub_10003EE4C((v29 > 1), v30 + 1, 1, v20);
        v29 = *(v20 + 3);
        v31 = v29 >> 1;
      }

      *(v20 + 2) = v32;
      v33 = &v20[16 * v30];
      *(v33 + 4) = v28;
      *(v33 + 5) = a4;
      if (v31 < (v30 + 2))
      {
        v20 = sub_10003EE4C((v29 > 1), v30 + 2, 1, v20);
      }

      *(v20 + 2) = v30 + 2;
      v34 = &v20[16 * v32];
      *(v34 + 4) = 10;
      *(v34 + 5) = 0xE100000000000000;
    }
  }

LABEL_22:
  sub_100024570(a5, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v13, v14);
    v36 = sub_100080278();
    v38 = v37;
    v39 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10003EE4C(0, *(v20 + 2) + 1, 1, v20);
      }

      v42 = *(v20 + 2);
      v41 = *(v20 + 3);
      v43 = v41 >> 1;
      v44 = v42 + 1;
      if (v41 >> 1 <= v42)
      {
        v20 = sub_10003EE4C((v41 > 1), v42 + 1, 1, v20);
        v41 = *(v20 + 3);
        v43 = v41 >> 1;
      }

      *(v20 + 2) = v44;
      v45 = &v20[16 * v42];
      *(v45 + 4) = v40;
      *(v45 + 5) = v38;
      if (v43 < (v42 + 2))
      {
        v20 = sub_10003EE4C((v41 > 1), v42 + 2, 1, v20);
      }

      (*(v15 + 8))(v18, v14);
      *(v20 + 2) = v42 + 2;
      v46 = &v20[16 * v44];
      *(v46 + 4) = 10;
      *(v46 + 5) = 0xE100000000000000;
      if (*(v20 + 2))
      {
        goto LABEL_24;
      }
    }

    else
    {
      (*(v15 + 8))(v18, v14);

      if (*(v20 + 2))
      {
        goto LABEL_24;
      }
    }

LABEL_35:

    return 0;
  }

  sub_1000452FC(v13);
  if (!*(v20 + 2))
  {
    goto LABEL_35;
  }

LABEL_24:
  v51 = v20;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100045364();
  v35 = sub_100081128();

  return v35;
}

uint64_t sub_1000452FC(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100045364()
{
  result = qword_1000ACE58;
  if (!qword_1000ACE58)
  {
    sub_100004FC8(&qword_1000ACE50, &qword_1000881F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACE58);
  }

  return result;
}

uint64_t sub_1000453C8()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AE928);
  sub_10000A480(v0, qword_1000AE928);
  sub_100019DAC();
  sub_1000814E8();
  return sub_100080708();
}

uint64_t sub_100045460()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B7F40);
  v26[1] = sub_10000A480(v23, qword_1000B7F40);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_100045874()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v72 = &v47 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = &v47 - v5;
  v71 = sub_1000801E8();
  v76 = *(v71 - 8);
  v6 = *(v76 + 64);
  __chkstk_darwin(v71);
  v65 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_100080478();
  v75 = *(v67 - 8);
  v8 = *(v75 + 64);
  v9 = __chkstk_darwin(v67);
  v66 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = sub_1000811C8();
  v73 = *(v13 - 8);
  v14 = v73;
  v15 = *(v73 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v70 = sub_1000801F8();
  v74 = *(v70 - 8);
  v21 = *(v74 + 64);
  __chkstk_darwin(v70);
  v55 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AEB08, &qword_1000891B8);
  v23 = sub_100002840(&qword_1000AEB10, &qword_1000891C0);
  v68 = v23;
  v24 = *(v23 - 8);
  v62 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100085A40;
  v63 = v26;
  v64 = v26 + v25;
  v60 = *(v23 + 48);
  *(v26 + v25) = 0;
  v47 = v20;
  sub_100081158();
  sub_100080448();
  v61 = *(v14 + 16);
  v49 = v18;
  v27 = v13;
  v48 = v13;
  v61(v18, v20, v13);
  v28 = v75;
  v59 = *(v75 + 16);
  v29 = v67;
  v59(v66, v12, v67);
  v58 = type metadata accessor for BundleFinder();
  v30 = v65;
  *v65 = v58;
  v56 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v31 = *(v76 + 104);
  v76 += 104;
  v57 = v31;
  v31(v30);
  sub_100080208();
  v32 = *(v28 + 8);
  v75 = v28 + 8;
  v54 = v32;
  v33 = v12;
  v32(v12, v29);
  v34 = *(v73 + 8);
  v73 += 8;
  v53 = v34;
  v35 = v47;
  v34(v47, v27);
  v36 = *(v74 + 56);
  v74 += 56;
  v52 = v36;
  v36(v69, 1, 1, v70);
  v37 = sub_10007FF18();
  v38 = *(v37 - 8);
  v50 = *(v38 + 56);
  v51 = v38 + 56;
  v50(v72, 1, 1, v37);
  v39 = v64;
  sub_10007FF48();
  v60 = (v39 + v62);
  v62 = *(v68 + 48);
  *v60 = 1;
  v40 = v35;
  sub_100081158();
  v41 = v33;
  sub_100080448();
  v42 = v48;
  v61(v49, v35, v48);
  v43 = v67;
  v59(v66, v41, v67);
  v44 = v65;
  *v65 = v58;
  v57(v44, v56, v71);
  sub_100080208();
  v54(v41, v43);
  v53(v40, v42);
  v52(v69, 1, 1, v70);
  v50(v72, 1, 1, v37);
  sub_10007FF48();
  v45 = sub_100067B7C(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7F58 = v45;
  return result;
}

unint64_t sub_100046050()
{
  result = qword_1000AE940;
  if (!qword_1000AE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE940);
  }

  return result;
}

uint64_t sub_1000460A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A6AB8;
  v8._object = v3;
  v5 = sub_1000815F8(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_100046108()
{
  result = qword_1000AE948;
  if (!qword_1000AE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE948);
  }

  return result;
}

unint64_t sub_100046160()
{
  result = qword_1000AE950;
  if (!qword_1000AE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE950);
  }

  return result;
}

unint64_t sub_1000461B8()
{
  result = qword_1000AE958;
  if (!qword_1000AE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE958);
  }

  return result;
}

unint64_t sub_100046210()
{
  result = qword_1000AE960;
  if (!qword_1000AE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE960);
  }

  return result;
}

unint64_t sub_100046268()
{
  result = qword_1000AE968;
  if (!qword_1000AE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE968);
  }

  return result;
}

unint64_t sub_1000462BC()
{
  result = qword_1000AE970;
  if (!qword_1000AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE970);
  }

  return result;
}

unint64_t sub_100046314()
{
  result = qword_1000AE978;
  if (!qword_1000AE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE978);
  }

  return result;
}

unint64_t sub_1000463F0()
{
  result = qword_1000AE980;
  if (!qword_1000AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE980);
  }

  return result;
}

uint64_t sub_100046448(uint64_t a1)
{
  v2 = sub_1000463F0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100046498()
{
  result = qword_1000AE988;
  if (!qword_1000AE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE988);
  }

  return result;
}

unint64_t sub_1000464F0()
{
  result = qword_1000AE990;
  if (!qword_1000AE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE990);
  }

  return result;
}

unint64_t sub_100046548()
{
  result = qword_1000AE998;
  if (!qword_1000AE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE998);
  }

  return result;
}

uint64_t sub_10004659C()
{
  if (qword_1000AC6A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000465F8(uint64_t a1)
{
  v2 = sub_100046314();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10004669C()
{
  result = qword_1000AE9B0;
  if (!qword_1000AE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9B0);
  }

  return result;
}

unint64_t sub_1000466F4()
{
  result = qword_1000AE9B8;
  if (!qword_1000AE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9B8);
  }

  return result;
}

uint64_t sub_100046780()
{
  v0 = sub_1000801E8();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  __chkstk_darwin(v0);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000801F8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100080478();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = sub_1000811C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v25 - v20;
  v26 = v4;
  sub_10000A794(v4, qword_1000B7F60);
  v25 = sub_10000A480(v4, qword_1000B7F60);
  sub_100081158();
  sub_100080448();
  (*(v15 + 16))(v19, v21, v14);
  v22 = v27;
  (*(v7 + 16))(v11, v13, v27);
  *v3 = type metadata accessor for BundleFinder();
  (*(v29 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v30);
  v23 = v28;
  sub_100080208();
  (*(v7 + 8))(v13, v22);
  (*(v15 + 8))(v21, v14);
  return (*(v31 + 32))(v25, v23, v26);
}

uint64_t sub_100046B2C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100002840(&qword_1000AEAB8, &qword_100089158);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = v27 - v6;
  v7 = sub_100002840(&qword_1000AEAC0, &qword_100089160);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v27 - v13;
  __chkstk_darwin(v12);
  v31 = v27 - v15;
  v40 = 0;
  v37 = sub_100002840(&qword_1000AEAC8, &qword_100089168);
  v27[3] = sub_100021864();
  v16 = sub_1000462BC();
  v27[2] = sub_100005C98(&qword_1000AEAD0, &qword_1000AEAC8, &qword_100089168);
  sub_100080158();
  v27[1] = sub_100005C98(&qword_1000AEAD8, &qword_1000AEAC0, &qword_100089160);
  sub_100080128();
  v38 = *(v8 + 8);
  v28 = v14;
  v38(v14, v7);
  v29 = v8 + 8;
  v39 = 1;
  v17 = v30;
  v27[0] = v16;
  sub_100080158();
  sub_100080128();
  v38(v17, v7);
  v18 = v32;
  sub_1000801A8();
  sub_100005C98(&qword_1000AEAE0, &qword_1000AEAB8, &qword_100089158);
  v19 = v33;
  v20 = v18;
  v21 = v34;
  sub_100080128();
  v22 = *(v35 + 8);
  v22(v20, v21);
  v23 = v31;
  v24 = v28;
  sub_100080118();
  v22(v19, v21);
  v25 = v38;
  v38(v24, v7);
  return v25(v23, v7);
}

uint64_t sub_100046FF8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100002840(&qword_1000AEAE8, &qword_100089170);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100002840(&qword_1000AEAF0, &qword_100089178);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100002840(&qword_1000AEAC8, &qword_100089168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_100021864();
  sub_10007FFE8();
  v16._countAndFlagsBits = 0x2079616C50;
  v16._object = 0xE500000000000000;
  sub_10007FFD8(v16);
  swift_getKeyPath();
  sub_100002840(&qword_1000AEAF8, &qword_100089180);
  sub_10007FFC8();

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  sub_10007FFD8(v17);
  swift_getKeyPath();
  sub_100002840(&qword_1000AEB00, &qword_1000891B0);
  sub_10007FFC8();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10007FFD8(v18);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AEAD0, &qword_1000AEAC8, &qword_100089168);
  sub_100080098();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_100080088();
  return (v13)(v12, v5);
}

uint64_t sub_100047330@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100002840(&qword_1000AEAE8, &qword_100089170);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100002840(&qword_1000AEAF0, &qword_100089178);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100002840(&qword_1000AEAC8, &qword_100089168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_100021864();
  sub_10007FFE8();
  v16._countAndFlagsBits = 0x2079616C50;
  v16._object = 0xE500000000000000;
  sub_10007FFD8(v16);
  swift_getKeyPath();
  sub_100002840(&qword_1000AEAF8, &qword_100089180);
  sub_10007FFC8();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10007FFD8(v17);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AEAD0, &qword_1000AEAC8, &qword_100089168);
  sub_100080098();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_100080088();
  return (v13)(v12, v5);
}

uint64_t sub_100047650(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100002840(&qword_1000AEAA8, &qword_100089150);
  v5 = sub_100005C98(&qword_1000AEAB0, &qword_1000AEAA8, &qword_100089150);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_100046B2C, 0, v4, a2, v5);
}

uint64_t sub_100047738()
{
  v1 = *(v0 + 16);
  sub_10007FC28();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004779C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004A9E0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_1000477CC()
{
  result = qword_1000AE9C0;
  if (!qword_1000AE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9C0);
  }

  return result;
}

uint64_t sub_100047820(uint64_t a1)
{
  v2 = sub_100021864();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100047864()
{
  result = qword_1000AE9C8;
  if (!qword_1000AE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9C8);
  }

  return result;
}

unint64_t sub_1000478BC()
{
  result = qword_1000AE9D0;
  if (!qword_1000AE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9D0);
  }

  return result;
}

unint64_t sub_100047914()
{
  result = qword_1000AE9D8;
  if (!qword_1000AE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9D8);
  }

  return result;
}

unint64_t sub_10004796C()
{
  result = qword_1000AE9E0;
  if (!qword_1000AE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9E0);
  }

  return result;
}

uint64_t sub_1000479C0()
{
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  sub_10007FAE8();
  result = sub_10007FAB8();
  qword_1000B7F78 = result;
  return result;
}

uint64_t sub_100047A30()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v26 - v2;
  v3 = sub_1000801E8();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100080478();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v30);
  v27 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_1000811C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v26 - v19;
  v21 = sub_1000801F8();
  v28 = *(v21 - 8);
  v29 = v21;
  v22 = *(v28 + 64);
  __chkstk_darwin(v21);
  v23 = sub_1000800F8();
  sub_10000A794(v23, qword_1000B7F80);
  v26[1] = sub_10000A480(v23, qword_1000B7F80);
  sub_100081158();
  sub_100080448();
  (*(v14 + 16))(v18, v20, v13);
  v24 = v30;
  (*(v7 + 16))(v27, v12, v30);
  *v6 = type metadata accessor for BundleFinder();
  (*(v31 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v32);
  sub_100080208();
  (*(v7 + 8))(v12, v24);
  (*(v14 + 8))(v20, v13);
  (*(v28 + 56))(v33, 1, 1, v29);
  return sub_1000800E8();
}

uint64_t sub_100047E44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[1] = a1;
  v3 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v28[0] = v28 - v5;
  v6 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  v13 = sub_1000801F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v28 - v19;
  v21 = v1[2];
  sub_10007FC58();
  if (!v29)
  {
    v23 = *v2;
    v22 = v2[1];
  }

  sub_1000801D8();
  v24 = *(v14 + 56);
  v24(v12, 1, 1, v13);
  v25 = v2[4];
  sub_10007FC58();
  if (v29)
  {
    sub_1000801D8();
    sub_100005B2C(v12, &qword_1000AD3C8, &qword_100087330);
    v24(v10, 0, 1, v13);
    sub_10000C1E0(v10, v12, &qword_1000AD3C8, &qword_100087330);
  }

  (*(v14 + 16))(v18, v20, v13);
  sub_1000055FC(v12, v10, &qword_1000AD3C8, &qword_100087330);
  v26 = sub_10007FF18();
  (*(*(v26 - 8) + 56))(v28[0], 1, 1, v26);
  sub_10007FF48();
  sub_100005B2C(v12, &qword_1000AD3C8, &qword_100087330);
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_100048178@<X0>(void *a1@<X8>)
{
  if (qword_1000AC6B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000B7F78;
}

unint64_t sub_1000481EC()
{
  result = qword_1000AE9E8;
  if (!qword_1000AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9E8);
  }

  return result;
}

unint64_t sub_100048244()
{
  result = qword_1000AE9F0;
  if (!qword_1000AE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9F0);
  }

  return result;
}

unint64_t sub_10004829C()
{
  result = qword_1000AE9F8;
  if (!qword_1000AE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9F8);
  }

  return result;
}

unint64_t sub_1000482F4()
{
  result = qword_1000AEA00;
  if (!qword_1000AEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA00);
  }

  return result;
}

uint64_t sub_100048380@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000A480(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10004846C(uint64_t a1)
{
  v2 = sub_100048564();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000484BC()
{
  result = qword_1000AEA18;
  if (!qword_1000AEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA18);
  }

  return result;
}

uint64_t sub_100048514(uint64_t a1)
{
  v2 = sub_1000482F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100048564()
{
  result = qword_1000AEA20;
  if (!qword_1000AEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA20);
  }

  return result;
}

unint64_t sub_1000485BC()
{
  result = qword_1000AEA28;
  if (!qword_1000AEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA28);
  }

  return result;
}

unint64_t sub_100048614()
{
  result = qword_1000AEA30;
  if (!qword_1000AEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA30);
  }

  return result;
}

unint64_t sub_10004866C()
{
  result = qword_1000AEA38;
  if (!qword_1000AEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA38);
  }

  return result;
}

unint64_t sub_1000486C4()
{
  result = qword_1000AEA40;
  if (!qword_1000AEA40)
  {
    sub_100004FC8(&qword_1000AEA48, qword_100088EB8);
    sub_10004829C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA40);
  }

  return result;
}

uint64_t sub_100048748(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10004796C();
  *v6 = v2;
  v6[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100048818@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = *(v1 + 64);
  v14 = *(v1 + 72);
  v15 = sub_100080308();
  v16 = *(*(v15 - 8) + 56);
  if (v14)
  {
    v17 = *(v15 - 8);
    v16(v12, 1, 1, v15);
    sub_1000055FC(v12, v10, &qword_1000AD3B0, &unk_100087320);
    if ((*(v17 + 48))(v10, 1, v15) == 1)
    {
      sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
      sub_100044010(v13, v14, 1, v7);
      sub_100005B2C(v12, &qword_1000AD3B0, &unk_100087320);
      sub_10000C1E0(v7, v12, &qword_1000AD3B0, &unk_100087320);
    }

    else
    {
      sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
    }

    return sub_10000C1E0(v12, a1, &qword_1000AD3B0, &unk_100087320);
  }

  else
  {

    return (v16)(a1, 1, 1, v15);
  }
}

uint64_t sub_100048A58@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = sub_100002840(&qword_1000AEA70, &qword_1000890D8);
  v1 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v3 = &v20 - v2;
  v4 = sub_100080608();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002840(&qword_1000AEA78, &qword_1000890E0);
  v22 = *(v6 - 8);
  v7 = v22;
  v8 = *(v22 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v24 = sub_100002840(&qword_1000AEA80, &qword_1000890E8);
  v21 = *(v24 - 8);
  v11 = v21;
  v12 = *(v21 + 64);
  __chkstk_darwin(v24);
  v14 = &v20 - v13;
  sub_1000805E8();
  sub_100049AF4();
  sub_100080588();
  sub_100005C98(&qword_1000AEA90, &qword_1000AEA78, &qword_1000890E0);
  sub_100080598();
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1000805F8();
  sub_100080588();
  v16 = *(v23 + 48);
  v17 = *(v11 + 16);
  v18 = v24;
  v17(v3, v14, v24);
  (*(v22 + 16))(&v3[v16], v10, v6);
  sub_1000805A8();
  v15(v10, v6);
  return (*(v21 + 8))(v14, v18);
}

uint64_t sub_100048DC8(uint64_t a1)
{
  v3 = *(*(sub_100002840(&qword_1000AD3B0, &unk_100087320) - 8) + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  v4 = sub_100080308();
  *(v1 + 112) = v4;
  v5 = *(v4 - 8);
  *(v1 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v7 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v7;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v8 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v8;

  return _swift_task_switch(sub_100048EEC, 0, 0);
}

uint64_t sub_100048EEC()
{
  v38 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_100048818(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005B2C(v0[13], &qword_1000AD3B0, &unk_100087320);
    if (qword_1000AC698 != -1)
    {
      swift_once();
    }

    v4 = sub_1000806F8();
    sub_10000A480(v4, qword_1000AE928);
    v5 = sub_1000806D8();
    v6 = sub_100081438();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v37);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s -- .url: nil", v7, 0xCu);
      sub_100019DF8(v8);
    }

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    if (qword_1000AC698 != -1)
    {
      swift_once();
    }

    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    v15 = sub_1000806F8();
    sub_10000A480(v15, qword_1000AE928);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_1000806D8();
    v17 = sub_100081438();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[14];
    if (v18)
    {
      v36 = v0[14];
      v22 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v37);
      *(v22 + 12) = 2080;
      v23 = sub_100080278();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v36);
      v27 = sub_10006150C(v23, v25, &v37);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s -- .url: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v28 = v0[17];
    v29 = v0[14];
    v9 = sub_100080298();
    v10 = v30;
    v26(v28, v29);
  }

  v32 = v0[16];
  v31 = v0[17];
  v33 = v0[13];

  v34 = v0[1];

  return v34(v9, v10);
}

uint64_t sub_100049300(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = sub_100080308();
  v18 = *(*(v17 - 8) + 56);
  if (!v16)
  {
    v18(v14, 1, 1, v17);
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v19 = *(v17 - 8);
  v18(v12, 1, 1, v17);
  sub_1000055FC(v12, v9, &qword_1000AD3B0, &unk_100087320);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v17) == 1)
  {
    sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
    sub_100044010(v15, v16, 1, v6);
    sub_100005B2C(v12, &qword_1000AD3B0, &unk_100087320);
    sub_10000C1E0(v6, v12, &qword_1000AD3B0, &unk_100087320);
  }

  else
  {
    sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
  }

  sub_10000C1E0(v12, v14, &qword_1000AD3B0, &unk_100087320);
  v21 = 1;
  if (v20(v14, 1, v17) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_100005B2C(v14, &qword_1000AD3B0, &unk_100087320);
  return v21;
}

uint64_t sub_100049580(uint64_t a1)
{
  v3 = sub_100081248();
  *(v1 + 136) = v3;
  v4 = *(v3 - 8);
  *(v1 + 144) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 152) = swift_task_alloc();
  v6 = *(*(sub_100002840(&qword_1000AD3B0, &unk_100087320) - 8) + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v7 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v7;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v8 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v8;

  return _swift_task_switch(sub_100049698, 0, 0);
}

uint64_t sub_100049698()
{
  v27 = v0;
  v1 = v0[20];
  v2 = v0[4];
  sub_10007FC58();
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[6];
  sub_10007FC58();
  v6 = v0[15];
  v7 = v0[16];
  sub_100048818(v1);
  v8 = sub_100044E44(v3, v4, v6, v7, v1);
  v10 = v9;

  sub_100005B2C(v1, &qword_1000AD3B0, &unk_100087320);
  if (qword_1000AC698 != -1)
  {
    swift_once();
  }

  v11 = sub_1000806F8();
  sub_10000A480(v11, qword_1000AE928);

  v12 = sub_1000806D8();
  v13 = sub_100081438();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10006150C(v8, v10, &v26);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s -- .text: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[17];
  v18 = v0[18];
  sub_100081238();
  v19 = sub_100081228();
  v21 = v20;

  (*(v18 + 8))(v16, v17);
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  if (v21 >> 60 == 15)
  {
    v23 = 0xC000000000000000;
  }

  else
  {
    v23 = v21;
  }

  v24 = v0[1];

  return v24(v22, v23);
}

uint64_t sub_100049958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1000499A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100049AF4()
{
  result = qword_1000AEA88;
  if (!qword_1000AEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA88);
  }

  return result;
}

uint64_t sub_100049B48(int a1, uint64_t a2)
{
  v90 = a2;
  v89 = a1;
  v99 = sub_100080078();
  v110 = *(v99 - 8);
  v2 = *(v110 + 64);
  __chkstk_darwin(v99);
  v97 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v96 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = &v79 - v8;
  v9 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v109 = &v79 - v11;
  v103 = sub_1000801E8();
  v117 = *(v103 - 8);
  v12 = *(v117 + 64);
  __chkstk_darwin(v103);
  v14 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100080478();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v79 - v21;
  v23 = sub_1000811C8();
  v91 = v23;
  v113 = *(v23 - 8);
  v24 = v113;
  v25 = *(v113 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v79 - v29;
  v98 = sub_1000801F8();
  v104 = *(v98 - 8);
  v31 = *(v104 + 64);
  v32 = __chkstk_darwin(v98);
  v88 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v94 = &v79 - v34;
  v87 = sub_100002840(&qword_1000AEA98, &qword_100089118);
  sub_100081158();
  sub_100080448();
  v111 = *(v24 + 16);
  v108 = v24 + 16;
  v111(v28, v30, v23);
  v35 = v16[2];
  v107 = v16 + 2;
  v116 = v35;
  v35(v20, v22, v15);
  v112 = type metadata accessor for BundleFinder();
  *v14 = v112;
  v115 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v36 = *(v117 + 104);
  v117 += 104;
  v114 = v36;
  v37 = v14;
  v101 = v14;
  v38 = v103;
  v36(v37);
  sub_100080208();
  v105 = v16[1];
  v106 = v16 + 1;
  v105(v22, v15);
  v39 = v113 + 8;
  v40 = *(v113 + 8);
  v41 = v91;
  v40(v30, v91);
  v102 = v40;
  v113 = v39;
  v100 = v30;
  sub_100081158();
  sub_100080448();
  v79 = v28;
  v42 = v30;
  v43 = v41;
  v111(v28, v42, v41);
  v93 = v20;
  v44 = v15;
  v92 = v15;
  v116(v20, v22, v15);
  v45 = v101;
  *v101 = v112;
  v114(v45, v115, v38);
  v46 = v109;
  sub_100080208();
  v105(v22, v44);
  v47 = v100;
  v48 = v43;
  v40(v100, v43);
  v49 = *(v104 + 56);
  v104 += 56;
  v80 = v49;
  v49(v46, 0, 1, v98);
  LOBYTE(v119) = 0;
  v50 = sub_10007FBF8();
  v82 = v50;
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v83 = v52;
  v84 = v51 + 56;
  v52(v95, 1, 1, v50);
  v52(v96, 1, 1, v50);
  v85 = enum case for InputConnectionBehavior.default(_:);
  v53 = *(v110 + 104);
  v110 += 104;
  v86 = v53;
  v53(v97);
  sub_1000463F0();
  v87 = sub_10007FD18();
  v81 = sub_100002840(&qword_1000AEAA0, &qword_100089120);

  sub_100081158();
  v54 = v22;
  sub_100080448();
  v55 = v79;
  v111(v79, v47, v48);
  v56 = v92;
  v116(v93, v22, v92);
  v57 = v101;
  *v101 = v112;
  v58 = v103;
  v114(v57, v115, v103);
  v59 = v57;
  sub_100080208();
  v60 = v105;
  v105(v54, v56);
  v61 = v100;
  v62 = v91;
  v102(v100, v91);
  sub_100081158();
  sub_100080448();
  v111(v55, v61, v62);
  v63 = v93;
  v64 = v92;
  v116(v93, v54, v92);
  *v59 = v112;
  v114(v59, v115, v58);
  v65 = v109;
  v66 = v63;
  sub_100080208();
  v67 = v54;
  v60(v54, v64);
  v68 = v100;
  v102(v100, v62);
  v80(v65, 0, 1, v98);
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  sub_100081158();
  sub_100080448();
  v111(v55, v68, v62);
  v116(v66, v54, v64);
  v69 = v101;
  *v101 = v112;
  v114(v69, v115, v103);
  sub_100080208();
  v105(v67, v64);
  v102(v68, v62);
  v70 = v95;
  sub_10007FC08();
  v71 = v82;
  v72 = v83;
  v83(v70, 0, 1, v82);
  v72(v96, 1, 1, v71);
  v86(v97, v85, v99);
  sub_100048564();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v119 = 0u;
  v120 = 0u;
  *&v121 = 0;

  sub_10007FAE8();
  sub_10007FAB8();
  LOBYTE(v119) = v89 & 1;

  v73 = v87;
  sub_10007FCF8();
  v74 = v90;
  v75 = v90[2];
  v76 = v90[4];
  v122 = v90[3];
  v123 = v76;
  v124 = *(v90 + 80);
  v77 = v90[1];
  v119 = *v90;
  v120 = v77;
  v121 = v75;
  sub_1000055FC(v90, v118, &qword_1000AEB18, &unk_1000891D0);
  sub_10007FCF8();
  sub_100005B2C(v74, &qword_1000AEB18, &unk_1000891D0);

  return v73;
}

uint64_t sub_10004A9E0()
{
  v96 = sub_100080078();
  v106 = *(v96 - 8);
  v0 = *(v106 + 64);
  __chkstk_darwin(v96);
  v94 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v93 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v77 - v6;
  v7 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v105 = &v77 - v9;
  v10 = sub_1000801E8();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_100080478();
  v15 = *(v98 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v98);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v77 - v20;
  v22 = sub_1000811C8();
  v88 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v77 - v28;
  v95 = sub_1000801F8();
  v100 = *(v95 - 8);
  v30 = *(v100 + 64);
  v31 = __chkstk_darwin(v95);
  v87 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v91 = &v77 - v33;
  v86 = sub_100002840(&qword_1000AEA98, &qword_100089118);
  sub_100081158();
  sub_100080448();
  v34 = v23;
  v107 = *(v23 + 16);
  v104 = v23 + 16;
  v107(v27, v29, v22);
  v35 = v15[2];
  v103 = v15 + 2;
  v111 = v35;
  v89 = v19;
  v36 = v98;
  v35(v19, v21, v98);
  v108 = type metadata accessor for BundleFinder();
  *v14 = v108;
  v110 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v37 = *(v113 + 104);
  v113 += 104;
  v109 = v37;
  v97 = v14;
  v37(v14);
  sub_100080208();
  v101 = v15[1];
  v102 = v15 + 1;
  v38 = v21;
  v101(v21, v36);
  v39 = v34 + 8;
  v40 = *(v34 + 8);
  v41 = v88;
  v40(v29, v88);
  v90 = v40;
  v99 = v39;
  sub_100081158();
  sub_100080448();
  v78 = v27;
  v42 = v41;
  v107(v27, v29, v41);
  v43 = v36;
  v111(v89, v38, v36);
  v44 = v97;
  v45 = v109;
  *v97 = v108;
  v45(v44, v110, v112);
  v46 = v105;
  sub_100080208();
  v101(v38, v43);
  v40(v29, v42);
  v47 = *(v100 + 56);
  v100 += 56;
  v79 = v47;
  v47(v46, 0, 1, v95);
  LOBYTE(v114) = 0;
  v48 = sub_10007FBF8();
  v81 = v48;
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v82 = v50;
  v83 = v49 + 56;
  v50(v92, 1, 1, v48);
  v50(v93, 1, 1, v48);
  v84 = enum case for InputConnectionBehavior.default(_:);
  v51 = *(v106 + 104);
  v106 += 104;
  v85 = v51;
  v51(v94);
  sub_1000463F0();
  v86 = sub_10007FD18();
  v80 = sub_100002840(&qword_1000AEAA0, &qword_100089120);
  v77 = v29;
  sub_100081158();
  sub_100080448();
  v52 = v78;
  v53 = v29;
  v54 = v42;
  v107(v78, v53, v42);
  v55 = v89;
  v56 = v38;
  v57 = v38;
  v58 = v98;
  v111(v89, v56, v98);
  v59 = v97;
  v60 = v109;
  *v97 = v108;
  v60(v59, v110, v112);
  sub_100080208();
  v61 = v101;
  v101(v57, v58);
  v62 = v77;
  v63 = v90;
  v90(v77, v54);
  sub_100081158();
  sub_100080448();
  v107(v52, v62, v54);
  v64 = v55;
  v65 = v57;
  v66 = v57;
  v67 = v98;
  v111(v55, v65, v98);
  v68 = v97;
  v69 = v109;
  *v97 = v108;
  v69(v68, v110, v112);
  v70 = v105;
  sub_100080208();
  v61(v66, v67);
  v71 = v88;
  v63(v62, v88);
  v79(v70, 0, 1, v95);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  sub_100081158();
  sub_100080448();
  v107(v52, v62, v71);
  v111(v64, v66, v67);
  v72 = v109;
  *v68 = v108;
  v72(v68, v110, v112);
  sub_100080208();
  v101(v66, v67);
  v90(v62, v71);
  v73 = v92;
  sub_10007FC08();
  v74 = v81;
  v75 = v82;
  v82(v73, 0, 1, v81);
  v75(v93, 1, 1, v74);
  v85(v94, v84, v96);
  sub_100048564();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v114 = 0u;
  v115 = 0u;
  *&v116 = 0;
  sub_10007FAE8();
  sub_10007FAB8();
  return v86;
}

uint64_t sub_10004B6A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10007FD08();
  *a2 = result;
  return result;
}

uint64_t sub_10004B6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10007FD08();
  *a2 = result;
  return result;
}

uint64_t sub_10004B730(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100080F68();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100002840(&qword_1000AEB20, &unk_1000891E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_100080CD8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_100080C58();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

char *sub_10004B904(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100080F68();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100002840(&qword_1000AEB20, &unk_1000891E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_100080CD8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_100080C58();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FilledCircleWithLabel()
{
  result = qword_1000AEB80;
  if (!qword_1000AEB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BB10()
{
  sub_100080F68();
  if (v0 <= 0x3F)
  {
    sub_10004BC00();
    if (v1 <= 0x3F)
    {
      sub_100080CD8();
      if (v2 <= 0x3F)
      {
        sub_100080C58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004BC00()
{
  if (!qword_1000AEB90)
  {
    sub_1000807B8();
    v0 = sub_100081518();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AEB90);
    }
  }
}

uint64_t sub_10004BC74@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v126 = sub_100002840(&qword_1000AEBF0, &unk_10008B6B0);
  v3 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v114 = &v108 - v4;
  v124 = sub_100002840(&qword_1000AEBF8, &unk_100089270);
  v5 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v108 - v6;
  v7 = sub_100002840(&qword_1000AE358, &qword_100088360);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v115 = &v108 - v9;
  v128 = sub_100002840(&qword_1000AEC00, &qword_100089280);
  v10 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v113 = &v108 - v11;
  v12 = sub_100002840(&qword_1000AEB20, &unk_1000891E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v108 - v14;
  v16 = sub_1000807B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v116 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100002840(&qword_1000AEC08, &qword_100089288);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v123 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v122 = &v108 - v24;
  v25 = sub_100002840(&qword_1000AEC10, &unk_100089290);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25);
  v121 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v108 - v30;
  v32 = *a1;
  v33 = type metadata accessor for FilledCircleWithLabel();
  v34 = v33[5];
  v35 = *(v26 + 44);
  v36 = sub_100080F68();
  v37 = *(v36 - 8);
  v118 = *(v37 + 16);
  v119 = v36;
  v117 = v37 + 16;
  v118(&v31[v35], &a1[v34]);
  *v31 = v32;
  v120 = v31;
  *(v31 + 4) = 256;
  sub_1000055FC(&a1[v33[10]], v15, &qword_1000AEB20, &unk_1000891E0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_100005B2C(v15, &qword_1000AEB20, &unk_1000891E0);
    v38 = &a1[v33[7]];
    v39 = v38[1];
    v129 = *v38;
    v130 = v39;
    sub_1000057D0();

    v40 = sub_100080D28();
    v116 = v41;
    v43 = v42;
    v44 = v33[11];
    v45 = v33[12];
    v46 = sub_100080C58();
    v47 = *(v46 - 8);
    v48 = &a1[v45];
    v49 = v115;
    (*(v47 + 16))(v115, v48, v46);
    (*(v47 + 56))(v49, 0, 1, v46);
    sub_100080C98();
    sub_100005B2C(v49, &qword_1000AE358, &qword_100088360);
    v50 = *&a1[v33[13]];
    sub_100080CA8();

    LOBYTE(v47) = v43;
    v51 = v116;
    v52 = sub_100080D18();
    v54 = v53;
    LOBYTE(v44) = v55;
    v115 = v56;

    sub_10000EF24(v40, v51, v47 & 1);

    LODWORD(v129) = *&a1[v33[8]];
    v57 = sub_100080D08();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_10000EF24(v52, v54, v44 & 1);

    v64 = v113;
    (v118)(&v113[*(v128 + 36)], &a1[v33[9]], v119);
    *v64 = v57;
    *(v64 + 8) = v59;
    *(v64 + 16) = v61 & 1;
    *(v64 + 24) = v63;
    sub_1000055FC(v64, v125, &qword_1000AEC00, &qword_100089280);
    swift_storeEnumTagMultiPayload();
    sub_10004C818();
    sub_10004C8D0();
    v65 = v122;
    sub_100080AD8();
    sub_100005B2C(v64, &qword_1000AEC00, &qword_100089280);
  }

  else
  {
    v112 = v17;
    v66 = *(v17 + 32);
    v111 = v16;
    v66(v116, v15, v16);
    v67 = a1;
    v68 = &a1[v33[7]];
    v69 = v68[1];
    v129 = *v68;
    v130 = v69;
    sub_1000057D0();

    v70 = sub_100080D28();
    v113 = v71;
    v73 = v72;
    v110 = v74;
    v75 = v33[11];
    v76 = v33[12];
    v77 = sub_100080C58();
    v78 = *(v77 - 8);
    v79 = &a1[v76];
    v81 = v114;
    v80 = v115;
    (*(v78 + 16))(v115, v79, v77);
    (*(v78 + 56))(v80, 0, 1, v77);
    v109 = v67;
    sub_100080C98();
    sub_100005B2C(v80, &qword_1000AE358, &qword_100088360);
    v82 = *(v67 + v33[13]);
    sub_100080CA8();

    v83 = v113;
    v84 = sub_100080D18();
    v86 = v85;
    LOBYTE(v75) = v87;
    v115 = v88;

    sub_10000EF24(v70, v83, v73 & 1);

    v89 = v109;
    LODWORD(v129) = *(v109 + v33[8]);
    v90 = sub_100080D08();
    v92 = v91;
    v94 = v93;
    v113 = v95;
    sub_10000EF24(v84, v86, v75 & 1);

    (v118)(v81 + *(v128 + 36), v89 + v33[9], v119);
    *v81 = v90;
    *(v81 + 8) = v92;
    *(v81 + 16) = v94 & 1;
    *(v81 + 24) = v113;
    KeyPath = swift_getKeyPath();
    v97 = (v81 + *(v126 + 36));
    v98 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
    v99 = v112;
    v100 = v116;
    v101 = v111;
    (*(v112 + 16))(v97 + *(v98 + 28), v116, v111);
    *v97 = KeyPath;
    sub_1000055FC(v81, v125, &qword_1000AEBF0, &unk_10008B6B0);
    swift_storeEnumTagMultiPayload();
    sub_10004C818();
    sub_10004C8D0();
    v65 = v122;
    sub_100080AD8();
    sub_100005B2C(v81, &qword_1000AEBF0, &unk_10008B6B0);
    (*(v99 + 8))(v100, v101);
  }

  v103 = v120;
  v102 = v121;
  sub_1000055FC(v120, v121, &qword_1000AEC10, &unk_100089290);
  v104 = v123;
  sub_1000055FC(v65, v123, &qword_1000AEC08, &qword_100089288);
  v105 = v127;
  sub_1000055FC(v102, v127, &qword_1000AEC10, &unk_100089290);
  v106 = sub_100002840(&qword_1000AEC28, &qword_1000892A0);
  sub_1000055FC(v104, v105 + *(v106 + 48), &qword_1000AEC08, &qword_100089288);
  sub_100005B2C(v65, &qword_1000AEC08, &qword_100089288);
  sub_100005B2C(v103, &qword_1000AEC10, &unk_100089290);
  sub_100005B2C(v104, &qword_1000AEC08, &qword_100089288);
  return sub_100005B2C(v102, &qword_1000AEC10, &unk_100089290);
}

double sub_10004C760@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_100080F48();
  a2[1] = v5;
  v6 = sub_100002840(&qword_1000AEBE0, &qword_100089258);
  sub_10004BC74(v2, a2 + *(v6 + 44));
  v7 = *&v2[*(a1 + 24)];
  sub_100080F48();
  sub_1000807E8();
  v8 = (a2 + *(sub_100002840(&qword_1000AEBE8, &unk_100089260) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

unint64_t sub_10004C818()
{
  result = qword_1000AEC18;
  if (!qword_1000AEC18)
  {
    sub_100004FC8(&qword_1000AEBF0, &unk_10008B6B0);
    sub_10004C8D0();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC18);
  }

  return result;
}

unint64_t sub_10004C8D0()
{
  result = qword_1000AEC20;
  if (!qword_1000AEC20)
  {
    sub_100004FC8(&qword_1000AEC00, &qword_100089280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC20);
  }

  return result;
}

unint64_t sub_10004C960()
{
  result = qword_1000AEC30;
  if (!qword_1000AEC30)
  {
    sub_100004FC8(&qword_1000AEBE8, &unk_100089260);
    sub_100005C98(&qword_1000AEC38, &qword_1000AEC40, &qword_1000892D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC30);
  }

  return result;
}

uint64_t sub_10004CA2C()
{
  v24 = sub_100002840(&qword_1000AECC0, &qword_100089410);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10007FD58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AECC8, &qword_100089418);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10004E7FC();
  sub_10007FE18();
  v25._countAndFlagsBits = 0x206E65704FLL;
  v25._object = 0xE500000000000000;
  sub_10007FE08(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v18 = v3;
  v20(v7);
  sub_10007FDE8();
  v19 = v4[1];
  v19(v7, v3);
  v26._countAndFlagsBits = 0x676E697474655320;
  v26._object = 0xE900000000000073;
  sub_10007FE08(v26);
  sub_10007FE28();
  v10 = sub_10007FD78();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10007FE18();
  v27._countAndFlagsBits = 0x206F74206F47;
  v27._object = 0xE600000000000000;
  sub_10007FE08(v27);
  v12 = v18;
  (v20)(v7, v21, v18);
  sub_10007FDE8();
  v19(v7, v12);
  v28._countAndFlagsBits = 0x676E697474655320;
  v28._object = 0xE900000000000073;
  sub_10007FE08(v28);
  sub_10007FE28();
  v13 = sub_10007FD78();
  (v22)(v2, v11);
  sub_100002840(&qword_1000AECD0, &unk_100089420);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100085A40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10007FD68();

  return v15;
}

uint64_t sub_10004CE4C()
{
  v24 = sub_100002840(&qword_1000AECC0, &qword_100089410);
  v22 = *(v24 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v24);
  v2 = &v17 - v1;
  v3 = sub_10007FD58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AECC8, &qword_100089418);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10004E7FC();
  sub_10007FE18();
  v25._countAndFlagsBits = 0x206E65704FLL;
  v25._object = 0xE500000000000000;
  sub_10007FE08(v25);
  v21 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v4[13];
  v17 = v3;
  v20(v7);
  sub_10007FDE8();
  v19 = v4[1];
  v19(v7, v3);
  v18 = " set reading menu position to ";
  v26._object = 0x80000001000838C0;
  v26._countAndFlagsBits = 0xD000000000000017;
  sub_10007FE08(v26);
  sub_10007FE28();
  v10 = sub_10007FD78();
  v22 = *(v22 + 8);
  v23 = v10;
  v11 = v24;
  (v22)(v2, v24);
  sub_10007FE18();
  v27._countAndFlagsBits = 0x206F74206F47;
  v27._object = 0xE600000000000000;
  sub_10007FE08(v27);
  v12 = v17;
  (v20)(v7, v21, v17);
  sub_10007FDE8();
  v19(v7, v12);
  v28._object = (v18 | 0x8000000000000000);
  v28._countAndFlagsBits = 0xD000000000000017;
  sub_10007FE08(v28);
  sub_10007FE28();
  v13 = sub_10007FD78();
  (v22)(v2, v11);
  sub_100002840(&qword_1000AECD0, &unk_100089420);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100085A40;
  *(v14 + 32) = v23;
  *(v14 + 40) = v13;
  v15 = sub_10007FD68();

  return v15;
}

uint64_t sub_10004D27C(uint64_t a1)
{
  v27 = a1;
  v1 = sub_100002840(&qword_1000AECA0, &qword_1000893D0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = sub_10007FD58();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AECA8, &qword_1000893D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_10004E850();
  sub_10007FE18();
  v34._countAndFlagsBits = 2125385;
  v34._object = 0xE300000000000000;
  sub_10007FE08(v34);
  v31 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v30 = v7[13];
  v30(v10);
  sub_10007FDE8();
  v13 = v7[1];
  v28 = v7 + 1;
  v29 = v13;
  v13(v10, v6);
  v35._object = 0x80000001000838A0;
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10007FE08(v35);
  swift_getKeyPath();
  v26 = sub_10004E9C8();
  sub_10007FD48();

  sub_10007FDF8();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10007FE08(v36);
  sub_10007FE28();
  v14 = sub_10007FD78();
  v15 = *(v33 + 8);
  v33 += 8;
  v24 = v14;
  v25 = v15;
  v15(v5, v32);
  sub_10007FE18();
  v37._countAndFlagsBits = 544503120;
  v37._object = 0xE400000000000000;
  sub_10007FE08(v37);
  (v30)(v10, v31, v6);
  sub_10007FDE8();
  v29(v10, v6);
  v38._object = 0xED00002065687420;
  v38._countAndFlagsBits = 0x6E6F20756E656D20;
  sub_10007FE08(v38);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v39._countAndFlagsBits = 0x6564697320;
  v39._object = 0xE500000000000000;
  sub_10007FE08(v39);
  sub_10007FE28();
  v23 = sub_10007FD78();
  v16 = v32;
  v25(v5, v32);
  sub_10007FE18();
  v40._countAndFlagsBits = 544499027;
  v40._object = 0xE400000000000000;
  sub_10007FE08(v40);
  (v30)(v10, v31, v6);
  sub_10007FDE8();
  v29(v10, v6);
  v41._countAndFlagsBits = 0x6E6F20756E654D20;
  v41._object = 0xED00002065687420;
  sub_10007FE08(v41);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v42._countAndFlagsBits = 0x6564697320;
  v42._object = 0xE500000000000000;
  sub_10007FE08(v42);
  sub_10007FE28();
  v17 = sub_10007FD78();
  v25(v5, v16);
  sub_100002840(&qword_1000AECB0, &qword_1000893E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100085C10;
  v19 = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  v20 = sub_10007FD68();

  return v20;
}

uint64_t sub_10004D8A4(uint64_t a1)
{
  v27 = a1;
  v1 = sub_100002840(&qword_1000AEC80, &qword_100089390);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = sub_10007FD58();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002840(&qword_1000AEC88, &qword_100089398);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_10004E8A4();
  sub_10007FE18();
  v34._countAndFlagsBits = 2125385;
  v34._object = 0xE300000000000000;
  sub_10007FE08(v34);
  v31 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v30 = v7[13];
  v30(v10);
  sub_10007FDE8();
  v13 = v7[1];
  v28 = v7 + 1;
  v29 = v13;
  v13(v10, v6);
  v35._object = 0x8000000100083830;
  v35._countAndFlagsBits = 0xD000000000000013;
  sub_10007FE08(v35);
  swift_getKeyPath();
  v26 = sub_10004E900();
  sub_10007FD48();

  sub_10007FDF8();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10007FE08(v36);
  sub_10007FE28();
  v14 = sub_10007FD78();
  v15 = *(v33 + 8);
  v33 += 8;
  v24 = v14;
  v25 = v15;
  v15(v5, v32);
  sub_10007FE18();
  v37._countAndFlagsBits = 2125385;
  v37._object = 0xE300000000000000;
  sub_10007FE08(v37);
  (v30)(v10, v31, v6);
  sub_10007FDE8();
  v29(v10, v6);
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x8000000100083850;
  sub_10007FE08(v38);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10007FE08(v39);
  sub_10007FE28();
  v23 = sub_10007FD78();
  v16 = v32;
  v25(v5, v32);
  sub_10007FE18();
  v40._countAndFlagsBits = 2125385;
  v40._object = 0xE300000000000000;
  sub_10007FE08(v40);
  (v30)(v10, v31, v6);
  sub_10007FDE8();
  v29(v10, v6);
  v41._countAndFlagsBits = 0xD00000000000002ELL;
  v41._object = 0x8000000100083870;
  sub_10007FE08(v41);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_10007FE08(v42);
  sub_10007FE28();
  v17 = sub_10007FD78();
  v25(v5, v16);
  sub_100002840(&qword_1000AEC90, &qword_1000893A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100085C10;
  v19 = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  v20 = sub_10007FD68();

  return v20;
}

uint64_t sub_10004DEA4()
{
  v0 = sub_10007FD98();
  v1 = sub_10007FD98();
  sub_100002840(&qword_1000AEC78, &qword_100089388);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085A40;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_10007FD88();

  return v3;
}

uint64_t sub_10004DF30()
{
  v0 = sub_100002840(&qword_1000AEC80, &qword_100089390);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  v5 = sub_10007FD58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002840(&qword_1000AEC88, &qword_100089398);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_10004E8A4();
  sub_10007FE18();
  v17._object = 0x8000000100083810;
  v17._countAndFlagsBits = 0xD000000000000019;
  sub_10007FE08(v17);
  (*(v6 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_10007FDE8();
  (*(v6 + 8))(v9, v5);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10007FE08(v18);
  sub_10007FE28();
  v12 = sub_10007FD78();
  (*(v1 + 8))(v4, v0);
  sub_100002840(&qword_1000AEC90, &qword_1000893A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100085C00;
  *(v13 + 32) = v12;
  v14 = sub_10007FD68();

  return v14;
}

uint64_t sub_10004E238(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_10007FDD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10007FD48();

  a4(v11);
  sub_10007FDC8();
  v12 = sub_10007FDB8();
  (*(v7 + 8))(v10, v6);
  sub_100002840(&qword_1000AEC70, &qword_100089380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100085C00;
  *(v13 + 32) = v12;
  v14 = sub_10007FDA8();

  return v14;
}

uint64_t sub_10004E3C8()
{
  v0 = sub_10007FD98();
  sub_100002840(&qword_1000AEC78, &qword_100089388);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100085C00;
  *(v1 + 32) = v0;
  v2 = sub_10007FD88();

  return v2;
}

uint64_t sub_10004E43C()
{
  if (qword_1000AC6C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10004E4A8()
{
  v0 = sub_10007FE58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100055990();
  sub_10004E7FC();
  sub_10007FE68();
  v5 = sub_10007FE48();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v17 = sub_100055990();
  sub_10007FE68();
  v7 = sub_10007FE48();
  v6(v4, v0);
  v17 = sub_100068540();
  v18 = v8;
  sub_10004E850();
  sub_10007FE68();
  v9 = sub_10007FE48();
  v6(v4, v0);
  v17 = sub_10007E85C();
  v18 = v10;
  sub_10004E8A4();
  sub_10007FE68();
  v11 = sub_10007FE48();
  v6(v4, v0);
  v17 = sub_10007E85C();
  v18 = v12;
  sub_10007FE68();
  v13 = sub_10007FE48();
  v6(v4, v0);
  sub_100002840(&qword_1000AEC60, &qword_100089350);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000892E0;
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  *(v14 + 48) = v9;
  *(v14 + 56) = v11;
  *(v14 + 64) = v13;
  v15 = sub_10007FE38();

  return v15;
}

unint64_t sub_10004E7FC()
{
  result = qword_1000AEC48;
  if (!qword_1000AEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC48);
  }

  return result;
}

unint64_t sub_10004E850()
{
  result = qword_1000AEC50;
  if (!qword_1000AEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC50);
  }

  return result;
}

unint64_t sub_10004E8A4()
{
  result = qword_1000AEC58;
  if (!qword_1000AEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC58);
  }

  return result;
}

unint64_t sub_10004E900()
{
  result = qword_1000AEC68;
  if (!qword_1000AEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC68);
  }

  return result;
}

uint64_t sub_10004E954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10007FCE8();
  *a2 = v5;
  return result;
}

uint64_t sub_10004E990(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10007FCF8();
}

unint64_t sub_10004E9C8()
{
  result = qword_1000AEC98;
  if (!qword_1000AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC98);
  }

  return result;
}

uint64_t sub_10004EA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10007FCE8();
  *a2 = v5;
  return result;
}

uint64_t sub_10004EA58(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_10007FCF8();
}

unint64_t sub_10004EA90()
{
  result = qword_1000AECB8;
  if (!qword_1000AECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECB8);
  }

  return result;
}

uint64_t sub_10004EB20()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000801F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000800F8();
  sub_10000A794(v7, qword_1000B7FA0);
  sub_10000A480(v7, qword_1000B7FA0);
  sub_1000801D8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000800E8();
}

uint64_t sub_10004EC88()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v501 = &v470 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v500 = &v470 - v5;
  v513 = sub_1000801E8();
  v511 = *(v513 - 8);
  v6 = *(v511 + 64);
  __chkstk_darwin(v513);
  v8 = (&v470 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v497 = sub_100080478();
  v518 = *(v497 - 8);
  v9 = *(v518 + 64);
  v10 = __chkstk_darwin(v497);
  v517 = &v470 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v470 - v12;
  v14 = sub_1000811C8();
  v503 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v470 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v470 - v20;
  v499 = sub_1000801F8();
  v483 = *(v499 - 8);
  v484 = v499 - 8;
  v486 = v483;
  v22 = v483[8];
  v23 = __chkstk_darwin(v499 - 8);
  v485 = &v470 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v494 = &v470 - v25;
  sub_100002840(&unk_1000AED98, &unk_100089978);
  v26 = sub_100002840(&qword_1000AEDA0, &unk_100089980);
  v496 = v26;
  v27 = *(v26 - 8);
  v488 = *(v27 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v474 = v29;
  *(v29 + 16) = xmmword_100089430;
  v495 = v29 + v28;
  v475 = *(v26 + 48);
  *(v29 + v28) = 0;
  sub_100081158();
  v30 = v13;
  sub_100080448();
  v31 = v15;
  v32 = *(v15 + 16);
  v509 = v15 + 16;
  v514 = v32;
  v33 = v21;
  v32(v19, v21, v14);
  v34 = v518;
  v507 = *(v518 + 16);
  v505 = v518 + 16;
  v35 = v497;
  v507(v517, v30, v497);
  v512 = type metadata accessor for BundleFinder();
  *v8 = v512;
  v510 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v36 = *(v511 + 104);
  v511 += 104;
  v508 = v36;
  v516 = v8;
  (v36)(v8);
  sub_100080208();
  v515 = *(v34 + 8);
  v37 = v35;
  v515(v30, v35);
  v518 = v34 + 8;
  v38 = *(v31 + 8);
  v39 = v503;
  v38(v33, v503);
  v506 = v38;
  v504 = v31 + 8;
  v502 = v33;
  sub_100081158();
  sub_100080448();
  v40 = v19;
  v41 = v19;
  v42 = v39;
  v514(v41, v33, v39);
  v507(v517, v30, v37);
  v43 = v516;
  v44 = v513;
  *v516 = v512;
  (v508)(v43, v510, v44);
  v45 = v500;
  sub_100080208();
  v515(v30, v37);
  v46 = v502;
  v38(v502, v42);
  v47 = v486;
  v48 = *(v486 + 56);
  v493 = v486 + 56;
  v492 = v48;
  v48(v45, 0, 1, v499);
  v487 = "Add widget view subtitle";
  v49 = v501;
  sub_10007FF08();
  v489 = sub_10007FF18();
  v50 = *(v489 - 8);
  v491 = *(v50 + 56);
  v490 = v50 + 56;
  v491(v49, 0, 1, v489);
  v479 = sub_100002840(&unk_1000AEDA8, &unk_10008B1F0);
  v484 = v483[9];
  v480 = *(v47 + 80);
  v477 = ((v480 + 32) & ~v480) + 2 * v484;
  v51 = (v480 + 32) & ~v480;
  v482 = v51;
  v52 = swift_allocObject();
  v476 = xmmword_100085A40;
  v473 = v52;
  *(v52 + 16) = xmmword_100085A40;
  *&v478 = v52 + v51;
  sub_100081158();
  sub_100080448();
  v498 = v40;
  v53 = v514;
  v514(v40, v46, v42);
  v54 = v497;
  v507(v517, v30, v497);
  v55 = v516;
  v56 = v513;
  *v516 = v512;
  (v508)(v55, v510, v56);
  v57 = v485;
  sub_100080208();
  v58 = v30;
  v515(v30, v54);
  v59 = v502;
  v60 = v506;
  v506(v502, v42);
  v61 = *(v486 + 32);
  v486 += 32;
  v483 = v61;
  v62 = v499;
  (v61)(v478, v57, v499);
  v63 = v59;
  sub_100081158();
  sub_100080448();
  v64 = v498;
  v65 = v63;
  v66 = v503;
  v53(v498, v65, v503);
  v67 = v497;
  v507(v517, v58, v497);
  v68 = v516;
  v69 = v513;
  *v516 = v512;
  (v508)(v68, v510, v69);
  v70 = v485;
  sub_100080208();
  v515(v58, v67);
  v71 = v502;
  v60(v502, v66);
  (v483)(v478 + v484, v70, v62);
  v72 = v495;
  sub_10007FF38();
  v473 = v72 + v488;
  v475 = *(v496 + 48);
  *v473 = 5;
  sub_100081158();
  v481 = v58;
  sub_100080448();
  v73 = v64;
  v514(v64, v71, v66);
  v74 = v58;
  v75 = v67;
  v76 = v507;
  v507(v517, v74, v67);
  v77 = v516;
  v79 = v512;
  v78 = v513;
  *v516 = v512;
  v80 = v508;
  (v508)(v77, v510, v78);
  sub_100080208();
  v81 = v481;
  v515(v481, v75);
  v82 = v502;
  v83 = v503;
  v506(v502, v503);
  sub_100081158();
  v84 = v81;
  sub_100080448();
  v85 = v83;
  v514(v73, v82, v83);
  v86 = v84;
  v76(v517, v84, v75);
  *v516 = v79;
  v80();
  v87 = v500;
  v88 = v498;
  sub_100080208();
  v515(v86, v75);
  v506(v82, v83);
  v492(v87, 0, 1, v499);
  v89 = v501;
  sub_10007FF08();
  v491(v89, 0, 1, v489);
  v90 = v482;
  v91 = swift_allocObject();
  v478 = xmmword_100085C00;
  *(v91 + 16) = xmmword_100085C00;
  sub_100081158();
  sub_100080448();
  v92 = v88;
  v93 = v85;
  v94 = v514;
  v514(v88, v82, v93);
  v95 = v75;
  v507(v517, v86, v75);
  v96 = v516;
  v97 = v513;
  *v516 = v512;
  v98 = v510;
  (v508)(v96, v510, v97);
  v99 = v485;
  sub_100080208();
  v100 = v86;
  v101 = v86;
  v102 = v95;
  v515(v101, v95);
  v103 = v502;
  v104 = v503;
  v506(v502, v503);
  (v483)(v91 + v90, v99, v499);
  sub_10007FF38();
  v473 = 2 * v488;
  v471 = (v495 + 2 * v488);
  v472 = *(v496 + 48);
  *v471 = 6;
  sub_100081158();
  sub_100080448();
  v105 = v92;
  v94(v92, v103, v104);
  v106 = v102;
  v107 = v102;
  v108 = v507;
  v507(v517, v100, v107);
  v109 = v516;
  v110 = v513;
  *v516 = v512;
  v111 = v98;
  v112 = v508;
  (v508)(v109, v111, v110);
  v113 = v105;
  sub_100080208();
  v515(v100, v106);
  v114 = v502;
  v115 = v503;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v514(v113, v114, v115);
  v116 = v106;
  v108(v517, v100, v106);
  v117 = v512;
  v118 = v513;
  v119 = v516;
  *v516 = v512;
  (v112)(v119, v510, v118);
  v120 = v500;
  sub_100080208();
  v515(v100, v116);
  v121 = v502;
  v122 = v503;
  v506(v502, v503);
  v123 = v499;
  v492(v120, 0, 1, v499);
  v124 = v501;
  sub_10007FF08();
  v491(v124, 0, 1, v489);
  v125 = swift_allocObject();
  v470 = v125;
  *(v125 + 16) = v476;
  v475 = v125 + v482;
  sub_100081158();
  sub_100080448();
  v126 = v121;
  v127 = v122;
  v128 = v122;
  v129 = v514;
  v514(v498, v126, v127);
  v130 = v497;
  v507(v517, v100, v497);
  v131 = v516;
  *v516 = v117;
  v132 = v118;
  v133 = v508;
  (v508)(v131, v510, v132);
  v134 = v485;
  sub_100080208();
  v515(v100, v130);
  v135 = v502;
  v136 = v506;
  v506(v502, v128);
  v137 = v123;
  v138 = v483;
  (v483)(v475, v134, v137);
  v139 = v135;
  sub_100081158();
  v140 = v100;
  sub_100080448();
  v141 = v498;
  v129(v498, v139, v128);
  v507(v517, v140, v130);
  v142 = v516;
  v143 = v513;
  *v516 = v512;
  (v133)(v142, v510, v143);
  v144 = v485;
  sub_100080208();
  v515(v140, v130);
  v145 = v502;
  v136(v502, v128);
  v138(v475 + v484, v144, v499);
  sub_10007FF38();
  v473 += v495 + v488;
  v475 = *(v496 + 48);
  *v473 = 7;
  sub_100081158();
  sub_100080448();
  v146 = v128;
  v147 = v514;
  v514(v141, v145, v128);
  v148 = v130;
  v149 = v130;
  v150 = v507;
  v507(v517, v140, v148);
  v151 = v516;
  v153 = v512;
  v152 = v513;
  *v516 = v512;
  (v508)(v151, v510, v152);
  sub_100080208();
  v154 = v481;
  v515(v481, v149);
  v155 = v502;
  v156 = v146;
  v506(v502, v146);
  sub_100081158();
  sub_100080448();
  v157 = v498;
  v147(v498, v155, v156);
  v158 = v517;
  v159 = v154;
  v160 = v497;
  v150(v517, v159, v497);
  *v151 = v153;
  v161 = v510;
  (v508)(v151, v510, v152);
  v162 = v500;
  v163 = v157;
  v164 = v158;
  sub_100080208();
  v165 = v481;
  v515(v481, v160);
  v166 = v503;
  v506(v155, v503);
  v492(v162, 0, 1, v499);
  v167 = v501;
  sub_10007FF08();
  v491(v167, 0, 1, v489);
  sub_10007FF48();
  v475 = 4 * v488;
  v472 = v495 + 4 * v488;
  v473 = *(v496 + 48);
  *v472 = 8;
  sub_100081158();
  sub_100080448();
  v514(v163, v155, v166);
  v168 = v497;
  v507(v164, v165, v497);
  v169 = v516;
  v170 = v513;
  *v516 = v512;
  v171 = v508;
  (v508)(v169, v161, v170);
  sub_100080208();
  v515(v165, v168);
  v172 = v502;
  v173 = v503;
  v174 = v506;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v514(v498, v172, v173);
  v175 = v497;
  v507(v517, v165, v497);
  v176 = v513;
  *v169 = v512;
  (v171)(v169, v510, v176);
  v177 = v500;
  sub_100080208();
  v178 = v165;
  v515(v165, v175);
  v179 = v502;
  v180 = v503;
  v174(v502, v503);
  v492(v177, 0, 1, v499);
  v181 = v501;
  sub_10007FF08();
  v491(v181, 0, 1, v489);
  sub_10007FF48();
  v473 = v495 + v475 + v488;
  v475 = *(v496 + 48);
  *v473 = 9;
  sub_100081158();
  sub_100080448();
  v514(v498, v179, v180);
  v182 = v507;
  v507(v517, v178, v175);
  v183 = v516;
  v184 = v513;
  *v516 = v512;
  v185 = v510;
  (v508)(v183, v510, v184);
  sub_100080208();
  v186 = v515;
  v515(v178, v175);
  v187 = v502;
  v188 = v503;
  v189 = v506;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v190 = v498;
  v514(v498, v187, v188);
  v191 = v497;
  v182(v517, v178, v497);
  v192 = v516;
  v193 = v513;
  *v516 = v512;
  (v508)(v192, v185, v193);
  v194 = v500;
  v195 = v190;
  sub_100080208();
  v186(v178, v191);
  v196 = v502;
  v197 = v503;
  v189(v502, v503);
  v492(v194, 0, 1, v499);
  v198 = v501;
  sub_10007FF08();
  v491(v198, 0, 1, v489);
  sub_10007FF48();
  v473 = v495 + 6 * v488;
  v475 = *(v496 + 48);
  *v473 = 10;
  sub_100081158();
  sub_100080448();
  v199 = v195;
  v514(v195, v196, v197);
  v507(v517, v178, v191);
  v200 = v516;
  v201 = v513;
  *v516 = v512;
  v202 = v510;
  (v508)(v200, v510, v201);
  v203 = v199;
  sub_100080208();
  v204 = v497;
  v515(v178, v497);
  v205 = v502;
  v206 = v197;
  v207 = v506;
  v506(v502, v197);
  sub_100081158();
  v208 = v481;
  sub_100080448();
  v514(v203, v205, v206);
  v209 = v517;
  v210 = v208;
  v211 = v204;
  v507(v517, v210, v204);
  v212 = v516;
  *v516 = v512;
  (v508)(v212, v202, v201);
  v213 = v500;
  v214 = v203;
  v215 = v209;
  sub_100080208();
  v216 = v481;
  v515(v481, v211);
  v217 = v502;
  v207(v502, v206);
  v492(v213, 0, 1, v499);
  v218 = v501;
  sub_10007FF08();
  v491(v218, 0, 1, v489);
  sub_10007FF48();
  v475 = 8 * v488;
  v472 = v495 + 7 * v488;
  v473 = *(v496 + 48);
  *v472 = 11;
  sub_100081158();
  sub_100080448();
  v514(v214, v217, v206);
  v219 = v216;
  v220 = v497;
  v507(v215, v216, v497);
  v222 = v512;
  v221 = v513;
  v223 = v516;
  *v516 = v512;
  (v508)(v223, v510, v221);
  sub_100080208();
  v224 = v515;
  v515(v219, v220);
  v225 = v503;
  v226 = v506;
  v506(v217, v503);
  sub_100081158();
  sub_100080448();
  v514(v214, v217, v225);
  v227 = v497;
  v507(v517, v219, v497);
  *v516 = v222;
  v228 = v508;
  v508();
  v229 = v500;
  v230 = v498;
  sub_100080208();
  v231 = v219;
  v232 = v219;
  v233 = v227;
  v224(v232, v227);
  v234 = v502;
  v235 = v503;
  v226(v502, v503);
  v492(v229, 0, 1, v499);
  v236 = v501;
  sub_10007FF08();
  v491(v236, 0, 1, v489);
  v237 = v482;
  v238 = swift_allocObject();
  *(v238 + 16) = v478;
  sub_100081158();
  sub_100080448();
  v514(v230, v234, v235);
  v239 = v231;
  v507(v517, v231, v233);
  v240 = v516;
  v241 = v513;
  *v516 = v512;
  (v228)(v240, v510, v241);
  v242 = v485;
  sub_100080208();
  v243 = v239;
  v515(v239, v233);
  v244 = v502;
  v245 = v503;
  v506(v502, v503);
  (v483)(v238 + v237, v242, v499);
  sub_10007FF38();
  v472 = v495 + v475;
  v473 = *(v496 + 48);
  *v472 = 12;
  sub_100081158();
  sub_100080448();
  v514(v230, v244, v245);
  v246 = v497;
  v507(v517, v243, v497);
  v247 = v516;
  v248 = v513;
  *v516 = v512;
  v249 = v510;
  (v508)(v247, v510, v248);
  sub_100080208();
  v515(v243, v246);
  v250 = v502;
  v251 = v503;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v252 = v498;
  v514(v498, v250, v251);
  v253 = v497;
  v507(v517, v243, v497);
  v254 = v516;
  *v516 = v512;
  (v508)(v254, v249, v248);
  v255 = v500;
  sub_100080208();
  v256 = v481;
  v515(v481, v253);
  v257 = v503;
  v506(v250, v503);
  v492(v255, 0, 1, v499);
  v258 = v501;
  sub_10007FF08();
  v491(v258, 0, 1, v489);
  sub_10007FF48();
  v473 = v495 + v475 + v488;
  v475 = *(v496 + 48);
  *v473 = 13;
  sub_100081158();
  sub_100080448();
  v259 = v250;
  v514(v252, v250, v257);
  v260 = v497;
  v507(v517, v256, v497);
  v261 = v516;
  v262 = v513;
  *v516 = v512;
  (v508)(v261, v510, v262);
  sub_100080208();
  v263 = v515;
  v515(v256, v260);
  v264 = v506;
  v506(v259, v257);
  sub_100081158();
  sub_100080448();
  v514(v498, v259, v257);
  v507(v517, v256, v260);
  v265 = v516;
  v266 = v513;
  *v516 = v512;
  (v508)(v265, v510, v266);
  v267 = v500;
  sub_100080208();
  v263(v256, v260);
  v268 = v502;
  v269 = v503;
  v264(v502, v503);
  v492(v267, 0, 1, v499);
  v270 = v501;
  sub_10007FF08();
  v491(v270, 0, 1, v489);
  v271 = swift_allocObject();
  v477 = v271;
  *(v271 + 16) = v476;
  v272 = v271 + v482;
  *&v476 = v271 + v482;
  sub_100081158();
  sub_100080448();
  v514(v498, v268, v269);
  v273 = v497;
  v507(v517, v256, v497);
  v274 = v516;
  v275 = v513;
  *v516 = v512;
  (v508)(v274, v510, v275);
  v276 = v485;
  sub_100080208();
  v515(v256, v273);
  v277 = v503;
  v506(v268, v503);
  v278 = v272;
  v279 = v276;
  v280 = v499;
  v281 = v483;
  (v483)(v278, v279, v499);
  sub_100081158();
  sub_100080448();
  v514(v498, v268, v277);
  v282 = v497;
  v507(v517, v256, v497);
  v283 = v516;
  v284 = v513;
  *v516 = v512;
  (v508)(v283, v510, v284);
  v285 = v485;
  sub_100080208();
  v286 = v481;
  v515(v481, v282);
  v287 = v502;
  v288 = v503;
  v506(v502, v503);
  v281(v476 + v484, v285, v280);
  sub_10007FF38();
  *&v476 = v495 + 10 * v488;
  v477 = *(v496 + 48);
  *v476 = 14;
  sub_100081158();
  v289 = v286;
  sub_100080448();
  v290 = v288;
  v514(v498, v287, v288);
  v291 = v517;
  v292 = v507;
  v507(v517, v286, v282);
  v293 = v516;
  v294 = v513;
  *v516 = v512;
  (v508)(v293, v510, v294);
  sub_100080208();
  v515(v286, v282);
  v295 = v502;
  v506(v502, v290);
  sub_100081158();
  sub_100080448();
  v514(v498, v295, v290);
  v296 = v497;
  v292(v291, v286, v497);
  *v293 = v512;
  (v508)(v293, v510, v294);
  v297 = v500;
  sub_100080208();
  v298 = v296;
  v515(v286, v296);
  v299 = v295;
  v300 = v295;
  v301 = v503;
  v506(v300, v503);
  v302 = v499;
  v492(v297, 0, 1, v499);
  v303 = v501;
  sub_10007FF08();
  v491(v303, 0, 1, v489);
  v304 = v482;
  v305 = swift_allocObject();
  *(v305 + 16) = v478;
  sub_100081158();
  sub_100080448();
  v514(v498, v299, v301);
  v306 = v507;
  v507(v517, v286, v298);
  v307 = v516;
  v308 = v513;
  *v516 = v512;
  (v508)(v307, v510, v308);
  v309 = v485;
  sub_100080208();
  v310 = v298;
  v515(v289, v298);
  v311 = v502;
  v312 = v503;
  v506(v502, v503);
  (v483)(v305 + v304, v309, v302);
  sub_10007FF38();
  *&v476 = v495 + 11 * v488;
  v477 = *(v496 + 48);
  *v476 = 15;
  sub_100081158();
  sub_100080448();
  v514(v498, v311, v312);
  v306(v517, v289, v298);
  v313 = v516;
  v314 = v513;
  *v516 = v512;
  v315 = v508;
  (v508)(v313, v510, v314);
  sub_100080208();
  v316 = v289;
  v317 = v515;
  v515(v289, v310);
  v318 = v502;
  v319 = v503;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v320 = v498;
  v514(v498, v318, v319);
  v321 = v497;
  v507(v517, v289, v497);
  v322 = v516;
  v323 = v513;
  *v516 = v512;
  (v315)(v322, v510, v323);
  v324 = v500;
  v325 = v322;
  sub_100080208();
  v326 = v316;
  v327 = v316;
  v328 = v321;
  v317(v326, v321);
  v329 = v503;
  v506(v318, v503);
  v492(v324, 0, 1, v499);
  v330 = v501;
  sub_10007FF08();
  v491(v330, 0, 1, v489);
  sub_10007FF48();
  *&v476 = v495 + 12 * v488;
  v477 = *(v496 + 48);
  *v476 = 16;
  sub_100081158();
  sub_100080448();
  v514(v320, v318, v329);
  v331 = v327;
  v332 = v507;
  v507(v517, v327, v328);
  v334 = v512;
  v333 = v513;
  *v325 = v512;
  v335 = v508;
  (v508)(v325, v510, v333);
  sub_100080208();
  v336 = v515;
  v515(v331, v328);
  v337 = v502;
  v338 = v503;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v514(v498, v337, v338);
  v339 = v497;
  v332(v517, v331, v497);
  v340 = v516;
  *v516 = v334;
  (v335)(v340, v510, v513);
  v341 = v500;
  sub_100080208();
  v336(v331, v339);
  v342 = v502;
  v343 = v503;
  v506(v502, v503);
  v492(v341, 0, 1, v499);
  v344 = v501;
  sub_10007FF08();
  v491(v344, 0, 1, v489);
  sub_10007FF48();
  *&v476 = v495 + 13 * v488;
  v477 = *(v496 + 48);
  *v476 = 1;
  sub_100081158();
  sub_100080448();
  v345 = v514;
  v514(v498, v342, v343);
  v346 = v517;
  v347 = v331;
  v507(v517, v331, v339);
  v348 = v516;
  v349 = v513;
  *v516 = v512;
  (v508)(v348, v510, v349);
  sub_100080208();
  v350 = v515;
  v515(v347, v339);
  v351 = v503;
  v506(v342, v503);
  sub_100081158();
  sub_100080448();
  v345(v498, v342, v351);
  v352 = v497;
  v507(v346, v347, v497);
  v353 = v516;
  v354 = v513;
  *v516 = v512;
  v355 = v510;
  (v508)(v353, v510, v354);
  v356 = v500;
  sub_100080208();
  v350(v347, v352);
  v357 = v502;
  v358 = v503;
  v506(v502, v503);
  v492(v356, 0, 1, v499);
  v359 = v501;
  sub_10007FEF8();
  v491(v359, 0, 1, v489);
  v360 = v482;
  v361 = swift_allocObject();
  *(v361 + 16) = v478;
  sub_100081158();
  sub_100080448();
  v362 = v498;
  v363 = v357;
  v364 = v358;
  v345(v498, v363, v358);
  v365 = v497;
  v507(v517, v347, v497);
  v366 = v516;
  *v516 = v512;
  v367 = v355;
  v368 = v513;
  (v508)(v366, v367, v513);
  v369 = v485;
  sub_100080208();
  v370 = v365;
  v515(v347, v365);
  v371 = v502;
  v506(v502, v364);
  (v483)(v361 + v360, v369, v499);
  sub_10007FF38();
  *&v476 = v495 + 14 * v488;
  v477 = *(v496 + 48);
  *v476 = 2;
  v372 = v371;
  sub_100081158();
  sub_100080448();
  v514(v362, v371, v364);
  v373 = v347;
  v507(v517, v347, v370);
  v374 = v516;
  *v516 = v512;
  v375 = v508;
  (v508)(v374, v510, v368);
  sub_100080208();
  v515(v373, v370);
  v376 = v503;
  v377 = v506;
  v506(v371, v503);
  sub_100081158();
  sub_100080448();
  v378 = v498;
  v514(v498, v372, v376);
  v379 = v373;
  v380 = v370;
  v507(v517, v379, v370);
  v381 = v516;
  v382 = v513;
  *v516 = v512;
  (v375)(v381, v510, v382);
  v383 = v500;
  sub_100080208();
  v384 = v481;
  v385 = v380;
  v515(v481, v380);
  v386 = v502;
  v387 = v503;
  v377(v502, v503);
  v492(v383, 0, 1, v499);
  v388 = v501;
  sub_10007FEF8();
  v491(v388, 0, 1, v489);
  v389 = v482;
  v390 = swift_allocObject();
  *(v390 + 16) = v478;
  sub_100081158();
  sub_100080448();
  v514(v378, v386, v387);
  v391 = v507;
  v507(v517, v384, v385);
  v393 = v512;
  v392 = v513;
  *v381 = v512;
  (v508)(v381, v510, v392);
  v394 = v485;
  sub_100080208();
  v515(v384, v385);
  v395 = v502;
  v396 = v503;
  v506(v502, v503);
  (v483)(v390 + v389, v394, v499);
  sub_10007FF38();
  v477 = 16 * v488;
  v475 = v495 + 15 * v488;
  *&v476 = *(v496 + 48);
  *v475 = 3;
  sub_100081158();
  sub_100080448();
  v514(v378, v395, v396);
  v397 = v497;
  v391(v517, v384, v497);
  v398 = v516;
  *v516 = v393;
  v399 = v510;
  (v508)(v398, v510, v513);
  sub_100080208();
  v515(v384, v397);
  v400 = v502;
  v401 = v503;
  v402 = v506;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v403 = v498;
  v514(v498, v400, v401);
  v404 = v517;
  v405 = v497;
  v507(v517, v384, v497);
  v406 = v516;
  v407 = v513;
  *v516 = v512;
  (v508)(v406, v399, v407);
  v408 = v500;
  sub_100080208();
  v409 = v481;
  v515(v481, v405);
  v410 = v503;
  v402(v400, v503);
  v492(v408, 0, 1, v499);
  v411 = v501;
  sub_10007FEF8();
  v491(v411, 0, 1, v489);
  v412 = swift_allocObject();
  *(v412 + 16) = v478;
  sub_100081158();
  sub_100080448();
  v514(v403, v400, v410);
  v413 = v404;
  v414 = v409;
  v415 = v497;
  v507(v413, v409, v497);
  v416 = v516;
  v417 = v513;
  *v516 = v512;
  (v508)(v416, v510, v417);
  v418 = v485;
  sub_100080208();
  v515(v414, v415);
  v506(v400, v410);
  (v483)(v412 + v482, v418, v499);
  sub_10007FF38();
  v485 = (v495 + v477);
  v486 = *(v496 + 48);
  *v485 = 4;
  sub_100081158();
  sub_100080448();
  v419 = v514;
  v514(v498, v400, v410);
  v420 = v507;
  v507(v517, v414, v415);
  v421 = v516;
  v422 = v513;
  *v516 = v512;
  (v508)(v421, v510, v422);
  sub_100080208();
  v423 = v515;
  v515(v414, v415);
  v424 = v502;
  v425 = v503;
  v506(v502, v503);
  sub_100081158();
  v426 = v414;
  sub_100080448();
  v427 = v425;
  v419(v498, v424, v425);
  v428 = v426;
  v429 = v497;
  v420(v517, v426, v497);
  v431 = v512;
  v430 = v513;
  v432 = v516;
  *v516 = v512;
  (v508)(v432, v510, v430);
  v433 = v500;
  sub_100080208();
  v434 = v428;
  v435 = v429;
  v423(v428, v429);
  v436 = v502;
  v506(v502, v427);
  v492(v433, 0, 1, v499);
  v437 = v501;
  sub_10007FF08();
  v491(v437, 0, 1, v489);
  sub_10007FF48();
  v485 = (v495 + v477 + v488);
  v486 = *(v496 + 48);
  *v485 = 17;
  sub_100081158();
  v438 = v434;
  sub_100080448();
  v439 = v498;
  v514(v498, v436, v427);
  v440 = v434;
  v441 = v507;
  v507(v517, v440, v435);
  v442 = v516;
  *v516 = v431;
  v443 = v508;
  (v508)(v442, v510, v513);
  v444 = v439;
  sub_100080208();
  v515(v438, v435);
  v445 = v502;
  v446 = v503;
  v506(v502, v503);
  sub_100081158();
  sub_100080448();
  v514(v439, v445, v446);
  v447 = v438;
  v441(v517, v438, v435);
  v448 = v516;
  v449 = v513;
  *v516 = v512;
  (v443)(v448, v510, v449);
  v450 = v500;
  sub_100080208();
  v451 = v435;
  v515(v447, v435);
  v452 = v502;
  v453 = v503;
  v506(v502, v503);
  v492(v450, 0, 1, v499);
  v454 = v501;
  sub_10007FF08();
  v491(v454, 0, 1, v489);
  sub_10007FF48();
  v486 = v495 + 18 * v488;
  v488 = *(v496 + 48);
  *v486 = 18;
  v455 = v452;
  sub_100081158();
  sub_100080448();
  v456 = v453;
  v514(v439, v452, v453);
  v457 = v517;
  v458 = v447;
  v459 = v447;
  v460 = v451;
  v507(v517, v458, v451);
  v461 = v516;
  v462 = v513;
  *v516 = v512;
  v463 = v510;
  v464 = v508;
  (v508)(v461, v510, v462);
  sub_100080208();
  v515(v459, v460);
  v506(v455, v456);
  sub_100081158();
  sub_100080448();
  v514(v444, v455, v456);
  v507(v457, v459, v460);
  v465 = v513;
  *v461 = v512;
  (v464)(v461, v463, v465);
  v466 = v500;
  sub_100080208();
  v515(v459, v460);
  v506(v455, v503);
  v492(v466, 0, 1, v499);
  v467 = v501;
  sub_10007FF08();
  v491(v467, 0, 1, v489);
  sub_10007FF48();
  v468 = sub_100067D64(v474);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7FB8 = v468;
  return result;
}