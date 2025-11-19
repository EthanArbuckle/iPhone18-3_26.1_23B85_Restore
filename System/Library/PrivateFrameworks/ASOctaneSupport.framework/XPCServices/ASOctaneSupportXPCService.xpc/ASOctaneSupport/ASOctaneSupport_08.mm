uint64_t sub_1000917E0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a5;
  v32 = sub_1001F6508();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68(a1, a1[3]);
  sub_1000CBB7C(a2, a3, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v20 = v19;
  result = sub_10013B560(v19);
  if (result)
  {
    v22 = result;
    if (result >= 1)
    {
      v23 = 0;
      v31 = v20 & 0xC000000000000001;
      v24 = (v9 + 8);
      while (1)
      {
        if (v31)
        {
          v25 = sub_1001F7808();
        }

        else
        {
          v25 = *(v20 + 8 * v23 + 32);
        }

        v26 = v25;
        sub_1001F64E8();
        v27 = sub_1000C18DC();
        (*v24)(v12, v32);
        if (v27 & 1) != 0 || (sub_1000C1760())
        {
          v26;
          sub_1001F6F08();
          if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1001F6F58();
          }
        }

        else
        {
          if ((sub_1000C2C60() & 1) == 0)
          {
            goto LABEL_12;
          }

          v26;
          v28 = v30;
          sub_1001F6F08();
          if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1001F6F58();
          }
        }

        sub_1001F6F98();
LABEL_12:
        ++v23;

        if (v22 == v23)
        {
        }
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_100091A58()
{
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return 0;
}

void sub_100091AE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v31 = a8;
  v15 = sub_1001F6508();
  v33 = *(v15 - 8);
  v17 = __chkstk_darwin(v15, v16);
  v32 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v30 - v20;
  sub_10001AE68(a1, a1[3]);
  sub_1000D1C9C(a2, a3, a4, a5, a6, a7, 0, v22, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  if (v23)
  {
    v24 = v23;
    sub_1000BFDA8();
    sub_1001F6418();
    sub_1000990C8(&qword_1002AD110, &type metadata accessor for Date);
    if (sub_1001F6A88())
    {
      sub_1000183C4(&qword_1002B2008);
      v25 = sub_1001F6A98();
      v26 = *(v33 + 8);
      v26(v21, v15);
      if (v25)
      {

LABEL_10:
        *v31 = 1;
        return;
      }
    }

    else
    {
      v26 = *(v33 + 8);
      v26(v21, v15);
    }

    sub_1000C5464(4);
    if (v27)
    {

      return;
    }

    v28 = v32;
    sub_1001F6418();
    if (sub_1001F6A88())
    {
      sub_1000183C4(&qword_1002B2008);
      v29 = sub_1001F6A98();

      v26(v28, v15);
      if ((v29 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    v26(v28, v15);
  }
}

void sub_100091DC8()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v18 = 0;
  v17[2] = &v18;
  v17[3] = v2;
  v17[4] = v0;
  v17[5] = v6;
  v17[6] = v4;
  sub_100099694();
  sub_1001E5114(sub_100099180, v17);
  v8 = v18;
  if (v18)
  {
    v9 = sub_100099B14();
    v16[2] = v3;
    v16[3] = v1;
    v16[4] = v7;
    v16[5] = v5;
    v16[6] = v8;
    __chkstk_darwin(v9, v10);
    v11 = v8;
    sub_1001E524C(sub_100099198, v16);
    sub_10009994C();
    sub_1000C1DE8(v12, v13);
    sub_1000C1DF0(0, 1);
    sub_100099978();
    sub_10008EA08(v14, v15);
  }

  sub_100037B00();
}

uint64_t sub_100091EDC(void *a1, void *a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000CA54C();
  *a2 = v3;

  return _objc_release_x1();
}

unint64_t sub_100091F58(void *a1, uint64_t a2, void **a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1001F6508();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68(a1, a1[3]);
  v15 = sub_1000C1A68();
  sub_1000BFDA8();
  sub_1001F6418();
  LOBYTE(a5) = sub_1001D0A84(a2, a3, a4, a5, v15, v14);
  (*(v11 + 8))(v14, v10);
  return a5 & 1;
}

void sub_10009208C()
{
  sub_100099620();
  v2 = v1;
  v3 = sub_1000183C4(&unk_1002B3450);
  v4 = sub_100056658(v3);
  __chkstk_darwin(v4, v5);
  sub_100099484();
  v8 = v6 - v7;
  __chkstk_darwin(v9, v10);
  v12 = v106 - v11;
  v13 = sub_1001F6508();
  sub_10001A278();
  v15 = v14;
  __chkstk_darwin(v16, v17);
  sub_100099484();
  v20 = (v18 - v19);
  __chkstk_darwin(v21, v22);
  sub_100099918();
  v25 = __chkstk_darwin(v23, v24);
  v27 = v106 - v26;
  __chkstk_darwin(v25, v28);
  v30 = v106 - v29;
  sub_1000C5464(4);
  if (v31)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v32 = sub_1001F6688();
    sub_100019C94(v32, qword_1002E6180);
    v33 = v2;
    v34 = sub_1001F6668();
    v35 = sub_1001F72A8();

    if (os_log_type_enabled(v34, v35))
    {
      sub_100099504();
      swift_slowAlloc();
      v36 = sub_100099598();
      v112 = v36;
      *v27 = 136315138;
      v37 = sub_1000BFC14();
      v39 = sub_100099AB4(v37, v38);

      *(v27 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Can't catch up transaction for %s because it has no expiration date.", v27, 0xCu);
      sub_100019CCC(v36);
      sub_100099474();

      sub_100021754();
    }

    v33;
  }

  else
  {
    v107 = v8;
    v108 = v12;
    sub_1001F6418();
    v40 = sub_1000999A8();
    v41(v40);
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v42 = sub_1001F6688();
    v43 = sub_100019C94(v42, qword_1002E6180);
    v44 = *(v15 + 16);
    v110 = v30;
    v44(v0, v30, v13);
    v45 = v2;
    v106[1] = v43;
    v46 = sub_1001F6668();
    v47 = sub_1001F7278();

    if (os_log_type_enabled(v46, v47))
    {
      sub_1000996CC();
      v109 = v15;
      v106[0] = sub_100099894();
      v112 = v106[0];
      *v15 = 136315394;
      v48 = sub_1000BFC14();
      v50 = sub_100099AB4(v48, v49);

      *(v15 + 4) = v50;
      *(v15 + 12) = 2080;
      sub_100099550();
      sub_1000990C8(v51, v52);
      sub_1001F7E28();
      sub_100099864();
      v109 += 8;
      v53 = sub_100099700();
      v111 = v54;
      (v54)(v53);
      v55 = sub_10009967C();
      sub_1000E4544(v55, v56, v57);
      sub_10009958C();

      *(v15 + 14) = v0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Catching up %s, latest transaction expired: %s", v15, 0x16u);
      swift_arrayDestroy();
      sub_100021754();

      v58 = v109;
      sub_100021754();
    }

    else
    {

      v58 = v15 + 8;
      v59 = sub_100099700();
      v111 = v60;
      (v60)(v59);
    }

    v61 = v108;
    sub_1000995D4();
    sub_100018460(v62, v63, v64, v13);
    v65 = sub_100099B14();
    __chkstk_darwin(v65, v66);
    sub_100099808();
    v67 = v110;
    *(v68 - 32) = v45;
    *(v68 - 24) = v67;
    *(v68 - 16) = v61;
    sub_1001E5114(sub_1000990BC, v69);
    v70 = v45;
    for (i = 0; ; i |= v80)
    {
      v72 = COERCE_DOUBLE(sub_1000C5464(4));
      v74 = v73;

      if (v74)
      {
        break;
      }

      sub_1001F6438();
      if (v75 <= v72 || (sub_1000C2C60() & 1) == 0)
      {
        break;
      }

      sub_100099B2C();
      sub_1000BFC24();
      v76 = sub_10007AB88();

      if (v76)
      {
        v81 = v70;
        sub_10008EF68();

        sub_1000374B8(v61, &unk_1002B3450);
        v111(v110, v13);
        goto LABEL_30;
      }

      sub_1001F6418();
      sub_1000929DC();
      v78 = v77;
      v80 = v79;
      v111(v20, v13);
      if (!v78)
      {
        v109 = v58;
        v82 = v107;
        sub_100098F84(v61, v107, &unk_1002B3450);
        v83 = sub_10001C990(v82, 1, v13);
        sub_1000374B8(v82, &unk_1002B3450);
        v84 = v70;
        v85 = sub_1001F6668();
        if (v83 == 1)
        {
          v86 = sub_1001F72A8();

          if (os_log_type_enabled(v85, v86))
          {
            sub_100099504();
            v87 = swift_slowAlloc();
            v88 = sub_10003A894();
            v112 = v88;
            *v87 = 136315138;
            v89 = sub_1000BFC14();
            v91 = sub_100099AB4(v89, v90);

            *(v87 + 4) = v91;
            sub_100099A74(&_mh_execute_header, v92, v93, "Failed to create renewal transaction when catching up %s");
            sub_100019CCC(v88);
            sub_100021754();

            v61 = v108;
            sub_100021754();
          }
        }

        else
        {
          v94 = sub_1001F7288();

          if (os_log_type_enabled(v85, v94))
          {
            sub_100099504();
            v95 = swift_slowAlloc();
            v96 = sub_10003A894();
            v112 = v96;
            *v95 = 136315138;
            v97 = sub_1000BFC14();
            v99 = sub_100099AB4(v97, v98);

            *(v95 + 4) = v99;
            sub_100099A74(&_mh_execute_header, v100, v101, "Auto-cancelling latest transaction for %s because it would overlap an existing transaction.");
            sub_100019CCC(v96);
            sub_100021754();

            v61 = v108;
            sub_100021754();
          }

          v102 = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
          sub_1000C1ACC(v102, v103);
          sub_100099978();
          sub_10008EA08(v104, v105);
        }

        break;
      }

      v70 = v78;
    }

    if (sub_1000C2C60())
    {
      sub_10009531C(v70);
    }

    sub_1000374B8(v61, &unk_1002B3450);
    v111(v110, v13);
  }

LABEL_30:
  sub_1000995E0();
}

uint64_t sub_100092868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v25 - v9;
  result = sub_1000C5388(15);
  if (v12)
  {
    v13 = result;
    v14 = v12;
    sub_10001AE68(a1, a1[3]);
    v15 = sub_1000BFC24();
    v17 = v16;
    v18 = sub_1000C1A68();
    sub_1000D1C9C(v13, v14, v15, v17, a3, v18, 0, v19, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11]);
    v21 = v20;

    if (v21)
    {
      v22 = v21;
      sub_1000BFDA8();

      sub_1001F6418();
      v23 = sub_1001F6508();
      v24 = 0;
    }

    else
    {
      v23 = sub_1001F6508();
      v24 = 1;
    }

    sub_100018460(v10, v24, 1, v23);
    return sub_100099110(v10, a4);
  }

  return result;
}

void sub_1000929DC()
{
  sub_100099620();
  v288 = v1;
  v3 = v2;
  v285 = v4;
  LODWORD(v298) = v5;
  v7 = v6;
  v281 = *v0;
  v280 = sub_1000183C4(&qword_1002B2000);
  sub_100023520();
  __chkstk_darwin(v8, v9);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v10, v11);
  sub_100099A14(&v270 - v12);
  v276 = sub_1000183C4(&qword_1002B2008);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v13, v14);
  sub_100099A14(&v270 - v15);
  v16 = sub_1000183C4(&unk_1002B3450);
  v17 = sub_100056658(v16);
  __chkstk_darwin(v17, v18);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v19, v20);
  sub_100099A14(&v270 - v21);
  v289 = sub_1001F6578();
  sub_10001A278();
  v283 = v22;
  __chkstk_darwin(v23, v24);
  sub_100023510();
  sub_100099A14(v26 - v25);
  v27 = sub_1000183C4(&qword_1002AFA30);
  sub_100056658(v27);
  sub_10001E844();
  __chkstk_darwin(v28, v29);
  v31 = &v270 - v30;
  v293 = sub_1001F6508();
  sub_10001A278();
  v295 = v32;
  __chkstk_darwin(v33, v34);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v35, v36);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v37, v38);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v39, v40);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v41, v42);
  v44 = &v270 - v43;
  swift_getKeyPath();
  v45 = sub_100094D64();

  v46 = sub_1000BFC24();
  v48 = v47;
  v49 = v0[5];
  v297 = v0;
  sub_10001AE68(v0 + 2, v49);
  v299 = sub_1000795A8();
  v296 = v44;
  sub_1000C2CD8(v3, v44);
  sub_1000183C4(&qword_1002B2010);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100207F40;
  v51 = &type metadata for String;
  *(v50 + 32) = 0;
  *(v50 + 64) = &type metadata for String;
  *(v50 + 40) = 0x77656E6552;
  *(v50 + 48) = 0xE500000000000000;
  *(v50 + 72) = 2;
  *(v50 + 104) = &type metadata for String;
  v284 = v46;
  *(v50 + 80) = v46;
  *(v50 + 88) = v48;
  *(v50 + 112) = 7;
  *(v50 + 144) = &type metadata for UInt;
  *(v50 + 120) = v45;
  *(v50 + 152) = 8;
  v291 = v48;

  v52 = sub_1000C5458(8);
  *(v50 + 184) = &type metadata for UInt;
  if (v53)
  {
    v52 = sub_1000C1A68();
  }

  *(v50 + 160) = v52;
  *(v50 + 192) = 11;
  sub_1001F6428();
  *(v50 + 224) = &type metadata for Double;
  *(v50 + 200) = v54;
  *(v50 + 232) = 9;
  v55 = sub_1000BFC14();
  *(v50 + 264) = &type metadata for String;
  *(v50 + 240) = v55;
  *(v50 + 248) = v56;
  *(v50 + 272) = 12;
  v57 = COERCE_DOUBLE(sub_1000C5464(12));
  *(v50 + 304) = &type metadata for Double;
  if (v58)
  {
    v57 = sub_1000BFDA8();
  }

  *(v50 + 280) = v57;
  *(v50 + 312) = 13;
  v59 = sub_1000C2550();
  *(v50 + 344) = &type metadata for Int;
  *(v50 + 320) = v59;
  *(v50 + 352) = 14;
  sub_10009992C();
  v201 = (v61 & 1) == 0;
  v62 = 3;
  if (v201)
  {
    v62 = 1;
  }

  *(v50 + 384) = v60;
  *(v50 + 360) = v62;
  *(v50 + 392) = 16;
  v63 = sub_1000C257C();
  v64 = 0xEA0000000000656CLL;
  v65 = 0x62616D75736E6F43;
  v300 = v7;
  switch(v63)
  {
    case 1:
      sub_1000999EC();
      sub_100099A00();
      break;
    case 2:
      sub_100099818();
      v65 = v66 | 2;
      break;
    case 3:
      v65 = 0xD000000000000015;
      v64 = 0x8000000100221B90;
      break;
    default:
      break;
  }

  *(v50 + 424) = &type metadata for String;
  *(v50 + 400) = v65;
  *(v50 + 408) = v64;
  *(v50 + 432) = 17;
  *(v50 + 464) = &type metadata for Bool;
  *(v50 + 440) = 0;
  *(v50 + 472) = 20;
  sub_100099840();
  sub_10001AE68(v45 + 2, v45[5]);
  sub_1000792D8(v305);
  v67 = v305[0];
  v68 = v305[1];

  sub_10001C7E4(v305);
  *(v50 + 504) = &type metadata for String;
  *(v50 + 480) = v67;
  *(v50 + 488) = v68;
  *(v50 + 512) = 26;
  v69 = v300;
  v70 = sub_1000C2D8C();
  v71 = 3157553;
  if (v70)
  {
    v71 = 3157554;
  }

  *(v50 + 544) = &type metadata for String;
  *(v50 + 520) = v71;
  *(v50 + 528) = 0xE300000000000000;
  sub_100098F08();
  v304 = sub_1001F69B8();
  sub_10009992C();
  if (v72)
  {
    v73 = sub_1000C5458(25);
    if (v74)
    {
      v73 = 0;
      v75 = 0;
      *(&v306 + 1) = 0;
      *&v307 = 0;
    }

    else
    {
      v75 = &type metadata for UInt;
    }

    v45 = v297;
    v77 = v289;
    *&v306 = v73;
    *(&v307 + 1) = v75;
    v78 = sub_100099688();
    sub_100145028(v78, 25);
  }

  else
  {
    swift_getKeyPath();
    sub_100094D64();
    sub_10009958C();
    v69 = v300;

    *(&v307 + 1) = &type metadata for UInt;
    *&v306 = v45;
    v76 = sub_100099688();
    sub_100145028(v76, 25);
    v77 = v289;
  }

  sub_1000C2DBC(v31);
  if (sub_10001C990(v31, 1, v77))
  {
    sub_1000374B8(v31, &qword_1002AFA30);
  }

  else
  {
    v79 = v283;
    v80 = v282;
    (*(v283 + 16))(v282, v31, v77);
    sub_1000374B8(v31, &qword_1002AFA30);
    sub_1001F6528();
    sub_100099864();
    (*(v79 + 8))(v80, v77);
    *(&v307 + 1) = &type metadata for String;
    *&v306 = v80;
    *(&v306 + 1) = v69;
    v69 = v300;
    v81 = sub_100099688();
    sub_100145028(v81, 22);
  }

  sub_10009990C();
  v82 = &v69[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID];
  v83 = *&v69[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID + 8];
  v289 = v82;

  v84 = sub_10009967C();
  v86 = sub_1000EE5B8(v84, v85);

  if (v86)
  {

    sub_1001E84A8();
    sub_100099864();
    v88 = v87;

    type metadata accessor for Decimal(0);
    *(&v307 + 1) = v89;
    *&v306 = v86;
    *(&v306 + 1) = v83;
    LODWORD(v307) = v88;
    v90 = sub_100099688();
    sub_100145028(v90, 21);
  }

  v91 = v292;
  v92 = v300;
  sub_1000C1AC4(v292);
  if (sub_10001C990(v91, 1, &type metadata for String))
  {
    sub_1000374B8(v91, &unk_1002B3450);
    v93 = 0;
    *(&v306 + 1) = 0;
    *&v307 = 0;
    v94 = 0;
  }

  else
  {
    v95 = v295;
    v96 = v286;
    v97 = sub_10009967C();
    v98(v97);
    sub_1000374B8(v91, &unk_1002B3450);
    sub_1001F6428();
    v94 = v99;
    (*(v95 + 8))(v96, &type metadata for String);
    v93 = &type metadata for Double;
  }

  v100 = v294;
  *(&v307 + 1) = v93;
  *&v306 = v94;
  v101 = sub_100099688();
  sub_100145028(v101, 33);
  v102 = sub_1000C2E3C();
  if (v102)
  {
    v103 = v102;
    v104 = v102[2];
    if (v104)
    {
      *&v312[0] = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v104, 0);
      v91 = (v103 + 8);
      v105 = *&v312[0];
      v92 = 0xE600000000000000;
      do
      {
        v107 = *(v91 - 2);
        v106 = *(v91 - 1);
        v108 = *v91;
        v91 += 40;
        switch(v108)
        {
          case 1:
            *&v306 = 0x3A636F686461;
            *(&v306 + 1) = 0xE600000000000000;
            v131 = sub_10009944C();
            sub_10008A298(v131, v132, v133, v134, 1u);
            v320._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v320);
            sub_1000998B0();
            v321._countAndFlagsBits = v107;
            v321._object = v106;
            sub_1001F6CA8(v321);
            v113 = sub_10009944C();
            v117 = 1;
            break;
          case 2:
            *&v306 = 0x3A65646F63;
            *(&v306 + 1) = 0xE500000000000000;
            v122 = sub_10009944C();
            sub_10008A298(v122, v123, v124, v125, 2u);
            v316._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v316);
            sub_1000998B0();
            v317._countAndFlagsBits = v107;
            v317._object = v106;
            sub_1001F6CA8(v317);
            v113 = sub_10009944C();
            v117 = 2;
            break;
          case 3:
            sub_1000999B4();
            *&v306 = v126;
            *(&v306 + 1) = 0xE800000000000000;
            v127 = sub_10009944C();
            sub_10008A298(v127, v128, v129, v130, 3u);
            v318._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v318);
            sub_1000998B0();
            v319._countAndFlagsBits = v107;
            v319._object = v106;
            sub_1001F6CA8(v319);
            v113 = sub_10009944C();
            v117 = 3;
            break;
          case 4:
            *&v306 = 979661939;
            *(&v306 + 1) = 0xE400000000000000;
            v118 = sub_10009944C();
            sub_10008A298(v118, v119, v120, v121, 4u);
            v315._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v315);
            v113 = sub_10009944C();
            v117 = 4;
            break;
          default:
            *&v306 = 0x3A6F72746E69;
            *(&v306 + 1) = 0xE600000000000000;
            v109 = sub_10009944C();
            sub_10008A298(v109, v110, v111, v112, 0);
            v314._countAndFlagsBits = sub_1000994F8();
            sub_1001F6CA8(v314);
            v113 = sub_10009944C();
            v117 = 0;
            break;
        }

        sub_100099050(v113, v114, v115, v116, v117);
        v45 = *(&v306 + 1);
        v51 = v306;
        *&v312[0] = v105;
        v50 = v105[2];
        v135 = v105[3];
        if (v50 >= v135 >> 1)
        {
          v137 = sub_10005669C(v135);
          sub_1000375CC(v137, v50 + 1, 1);
          v105 = *&v312[0];
        }

        v105[2] = v50 + 1;
        v136 = &v105[2 * v50];
        v136[4] = v51;
        v136[5] = v45;
        --v104;
      }

      while (v104);

      sub_100099828();
      sub_100099840();
      sub_10009990C();
      v100 = v294;
    }

    else
    {

      v105 = _swiftEmptyArrayStorage;
    }

    *(&v307 + 1) = sub_1000183C4(&qword_1002ACA10);
    *&v306 = v105;
  }

  else
  {
    v306 = 0u;
    v307 = 0u;
  }

  sub_1000999E0();
  v138 = sub_100099688();
  sub_100145028(v138, 19);
  v139 = sub_1000C5388(15);
  if (v140)
  {
    v141 = &type metadata for String;
  }

  else
  {
    v139 = 0;
    v141 = 0;
    *&v307 = 0;
  }

  *&v306 = v139;
  *(&v306 + 1) = v140;
  *(&v307 + 1) = v141;
  v142 = sub_100099688();
  sub_100145028(v142, 15);
  sub_10009992C();
  if (v143)
  {
LABEL_48:

    v144 = sub_10009967C();
    v145 = v299;
    sub_1000EE5B8(v144, v146);
    sub_10009958C();

    if (v145)
    {
      v147 = *(v145 + 176);
      v148 = *(v145 + 184);

      sub_10009987C();
    }

    else
    {
      sub_10009987C();
      v147 = 0;
      v148 = 7;
    }

    sub_100099828();
    goto LABEL_91;
  }

  sub_1000C3010(&v306);
  v149 = v310;
  if (!v310)
  {
    if ((v285 & 1) == 0)
    {
      sub_10009987C();
      v147 = 0;
      v148 = 7;
      goto LABEL_91;
    }

    goto LABEL_48;
  }

  v92 = v308;
  v150 = v309;
  v151 = v311;
  v274 = v306;
  v312[0] = v306;
  v275 = v307;
  v312[1] = v307;
  v292 = *(&v307 + 1);
  v313 = v308;
  sub_1000946F0(v310, v309);
  v282 = v152;
  LODWORD(v283) = v153;
  v154 = *(v149 + 88);
  sub_1000994B8(*(v149 + 80));
  *(&v302 + 1) = v154;

  v155 = sub_100099574();
  sub_100145028(v155, 9);
  sub_1001E84A8();
  sub_100099864();
  v157 = v156;
  type metadata accessor for Decimal(0);
  v271 = v158;
  *(&v303 + 1) = v158;
  *&v302 = v149;
  *(&v302 + 1) = v91;
  v159 = v151;
  LODWORD(v303) = v157;
  v160 = sub_100099574();
  sub_100145028(v160, 21);
  v161 = *(v151 + 16);
  if (v161)
  {
    v273 = v92;
    v281 = v150;
    v301 = _swiftEmptyArrayStorage;
    sub_1000375CC(0, v161, 0);
    v272 = v159;
    v162 = (v159 + 64);
    v163 = v301;
    do
    {
      v164 = *v162;
      v162 += 40;
      switch(v164)
      {
        case 1:
          sub_100099580(0x3A636F686461);
          sub_10009984C(0xE600000000000000);
          v187 = sub_100099460();
          sub_10008A298(v187, v188, v189, v190, 1u);
          v328._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v328);
          sub_1000998B0();
          v329._countAndFlagsBits = sub_100099718();
          sub_1001F6CA8(v329);
          v169 = sub_100099460();
          v173 = 1;
          break;
        case 2:
          sub_100099580(0x3A65646F63);
          sub_10009984C(0xE500000000000000);
          v178 = sub_100099460();
          sub_10008A298(v178, v179, v180, v181, 2u);
          v324._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v324);
          sub_1000998B0();
          v325._countAndFlagsBits = sub_100099718();
          sub_1001F6CA8(v325);
          v169 = sub_100099460();
          v173 = 2;
          break;
        case 3:
          sub_1000999B4();
          sub_100099580(v182);
          sub_10009984C(0xE800000000000000);
          v183 = sub_100099460();
          sub_10008A298(v183, v184, v185, v186, 3u);
          v326._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v326);
          sub_1000998B0();
          v327._countAndFlagsBits = sub_100099718();
          sub_1001F6CA8(v327);
          v169 = sub_100099460();
          v173 = 3;
          break;
        case 4:
          sub_100099580(979661939);
          *(&v302 + 1) = 0xE400000000000000;
          v174 = sub_100099460();
          sub_10008A298(v174, v175, v176, v177, 4u);
          v323._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v323);
          v169 = sub_100099460();
          v173 = 4;
          break;
        default:
          sub_100099580(0x3A6F72746E69);
          sub_10009984C(0xE600000000000000);
          v165 = sub_100099460();
          sub_10008A298(v165, v166, v167, v168, 0);
          v322._countAndFlagsBits = sub_1000994EC();
          sub_1001F6CA8(v322);
          v169 = sub_100099460();
          v173 = 0;
          break;
      }

      sub_100099050(v169, v170, v171, v172, v173);
      v45 = *(&v302 + 1);
      v51 = v302;
      v301 = v163;
      v50 = v163[2];
      v191 = v163[3];
      if (v50 >= v191 >> 1)
      {
        v193 = sub_10005669C(v191);
        sub_1000375CC(v193, v50 + 1, 1);
        v163 = v301;
      }

      v163[2] = v50 + 1;
      v192 = &v163[2 * v50];
      v192[4] = v51;
      v192[5] = v45;
      --v161;
    }

    while (v161);

    sub_100099840();
    sub_10009990C();
    sub_1000999E0();
    v150 = v281;
    v92 = v273;
  }

  else
  {

    v163 = _swiftEmptyArrayStorage;
  }

  *(&v303 + 1) = sub_1000183C4(&qword_1002ACA10);
  *&v302 = v163;
  v194 = sub_100099574();
  sub_100145028(v194, 19);
  v100 = v294;
  if (v150)
  {

    sub_1000C5C28();
    sub_100099864();
    sub_10009963C();
    sub_1000997E8(&type metadata for String);
    *(v195 - 256) = v312;
    *(&v302 + 1) = v163;
    v196 = sub_100099574();
    sub_100145028(v196, 18);
    v197 = 0xE400000000000000;
    v198 = 1701736302;
    switch(*(v150 + 57))
    {
      case 1:
        v198 = 1701147238;
        break;
      case 2:
        v198 = 0x756F597341796170;
        v197 = 0xEA00000000006F47;
        break;
      case 3:
        v198 = 0x6F72467055796170;
        v197 = 0xEA0000000000746ELL;
        break;
      default:
        break;
    }

    *(&v303 + 1) = &type metadata for String;
    *&v302 = v198;
    sub_10009984C(v197);
    sub_100145028(&v302, 35);
    switch(*(v150 + 57))
    {
      case 1:

        goto LABEL_83;
      default:
        v203 = sub_1001F7EA8();

        if (v203)
        {
LABEL_83:
          sub_1000997E8(&type metadata for Int);
          *(v204 - 256) = 0;
        }

        else
        {
          v205 = sub_100161AA0();
          if ((v207 & 0x100000000) != 0)
          {
            goto LABEL_87;
          }

          *(&v303 + 1) = v271;
          *&v302 = v205;
          *(&v302 + 1) = v206;
          LODWORD(v303) = v207;
        }

        v208 = sub_100099574();
        sub_100145028(v208, 21);
LABEL_87:

        sub_100099828();
        v147 = v282;
        if (*v150 == _TtCC25ASOctaneSupportXPCService18OctaneSubscription9CodeOffer)
        {
          sub_1000994B8(*(v150 + 80));
          *(&v302 + 1) = v209;

          v210 = sub_100099574();
          sub_100145028(v210, 28);
        }

        LODWORD(v292) = 1;
        break;
    }
  }

  else
  {
    sub_10009963C();
    v200 = *(v149 + 80);
    v199 = *(v149 + 88);

    v201 = v200 == *v289 && *(v289 + 8) == v199;
    if (v201)
    {

      sub_10009987C();
    }

    else
    {
      v202 = sub_1001F7EA8();

      LODWORD(v292) = v202 ^ 1;
    }

    sub_100099828();
    v147 = v282;
  }

  v148 = v283;
LABEL_91:
  v211 = sub_1000C3610();
  if (v212)
  {
    sub_1000994B8(1);
    v213 = sub_100099574();
    sub_100145028(v213, 34);
  }

  else
  {
    v214 = v211;
    if (__OFADD__(v211, 1))
    {
      __break(1u);
      goto LABEL_129;
    }

    sub_1000994B8(v211 + 1);
    v215 = sub_100099574();
    sub_100145028(v215, 34);
    if (v214 >= 99)
    {
      LODWORD(v283) = v148;
      if (qword_1002AC510 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_130;
    }
  }

  while (1)
  {
    sub_10009992C();
    if ((v230 & 1) != 0 || v148 == 7)
    {
      v231 = COERCE_DOUBLE(sub_1000C5464(4));
      if (v232)
      {
        v303 = 0u;
        v302 = 0u;
        v233 = 1;
        goto LABEL_108;
      }
    }

    else
    {
      v234 = v286;
      sub_100094788(v92, v296, v147, v148);
      sub_1001F6428();
      v236 = v235;
      (*(v50 + 8))(v234, v51);
      v231 = v236;
    }

    v233 = 0;
    sub_1000997E8(&type metadata for Double);
    *(v237 - 256) = v231;
LABEL_108:
    v238 = sub_100099574();
    sub_100145028(v238, 4);
    v239 = v287;
    sub_100098F84(v288, v287, &unk_1002B3450);
    if (sub_10001C990(v239, 1, v51) == 1)
    {
      sub_1000374B8(v239, &unk_1002B3450);
    }

    else
    {
      (*(v50 + 32))(v100, v239, v51);
      if (v233 & 1) != 0 || (v285)
      {
        (*(v50 + 8))(v100, v51);
      }

      else
      {
        sub_1001F6428();
        v267 = v266;
        v268 = *(v50 + 8);
        (v268)(v100, v51);
        if (v267 < v231)
        {
          v269 = sub_10009979C(v312 + 8);
          v268(v269);

          goto LABEL_126;
        }
      }
    }

    *&v302 = 0;
    v240 = sub_10001AE68(v45 + 7, v45[10]);
    __chkstk_darwin(v240, v241);
    sub_1000997F8();
    *(v242 - 16) = &v302;
    *(v242 - 8) = &v304;
    sub_1001E524C(sub_100098F64, v243);
    v244 = v302;
    if (!v302)
    {
      __break(1u);
      JUMPOUT(0x100094540);
    }

    v245 = sub_1000BFC14();
    v247 = sub_1000EE5B8(v245, v246);

    v92 = v290;
    if (!v247)
    {
      goto LABEL_121;
    }

    sub_1000C5464(4);
    if (v248)
    {
      break;
    }

    v249 = v50;
    sub_1000BFDA8();
    sub_1001F6418();
    sub_1001F6418();
    v50 = *(v247 + 192);
    v100 = *(v247 + 200);
    sub_100099550();
    v147 = sub_1000990C8(v250, v251);

    if (sub_1001F6A98())
    {
      v298 = v247;
      v252 = v249[2];
      v294 = v50;
      v50 = v277;
      v253 = sub_100099700();
      v252(v253);
      v254 = v280;
      (v252)(v50 + *(v280 + 48), v92, v51);
      v293 = v100;
      v255 = v279;
      sub_100098F84(v50, v279, &qword_1002B2000);
      v289 = *(v254 + 48);
      v256 = v249[4];
      v257 = v278;
      v256(v278, v255, v51);
      v258 = v249[1];
      (v258)(v255 + v289, v51);
      sub_100098FE0(v50, v255);
      v256(v257 + *(v276 + 36), v255 + *(v254 + 48), v51);
      sub_100099840();
      (v258)(v255, v51);
      sub_1000C1A68();
      LOBYTE(v252) = sub_100091A58();

      sub_1000374B8(v257, &qword_1002B2008);
      if ((v252 & 1) == 0)
      {

        v263 = sub_10009979C(&v307 + 8);
        v258(v263);
        v264 = sub_10009979C(&v308);
        v258(v264);
        sub_1000999E0();
        goto LABEL_121;
      }

      sub_10008CBB0();

      v259 = sub_10009979C(&v307 + 8);
      v258(v259);
      v260 = sub_10009979C(&v308);
      v258(v260);
      v261 = sub_10009979C(v312 + 8);
      v258(v261);

      v262 = v300;
LABEL_126:
      sub_10009987C();
      goto LABEL_127;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    sub_1000216F8();
    swift_once();
LABEL_96:
    v216 = sub_1001F6688();
    sub_10009951C(v216, qword_1002E6180);
    v217 = v291;

    v45 = v92;
    v218 = sub_1001F6668();
    sub_1001F7288();

    if (sub_100099AE4())
    {
      v219 = sub_10003A894();
      v51 = swift_slowAlloc();
      *&v302 = v51;
      *v219 = 136315650;
      v220 = sub_1000C5388(15);
      if (v221)
      {
        v222 = v221;
      }

      else
      {
        v220 = 0x6E776F6E6B6E753CLL;
        v222 = 0xE90000000000003ELL;
      }

      v92 = v147;
      v223 = sub_1000E4544(v220, v222, &v302);

      *(v219 + 4) = v223;
      v147 = v92;
      sub_100099828();
      sub_100099858();
      *(v219 + 14) = sub_1000E4544(v284, v217, &v302);
      *(v219 + 22) = 2048;
      *(v219 + 24) = 99;
      sub_100099610();
      _os_log_impl(v224, v225, v226, v227, v228, 0x20u);
      swift_arrayDestroy();
      sub_10009990C();
      sub_100021754();

      v100 = v294;
      sub_100021754();
    }

    sub_1000999E0();
    v148 = v283;
    sub_100099840();
    *(&v303 + 1) = sub_1000183C4(&qword_1002ACA10);
    sub_100099580(_swiftEmptyArrayStorage);
    v229 = sub_100099574();
    sub_100145028(v229, 19);
    LODWORD(v292) = 1;
  }

LABEL_121:
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v265 = v244;

  sub_100131590();

  (*(v50 + 8))(v296, v51);

LABEL_127:

  sub_1000995E0();
}

uint64_t sub_100094598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_1000945E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t sub_100094644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_100094690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

void sub_1000946F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100161BA8();
  }
}

uint64_t sub_100094728(void *a1, void **a2)
{
  v3 = *sub_10001AE68(a1, a1[3]);

  sub_1001CFEB8();
  sub_100013EFC();

  v4 = *a2;
  *a2 = v3;

  return 1;
}

uint64_t sub_100094788(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1000997D8();
  sub_10001AE68((v4 + 16), *(v4 + 40));
  sub_1000BFC24();
  v8 = sub_10007A5F0();

  sub_10004B73C(v5, a4, v6, v8);

  return sub_1001F6418();
}

void sub_100094820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1001F6508();
  sub_10001A278();
  v26 = v25;
  __chkstk_darwin(v27, v28);
  sub_100023510();
  v31 = v30 - v29;
  v32 = sub_100099718();
  v33 = sub_1000183C4(v32);
  sub_100056658(v33);
  sub_10001E844();
  __chkstk_darwin(v34, v35);
  v37 = &a9 - v36;
  sub_1000995D4();
  sub_100018460(v38, v39, v40, v24);
  sub_1001F64E8();
  sub_100099784();
  sub_1000929DC();
  v42 = v41;
  v44 = v43;
  (*(v26 + 8))(v31, v24);
  sub_1000374B8(v37, &unk_1002B3450);
  if (v42)
  {
    v45 = v42;
    sub_10009531C(v45);
  }

  v46 = sub_1000C1760();
  v47 = &off_1002AC000;
  if (v46)
  {
    sub_1000995D4();
    v49 = v48;
    sub_100018460(v50, v51, v52, v24);
    sub_1000C2A1C(v37);
    sub_1000995D4();
    sub_100018460(v53, v54, v55, v24);
    sub_1000C2A14(v37);
    sub_10009994C();
    sub_10008EA08(v56, v57);
    v47 = v49;
  }

  else if (v44)
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_1000183C4(&qword_1002AC7E0);
    sub_100047958();
    v58 = swift_allocObject();
    v59 = sub_1000998C8(v58, xmmword_1001FE9E0);
    sub_1000997A8(v59, v60);
    sub_10009999C();
    sub_1000FBFE4(v61, v62);

    v47 = &off_1002AC000;
  }

  if (v47[143] != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v63 = sub_1000BFC24();
  sub_100130A24(v63, v64);

  sub_1000183C4(&qword_1002AC7E0);
  sub_100047958();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1001FE9E0;
  v66 = *(v23 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID + 8);
  *(v65 + 32) = *(v23 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID);
  *(v65 + 40) = v66;

  sub_10009999C();
  sub_1000FBFE4(v67, v68);

  sub_100037B00();
}

uint64_t sub_100094D64()
{

  swift_getAtKeyPath();

  v1 = sub_10004BB20(v6);

  v5 = v0;

  v2 = swift_modifyAtReferenceWritableKeyPath();
  sub_1001D193C(&v6, v1);
  v2(v4, 0);

  return v1;
}

void sub_100094E2C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = v1;
    return;
  }

  sub_1000999C8();
  items = 0;
  sub_1000183C4(&qword_1002B1FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 32) = kSecImportExportPassphrase;
  *(inited + 40) = 0x74694B65726F7453;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrAccessible;
  type metadata accessor for CFString(0);
  *(inited + 104) = v4;
  *(inited + 80) = kSecAttrAccessibleAlways;
  sub_1000990C8(&qword_1002AC8D0, type metadata accessor for CFString);
  v5 = kSecImportExportPassphrase;
  v6 = kSecAttrAccessible;
  v7 = kSecAttrAccessibleAlways;
  sub_100099964();
  sub_1001F69B8();
  sub_10005053C();
  isa = sub_1001F63A8().super.isa;
  sub_100099964();
  v9 = sub_1001F6988().super.isa;
  v10 = SecPKCS12Import(isa, v9, &items);

  if (v10)
  {

    v11 = SecCopyErrorMessageString(v10, 0);
    if (v11)
    {
      v12 = v11;
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v13 = sub_1001F6688();
      sub_10009951C(v13, qword_1002E6180);
      v14 = v12;
      v15 = sub_1001F6668();
      v16 = sub_1001F7298();

      if (os_log_type_enabled(v15, v16))
      {
        sub_100099504();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v12;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Error importing .p12 data: %@", v17, 0xCu);
        sub_1000374B8(v18, &unk_1002BA650);
        sub_100099474();

        sub_100021754();

        v15 = v19;
      }

      else
      {
      }

      goto LABEL_22;
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_10009951C(v22, qword_1002E6180);
    v15 = sub_1001F6668();
    v23 = sub_1001F7298();
    if (!sub_100099534(v23))
    {
      goto LABEL_22;
    }

    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v15, v0, "Error importing .p12 data: %d", v24, 8u);
  }

  else
  {
    v20 = items;
    if (items)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v21 = v20;
        sub_1000183C4(&qword_1002B1FF8);
        sub_1001F6F28();
      }
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v25 = sub_1001F6688();
    sub_10009951C(v25, qword_1002E6180);
    v15 = sub_1001F6668();
    v26 = sub_1001F7298();
    if (!sub_100099534(v26))
    {
      goto LABEL_22;
    }

    v27 = sub_10003A87C();
    sub_100099888(v27);
    sub_100099494();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
  }

  sub_100021754();

LABEL_22:
}

uint64_t sub_10009531C(void *a1)
{
  v3 = sub_1000183C4(&qword_1002ADF60);
  sub_100056658(v3);
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  sub_1001F7038();
  sub_1001F7058();
  sub_100099784();
  sub_100018460(v6, v7, v8, v9);
  sub_100047958();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = a1;

  v11 = a1;
  _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
  sub_100182130();
}

uint64_t sub_1000953FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10009541C, 0, 0);
}

uint64_t sub_10009541C()
{
  sub_10003E794();
  v1 = v0[2];
  v0[4] = sub_10001AE68(v1 + 2, v1[5]);
  v0[5] = v1[15];

  v2 = sub_100037A2C();

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_10009549C()
{
  sub_10003E794();
  sub_1000955BC(*(v0 + 24), **(v0 + 32), *(v0 + 16));

  sub_10003E824();

  return v1();
}

uint64_t sub_100095504()
{
  sub_100019CCC(v0 + 16);
  sub_100019CCC(v0 + 56);

  sub_100099404(*(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t sub_100095564()
{
  sub_100095504();

  return swift_deallocClassInstance();
}

void sub_1000955BC(void *a1, uint64_t a2, id a3)
{
  v4 = v3;
  v8 = sub_1001F79E8();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v42 - v15;
  if (sub_1000C2C60())
  {
    v45 = v16;
    v46 = v13;
    v47 = v9;
    swift_beginAccess();
    v17 = sub_1000985C0((v3 + 112));
    if (sub_10013B560(*(v3 + 112)) < v17)
    {
      __break(1u);
    }

    else
    {
      v44 = v8;
      sub_1000372D0(v17);
      swift_endAccess();
      v18 = sub_1000C1A68();
      v16 = sub_1000BFC24();
      v17 = v19;
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = v18;
      v43 = v18;
      v21[4] = v16;
      v21[5] = v17;
      v21[6] = a2;
      v21[7] = a3;
      type metadata accessor for SubscriptionRenewalCoordinator.RenewalTask();
      swift_allocObject();

      a3 = a1;
      v22 = sub_100096E0C(a3, &unk_100208198, v21);
      if (!v22)
      {

        return;
      }

      v23 = v22;
      swift_beginAccess();

      v24 = sub_1000987DC((v4 + 112), v23);
      if (sub_10013B560(*(v4 + 112)) >= v24)
      {
        sub_1000372D0(v24);

        sub_1001F6F08();
        sub_1000375FC(*((*(v4 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1001F6F98();
        swift_endAccess();
        if (qword_1002AC510 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
LABEL_6:
    v25 = sub_1001F6688();
    sub_100019C94(v25, qword_1002E6180);

    v26 = a3;

    v27 = sub_1001F6668();
    v28 = sub_1001F7288();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v29 = 136315906;
      v30 = sub_1000BFC14();
      v32 = sub_1000E4544(v30, v31, v48);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v33 = sub_1000E4544(v16, v17, v48);

      *(v29 + 14) = v33;
      *(v29 + 22) = 2048;
      *(v29 + 24) = v43;
      *(v29 + 32) = 2080;
      v34 = v45;
      sub_100095D1C();
      v35 = v46;
      sub_1001F79B8();
      sub_1001F79D8();
      v36 = *(v47 + 8);
      v37 = v35;
      v38 = v44;
      v36(v37, v44);
      v36(v34, v38);
      v39 = sub_1001F81B8();
      v41 = sub_1000E4544(v39, v40, v48);

      *(v29 + 34) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "Scheduled subscription renewal of %s for %s (transactionID: %lu). The renewal will occur in %s.", v29, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  sub_100095E20(a1);
}

uint64_t sub_100095AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return _swift_task_switch(sub_100095AFC, 0, 0);
}

uint64_t sub_100095AFC()
{
  sub_10003E794();
  sub_100037C40();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_100095BE4;
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[6];

    return sub_100096040(v7, v5, v6, v3, v4);
  }

  else
  {
    sub_10003E824();

    return v9();
  }
}

uint64_t sub_100095BE4()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  sub_10003E824();

  return v3();
}

uint64_t sub_100095CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8();
  }
}

uint64_t sub_100095D1C()
{
  v0 = sub_1001F79E8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F6428();
  sub_1001F6438();
  sub_1001F79B8();
  sub_1001F81D8();
  sub_1001F79C8();
  return (*(v1 + 8))(v4, v0);
}

void sub_100095E20(void *a1)
{
  swift_beginAccess();
  v3 = a1;
  v4 = sub_1000982F0((v1 + 112), v3);
  if (sub_10013B560(*(v1 + 112)) < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000372D0(v4);
    swift_endAccess();
    if (qword_1002AC510 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = sub_1001F6688();
  sub_100019C94(v5, qword_1002E6180);
  v6 = v3;
  v7 = sub_1001F6668();
  v8 = sub_1001F7288();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_1000BFC14();
    v12 = sub_1000E4544(v10, v11, v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_1000BFC24();
    v15 = sub_1000E4544(v13, v14, v17);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    v16 = sub_1000C1A68();

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Cancelled subscription renewal of %s for %s (transactionID: %lu)", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100096040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1001F6508();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_1000183C4(&unk_1002B3450);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100096140, v5, 0);
}

uint64_t sub_100096140()
{
  v131 = v0;
  v2 = v0;
  v3 = sub_10008E840();
  if (!v3)
  {
LABEL_6:
    if (qword_1002AC510 == -1)
    {
LABEL_7:
      v7 = sub_1001F6688();
      sub_10009951C(v7, qword_1002E6180);

      v8 = sub_1001F6668();
      v9 = sub_1001F7298();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v2 + 96);
        v11 = *(v2 + 104);
        v12 = *(v2 + 88);
        sub_1000996CC();
        v13 = sub_100099598();
        v130 = v13;
        *v1 = 134349314;
        *(v1 + 4) = v12;
        *(v1 + 12) = 2082;
        *(v1 + 14) = sub_1000E4544(v10, v11, &v130);
        sub_100099870();
        _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
        sub_100019CCC(v13);
        sub_100099474();

        sub_100021754();
      }

      goto LABEL_83;
    }

LABEL_92:
    sub_1000216F8();
    swift_once();
    goto LABEL_7;
  }

  v4 = v3;
  sub_1000C257C();
  sub_1000998F8();
  switch(v5)
  {
    case 1:
      sub_100099938();
      sub_1000995FC();
      goto LABEL_4;
    case 3:

      goto LABEL_11;
    default:
LABEL_4:
      v6 = sub_1001F7EA8();

      if ((v6 & 1) == 0)
      {

        goto LABEL_6;
      }

LABEL_11:
      v19 = sub_1000C5388(15);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = v19;
      v22 = v20;
      sub_1000183C4(&qword_1002AC7E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001FE9E0;
      *(inited + 32) = v21;
      *(inited + 40) = v22;
      sub_10008B3C8();
      v1 = v24;
      swift_setDeallocating();
      sub_1001E56B4();
      if (sub_10013B560(v1))
      {
        sub_100099A54();
        if (inited)
        {
          v25 = sub_1001F7808();
        }

        else
        {
          v25 = *(v1 + 32);
        }

        v26 = v25;

        v27 = sub_1000C1A68();
        if (v27 == sub_1000C1A68())
        {

          goto LABEL_18;
        }

        v61 = *(v2 + 128);
        sub_100037C40();
        v62 = *(v61 + 112);
        v63 = sub_10013B560(v62);
        v123 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id;
        v127 = v62 & 0xC000000000000001;
        v128 = v63;
        v126 = v62 & 0xFFFFFFFFFFFFFF8;
        v129 = v62;

        v64 = 0;
        v124 = v2;
        v125 = v4;
        while (1)
        {
          if (v128 == v64)
          {
            v88 = *(v2 + 120);
            v89 = *(v2 + 112);

            sub_1000955BC(v26, v89, v88);

            goto LABEL_83;
          }

          if (v127)
          {
            v65 = sub_1001F7808();
          }

          else
          {
            if (v64 >= *(v126 + 16))
            {
              goto LABEL_91;
            }

            v65 = *(v129 + 8 * v64 + 32);
          }

          if (__OFADD__(v64, 1))
          {
            break;
          }

          v66 = v65[2];
          v67 = v65[3];
          v68 = v65[4];
          v1 = *&v26[v123];
          v69 = v26;
          v70 = v26;
          v71 = sub_1000BFC24();
          v73 = v72;

          if (v66 == v1)
          {
            if (v67 == v71 && v68 == v73)
            {

LABEL_60:
              v2 = v124;

              goto LABEL_81;
            }

            v75 = sub_1001F7EA8();

            if (v75)
            {
              goto LABEL_60;
            }
          }

          else
          {
          }

          ++v64;
          v2 = v124;
          v4 = v125;
          v26 = v69;
        }

        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_18:
      *&v28 = COERCE_DOUBLE(sub_1000C5464(4));
      if (v29)
      {
        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v30 = sub_1001F6688();
        sub_10009951C(v30, qword_1002E6180);
        v31 = v4;
        v32 = sub_1001F6668();
        v33 = sub_1001F7298();

        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_24;
        }

        v34 = *(v2 + 88);
        v35 = sub_1000996CC();
        v36 = sub_10003A894();
        v130 = v36;
        *v35 = 134349314;
        *(v35 + 4) = v34;
        *(v35 + 12) = 2082;
        v37 = sub_1000BFC14();
        v39 = sub_1000E4544(v37, v38, &v130);

        *(v35 + 14) = v39;
        v40 = "Missing expiration date in transaction %{public}lu for subscription %{public}s";
        v41 = v33;
        v42 = v32;
        v43 = v35;
        v44 = 22;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v42, v41, v40, v43, v44);
        sub_100019CCC(v36);
        sub_100021754();

        sub_100099474();

LABEL_24:

        goto LABEL_83;
      }

      v45 = *&v28;
      sub_1001F6438();
      v47 = v46;
      if (sub_1000C36D4())
      {
        goto LABEL_26;
      }

      if (v47 <= v45)
      {
        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v76 = sub_1001F6688();
        sub_10009951C(v76, qword_1002E6180);

        v77 = sub_1001F6668();
        v78 = sub_1001F7298();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = *(v2 + 96);
          v80 = *(v2 + 104);
          v81 = *(v2 + 88);
          sub_1000996CC();
          v82 = sub_100099598();
          v130 = v82;
          *v1 = 136315394;
          *(v1 + 4) = sub_1000E4544(v79, v80, &v130);
          *(v1 + 12) = 2048;
          *(v1 + 14) = v81;
          sub_100099870();
          _os_log_impl(v83, v84, v85, v86, v87, 0x16u);
          sub_100019CCC(v82);
          sub_100099474();

          sub_100021754();
        }

        sub_1000955BC(v4, *(v2 + 112), *(v2 + 120));
        goto LABEL_82;
      }

      if (sub_1000C2C60())
      {
        if (!sub_10007AB88())
        {
          if (qword_1002AC420 != -1)
          {
            swift_once();
          }

          v95 = *(v2 + 152);
          v96 = *(v2 + 160);
          v97 = *(v2 + 136);
          v98 = *(v2 + 144);
          sub_10004EBCC(v4);
          sub_1000995D4();
          sub_100018460(v99, v100, v101, v97);
          sub_1001F64E8();
          sub_1000929DC();
          v103 = v102;
          (*(v98 + 8))(v95, v97);
          sub_1000374B8(v96, &unk_1002B3450);
          if (!v103)
          {
            if (qword_1002AC510 != -1)
            {
              sub_1000216F8();
              swift_once();
            }

            v117 = sub_1001F6688();
            sub_10009951C(v117, qword_1002E6180);
            v31 = v4;
            v32 = sub_1001F6668();
            v118 = sub_1001F7298();

            if (!os_log_type_enabled(v32, v118))
            {
              goto LABEL_24;
            }

            sub_100099504();
            v119 = swift_slowAlloc();
            v36 = sub_10003A894();
            v130 = v36;
            *v119 = 136446210;
            v120 = sub_1000BFC14();
            v122 = sub_1000E4544(v120, v121, &v130);

            *(v119 + 4) = v122;
            v40 = "No renewal transaction created for %{public}s";
            v41 = v118;
            v42 = v32;
            v43 = v119;
            v44 = 12;
            goto LABEL_23;
          }

          sub_1000955BC(v103, *(v2 + 112), *(v2 + 120));

LABEL_26:
          v48 = 1;
          goto LABEL_72;
        }

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v49 = sub_1001F6688();
        sub_10009951C(v49, qword_1002E6180);

        v50 = sub_1001F6668();
        v51 = sub_1001F72B8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = *(v2 + 96);
          v53 = *(v2 + 104);
          v54 = *(v2 + 88);
          sub_1000996CC();
          v55 = sub_100099598();
          v130 = v55;
          *v1 = 134218242;
          *(v1 + 4) = v54;
          *(v1 + 12) = 2080;
          *(v1 + 14) = sub_1000E4544(v52, v53, &v130);
          sub_100099870();
          _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
          sub_100019CCC(v55);
          sub_100099474();

          sub_100021754();
        }

        sub_10008EF68();
      }

      else
      {
        v90 = sub_1000C36DC();
        v91 = sub_1000C36E4();
        v92 = sub_1000C3888();
        if (v93)
        {
          v94 = 1;
        }

        else
        {
          v104 = 3;
          if ((v90 & 1) == 0)
          {
            v104 = 1;
          }

          if (v91)
          {
            v104 |= 4uLL;
          }

          v92 |= v104;
          v94 = 0;
        }

        sub_1000C38B4(v92, v94);
        sub_10008EA08(v4, 0);
      }

      v48 = 0;
LABEL_72:
      if ((sub_1000C1760() & 1) == 0)
      {
        v105 = sub_1000C2E3C();
        if (v105)
        {
          v106 = v105[2];

          if (v106)
          {
            v107 = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
            sub_1000C1ACC(v107, v108);
          }
        }

        v48 = 1;
      }

      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v110 = *(v2 + 96);
      v109 = *(v2 + 104);
      sub_1000183C4(&qword_1002AC7E0);
      sub_100047958();
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1001FE9E0;
      *(v111 + 32) = v110;
      *(v111 + 40) = v109;

      sub_1000FBFE4(1, v111);

      if (!v48)
      {
LABEL_82:

        goto LABEL_83;
      }

      v112 = *(v2 + 96);
      v113 = *(v2 + 104);
      sub_100130A24(v112, v113);
      sub_100047958();
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1001FE9E0;
      *(v114 + 32) = v112;
      *(v114 + 40) = v113;

      sub_1000FBFE4(0, v114);

LABEL_81:

LABEL_83:

      v115 = *(v2 + 8);

      return v115();
  }
}

uint64_t sub_100096CB8(uint64_t a1, Swift::UInt a2)
{
  sub_1001F8088(a2);

  return sub_1001F6C28();
}

Swift::Int sub_100096D0C(Swift::UInt a1)
{
  sub_1001F8068();
  sub_1001F8088(a1);
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_100096D90()
{
  v1 = *v0;
  sub_1001F8068();
  sub_1001F8088(v1);
  sub_1001F6C28();
  return sub_1001F80D8();
}

void *sub_100096E0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a2;
  v66 = *v4;
  v67 = a3;
  v6 = sub_1000183C4(&qword_1002ADF60);
  __chkstk_darwin(v6 - 8, v7);
  v64 = &v61 - v8;
  v9 = sub_1000183C4(&unk_1002B3450);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v61 - v15;
  v17 = sub_1001F6508();
  v63 = *(v17 - 8);
  v19 = __chkstk_darwin(v17, v18);
  v62 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v61 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v61 - v26;
  *(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 0;
  *(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_task) = 0;
  v28 = a1;
  v29 = sub_1000C1A68();
  v30 = sub_1000BFC24();
  v32 = v31;

  v4[2] = v29;
  v4[3] = v30;
  v4[4] = v32;
  sub_1000C5464(4);
  if (v33)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v34 = sub_1001F6688();
    sub_100019C94(v34, qword_1002E6180);
    v35 = v28;
    v36 = sub_1001F6668();
    v37 = sub_1001F72A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v38 = 136446722;
      v39 = sub_1000BFC14();
      v41 = sub_1000E4544(v39, v40, &v68);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2050;
      v42 = *&v35[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id];

      *(v38 + 14) = v42;
      *(v38 + 22) = 2082;
      v43 = *&v35[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID];
      v44 = *&v35[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID + 8];

      v45 = sub_1000E4544(v43, v44, &v68);

      *(v38 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "No expiration date for %{public}s transaction %{public}lu in %{public}s. Cannot schedule renewal!", v38, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1001F6418();
    sub_1000C390C(v16);
    if (sub_10001C990(v16, 1, v17) == 1)
    {
      sub_1000374B8(v16, &unk_1002B3450);
      v46 = v63;
    }

    else
    {
      v46 = v63;
      v47 = *(v63 + 32);
      v47(v24, v16, v17);
      v48 = sub_1001F6498();
      v49 = *(v46 + 8);
      if (v48)
      {
        v49(v27, v17);
        v47(v27, v24, v17);
      }

      else
      {
        v49(v24, v17);
      }
    }

    sub_1000C3984(v13);
    v50 = sub_10001C990(v13, 1, v17);
    v51 = v62;
    if (v50 == 1)
    {
      sub_1000374B8(v13, &unk_1002B3450);
    }

    else
    {
      v52 = *(v46 + 32);
      v52(v62, v13, v17);
      v53 = sub_1001F6498();
      v54 = *(v46 + 8);
      if (v53)
      {
        v54(v27, v17);
        v52(v27, v51, v17);
      }

      else
      {
        v54(v51, v17);
      }
    }

    (*(v46 + 16))(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_expirationDate, v27, v17);
    v55 = v64;
    sub_1001F7038();
    v56 = sub_1001F7058();
    sub_100018460(v55, 0, 1, v56);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v58 = v65;
    v57[4] = v4;
    v57[5] = v58;
    v57[6] = v67;

    v59 = sub_100097BC4(0, 0, v55, &unk_1002081B0, v57);

    (*(v46 + 8))(v27, v17);
    *(v4 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_task) = v59;
  }

  return v4;
}

uint64_t sub_1000974C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1001F79F8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1001F79E8();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000975E4, 0, 0);
}

uint64_t sub_1000975E4()
{
  sub_10003E794();
  sub_100095D1C();
  *(v0 + 16) = sub_1001F81C8();
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  sub_1001F7FD8();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = sub_1000990C8(&qword_1002B1FE8, &type metadata accessor for ContinuousClock);
  *v2 = v0;
  v2[1] = sub_1000976E8;
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v4, v0 + 16, v5, v6, v3);
}

uint64_t sub_1000976E8()
{
  sub_10003E7AC();
  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  v9 = *v1;
  sub_10003E72C();
  *v10 = v9;
  *(v11 + 120) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v12 = sub_100097B50;
  }

  else
  {
    v12 = sub_1000978B0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000978B0()
{
  sub_10003E794();
  if (sub_1001F7078())
  {
    sub_1000997C8();
    *(v1 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 1;

    sub_10003E824();

    return v2();
  }

  else
  {
    v5 = (*(v0 + 48) + **(v0 + 48));
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1000979F0;

    return v5();
  }
}

uint64_t sub_1000979F0()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  return _swift_task_switch(sub_100097ADC, 0, 0);
}

uint64_t sub_100097ADC()
{
  sub_10003E794();
  sub_1000997C8();
  *(v0 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 1;

  sub_10003E824();

  return v1();
}

uint64_t sub_100097B50()
{
  sub_10003E794();
  sub_1000997C8();
  *(v0 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete) = 1;

  sub_10003E824();

  return v1();
}

uint64_t sub_100097BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000183C4(&qword_1002ADF60);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v22 - v10;
  sub_100098F84(a3, v22 - v10, &qword_1002ADF60);
  v12 = sub_1001F7058();
  v13 = sub_10001C990(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1000374B8(v11, &qword_1002ADF60);
  }

  else
  {
    sub_1001F7048();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1001F7008();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1001F6BD8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000374B8(a3, &qword_1002ADF60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000374B8(a3, &qword_1002ADF60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100097E54()
{
  if (*(v0 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_task))
  {

    sub_1000183C4(&qword_1002ACE88);
    sub_1001F7068();
  }

  v1 = OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_expirationDate;
  v2 = sub_1001F6508();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100097F20()
{
  sub_100097E54();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscriptionRenewalCoordinator.RenewalTask()
{
  result = qword_1002B1F38;
  if (!qword_1002B1F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100097FC8()
{
  result = sub_1001F6508();
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

uint64_t sub_100098078(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000980B8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10009810C()
{
  result = qword_1002B1FD8;
  if (!qword_1002B1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1FD8);
  }

  return result;
}

unint64_t sub_100098164()
{
  result = qword_1002B1FE0;
  if (!qword_1002B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1FE0);
  }

  return result;
}

uint64_t sub_1000981B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 16);
  *(a1 + 16) = v2;
}

id sub_1000981D0()
{
  v1 = sub_1001F6B48();

  v2 = sub_1001F6B48();

  v3 = sub_1001F6B48();

  sub_1000183C4(&qword_1002ADCA8);
  isa = sub_1001F6F18().super.isa;

  v5 = [v0 initWithBundleID:v1 bundleVersion:v2 deviceID:v3 transactions:isa];

  return v5;
}

uint64_t sub_1000982C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000982F0(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  result = sub_10008A49C(v4, v5);
  v8 = result;
  if (v2)
  {
    goto LABEL_47;
  }

  if (v7)
  {
    v8 = sub_10013B560(v4);
LABEL_47:

    return v8;
  }

  v25 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        result = sub_1001F7B48();
      }

      else
      {
        result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_47;
      }

      v27 = v4;
      v26 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = sub_1000C1A68();
      v15 = sub_1000BFC24();
      if (v11 == v14)
      {
        if (v12 == v15 && v13 == v16)
        {

LABEL_24:
          v4 = v27;
          goto LABEL_40;
        }

        v18 = sub_1001F7EA8();

        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      v4 = v27;
      if (v8 != v9)
      {
        if (v26)
        {
          v19 = sub_1001F7808();
          v20 = sub_1001F7808();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v21)
          {
            goto LABEL_54;
          }

          if (v9 >= v21)
          {
            goto LABEL_55;
          }

          v19 = *(v27 + 32 + 8 * v8);
          v20 = *(v27 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
        {
          v4 = sub_100191254(v27);
          v22 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v22) = 0;
        }

        v23 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v20;

        if ((v4 & 0x8000000000000000) != 0 || v22)
        {
          result = sub_100191254(v4);
          v4 = result;
          v23 = result & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v9 >= *(v23 + 16))
        {
          goto LABEL_52;
        }

        *(v23 + 8 * v9 + 32) = v19;

        *v25 = v4;
      }

      v24 = __OFADD__(v8++, 1);
      if (v24)
      {
        goto LABEL_51;
      }

LABEL_40:
      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000985C0(uint64_t *a1)
{
  v3 = *a1;
  result = sub_10008A73C(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    return sub_10013B560(v3);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v3 >> 62 ? sub_1001F7B48() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 == result)
      {
        return v6;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_1001F7808();
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
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
          break;
        }

        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }
      }

      v9 = *(v8 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete);

      if ((v9 & 1) == 0)
      {
        if (v6 != v7)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v10 = sub_1001F7808();
            v11 = sub_1001F7808();
          }

          else
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6 >= v12)
            {
              goto LABEL_45;
            }

            if (v7 >= v12)
            {
              goto LABEL_46;
            }

            v10 = *(v3 + 32 + 8 * v6);
            v11 = *(v3 + 32 + 8 * v7);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
          {
            v3 = sub_100191254(v3);
            v13 = (v3 >> 62) & 1;
          }

          else
          {
            LODWORD(v13) = 0;
          }

          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v11;

          if ((v3 & 0x8000000000000000) != 0 || v13)
          {
            result = sub_100191254(v3);
            v3 = result;
            v14 = result & 0xFFFFFFFFFFFFFF8;
            if ((v7 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              return v6;
            }
          }

          else if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v7 >= *(v14 + 16))
          {
            goto LABEL_43;
          }

          *(v14 + 8 * v7 + 32) = v10;

          *a1 = v3;
        }

        v15 = __OFADD__(v6++, 1);
        if (v15)
        {
          goto LABEL_42;
        }
      }

      v15 = __OFADD__(v7++, 1);
      if (v15)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000987DC(unint64_t *a1, void *a2)
{
  v5 = *a1;

  result = sub_10008A60C(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_46;
  }

  if (v7)
  {
    v8 = sub_10013B560(v5);
LABEL_46:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_1001F7B48();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_46;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      if (v10[2] == a2[2])
      {
        if (v10[3] == a2[3] && v10[4] == a2[4])
        {

          goto LABEL_39;
        }

        v12 = sub_1001F7EA8();

        if (v12)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = sub_1001F7808();
          v14 = sub_1001F7808();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_53;
          }

          if (v9 >= v15)
          {
            goto LABEL_54;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_100191254(v5);
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          result = sub_100191254(v5);
          v5 = result;
          v17 = result & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_51;
        }

        *(v17 + 8 * v9 + 32) = v13;

        *a1 = v5;
      }

      v18 = __OFADD__(v8++, 1);
      if (v18)
      {
        goto LABEL_50;
      }

LABEL_39:
      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_49;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100098A5C()
{
  swift_unknownObjectRelease();

  sub_100047958();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100098AA0()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_1000996E4(v3);

  return sub_1000953FC(v4, v5, v6, v7, v2);
}

uint64_t sub_100098B4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100098B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1001F6B48();

  v7 = sub_1001F6B48();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_100098C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10003C108;

  return sub_100095AD4(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_100098CE4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100098D34()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10003E6F4;
  v6 = sub_100013F08();

  return v7(v6, v2, v3, v4);
}

uint64_t sub_100098E04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100098E4C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_1000996E4(v4);

  return sub_1000974C4(v5, v6, v7, v8, v2, v3);
}

unint64_t sub_100098F08()
{
  result = qword_1002B2018;
  if (!qword_1002B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2018);
  }

  return result;
}

uint64_t sub_100098F84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000183C4(a3);
  sub_100023520();
  v4 = sub_100037A2C();
  v5(v4);
  return a2;
}

uint64_t sub_100098FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B2000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 - 1 < 3)
  {
  }

  if (!a5 || a5 == 4)
  {
  }

  return result;
}

uint64_t sub_1000990C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100099110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000991C8()
{
  result = qword_1002AC7D8;
  if (!qword_1002AC7D8)
  {
    sub_100019BC4(&qword_1002AC7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC7D8);
  }

  return result;
}

uint64_t sub_100099404(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10003A36C(a1, a2);
  }

  return a1;
}

uint64_t sub_100099418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_100040C5C(a1, a2);
  }

  return a1;
}

BOOL sub_100099534(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100099598()
{

  return swift_slowAlloc();
}

uint64_t sub_10009963C()
{
  v3 = *(v1 - 592);
  v4 = *(v1 - 584);
  v5 = *(v1 - 576);
  v6 = *(v1 - 432);

  return sub_100099050(v3, v4, v5, v6, v0);
}

void *sub_100099694()
{
  v2 = *(v0 + 80);

  return sub_10001AE68((v0 + 56), v2);
}

uint64_t sub_1000996AC()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 320);

  return sub_10003A36C(v2, v3);
}

uint64_t sub_1000996CC()
{

  return swift_slowAlloc();
}

uint64_t sub_100099724()
{
  sub_10003708C((v0 - 152), (v0 - 184));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100099754()
{
  sub_10003708C((v0 - 152), (v0 - 184));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000997A8(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1000997B8(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_100099894()
{

  return swift_slowAlloc();
}

void sub_1000998B0()
{
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;

  sub_1001F6CA8(v1);
}

uint64_t sub_1000998C8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1000BFC24();
}

uint64_t sub_1000998E0()
{
}

void sub_100099A34(char a1)
{

  sub_1000FBFE4(a1, v1);
}

uint64_t sub_100099A54()
{

  return sub_1001C19A8(0, (v0 & 0xC000000000000001) == 0, v0);
}

void sub_100099A74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t *sub_100099A94()
{
  *(v1 - 128) = v0;

  return sub_1000629FC((v1 - 152));
}

unint64_t sub_100099AB4(uint64_t a1, unint64_t a2)
{

  return sub_1000E4544(a1, a2, (v2 - 104));
}

uint64_t sub_100099ACC()
{

  return sub_1001F6418();
}

BOOL sub_100099AE4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100099AFC(void *a1)
{

  return sub_10008EA08(a1, 1);
}

void *sub_100099B14()
{
  v2 = *(v0 + 80);

  return sub_10001AE68((v0 + 56), v2);
}

void *sub_100099B2C()
{
  v2 = *(v0 + 40);

  return sub_10001AE68((v0 + 16), v2);
}

uint64_t ChannelPipeline.__allocating_init(channel:)()
{
  sub_100037B94();
  swift_getObjectType();
  v0 = sub_1000A41E0();

  return sub_1000A205C(v0, v1, v2, v3);
}

uint64_t ChannelPipeline.SynchronousOperations.fireErrorCaught(_:)()
{
  sub_1000A3F18();
  sub_10002E170();
  debugOnly(_:)(v1, v2, v3, 1189, v4, v0);
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();
    sub_10009E508();
  }

  return result;
}

void ChannelHandlerContext.close(mode:promise:)()
{
  sub_1000A41F4();
  if (v1)
  {
    v3 = v2;

    sub_10009D39C(v3, v0);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    *v4 = 3;
    *(v4 + 8) = 3;
    swift_errorRetain();
    sub_1000A3C24();
    sub_1000A3D24();
  }
}

uint64_t ChannelHandlerContext.fireChannelRead(_:)()
{
  if (*(v0 + 16))
  {
    sub_1000A3FB8();

    sub_10009E13C();
  }

  return result;
}

uint64_t ChannelHandlerContext.fireErrorCaught(_:)()
{
  if (*(v0 + 16))
  {
    sub_1000A3FB8();

    sub_10009E508();
  }

  return result;
}

uint64_t ChannelHandlerContext.fireUserInboundEventTriggered(_:)()
{
  if (*(v1 + 16))
  {
    sub_1000A3FB8();

    sub_10009E3E8(v0);
  }

  return result;
}

void sub_10009A000()
{
  sub_1000A41F4();
  if (v1)
  {
    v3 = v2;
    sub_1000A3E8C();

    v4 = sub_10007B9A4();
    v3(v4);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_1000A3C90(v5, v6);
    sub_1000A3C24();
    sub_1000A3D24();
  }
}

uint64_t ChannelPipeline.addHandler(_:name:position:)()
{
  sub_100037AEC();
  swift_getObjectType();
  sub_1000999A8();
  sub_100037A50();

  return sub_1000A2380(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_10009A198()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v0 + 56);
  swift_getObjectType();
  sub_1000A40D0();
  v16 = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, v4, v14, v15, v9);

  v2(v8, v6, v16);

  sub_100037A50();
}

uint64_t ChannelPipeline.removeHandler(context:)()
{
  v1 = *(v0 + 56);
  swift_getObjectType();
  sub_1000A40D0();
  v8 = EventLoop.makePromise<A>(of:file:line:)(v2, v3, v4, v5, 359, v6, v7, v1);

  ChannelPipeline.removeHandler(context:promise:)();

  return v8;
}

void ChannelPipeline.context(handler:)()
{
  sub_100037C08();
  v4 = sub_1000A4040();
  type metadata accessor for ChannelHandlerContext();
  sub_1000A40D0();
  v9 = EventLoop.makePromise<A>(of:file:line:)(v5, v6, v7, v8, 441, v4, v5, v0);
  sub_1000A3F74();
  if (v10(v4, v0))
  {
    swift_getObjectType();
    v11 = sub_1000A228C();
    v13 = v12;
    sub_1000A3D88();
    sub_1000A15B0();
    sub_1000A3C58();
    sub_1000A3878(v11, v13 & 1, v14);
  }

  else
  {
    sub_100047958();
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v2;
    v15[4] = v1;
    v15[5] = v3;
    v16 = *(v0 + 24);

    swift_unknownObjectRetain();
    v17 = sub_1000A4174();
    v16(v17);
  }

  sub_100037B00();
}

void ChannelPipeline.context(name:)()
{
  sub_100037C08();
  v3 = v0;
  v5 = v4;
  v6 = sub_1000A4200();
  type metadata accessor for ChannelHandlerContext();
  sub_1000A40D0();
  v11 = EventLoop.makePromise<A>(of:file:line:)(v7, v8, v9, v10, 470, v6, v7, v2);
  if ((*(v2 + 16))(v6, v2))
  {
    sub_10002E170();
    debugOnly(_:)(v12, v13, v14, 531, v6, v2);
    v15 = *(v0 + 16);
    if (v15)
    {
      v16 = *(v15 + 16);

      sub_1000A41D4();
      swift_bridgeObjectRetain_n();
      if (v16)
      {
        while (v16 != *(v3 + 24))
        {
          v17 = v16[5] == v1 && v16[6] == v5;
          if (v17 || (sub_1001F7EA8() & 1) != 0)
          {
            sub_1000A41D4();
            swift_bridgeObjectRelease_n();
            v22 = 0;
            goto LABEL_17;
          }

          v18 = v16[2];

          v16 = v18;
          if (!v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
      }
    }

    else
    {
    }

    sub_1000A25AC();
    sub_10002E0D8();
    v16 = swift_allocError();
    v22 = 1;
    *v23 = 1;

LABEL_17:
    sub_1000A3D88();
    sub_1000A15B0();
    sub_1000A3C58();
    sub_1000A3878(v16, v22, v24);
  }

  else
  {
    sub_100047958();
    v19 = swift_allocObject();
    v19[2] = v11;
    v19[3] = v0;
    v19[4] = v1;
    v19[5] = v5;
    v20 = *(v2 + 24);

    v21 = sub_1000A4174();
    v20(v21);
  }

  sub_100037B00();
}

void ChannelPipeline.context<A>(handlerType:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  type metadata accessor for ChannelHandlerContext();
  sub_1000A40D0();
  v13 = EventLoop.makePromise<A>(of:file:line:)(v9, v10, v11, v12, 503, ObjectType, v9, v7);
  sub_1000A3F74();
  if (v14(ObjectType, v7))
  {
    v15 = ChannelPipeline._contextSync<A>(handlerType:)();
    v17 = v16;
    sub_1000A15B0();
    sub_1000A3C58();
    sub_1000A3878(v15, v17 & 1, v18);
  }

  else
  {
    sub_1000A3FC4();
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = v2;
    v19[4] = v13;
    v19[5] = v0;
    v19[6] = v6;
    v20 = *(v7 + 24);

    v20(sub_1000A263C, v19, ObjectType, v7);
  }

  sub_100037B00();
}

void sub_10009A988()
{
  sub_100037C08();
  v5 = v4;
  v7 = v6;
  v8 = sub_1000A4040();
  sub_1000A3F74();
  if (v9())
  {
    sub_10009D02C(v1, v3, v7);
    sub_100037B00();
  }

  else
  {
    sub_1000A41C8();
    v10 = swift_allocObject();
    v10[2] = v2;
    v10[3] = v1;
    v10[4] = v3;
    v11 = *(v0 + 24);

    v11(v5, v10, v8, v0);
    sub_100037B00();
  }
}

uint64_t sub_10009AB18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  sub_1000A4000();
  if (v12())
  {
    return sub_10009CF3C(a1, a2, a3);
  }

  sub_10002EE44(a1, v24);
  v14 = swift_allocObject();
  sub_1000A3E34(v14, v15, v16, v17, v18, v19, v20, v21, v24[0], v24[1], v25, v26, v27, v28);
  *(v22 + 88) = a2;
  v23 = *(v10 + 24);

  v23(a5, v14, ObjectType, v10);
}

uint64_t ChannelPipeline.close(mode:promise:)()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 56);
  swift_getObjectType();
  sub_100070228();
  if (v6())
  {
    sub_100037A50();

    return sub_10009CDC4(v7, v8);
  }

  else
  {
    sub_1000A41C8();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v4;
    *(v11 + 32) = v2;
    v12 = *(v5 + 24);

    sub_1000A3E74();
    v12();
    sub_100037A50();
  }
}

uint64_t ChannelPipeline.register(promise:)()
{
  sub_100037AEC();
  sub_1000A3DC8();
  sub_100070228();
  if (v3())
  {
    sub_100037A50();

    return sub_10009D11C(v4);
  }

  else
  {
    sub_10004794C();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    v8 = *(v0 + 24);

    sub_1000A4168();
    sub_1000A3E74();
    v8();
    sub_100037A50();
  }
}

void ChannelPipeline.triggerUserOutboundEvent(_:promise:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  swift_getObjectType();
  sub_100070228();
  if (v6())
  {
    sub_10002E36C();

    sub_10009D224(v7, v8);
  }

  else
  {
    sub_10002F9B0(a1, v12);
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    sub_10003708C(v12, (v10 + 24));
    *(v10 + 56) = a2;
    v11 = *(v5 + 24);

    sub_1000A4168();
    sub_1000A3E74();
    v11();

    sub_10002E36C();
  }
}

uint64_t sub_10009AF34()
{
  sub_1000A3EF8();
  sub_10002E170();
  debugOnly(_:)(v2, v3, v4, 597, v5, v1);
  v6 = *(v0 + 16);
  if (v6)
  {

    while (*(v6 + 16))
    {

      sub_10009C594();
    }

    if (!*(v0 + 16))
    {
      __break(1u);
      return result;
    }

    sub_10009C594();
  }

  *(v0 + 16) = 0;

  *(v0 + 24) = 0;

  *(v0 + 40) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;

  return swift_unknownObjectRelease();
}

uint64_t ChannelHandlerContext.leavePipeline(removalToken:)()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10002E170();
  EventLoop.preconditionInEventLoop(file:line:)(v1, v2, v3, 1858, ObjectType);
  swift_unknownObjectRelease();
  return sub_10009C594();
}

void sub_10009B138()
{
  if (*(v1 + 24))
  {
    sub_1000A3FB8();

    v0(v2);
  }
}

void ChannelPipeline.removeHandler(context:promise:)()
{
  sub_100037AEC();
  v3 = v1;
  sub_100037B94();
  v4 = ChannelHandlerContext.handler.getter();
  swift_getObjectType();
  v5 = sub_1000A29F0(v4);
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = *(v3 + 56);
    swift_getObjectType();
    sub_1000A4000();
    if (v7())
    {
      sub_10009BFB4();
LABEL_8:
      sub_100037A50();
      return;
    }

    sub_10004794C();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v0;
    v11 = *(v6 + 24);

    v12 = sub_1000A4168();
    v11(v12);
    sub_100037A50();
  }

  else
  {
    if (!v0)
    {
      goto LABEL_8;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    *v8 = 13;
    *(v8 + 8) = 3;
    swift_errorRetain();
    sub_1000A3C24();
    sub_1000A3D24();

    sub_100037A50();
  }
}

uint64_t sub_10009B39C()
{
  sub_1000A3EF8();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 158, v6, v2);
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    type metadata accessor for DeadChannel();
    swift_allocObject();
    v7 = sub_100013EFC();
    sub_100085AF0(v7);
    sub_100013EFC();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10009B42C()
{
  sub_1000A3E10();
  swift_getObjectType();
  v3 = sub_1000A3FD0();
  result = sub_1000A2DA0(v3, v4, v5, v1, v0, v2);
  if (v7)
  {
    sub_1000183C4(&qword_1002ACE88);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_10009B4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t sub_10009B59C()
{
  sub_1000A3F38();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 303, v6, v1);
  v7 = *(v2 + 16);
  *(v0 + 24) = v2;

  *(v0 + 16) = v7;

  *(v2 + 16) = v0;

  if (v7)
  {
    *(v7 + 24) = v0;
    sub_1000A3FAC();
    swift_retain_n();
  }

  else
  {
  }
}

uint64_t sub_10009B6A4()
{
  sub_1000A3F38();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 322, v6, v1);
  v7 = *(v2 + 24);
  *(v0 + 24) = v7;
  swift_retain_n();

  *(v0 + 16) = v2;

  *(v2 + 24) = v0;

  if (v7)
  {
    *(v7 + 16) = v0;
    sub_1000A3FAC();
    swift_retain_n();
  }

  else
  {
  }
}

uint64_t ChannelHandlerContext.handler.getter()
{
  result = *(v0 + 56);
  if (result)
  {
    v2 = *(v0 + 56);
LABEL_5:
    swift_unknownObjectRetain();
    return v2;
  }

  v2 = *(v0 + 72);
  if (v2)
  {
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009B808(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 16);

  if (v4)
  {
    while (v4 != *(v1 + 24))
    {
      if ((a1(v4) & 1) == 0)
      {
        v5 = *(v4 + 16);

        v4 = v5;
        if (v5)
        {
          continue;
        }
      }

      return v4;
    }

    return 0;
  }

  return v4;
}

uint64_t sub_10009B8A4()
{
  sub_1000A3EF8();
  sub_10002E170();
  debugOnly(_:)(v2, v3, v4, 585, v5, v1);
  v10._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v10);

  v7 = *(v0 + 32);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    result = 0x72656C646E6168;
    *(v0 + 32) = v9;
  }

  return result;
}

uint64_t sub_10009B954()
{
  sub_1000A3CC4();
  sub_10002E170();
  debugOnly(_:)(v2, v3, v4, 1826, v5, v1);
  ChannelHandlerContext.handler.getter();
  sub_1000A40F4();
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v0, ObjectType, v1);

  return swift_unknownObjectRelease();
}

void ChannelPipeline.removeHandler(_:promise:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 56);
  swift_getObjectType();
  sub_100070228();
  if (v8())
  {
    sub_10009BD00(v0, v6, v4, v2);
    sub_100037B00();
  }

  else
  {
    sub_100047958();
    v9 = swift_allocObject();
    v9[2] = v0;
    v9[3] = v6;
    v9[4] = v4;
    v9[5] = v2;
    v10 = *(v7 + 24);

    swift_unknownObjectRetain();
    sub_1000A4174();
    sub_1000A3E74();
    v10();
    sub_100037B00();
  }
}

uint64_t ChannelPipeline.removeHandler(name:promise:)()
{
  sub_100037C08();
  v5 = v1;
  sub_1000A3DBC();
  v6 = sub_1000A4200();
  if ((*(v4 + 16))(v6, v4))
  {
    sub_10002E170();
    debugOnly(_:)(v7, v8, v9, 531, v6, v4);
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = *(v10 + 16);

      sub_1000A41D4();
      swift_bridgeObjectRetain_n();
      if (v11)
      {
        while (v11 != *(v5 + 24))
        {
          v12 = v11[5] == v3 && v11[6] == v2;
          if (v12 || (sub_1001F7EA8() & 1) != 0)
          {
            sub_1000A41D4();
            swift_bridgeObjectRelease_n();
            ChannelPipeline.removeHandler(context:promise:)();
            goto LABEL_15;
          }

          v13 = v11[2];

          v11 = v13;
          if (!v13)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
      }
    }

    else
    {
    }

    sub_1000A25AC();
    sub_10002E0D8();
    v19 = swift_allocError();
    sub_1000A4020(v19, v20);

    if (v0)
    {
      sub_1000A3C24();
      sub_1000A3D24();
    }

    sub_100037B00();
  }

  else
  {
    sub_100047958();
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v3;
    v14[4] = v2;
    v14[5] = v0;
    v15 = *(v4 + 24);

    v16 = sub_1000A4174();
    v15(v16);
LABEL_15:
    sub_100037B00();
  }
}

uint64_t sub_10009BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A3DBC();
  swift_getObjectType();
  v5 = sub_1000A228C();
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      sub_1000A3C24();
      sub_1000A1440();
    }
  }

  else
  {
    ChannelPipeline.removeHandler(context:promise:)();
  }

  return sub_1000A3878(v5, v7 & 1, &_swift_release);
}

uint64_t sub_10009BDD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[7];
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 531, ObjectType, v8);
  v10 = a1[2];
  if (!v10)
  {

    goto LABEL_16;
  }

  v11 = *(v10 + 16);

  swift_bridgeObjectRetain_n();
  if (!v11)
  {
LABEL_10:

LABEL_16:
    sub_1000A25AC();
    swift_allocError();
    *v15 = 1;

    if (a4)
    {
      sub_1000A1440();
    }
  }

  while (1)
  {
    if (v11 == a1[3])
    {

      goto LABEL_16;
    }

    v12 = v11[5] == a2 && v11[6] == a3;
    if (v12 || (sub_1001F7EA8() & 1) != 0)
    {
      break;
    }

    v13 = v11[2];

    v11 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  swift_bridgeObjectRelease_n();
  ChannelPipeline.removeHandler(context:promise:)();
}

uint64_t sub_10009BFB4()
{
  sub_1000A3DEC();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1863, v6, v2);
  if (*(v1 + 89))
  {
    if (v0)
    {
      sub_1000A3AA0();
      sub_10002E0D8();
      swift_allocError();
      swift_errorRetain();
      sub_1000A3C24();
      sub_1000A3D24();
    }
  }

  else
  {
    *(v1 + 89) = 1;
    v8 = ChannelHandlerContext.handler.getter();
    swift_getObjectType();
    sub_1000A3A58(v8);
    swift_getObjectType();
    sub_1000A4100();
    v9 = sub_100037B7C();
    v10(v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10009C110()
{
  swift_getObjectType();
  v0 = sub_1000A228C();
  v2 = v1;
  sub_1000A15B0();
  return sub_1000A3878(v0, v2 & 1, &_swift_release);
}

BOOL sub_10009C1C4(uint64_t a1, uint64_t a2)
{
  v3 = ChannelHandlerContext.handler.getter();
  swift_unknownObjectRelease();
  return v3 == a2;
}

uint64_t ChannelPipeline._contextSync(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 56);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v4, v5, v6, 531, v7, v3);
  result = sub_10009B808(a1);
  if (!result)
  {
    sub_1000A25AC();
    sub_10002E0D8();
    result = swift_allocError();
    *v9 = 1;
  }

  return result;
}

uint64_t sub_10009C2A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[7];
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 531, ObjectType, v7);
  v9 = a2[2];
  if (v9)
  {
    v10 = *(v9 + 16);

    swift_bridgeObjectRetain_n();
    if (v10)
    {
      while (v10 != a2[3])
      {
        v11 = v10[5] == a3 && v10[6] == a4;
        if (v11 || (sub_1001F7EA8() & 1) != 0)
        {
          swift_bridgeObjectRelease_n();
          v13 = 0;
          goto LABEL_15;
        }

        v12 = v10[2];

        v10 = v12;
        if (!v12)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
  }

  sub_1000A25AC();
  v10 = swift_allocError();
  v13 = 1;
  *v14 = 1;

LABEL_15:
  sub_1000A15B0();
  return sub_1000A3878(v10, v13, &_swift_release);
}

uint64_t sub_10009C484()
{
  v0 = ChannelPipeline._contextSync<A>(handlerType:)();
  v2 = v1;
  sub_1000A15B0();
  return sub_1000A3878(v0, v2 & 1, &_swift_release);
}

uint64_t sub_10009C520()
{
  ChannelHandlerContext.handler.getter();
  sub_1000183C4(&unk_1002BCD10);
  v0 = swift_dynamicCast();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_10009C594()
{
  sub_1000A3F38();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 563, v6, v1);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (v7)
  {
    *(v7 + 16) = v8;
    swift_retain_n();

    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v8)
  {
LABEL_3:
    *(v8 + 24) = v7;
  }

LABEL_4:
  sub_10009C6E0();
  if (v2)
  {
    sub_1000A3C24();
    sub_1000A1440();
  }

  *(v0 + 16) = 0;

  *(v0 + 24) = 0;
}

uint64_t sub_10009C6E0()
{
  v1 = *(*(v0 + 32) + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1832, ObjectType, v1);
  if ((*(v0 + 88) & 1) == 0)
  {
    *(v0 + 88) = 1;
    ChannelHandlerContext.handler.getter();
    v5 = v4;
    v6 = swift_getObjectType();
    (*(v5 + 16))(v0, v6, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ChannelPipeline.fireChannelRead(_:)()
{
  sub_1000A3DC8();
  sub_100070228();
  if (v2())
  {
    result = sub_10009D370();
    if (result)
    {
      sub_10009E13C();
    }
  }

  else
  {
    sub_10002EE44(v1, v13);
    v4 = swift_allocObject();
    sub_1000A3E34(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1], v14, v15, v16, v17);
    v12 = *(v0 + 24);

    sub_1000A3E74();
    v12();
  }

  return result;
}

uint64_t sub_10009C9A4()
{
  result = sub_10009D370();
  if (result)
  {
    sub_10009E13C();
  }

  return result;
}

void sub_10009CA3C()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v5 + 16))(ObjectType, v5))
  {
    if (!v4())
    {
      sub_100037A50();
      return;
    }

    v2();
  }

  else
  {
    v7 = *(v5 + 24);

    v8 = sub_10007B9A4();
    v7(v8);
  }

  sub_100037A50();
}

void ChannelPipeline.fireUserInboundEventTriggered(_:)()
{
  sub_1000A3DC8();
  sub_100070228();
  if ((v3() & 1) == 0)
  {
    sub_10002F9B0(v2, v7);
    sub_1000A3FC4();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    sub_10003708C(v7, (v5 + 24));
    v6 = *(v0 + 24);

    sub_1000A3E74();
    v6();

    goto LABEL_7;
  }

  if (!sub_10009D370())
  {
LABEL_7:
    sub_10002E36C();
    return;
  }

  sub_10009E3E8(v2);
  sub_10002E36C();
}

uint64_t sub_10009CC18(uint64_t a1, uint64_t a2)
{
  result = sub_10009D370();
  if (result)
  {
    sub_10009E3E8(a2);
  }

  return result;
}

void ChannelPipeline.fireErrorCaught(_:)()
{
  sub_100037AEC();
  v2 = v1;
  v3 = *(v0 + 56);
  swift_getObjectType();
  sub_1000A3F74();
  if (v4())
  {
    if (!sub_10009D370())
    {
      sub_100037A50();
      return;
    }

    sub_100013EFC();
    sub_10009E508();
  }

  else
  {
    sub_10004794C();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = v2;
    v6 = *(v3 + 24);

    swift_errorRetain();
    v7 = sub_1000A4168();
    v6(v7);
  }

  sub_100037A50();
}

uint64_t sub_10009CD6C()
{
  result = sub_10009D370();
  if (result)
  {
    sub_10009E508();
  }

  return result;
}

uint64_t sub_10009CDC4(uint64_t a1, uint64_t a2)
{
  result = sub_10009D344();
  if (result)
  {
    sub_10009D39C(a1, a2);
  }

  else if (a2)
  {
    sub_10002D678();
    swift_allocError();
    *v5 = 3;
    *(v5 + 8) = 3;
    swift_errorRetain();
    sub_1000A1440();
  }

  return result;
}

uint64_t sub_10009CEE0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  result = a2();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_10009CF3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = sub_10009D344();
  if (result)
  {
    v6 = sub_10007B9A4();
    a3(v6);
  }

  else if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    v7 = swift_allocError();
    sub_1000A3C90(v7, v8);
    sub_1000A3C24();
    sub_1000A3D24();
  }

  return result;
}

uint64_t sub_10009D02C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = sub_10009D344();
  if (result)
  {
    v6 = sub_10007B9A4();
    a3(v6);
  }

  else if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    v7 = swift_allocError();
    sub_1000A3C90(v7, v8);
    sub_1000A3C24();
    sub_1000A3D24();
  }

  return result;
}

uint64_t sub_10009D11C(uint64_t a1)
{
  result = sub_10009D344();
  if (result)
  {
    sub_10009DB80(a1);
  }

  else if (a1)
  {
    sub_10002D678();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_errorRetain();
    sub_1000A1440();
  }

  return result;
}

uint64_t sub_10009D224(uint64_t a1, uint64_t a2)
{
  result = sub_10009D344();
  if (result)
  {
    sub_10009DCA0(a1, a2);
  }

  else if (a2)
  {
    sub_10002D678();
    swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 3;
    swift_errorRetain();
    sub_1000A1440();
  }

  return result;
}

uint64_t sub_10009D344()
{
  if (*(v0 + 24))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D370()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009D39C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1806, ObjectType, v5);
  if (v2[9])
  {
    v8 = v2[10];
    v9 = swift_getObjectType();
    v10 = *(v8 + 64);
    swift_unknownObjectRetain();
    v10(v2, a1, a2, v9, v8);

    return swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D39C(a1, a2);
  }

  return result;
}

uint64_t sub_10009D4C8()
{
  v1 = *(v0[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1775, ObjectType, v1);
  if (v0[9])
  {
    v4 = v0[10];
    v5 = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v6(v0, v5, v4);

    return swift_unknownObjectRelease();
  }

  else if (v0[3])
  {

    sub_10009D4C8(v7);
  }

  return result;
}

uint64_t sub_10009D5CC()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1796, v6, v1);
  if (*(v0 + 72))
  {
    swift_getObjectType();
    sub_1000A3E80();
    v8 = *(v2 + 56);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 24))
  {

    sub_10009D5CC(v10);
  }

  return result;
}

uint64_t sub_10009D6B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1765, ObjectType, v5);
  if (v2[9])
  {
    v8 = v2[10];
    v9 = swift_getObjectType();
    v10 = *(v8 + 40);
    swift_unknownObjectRetain();
    v10(v2, a1, a2, v9, v8);

    return swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D6B0(a1, a2);
  }

  return result;
}

uint64_t sub_10009D7DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1785, ObjectType, v5);
  if (v2[9])
  {
    v8 = v2[10];
    v9 = swift_getObjectType();
    v10 = *(v8 + 40);
    swift_unknownObjectRetain();
    v10(v2, a1, a2, v9, v8);
    (*(v8 + 48))(v2, v9, v8);

    return swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D7DC(a1, a2);
  }

  return result;
}

uint64_t sub_10009D928(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1745, ObjectType, v5);
  if (v2[9])
  {
    v8 = v2[10];
    v9 = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v10(v2, a1, a2, v9, v8);

    return swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009D928(a1, a2);
  }

  return result;
}

uint64_t sub_10009DA54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1755, ObjectType, v5);
  if (v2[9])
  {
    v8 = v2[10];
    v9 = swift_getObjectType();
    v10 = *(v8 + 32);
    swift_unknownObjectRetain();
    v10(v2, a1, a2, v9, v8);

    return swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009DA54(a1, a2);
  }

  return result;
}

uint64_t sub_10009DB80(uint64_t a1)
{
  v3 = *(v1[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1735, ObjectType, v3);
  if (v1[9])
  {
    v6 = v1[10];
    v7 = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v8(v1, a1, v7, v6);

    return swift_unknownObjectRelease();
  }

  else if (v1[3])
  {

    sub_10009DB80(a1);
  }

  return result;
}

uint64_t sub_10009DCA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1816, ObjectType, v5);
  if (v2[9])
  {
    v8 = v2[10];
    v9 = swift_getObjectType();
    v10 = *(v8 + 72);
    swift_unknownObjectRetain();
    v10(v2, a1, a2, v9, v8);

    return swift_unknownObjectRelease();
  }

  else if (v2[3])
  {

    sub_10009DCA0(a1, a2);
  }

  return result;
}

uint64_t sub_10009DDCC()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1645, v6, v1);
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v8 = *(v2 + 16);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009DDCC(v10);
  }

  return result;
}

uint64_t sub_10009DEA8()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1655, v6, v1);
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v8 = *(v2 + 24);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009DEA8(v10);
  }

  return result;
}

uint64_t sub_10009DF84()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1675, v6, v1);
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v8 = *(v2 + 40);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009DF84(v10);
  }

  return result;
}

uint64_t sub_10009E060()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1665, v6, v1);
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v8 = *(v2 + 32);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009E060(v10);
  }

  return result;
}

void sub_10009E13C()
{
  sub_100037AEC();
  sub_1000A3DEC();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 1685, v6, v2);
  if (v1[7])
  {
    v7 = v1[8];
    swift_getObjectType();
    v8 = *(v7 + 48);
    swift_unknownObjectRetain();
    v9 = sub_100037B7C();
    v8(v9);
    sub_100037A50();

    swift_unknownObjectRelease();
  }

  else if (v1[2])
  {

    sub_10009E13C(v0);
    sub_100037A50();
  }

  else
  {
    sub_100037A50();
  }
}

uint64_t sub_10009E230()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1695, v6, v1);
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v8 = *(v2 + 56);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009E230(v10);
  }

  return result;
}

uint64_t sub_10009E30C()
{
  sub_1000A3CC4();
  sub_10002E170();
  result = debugOnly(_:)(v3, v4, v5, 1705, v6, v1);
  if (*(v0 + 56))
  {
    sub_1000A4118();
    sub_1000A3E80();
    v8 = *(v2 + 64);
    swift_unknownObjectRetain();
    v9 = sub_1000A3CB4();
    v8(v9);

    return swift_unknownObjectRelease();
  }

  else if (*(v0 + 16))
  {

    sub_10009E30C(v10);
  }

  return result;
}

uint64_t sub_10009E3E8(uint64_t a1)
{
  v3 = *(v1[4] + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1725, ObjectType, v3);
  if (v1[7])
  {
    v6 = v1[8];
    v7 = swift_getObjectType();
    v8 = *(v6 + 72);
    swift_unknownObjectRetain();
    v8(v1, a1, v7, v6);

    return swift_unknownObjectRelease();
  }

  else if (v1[2])
  {

    sub_10009E3E8(a1);
  }

  return result;
}

void sub_10009E508()
{
  sub_100037AEC();
  sub_1000A3DEC();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 1715, v6, v2);
  if (v1[7])
  {
    v7 = v1[8];
    swift_getObjectType();
    v8 = *(v7 + 80);
    swift_unknownObjectRetain();
    v9 = sub_100037B7C();
    v8(v9);
    sub_100037A50();

    swift_unknownObjectRelease();
  }

  else if (v1[2])
  {

    sub_10009E508(v0);
    sub_100037A50();
  }

  else
  {
    sub_100037A50();
  }
}

uint64_t ChannelPipeline.init(channel:)()
{
  sub_100037B94();
  swift_getObjectType();
  v0 = sub_1000A41E0();

  return sub_1000A20EC(v0, v1, v2, v3);
}

uint64_t ChannelPipeline.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelPipeline.__deallocating_deinit()
{
  ChannelPipeline.deinit();

  return swift_deallocClassInstance();
}

void sub_10009E95C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62 && (a4 >> 62 == 1 || !(a3 | a4 ^ 0x8000000000000000)))
  {
    sub_10009EA08(a2, a3, a4);
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_10009EAFC();
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  sub_1000183C4(&qword_1002ACE88);
  swift_willThrowTypedImpl();
}

uint64_t sub_10009EA08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 56);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1013, ObjectType, v8);
  v10 = *(a1 + 16);
  v11 = a1 + 16 * v10 + 24;
  v12 = v10 + 1;
  while (--v12)
  {
    v13 = v11 - 16;
    swift_getObjectType();
    v14 = swift_unknownObjectRetain();
    v15 = sub_1000A2DA0(v14, 0, 0, a2, a3, v4);
    v17 = v16;
    swift_unknownObjectRelease();
    v11 = v13;
    if (v17)
    {
      return v15;
    }
  }

  return 0;
}

void sub_10009EAFC()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 56);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v8, v9, v10, 1013, v11, v7);
  v12 = v6 + 40;
  v13 = *(v6 + 16) + 1;
  do
  {
    if (!--v13)
    {
      break;
    }

    v14 = v12 + 16;
    swift_getObjectType();
    v15 = swift_unknownObjectRetain();
    sub_1000A2DA0(v15, 0, 0, v4, v2, v0);
    v17 = v16;
    swift_unknownObjectRelease();
    v12 = v14;
  }

  while ((v17 & 1) == 0);
  sub_100037A50();
}

uint64_t ChannelPipeline.SynchronousOperations.addHandler(_:name:position:)()
{
  sub_1000A3E10();
  swift_getObjectType();
  result = sub_1000A2DA0(v5, v4, v3, v2, v1, v0);
  if (v7)
  {
    sub_1000183C4(&qword_1002ACE88);
    return swift_willThrowTypedImpl();
  }

  return result;
}

void ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_10009EC9C(a1, a2, a3);
}

{
  ChannelPipeline.SynchronousOperations.addHandlers(_:position:)(a1, a2, a3);
}

void sub_10009EC9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 && (a3 >> 62 == 1 || !(a2 | a3 ^ 0x8000000000000000)))
  {
    sub_10009EA08(a1, a2, a3);
    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_10009EAFC();
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  sub_1000183C4(&qword_1002ACE88);
  swift_willThrowTypedImpl();
}

uint64_t ChannelPipeline.SynchronousOperations.context(handler:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[6];
  v6 = a3[7];
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v7, v8, v9, 531, v10, v6);
  v11 = a3[2];
  if (!v11)
  {
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  v5 = *(v11 + 16);

  sub_1000A3FAC();
  swift_unknownObjectRetain_n();
  if (!v5)
  {
LABEL_6:
    swift_unknownObjectRelease();
LABEL_9:
    sub_1000A25AC();
    sub_10002E0D8();
    v14 = swift_allocError();
    sub_1000A4020(v14, v15);
    swift_unknownObjectRelease();
    sub_1000183C4(&qword_1002ACE88);
    swift_willThrowTypedImpl();
    return v5;
  }

  while (1)
  {
    if (v5 == a3[3])
    {
      swift_unknownObjectRelease();

      goto LABEL_9;
    }

    v12 = ChannelHandlerContext.handler.getter();
    swift_unknownObjectRelease();
    if (v12 == a1)
    {
      break;
    }

    v13 = *(v5 + 16);

    v5 = v13;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  sub_1000A3FAC();
  swift_unknownObjectRelease_n();
  return v5;
}

void *ChannelPipeline.SynchronousOperations.context(name:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[6];
  v7 = a3[7];
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v8, v9, v10, 531, v11, v7);
  v12 = a3[2];
  if (v12)
  {
    v6 = *(v12 + 16);

    sub_1000A3FAC();
    swift_bridgeObjectRetain_n();
    if (v6)
    {
      while (v6 != a3[3])
      {
        v13 = v6[5] == a1 && v6[6] == a2;
        if (v13 || (sub_1001F7EA8() & 1) != 0)
        {
          sub_1000A3FAC();
          swift_bridgeObjectRelease_n();
          return v6;
        }

        v14 = v6[2];

        v6 = v14;
        if (!v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
  }

  sub_1000A25AC();
  sub_10002E0D8();
  v15 = swift_allocError();
  sub_1000A4020(v15, v16);

  sub_1000183C4(&qword_1002ACE88);
  swift_willThrowTypedImpl();
  return v6;
}

uint64_t ChannelPipeline.SynchronousOperations.context<A>(handlerType:)()
{
  v0 = ChannelPipeline._contextSync<A>(handlerType:)();
  if (v1)
  {
    sub_1000183C4(&qword_1002ACE88);
    swift_willThrowTypedImpl();
  }

  return v0;
}

uint64_t ChannelPipeline.SynchronousOperations.handler<A>(type:)()
{
  v4[1] = ChannelPipeline._handlerSync<A>(type:)();
  v5 = v1 & 1;
  sub_100019BC4(&qword_1002ACE88);
  v2 = sub_1001F8158();
  result = sub_10009B4CC(v2, v4, &v6);
  if (!v0)
  {
    return v6;
  }

  return result;
}

uint64_t ChannelPipeline._handlerSync<A>(type:)()
{
  sub_1000A3DBC();
  v2 = ChannelPipeline._contextSync<A>(handlerType:)();
  v4 = v3 & 1;
  LOBYTE(v13) = v3 & 1;
  v5 = sub_1000183C4(&qword_1002B2038);
  sub_1000A118C(sub_1000A2FBC, v12, v5, v1, v6, v7, v8, v9, v12[0], v12[1], v1, v0, v2, v13, v14, v15, v16, v17, v18, v19);
  sub_1000A3C58();
  sub_1000A3878(v2, v4, v10);
  return v14;
}

uint64_t ChannelPipeline.SynchronousOperations.fireChannelRead(_:)()
{
  sub_1000A3F18();
  sub_10002E170();
  debugOnly(_:)(v1, v2, v3, 1157, v4, v0);
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();
    sub_10009E13C();
  }

  return result;
}

uint64_t ChannelPipeline.SynchronousOperations.fireUserInboundEventTriggered(_:)()
{
  sub_1000A3F18();
  sub_10002E170();
  debugOnly(_:)(v1, v2, v3, 1181, v4, v0);
  result = sub_10009D370();
  if (result)
  {
    v6 = sub_100013EFC();
    sub_10009E3E8(v6);
  }

  return result;
}

uint64_t ChannelPipeline.SynchronousOperations.close(mode:promise:)()
{
  sub_1000A3DBC();
  v2 = v1;
  v4 = *(v3 + 56);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v5, v6, v7, 1197, v8, v4);
  return sub_10009CDC4(v2, v0);
}

uint64_t sub_10009F338(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  v7 = *(a1 + 56);
  swift_getObjectType();
  sub_10002E170();
  v12 = debugOnly(_:)(v8, v9, v10, a2, v11, v7);
  result = a3(v12);
  if (result)
  {
    a4();
  }

  return result;
}

void sub_10009F41C()
{
  sub_100037AEC();
  sub_1000A3F80();
  sub_10002E170();
  debugOnly(_:)(v2, v3, v4, v0, v5, v1);
  v6 = sub_1000A4180();
  sub_10009CF3C(v6, v7, v8);
  sub_100037A50();
}

void sub_10009F4AC()
{
  sub_100037AEC();
  sub_1000A3F80();
  sub_10002E170();
  debugOnly(_:)(v2, v3, v4, v0, v5, v1);
  v6 = sub_1000A4180();
  sub_10009D02C(v6, v7, v8);
  sub_100037A50();
}

uint64_t ChannelPipeline.SynchronousOperations.register(promise:)()
{
  sub_100037B94();
  v2 = *(v1 + 56);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v3, v4, v5, 1253, v6, v2);
  return sub_10009D11C(v0);
}

uint64_t ChannelPipeline.SynchronousOperations.triggerUserOutboundEvent(_:promise:)()
{
  sub_1000A3DBC();
  v2 = v1;
  v4 = *(v3 + 56);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v5, v6, v7, 1261, v8, v4);
  return sub_10009D224(v2, v0);
}

uint64_t sub_10009F5CC()
{
  sub_10009B39C();
  sub_1000A40F4();
  swift_getObjectType();
  sub_1000A3FE0();
  v0();
  sub_1000A410C();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v1 = sub_1000A4010();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F658()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F6E0()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F768()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F7F0()
{
  sub_10009B39C();
  v1 = sub_1000A4220();
  (*(v0 + 96))(v1, v0);
  v3 = v2;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v3 + 64))(ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F880()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v5();
  sub_1000A3E58();
  v6 = qword_1002086E0[v4];
  ObjectType = swift_getObjectType();
  sub_10002D678();
  sub_10002E0D8();
  v8 = swift_allocError();
  *v9 = v6;
  *(v9 + 8) = 3;
  (*(v0 + 80))(v8, v4, v2, ObjectType, v0);

  sub_100037A50();

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F960()
{
  sub_10009B39C();
  v1 = sub_1000A4220();
  (*(v0 + 96))(v1, v0);
  v3 = v2;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v3 + 72))(ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009F9F0()
{
  sub_1000A3DBC();
  sub_10009B39C();
  sub_100099864();
  swift_getObjectType();
  sub_1000A3D14();
  v0();
  sub_1000A3E58();
  swift_getObjectType();
  sub_1000A4100();
  v1 = sub_1000A3D00();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009FB38()
{
  sub_10009B39C();
  sub_1000A40F4();
  swift_getObjectType();
  sub_1000A3FE0();
  v0();
  sub_1000A410C();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v1 = sub_1000A4010();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10009FBC4()
{
  sub_10009B39C();
  sub_1000A40F4();
  swift_getObjectType();
  sub_1000A3FE0();
  v0();
  sub_1000A410C();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v1 = sub_1000A4010();
  v2(v1);

  return swift_unknownObjectRelease();
}

uint64_t ChannelHandlerContext.remoteAddress.getter()
{
  sub_10009B39C();
  sub_1000A410C();
  swift_getObjectType();
  sub_1000A41B4();
  v1();
  sub_100099864();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v0 + 16))(ObjectType, v0);
  sub_1000A3E8C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelHandlerContext.localAddress.getter()
{
  sub_10009B39C();
  sub_1000A410C();
  swift_getObjectType();
  sub_1000A41B4();
  v1();
  sub_100099864();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(v0 + 8))(ObjectType, v0);
  sub_1000A3E8C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelHandlerContext.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_10009FF70()
{
  if (*(v1 + 16))
  {
    sub_1000A3FB8();

    v0(v2);
  }
}

uint64_t ChannelHandlerContext.register(promise:)(uint64_t result)
{
  v2 = result;
  if (*(v1 + 24))
  {

    sub_10009DB80(v2);
  }

  else if (result)
  {
    sub_10002D678();
    sub_10002E0D8();
    v3 = swift_allocError();
    sub_1000A3C90(v3, v4);
    sub_1000A3C24();
    sub_1000A3D24();
  }

  return result;
}

void sub_1000A00CC()
{
  sub_1000A41F4();
  if (v1)
  {
    v3 = v2;
    sub_1000A3E8C();

    v4 = sub_10007B9A4();
    v3(v4);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_1000A3C90(v5, v6);
    sub_1000A3C24();
    sub_1000A3D24();
  }
}

void ChannelHandlerContext.triggerUserOutboundEvent(_:promise:)()
{
  sub_1000A41F4();
  if (v1)
  {

    v2 = sub_100037B7C();
    sub_10009DCA0(v2, v3);
  }

  else if (v0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_1000A3C90(v4, v5);
    sub_1000A3C24();
    sub_1000A3D24();
  }
}

uint64_t ChannelHandlerContext.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ChannelHandlerContext.__deallocating_deinit()
{
  ChannelHandlerContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t *ChannelPipeline.debugDescription.getter()
{
  v2 = ObjectType;
  sub_1000183C4(&qword_1002AC7E0);
  sub_100047958();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001FE9E0;
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_1001F77B8(20);
  v107._object = 0x8000000100226890;
  v107._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v107);
  sub_1001F7A28();
  v108._countAndFlagsBits = 14941;
  v108._object = 0xE200000000000000;
  sub_1001F6CA8(v108);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v104 = v3;
  v4 = sub_1000A0F14();
  v5 = 0;
  v6 = v4[2];
  v7 = &protocol descriptor for _ChannelInboundHandler;
  v8 = _swiftEmptyArrayStorage;
  v100 = v4;
LABEL_2:
  v9 = 32 * v5;
  while (v6 != v5)
  {
    if (v5 >= v4[2])
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    ++v5;
    v2 = v9 + 32;
    v10 = v4 + v9;
    v11 = *(v10 + 6);
    v1 = *(v10 + 7);
    v101 = *(v10 + 2);
    ObjectType = *(v10 + 4);
    swift_getObjectType();
    v12 = sub_1000A29F0(ObjectType);
    v9 = v2;
    if (v12)
    {
      swift_unknownObjectRetain();

      v105 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1000A41A8();
        sub_10003452C(v13, v14, 1);
        v8 = v105;
      }

      v15 = v101;
      v2 = v8[2];
      v16 = v8[3];
      if (v2 >= v16 >> 1)
      {
        sub_10005669C(v16);
        sub_1000A3FF0();
        sub_10003452C(v18, v19, v20);
        v15 = v101;
        v8 = v105;
      }

      v8[2] = v2 + 1;
      v17 = &v8[4 * v2];
      *(v17 + 2) = v15;
      v17[6] = v11;
      v17[7] = v1;
      v4 = v100;
      goto LABEL_2;
    }
  }

  v21 = v8[2];
  if (v21)
  {
    v105 = _swiftEmptyArrayStorage;
    sub_1000A41A8();
    sub_1000375D0();
    ObjectType = _swiftEmptyArrayStorage;
    v22 = v8 + 7;
    do
    {
      v23 = *(v22 - 3);
      v24 = *v22;
      swift_getObjectType();
      swift_unknownObjectRetain();

      sub_1001F8218();
      v25 = sub_1001F6C38();

      swift_unknownObjectRelease();

      sub_1000A4194();
      if (v27)
      {
        sub_10005669C(v26);
        sub_1000A3FF0();
        sub_1000375D0();
        ObjectType = v105;
      }

      *(ObjectType + 16) = v23;
      *(ObjectType + 8 * v24 + 32) = v25;
      v22 += 4;
      --v21;
    }

    while (v21);
  }

  else
  {

    ObjectType = _swiftEmptyArrayStorage;
  }

  v8 = sub_1000A103C(ObjectType);
  v29 = v28;

  v30 = 0;
  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = v8;
  }

  v99 = v31;
  v1 = &protocol descriptor for _ChannelOutboundHandler;
  v7 = _swiftEmptyArrayStorage;
LABEL_22:
  v9 = 32 * v30;
  while (v6 != v30)
  {
    if (v30 >= v100[2])
    {
      goto LABEL_78;
    }

    ++v30;
    v2 = v9 + 32;
    v32 = (v100 + v9);
    v34 = v32[6];
    v33 = v32[7];
    v102 = *(v32 + 2);
    ObjectType = v32[4];
    swift_getObjectType();
    v35 = sub_1000A29F0(ObjectType);
    v9 = v2;
    if (v35)
    {
      swift_unknownObjectRetain();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_1000A41A8();
        sub_10003452C(v37, v38, 1);
        v7 = v105;
      }

      v39 = v102;
      v2 = *(v7 + 16);
      v40 = *(v7 + 24);
      v8 = (v2 + 1);
      if (v2 >= v40 >> 1)
      {
        v42 = sub_10005669C(v40);
        ObjectType = &v105;
        sub_10003452C(v42, v2 + 1, 1);
        v39 = v102;
        v7 = v105;
      }

      *(v7 + 16) = v8;
      v41 = v7 + 32 * v2;
      *(v41 + 32) = v39;
      *(v41 + 48) = v34;
      *(v41 + 56) = v33;
      goto LABEL_22;
    }
  }

  v43 = *(v7 + 16);
  if (v43)
  {
    v105 = _swiftEmptyArrayStorage;
    sub_1000A41A8();
    sub_1000375D0();
    ObjectType = v105;
    v44 = (v7 + 56);
    do
    {
      v45 = *(v44 - 3);
      v46 = *v44;
      swift_getObjectType();
      swift_unknownObjectRetain();

      sub_1001F8218();
      v47 = sub_1001F6C38();

      swift_unknownObjectRelease();

      sub_1000A4194();
      if (v27)
      {
        sub_10005669C(v48);
        sub_1000A3FF0();
        sub_1000375D0();
        ObjectType = v105;
      }

      *(ObjectType + 16) = v45;
      *(ObjectType + 8 * v46 + 32) = v47;
      v44 += 4;
      --v43;
    }

    while (v43);
  }

  else
  {

    ObjectType = _swiftEmptyArrayStorage;
  }

  v8 = sub_1000A103C(ObjectType);
  v7 = v49;

  if (v7)
  {
    v50 = 0;
  }

  else
  {
    v50 = v8;
  }

  v98 = v50;
  v51 = v104;
  v1 = v100;
  if (!v6)
  {

    v93 = *(v104 + 16);
    v92 = *(v104 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_10004B2F4(v92);
      sub_100032370();
      v51 = v97;
    }

    *(v51 + 16) = v93 + 1;
    v94 = v51 + 16 * v93;
    strcpy((v94 + 32), " <no handlers>");
    *(v94 + 47) = -18;
    goto LABEL_76;
  }

  v9 = v99;
  if (__OFSUB__(v99, 2))
  {
    goto LABEL_81;
  }

  v109._countAndFlagsBits = sub_1000A40B8();
  v105 = sub_1001F6D78(v109, v52);
  v106 = v53;

  v110._countAndFlagsBits = 0xE29386E2205D495BLL;
  v110._object = 0xAE005D4F5B209186;
  sub_1001F6CA8(v110);

  v8 = v105;
  v7 = v106;
  v2 = *(v104 + 16);
  v9 = *(v104 + 24);
  ObjectType = v2 + 1;
  if (v2 < v9 >> 1)
  {
    goto LABEL_44;
  }

LABEL_82:
  sub_10004B2F4(v9);
  sub_100032370();
  v51 = v96;
LABEL_44:
  *(v51 + 16) = ObjectType;
  v54 = v51 + 16 * v2;
  *(v54 + 32) = v8;
  *(v54 + 40) = v7;
  p_Name = &v1[2].Name;
  do
  {
    v1 = *(p_Name - 3);
    v56 = *p_Name;
    v103 = *(p_Name - 1);
    swift_unknownObjectRetain();

    sub_100032370();
    v58 = v57;
    v2 = *(v57 + 16);
    v59 = *(v57 + 24);
    ObjectType = v2 + 1;
    if (v2 >= v59 >> 1)
    {
      sub_10004B2F4(v59);
      sub_100032370();
      v58 = v83;
    }

    *(v58 + 16) = ObjectType;
    sub_1000A4154(v58 + 16 * v2);
    swift_getObjectType();
    if (sub_1000A29F0(v1))
    {
      ObjectType = swift_getObjectType();
      sub_1001F8218();
      v8 = v60;
      v7 = sub_1001F6C38();

      v9 = v99;
      if (__OFSUB__(v99, v7))
      {
        goto LABEL_79;
      }

      v111._countAndFlagsBits = sub_1000A40B8();
      sub_1001F6D78(v111, v61);
      sub_1000A40DC();
      if (v27)
      {
        sub_10005669C(v62);
        sub_1000A4068();
        v58 = v91;
      }

      sub_1000A4130();
    }

    else
    {
      v112._countAndFlagsBits = sub_1000A40B8();
      sub_1001F6D78(v112, v99);
    }

    v8 = v63;
    sub_1000A4030();
    if (v27)
    {
      sub_10004B2F4(v64);
      sub_100032370();
      v58 = v85;
    }

    sub_1000A3F58();
    if (v27)
    {
      sub_10005669C(v65);
      sub_1000A4068();
      v58 = v84;
    }

    *(v58 + 16) = v8;
    v66 = v58 + 16 * ObjectType;
    *(v66 + 32) = 0x209186E29386E220;
    *(v66 + 40) = 0xA800000000000000;
    swift_getObjectType();
    if (sub_1000A29F0(v1))
    {
      swift_getObjectType();
      sub_1001F8218();
      sub_1000A40DC();
      if (v27)
      {
        sub_10005669C(v67);
        sub_1000A4068();
        v58 = v90;
      }

      sub_1000A4130();
      ObjectType = v68;
      sub_1001F6C38();
      sub_1000A3E8C();

      v9 = v98;
      if (__OFSUB__(v98, v8))
      {
        goto LABEL_80;
      }

      v69._countAndFlagsBits = sub_1000A40B8();
    }

    else
    {
      v69._countAndFlagsBits = sub_1000A40B8();
      v70 = v98;
    }

    sub_1001F6D78(v69, v70);
    v72 = v71;
    sub_1000A4030();
    if (v27)
    {
      sub_10004B2F4(v73);
      sub_100032370();
      v58 = v86;
    }

    sub_1000A3F58();
    if (v27)
    {
      sub_10005669C(v74);
      sub_1000A4068();
      v58 = v87;
    }

    *(v58 + 16) = v72;
    sub_1000A4154(v58 + 16 * ObjectType);
    v105 = 91;
    v106 = v75;

    v113._countAndFlagsBits = v103;
    v113._object = v56;
    sub_1001F6CA8(v113);

    v114._countAndFlagsBits = 93;
    v114._object = 0xE100000000000000;
    sub_1001F6CA8(v114);
    v76 = v105;
    v77 = v106;
    sub_1000A4030();
    if (v27)
    {
      sub_10004B2F4(v78);
      sub_100032370();
      v58 = v88;
    }

    *(v58 + 16) = &v105;
    v79 = v58 + 16 * v7;
    *(v79 + 32) = v76;
    *(v79 + 40) = v77;
    v105 = v58;
    v80 = sub_1000183C4(&qword_1002ACA10);
    sub_10003A2B4();
    sub_1001F6A68();
    sub_100099864();

    v7 = *(v51 + 16);
    v81 = *(v51 + 24);
    if (v7 >= v81 >> 1)
    {
      sub_10005669C(v81);
      sub_100032370();
      v51 = v89;
    }

    swift_unknownObjectRelease();
    *(v51 + 16) = v7 + 1;
    v82 = v51 + 16 * v7;
    *(v82 + 32) = &v105;
    *(v82 + 40) = v80;
    p_Name += 4;
    --v6;
  }

  while (v6);

LABEL_76:
  v105 = v51;
  sub_1000183C4(&qword_1002ACA10);
  sub_10003A2B4();
  sub_1001F6A68();
  sub_1000A40F4();

  return &v105;
}

void *sub_1000A0F14()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v0;
  v3 = *(v1 + 16);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    while (v3 != *(v2 + 24))
    {
      v5 = ChannelHandlerContext.handler.getter();
      v7 = v6;
      v9 = v3[5];
      v8 = v3[6];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100033474();
        v4 = v13;
      }

      v10 = v4[2];
      if (v10 >= v4[3] >> 1)
      {
        sub_100033474();
        v4 = v14;
      }

      v4[2] = v10 + 1;
      v11 = &v4[4 * v10];
      v11[4] = v5;
      v11[5] = v7;
      v11[6] = v9;
      v11[7] = v8;
      v12 = v3[2];

      v3 = v12;
      if (!v12)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_1000A103C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ChannelPipeline.handler<A>(type:)()
{
  sub_1000A3DBC();
  ChannelPipeline.context<A>(handlerType:)();
  sub_10004794C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_10002E170();
  EventLoopFuture.map<A>(file:line:_:)(v3, v4, v5, 1932, v6, v2, v1);
  sub_1000A3FB8();

  return v0;
}

uint64_t sub_1000A1110@<X0>(void *a1@<X8>)
{
  ChannelHandlerContext.handler.getter();
  sub_1000183C4(&unk_1002BCD10);
  result = swift_dynamicCast();
  if (result)
  {
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(v22 + 16);
  v29 = *(v28 - 8);
  v31 = __chkstk_darwin(v24, v30);
  v33 = &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v34);
  v36 = &a9 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(*(v23 + 24) - 8) + 32))(v27, v36, *(v23 + 24));
  }

  else
  {
    (*(v29 + 32))(v33, v36, v28);
    v25(v33);
    v39 = sub_1000999A8();
    v40(v39);
  }

  sub_1001F8158();
  swift_storeEnumTagMultiPayload();
  sub_100037B00();
}

uint64_t sub_1000A1440()
{
  sub_1000A4080();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  sub_1000A4000();
  if (v14())
  {
    v5(v11, v9 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_1000A40C4();
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v11;
    *(v17 + 32) = v9 & 1;
    v19 = *(v12 + 24);

    v3(v11, v9 & 1);
    v19(v1, v17, ObjectType, v12);
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A15B0()
{
  sub_1000A4080();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  sub_1000A3F74();
  if (v12())
  {
    v3(v9, v7 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_1000A40C4();
    v15 = swift_allocObject();
    *(v15 + 16) = v5;
    *(v15 + 24) = v9;
    *(v15 + 32) = v7 & 1;
    v16 = *(v10 + 24);

    sub_1000A3B30(v9, v7 & 1);
    v16(v1, v15, ObjectType, v10);
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A175C()
{
  sub_1000A409C();
  v1 = v0;
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(v5 + 48);
  ObjectType = swift_getObjectType();
  if ((*(v13 + 16))(ObjectType, v13))
  {
    v4(v12, v10, v8 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000814C0();
  }

  else
  {
    v17 = v8 & 1;
    v18 = swift_allocObject();
    *(v18 + 16) = v6;
    *(v18 + 24) = v12;
    *(v18 + 32) = v10;
    *(v18 + 40) = v17;
    v20 = *(v13 + 24);

    v21(v12, v10, v17);
    v20(v1, v18, ObjectType, v13);
    sub_1000814C0();
  }
}

uint64_t sub_1000A18A4()
{
  sub_1000A4080();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  if ((*(v8 + 16))(ObjectType, v8))
  {
    sub_1001D6750(v7, v5, v3 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v3) & 1) << 56));
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_100047958();
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = v7;
    *(v12 + 32) = v5;
    *(v12 + 46) = BYTE6(v3);
    *(v12 + 44) = WORD2(v3);
    *(v12 + 40) = v3;
    *(v12 + 47) = HIBYTE(v3) & 1;
    v14 = *(v8 + 24);

    sub_1000A3A44(v7, v5, v3, HIBYTE(v3) & 1);
    v14(sub_1000A3A38, v12, ObjectType, v8);
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A1A48()
{
  sub_1000A409C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  if ((*(v10 + 16))(ObjectType, v10))
  {
    sub_1000999A8();
    sub_1001D6830();
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000814C0();
  }

  else
  {
    sub_1000A3FC4();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v9;
    *(v14 + 32) = v7;
    *(v14 + 40) = v5;
    *(v14 + 54) = BYTE6(v3);
    *(v14 + 52) = WORD2(v3);
    *(v14 + 48) = v3;
    *(v14 + 55) = HIBYTE(v3) & 1;
    v18 = *(v10 + 24);

    v15 = sub_1000999A8();
    sub_1000A3938(v15, v16, v5, v3, HIBYTE(v3) & 1);
    v18(sub_1000A392C, v14, ObjectType, v10);
    sub_1000814C0();
  }
}

uint64_t sub_1000A1C10()
{
  sub_1000A4080();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 40);
  swift_getObjectType();
  sub_100070228();
  if (v7())
  {
    sub_1001DBFE8(v5, v3 & 1);
    sub_1000A3D50();
    sub_1000A3C70();
    sub_1000A3DA0();
  }

  else
  {
    sub_1000A40C4();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v5;
    *(v10 + 32) = v3 & 1;
    v11 = *(v6 + 24);
    sub_1000A3B30(v5, v3 & 1);

    sub_1000A3E74();
    v11();
    sub_1000A3DA0();
  }
}

uint64_t sub_1000A1D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, uint64_t, void))
{
  a5(a2, a3, a4 & 1);
  sub_1000A3D50();
  sub_1000A3C70();
}

uint64_t sub_1000A1D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_1001D6750(a2, a3, a4 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(a4) & 1) << 56));
  CallbackList._run()();
  sub_100037408(v4);
}

uint64_t sub_1000A1E10()
{
  v0 = sub_1001D6830();
  CallbackList._run()();
  sub_100037408(v0);
}

uint64_t sub_1000A1E90(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, void))
{
  a4(a2, a3 & 1);
  sub_1000A3D50();
  sub_1000A3C70();
}

uint64_t sub_1000A1F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();

  return sub_1000A1F9C(a1, a2, a3, a4, v8);
}

uint64_t sub_1000A1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 88) = 0;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2;
  *(a5 + 32) = a4;
  swift_getObjectType();
  v8 = sub_1000A29F0(a3);
  if (v8)
  {
    v9 = v7;
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  *(a5 + 56) = v8;
  *(a5 + 64) = v9;
  swift_getObjectType();
  result = sub_1000A29F0(a3);
  if (!result)
  {
    swift_unknownObjectRelease();
    result = 0;
    v11 = 0;
  }

  *(a5 + 72) = result;
  *(a5 + 80) = v11;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  if (*(a5 + 56) | result)
  {
    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();

  return sub_1000A20EC(a1, v7, a3, a4);
}

uint64_t sub_1000A20EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = a1;
  *(a2 + 72) = a4;
  ObjectType = swift_getObjectType();
  *(a2 + 48) = (*(*(a4 + 8) + 80))(ObjectType);
  *(a2 + 56) = v7;
  type metadata accessor for HeadChannelHandler();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  inited = swift_initStaticObject();
  type metadata accessor for ChannelHandlerContext();
  v9 = swift_allocObject();
  *(a2 + 16) = sub_1001DB688(1684104552, 0xE400000000000000, inited, a2, v9);

  type metadata accessor for TailChannelHandler();
  v10 = swift_initStaticObject();
  v11 = swift_allocObject();
  *(a2 + 24) = sub_1001DBFC0(1818845556, 0xE400000000000000, v10, a2, v11);

  if (*(a2 + 16))
  {
    *(*(a2 + 16) + 16) = *(a2 + 24);
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    *(v12 + 24) = *(a2 + 16);
  }

  return a2;
}

uint64_t sub_1000A2528()
{

  swift_unknownObjectRelease();
  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_1000A25AC()
{
  result = qword_1002B2030;
  if (!qword_1002B2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2030);
  }

  return result;
}

uint64_t sub_1000A2600()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A264C()
{

  sub_10006F21C(*(v0 + 32), *(v0 + 40));
  v1 = sub_1000A3D40();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A26E0()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A27C0()
{

  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    sub_100019CCC(v0 + 24);
  }

  else if (v1 == 1)
  {

    if (*(v0 + 56) != 4 && (~*(v0 + 64) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 80))
  {
    sub_1000A3CE4();
    sub_100034300();
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A28CC()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A2978()
{

  sub_100019CCC(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A29F0(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A2A88()
{
  sub_100037B94();

  v2(*(v1 + 24));
  v0(*(v1 + 40));
  v3 = sub_1000A3D40();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000A2B04()
{

  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A2C18()
{

  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    sub_100019CCC(v0 + 24);
  }

  else if (v1 == 1)
  {

    if (*(v0 + 56) != 4 && (~*(v0 + 64) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 80))
  {
    sub_1000A3CE4();
    sub_100034300();
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1000A2CF4()
{

  sub_100019CCC(v0 + 24);
  sub_1000A3FC4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A2D54()
{
  sub_1000A4238();
  v0(*(v1 + 24));
  sub_10004794C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A2DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 56);
  ObjectType = swift_getObjectType();
  result = debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 198, ObjectType, v12);
  if (*(a6 + 40) == 1)
  {
    sub_10002D678();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 3;
    return v15;
  }

  if (!(a5 >> 62))
  {

    v17 = sub_1000A3C1C;
    v19 = a2;
    v20 = a3;
    v21 = a1;
    v22 = a4;
    v18 = a5;
    goto LABEL_7;
  }

  if (a5 >> 62 == 1)
  {

    v17 = sub_1000A3A50;
    v18 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    v19 = a2;
    v20 = a3;
    v21 = a1;
    v22 = a4;
LABEL_7:
    v15 = sub_1000A33A8(v19, v20, v21, v22, v18, v17, a6, a6);
LABEL_14:

    return v15;
  }

  if (a4 | a5 ^ 0x8000000000000000)
  {
    v23 = *(a6 + 24);
    if (v23)
    {

      v24 = sub_1000A3A54;
      goto LABEL_13;
    }
  }

  else
  {
    v23 = *(a6 + 16);
    if (v23)
    {

      v24 = sub_1000A3C20;
LABEL_13:
      v15 = sub_1000A356C(a2, a3, a1, v23, v24, a6, a6);

      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A2FF8()
{
  result = qword_1002B2040;
  if (!qword_1002B2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2040);
  }

  return result;
}

unint64_t sub_1000A307C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000A3098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000A30EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000A314C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelPipelineError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A3294);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000A32C8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A331C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000A339C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000A33A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v15 = *(a8 + 56);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 248, ObjectType, v15);
  if (*(a8 + 40) == 1)
  {
    sub_10002D678();
    v17 = swift_allocError();
    *v18 = 2;
    *(v18 + 8) = 3;
    return v17;
  }

  v19 = *(a8 + 16);
  if (!v19)
  {
LABEL_10:
    sub_1000A25AC();
    v17 = swift_allocError();
    *v23 = 1;
    return v17;
  }

  v20 = *(v19 + 16);

  swift_unknownObjectRetain();
  if (!v20)
  {
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  while (1)
  {
    if (v20 == *(a8 + 24))
    {
      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    v21 = ChannelHandlerContext.handler.getter();
    swift_unknownObjectRelease();
    if (v21 == a4)
    {
      break;
    }

    v22 = *(v20 + 16);

    v20 = v22;
    if (!v22)
    {
      goto LABEL_8;
    }
  }

  swift_unknownObjectRelease();
  v17 = sub_1000A356C(a1, a2, a3, v20, a6, a7, a8);

  return v17;
}

uint64_t sub_1000A356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 56);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 280, ObjectType, v13);
  if (*(a7 + 40) == 1)
  {
    sub_10002D678();
    result = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 3;
  }

  else
  {
    v20 = a5;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      a1 = sub_10009B8A4();
      v17 = v18;
    }

    type metadata accessor for ChannelHandlerContext();

    swift_unknownObjectRetain();

    v19 = sub_1000A1F1C(a1, v17, a3, a7);
    v20(v19, a4);
    sub_10009B954();

    return 0;
  }

  return result;
}

uint64_t sub_1000A379C()
{
  sub_1000A4238();
  sub_1000A3878(*(v1 + 24), *(v1 + 32), v0);
  sub_1000A40C4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A37F0(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A3814()
{
  sub_1000A4238();
  v0(*(v1 + 24), *(v1 + 32), *(v1 + 40));

  return _swift_deallocObject(v1, 41, 7);
}

uint64_t sub_1000A386C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_10003742C(a1);
  }
}

uint64_t sub_1000A3878(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
  }

  else
  {
    return a3();
  }
}

uint64_t sub_1000A3888()
{

  sub_1000A38E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48) | ((*(v0 + 52) | (*(v0 + 54) << 16)) << 32), *(v0 + 55));
  sub_1000A3FC4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A38E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A3938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A399C()
{
  sub_1000A4238();
  v0(*(v1 + 24), *(v1 + 32));
  sub_1000A40C4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A39F0()
{

  v1 = sub_1000A3CE4();
  sub_1000A3A2C(v1, v2, v3, *(v0 + 47));
  v4 = sub_1000A3D40();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000A3A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A3A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A3A58(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000A3AA0()
{
  result = qword_1002B2318[0];
  if (!qword_1002B2318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B2318);
  }

  return result;
}

uint64_t sub_1000A3B30(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000A3B44()
{

  swift_unknownObjectRelease();

  sub_10006F21C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000A3C90(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 3;

  return swift_errorRetain();
}

uint64_t sub_1000A3CC4()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3D24()
{

  return sub_1000A1440();
}

void sub_1000A3D50()
{

  CallbackList._run()();
}

uint64_t sub_1000A3DC8()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3DEC()
{

  return swift_getObjectType();
}

__n128 sub_1000A3E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16[24] = a14;
  *&v16[16] = a13;
  *&v16[8] = a12;
  *v16 = a11;
  *(a1 + 16) = v14;
  *(a1 + 24) = a9;
  *(a1 + 40) = a10;
  *(a1 + 56) = *v16;
  result = *&v16[9];
  *(a1 + 65) = *&v16[9];
  return result;
}

uint64_t sub_1000A3E58()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000A3EF8()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3F18()
{

  return swift_getObjectType();
}

uint64_t sub_1000A3F38()
{

  return swift_getObjectType();
}

void sub_1000A3F58()
{
  *(v3 + 16) = v0;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
}

uint64_t sub_1000A3F80()
{

  return swift_getObjectType();
}

uint64_t sub_1000A4040()
{

  return swift_getObjectType();
}

void sub_1000A4068()
{

  sub_100032370();
}

uint64_t sub_1000A4118()
{

  return swift_getObjectType();
}

uint64_t sub_1000A4130()
{
  *(v3 + 16) = v2;
  v6 = v3 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v4;

  return sub_1001F8218();
}

uint64_t sub_1000A4200()
{

  return swift_getObjectType();
}

uint64_t sub_1000A4220()
{

  return swift_getObjectType();
}

uint64_t sub_1000A4238()
{
}

uint64_t sub_1000A4294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for InAppBuyRoute.AdditionalBuyOptions();
  v11 = v10[11];
  v12 = sub_1001F6508();
  sub_100018460(a5 + v11, 1, 1, v12);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4;
  *(a5 + 24) = a3;

  sub_1000374B8(a5 + v11, &unk_1002B3450);
  sub_100018460(a5 + v11, 1, 1, v12);
  type metadata accessor for OctaneSubscription();
  v13 = swift_dynamicCastClass() != 0;

  *(a5 + v10[12]) = v13;
  *(a5 + v10[13]) = 0;
  return result;
}

__n128 sub_1000A4388(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  sub_1000A6070(v2, v5);
  memcpy(v33, __src, sizeof(v33));
  memcpy(__dst, __src, 0x379uLL);
  if (sub_1000AC5DC(__dst) == 1)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v6 = sub_1001F6688();
    sub_100019C94(v6, qword_1002E6180);
    v7 = sub_1001F6668();
    v8 = sub_1001F7298();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      sub_1000AD6C4();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_1000AD4AC();
    }

    sub_1000B738C(0x7571657220646142, 0xEB00000000747365, 6, v32);
    v21 = v32[0];
    v22 = v32[1];
    v14 = LODWORD(v32[2]) | ((WORD2(v32[2]) | (BYTE6(v32[2]) << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v15 = sub_100021728();
    v16 = sub_1000AD71C(v15);
    sub_10002170C(v16, 21);
  }

  else
  {
    memcpy(v32, __dst, 0x379uLL);
    sub_1000A4A78();
    v7 = v27;
    sub_1000374B8(__src, &qword_1002B23A0);
    v17 = sub_10001AE68(&v23, v24);
    memcpy(v25, v17, 0xD1uLL);
    sub_1001A7288(v25, v2, v27);
    v21 = v27[0];
    v22 = v27[1];
    v14 = v28 | ((v29 | (v30 << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v18 = sub_100021728();
    v19 = sub_1000AD71C(v18);
    sub_10002170C(v19, 3);
    sub_100019CCC(&v23);
  }

  *v4 = v7;
  *(v4 + 8) = _swiftEmptyArrayStorage;
  *(v4 + 16) = 2;
  result = v22;
  *(v4 + 24) = v21;
  *(v4 + 40) = v22;
  *(v4 + 56) = v14;
  *(v4 + 62) = BYTE6(v14);
  *(v4 + 60) = WORD2(v14);
  return result;
}

void sub_1000A4A78()
{
  sub_10001E850();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InAppBuyRoute.AdditionalBuyOptions();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  sub_1000AD8B4();
  v94 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000AC650();
    sub_1000276A0();
    *v29 = 0;
    swift_willThrow();
    goto LABEL_35;
  }

  v13 = Strong;
  v88 = v8;
  v89 = v6;
  v90 = v5;
  sub_10001AE68((v0 + 48), *(v0 + 72));
  v15 = *(v3 + 64);
  v14 = *(v3 + 72);
  swift_bridgeObjectRetain_n();
  sub_10007B9BC();
  v93 = sub_10007961C();
  v91 = v0;
  sub_1000AD62C((v0 + 48), *(v0 + 72));
  v16 = v15;
  v104 = v14;
  sub_1000795A8();
  v17 = *(v3 + 544);
  if (v17 != 2)
  {
    v102 = *(v3 + 552);
    v18 = *(&v102 + 1);
    if (*(&v102 + 1))
    {
      v95 = v102;
      swift_bridgeObjectRelease_n();
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v19 = sub_1001F6688();
      sub_10009951C(v19, qword_1002E6180);
      sub_1000ACFAC();
      sub_1000AD7A0();
      v20 = sub_1001F6668();
      v21 = sub_1001F72B8();
      sub_1000374B8(&v102, &qword_1002AEBE0);
      sub_1000ACE5C(v3);
      v22 = sub_1000AD6D4();
      if (os_log_type_enabled(v22, v23))
      {
        sub_1000AD5E8();
        v24 = swift_slowAlloc();
        sub_1000AD68C();
        *&v97[0] = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_1000E4544(v95, v18, v97);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_1000E4544(v16, v104, v97);
        _os_log_impl(&_mh_execute_header, v20, v21, "Handling did consent to price increase for subscription group: %s; app: %s.", v24, 0x16u);
        swift_arrayDestroy();
        sub_1000AD4AC();

        sub_100021754();
      }

      else
      {
      }

      sub_1000AA580(v17 & 1, v93, v90);
      goto LABEL_17;
    }
  }

  v101 = *(v3 + 136);
  if (!*(&v101 + 1))
  {

    goto LABEL_14;
  }

  v25 = v101;
  v26 = sub_1000EDE14(v101, *(&v101 + 1));

  if (!v26)
  {
LABEL_14:

    sub_1000AC650();
    sub_1000276A0();
    *v30 = 1;
    swift_willThrow();
LABEL_17:
    swift_unknownObjectRelease();
LABEL_18:

    goto LABEL_35;
  }

  v27 = *(v3 + 96);
  if (v27 == 2)
  {
    v28 = v0;
LABEL_24:
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v39 = sub_1001F6688();
    sub_10009951C(v39, qword_1002E6180);
    sub_1000AD7A0();
    sub_1000AD6F8();
    sub_1000ACFAC();
    v40 = sub_1001F6668();
    sub_1001F72B8();
    sub_1000AD8D8();
    sub_1000ACE5C(v3);
    v41 = sub_1000AD6D4();
    if (os_log_type_enabled(v41, v42))
    {
      sub_1000AD5E8();
      v43 = swift_slowAlloc();
      sub_1000AD68C();
      *&v97[0] = swift_slowAlloc();
      *v43 = 136315394;
      v44 = sub_1000E4544(v25, *(&v25 + 1), v97);
      v45 = sub_1000AD6E0(v44);
      *(v43 + 14) = sub_1000E4544(v45, v14, v46);
      _os_log_impl(&_mh_execute_header, v40, &off_1002AC000, "Received confirmed in-app buy request of %s for %s", v43, 0x16u);
      sub_1000AD574();
      swift_arrayDestroy();
      sub_100021754();

      sub_100021754();
    }

    else
    {
    }

    v47 = v93;
    v48 = sub_1000AD87C();
    sub_1000A4294(v48, v49, v26, v50, v51);
    swift_unknownObjectRetain();
    sub_1000AD600();
    v55 = sub_1000A718C(v52, v53, v54, v13);
    swift_unknownObjectRelease();

    (*(v88 + 8))(v94, v6);
    v56 = v90;
    goto LABEL_30;
  }

  v28 = v0;
  if ((v27 & 1) == 0)
  {
    goto LABEL_24;
  }

  v87 = v101;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v31 = sub_1001F6688();
  sub_10009951C(v31, qword_1002E6180);
  sub_1000AD7A0();
  sub_1000AD6F8();
  sub_1000ACFAC();
  v32 = sub_1001F6668();
  v33 = sub_1001F72B8();
  sub_1000374B8(&v101, &qword_1002AEBE0);
  sub_1000ACE5C(v3);
  v34 = sub_1000AD6D4();
  if (os_log_type_enabled(v34, v35))
  {
    sub_1000AD5E8();
    v36 = swift_slowAlloc();
    sub_1000AD68C();
    *&v97[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_1000E4544(v87, *(&v25 + 1), v97);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_1000E4544(v16, v104, v97);
    _os_log_impl(&_mh_execute_header, v32, v33, "Received initial in-app buy request of %s for %s", v36, 0x16u);
    sub_1000AD574();
    swift_arrayDestroy();
    sub_100021754();

    sub_100099474();

    v37 = v90;
    v28 = v91;
    v38 = v13;
  }

  else
  {

    v38 = v13;
    v37 = v90;
  }

  v47 = v93;
  v55 = v28;
  sub_1000A61A8(v3, v38);
  if (v1)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {
      if (v96 == 7)
      {

        sub_1000AD7A0();
        sub_1000AD6F8();
        sub_1000ACFAC();
        v55 = sub_1001F6668();
        v64 = sub_1001F72B8();
        sub_1000374B8(&v101, &qword_1002AEBE0);
        sub_1000ACE5C(v3);
        if (os_log_type_enabled(v55, v64))
        {
          sub_1000AD524();
          v63 = swift_slowAlloc();
          *&v97[0] = swift_slowAlloc();
          *v63 = 136315650;
          v92 = v64;

          v70 = sub_1000AD850();
          sub_1000E4544(v70, v71, v72);

          v73 = sub_1000AD7B8();
          *(v63 + 24) = sub_1000AD744(v73);
          v69 = "Handling request for ineligible winback offer %s for %s and app %s.";
          goto LABEL_47;
        }

LABEL_48:

        v47 = v93;
        sub_1000AA424(v93, &v98);

        v56 = v90;
        goto LABEL_49;
      }

      if (v96 == 4)
      {

        sub_1000AD7A0();
        sub_1000AD6F8();
        sub_1000ACFAC();
        v55 = sub_1001F6668();
        v62 = sub_1001F72B8();
        sub_1000374B8(&v101, &qword_1002AEBE0);
        sub_1000ACE5C(v3);
        if (os_log_type_enabled(v55, v62))
        {
          sub_1000AD524();
          v63 = swift_slowAlloc();
          *&v97[0] = swift_slowAlloc();
          *v63 = 136315650;
          v92 = v62;

          v65 = sub_1000AD850();
          sub_1000E4544(v65, v66, v67);

          v68 = sub_1000AD7B8();
          *(v63 + 24) = sub_1000AD744(v68);
          v69 = "Handling request for in-eligible ad-hoc offer %s for %s and app %s.";
LABEL_47:
          _os_log_impl(&_mh_execute_header, v55, v92, v69, v63, 0x20u);
          swift_arrayDestroy();
          sub_1000AD4AC();

          sub_100021754();

          goto LABEL_48;
        }

        goto LABEL_48;
      }
    }

    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  sub_10002DD3C(v97, &v98);
  v56 = v37;
LABEL_49:
  if (v47)
  {
    v74 = *(sub_10001AE68(&v98, v99) + 176);
    if (v74 != 22)
    {
      v75 = 53;
      v76 = sub_100087BE0(v74);
      v55 = v77;
      if (v76 == 892416309 && v77 == 0xE400000000000000)
      {
      }

      else
      {
        v75 = sub_1001F7EA8();

        if ((v75 & 1) == 0)
        {

LABEL_62:
          v47 = v93;
          goto LABEL_30;
        }
      }

      sub_1000AD7A0();
      sub_1000AD6F8();
      sub_1000ACFAC();
      v79 = sub_1001F6668();
      sub_1001F72B8();
      sub_1000AD8D8();
      sub_1000ACE5C(v3);
      if (os_log_type_enabled(v79, v75))
      {
        sub_1000AD5E8();
        v80 = swift_slowAlloc();
        sub_1000AD68C();
        *&v97[0] = swift_slowAlloc();
        *v80 = 136315394;
        v81 = sub_1000E4544(v87, *(&v25 + 1), v97);
        v82 = sub_1000AD6E0(v81);
        *(v80 + 14) = sub_1000E4544(v82, v104, v83);
        _os_log_impl(&_mh_execute_header, v25, v75, "Simulating confirmed in-app buy request of %s for %s because dialogs are disabled.", v80, 0x16u);
        sub_1000AD574();
        swift_arrayDestroy();
        sub_100021754();

        sub_100021754();
      }

      v84 = sub_1000AD87C();
      sub_1000A4294(v84, v85, v26, 1, v86);
      v55 = v28;

      (*(v88 + 8))(v94, v89);
      sub_100019CCC(&v98);
      sub_10002DD3C(v97, &v98);
      v56 = v90;
      goto LABEL_62;
    }
  }

LABEL_30:
  memcpy(v103, (v3 + 576), 0x139uLL);
  if (sub_1000AC6F8(v103) != 1)
  {
    v57 = v103[312];
    sub_1000AD62C((v28 + 88), *(v28 + 112));
    v58 = *(*(v55 + 128) + 16);

    os_unfair_lock_lock(v58);
    *(v55 + 112) = v57 & 1;
    v59 = v58;
    v47 = v93;
    os_unfair_lock_unlock(v59);
  }

  if (v47)
  {
    v60 = v99;
    v61 = v100;
    sub_10004BD98(&v98, v99);
    (*(v61 + 112))(0, v60, v61);
  }

  swift_unknownObjectRelease();

  sub_10002DD3C(&v98, v56);
LABEL_35:
  sub_10001E868();
}

void sub_1000A577C()
{
  sub_10001E850();
  v96 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v90 = v8;
  v91 = v9;
  v11 = v10;
  v13 = v12;
  v84 = type metadata accessor for PromotionalOfferData(0);
  sub_100023520();
  __chkstk_darwin(v14, v15);
  sub_100023510();
  v83 = v17 - v16;
  v18 = sub_1000183C4(&qword_1002B23D8);
  v19 = sub_100056658(v18);
  v21 = __chkstk_darwin(v19, v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  sub_1000AD704();
  v92 = v25;
  sub_1000AD62C((v0 + 48), *(v0 + 72));
  v89 = sub_10007935C();
  v95 = v26;
  v27 = sub_1000AD680();
  sub_1000AD62C(v27, v28);
  sub_10007992C();
  v86 = v99[2];
  v87 = v99[1];
  v85 = v99[3];
  v88 = v100;
  v29 = sub_1000AD680();
  sub_1000AD62C(v29, v30);
  v93 = v7;
  v94 = v5;
  sub_10007A340();
  memcpy(v108, v101, sizeof(v108));
  type metadata accessor for OctaneSubscription();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v92 = 0;
    v38 = 0;
LABEL_24:

    v59 = v94;

    v60 = sub_100197CC4();
    v80 = v61;
    sub_1000ACFA4(v98);
    sub_10019814C();
    v81 = v62;
    v63 = sub_1000AD680();
    sub_1000AD62C(v63, v64);
    v65 = v93;
    v66 = sub_10007A5F0();

    v67 = v90;
    swift_unknownObjectRetain();

    v69 = v91;
    v68 = v92;
    *v13 = v67;
    *(v13 + 8) = v69;
    *(v13 + 16) = v68;
    *(v13 + 24) = v38;
    v70 = v89;
    *(v13 + 32) = v84;
    *(v13 + 40) = v70;
    *(v13 + 48) = v95;
    *(v13 + 56) = v65;
    *(v13 + 64) = v59;
    *(v13 + 72) = v60;
    *(v13 + 80) = v80;
    *(v13 + 88) = v3;
    v72 = v86;
    v71 = v87;
    *(v13 + 96) = v83;
    *(v13 + 104) = v71;
    v73 = v85;
    *(v13 + 112) = v72;
    *(v13 + 120) = v73;
    *(v13 + 128) = v88;
    memcpy((v13 + 144), v108, 0x50uLL);
    memcpy((v13 + 224), v98, 0x90uLL);
    *(v13 + 368) = v81;
    *(v13 + 376) = v66;
    *(v13 + 377) = v82;
    goto LABEL_25;
  }

  v32 = v31;
  v33 = v11[51];
  v34 = v11;
  if (!v33 || v11[57] || v11[53] || v11[55] || v11[59])
  {

    v35 = 0;
    v36 = v92;
  }

  else
  {
    v74 = v11[50];

    v98[0] = v74;
    v98[1] = v33;

    sub_1000AD600();
    v75 = v96;
    sub_1000A5F90(v76, v77, v78, v79);
    v36 = v92;
    if (v75)
    {

      *(v34 + 288) = sub_1000AD81C();
      sub_10001C838(&v107);
      *(v34 + 272) = *(v34 + 16);
      sub_10001C838(&v106);
      v105 = *(&v100 + 1);
      sub_1000374B8(&v105, &qword_1002ACA10);
      sub_10001C7E4(v101);
      swift_bridgeObjectRelease_n();

      goto LABEL_25;
    }

    v96 = 0;
    swift_bridgeObjectRelease_n();
    v35 = v97;
  }

  v37 = v96;
  sub_1001976E0(0, v36);
  if (!v37)
  {
    sub_1000ACFAC();
    if (sub_10001C990(v23, 1, v84) == 1)
    {
      sub_1000374B8(v36, &qword_1002B23D8);
      v39 = 0;
    }

    else
    {
      sub_1000AD530();
      v40 = v83;
      sub_1000ACE04();
      sub_1000AD600();
      sub_1000A5F18(v41, v42);
      sub_1000AD434();
      sub_1000ACCEC(v40, v43);
      sub_1000374B8(v36, &qword_1002B23D8);
      v39 = v98[0];
    }

    v44 = *(v34 + 536);
    v92 = v39;
    if (v44)
    {
      v98[0] = *(v34 + 528);
      v98[1] = v44;

      sub_1000AD600();
      sub_1000A5F90(v45, v46, v47, v48);

      v49 = v97;
    }

    else
    {
      v49 = 0;
    }

    v84 = v35;
    v81 = v49;
    v99[0] = v49;
    if (v32[17])
    {
      v97 = v32[17];

      sub_1000A6000(&v97, v99, v32, v34, v98);

      v83 = v98[0];
    }

    else
    {
      v83 = 0;
    }

    v50 = v32;
    v96 = 0;
    v51 = sub_1000AD4F0();
    sub_10001AE68(v51, v52);
    sub_1000183C4(&qword_1002AC7E0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1001FE9E0;
    v54 = v50[25];
    *(v53 + 32) = v50[24];
    *(v53 + 40) = v54;

    sub_10008B3C8();
    v56 = v55;
    swift_setDeallocating();
    sub_1001E56B4();
    v57 = sub_10013B560(v56);
    v58 = v57 != 0;
    if (v57)
    {
      sub_1001C19A8(0, (v56 & 0xC000000000000001) == 0, v56);
      if ((v56 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
        swift_unknownObjectRelease();
      }
    }

    v38 = v81;
    v82 = v58;
    goto LABEL_24;
  }

  *(v34 + 240) = sub_1000AD81C();
  sub_10001C838(&v104);
  *(v34 + 224) = *(v34 + 16);
  sub_10001C838(&v103);
  v102 = *(&v100 + 1);
  sub_1000374B8(&v102, &qword_1002ACA10);
  sub_10001C7E4(v101);

LABEL_25:
  sub_10001E868();
}

void sub_1000A5F18(uint64_t *a1@<X4>, void *a2@<X8>)
{
  sub_1000AB928();
  v6 = v5;
  if (v2)
  {
    sub_1000AC650();
    v7 = swift_allocError();
    *v8 = v6;
    *a1 = v7;
  }

  else
  {
    *a2 = v5;
  }
}

uint64_t sub_1000A5F90@<X0>(void *a1@<X0>, uint64_t *a2@<X5>, uint64_t (*a3)(void, void)@<X6>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1]);
  v8 = result;
  if (v4)
  {
    sub_1000AC650();
    result = sub_1000276A0();
    *v9 = v8;
    *a2 = result;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1000A6000@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v6 = *result;
  if (!*a2 || *(*a2 + 104) == 1) && (result = sub_1000AAD88(a3, a4), (result))
  {
    *a5 = v6;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void *sub_1000A6070(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  sub_1001F0068(__src);
  memcpy(__dst, __src, 0x379uLL);
  if (sub_1000AC5DC(__dst) != 1)
  {
    v5 = *(v2 + 48);

    sub_1000E32F8(v5, v12);
    debugOnly(_:)(v12, v6, v7, v8, v9, v10);
    memcpy(v13, &__src[576], 0x139uLL);
    sub_1000374B8(v13, &qword_1002ADF78);
    memcpy(&__src[576], v12, 0x139uLL);
  }

  memcpy(v12, __src, 0x379uLL);
  memcpy(v13, __src, 0x379uLL);
  sub_1000ACFAC();
  sub_1000374B8(v13, &qword_1002B23A0);
  return memcpy(v4, v12, 0x379uLL);
}

void sub_1000A61A8(uint64_t a1, uint64_t a2)
{
  v3 = __chkstk_darwin(a1, a2);
  v4 = v2;
  v119 = v5;
  v133 = v6;
  v128 = v7;
  v121 = v8;
  v9 = v3;
  v11 = v10;
  v12 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v12);
  sub_10001E844();
  __chkstk_darwin(v13, v14);
  sub_1000AD8B4();
  v118 = v15;
  sub_1000AD8A8();
  v130 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v16, v17);
  sub_100023510();
  v127 = v9;
  sub_1001983D4();
  if (v18)
  {
    v117 = v11;
    type metadata accessor for OctaneSubscription();
    sub_1000AD710();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      goto LABEL_24;
    }

    v115 = v19;
    v20 = sub_1000AD4F0();
    sub_10001AE68(v20, v21);
    sub_1000AD710();

    sub_1001F64E8();
    v22 = sub_10008D53C();
    v23 = sub_1000AD870();
    v25 = v24;
    v24(v23);
    if (!v22)
    {
      goto LABEL_17;
    }

    sub_1000C5464(4);
    if ((v26 & 1) != 0 || (v112 = v22, *(v127 + 408)) || *(v127 + 536))
    {

LABEL_18:
      v44 = sub_1000AD4F0();
      sub_10001AE68(v44, v45);
      sub_1000AD710();

      sub_1001F64E8();
      v46 = sub_1000F04DC(v115, v128, v133, 1);
      v47 = sub_1000AD870();
      v25(v47);
      if (v46)
      {
        v48 = sub_1000AD680();
        sub_10001AE68(v48, v49);
        v50 = sub_1000BFC14();
        v52 = v51;
        sub_1000795A8();
        v53 = sub_1000EE5B8(v50, v52);

        if (v53)
        {
          sub_1000A577C();
          if (v2)
          {

            return;
          }

          v57 = v180;
          memcpy(v137, v182, 0x90uLL);
          v58 = swift_dynamicCastClass();
          if (v58)
          {
            v59 = v58;
            v130 = v181[0];
            v60 = v181[1];
            v126 = v181[2];
            v61 = v181[3];
            v62 = v181[4];
            v205 = v57;

            sub_1000374B8(&v205, &qword_1002AD560);
            memcpy(v139, &v181[5], 0x50uLL);
            memcpy(&v135[8], &v181[5], 0x50uLL);
            v135[0] = v46;
            v135[1] = v53;
            v135[2] = v130;
            v135[3] = v60;
            v135[4] = v126;
            v135[5] = v61;
            v135[6] = v62;
            v135[7] = v59;
            debugOnly(_:)(v135, v63, v64, v65, v66, v67);
            memcpy(v141, v182, 0x90uLL);

            sub_10007B844(v139, &v140);
            v68 = v46;

            sub_1000374B8(v141, &qword_1002B1910);
            memcpy(v137, v135, 0x90uLL);
            v57 = 0;
          }

          memcpy(v211, v179, sizeof(v211));
          v212 = v57;
          memcpy(v213, v181, sizeof(v213));
          memcpy(v214, v137, sizeof(v214));
          v215 = v183;
          v216 = v184;
          sub_1000ACEF4(v211, v141);
          sub_100056C08(v211, v185);

          memcpy(v141, v179, 0x60uLL);
          *&v141[6] = v57;
          memcpy(&v141[6] + 8, v181, 0x78uLL);
          memcpy(&v141[14], v137, 0x90uLL);
          v142 = v183;
          v143 = v184;
          sub_1000ACF50(v141);
          v148 = v185[0];
          v149 = v185[1];
          v150 = v185[2];
          v147 = v186;
          v146[0] = v187[0];
          *(v146 + 3) = *(v187 + 3);
          v125 = v188;
          sub_1000AD978(v189);
          v120 = v190;
          v144[0] = *v191;
          *(v144 + 3) = *&v191[3];
          v113 = v192;
          v56 = v193;
          v116 = v194;
          v55 = v133;
          v54 = v127;
          goto LABEL_29;
        }
      }

      v4 = v2;
LABEL_24:
      v54 = v127;
      v55 = v133;
      sub_1000A577C();
      if (v4)
      {
        return;
      }

      sub_100056C08(&v195, v196);
      v148 = v196[0];
      v149 = v196[1];
      v150 = v196[2];
      v146[0] = v197[0];
      *(v146 + 3) = *(v197 + 3);
      v125 = v198;
      sub_1000AD978(v199);
      v120 = v200;
      v144[0] = *v201;
      *(v144 + 3) = *&v201[3];
      v113 = v202;
      v56 = v203;
      v116 = v204;
LABEL_29:
      memcpy(v217, v54 + 72, 0x139uLL);
      v123 = v56;
      if (sub_1000AC6F8(v217) == 1)
      {
        v69 = 0;
        v70 = 0;
        v71 = v128;
        v72 = v130;
LABEL_37:
        v131 = v72;
        v75 = v71;
        v76 = v69;
        v77 = sub_1000AA1A4(v75, v55, v69, v70);
        sub_100037408(v76);

        v78 = v77[2];
        v147 = 0;
        v141[0] = v148;
        v141[1] = v149;
        v141[2] = v150;
        v129 = v78;
        *&v141[3] = v78;
        BYTE8(v141[3]) = 0;
        *(&v141[3] + 9) = v146[0];
        HIDWORD(v141[3]) = *(v146 + 3);
        v134 = v77;
        *&v141[4] = v77;
        *(&v141[4] + 1) = v125;
        *&v141[5] = v72;
        memcpy(&v141[5] + 8, v145, 0x58uLL);
        v35 = v120;
        LOBYTE(v141[11]) = v120;
        *(&v141[11] + 1) = v144[0];
        DWORD1(v141[11]) = *(v144 + 3);
        v40 = v113;
        *(&v141[11] + 8) = v113;
        *(&v141[12] + 1) = v123;
        v37 = v116;
        LOBYTE(v141[13]) = v116;
        v117[3] = &type metadata for LegacyInAppBuyResponse;
        v117[4] = sub_1000AC7BC();
        sub_1000AD4FC();
        v79 = swift_allocObject();
        *v117 = v79;
        sub_100057E10(v141, v137);
        sub_100037408(v76);
        v80 = (v79 + 16);
        v36 = v123;
        v34 = *(&v113 + 1);
        memcpy(v80, v141, 0xD1uLL);
        v39 = 0;
        goto LABEL_38;
      }

      if (v217[312])
      {

        v71 = v128;
        v72 = v130;
      }

      else
      {
        sub_1000AD5DC();
        sub_1001F7EA8();
        sub_1000AD8C0();

        v71 = v128;
        v72 = v130;
        if ((v56 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v73 = v54[63];
      if (v73)
      {
        sub_1000AA9A4(v54[62], v73);
        v70 = v74;

        v69 = sub_1000AC7B0;
        goto LABEL_37;
      }

LABEL_36:
      v69 = 0;
      v70 = 0;
      goto LABEL_37;
    }

    v41 = sub_1000C1570();
    if (!v42)
    {
LABEL_16:

LABEL_17:

      goto LABEL_18;
    }

    if (v41 == *(v115 + 80) && v42 == *(v115 + 88))
    {
    }

    else
    {
      v111 = sub_1001F7EA8();

      if ((v111 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    memcpy(v139, (v127 + 576), sizeof(v139));
    v81 = *(v127 + 888);
    memcpy(v141, (v127 + 576), 0x138uLL);
    BYTE8(v141[19]) = v81;
    if (sub_1000AC6F8(v141) != 1)
    {
      if (BYTE8(v141[19]))
      {
        sub_1000AD44C();
        sub_1001F7EA8();
        sub_1000AD8C0();

        if ((v141 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      v82 = sub_1000AD4F0();
      sub_10001AE68(v82, v83);
      sub_100018460(v118, 1, 1, v130);
      sub_10008C1B4();
      v85 = v84;
      sub_1000374B8(v118, &unk_1002B3450);
      sub_1000C23D8(3u);
      v86 = sub_1000C5458(25);
      sub_1000C21C8(v86, v87 & 1);
      sub_1000C398C(v81 & 1);
      v88 = sub_1000AD4F0();
      sub_1000AD62C(v88, v89);
      sub_10008EA08(v85, 0);
    }

LABEL_47:
    sub_1001F6418();
    if (qword_1002AC410 != -1)
    {
      swift_once();
    }

    v90 = qword_1002AE9E8;
    isa = sub_1001F6478().super.isa;
    v92 = [v90 stringFromDate:isa];

    v110 = sub_1001F6B58();
    v114 = v93;

    v94 = sub_1000AD870();
    v25(v94);
    sub_1000A577C();
    if (v2)
    {

      return;
    }

    v95 = v163[11];
    sub_1001E84A8();
    v96 = *(v95 + 112);
    v97 = v168;
    if (v168 <= 1)
    {
      v97 = 1;
    }

    if (v96 == 3)
    {
      v98 = 1;
    }

    else
    {
      v98 = v97;
    }

    sub_1001F7478(v96, v98);
    sub_1001F7438();
    memcpy(v209, v167, sizeof(v209));
    v206 = v164;
    v207 = v165;
    v208 = v166;
    sub_1000AD87C();
    v99 = sub_10004B450();
    v132 = v100;
    sub_1000ACF50(v163);
    memcpy(v137, v139, sizeof(v137));
    v138 = v81;
    v101 = sub_1000AC6F8(v137) != 1;
    v102 = v101 & v138;

    swift_unknownObjectRetain();

    sub_100056D28(v128, v133, v110, v114, v99, v132, v119 & 1, v169, v121, v102);
    v148 = v169[0];
    v149 = v169[1];
    v150 = v169[2];
    v147 = v170;
    v146[0] = v171[0];
    *(v146 + 3) = *(v171 + 3);
    v103 = v172;
    v130 = v173;
    memcpy(v145, v174, sizeof(v145));
    v144[0] = *v175;
    *(v144 + 3) = *&v175[3];
    v113 = v176;
    v124 = v177;
    v116 = v178;
    memcpy(v135, v139, sizeof(v135));
    v136 = v81;
    v55 = v133;
    v120 = v174[88];
    if (sub_1000AC6F8(v135) == 1)
    {
      v125 = v103;

      v56 = v124;
      v54 = v127;
      goto LABEL_29;
    }

    v54 = v127;
    if (v136)
    {
      sub_1000AD44C();
      sub_1001F7EA8();
      sub_1000AD8C0();

      if ((v135 & 1) == 0)
      {
        v125 = v103;

LABEL_63:
        v56 = v124;
        goto LABEL_29;
      }
    }

    else
    {
    }

    sub_1000AA3A8(v127);
    v105 = v104;
    v107 = v106;

    v108 = sub_1000AD870();
    sub_10003A36C(v108, v109);
    v125 = v105;
    v130 = v107;
    goto LABEL_63;
  }

  sub_100056A98(0, &v151);
  v210 = v161;
  v148 = sub_1000AD83C();
  v149 = v27;
  v150 = v152;
  v28 = v153;
  v29 = v154;
  v146[0] = *v155;
  *(v146 + 3) = *&v155[3];
  v30 = v156;
  v31 = v157;
  v125 = v157;
  v32 = v158;
  memcpy(v145, v159, sizeof(v145));
  v144[0] = *v160;
  *(v144 + 3) = *&v160[3];
  v122 = v162;
  sub_1000374B8(&v210, &qword_1002AEBE0);
  v141[0] = sub_1000AD83C();
  v141[1] = v33;
  v141[2] = v152;
  v129 = v28;
  v131 = v32;
  *&v141[3] = v28;
  BYTE8(v141[3]) = v29;
  LOBYTE(v28) = v29;
  *(&v141[3] + 9) = *v155;
  HIDWORD(v141[3]) = *&v155[3];
  v134 = v30;
  *&v141[4] = v30;
  *(&v141[4] + 1) = v31;
  *&v141[5] = v32;
  v34 = 0x8000000100226B10;
  memcpy(&v141[5] + 8, v159, 0x58uLL);
  v35 = 3;
  LOBYTE(v141[11]) = 3;
  v36 = v122;
  *(&v141[11] + 1) = *v160;
  DWORD1(v141[11]) = *&v160[3];
  *(&v141[11] + 1) = 0xD000000000000011;
  *&v141[12] = 0x8000000100226B10;
  *(&v141[12] + 1) = v122;
  v37 = 1;
  LOBYTE(v141[13]) = 1;
  v11[3] = &type metadata for LegacyInAppBuyResponse;
  v11[4] = sub_1000AC7BC();
  sub_1000AD4FC();
  v38 = swift_allocObject();
  *v11 = v38;
  memcpy((v38 + 16), v141, 0xD1uLL);
  sub_100057E10(v141, v137);
  v39 = v28;
  v40 = 0xD000000000000011;
LABEL_38:
  v141[0] = v148;
  v141[1] = v149;
  v141[2] = v150;
  *&v141[3] = v129;
  BYTE8(v141[3]) = v39;
  *(&v141[3] + 9) = v146[0];
  HIDWORD(v141[3]) = *(v146 + 3);
  *&v141[4] = v134;
  *(&v141[4] + 1) = v125;
  *&v141[5] = v131;
  memcpy(&v141[5] + 8, v145, 0x58uLL);
  LOBYTE(v141[11]) = v35;
  *(&v141[11] + 1) = v144[0];
  DWORD1(v141[11]) = *(v144 + 3);
  *(&v141[11] + 1) = v40;
  *&v141[12] = v34;
  *(&v141[12] + 1) = v36;
  LOBYTE(v141[13]) = v37;
  sub_100057E48(v141);
}