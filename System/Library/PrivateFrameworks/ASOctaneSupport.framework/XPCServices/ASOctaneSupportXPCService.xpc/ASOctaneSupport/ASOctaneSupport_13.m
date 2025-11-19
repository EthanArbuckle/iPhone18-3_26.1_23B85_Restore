uint64_t sub_1000EF390()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000EF3F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EF440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000EF490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002AC7F0);
    sub_1000EFA00();
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EF510()
{
  result = qword_1002B3F58;
  if (!qword_1002B3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F58);
  }

  return result;
}

uint64_t sub_1000EF564(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B3F10);
    sub_1000EFA00();
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EF5E4()
{
  result = qword_1002B3F78;
  if (!qword_1002B3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F78);
  }

  return result;
}

uint64_t sub_1000EF638(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for OctaneConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1000EF74CLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000EF788()
{
  result = qword_1002B3F88;
  if (!qword_1002B3F88)
  {
    sub_100019BC4(&qword_1002B3F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F88);
  }

  return result;
}

unint64_t sub_1000EF7F0()
{
  result = qword_1002B3F98;
  if (!qword_1002B3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F98);
  }

  return result;
}

unint64_t sub_1000EF848()
{
  result = qword_1002B3FA0;
  if (!qword_1002B3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3FA0);
  }

  return result;
}

unint64_t sub_1000EF8A0()
{
  result = qword_1002B3FA8;
  if (!qword_1002B3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3FA8);
  }

  return result;
}

double sub_1000EF9EC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t sub_1000EFA00()
{

  return sub_1000EF638(v1, 255, v0);
}

uint64_t sub_1000EFA20()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000EFA40()
{

  return sub_1001F7808();
}

uint64_t sub_1000EFA58()
{
  sub_100037B94();
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  if (sub_1001F6D58(v6))
  {
    v0 = sub_10007B9BC();
    v5 = sub_1000F5CC4(v0, v1);
  }

  else
  {
    v2 = sub_10007B9BC();
    v5 = sub_1000F5CC4(v2, v3);
    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    sub_1001F6CA8(v7);
  }

  v8._countAndFlagsBits = sub_100037B7C();
  sub_1001F6CA8(v8);
  return v5;
}

void *sub_1000EFAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_100056A98(0, __src);
  v22 = v19;
  v21 = v18;
  v12 = v20;
  sub_1000374B8(&v21, &qword_1002AEBE0);
  type metadata accessor for PurchaseEngagementDialog();
  swift_allocObject();
  v13 = sub_1000FDB8C(a1, a2, a3, a4, a5);
  sub_1000374B8(&v22, &qword_1002AF480);
  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = 19;
  *(&__dst[22] + 1) = *v17;
  HIDWORD(__dst[22]) = *&v17[3];
  __dst[23] = 0xD000000000000022;
  __dst[24] = 0x8000000100225080;
  __dst[25] = v13;
  LOBYTE(__dst[26]) = v12;
  memcpy(v24, __src, 0xB0uLL);
  v24[176] = 19;
  *v25 = *v17;
  *&v25[3] = *&v17[3];
  v26 = 0xD000000000000022;
  v27 = 0x8000000100225080;
  v28 = v13;
  v29 = v12;
  sub_100057E10(__dst, &v15);
  sub_100057E48(v24);
  return memcpy(a6, __dst, 0xD1uLL);
}

uint64_t sub_1000EFC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  v5 = sub_1000183C4(&qword_1002B4148);
  __chkstk_darwin(v5, v6);
  v89 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v91 = (&v81 - v10);
  v92 = type metadata accessor for PurchaseConfiguration();
  __chkstk_darwin(v92, v11);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v87 = (&v81 - v15);
  __chkstk_darwin(v16, v17);
  v19 = &v81 - v18;
  __chkstk_darwin(v20, v21);
  v23 = (&v81 - v22);
  __chkstk_darwin(v24, v25);
  v27 = &v81 - v26;
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v28 = sub_1001F6688();
  sub_100019C94(v28, qword_1002E6180);
  sub_100103950();
  sub_100103950();
  v29 = sub_1001F6668();
  v30 = sub_1001F72B8();
  v31 = os_log_type_enabled(v29, v30);
  v90 = v5;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v84 = v19;
    v33 = v32;
    v83 = swift_slowAlloc();
    v93[0] = v83;
    *v33 = 136315394;
    v82 = v29;
    LODWORD(v81) = v30;
    v35 = *(v27 + 2);
    v34 = *(v27 + 3);

    sub_1001039A8(v27, type metadata accessor for PurchaseConfiguration);
    v36 = v35;
    v3 = v2;
    v37 = sub_1000E4544(v36, v34, v93);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v38 = *v23;
    v39 = v23[1];

    sub_1001039A8(v23, type metadata accessor for PurchaseConfiguration);
    v40 = sub_1000E4544(v38, v39, v93);

    *(v33 + 14) = v40;
    v41 = v82;
    _os_log_impl(&_mh_execute_header, v82, v81, "Will run simulated off device purchase of %s for %s", v33, 0x16u);
    swift_arrayDestroy();

    v19 = v84;
  }

  else
  {

    sub_1001039A8(v23, type metadata accessor for PurchaseConfiguration);
    sub_1001039A8(v27, type metadata accessor for PurchaseConfiguration);
  }

  sub_10001AE68((v95 + 48), *(v95 + 72));
  v42 = *(a1 + 16);
  v43 = *(a1 + 24);
  sub_1000795A8();
  v44 = sub_1000EDE14(v42, v43);

  if (!v44)
  {
    sub_1000AC650();
    swift_allocError();
    *v61 = 1;
    return swift_willThrow();
  }

  sub_100103950();
  v45 = v92;
  v46 = *(v92 + 44);
  v47 = *(&v46->isa + v19);
  v85 = v3;
  if (v47 == 3 || (v48 = &v19[*(v92 + 40)], (v49 = *(v48 + 1)) == 0) || v47 != 1 || (v50 = *v48, v51 = *(v95 + 72), v81 = &v19[*(v92 + 40)], v82 = v46, sub_10001AE68((v95 + 48), v51), v52 = *(v19 + 2), v53 = *(v19 + 3), sub_1000795A8(), v54 = sub_1000EE5B8(v52, v53), , v45 = v92, !v54))
  {
LABEL_28:
    v66 = v45;
    v67 = v87;
    sub_100103950();

    sub_10019724C(v67, v44, v94);
    v68 = v88;
    sub_100103950();
    v69 = v90;
    v70 = *(v90 + 44);
    v71 = sub_1001F6508();
    v72 = v89;
    sub_100018460(&v89[v70], 1, 1, v71);
    v73 = v68[1];
    *v72 = *v68;
    *(v72 + 1) = v73;
    v72[16] = 1;
    *(v72 + 3) = v44;
    v74 = *(v66 + 32);

    sub_1001033F4(v68 + v74, &v72[v70]);
    v75 = *(v68 + *(v66 + 48));
    sub_1001039A8(v68, type metadata accessor for PurchaseConfiguration);
    if (v75 == 2)
    {
      type metadata accessor for OctaneSubscription();
      LOBYTE(v75) = swift_dynamicCastClass() != 0;
    }

    v72[*(v69 + 48)] = v75 & 1;
    v72[*(v69 + 52)] = 1;
    v76 = v91;
    sub_1000ACDAC();
    v77 = sub_1000F057C(v93, v94, v76, 0);
    sub_1000ACE5C(v94);
    sub_1000374B8(v76, &qword_1002B4148);
    if (v77)
    {

      v78 = v86;
      sub_100026064(v93, v86);
      *(v78 + 40) = v77;
    }

    else
    {
      v79 = *(sub_10001AE68(v93, v93[3]) + 176);
      if (v79 == 22)
      {
        type metadata accessor for OctaneError();
        sub_1001038BC(&qword_1002B09C8, type metadata accessor for OctaneError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_1001032F0();
        swift_allocError();
        *v80 = v79;
      }

      swift_willThrow();
    }

    sub_1001039A8(v19, type metadata accessor for PurchaseConfiguration);
    return sub_100019CCC(v93);
  }

  v55 = *(v54 + 152);

  result = sub_10013B560(v55);
  v57 = 0;
  v83 = v55 & 0xC000000000000001;
  v84 = result;
  while (1)
  {
    if (v84 == v57)
    {

      goto LABEL_27;
    }

    if (v83)
    {
      v58 = v19;
      result = sub_1001F7808();
      v59 = result;
    }

    else
    {
      if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v58 = v19;
      v59 = *(v55 + 8 * v57 + 32);
    }

    if (__OFADD__(v57, 1))
    {
      break;
    }

    v60 = v59[10] == v50 && v49 == v59[11];
    if (v60 || (sub_1001F7EA8() & 1) != 0)
    {

      v63 = v59[2];
      v62 = v59[3];

      v64 = v81;
      v65 = v82;
      *v81 = v63;
      *(v64 + 1) = v62;
      v19 = v58;
      *(&v65->isa + v58) = 1;
LABEL_27:
      v45 = v92;
      goto LABEL_28;
    }

    ++v57;
    v19 = v58;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000F04DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  v4 = sub_10008B260();

  return v4;
}

char *sub_1000F057C(uint64_t *a1, uint64_t *a2, char **a3, uint64_t a4)
{
  v330 = a4;
  v362 = a2;
  v353 = a1;
  v6 = type metadata accessor for IAPTransaction();
  v334 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v304 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F6578();
  v329 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v328 = &v304 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_1000183C4(&qword_1002B2000);
  __chkstk_darwin(v322, v13);
  v321 = &v304 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v320 = &v304 - v17;
  v319 = sub_1000183C4(&qword_1002B2008);
  __chkstk_darwin(v319, v18);
  v324 = &v304 - v19;
  v20 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v20 - 8, v21);
  v323 = (&v304 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23, v24);
  v340 = &v304 - v25;
  __chkstk_darwin(v26, v27);
  v333 = &v304 - v28;
  __chkstk_darwin(v29, v30);
  v331 = &v304 - v31;
  v339 = type metadata accessor for PromotionalOfferData(0);
  __chkstk_darwin(v339, v32);
  v34 = (&v304 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1000183C4(&qword_1002B23D8);
  __chkstk_darwin(v35 - 8, v36);
  v338 = &v304 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v343 = &v304 - v40;
  v41 = sub_1000183C4(&qword_1002AFA30);
  __chkstk_darwin(v41 - 8, v42);
  v327 = &v304 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v45);
  v337 = &v304 - v46;
  __chkstk_darwin(v47, v48);
  v50 = &v304 - v49;
  v351 = sub_1001F6508();
  v348 = *(v351 - 8);
  __chkstk_darwin(v351, v51);
  v325 = &v304 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53, v54);
  v326 = &v304 - v55;
  __chkstk_darwin(v56, v57);
  v332 = &v304 - v58;
  __chkstk_darwin(v59, v60);
  v347 = &v304 - v61;
  v62 = sub_1000183C4(&qword_1002B4148);
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  __chkstk_darwin(v62, v65);
  v350 = &v304 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66, v67);
  v361 = *(a3 + *(v68 + 52));
  v345 = v68;
  v346 = v10;
  v354 = v4;
  v335 = v9;
  v336 = v34;
  v344 = v50;
  if (v361)
  {
    v69 = 0;
    v70 = 0;
  }

  else
  {
    sub_10001AE68(v4 + 6, v4[9]);
    v70 = sub_100079484();
    sub_10001AE68(v4 + 6, v4[9]);
    v69 = sub_1000799F4();
  }

  v356 = a3;
  sub_1000ACFAC();
  v71 = ((*(v63 + 80) + 16) & ~*(v63 + 80)) + v64;
  v72 = (v71 + 9) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  sub_1000ACDAC();
  v74 = (v73 + v71);
  v341 = v70;
  *v74 = v70;
  v342 = v69;
  v74[1] = v69;
  v75 = v362;
  memcpy((v73 + v72), v362, 0x379uLL);
  sub_1000AC5F4(v75, v395);
  v76 = sub_1001F6B48();
  v77 = swift_allocObject();
  *(v77 + 16) = sub_100103728;
  *(v77 + 24) = v73;
  *&v395[2] = sub_1000ACC74;
  *(&v395[2] + 1) = v77;
  *&v395[0] = _NSConcreteStackBlock;
  *(&v395[0] + 1) = 1107296256;
  *&v395[1] = sub_100146934;
  *(&v395[1] + 1) = &unk_1002891C0;
  v78 = _Block_copy(v395);

  AnalyticsSendEventLazy();
  _Block_release(v78);

  sub_100056A98(1, &v377);
  v375 = v377;
  v376 = v378;
  v374 = v379;
  *v373 = *v380;
  *&v373[15] = *&v380[15];
  v372 = v382;
  v371[0] = *v383;
  *(v371 + 3) = *&v383[3];
  v357 = v384;
  v358 = v381;
  v79 = v385;
  v360 = v386;
  memcpy(v370, v387, sizeof(v370));
  v349 = v387[88];
  *v369 = *v388;
  v359 = v389;
  *&v369[15] = *&v388[15];
  v352 = v390;
  v80 = v354;
  v81 = v356;
  if (v361)
  {
    if (v356[3][112] == 1)
    {
      sub_10001AE68(v354 + 11, v354[14]);
      v82 = v347;
      sub_1001F64E8();
      v83 = sub_10008D53C();
      (*(v348 + 1))(v82, v351);
      if (v83)
      {
        v395[0] = v375;
        *&v395[1] = v376;
        BYTE8(v395[1]) = v374;
        *(&v395[1] + 9) = *v373;
        *(&v395[2] + 1) = *&v373[15];
        v84 = v357;
        *&v395[3] = v358;
        BYTE8(v395[3]) = v372;
        *(&v395[3] + 9) = v371[0];
        HIDWORD(v395[3]) = *(v371 + 3);
        *&v395[4] = v357;
        *(&v395[4] + 1) = v79;
        v85 = v360;
        *&v395[5] = v360;
        memcpy(&v395[5] + 8, v370, 0x58uLL);
        v86 = 4;
        LOBYTE(v395[11]) = 4;
        *(&v395[11] + 1) = *v369;
        *&v395[12] = *&v369[15];
        v87 = v359;
        *(&v395[12] + 1) = v359;
        v88 = v352;
        LOBYTE(v395[13]) = v352;
        v89 = v353;
        v353[3] = &type metadata for LegacyInAppBuyResponse;
        v89[4] = sub_1000AC7BC();
        v90 = v79;
        v91 = swift_allocObject();
        *v89 = v91;
        v92 = v88;
        v93 = v87;
        sub_100057E10(v395, v363);

        v94 = (v91 + 16);
        v95 = v90;
        memcpy(v94, v395, 0xD1uLL);
        v96 = v358;
LABEL_31:
        v111 = 0;
        goto LABEL_129;
      }
    }
  }

  v355 = v79;
  v97 = v362;
  v318 = *(v81 + 16);
  if ((v318 & 1) == 0)
  {
    v98 = v362[33];
    if (!v98 || (v99 = v362[32], , v396._countAndFlagsBits = v99, v396._object = v98, v100.value = sub_1001F6FF8(v396).value, v100.value == 2) || !v100.value)
    {
      v101 = v350;
      sub_1000ACFAC();
      v102 = v81[3];
      v103 = *(v102 + 112);
      if (v103 == 1)
      {
        v104 = sub_1000F34D0(v80);
        v92 = v352;
        if (v104)
        {
          sub_1000374B8(v101, &qword_1002B4148);
          memcpy(v366, v97, 0x100uLL);
          memcpy(v363, v97 + 34, 0x269uLL);
          sub_1000AC5F4(v97, v395);

          memcpy(v395, v366, 0x100uLL);
          v395[16] = xmmword_100208700;
          memcpy(&v395[17], v363, 0x269uLL);

          v105 = sub_100197CC4();
          v107 = v106;
          sub_1000ACE5C(v395);
          v108 = v107;
          v95 = v355;
          sub_100056F34(v102, v105, v108, v368);
          v109 = v353;
          v353[3] = &type metadata for LegacyInAppBuyResponse;
          v109[4] = sub_1000AC7BC();
          v110 = swift_allocObject();
          *v109 = v110;
          memcpy((v110 + 16), v368, 0xD1uLL);
          v111 = 0;
          v85 = v360;
          v84 = v357;
          v96 = v358;
LABEL_19:
          v93 = v359;
          v86 = v349;
          goto LABEL_129;
        }

        v103 = *(v102 + 112);
      }

      if (v103 == 2)
      {
        v112 = sub_1000F34D0(v80);
        sub_1000374B8(v101, &qword_1002B4148);
        if (v112)
        {
          memcpy(v366, v97, 0x100uLL);
          memcpy(v363, v97 + 34, 0x269uLL);
          sub_1000AC5F4(v97, v395);

          memcpy(v395, v366, 0x100uLL);
          v395[16] = xmmword_100208700;
          memcpy(&v395[17], v363, 0x269uLL);

          v113 = sub_100197CC4();
          v115 = v114;
          sub_1000ACE5C(v395);
          v116 = v115;
          v95 = v355;
          sub_100056F60(v102, v113, v116, v368);
          v117 = v353;
          v353[3] = &type metadata for LegacyInAppBuyResponse;
          v117[4] = sub_1000AC7BC();
          v118 = swift_allocObject();
          *v117 = v118;
          memcpy((v118 + 16), v368, 0xD1uLL);
          v111 = 0;
          v85 = v360;
          v84 = v357;
          v96 = v358;
          v92 = v352;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1000374B8(v101, &qword_1002B4148);
      }
    }
  }

  v350 = v389;
  v119 = v81[3];
  v120 = v119[112];
  sub_10019814C();
  if (v120 == 3)
  {
    v122 = v360;
    v123 = v357;
    v95 = v355;
    if (v121 > 1)
    {
      type metadata accessor for MultipleQuantitiesNotAllowedDialog();
      swift_allocObject();
      v124 = sub_10013DADC();
LABEL_26:
      v125 = v124;

      v92 = 1;
      v374 = 1;
      v359 = v125;
      v395[0] = v375;
      *&v395[1] = v376;
      BYTE8(v395[1]) = 1;
      *(&v395[1] + 9) = *v373;
      *(&v395[2] + 1) = *&v373[15];
      if (v361)
      {
        v126 = v358;
        *&v395[3] = v358;
        BYTE8(v395[3]) = v372;
        *(&v395[3] + 9) = v371[0];
        HIDWORD(v395[3]) = *(v371 + 3);
        *&v395[4] = v123;
        *(&v395[4] + 1) = v95;
        *&v395[5] = v122;
        memcpy(&v395[5] + 8, v370, 0x58uLL);
        v86 = 3;
        LOBYTE(v395[11]) = 3;
        *(&v395[11] + 1) = *v369;
        *&v395[12] = *&v369[15];
        *(&v395[12] + 1) = v125;
        LOBYTE(v395[13]) = 1;
        v127 = v353;
        v353[3] = &type metadata for LegacyInAppBuyResponse;
        v127[4] = sub_1000AC7BC();
        v128 = swift_allocObject();
        *v127 = v128;
        memcpy((v128 + 16), v395, 0xD1uLL);
        sub_100057E10(v395, v363);
        v96 = v126;
      }

      else
      {
        v136 = v358;
        *&v395[3] = v358;
        BYTE8(v395[3]) = v372;
        *(&v395[3] + 9) = v371[0];
        HIDWORD(v395[3]) = *(v371 + 3);
        *&v395[4] = v123;
        *(&v395[4] + 1) = v95;
        *&v395[5] = v122;
        memcpy(&v395[5] + 8, v370, 0x58uLL);
        LOBYTE(v395[11]) = 0;
        *(&v395[11] + 1) = *v369;
        *&v395[12] = *&v369[15];
        *(&v395[12] + 1) = v125;
        LOBYTE(v395[13]) = 1;
        v137 = v353;
        v353[3] = &type metadata for LegacyInAppBuyResponse;
        v137[4] = sub_1000AC7BC();
        v138 = swift_allocObject();
        *v137 = v138;
        memcpy((v138 + 16), v395, 0xD1uLL);
        sub_100057E10(v395, v363);
        v96 = v136;
        v86 = 0;
      }

      v84 = v123;
      v111 = 0;
      v85 = v122;
      v93 = v359;
      goto LABEL_129;
    }
  }

  else
  {
    v122 = v360;
    v123 = v357;
    v95 = v355;
    if (v121 > 10)
    {
      type metadata accessor for InvalidQuantityDialog();
      swift_allocObject();
      v124 = sub_10013D980();
      goto LABEL_26;
    }
  }

  v129 = v122;
  v130 = v97[64];
  v131 = v97[65];
  v347 = v119;
  if (v131)
  {
    v132 = v344;
    sub_1001F6518();
    if (sub_10001C990(v132, 1, v346) == 1)
    {
      sub_1000374B8(v132, &qword_1002AFA30);
      type metadata accessor for InvalidAppAccountTokenDialog();
      swift_allocObject();
      v93 = sub_10013DB94();

      v374 = 1;
      v395[0] = v375;
      *&v395[1] = v376;
      BYTE8(v395[1]) = 1;
      *(&v395[1] + 9) = *v373;
      *(&v395[2] + 1) = *&v373[15];
      v133 = v358;
      *&v395[3] = v358;
      BYTE8(v395[3]) = v372;
      *(&v395[3] + 9) = v371[0];
      HIDWORD(v395[3]) = *(v371 + 3);
      *&v395[4] = v123;
      *(&v395[4] + 1) = v355;
      v85 = v129;
      v95 = v355;
      *&v395[5] = v85;
      memcpy(&v395[5] + 8, v370, 0x58uLL);
      LOBYTE(v395[11]) = 0;
      *(&v395[11] + 1) = *v369;
      *&v395[12] = *&v369[15];
      *(&v395[12] + 1) = v93;
      v92 = v352;
      LOBYTE(v395[13]) = v352;
      v134 = v353;
      v353[3] = &type metadata for LegacyInAppBuyResponse;
      v134[4] = sub_1000AC7BC();
      v135 = swift_allocObject();
      *v134 = v135;
      memcpy((v135 + 16), v395, 0xD1uLL);
      sub_100057E10(v395, v363);
      v96 = v133;
      v86 = 0;
      v84 = v123;
      goto LABEL_31;
    }

    sub_1000374B8(v132, &qword_1002AFA30);
  }

  v313 = v131;
  v309 = v130;
  v139 = v80;
  sub_10001AE68((v80 + 48), *(v80 + 72));
  v140 = v81[1];
  v344 = *v81;
  v317 = sub_1000795A8();
  memcpy(v368, v97 + 72, sizeof(v368));
  v141 = *(v97 + 888);
  memcpy(v395, v97 + 72, 0x138uLL);
  v314 = v141;
  BYTE8(v395[19]) = v141;
  if (sub_1000AC6F8(v395) == 1)
  {
    v315 = 0;
    v316 = 0;
    v142 = v139;
    goto LABEL_43;
  }

  if (BYTE8(v395[19]) == 1)
  {

    v142 = v139;
  }

  else
  {
    v143 = sub_1001F7EA8();

    v142 = v139;
    if ((v143 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v394 = *(v97 + 31);
  v144 = *(&v394 + 1);
  if (*(&v394 + 1))
  {
    v145 = v394;
    v146 = swift_allocObject();
    v146[2] = v142;
    v146[3] = v145;
    v316 = v146;
    v146[4] = v144;

    sub_1000ACFAC();
    v315 = sub_100103944;
    goto LABEL_43;
  }

LABEL_42:
  v315 = 0;
  v316 = 0;
LABEL_43:
  type metadata accessor for OctaneSubscription();
  v147 = swift_dynamicCastClass();
  if (!v147)
  {
    sub_10001AE68(v142 + 11, v142[14]);
    sub_10019814C();
    v153 = v344;
    v308 = v140;
    sub_10008B744();
    v155 = v154;
    v311 = 0;
    v338 = 0;
    v343 = 0;
    goto LABEL_47;
  }

  v148 = v147;
  v149 = sub_100197678();
  v312 = v148;
  if (v150)
  {
    v151 = v149;
    v152 = v150;

    v163 = sub_1000F4B50(v151, v152, v148);
    v164 = v140;
  }

  else
  {
    v164 = v140;

    v163 = 0;
  }

  v165 = v343;
  v166 = v361 ^ 1;
  sub_1001976E0(v361 ^ 1, v343);
  v310 = v163;
  v311 = v166;
  v167 = v338;
  sub_1000ACFAC();
  if (sub_10001C990(v167, 1, v339) == 1)
  {
    sub_1000374B8(v165, &qword_1002B23D8);
    v168 = v97[67];
    v169 = v164;
    if (!v168)
    {
      v311 = 0;
      v220 = v351;
      v142 = v354;
      v221 = v331;
LABEL_135:
      v308 = v169;
      v226 = 0;
      if (v310)
      {
        v228 = 0;
        v227 = 1;
        v225 = 0;
        goto LABEL_139;
      }

      v225 = 0;
      goto LABEL_138;
    }

    v339 = 0;
    v142 = v354;
  }

  else
  {
    v170 = v336;
    sub_100103A00();
    v171 = v354;
    v172 = sub_1000F4EF8(v170, v312, v97, v311);
    v308 = v164;
    v339 = v172;
    v142 = v171;
    sub_1001039A8(v170, type metadata accessor for PromotionalOfferData);
    sub_1000374B8(v343, &qword_1002B23D8);
    v168 = v97[67];
    if (!v168)
    {
      v227 = 0;
      v226 = v339;
      if (v339)
      {
        v225 = 0;
        v311 = 0;
        v228 = 0;
        v220 = v351;
        v221 = v331;
        goto LABEL_139;
      }

      v311 = 0;
      v220 = v351;
      v221 = v331;
      goto LABEL_134;
    }

    v169 = v308;
  }

  v222 = v97[66];

  v223 = sub_1000F585C(v222, v168, v312);
  v224 = v169;
  v225 = v223;
  v308 = v224;

  v226 = v339;
  if (v339)
  {
    v227 = 0;
    v228 = 0;
    v220 = v351;
    v221 = v331;
    goto LABEL_139;
  }

  v220 = v351;
  v221 = v331;
  if (!v225)
  {
LABEL_134:
    v169 = v308;
    goto LABEL_135;
  }

  v228 = 0;
  v226 = 0;
  v227 = 1;
  if (*(v225 + 104) == 1 && !v310)
  {
LABEL_138:
    v228 = sub_1000F3D3C(v312, v97);
    v226 = 0;
    v227 = 1;
  }

LABEL_139:
  v307 = v227;
  v339 = v226;
  sub_100026064((v142 + 11), v363);
  sub_10001AE68(v363, *(&v363[1] + 1));
  v331 = *(v345 + 44);
  sub_1000ACFAC();
  if (sub_10001C990(v221, 1, v220) == 1)
  {
    v259 = v332;
    sub_1001F64E8();
    if (sub_10001C990(v221, 1, v220) != 1)
    {
      sub_1000374B8(v221, &unk_1002B3450);
    }
  }

  else
  {
    v259 = v332;
    (*(v348 + 4))(v332, v221, v220);
  }

  v260 = sub_1000F04DC(v312, v344, v308, 1);
  v305 = *(v348 + 1);
  v306 = v348 + 8;
  v305(v259, v220);
  v336 = v225;
  if (!v260)
  {
    sub_100019CCC(v363);
    goto LABEL_150;
  }

  sub_100019CCC(v363);
  v261 = sub_1000BFC14();
  v263 = sub_1000EE5B8(v261, v262);

  if (!v263)
  {

    v220 = v351;
LABEL_150:
    sub_10001AE68(v142 + 11, v142[14]);
    sub_10008C1B4();
    v155 = v267;
    if (!v361)
    {
      v338 = 0;
      v265 = 0;
      v266 = 1;
      v270 = v359;
      goto LABEL_154;
    }

    v268 = v323;
    sub_1000ACFAC();
    v266 = 1;
    v269 = sub_10001C990(v268, 1, v220);
    sub_1000374B8(v268, &unk_1002B3450);
    if (v269 == 1)
    {
      v338 = 0;
      v265 = 0;
      v270 = v359;
LABEL_154:
      v153 = v344;
      goto LABEL_170;
    }

    sub_10001AE68(v142 + 11, v142[14]);

    v153 = v344;
    sub_100091DC8();
    v272 = v271;

    if (v272)
    {
      v273 = sub_1000C1A68();
      if (v273 == sub_1000C1A68())
      {

        v338 = 0;
        v265 = 0;
        v155 = v272;
LABEL_169:
        v270 = v359;
        goto LABEL_170;
      }
    }

    v338 = 0;
    v265 = 0;
    goto LABEL_169;
  }

  v264 = sub_1000258F4(v312);
  if (v264)
  {
    v153 = v344;
    if (v264 == 2)
    {
      sub_10001AE68(v142 + 11, v142[14]);
      v155 = sub_10008B654(v263, v312, v260);

      v228 = 0;
      v338 = 0;
      v265 = 0;
      v266 = 1;
LABEL_166:
      v270 = v359;
      goto LABEL_170;
    }

LABEL_160:
    v274 = v312[10];
    v275 = v312[11];

    v155 = v260;

    sub_1000C1ACC(v274, v275);

    sub_1000C1B88(5u);
    sub_1000C20A4(0, 0);

    v276 = v307;
    if (v336)
    {
      v276 = 0;
    }

    if ((v276 & 1) == 0 || v310)
    {

      sub_1000C39F0(v277, 0, 0);
    }

    sub_10001AE68(v142 + 11, v142[14]);
    sub_10008EA08(v155, v311);

    v265 = v312[11];
    v338 = v312[10];

    v228 = 0;
    v266 = 0;
    goto LABEL_166;
  }

  v153 = v344;
  if (!v225)
  {
    goto LABEL_160;
  }

  v155 = v260;
  sub_1000C23D8(2u);

  type metadata accessor for CannotRedeemOfferCodeDialog();
  swift_allocObject();
  v270 = sub_10013D2EC();

  v228 = 0;
  v266 = 0;
  v338 = 0;
  v265 = 0;
  v352 = 1;
  v349 = 15;
  v350 = v270;
LABEL_170:
  v359 = v270;
  v332 = swift_allocObject();
  *(v332 + 16) = -8;
  if (v266)
  {
    if (v336)
    {

      sub_1000C39F0(v278, 1, 0);
    }

    if ((v307 & 1) == 0)
    {

      sub_1000C39F0(v279, 1, 0);
    }

    if (v310)
    {

      sub_1000C39F0(v280, 1, 0);
    }

    v281 = sub_1000AA124(v332, v142);
    sub_1000C3FF4(v317, v281);
    sub_10001AE68(v142 + 11, v142[14]);
    sub_10008EA08(v155, v311);
  }

  if ((v228 & 1) != 0 && v312[17])
  {
    v282 = v336 != 0;

    sub_1000C39F0(v283, 1, v282);
    v284 = sub_1000AA124(v332, v142);
    sub_1000C3FF4(v317, v284);
    sub_10001AE68(v142 + 11, v142[14]);
    sub_10008EA08(v155, v311);
  }

  v285 = v333;
  sub_1000ACFAC();
  v286 = sub_10001C990(v285, 1, v351);
  v97 = v362;
  v343 = v265;
  if (v286 == 1)
  {

    sub_1000374B8(v285, &unk_1002B3450);
  }

  else
  {
    sub_1000374B8(v285, &unk_1002B3450);
    sub_1000C5464(4);
    if ((v287 & 1) == 0)
    {
      sub_1000BFDA8();
      v288 = v326;
      sub_1001F6418();
      v289 = v325;
      sub_1001F6418();
      v323 = sub_10001AE68(v142 + 11, v142[14]);
      v290 = v312[25];
      v331 = v312[24];
      sub_1001038BC(&qword_1002AD110, &type metadata accessor for Date);
      v333 = v290;

      v291 = v351;
      if ((sub_1001F6A98() & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x1000F34C0);
      }

      v292 = v348;
      v293 = *(v348 + 2);
      v294 = v320;
      v293(v320, v288, v291);
      v295 = v322;
      v293(&v294[*(v322 + 48)], v289, v291);
      v296 = v321;
      sub_1000ACFAC();
      v297 = *(v295 + 48);
      v348 = *(v292 + 4);
      (v348)(v324, v296, v291);
      v298 = &v296[v297];
      v299 = v305;
      v305(v298, v291);
      sub_1000ACDAC();
      v300 = *(v295 + 48);
      v301 = v324;
      (v348)(&v324[*(v319 + 36)], &v296[v300], v291);
      v299(v296, v291);
      sub_1000C1A68();
      LOBYTE(v296) = sub_100091A58();

      sub_1000374B8(v301, &qword_1002B2008);
      v156 = v342;
      if (v296)
      {
        sub_10001AE68(v142 + 11, v142[14]);
        sub_10008CBB0();

        v302 = v351;
        v299(v325, v351);
        v299(v326, v302);

        v349 = 21;
      }

      else
      {

        v303 = v351;
        v299(v325, v351);
        v299(v326, v303);
      }

      v97 = v362;
      v153 = v344;
      goto LABEL_48;
    }
  }

LABEL_47:
  v156 = v342;
LABEL_48:
  memcpy(v363, v368, 0x138uLL);
  BYTE8(v363[19]) = v314;
  v157 = sub_1000AC6F8(v363);
  v158 = v157 != 1;
  v159 = v341;
  if (v157 != 1)
  {
    sub_1000C398C(SBYTE8(v363[19]));
    if ((v314 & 1) == 0)
    {
      v160 = v97[43];
      v309 = v97[42];
      v313 = v160;
    }

    if (v313)
    {
      v161 = v337;
      sub_1001F6518();
      v162 = v346;
      if (sub_10001C990(v161, 1, v346) == 1)
      {
        sub_1000374B8(v161, &qword_1002AFA30);
      }

      else
      {
        v173 = v328;
        v174 = v329;
        (*(v329 + 32))(v328, v161, v162);
        v175 = v327;
        (*(v174 + 16))(v327, v173, v162);
        sub_100018460(v175, 0, 1, v162);
        sub_1000C4280();
        v176 = v173;
        v153 = v344;
        v156 = v342;
        (*(v174 + 8))(v176, v162);
        v159 = v341;
      }
    }
  }

  switch(sub_1000C257C())
  {
    case 1u:

      goto LABEL_63;
    default:
      v177 = sub_1001F7EA8();

      if ((v177 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_63:
      v178 = v97[33];
      if (v178 && (v179 = v97[32], , v397._countAndFlagsBits = v179, v397._object = v178, v180.value = sub_1001F6FF8(v397).value, v180.value != 2))
      {
        if (v159 && !v180.value)
        {
          goto LABEL_66;
        }
      }

      else
      {
LABEL_65:
        if (v159)
        {
LABEL_66:
          v181 = v343 == 0;
          goto LABEL_70;
        }
      }

      v181 = 0;
LABEL_70:
      sub_10001AE68(v142 + 6, v142[9]);
      v182 = v362[8];
      v183 = v362[9];
      v189 = sub_100079640(32, v182, v183, v184, v185, v186, v187, v188);
      v348 = v155;
      if (v156)
      {
        v349 = 2;
        sub_1000C23D8(2u);
        v352 = 1;
        sub_1000C36CC(1);

        v190 = 0;
        v191 = 0;
LABEL_72:
        v158 = 1;
        v192 = v362;
LABEL_73:
        v193 = v345;
        goto LABEL_120;
      }

      if (!v181)
      {
        if (v189 == 1)
        {
          v194 = v318;
          if (v361)
          {
            goto LABEL_86;
          }

          if ((v318 & 1) == 0)
          {
            sub_1000C23D8(4u);
            v195 = sub_1000BFC14();
            v197 = v196;
            v198 = sub_100197CC4();
            v200 = v199;
            v201 = v330;

            v202 = v197;
            v155 = v348;
            sub_1000EFAEC(v195, v202, v198, v200, v201, v366);
            *v365 = v375;
            *&v365[16] = v376;
            v365[24] = v374;
            *&v365[25] = *v373;
            *&v365[40] = *&v373[15];
            *&v365[48] = v358;
            v365[56] = v372;
            *&v365[57] = v371[0];
            *&v365[60] = *(v371 + 3);
            *&v365[64] = v357;
            *&v365[72] = v355;
            *&v365[80] = v360;
            memcpy(&v365[88], v370, 0x58uLL);
            v365[176] = v349;
            *&v365[177] = *v369;
            *&v365[192] = *&v369[15];
            *&v365[200] = v359;
            v365[208] = v352;
            sub_100057E48(v365);
            v355 = *&v366[72];
            *&v393 = *&v366[64];
            v375 = *v366;
            v376 = *&v366[16];
            v374 = v366[24];
            v192 = v362;
            *v373 = *&v366[25];
            *&v373[15] = *&v366[40];
            v371[0] = *&v366[57];
            *(v371 + 3) = *&v366[60];
            v360 = *&v366[80];
            memcpy(v370, &v366[88], sizeof(v370));
            v349 = v366[176];
            *v369 = *&v366[177];
            v203 = *&v366[200];
            *&v369[15] = *&v366[192];
            v352 = v366[208];
            v204 = sub_1000F36FC(v182, v183, v315, v316);
            sub_1000374B8(&v393, &qword_1002AFDB8);
            v191 = 0;
            v357 = v204;
            v205 = v204[2];
            v190 = v203;
            v358 = v205;
            v372 = 0;
            v158 = 1;
            goto LABEL_73;
          }
        }

        else
        {
          v194 = v318;
          if (v361)
          {
            goto LABEL_86;
          }
        }

        sub_10001AE68(v142 + 6, v142[9]);
        v217 = sub_10007A214(1uLL, v153, v308, v212, v213, v214, v215, v216);
        if ((v218 & 1) == 0)
        {
          v229 = v217;
          sub_1000C23D8(2u);
          v349 = sub_100087764(v229);

          v350 = 0;
          v359 = 0;
          v219 = 1;
          v158 = 1;
          if ((v194 & 1) == 0)
          {
LABEL_99:
            if (!sub_1000C43D8())
            {
              v158 = 1;
              sub_1000C23D8(1u);
            }

            memcpy(v366, v368, sizeof(v366));
            v367 = v314;
            v230 = sub_1000AC6F8(v366);
            v193 = v345;
            v352 = v219;
            if (v230 == 1)
            {
              v231 = v311;
              v191 = 0;
            }

            else
            {
              if (v367 == 1)
              {
                v191 = sub_1001F7EA8();
              }

              else
              {
                v191 = 1;
              }

              v231 = v311;
            }

            v232 = v348;
            v234 = v315;
            v233 = v316;
            sub_10003742C(v315);
            v235 = v233;
            v236 = v335;
            sub_1001D4DFC(v232, v234, v235, v335);
            v237 = v343;
            if (v343)
            {

              *(v236 + 88) = v338;
              *(v236 + 96) = v237;
            }

            *&v393 = v384;
            sub_1000183C4(&qword_1002AC7E8);
            v238 = swift_allocObject();
            *(v238 + 16) = xmmword_1001FE9E0;
            sub_100103950();
            sub_1000374B8(&v393, &qword_1002AFDB8);
            v239 = *(v238 + 16);
            v357 = v238;
            v358 = v239;
            v372 = 0;
            sub_1001039A8(v236, type metadata accessor for IAPTransaction);
            v190 = v359;
            v311 = v231;
            goto LABEL_110;
          }

LABEL_95:
          if (sub_1000C43D8() != 2 && sub_1000C43D8() != 1)
          {
            v158 = 1;
            sub_1000C23D8(1u);
          }

          v359 = 0;
          goto LABEL_99;
        }

LABEL_86:
        v219 = v352;
        if (!v194)
        {
          goto LABEL_99;
        }

        goto LABEL_95;
      }

      sub_1000C2320(0);
      sub_1000C23D8(4u);
      if (v318)
      {

        v190 = 0;
        v191 = 0;
        v352 = 1;
        v349 = 5;
        goto LABEL_72;
      }

      v206 = v345;
      v207 = v330;
      if (!v330)
      {

        v190 = 0;
        v191 = 0;
        v352 = 1;
        v349 = 5;
        v158 = 1;
        v193 = v206;
LABEL_110:
        v155 = v348;
        goto LABEL_119;
      }

      sub_10001AE68(v142 + 6, v142[9]);

      sub_10007992C();

      v209 = sub_1000E087C(v208);
      v393 = *v366;
      sub_10001C838(&v393);
      v392 = *&v366[16];
      sub_10001C838(&v392);
      v391 = *&v366[32];
      sub_1000374B8(&v391, &qword_1002ACA10);

      if (v209)
      {
        v210 = *(v209 + 32);
        v211 = *(v209 + 40);
      }

      else
      {
        v210 = sub_1001E8450();
        v211 = v240;
      }

      v155 = v348;
      v241 = sub_1000C1A68();
      type metadata accessor for AskToBuyDialog();
      swift_allocObject();
      v242 = v308;

      v190 = sub_1000FD874(v210, v211, v241, v344, v242, v207);

      v191 = 0;
      v352 = 1;
      v349 = 5;
      v158 = 1;
      v193 = v345;
LABEL_119:
      v192 = v362;
LABEL_120:
      v359 = v190;
      if (v347[112] == 3 && (*(v356 + *(v193 + 48)) & 1) == 0)
      {
        sub_1000C1ACC(0, 0);
      }

      else if (!v158)
      {
        if ((v191 & 1) == 0)
        {
          goto LABEL_125;
        }

        goto LABEL_124;
      }

      sub_10001AE68(v142 + 11, v142[14]);
      sub_10008EA08(v155, v311);
      if (v191)
      {
LABEL_124:
        sub_1000F3918(v192);
        v244 = v243;
        v246 = v245;
        sub_10003A36C(v355, v360);
        v355 = v244;
        v360 = v246;
      }

LABEL_125:
      v247 = v356;
      v248 = v193;
      v249 = v340;
      sub_1000ACFAC();
      v250 = v247;
      LODWORD(v247) = sub_10001C990(v249, 1, v351);
      sub_1000374B8(v249, &unk_1002B3450);
      if (v247 != 1 && *(v250 + *(v248 + 48)) == 1)
      {
        sub_10001AE68(v354 + 11, v354[14]);
        sub_10009208C();
      }

      *v365 = v375;
      *&v365[16] = v376;
      v365[24] = v374;
      *&v365[25] = *v373;
      *&v365[40] = *&v373[15];
      v252 = v357;
      v253 = v358;
      *&v365[48] = v358;
      v365[56] = v372;
      *&v365[57] = v371[0];
      *&v365[60] = *(v371 + 3);
      *&v365[64] = v357;
      v254 = v355;
      *&v365[72] = v355;
      v85 = v360;
      *&v365[80] = v360;
      memcpy(&v365[88], v370, 0x58uLL);
      v86 = v349;
      v365[176] = v349;
      *&v365[177] = *v369;
      *&v365[192] = *&v369[15];
      v255 = v359;
      *&v365[200] = v359;
      v92 = v352;
      v365[208] = v352;
      v256 = v353;
      v353[3] = &type metadata for LegacyInAppBuyResponse;
      v256[4] = sub_1000AC7BC();
      v257 = swift_allocObject();
      *v256 = v257;
      v84 = v252;
      v95 = v254;
      v111 = v348;
      sub_100057E10(v365, &v364);
      sub_100037408(v315);

      memcpy((v257 + 16), v365, 0xD1uLL);
      v96 = v253;
      v93 = v255;
LABEL_129:
      v363[0] = v375;
      *&v363[1] = v376;
      BYTE8(v363[1]) = v374;
      *(&v363[1] + 9) = *v373;
      *(&v363[2] + 1) = *&v373[15];
      *&v363[3] = v96;
      BYTE8(v363[3]) = v372;
      *(&v363[3] + 9) = v371[0];
      HIDWORD(v363[3]) = *(v371 + 3);
      *&v363[4] = v84;
      *(&v363[4] + 1) = v95;
      *&v363[5] = v85;
      memcpy(&v363[5] + 8, v370, 0x58uLL);
      LOBYTE(v363[11]) = v86;
      *(&v363[11] + 1) = *v369;
      *&v363[12] = *&v369[15];
      *(&v363[12] + 1) = v93;
      LOBYTE(v363[13]) = v92;
      sub_100057E48(v363);
      return v111;
  }
}

BOOL sub_1000F34D0(uint64_t a1)
{
  v2 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v14[-1] - v4;
  v6 = sub_1001F6508();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026064(a1 + 88, v14);
  sub_10001AE68(v14, v14[3]);
  sub_1000183C4(&qword_1002B4148);
  sub_1000ACFAC();
  if (sub_10001C990(v5, 1, v6) == 1)
  {
    sub_1001F64E8();
    if (sub_10001C990(v5, 1, v6) != 1)
    {
      sub_1000374B8(v5, &unk_1002B3450);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  v11 = sub_10008D53C();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
  }

  sub_100019CCC(v14);
  return v11 != 0;
}

void *sub_1000F36FC(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v9 = type metadata accessor for IAPTransaction() - 8;
  __chkstk_darwin(v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68((v4 + 88), *(v4 + 112));
  v13 = sub_10008D8C8(a1, a2);
  result = sub_10013B560(v13);
  v15 = result;
  v16 = 0;
  v23 = v13 & 0xFFFFFFFFFFFFFF8;
  v24 = v13 & 0xC000000000000001;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v15 == v16)
    {

      return v17;
    }

    if (v24)
    {
      result = sub_1001F7808();
    }

    else
    {
      if (v16 >= *(v23 + 16))
      {
        goto LABEL_15;
      }

      result = *(v13 + 8 * v16 + 32);
    }

    v18 = result;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    sub_10003742C(a3);
    sub_1001D4DFC(v18, a3, a4, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032DBC(0, v17[2] + 1, 1, v17);
      v17 = v21;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      sub_100032DBC(v19 > 1, v20 + 1, 1, v17);
      v17 = v22;
    }

    v17[2] = v20 + 1;
    result = sub_100103A00();
    ++v16;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1000F3918(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (*(a1 + 392))
    {
      sub_10001AE68((v1 + 88), *(v1 + 112));
      sub_10008D944();
    }
  }
}

uint64_t sub_1000F3998(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CheddarTransaction();
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BFC24();
  v12 = v11;
  sub_10001AE68(a2 + 6, a2[9]);
  v18 = sub_10007A214(2uLL, v10, v12, v13, v14, v15, v16, v17);
  LOBYTE(v10) = v19;

  v20 = a1;

  sub_100140370(v20, a3, v18, v10 & 1, v9);
  sub_10001AE68(a2 + 11, a2[14]);
  sub_1000B033C(v9, v18, v10 & 1);
  return sub_1001039A8(v9, type metadata accessor for CheddarTransaction);
}

void sub_1000F3ADC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10001AE68((v5 + 48), *(v5 + 72));
  v11 = sub_1000795A8();
  v22 = *(v11 + 80);
  if (v22 && ((v12 = *(v11 + 72), v13 = *(v11 + 112), v12 == a3) ? (v14 = v22 == a4) : (v14 = 0), (v21 = *(v11 + 96), v14) || (sub_1001F7EA8() & 1) != 0))
  {

    v16 = v21;
    v15 = v22;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v17 = sub_1001F6688();
    sub_100019C94(v17, qword_1002E6180);

    v18 = sub_1001F6668();
    v19 = sub_1001F7298();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000E4544(a3, a4, &v23);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1000E4544(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v18, v19, "No subscription offers key pair set found with keyID %s for %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v12 = 0;
    v13 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a5 = v12;
  *(a5 + 8) = v15;
  *(a5 + 24) = v16;
  *(a5 + 40) = v13;
}

uint64_t sub_1000F3D3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IntroOfferEligibilityOverride();
  __chkstk_darwin(v6, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000183C4(&qword_1002B23C0);
  __chkstk_darwin(v10, v11);
  v13 = &v64 - v12;
  v14 = sub_1000183C4(&qword_1002B23C8);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22, v23);
  if (!a1[17])
  {
    goto LABEL_19;
  }

  v65 = &v64 - v24;
  sub_100198684(v21);
  v64 = v13;
  v25 = v65;
  sub_1000ACDAC();
  sub_1000ACFAC();
  if (sub_10001C990(v17, 1, v10) != 1)
  {
    v28 = v64;
    sub_1000ACDAC();
    v29 = *(a2 + 64);
    v30 = *(a2 + 72);
    sub_1000F3ADC(v29, v30, *(v28 + 16), *(v28 + 24), v67);
    if (*(&v67[0] + 1))
    {
      v68 = v67[0];
      v69 = v67[1];
      v70 = v67[2];
      sub_10001AE68(v3 + 6, v3[9]);
      sub_10007A214(2uLL, v29, v30, v31, v32, v33, v34, v35);
      sub_1000F46D8();
      v37 = v36;
      v71 = v68;
      sub_10001C838(&v71);
      v72 = v69;
      sub_10001C838(&v72);
      v73 = v70;
      sub_1000374B8(&v73, &qword_1002AEBE0);
      if (v37)
      {
        v38 = v28;
        v39 = a1[10];
        v40 = a1[11];

        LOBYTE(v39) = sub_100023590(v39, v40, v29, v30);

        if (v39)
        {
          sub_1000374B8(v65, &qword_1002B23C8);
          sub_100103950();
          sub_1000374B8(v38, &qword_1002B23C0);
          v27 = v9[*(v6 + 44)];
          sub_1001039A8(v9, type metadata accessor for IntroOfferEligibilityOverride);
          return v27 & 1;
        }

        if (qword_1002AC510 != -1)
        {
          swift_once();
        }

        v56 = sub_1001F6688();
        sub_100019C94(v56, qword_1002E6180);

        v57 = sub_1001F6668();
        v58 = sub_1001F7298();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v66[0] = v60;
          *v59 = 136315138;
          v61 = a1[10];
          v62 = a1[11];

          v63 = sub_1000E4544(v61, v62, v66);

          *(v59 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v57, v58, "Invalid intro offer override data for %s", v59, 0xCu);
          sub_100019CCC(v60);
        }

        sub_1000374B8(v65, &qword_1002B23C8);
        v54 = v64;
        goto LABEL_18;
      }

      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v50 = sub_1001F6688();
      sub_100019C94(v50, qword_1002E6180);

      v42 = sub_1001F6668();
      v43 = sub_1001F7298();

      if (!os_log_type_enabled(v42, v43))
      {
LABEL_17:

        sub_1000374B8(v65, &qword_1002B23C8);
        v54 = v28;
LABEL_18:
        sub_1000374B8(v54, &qword_1002B23C0);
LABEL_19:
        v27 = 0;
        return v27 & 1;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66[0] = v45;
      *v44 = 136315138;
      v51 = a1[10];
      v52 = a1[11];

      v53 = sub_1000E4544(v51, v52, v66);

      *(v44 + 4) = v53;
      v28 = v64;
      v49 = "Invalid intro offer override signature for %s";
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v41 = sub_1001F6688();
      sub_100019C94(v41, qword_1002E6180);

      v42 = sub_1001F6668();
      v43 = sub_1001F7298();

      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_17;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v68 = v45;
      *v44 = 136315138;
      v46 = a1[10];
      v47 = a1[11];

      v48 = sub_1000E4544(v46, v47, &v68);

      *(v44 + 4) = v48;
      v28 = v64;
      v49 = "Missing key pair set to validate intro offer override for %s";
    }

    _os_log_impl(&_mh_execute_header, v42, v43, v49, v44, 0xCu);
    sub_100019CCC(v45);

    goto LABEL_17;
  }

  sub_1000374B8(v17, &qword_1002B23C8);
  sub_10001AE68(v3 + 11, v3[14]);

  v26 = sub_10008D2D0();

  sub_1000374B8(v25, &qword_1002B23C8);
  v27 = v26 ^ 1;
  return v27 & 1;
}

void sub_1000F46D8()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v35[3] = v5;
  v36 = v0;
  v7 = v6;
  v8 = sub_1001F68E8();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  sub_100099484();
  v15 = v13 - v14;
  __chkstk_darwin(v16, v17);
  v19 = v35 - v18;
  v20 = sub_1001F6328();
  if (v21 >> 60 == 15)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_10009951C(v22, qword_1002E6180);
    v23 = *v7;
    v24 = *(v7 + 8);
    v38 = *(v7 + 32);

    sub_1000ACFAC();
    v25 = sub_1001F6668();
    v26 = sub_1001F7298();

    sub_1000374B8(&v38, &qword_1002AEBE0);
    if (os_log_type_enabled(v25, v26))
    {
      sub_100099504();
      v27 = swift_slowAlloc();
      v28 = sub_10003A894();
      v37 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000E4544(v23, v24, &v37);
      sub_100103E78();
      _os_log_impl(v29, v30, v31, v32, v27, 0xCu);
      sub_100019CCC(v28);
      sub_100099474();

      sub_100021754();
    }
  }

  else
  {
    v33 = v21;
    v35[1] = v4;
    v35[2] = v2;
    *&v38 = v20;
    *(&v38 + 1) = v21;
    v34 = v20;
    sub_100040C70(v20, v21);
    sub_10003A318();
    sub_1001F6888();
    (*(v10 + 32))(v19, v15, v8);
    sub_1000FDD50();
    sub_10003A36C(v34, v33);
    (*(v10 + 8))(v19, v8);
  }

  sub_100037B00();
}

uint64_t sub_1000F4B50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10001AE68((v3 + 88), *(v3 + 112));
  if (!sub_10008D3AC(a3))
  {

LABEL_5:
    v9 = 7;
LABEL_6:
    LOBYTE(v26) = v9;
    sub_1000AC650();
    swift_willThrowTypedImpl();
    return v9;
  }

  v8 = sub_1001F7EA8();

  if (v8)
  {
    goto LABEL_5;
  }

  v11 = sub_100025820(a1, a2);
  if (!v11)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v21 = sub_1001F6688();
    sub_100019C94(v21, qword_1002E6180);

    v22 = sub_1001F6668();
    v23 = sub_1001F7298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000E4544(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v22, v23, "Requested win-back offer with invalid offer identifier %s.", v24, 0xCu);
      sub_100019CCC(v25);
    }

    v9 = 8;
    goto LABEL_6;
  }

  v9 = v11;
  if (*(v11 + 112))
  {
    sub_10001AE68((v4 + 88), *(v4 + 112));
    sub_1000183C4(&qword_1002AC7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    v13 = *(a3 + 200);
    *(inited + 32) = *(a3 + 192);
    *(inited + 40) = v13;

    sub_10008B3C8();
    v15 = v14;
    swift_setDeallocating();
    sub_1001E56B4();
    if (sub_10013B560(v15))
    {
      sub_1001C19A8(0, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_1001F7808();
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      v18 = v17;
      if (sub_1000C4418())
      {
        sub_1000C1570();
        v20 = v19;

        if (!v20)
        {

          return v9;
        }
      }

      else
      {
      }
    }

    else
    {

      v18 = 0;
    }

    LOBYTE(v26) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  else
  {
    LOBYTE(v26) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  return 7;
}

uint64_t sub_1000F4EF8(uint64_t *a1, uint64_t a2, void *a3, char a4)
{
  v92 = a1;
  v8 = sub_1000183C4(&qword_1002AFA30);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v64 - v10;
  v69 = sub_1000183C4(&qword_1002B23B8);
  __chkstk_darwin(v69, v12);
  v70 = &v64 - v13;
  v71 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
  __chkstk_darwin(v71, v14);
  v72 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PromotionalOfferData(0);
  __chkstk_darwin(v16, v17);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001AE68(v4 + 11, v4[14]);
  v20 = a3[9];
  v74 = a3[8];
  v75 = v20;
  if (sub_10008D3AC(a2))
  {
    v73 = a2;
    v21 = sub_1001F7EA8();

    if (v21)
    {
      goto LABEL_5;
    }

    v24 = *v92;
    v67 = v92[1];
    v68 = v24;
    v25 = sub_100025678(v24, v67);
    if (!v25)
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v32 = sub_1001F6688();
      sub_100019C94(v32, qword_1002E6180);
      sub_100103950();
      v33 = sub_1001F6668();
      v34 = sub_1001F7298();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v76 = v36;
        *v35 = 136315138;
        v37 = *v19;
        v38 = v19[1];

        sub_1001039A8(v19, type metadata accessor for PromotionalOfferData);
        v39 = sub_1000E4544(v37, v38, &v76);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Requested promotional offer with invalid offer identifier %s.", v35, 0xCu);
        sub_100019CCC(v36);
      }

      else
      {

        sub_1001039A8(v19, type metadata accessor for PromotionalOfferData);
      }

      v22 = 3;
      goto LABEL_6;
    }

    v22 = v25;
    if ((a4 & 1) == 0)
    {
      return v22;
    }

    v26 = sub_1001C7F80();
    if (!v27 || (sub_1000F3ADC(v74, v75, v26, v27, v77), , !*(&v77[0] + 1)))
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v40 = sub_1001F6688();
      sub_100019C94(v40, qword_1002E6180);
      v41 = v73;

      v42 = sub_1001F6668();
      v43 = sub_1001F7298();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v76 = v45;
        *v44 = 136315138;
        v46 = *(v41 + 80);
        v47 = *(v41 + 88);

        v48 = sub_1000E4544(v46, v47, &v76);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "Missing key pair set to validate promotional offer signature for %s", v44, 0xCu);
        sub_100019CCC(v45);
      }

      goto LABEL_44;
    }

    v78 = v77[0];
    v79 = v77[1];
    v80 = v77[2];
    memcpy(v91, a3 + 72, 0x139uLL);
    v28 = sub_1000AC6F8(v91);
    v66 = v22;
    if (v28 == 1 || (v91[312] & 1) != 0 && (sub_1001F7EA8() & 1) == 0)
    {
      if (a3[65])
      {
        sub_1001F6518();
        v29 = sub_1001F6578();
        if (sub_10001C990(v11, 1, v29) != 1)
        {
          sub_1001F6528();
          (*(*(v29 - 8) + 8))(v11, v29);
          v65 = sub_1001F6BB8();
          v31 = v30;

          goto LABEL_35;
        }
      }

      else
      {
        v50 = sub_1001F6578();
        sub_100018460(v11, 1, 1, v50);
      }

      sub_1000374B8(v11, &qword_1002AFA30);
      v65 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v49 = a3[43];
      if (v49)
      {
        v65 = a3[42];
        v31 = v49;
      }

      else
      {
        v65 = 0;
        v31 = 0xE000000000000000;
      }
    }

LABEL_35:
    v51 = v73;
    sub_10001AE68(v4 + 6, v4[9]);
    sub_10007A214(2uLL, v74, v75, v52, v53, v54, v55, v56);
    if (sub_100025678(v68, v67))
    {

      v57 = v72;
      sub_100103950();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        memcpy(v90, v57, sizeof(v90));
        v62 = *(v51 + 80);
        v63 = *(v51 + 88);

        v61 = sub_1001C80E8(v74, v75, v62, v63, v65, v31, &v78);
        v84 = v78;
        sub_10001C838(&v84);
        v85 = v79;
        sub_10001C838(&v85);
        v86 = v80;
        sub_1000374B8(&v86, &qword_1002AEBE0);

        sub_1000AC71C(v90);
LABEL_41:
        v22 = v66;
        if (v61)
        {
          return v22;
        }

        goto LABEL_44;
      }

      v58 = v70;
      sub_1000ACDAC();
      sub_1000F46D8();
      v60 = v59;
      v87 = v78;
      sub_10001C838(&v87);
      v88 = v79;
      sub_10001C838(&v88);
      v89 = v80;
      sub_1000374B8(&v89, &qword_1002AEBE0);
      if (v60)
      {
        v61 = sub_1001C8BAC(v68, v67, v74, v75);
        sub_1000374B8(v58, &qword_1002B23B8);
        goto LABEL_41;
      }

      sub_1000374B8(v58, &qword_1002B23B8);
    }

    else
    {
      v81 = v78;
      sub_10001C838(&v81);
      v82 = v79;
      sub_10001C838(&v82);
      v83 = v80;
      sub_1000374B8(&v83, &qword_1002AEBE0);
    }

LABEL_44:
    LOBYTE(v76) = 9;
    sub_1000AC650();
    swift_willThrowTypedImpl();

    return 9;
  }

LABEL_5:
  v22 = 4;
LABEL_6:
  LOBYTE(v76) = v22;
  sub_1000AC650();
  swift_willThrowTypedImpl();
  return v22;
}

uint64_t sub_1000F585C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_10002574C(a1, a2);
  if (!v7)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_100019C94(v22, qword_1002E6180);

    v23 = sub_1001F6668();
    v24 = sub_1001F7298();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1000E4544(a1, a2, &v32);
      *(v25 + 12) = 2080;
      v26 = *(a3 + 80);
      v27 = *(a3 + 88);

      v28 = sub_1000E4544(v26, v27, &v32);

      *(v25 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Internal ID %s did not correspond to a configured offer for codes for %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = 2;
    LOBYTE(v32) = 2;
    sub_1000AC650();
    swift_willThrowTypedImpl();
    return v29;
  }

  v8 = v7;
  sub_10001AE68((v3 + 88), *(v3 + 112));
  v9 = sub_10008D3AC(a3);
  v10 = *(v8 + 96);

  v11 = sub_1000BF948(v9, v10);

  if ((v11 & 1) == 0)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_1000E4544(a1, a2, &v32);
      *(v15 + 12) = 2080;
      sub_1000AC6A4();

      v16 = sub_1001F70B8();
      v18 = v17;

      v19 = sub_1000E4544(v16, v18, &v32);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      if (v9)
      {
        if (v9 == 1)
        {
          v20 = 0xE800000000000000;
          v21 = 0x676E697473697865;
        }

        else
        {
          v20 = 0xE700000000000000;
          v21 = 0x64657269707865;
        }
      }

      else
      {
        v20 = 0xE300000000000000;
        v21 = 7824750;
      }

      v30 = sub_1000E4544(v21, v20, &v32);

      *(v15 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v13, v14, " Currently ineligible for offer code  %s: %s does not  contain %s", v15, 0x20u);
      swift_arrayDestroy();
    }

    v29 = 5;
    LOBYTE(v32) = 5;
    sub_1000AC650();
    swift_willThrowTypedImpl();

    return v29;
  }

  return v8;
}

uint64_t sub_1000F5CC4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 8))();
  v6._countAndFlagsBits = 3092282;
  v6._object = 0xE300000000000000;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = (*(a2 + 16))(a1, a2);
  sub_1001F6CA8(v7);

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  (*(a2 + 24))(a1, a2);
  v9._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v9);

  return v5;
}

uint64_t sub_1000F5DC8()
{
  type metadata accessor for OctaneServer();
  result = sub_1000F5E04();
  qword_1002E60C8 = result;
  return result;
}

uint64_t sub_1000F5E04()
{
  sub_100037B94();
  type metadata accessor for OctaneConfigurationManager();
  swift_allocObject();
  v0 = sub_10007B72C();
  v1 = qword_1002AC540;
  swift_retain_n();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_100102B50(v0, qword_1002E61A8);

  v3 = sub_100037B7C();

  return sub_100102D24(v3, v4, v0, v2);
}

uint64_t sub_1000F5EC4()
{
  v1 = v0;
  v2 = sub_1000183C4(&qword_1002B4118);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v325 = v311 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4, v6);
  v323 = v311 - v8;
  v10 = __chkstk_darwin(v7, v9);
  v322 = v311 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v321 = v311 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v320 = v311 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v319 = v311 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v318 = v311 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v317 = v311 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v316 = v311 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v315 = v311 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v314 = v311 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v313 = v311 - v38;
  v40 = __chkstk_darwin(v37, v39);
  v312 = v311 - v41;
  __chkstk_darwin(v40, v42);
  v44 = v311 - v43;
  sub_100026064(v0 + 64, &v331);
  sub_100026064(v0 + 104, &v329);
  v45 = sub_1000183C4(&qword_1002B4120);
  v46 = swift_allocObject();
  v47 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v47, v47);
  v49 = (v311 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v51, v51);
  v53 = (v311 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = *v49;
  v56 = *v53;

  v58 = sub_100102438(v57, v55, v56, v46);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  swift_weakAssign();
  sub_1000183C4(&qword_1002ADBF0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_10020CCD0;
  v60 = type metadata accessor for AppIconRoute();
  swift_allocObject();
  v61 = sub_10005DCA4();
  *(v59 + 56) = v60;
  *(v59 + 64) = &off_100282840;
  *(v59 + 32) = v61;
  sub_100026064(v1 + 64, &v331);
  v62 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v62, v62);
  v64 = (v311 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = sub_100101D84(*v64, type metadata accessor for AssetRoute, sub_1000FE818);
  sub_100019CCC(&v331);
  *(v59 + 96) = type metadata accessor for AssetRoute();
  *(v59 + 104) = &off_100284C10;
  *(v59 + 72) = v66;
  v67 = *(v1 + 24);
  v68 = *(v1 + 32);
  sub_100026064(v1 + 64, &v331);
  v69 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v69, v69);
  v71 = (v311 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;

  v74 = sub_100103048(v1, v67, v68, v73);
  sub_100019CCC(&v331);
  *(v59 + 136) = type metadata accessor for BagRoute();
  *(v59 + 144) = &off_100284C10;
  *(v59 + 112) = v74;
  sub_100026064(v1 + 64, &v331);
  v75 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v75, v75);
  v77 = (v311 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = sub_100101D84(*v77, type metadata accessor for FetchSoftwareAddOnsRoute, sub_1000FE93C);
  sub_100019CCC(&v331);
  *(v59 + 176) = type metadata accessor for FetchSoftwareAddOnsRoute();
  *(v59 + 184) = &off_100284C10;
  *(v59 + 152) = v79;
  *(v59 + 216) = v45;
  *(v59 + 224) = &off_100284C10;
  *(v59 + 192) = v58;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v80 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v80, v80);
  v82 = (v311 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82);
  v84 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v84, v84);
  v86 = (v311 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86);
  v88 = *v82;
  v89 = *v86;
  v324 = v58;

  v90 = sub_100101FF8(v88, v89, type metadata accessor for InAppTransactionDoneRoute, 128, sub_1000FEA60);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 256) = type metadata accessor for InAppTransactionDoneRoute();
  *(v59 + 264) = &off_100284C10;
  *(v59 + 232) = v90;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v91 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v91, v91);
  v93 = (v311 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93);
  v95 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v95, v95);
  v97 = (v311 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v98 + 16))(v97);
  v99 = sub_100101FF8(*v93, *v97, type metadata accessor for InAppCheckDownloadQueueRoute, 128, sub_1000FED54);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 296) = type metadata accessor for InAppCheckDownloadQueueRoute();
  *(v59 + 304) = &off_100284C10;
  *(v59 + 272) = v99;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v100 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v100, v100);
  v102 = (v311 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v103 + 16))(v102);
  v104 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v104, v104);
  v106 = (v311 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v107 + 16))(v106);
  v108 = sub_100101FF8(*v102, *v106, type metadata accessor for InAppPendingTransactionsRoute, 128, sub_1000FF050);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 336) = type metadata accessor for InAppPendingTransactionsRoute();
  *(v59 + 344) = &off_100284C10;
  *(v59 + 312) = v108;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v109 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v109, v109);
  v111 = (v311 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v112 + 16))(v111);
  v113 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v113, v113);
  v115 = (v311 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v116 + 16))(v115);
  v117 = sub_100101FF8(*v111, *v115, type metadata accessor for InAppRegrantPurchaseHistoryRoute, 128, sub_1000FF34C);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 376) = type metadata accessor for InAppRegrantPurchaseHistoryRoute();
  *(v59 + 384) = &off_100284C10;
  *(v59 + 352) = v117;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v118 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v118, v118);
  v120 = (v311 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v121 + 16))(v120);
  v122 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v122, v122);
  v124 = (v311 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v125 + 16))(v124);
  v126 = sub_100101FF8(*v120, *v124, type metadata accessor for CreateAppReceiptRoute, 128, sub_1000FF648);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 416) = type metadata accessor for CreateAppReceiptRoute();
  *(v59 + 424) = &off_100284C10;
  *(v59 + 392) = v126;
  sub_100026064(v1 + 64, &v331);
  v127 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v127, v127);
  v129 = (v311 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v130 + 16))(v129);
  v131 = *v129;

  v132 = sub_100102760(v131, v1);
  sub_100019CCC(&v331);
  *(v59 + 456) = type metadata accessor for InAppsRoute();
  *(v59 + 464) = &off_100284C10;
  *(v59 + 432) = v132;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(&v331, &v329);
  v133 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v133, v133);
  v135 = (v311 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v136 + 16))(v135);
  v137 = *v135;

  v138 = sub_1001028B0(0xD00000000000002BLL, 0x8000000100227B70, v137, v1);
  sub_100019CCC(&v331);
  sub_100019CCC(&v329);
  *(v59 + 496) = type metadata accessor for InAppPurchasablesRoute();
  *(v59 + 504) = &off_100284C10;
  *(v59 + 472) = v138;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v139 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v139, v139);
  v141 = (v311 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v142 + 16))(v141);
  v143 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v143, v143);
  v145 = (v311 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v146 + 16))(v145);
  v147 = sub_100101FF8(*v141, *v145, type metadata accessor for TransactionHistoryRoute, 128, sub_1000FF944);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 536) = type metadata accessor for TransactionHistoryRoute();
  *(v59 + 544) = &off_100284C10;
  *(v59 + 512) = v147;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v148 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v148, v148);
  v150 = (v311 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v151 + 16))(v150);
  v152 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v152, v152);
  v154 = (v311 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154);
  v156 = sub_100101FF8(*v150, *v154, type metadata accessor for SingleStatusRoute, 128, sub_1000FFC40);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 576) = type metadata accessor for SingleStatusRoute();
  *(v59 + 584) = &off_100284C10;
  *(v59 + 552) = v156;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v157 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v157, v157);
  v159 = (v311 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v160 + 16))(v159);
  v161 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v161, v161);
  v163 = (v311 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v164 + 16))(v163);
  v165 = sub_100101FF8(*v159, *v163, type metadata accessor for AllStatusRoute, 128, sub_1000FFF3C);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 616) = type metadata accessor for AllStatusRoute();
  *(v59 + 624) = &off_100284C10;
  *(v59 + 592) = v165;
  sub_100026064(v1 + 64, &v331);
  v166 = type metadata accessor for AppInformationRoute();
  v167 = swift_allocObject();
  v168 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v168, v168);
  v170 = (v311 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v171 + 16))(v170);
  v172 = *v170;

  v173 = sub_1001029F8(v172, v1, v167);
  sub_100019CCC(&v331);
  *(v59 + 656) = v166;
  *(v59 + 664) = &off_100284C10;
  *(v59 + 632) = v173;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v174 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v174, v174);
  v176 = (v311 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v177 + 16))(v176);
  v178 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v178, v178);
  v180 = (v311 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v181 + 16))(v180);
  v182 = sub_100101FF8(*v176, *v180, type metadata accessor for AskToBuyPermissionRoute, 128, sub_100100238);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 696) = type metadata accessor for AskToBuyPermissionRoute();
  *(v59 + 704) = &off_100284C10;
  *(v59 + 672) = v182;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v183 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v183, v183);
  v185 = (v311 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v186 + 16))(v185);
  v187 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v187, v187);
  v189 = (v311 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v190 + 16))(v189);
  v191 = sub_100101FF8(*v185, *v189, type metadata accessor for OfferEligibilityRoute, 128, sub_100100534);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v59 + 736) = type metadata accessor for OfferEligibilityRoute();
  *(v59 + 744) = &off_100284C10;
  *(v59 + 712) = v191;
  for (i = 32; i != 752; i += 40)
  {
    sub_100026064(v59 + i, &v331);
    sub_1000E5A50(&v331);
    sub_100019CCC(&v331);
  }

  swift_setDeallocating();
  sub_1001E568C();
  v311[1] = sub_1000183C4(&qword_1002B4128);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_100200C80;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v194 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v194, v194);
  (*(v196 + 16))(v311 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v197, v197);
  (*(v199 + 16))(v311 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = sub_1001021A4();
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v193 + 56) = type metadata accessor for RefundRequestRoute();
  *(v193 + 64) = &off_100284C10;
  *(v193 + 32) = v200;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v201 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v201, v201);
  v203 = (v311 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v204 + 16))(v203);
  v205 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v205, v205);
  v207 = (v311 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v208 + 16))(v207);
  v209 = sub_100101FF8(*v203, *v207, type metadata accessor for RefundRequestUIRoute, 144, sub_100100830);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  v210 = 0;
  if (v209)
  {
    v210 = type metadata accessor for RefundRequestUIRoute();
    v211 = &off_100284C10;
  }

  else
  {
    v211 = 0;
    *(v193 + 80) = 0;
    *(v193 + 88) = 0;
  }

  v212 = v314;
  v213 = v312;
  *(v193 + 72) = v209;
  *(v193 + 96) = v210;
  *(v193 + 104) = v211;
  sub_10016036C(0xD000000000000019, 0x8000000100227BA0, 0x722D646E75666572, 0xEE00747365757165, 29546, 0xE200000000000000, v44);
  v214 = type metadata accessor for StaticResourceRoute();
  if (sub_10001C990(v44, 1, v214) == 1)
  {
    sub_1000374B8(v44, &qword_1002B4118);
    *(v193 + 112) = 0u;
    *(v193 + 128) = 0u;
    *(v193 + 144) = 0;
  }

  else
  {
    *(v193 + 136) = v214;
    *(v193 + 144) = &off_10028F4D8;
    sub_1000629FC((v193 + 112));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000019, 0x8000000100227BC0, 0x6C61626F6C67, 0xE600000000000000, 7566179, 0xE300000000000000, v213);
  v215 = sub_10001C990(v213, 1, v214);
  v216 = v313;
  if (v215 == 1)
  {
    sub_1000374B8(v213, &qword_1002B4118);
    *(v193 + 152) = 0u;
    *(v193 + 168) = 0u;
    *(v193 + 184) = 0;
  }

  else
  {
    *(v193 + 176) = v214;
    *(v193 + 184) = &off_10028F4D8;
    sub_1000629FC((v193 + 152));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000019, 0x8000000100227BE0, 0x722D646E75666572, 0xEE00747365757165, 7566179, 0xE300000000000000, v216);
  if (sub_10001C990(v216, 1, v214) == 1)
  {
    sub_1000374B8(v216, &qword_1002B4118);
    *(v193 + 192) = 0u;
    *(v193 + 208) = 0u;
    *(v193 + 224) = 0;
  }

  else
  {
    *(v193 + 216) = v214;
    *(v193 + 224) = &off_10028F4D8;
    sub_1000629FC((v193 + 192));
    sub_100103A00();
  }

  *(v193 + 256) = &type metadata for SystemImageRoute;
  *(v193 + 264) = &off_100291CC0;
  sub_10016036C(0xD000000000000029, 0x8000000100227C00, 0xD000000000000018, 0x8000000100227C30, 6778480, 0xE300000000000000, v212);
  if (sub_10001C990(v212, 1, v214) == 1)
  {
    sub_1000374B8(v212, &qword_1002B4118);
    *(v193 + 272) = 0u;
    *(v193 + 288) = 0u;
    *(v193 + 304) = 0;
  }

  else
  {
    *(v193 + 296) = v214;
    *(v193 + 304) = &off_10028F4D8;
    sub_1000629FC((v193 + 272));
    sub_100103A00();
  }

  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v217 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v217, v217);
  (*(v219 + 16))(v311 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v220, v220);
  (*(v222 + 16))(v311 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = sub_100101E90();
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v193 + 336) = type metadata accessor for OfferCodeRedeemUIRoute();
  *(v193 + 344) = &off_100284C10;
  *(v193 + 312) = v223;
  v224 = v315;
  sub_10016036C(0xD00000000000001ELL, 0x8000000100227C50, 0x6465722D65646F63, 0xEB000000006D6565, 29546, 0xE200000000000000, v315);
  if (sub_10001C990(v224, 1, v214) == 1)
  {
    sub_1000374B8(v224, &qword_1002B4118);
    *(v193 + 352) = 0u;
    *(v193 + 368) = 0u;
    *(v193 + 384) = 0;
  }

  else
  {
    *(v193 + 376) = v214;
    *(v193 + 384) = &off_10028F4D8;
    sub_1000629FC((v193 + 352));
    sub_100103A00();
  }

  v225 = v316;
  sub_10016036C(0xD00000000000001ELL, 0x8000000100227C70, 0x6465722D65646F63, 0xEB000000006D6565, 7566179, 0xE300000000000000, v316);
  if (sub_10001C990(v225, 1, v214) == 1)
  {
    sub_1000374B8(v225, &qword_1002B4118);
    *(v193 + 392) = 0u;
    *(v193 + 408) = 0u;
    *(v193 + 424) = 0;
  }

  else
  {
    *(v193 + 416) = v214;
    *(v193 + 424) = &off_10028F4D8;
    sub_1000629FC((v193 + 392));
    sub_100103A00();
  }

  v226 = _swiftEmptyArrayStorage;
  for (j = 32; j != 432; j += 40)
  {
    sub_1000ACFAC();
    v326 = v331;
    v327 = v332;
    v328 = v333;
    if (*(&v332 + 1))
    {
      sub_10002DD3C(&v326, &v329);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000325D4();
        v226 = v229;
      }

      v228 = v226[2];
      if (v228 >= v226[3] >> 1)
      {
        sub_1000325D4();
        v226 = v230;
      }

      v226[2] = v228 + 1;
      sub_10002DD3C(&v329, &v226[5 * v228 + 4]);
    }

    else
    {
      sub_1000374B8(&v326, &qword_1002B4130);
    }
  }

  swift_setDeallocating();
  sub_1001E56A0();
  v231 = v226[2];
  if (v231)
  {
    v232 = (v226 + 4);
    do
    {
      sub_100026064(v232, &v331);
      sub_1000E5A50(&v331);
      sub_100019CCC(&v331);
      v232 += 40;
      --v231;
    }

    while (v231);
  }

  v233 = swift_allocObject();
  *(v233 + 16) = xmmword_10020CCE0;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v234 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v234, v234);
  v236 = (v311 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v237 + 16))(v236);
  v238 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v238, v238);
  v240 = (v311 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v241 + 16))(v240);
  v242 = sub_100101FF8(*v236, *v240, type metadata accessor for SubscriptionsListUIRoute, 144, sub_100100B38);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  v243 = 0;
  if (v242)
  {
    v243 = type metadata accessor for SubscriptionsListUIRoute();
    v244 = &off_100284C10;
  }

  else
  {
    v244 = 0;
    *(v233 + 40) = 0;
    *(v233 + 48) = 0;
  }

  *(v233 + 32) = v242;
  *(v233 + 56) = v243;
  *(v233 + 64) = v244;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v245 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v245, v245);
  v247 = (v311 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v248 + 16))(v247);
  v249 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v249, v249);
  v251 = (v311 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v252 + 16))(v251);
  v253 = sub_100101FF8(*v247, *v251, type metadata accessor for EditSubscriptionUIRoute, 144, sub_100100E38);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  v254 = 0;
  if (v253)
  {
    v254 = type metadata accessor for EditSubscriptionUIRoute();
    v255 = &off_100284C10;
  }

  else
  {
    v255 = 0;
    *(v233 + 80) = 0;
    *(v233 + 88) = 0;
  }

  *(v233 + 72) = v253;
  *(v233 + 96) = v254;
  *(v233 + 104) = v255;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v256 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v256, v256);
  v258 = (v311 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v259 + 16))(v258);
  v260 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v260, v260);
  v262 = (v311 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v263 + 16))(v262);
  v264 = sub_100101FF8(*v258, *v262, type metadata accessor for EditSubscriptionHelperRoute, 128, sub_100101138);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v233 + 136) = type metadata accessor for EditSubscriptionHelperRoute();
  *(v233 + 144) = &off_100284C10;
  *(v233 + 112) = v264;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v265 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v265, v265);
  v267 = (v311 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v268 + 16))(v267);
  v269 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v269, v269);
  v271 = (v311 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v272 + 16))(v271);
  v273 = sub_100101FF8(*v267, *v271, type metadata accessor for DisableAutoRenewRoute, 128, sub_100101738);
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v233 + 176) = type metadata accessor for DisableAutoRenewRoute();
  *(v233 + 184) = &off_100284C10;
  *(v233 + 152) = v273;
  v274 = v317;
  sub_10016036C(0x697263736275732FLL, 0xEE00736E6F697470, 0x7069726373627573, 0xED0000736E6F6974, 1819112552, 0xE400000000000000, v317);
  if (sub_10001C990(v274, 1, v214) == 1)
  {
    sub_1000374B8(v274, &qword_1002B4118);
    *(v233 + 192) = 0u;
    *(v233 + 208) = 0u;
    *(v233 + 224) = 0;
  }

  else
  {
    *(v233 + 216) = v214;
    *(v233 + 224) = &off_10028F4D8;
    sub_1000629FC((v233 + 192));
    sub_100103A00();
  }

  v275 = v319;
  v276 = v318;
  sub_10016036C(0xD000000000000020, 0x8000000100227C90, 0x7069726373627573, 0xED0000736E6F6974, 29546, 0xE200000000000000, v318);
  if (sub_10001C990(v276, 1, v214) == 1)
  {
    sub_1000374B8(v276, &qword_1002B4118);
    *(v233 + 232) = 0u;
    *(v233 + 248) = 0u;
    *(v233 + 264) = 0;
  }

  else
  {
    *(v233 + 256) = v214;
    *(v233 + 264) = &off_10028F4D8;
    sub_1000629FC((v233 + 232));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000020, 0x8000000100227CC0, 0x7069726373627573, 0xED0000736E6F6974, 7566179, 0xE300000000000000, v275);
  if (sub_10001C990(v275, 1, v214) == 1)
  {
    sub_1000374B8(v275, &qword_1002B4118);
    *(v233 + 272) = 0u;
    *(v233 + 288) = 0u;
    *(v233 + 304) = 0;
  }

  else
  {
    *(v233 + 296) = v214;
    *(v233 + 304) = &off_10028F4D8;
    sub_1000629FC((v233 + 272));
    sub_100103A00();
  }

  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v277 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v277, v277);
  (*(v279 + 16))(v311 - ((v278 + 15) & 0xFFFFFFFFFFFFFFF0));
  v280 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v280, v280);
  (*(v282 + 16))(v311 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0));
  v283 = sub_100101E90();
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v233 + 336) = type metadata accessor for PriceIncreaseUIRoute();
  *(v233 + 344) = &off_100284C10;
  *(v233 + 312) = v283;
  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v284 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v284, v284);
  (*(v286 + 16))(v311 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0));
  v287 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v287, v287);
  (*(v289 + 16))(v311 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0));
  v290 = sub_1001021A4();
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v233 + 376) = type metadata accessor for PriceIncreaseHelperRoute();
  *(v233 + 384) = &off_100284C10;
  *(v233 + 352) = v290;
  v291 = v320;
  sub_10016036C(0xD000000000000021, 0x8000000100227CF0, 0x6E692D6563697270, 0xEE00657361657263, 29546, 0xE200000000000000, v320);
  if (sub_10001C990(v291, 1, v214) == 1)
  {
    sub_1000374B8(v291, &qword_1002B4118);
    *(v233 + 392) = 0u;
    *(v233 + 408) = 0u;
    *(v233 + 424) = 0;
  }

  else
  {
    *(v233 + 416) = v214;
    *(v233 + 424) = &off_10028F4D8;
    sub_1000629FC((v233 + 392));
    sub_100103A00();
  }

  v292 = v321;
  sub_10016036C(0xD000000000000021, 0x8000000100227D20, 0x6E692D6563697270, 0xEE00657361657263, 7566179, 0xE300000000000000, v321);
  if (sub_10001C990(v292, 1, v214) == 1)
  {
    sub_1000374B8(v292, &qword_1002B4118);
    *(v233 + 432) = 0u;
    *(v233 + 448) = 0u;
    *(v233 + 464) = 0;
  }

  else
  {
    *(v233 + 456) = v214;
    *(v233 + 464) = &off_10028F4D8;
    sub_1000629FC((v233 + 432));
    sub_100103A00();
  }

  sub_100026064(v1 + 64, &v331);
  sub_100026064(v1 + 104, &v329);
  v293 = sub_10004BD98(&v331, *(&v332 + 1));
  __chkstk_darwin(v293, v293);
  (*(v295 + 16))(v311 - ((v294 + 15) & 0xFFFFFFFFFFFFFFF0));
  v296 = sub_10004BD98(&v329, v330);
  __chkstk_darwin(v296, v296);
  (*(v298 + 16))(v311 - ((v297 + 15) & 0xFFFFFFFFFFFFFFF0));
  v299 = sub_1001021A4();
  sub_100019CCC(&v329);
  sub_100019CCC(&v331);
  *(v233 + 496) = type metadata accessor for BillingErrorHelperRoute();
  *(v233 + 504) = &off_100284C10;
  *(v233 + 472) = v299;
  v300 = v322;
  sub_10016036C(0x676E696C6C69622FLL, 0xED0000726F727245, 0x2D676E696C6C6962, 0xED0000726F727265, 1819112552, 0xE400000000000000, v322);
  if (sub_10001C990(v300, 1, v214) == 1)
  {
    sub_1000374B8(v300, &qword_1002B4118);
    *(v233 + 512) = 0u;
    *(v233 + 528) = 0u;
    *(v233 + 544) = 0;
  }

  else
  {
    *(v233 + 536) = v214;
    *(v233 + 544) = &off_10028F4D8;
    sub_1000629FC((v233 + 512));
    sub_100103A00();
  }

  v301 = v325;
  v302 = v323;
  sub_10016036C(0xD000000000000020, 0x8000000100227D50, 0x2D676E696C6C6962, 0xED0000726F727265, 29546, 0xE200000000000000, v323);
  if (sub_10001C990(v302, 1, v214) == 1)
  {
    sub_1000374B8(v302, &qword_1002B4118);
    *(v233 + 552) = 0u;
    *(v233 + 568) = 0u;
    *(v233 + 584) = 0;
  }

  else
  {
    *(v233 + 576) = v214;
    *(v233 + 584) = &off_10028F4D8;
    sub_1000629FC((v233 + 552));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000020, 0x8000000100227D80, 0x2D676E696C6C6962, 0xED0000726F727265, 7566179, 0xE300000000000000, v301);
  if (sub_10001C990(v301, 1, v214) == 1)
  {
    sub_1000374B8(v301, &qword_1002B4118);
    *(v233 + 592) = 0u;
    *(v233 + 608) = 0u;
    *(v233 + 624) = 0;
  }

  else
  {
    *(v233 + 616) = v214;
    *(v233 + 624) = &off_10028F4D8;
    sub_1000629FC((v233 + 592));
    sub_100103A00();
  }

  v303 = _swiftEmptyArrayStorage;
  for (k = 32; k != 632; k += 40)
  {
    sub_1000ACFAC();
    v326 = v331;
    v327 = v332;
    v328 = v333;
    if (*(&v332 + 1))
    {
      sub_10002DD3C(&v326, &v329);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000325D4();
        v303 = v306;
      }

      v305 = v303[2];
      if (v305 >= v303[3] >> 1)
      {
        sub_1000325D4();
        v303 = v307;
      }

      v303[2] = v305 + 1;
      sub_10002DD3C(&v329, &v303[5 * v305 + 4]);
    }

    else
    {
      sub_1000374B8(&v326, &qword_1002B4130);
    }
  }

  swift_setDeallocating();
  sub_1001E56A0();
  v308 = v303[2];
  if (v308)
  {
    v309 = (v303 + 4);
    do
    {
      sub_100026064(v309, &v331);
      sub_1000E5A50(&v331);
      sub_100019CCC(&v331);
      v309 += 40;
      --v308;
    }

    while (v308);
  }
}

void sub_1000F98E4()
{
  v1 = *(*(*sub_10001AE68((v0 + 64), *(v0 + 88)) + 24) + 16);

  os_unfair_lock_lock(v1);
  sub_10007B9BC();
  sub_1000793C4();
  os_unfair_lock_unlock(v1);

  sub_100103C20();
  sub_10007B9A4();
  sub_10008CEC4();
}

uint64_t sub_1000F9984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1001F6508();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  sub_100023510();
  v15 = v14 - v13;
  if (!swift_weakLoadStrong())
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v47 = v3;
    v48 = a2;
    v16 = sub_1001F6688();
    sub_100019C94(v16, qword_1002E6180);
    v17 = sub_1001F6668();
    v18 = sub_1001F72A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Creating temporary buy route to simulate off-device buy.", v19, 2u);
      sub_100021754();
    }

    sub_100026064(v5 + 64, v51);
    sub_100026064(v5 + 104, v49);
    sub_1000183C4(&qword_1002B4120);
    v46[0] = swift_allocObject();
    sub_10004BD98(v51, v51[3]);
    v46[1] = v46;
    sub_10002DFFC();
    __chkstk_darwin(v20, v21);
    sub_100023510();
    v24 = (v23 - v22);
    (*(v25 + 16))(v23 - v22);
    sub_10004BD98(v49, v50);
    sub_10002DFFC();
    __chkstk_darwin(v26, v27);
    v29 = sub_100103BE8(v28, v46[0]);
    v30(v29);
    v31 = *v24;
    v32 = *v4;

    sub_100102438(v33, v31, v32, v46[0]);
    sub_100019CCC(v49);
    sub_100019CCC(v51);
    v4 = v47;
    a2 = v48;
  }

  sub_1001F64E8();
  sub_1000EFC84(a1, a2);
  if (v4)
  {
    v34 = sub_10007B9A4();
    v35(v34);

    sub_100103F44();
    sub_1000183C4(&qword_1002ACE88);
    if (sub_100103C94() && v49[0] == 1)
    {

      sub_100050490();
      sub_10002E0D8();
      swift_allocError();
      *v36 = 0;
LABEL_24:
      swift_willThrow();
    }

    sub_100103F44();
    if (sub_100103C94())
    {

      v43 = v49[0];
      sub_100050490();
LABEL_23:
      sub_10002E0D8();
      swift_allocError();
      *v44 = v43;
      goto LABEL_24;
    }

    sub_100103F44();
    if (sub_100103C94())
    {

      v43 = v49[0];
      sub_10005C288();
      goto LABEL_23;
    }

    sub_100103F44();
    if (sub_100103C94())
    {

      v43 = v49[0];
      sub_1001032F0();
      goto LABEL_23;
    }

    sub_10005C288();
    sub_10002E0D8();
    swift_allocError();
    *v45 = 3;
    swift_willThrow();
  }

  else
  {
    v48 = v8;
    v37 = a2;

    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    v39 = *a1;
    v38 = a1[1];
    sub_100130A24(v39, v38);
    sub_1001F6428();
    v40 = *(v37 + 40);
    if (v41 < sub_1000BFDA8() || (*(v40 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) != 0)
    {
      sub_1000FC3FC(0, v39, v38, 0xD000000000000011, 0x8000000100227F40);

      return (*(v10 + 8))(v15, v48);
    }

    else
    {
      (*(v10 + 8))(v15, v48);
    }
  }
}

uint64_t sub_1000F9F44@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PurchaseConfiguration();
  sub_100023520();
  __chkstk_darwin(v3, v4);
  sub_100099484();
  __chkstk_darwin(v5, v6);
  v8 = (&v23 - v7);
  sub_1001F6158();
  swift_allocObject();
  sub_1001F6148();
  sub_1001038BC(&qword_1002B4138, type metadata accessor for PurchaseConfiguration);
  sub_1001F6138();
  if (v1)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v9 = sub_1001F6688();
    sub_100019C94(v9, qword_1002E6180);
    swift_errorRetain();
    v10 = sub_1001F6668();
    v11 = sub_1001F7298();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100099504();
      v12 = swift_slowAlloc();
      sub_100103CF0();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      sub_100103EE8();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      sub_1000374B8(v13, &unk_1002BA650);
      sub_100021754();

      sub_100099474();
    }

    sub_10005C288();
    sub_10002E0D8();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }

  else
  {
    sub_100103A00();
    sub_1000F9984(v8, a1);
    sub_1001039A8(v8, type metadata accessor for PurchaseConfiguration);
  }
}

uint64_t sub_1000FA204(char a1)
{
  sub_100103C20();
  v3 = sub_100103D60();
  if (v3)
  {
    v4 = v3;
    switch(sub_1000C257C())
    {
      case 3u:

        goto LABEL_7;
      default:
        v7 = sub_1001F7EA8();

        if (v7)
        {
LABEL_7:
          if (a1)
          {
            v9 = sub_1000BFC14();
            v11 = v10;
          }

          else
          {
            v9 = 0;
            v11 = 0;
          }

          sub_1000C1ACC(v9, v11);

          sub_1000C1B88(5u);
          sub_1000AD62C((v1 + 104), *(v1 + 128));
          v12 = sub_10008EA08(v4, 1);
          if (v12 == 4)
          {

            return 0;
          }

          v13 = v12;
          sub_10005C288();
          sub_10002E0D8();
          v5 = swift_allocError();
          *v14 = v13;
        }

        else
        {
          sub_10005C288();
          sub_10002E0D8();
          v5 = swift_allocError();
          *v8 = 1;
        }

        break;
    }
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_100103D04(v5, v6);
  }

  return v5;
}

uint64_t sub_1000FA414()
{
  v1 = v0;
  sub_100037B94();
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v2 = qword_1002E60D8;
  v3 = sub_100037B7C();
  sub_1001323E4(v3, v4, 0, v5, v6, v7, v8, v9);
  sub_1000AD62C((v1 + 64), *(v1 + 88));
  v10 = *(*(v2 + 24) + 16);

  os_unfair_lock_lock(v10);
  sub_100103E6C();
  sub_1000794A8(v11);
  os_unfair_lock_unlock(v10);

  return 0;
}

uint64_t sub_1000FA4D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100103C40();
  sub_100103C20();
  v6 = sub_100103D60();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    v8 = sub_10008CB2C(v7, a4 & 1);
    if (v8 == 4)
    {

      return 0;
    }

    else
    {
      v11 = v8;
      sub_10005C288();
      sub_10002E0D8();
      v9 = swift_allocError();
      *v12 = v11;
    }
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100103D04(v9, v10);
  }

  return v9;
}

uint64_t sub_1000FA5B8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  sub_1001F6508();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100023510();
  sub_10001AE68(v3 + 8, v3[11]);
  sub_100103C50();
  sub_1000795A8();
  v12 = sub_1000EDE14(a1, a2);

  if (!v12)
  {
    goto LABEL_9;
  }

  HIDWORD(v38) = a3;
  type metadata accessor for OctaneSubscription();
  if (!swift_dynamicCastClass())
  {

LABEL_9:
    sub_100050490();
    sub_10002E0D8();
    v21 = swift_allocError();
    *v22 = 0;
    return v21;
  }

  sub_10001AE68(v3 + 13, v3[16]);
  sub_1001F64E8();
  sub_100103E6C();
  v13 = sub_10008D53C();
  v14 = *(v9 + 8);
  v15 = sub_1000701E4();
  v14(v15);
  if (v13)
  {
    sub_1001F64E8();
    v16 = sub_1000C18DC();
    v17 = sub_1000701E4();
    v14(v17);
    if ((v38 & 0x100000000) != 0)
    {
      if ((v16 & 1) == 0)
      {
LABEL_21:

        return 0;
      }

      sub_1001F64F8();
      sub_1001F6428();
      v19 = v18;
      v20 = sub_1000701E4();
      v14(v20);
      sub_1000C223C(v19, 0);
      sub_1000C1ACC(0, 0);
      if (sub_1000C152C() != 5)
      {
        sub_1000C1B88(2u);
      }
    }

    else
    {
      sub_1001F64F8();
      sub_1001F6428();
      v25 = v24;
      v26 = sub_1000701E4();
      v14(v26);
      sub_1000C223C(v25, 0);
    }

    sub_1000AD62C(v4 + 13, v4[16]);
    sub_10008EA08(v13, 1);
    if ((v38 & 0x100000000) == 0)
    {
      sub_10001AE68(v4 + 8, v4[11]);
      sub_100103C50();
      if (sub_10007AB88())
      {
        sub_1000AD62C(v4 + 13, v4[16]);
        sub_10008EF68();
      }

      else
      {
        if (qword_1002AC420 != -1)
        {
          swift_once();
        }

        sub_10004EBCC(v13);
        sub_1000AD62C(v4 + 13, v4[16]);
        sub_10008BF94(v13, 0, v27, v28, v29, v30, v31, v32, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      }

      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v34 = sub_100037B7C();
      sub_100130A24(v34, v35);
    }

    goto LABEL_21;
  }

  sub_10005C288();
  sub_10002E0D8();
  v21 = swift_allocError();
  sub_100103D04(v21, v23);

  return v21;
}

void sub_1000FA930(uint64_t a1)
{
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  sub_1001318E0(a1);
}

uint64_t sub_1000FA984()
{
  sub_100037B94();
  sub_100103C20();
  v0 = sub_100037B7C();
  v2 = sub_10008E918(v0, v1);
  v73 = sub_10013B560(v2);
  if (!v73)
  {

    goto LABEL_52;
  }

  v3 = 0;
  v72 = v2 & 0xC000000000000001;
  v70 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = _swiftEmptyDictionarySingleton;
  v71 = v2;
  do
  {
    if (v72)
    {
      sub_10007B9BC();
      v5 = sub_1001F7808();
    }

    else
    {
      if (v3 >= *(v70 + 16))
      {
        goto LABEL_62;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v8 = sub_1000C5388(15);
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = v8;
    v11 = v9;
    if (v4[2] && (v12 = sub_100103EB8(), (v13 & 1) != 0))
    {
      v14 = *(v4[7] + 8 * v12);
      if (v14 >= sub_1000C1A68())
      {

LABEL_26:

        goto LABEL_27;
      }

      v15 = *&v6[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v75 = v4;
      v17 = v10;
      sub_100103EB8();
      sub_100103F10();
      if (v20)
      {
        goto LABEL_64;
      }

      v21 = v18;
      v22 = v19;
      sub_1000183C4(&qword_1002B4158);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v4))
      {
        v23 = sub_10011108C();
        v2 = v71;
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_68;
        }

        v21 = v23;
      }

      else
      {
        v2 = v71;
      }

      v4 = v75;
      if (v22)
      {
        *(*(v75 + 56) + 8 * v21) = v15;
      }

      else
      {
        sub_100103EFC(v75 + 8 * (v21 >> 6));
        v39 = (v38 + 16 * v21);
        *v39 = v17;
        v39[1] = v11;
        *(v4[7] + 8 * v21) = v15;
        v40 = v4[2];
        v20 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v20)
        {
          goto LABEL_65;
        }

        v4[2] = v41;
      }

      v7 = v3 + 1;
    }

    else
    {
      v25 = sub_1000C1A68();
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *&v75 = v4;
      v27 = v10;
      sub_100103EB8();
      sub_100103F10();
      if (v20)
      {
        goto LABEL_61;
      }

      v30 = v28;
      v31 = v29;
      sub_1000183C4(&qword_1002B4158);
      if (sub_1001F7A98(v26, v4))
      {
        v32 = sub_10011108C();
        if ((v31 & 1) != (v33 & 1))
        {
LABEL_68:
          result = sub_1001F7FC8();
          __break(1u);
          return result;
        }

        v30 = v32;
      }

      if (v31)
      {

        v4 = v75;
        *(*(v75 + 56) + 8 * v30) = v25;
      }

      else
      {
        v4 = v75;
        sub_100103EFC(v75 + 8 * (v30 >> 6));
        v35 = (v34 + 16 * v30);
        *v35 = v27;
        v35[1] = v11;
        *(v4[7] + 8 * v30) = v25;

        v36 = v4[2];
        v20 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v20)
        {
          goto LABEL_63;
        }

        v4[2] = v37;
      }

      v7 = v3 + 1;
      v2 = v71;
    }

LABEL_27:
    ++v3;
  }

  while (v7 != v73);
  if (v73 < 1)
  {
    goto LABEL_66;
  }

  v42 = 0;
  v43 = _swiftEmptyArrayStorage;
  do
  {
    if (v72)
    {
      v44 = sub_1001F7808();
    }

    else
    {
      v44 = *(v2 + 8 * v42 + 32);
    }

    v45 = v44;
    v46 = sub_1000BFF88();
    v47 = sub_1000C5388(15);
    if (v48)
    {
      v49 = sub_1001F1394(v47, v48, v4);
      v51 = v50;

      if ((v51 & 1) == 0 && sub_1000C1A68() == v49)
      {
        v76 = &type metadata for Bool;
        LOBYTE(v75) = 1;
        sub_10003708C(&v75, &v74);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1001E5A4C();
      }

      v2 = v71;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032BE8();
      v43 = v53;
    }

    v52 = v43[2];
    if (v52 >= v43[3] >> 1)
    {
      sub_100032BE8();
      v43 = v54;
    }

    ++v42;

    v43[2] = v52 + 1;
    v43[v52 + 4] = v46;
  }

  while (v73 != v42);

LABEL_52:
  v55 = objc_opt_self();
  sub_1000183C4(&qword_1002ADB98);
  isa = sub_1001F6F18().super.isa;

  *&v75 = 0;
  v57 = [v55 dataWithJSONObject:isa options:0 error:&v75];

  v58 = v75;
  if (v57)
  {
    v59 = sub_1001F63C8();
  }

  else
  {
    v60 = v58;
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
LABEL_67:
      sub_1000216F8();
      swift_once();
    }

    v61 = sub_1001F6688();
    sub_10009951C(v61, qword_1002E6180);
    swift_errorRetain();
    v62 = sub_1001F6668();
    v63 = sub_1001F7298();

    if (os_log_type_enabled(v62, v63))
    {
      sub_100099504();
      v64 = swift_slowAlloc();
      v65 = sub_10003A894();
      *&v75 = v65;
      *v64 = 136446210;
      swift_getErrorValue();
      v66 = sub_1001F7FE8();
      v68 = sub_1000E4544(v66, v67, &v75);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Error serializing transaction dictionaries: %{public}s", v64, 0xCu);
      sub_100019CCC(v65);
      sub_100021754();

      sub_100099474();
    }

    else
    {
    }

    return 0;
  }

  return v59;
}

uint64_t sub_1000FB050()
{
  sub_100103C20();
  v1 = sub_10008E840();
  if (v1)
  {
    v2 = v1;
    sub_1000AD62C((v0 + 104), *(v0 + 128));
    v3 = 0;
    sub_10008E384(v2, 1, 0);
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v3 = swift_allocError();
    sub_100103D04(v3, v4);
  }

  return v3;
}

uint64_t sub_1000FB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_100103C40();
  sub_100103C20();
  v6 = sub_100103D60();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    v8 = a4(v7);
    if (v8 == 4)
    {

      return 0;
    }

    else
    {
      v11 = v8;
      sub_10005C288();
      sub_10002E0D8();
      v9 = swift_allocError();
      *v12 = v11;
    }
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100103D04(v9, v10);
  }

  return v9;
}

uint64_t sub_1000FB1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000AD62C((v4 + 64), *(v4 + 88));
  v7 = sub_10007B9BC();
  return sub_100079C88(v7, v8, 6, a3, a4);
}

void sub_1000FB238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  sub_1000AD62C((v4 + 64), *(v4 + 88));
  if ((sub_10007A620(a1, a2, a3, a4) & 1) == 0)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_10009951C(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F72B8();

    if (os_log_type_enabled(v11, v12))
    {
      sub_100099504();
      v13 = swift_slowAlloc();
      v25 = sub_10003A894();
      *v13 = 136315138;
      v14 = sub_100037B7C();
      *(v13 + 4) = sub_1000E4544(v14, v15, v16);
      sub_100103EE8();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
      sub_100019CCC(v25);
      sub_100021754();

      sub_100099474();
    }

    sub_10001AE68((v5 + 104), *(v5 + 128));
    v23 = sub_100103C50();
    sub_1000910F8(v23, v24);
  }

  sub_10002E230();
}

void sub_1000FB38C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100103C20();
  sub_10007B9BC();
  v6 = sub_10008E840();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    sub_10008F8E8(v7, a4 & 1);
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v8 = swift_allocError();
    sub_100103D04(v8, v9);
  }
}

uint64_t sub_1000FB424(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100103C40();
  sub_100103C20();
  v6 = sub_100103D60();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    sub_10008FD70(v7, a4 & 1);

    return 0;
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100103D04(v9, v8);
  }

  return v9;
}

uint64_t sub_1000FB65C()
{
  v1 = v0;
  sub_100037B94();
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v2 = sub_1001F6688();
  sub_100019C94(v2, qword_1002E6180);

  v3 = sub_1001F6668();
  v4 = sub_1001F72B8();

  if (os_log_type_enabled(v3, v4))
  {
    sub_100099504();
    v5 = swift_slowAlloc();
    v32 = sub_10003A894();
    *v5 = 136315138;
    v6 = sub_100037B7C();
    *(v5 + 4) = sub_1000E4544(v6, v7, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "appstored is checking for messages for %s", v5, 0xCu);
    sub_100019CCC(v32);
    sub_100021754();

    sub_100021754();
  }

  sub_10001AE68(v1 + 13, v1[16]);
  sub_100103C50();
  v9 = sub_10008FFB8();
  if (!v10)
  {

    v20 = sub_1001F6668();
    sub_1001F72B8();

    if (sub_100103F5C())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = v9;
  v12 = v10;
  v13 = *(v1[6] + 16);

  os_unfair_lock_lock(v13);
  os_unfair_lock_unlock(v13);

  sub_100103E6C();
  v18 = sub_1000B4DDC(v14, v15, v16, v11, v12, v17);

  if (!v18)
  {

    v20 = sub_1001F6668();
    sub_1001F72B8();

    if (sub_100103F5C())
    {
LABEL_11:
      sub_100099504();
      v21 = swift_slowAlloc();
      v22 = sub_10003A894();
      *v21 = 136315138;
      v23 = sub_100037B7C();
      *(v21 + 4) = sub_1000E4544(v23, v24, v25);
      sub_100103DB8();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_100019CCC(v22);
      sub_100099474();

      sub_100021754();
    }

LABEL_12:

    return 0;
  }

  v19 = sub_1001DEFAC(v18);

  return v19;
}

uint64_t sub_1000FB934(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v4 = sub_1001F6688();
  sub_10009951C(v4, qword_1002E6180);

  v5 = sub_1001F6668();
  v6 = sub_1001F72B8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v33 = sub_10003A894();
    *v7 = 136315394;
    v8 = sub_100037B7C();
    *(v7 + 4) = sub_1000E4544(v8, v9, v10);
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1 + 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "storekitd is checking for messages for %s with type %ld", v7, 0x16u);
    sub_100019CCC(v33);
    sub_100021754();

    sub_100021754();
  }

  if ((a1 - 1) > 2u)
  {
    v25 = sub_1001F6668();
    v26 = sub_1001F72B8();
    if (sub_100099534(v26))
    {
      sub_100099504();
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = 1;
      sub_100103E78();
      _os_log_impl(v28, v29, v30, v31, v27, 0xCu);
      sub_100021754();
    }

    return 0;
  }

  sub_1000AD62C((v1 + 104), *(v1 + 128));
  sub_100103E6C();
  v14 = sub_100090FDC(v11, v12, v13);
  if (!v15)
  {
    return 0;
  }

  v16 = v14;
  v17 = v15;
  v18 = *(*(v2 + 48) + 16);

  os_unfair_lock_lock(v18);
  os_unfair_lock_unlock(v18);

  sub_100103E6C();
  v23 = sub_1000B4DDC(v19, v20, v21, v16, v17, v22);

  if (!v23)
  {
    return 0;
  }

  v24 = sub_1001DEFAC(v23);

  return v24;
}

uint64_t sub_1000FBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000AD62C((v4 + 64), *(v4 + 88));
  sub_100079A18(a1, 0, a2, a3, a4, v9, v10, v11);
  return 0;
}

uint64_t sub_1000FBE8C()
{
  sub_100019CCC(v0 + 64);
  sub_100019CCC(v0 + 104);

  return swift_weakDestroy();
}

uint64_t sub_1000FBEC4()
{
  v0 = sub_1000E5CF8();
  sub_100019CCC(v0 + 64);
  sub_100019CCC(v0 + 104);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1000FBF04()
{
  sub_1000FBEC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000FBF88()
{
  v1 = *(*(v0 + 48) + 16);

  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40);
  os_unfair_lock_unlock(v1);

  return v2;
}

void sub_1000FBFE4(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  if (*(v2 + 56))
  {
    swift_getKeyPath();
    sub_1000A3FC4();
    v4 = swift_allocObject();
    sub_100103D7C(v4);

    sub_10007B9A4();
    sub_1000FC704();

    swift_unknownObjectRelease();

LABEL_4:
    sub_10002E230();
    return;
  }

  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v5 = sub_1001F6688();
  sub_10009951C(v5, qword_1002E6180);
  oslog = sub_1001F6668();
  v6 = sub_1001F7298();
  if (os_log_type_enabled(oslog, v6))
  {
    sub_100099504();
    v7 = swift_slowAlloc();
    sub_100103CF0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_1000ACEB0();
    if (a1)
    {
      v9 = 37;
    }

    else
    {
      v9 = 36;
    }

    v10.super.super.isa = sub_1001F73C8(v9).super.super.isa;
    *(v7 + 4) = v10;
    v8->super.super.isa = v10.super.super.isa;
    sub_100103F24(&_mh_execute_header, v11, v12, "Unable to communicate with daemon to simulate push %@", v13, v14, v15, v16, v19, oslog);
    sub_1000374B8(v8, &unk_1002BA650);
    sub_100021754();

    sub_100021754();
  }

  sub_10002E230();
}

void sub_1000FC1F0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  if (*(v2 + 56))
  {
    swift_getKeyPath();
    sub_1000A3FC4();
    v4 = swift_allocObject();
    sub_100103D7C(v4);

    sub_10007B9A4();
    sub_1000FC704();

    swift_unknownObjectRelease();

LABEL_4:
    sub_10002E230();
    return;
  }

  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v5 = sub_1001F6688();
  sub_10009951C(v5, qword_1002E6180);
  oslog = sub_1001F6668();
  v6 = sub_1001F7298();
  if (os_log_type_enabled(oslog, v6))
  {
    sub_100099504();
    v7 = swift_slowAlloc();
    sub_100103CF0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_1000ACEB0();
    if (a1)
    {
      v9 = 37;
    }

    else
    {
      v9 = 36;
    }

    v10.super.super.isa = sub_1001F73C8(v9).super.super.isa;
    *(v7 + 4) = v10;
    v8->super.super.isa = v10.super.super.isa;
    sub_100103F24(&_mh_execute_header, v11, v12, "Unable to communicate with daemon to simulate push %@", v13, v14, v15, v16, v19, oslog);
    sub_1000374B8(v8, &unk_1002BA650);
    sub_100021754();

    sub_100021754();
  }

  sub_10002E230();
}

void sub_1000FC3FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 56);
  if (v7)
  {
    v12 = a1 & 1;
    KeyPath = swift_getKeyPath();
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v12;
    *(v14 + 32) = a4;
    *(v14 + 40) = a5;
    *(v14 + 48) = v7;
    swift_unknownObjectRetain_n();

    sub_1000FC994(a2, a3, KeyPath, sub_100103358, v14);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);
    oslog = sub_1001F6668();
    v16 = sub_1001F7298();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      sub_1000ACEB0();
      if (a1)
      {
        v19 = 37;
      }

      else
      {
        v19 = 36;
      }

      v20.super.super.isa = sub_1001F73C8(v19).super.super.isa;
      *(v17 + 4) = v20;
      v18->super.super.isa = v20.super.super.isa;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Unable to communicate with daemon to simulate push %@", v17, 0xCu);
      sub_1000374B8(v18, &unk_1002BA650);
    }
  }
}

uint64_t sub_1000FC654(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1000FC698(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

void sub_1000FC704()
{
  sub_100037C08();
  v29 = v1;
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1001F6738();
  sub_10001A278();
  __chkstk_darwin(v13, v14);
  sub_100023510();
  sub_1001F6768();
  sub_10001A278();
  v30 = v16;
  v31 = v15;
  __chkstk_darwin(v15, v17);
  sub_100023510();
  v20 = v19 - v18;
  sub_1000A3FC4();
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = v10;
  v21[4] = v8;
  v21[5] = v6;
  v21[6] = v12;
  v32[4] = v3;
  v32[5] = v21;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_1000172C0;
  v32[3] = v29;
  v22 = _Block_copy(v32);

  sub_1001F6758();
  sub_100103C7C();
  sub_1001038BC(v23, v24);
  sub_1000183C4(&qword_1002AC880);
  sub_100103C60();
  sub_100019C4C(v25, v26);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v22);
  v27 = sub_10007B9A4();
  v28(v27);
  (*(v30 + 8))(v20, v31);

  sub_100037B00();
}

uint64_t sub_1000FC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1001F6738();
  v25 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001F6768();
  v16 = *(v24 - 8);
  __chkstk_darwin(v24, v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 48);
  v20 = swift_allocObject();
  v20[2] = v6;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a1;
  v20[7] = a2;
  aBlock[4] = sub_1001033BC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_1002890F8;
  v21 = _Block_copy(aBlock);

  sub_1001F6758();
  v26 = _swiftEmptyArrayStorage;
  sub_1001038BC(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880);
  sub_100019C4C(&qword_1002BA620, &qword_1002AC880);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v21);
  (*(v25 + 8))(v15, v12);
  (*(v16 + 8))(v19, v24);
}

void sub_1000FCC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  sub_100037C08();
  v76 = v21;
  v77 = v22;
  v74[2] = v24;
  v75 = v23;
  v78 = v25;
  v27 = v26;
  v29 = v28;
  v85 = a21;
  v86 = v30;
  sub_1001F6738();
  sub_10001A278();
  v82 = v32;
  v83 = v31;
  __chkstk_darwin(v31, v33);
  sub_100023510();
  sub_100103ED4(v34);
  sub_1001F6768();
  sub_10001A278();
  v80 = v36;
  v81 = v35;
  __chkstk_darwin(v35, v37);
  sub_100023510();
  v40 = v39 - v38;
  v41 = sub_1001F6728();
  sub_10001A278();
  v43 = v42;
  __chkstk_darwin(v44, v45);
  sub_100023510();
  v48 = (v47 - v46);
  v84 = sub_1001F67D8();
  sub_10001A278();
  v50 = v49;
  __chkstk_darwin(v51, v52);
  sub_100099484();
  v55 = v53 - v54;
  __chkstk_darwin(v56, v57);
  v59 = v74 - v58;
  v88[0] = v29;

  v87 = v27;
  swift_getAtKeyPath();

  v60 = v89[2];

  if (!v60)
  {
    v74[1] = v29[6];
    sub_1001F67C8();
    *v48 = 500;
    (*(v43 + 104))(v48, enum case for DispatchTimeInterval.milliseconds(_:), v41);
    sub_1001F6828();
    (*(v43 + 8))(v48, v41);
    v74[0] = *(v50 + 8);
    (v74[0])(v55, v84);
    v61 = swift_allocObject();
    v62 = v87;
    v61[2] = v29;
    v61[3] = v62;
    v63 = v76;
    v64 = v78;
    v61[4] = v75;
    v61[5] = v64;
    v88[4] = v63;
    v88[5] = v61;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 1107296256;
    v88[2] = sub_1000172C0;
    v88[3] = v77;
    v65 = _Block_copy(v88);

    sub_1001F6758();
    v89 = _swiftEmptyArrayStorage;
    sub_100103C7C();
    sub_1001038BC(v66, v67);
    sub_1000183C4(&qword_1002AC880);
    sub_100103C60();
    sub_100019C4C(v68, v69);
    v70 = v79;
    v71 = v83;
    sub_1001F7708();
    sub_1001F72F8();
    _Block_release(v65);
    (*(v82 + 8))(v70, v71);
    (*(v80 + 8))(v40, v81);
    (v74[0])(v59, v84);
  }

  v89 = v29;

  v72 = v86;

  v73 = swift_modifyAtReferenceWritableKeyPath();
  v85(v72);
  v73(v88, 0);

  sub_100037B00();
}

uint64_t sub_1000FD150(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, Swift::Int a6)
{
  v53 = a5;
  v54 = a6;
  v47 = a4;
  v45 = a3;
  v8 = sub_1001F6738();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8, v9);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F6768();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11, v12);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F6728();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1001F67D8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v40 - v26;
  aBlock[0] = a1;

  v55 = a2;
  swift_getAtKeyPath();

  v28 = *(v57[0] + 16);

  if (!v28)
  {
    v44 = *(a1 + 48);
    sub_1001F67C8();
    *v18 = 500;
    (*(v15 + 104))(v18, enum case for DispatchTimeInterval.milliseconds(_:), v14);
    sub_1001F6828();
    (*(v15 + 8))(v18, v14);
    v29 = *(v20 + 8);
    v42 = v20 + 8;
    v43 = v29;
    v41 = v19;
    v29(v23, v19);
    v30 = swift_allocObject();
    v31 = v55;
    v30[2] = a1;
    v30[3] = v31;
    v32 = v47;
    v30[4] = v45;
    v30[5] = v32;
    aBlock[4] = sub_1001033E8;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000172C0;
    aBlock[3] = &unk_100289148;
    v33 = _Block_copy(aBlock);

    v34 = v46;
    sub_1001F6758();
    v57[0] = _swiftEmptyArrayStorage;
    sub_1001038BC(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000183C4(&qword_1002AC880);
    sub_100019C4C(&qword_1002BA620, &qword_1002AC880);
    v35 = v48;
    v36 = v52;
    sub_1001F7708();
    sub_1001F72F8();
    _Block_release(v33);
    (*(v51 + 8))(v35, v36);
    (*(v49 + 8))(v34, v50);
    v43(v27, v41);
  }

  v57[2] = a1;

  v37 = v54;

  v38 = swift_modifyAtReferenceWritableKeyPath();
  sub_1001D1564(v57, v53, v37);

  v38(aBlock, 0);
}

uint64_t sub_1000FD6C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_1001D1564(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_1000FD770(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1001D1564(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000FD874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_10013CA74();
  *(v10 + 219) = 1;
  *(v10 + 24) = xmmword_10020CCF0;

  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_1001F77B8(66);
  v23._object = 0x8000000100227F60;
  v23._countAndFlagsBits = 0x1000000000000014;
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = a1;
  v24._object = a2;
  sub_1001F6CA8(v24);

  v25._countAndFlagsBits = 0x100000000000002CLL;
  v25._object = 0x8000000100227F80;
  sub_1001F6CA8(v25);
  swift_beginAccess();
  *(v10 + 40) = v21[0];

  sub_10013BF90();
  *(v10 + 56) = 2;
  *(v10 + 64) = xmmword_10020CD00;

  *(v10 + 144) = xmmword_10020CD10;

  v20 = 1;
  v11 = *(v10 + 96);
  v21[0] = *(v10 + 80);
  v21[1] = v11;
  v22[0] = *(v10 + 112);
  *(v22 + 10) = *(v10 + 122);
  *(v10 + 80) = 0;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 513;
  sub_1000374B8(v21, &qword_1002B4150);

  if (a6)
  {

    sub_1001F77B8(25);

    *&v18[0] = 0x7975426F546B7361;
    *(&v18[0] + 1) = 0xE90000000000002FLL;
    v26._countAndFlagsBits = 0x6C65636E6163;
    v26._object = 0xE600000000000000;
    sub_1001F6CA8(v26);
    v27._countAndFlagsBits = 0x3D6469743FLL;
    v27._object = 0xE500000000000000;
    sub_1001F6CA8(v27);
    v28._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v28);

    v29._countAndFlagsBits = 0x3D64696226;
    v29._object = 0xE500000000000000;
    sub_1001F6CA8(v29);
    v30._countAndFlagsBits = a4;
    v30._object = a5;
    sub_1001F6CA8(v30);
    v12 = sub_1001B3448(0x7975426F546B7361, 0xE90000000000002FLL);
    v14 = v13;

    v15 = *(v10 + 176);
    v18[0] = *(v10 + 160);
    v18[1] = v15;
    v19[0] = *(v10 + 192);
    *(v19 + 10) = *(v10 + 202);
    *(v10 + 160) = 3;
    *(v10 + 168) = 0u;
    *(v10 + 184) = 0u;
    *(v10 + 200) = v12;
    *(v10 + 208) = v14;
    *(v10 + 216) = 513;
    sub_1000374B8(v18, &qword_1002B4150);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_1000FDB8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_10013CA74();
  *(v10 + 24) = 0xD000000000000020;
  *(v10 + 32) = 0x8000000100227FB0;

  swift_beginAccess();
  *(v10 + 40) = 0xD000000000000048;
  *(v10 + 48) = 0x8000000100227FE0;

  sub_10013BF90();
  *(v10 + 56) = 2;
  *(v10 + 64) = xmmword_10020CD20;

  if (a5)
  {
    type metadata accessor for ConfirmPurchaseEngagementUIRoute();

    v21._countAndFlagsBits = a3;
    v21._object = a4;
    v11 = sub_100062764(v21);
    v13 = v12;

    v14 = sub_1001B3448(v11, v13);
    v16 = v15;

    v17 = *(v10 + 96);
    v19[0] = *(v10 + 80);
    v19[1] = v17;
    v20[0] = *(v10 + 112);
    *(v20 + 10) = *(v10 + 122);
    *(v10 + 80) = 2;
    *(v10 + 88) = a3;
    *(v10 + 96) = a4;
    *(v10 + 104) = a1;
    *(v10 + 112) = a2;
    *(v10 + 120) = v14;
    *(v10 + 128) = v16;
    *(v10 + 136) = 256;
    sub_1000374B8(v19, &qword_1002B4150);
  }

  else
  {
  }

  *(v10 + 218) = 1;
  return v10;
}

void sub_1000FDD50()
{
  sub_100037C08();
  v2 = v1;
  v3 = v0;
  v67 = v4;
  sub_1001F6968();
  sub_10001A278();
  v70 = v6;
  v71 = v5;
  __chkstk_darwin(v5, v7);
  sub_100023510();
  sub_100103ED4(v8);
  v69 = sub_1001F6938();
  sub_10001A278();
  v66 = v9;
  __chkstk_darwin(v10, v11);
  sub_100099484();
  v72 = v12 - v13;
  __chkstk_darwin(v14, v15);
  v65 = &v65 - v16;
  v17 = sub_1001F6B98();
  sub_10001A278();
  v19 = v18;
  __chkstk_darwin(v20, v21);
  sub_100023510();
  v24 = v23 - v22;
  v25 = sub_1000183C4(v2);
  v26 = *(v0 + *(v25 + 52));

  v79 = sub_1000FE42C(1, v26);
  v80 = v27;
  v81 = v28;
  v82 = v29;
  sub_1000183C4(&qword_1002AF8A8);
  sub_100019C4C(&qword_1002AF8B0, &qword_1002AF8A8);
  sub_1001F6A68();
  swift_unknownObjectRelease();
  sub_1001F6B88();
  v30 = sub_1001F6B68();
  v32 = v31;

  (*(v19 + 8))(v24, v17);
  if (v32 >> 60 == 15)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v33 = sub_1001F6688();
    sub_10009951C(v33, qword_1002E6180);
    v34 = sub_1001F6668();
    v35 = sub_1001F7298();
    if (!sub_100099534(v35))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v36 = (v3 + *(v25 + 48));
    v38 = *v36;
    v37 = v36[1];
    v77 = v38;
    v78 = v37;
    v75 = 45;
    v76 = 0xE100000000000000;
    v73 = 43;
    v74 = 0xE100000000000000;
    sub_10001C790();
    v77 = sub_100103DC8();
    v78 = v39;
    v75 = 95;
    v76 = 0xE100000000000000;
    v73 = 47;
    v74 = 0xE100000000000000;
    v40 = sub_100103DC8();
    v42 = v41;

    v79 = v40;
    v80 = v42;

    sub_100037A2C();
    v43 = sub_1001F6C38();

    if (v43 % 4)
    {
      v83._countAndFlagsBits = 61;
      v83._object = 0xE100000000000000;
      v84._countAndFlagsBits = sub_1001F6D78(v83, 4 - v43 % 4);
      sub_1001F6CA8(v84);
    }

    v44 = sub_1001F6328();
    v46 = v45;
    sub_100040C5C(v44, v45);

    if (v46 >> 60 != 15)
    {
      v54 = sub_100103E18();
      sub_10003A36C(v54, v55);
      v79 = v44;
      v80 = v46;
      v56 = sub_100103E18();
      sub_100040C70(v56, v57);
      sub_10003A3D8();
      v58 = v72;
      sub_1001F6928();
      v60 = v65;
      v59 = v66;
      v61 = v69;
      (*(v66 + 32))(v65, v58, v69);
      v62 = v68;
      sub_1001F6878();
      v79 = v30;
      v80 = v32;
      sub_1001F6948();
      v63 = sub_100103E18();
      sub_10003A36C(v63, v64);
      (*(v70 + 8))(v62, v71);
      (*(v59 + 8))(v60, v61);
      sub_10003A36C(v30, v32);
      goto LABEL_15;
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v47 = sub_1001F6688();
    sub_10009951C(v47, qword_1002E6180);
    v34 = sub_1001F6668();
    v48 = sub_1001F7298();
    if (!sub_100099534(v48))
    {
      goto LABEL_13;
    }
  }

  v49 = swift_slowAlloc();
  *v49 = 0;
  sub_100103E78();
  _os_log_impl(v50, v51, v52, v53, v49, 2u);
  sub_100021754();

LABEL_13:
  sub_10003A36C(v30, v32);
LABEL_14:

LABEL_15:
  sub_100037B00();
}

uint64_t sub_1000FE42C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1000FE538(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1000FE4C8(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000FE4C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000FE538(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000FE584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = type metadata accessor for OctaneConfigurationManager();
  v24[4] = &off_100284570;
  v24[0] = a1;
  v22 = type metadata accessor for DatabaseStore();
  v23 = &off_100295930;
  v21[0] = a2;
  *(a3 + 96) = &_swiftEmptySetSingleton;
  *(a3 + 104) = &_swiftEmptySetSingleton;
  *(a3 + 112) = 0;
  type metadata accessor for SubscriptionRenewalCoordinator();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = _swiftEmptyArrayStorage;
  *(a3 + 120) = v6;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(a3 + 128) = v7;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0xB000000000000000;
  *(a3 + 168) = 0x3FF0000000000000;
  sub_100026064(v24, a3 + 16);
  sub_100026064(v21, a3 + 56);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v9 = sub_1001F6688();
  sub_100019C94(v9, qword_1002E6180);
  sub_100026064(v21, v20);
  v10 = sub_1001F6668();
  v11 = sub_1001F7288();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    sub_10001AE68(v20, v20[3]);
    v14 = sub_1001E0044();
    v16 = v15;
    sub_100019CCC(v20);
    v17 = sub_1000E4544(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Transaction manager initialized with database: %{public}s", v12, 0xCu);
    sub_100019CCC(v13);
  }

  else
  {

    sub_100019CCC(v20);
  }

  sub_10001AE68(v21, v22);
  sub_1001E5114(sub_1001032E8, a3);
  sub_100019CCC(v24);
  sub_100019CCC(v21);
  return a3;
}

void *sub_1000FE818(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OctaneConfigurationManager();
  v12[3] = v4;
  v12[4] = &off_100284570;
  v12[0] = a1;
  v5 = sub_10004BD98(v12, v4);
  __chkstk_darwin(v5, v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  a2[9] = v4;
  a2[10] = &off_100284570;
  a2[5] = 0;
  a2[6] = v9;
  a2[2] = 0xD000000000000018;
  a2[3] = 0x8000000100227F20;
  a2[4] = 0;
  sub_100019CCC(v12);
  return a2;
}

void *sub_1000FE93C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OctaneConfigurationManager();
  v12[3] = v4;
  v12[4] = &off_100284570;
  v12[0] = a1;
  v5 = sub_10004BD98(v12, v4);
  __chkstk_darwin(v5, v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  a2[9] = v4;
  a2[10] = &off_100284570;
  a2[5] = 0;
  a2[6] = v9;
  a2[2] = 0xD00000000000002ELL;
  a2[3] = 0x80000001002239C0;
  a2[4] = 0;
  sub_100019CCC(v12);
  return a2;
}

void *sub_1000FEA60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  a3[14] = v7;
  a3[15] = &off_100285BD8;
  a3[11] = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  a3[2] = 0xD000000000000031;
  a3[3] = 0x80000001002238F0;
  a3[4] = 0;
  a3[5] = 0;
  sub_10002DD3C(&v24, (a3 + 6));
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000038;
  *(a3 + 24) = 0x8000000100223870;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FF050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000035;
  *(a3 + 24) = 0x8000000100223830;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000038;
  *(a3 + 24) = 0x80000001002238B0;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FF648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD00000000000002DLL;
  *(a3 + 24) = 0x8000000100223990;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FF944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000018;
  *(a3 + 24) = 0x8000000100227EB0;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FFC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000019;
  *(a3 + 24) = 0x8000000100227E90;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_1000FFF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000015;
  *(a3 + 24) = 0x8000000100223810;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_100100238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000011;
  *(a3 + 24) = 0x8000000100227E50;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_100100534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD00000000000001CLL;
  *(a3 + 24) = 0x8000000100227E30;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_100100830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  *(a3 + 128) = xmmword_100206DF0;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0x2F646E756665722FLL;
  *(a3 + 24) = 0xEF74736575716572;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_100100B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  *(a3 + 128) = xmmword_100206DF0;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000013;
  *(a3 + 24) = 0x8000000100227E10;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

uint64_t sub_100100E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  *(a3 + 128) = xmmword_100206DF0;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  *(a3 + 16) = 0xD000000000000017;
  *(a3 + 24) = 0x8000000100227DF0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_10002DD3C(&v24, a3 + 48);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

void *sub_100101138(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v33[3] = v6;
  v33[4] = &off_100284570;
  v33[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v32[3] = v7;
  v32[4] = &off_100285BD8;
  v32[0] = a2;
  sub_100026064(v33, v30);
  sub_100026064(v32, v28);
  v8 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v8, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10004BD98(v28, v29);
  __chkstk_darwin(v12, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v27[3] = v6;
  v27[4] = &off_100284570;
  v27[0] = v16;
  a3[14] = v7;
  a3[15] = &off_100285BD8;
  a3[11] = v17;
  v18 = sub_10004BD98(v27, v6);
  __chkstk_darwin(v18, v18);
  v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v26 = &off_100284570;
  v25 = v6;
  *&v24 = v22;
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  a3[2] = 0xD00000000000001ELL;
  a3[3] = 0x8000000100227DD0;
  a3[4] = 0;
  a3[5] = 0;
  sub_10002DD3C(&v24, (a3 + 6));
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v30);
  return a3;
}

void *sub_10010142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v33 = a4;
  v32 = a3;
  v12 = type metadata accessor for OctaneConfigurationManager();
  v43[3] = v12;
  v43[4] = &off_100284570;
  v43[0] = a5;
  v13 = type metadata accessor for OctaneTransactionManager();
  v42[3] = v13;
  v42[4] = &off_100285BD8;
  v42[0] = a6;
  sub_100026064(v43, v40);
  sub_100026064(v42, v38);
  v14 = sub_10004BD98(v40, v41);
  __chkstk_darwin(v14, v14);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_10004BD98(v38, v39);
  __chkstk_darwin(v18, v18);
  v20 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v16;
  v23 = *v20;
  v37[4] = &off_100284570;
  v37[3] = v12;
  v37[0] = v22;
  a7[14] = v13;
  a7[15] = &off_100285BD8;
  a7[11] = v23;
  v24 = sub_10004BD98(v37, v12);
  __chkstk_darwin(v24, v24);
  v26 = (&v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v36 = &off_100284570;
  v35 = v12;
  *&v34 = v28;
  sub_100019CCC(v42);
  sub_100019CCC(v43);
  a7[2] = a1;
  a7[3] = a2;
  v29 = v33;
  a7[4] = v32;
  a7[5] = v29;
  sub_10002DD3C(&v34, (a7 + 6));
  sub_100019CCC(v37);
  sub_100019CCC(v38);
  sub_100019CCC(v40);
  return a7;
}

void *sub_100101738(uint64_t a1, uint64_t a2, void *a3)
{
  v21[3] = type metadata accessor for OctaneConfigurationManager();
  v21[4] = &off_100284570;
  v21[0] = a1;
  v20[3] = type metadata accessor for OctaneTransactionManager();
  v20[4] = &off_100285BD8;
  v20[0] = a2;
  sub_100026064(v21, v18);
  sub_100026064(v20, v16);
  v6 = sub_10004BD98(v18, v19);
  __chkstk_darwin(v6, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8);
  v10 = sub_10004BD98(v16, v17);
  __chkstk_darwin(v10, v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = sub_10010142C(0xD000000000000016, 0x8000000100227DB0, 0, 4, *v8, *v12, a3);
  sub_100019CCC(v20);
  sub_100019CCC(v21);
  sub_100019CCC(v16);
  sub_100019CCC(v18);
  return v14;
}

void sub_100101948()
{
  sub_100037C08();
  sub_100103C40();
  v24[3] = type metadata accessor for OctaneConfigurationManager();
  v24[4] = &off_100284570;
  v24[0] = v1;
  v23[3] = type metadata accessor for OctaneTransactionManager();
  v23[4] = &off_100285BD8;
  v23[0] = v2;
  *(v0 + 128) = xmmword_100206DF0;
  sub_100026064(v24, v22);
  sub_100026064(v23, v21);
  sub_10004BD98(v22, v22[3]);
  sub_10002DFFC();
  __chkstk_darwin(v3, v4);
  sub_100023510();
  v6 = sub_100103E84(v5);
  v7(v6);
  sub_10004BD98(v21, v21[3]);
  sub_10002DFFC();
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v11 = sub_100103E3C(v10);
  v12(v11);
  sub_100103CB4();
  sub_100103C08();
  __chkstk_darwin(v13, v14);
  v16 = sub_100103BE8(v15, v18);
  v17(v16);
  sub_100103D20();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_10002DD3C(&v19, v0 + 48);
  sub_100019CCC(&v20);
  sub_100019CCC(v21);
  sub_100019CCC(v22);
  sub_100037B00();
}

void sub_100101B68()
{
  sub_100037C08();
  sub_100103C40();
  v24[3] = type metadata accessor for OctaneConfigurationManager();
  v24[4] = &off_100284570;
  v24[0] = v1;
  v23[3] = type metadata accessor for OctaneTransactionManager();
  v23[4] = &off_100285BD8;
  v23[0] = v2;
  sub_100026064(v24, v22);
  sub_100026064(v23, v21);
  sub_10004BD98(v22, v22[3]);
  sub_10002DFFC();
  __chkstk_darwin(v3, v4);
  sub_100023510();
  v6 = sub_100103E84(v5);
  v7(v6);
  sub_10004BD98(v21, v21[3]);
  sub_10002DFFC();
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v11 = sub_100103E3C(v10);
  v12(v11);
  sub_100103CB4();
  sub_100103C08();
  __chkstk_darwin(v13, v14);
  v16 = sub_100103BE8(v15, v18);
  v17(v16);
  sub_100103D20();
  *(v0 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v19, v0 + 48);
  sub_100019CCC(&v20);
  sub_100019CCC(v21);
  sub_100019CCC(v22);
  sub_100037B00();
}

uint64_t sub_100101D84(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void, uint64_t))
{
  v16 = type metadata accessor for OctaneConfigurationManager();
  v17 = &off_100284570;
  v15[0] = a1;
  a2(0);
  v6 = swift_allocObject();
  sub_10004BD98(v15, v16);
  sub_100103C08();
  __chkstk_darwin(v7, v8);
  sub_100023510();
  v11 = (v10 - v9);
  (*(v12 + 16))(v10 - v9);
  v13 = a3(*v11, v6);
  sub_100019CCC(v15);
  return v13;
}

uint64_t sub_100101E90()
{
  v1 = sub_100103DF0();
  v2 = sub_100103E9C(v1, &off_100284570);
  v3 = sub_100103DA8(v2, &off_100285BD8);
  v0(v3);
  swift_allocObject();
  sub_10004BD98(v18, v1);
  sub_100103C08();
  __chkstk_darwin(v4, v5);
  v7 = sub_100103BE8(v6, v17[0]);
  v8(v7);
  sub_10004BD98(v17, v17[3]);
  sub_100103C08();
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v12 = sub_100103E24(v11);
  v13(v12);
  sub_100103E54();
  sub_100101948();
  v15 = v14;
  sub_100019CCC(v17);
  sub_100019CCC(v18);
  return v15;
}

uint64_t sub_100101FF8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(void, void, uint64_t))
{
  v8 = type metadata accessor for OctaneConfigurationManager();
  v9 = sub_100103E9C(v8, &off_100284570);
  v10 = sub_100103DA8(v9, &off_100285BD8);
  a3(v10);
  v11 = swift_allocObject();
  sub_10004BD98(v26, v8);
  sub_10002DFFC();
  __chkstk_darwin(v12, v13);
  sub_100023510();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  sub_10004BD98(v25, v25[3]);
  sub_10002DFFC();
  __chkstk_darwin(v18, v19);
  v21 = sub_100103BE8(v20, v25[0]);
  v22(v21);
  v23 = a5(*v16, *a2, v11);
  sub_100019CCC(v25);
  sub_100019CCC(v26);
  return v23;
}

uint64_t sub_1001021A4()
{
  v1 = sub_100103DF0();
  v2 = sub_100103E9C(v1, &off_100284570);
  v3 = sub_100103DA8(v2, &off_100285BD8);
  v0(v3);
  swift_allocObject();
  sub_10004BD98(v18, v1);
  sub_100103C08();
  __chkstk_darwin(v4, v5);
  v7 = sub_100103BE8(v6, v17[0]);
  v8(v7);
  sub_10004BD98(v17, v17[3]);
  sub_100103C08();
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v12 = sub_100103E24(v11);
  v13(v12);
  sub_100103E54();
  sub_100101B68();
  v15 = v14;
  sub_100019CCC(v17);
  sub_100019CCC(v18);
  return v15;
}

void *sub_10010230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for OctaneConfigurationManager();
  v18[3] = v10;
  v18[4] = &off_100284570;
  v18[0] = a3;
  a5[11] = a4;
  a5[12] = &off_100289088;
  v11 = sub_10004BD98(v18, v10);
  __chkstk_darwin(v11, v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  a5[9] = v10;
  a5[10] = &off_100284570;
  a5[5] = 0;
  a5[6] = v15;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = 0;
  sub_100019CCC(v18);
  return a5;
}

uint64_t sub_100102438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OctaneConfigurationManager();
  v35[3] = v7;
  v35[4] = &off_100284570;
  v35[0] = a2;
  v8 = type metadata accessor for OctaneTransactionManager();
  v34[3] = v8;
  v34[4] = &off_100285BD8;
  v34[0] = a3;
  swift_weakInit();
  swift_weakAssign();
  sub_100026064(v35, v32);
  sub_100026064(v34, v30);
  v9 = sub_10004BD98(v32, v33);
  __chkstk_darwin(v9, v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10004BD98(v30, v31);
  __chkstk_darwin(v13, v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v29[4] = &off_100284570;
  v29[3] = v7;
  v29[0] = v17;
  *(a4 + 112) = v8;
  *(a4 + 120) = &off_100285BD8;
  *(a4 + 88) = v18;
  v19 = sub_10004BD98(v29, v7);
  __chkstk_darwin(v19, v19);
  v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v27 = v7;
  v28 = &off_100284570;

  *&v26 = v23;
  sub_100019CCC(v34);
  sub_100019CCC(v35);
  *(a4 + 16) = 0xD000000000000021;
  *(a4 + 24) = 0x8000000100223930;
  *(a4 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v26, a4 + 48);
  sub_100019CCC(v29);
  sub_100019CCC(v30);
  sub_100019CCC(v32);
  return a4;
}

void *sub_100102760(uint64_t a1, uint64_t a2)
{
  v13[3] = type metadata accessor for OctaneConfigurationManager();
  v13[4] = &off_100284570;
  v13[0] = a1;
  sub_100026064(v13, v11);
  type metadata accessor for InAppsRoute();
  v4 = swift_allocObject();
  v5 = sub_10004BD98(v11, v12);
  __chkstk_darwin(v5, v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7);
  v9 = sub_10010230C(0xD00000000000001FLL, 0x8000000100227ED0, *v7, a2, v4);
  sub_100019CCC(v13);
  sub_100019CCC(v11);
  return v9;
}

void *sub_1001028B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = type metadata accessor for OctaneConfigurationManager();
  v17[4] = &off_100284570;
  v17[0] = a3;
  type metadata accessor for InAppPurchasablesRoute();
  v8 = swift_allocObject();
  sub_100026064(v17, v15);
  v9 = sub_10004BD98(v15, v16);
  __chkstk_darwin(v9, v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v11);
  v13 = sub_10010230C(a1, a2, *v11, a4, v8);
  sub_100019CCC(v17);
  sub_100019CCC(v15);
  return v13;
}

void *sub_1001029F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for OctaneConfigurationManager();
  v13[3] = v5;
  v13[4] = &off_100284570;
  v13[0] = a1;
  a3[12] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_10004BD98(v13, v5);
  __chkstk_darwin(v6, v6);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  a3[9] = v5;
  a3[10] = &off_100284570;
  a3[5] = 0;
  a3[6] = v10;
  a3[2] = 0xD00000000000001CLL;
  a3[3] = 0x8000000100227E70;
  a3[4] = 0;
  sub_100019CCC(v13);
  a3[12] = &off_100289088;
  swift_unknownObjectWeakAssign();

  return a3;
}

uint64_t sub_100102B50(uint64_t a1, uint64_t a2)
{
  v19 = type metadata accessor for OctaneConfigurationManager();
  v20 = &off_100284570;
  v18[0] = a1;
  v16 = type metadata accessor for DatabaseStore();
  v17 = &off_100295930;
  v15[0] = a2;
  type metadata accessor for OctaneTransactionManager();
  v4 = swift_allocObject();
  v5 = sub_10004BD98(v18, v19);
  __chkstk_darwin(v5, v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_10004BD98(v15, v16);
  __chkstk_darwin(v9, v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1000FE584(*v7, *v11, v4);
  sub_100019CCC(v15);
  sub_100019CCC(v18);
  return v13;
}

uint64_t sub_100102D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OctaneConfigurationManager();
  v29[3] = v8;
  v29[4] = &off_100284570;
  v29[0] = a3;
  v9 = type metadata accessor for OctaneTransactionManager();
  v27 = v9;
  v28 = &off_100285BD8;
  v26[0] = a4;
  type metadata accessor for OctaneServer();
  v10 = swift_allocObject();
  v11 = sub_10004BD98(v29, v8);
  __chkstk_darwin(v11, v11);
  v13 = (&v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10004BD98(v26, v27);
  __chkstk_darwin(v15, v15);
  v17 = (&v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v25[3] = v8;
  v25[4] = &off_100284570;
  v24[4] = &off_100285BD8;
  v25[0] = v19;
  v24[3] = v9;
  v24[0] = v20;
  swift_weakInit();
  sub_100026064(v25, v10 + 64);
  sub_100026064(v24, v10 + 104);
  swift_weakAssign();
  v21 = sub_1000E50DC(a1, a2, 0);

  sub_1000F5EC4();

  sub_100019CCC(v24);
  sub_100019CCC(v25);
  sub_100019CCC(v26);
  sub_100019CCC(v29);
  return v21;
}

void *sub_100103048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for OctaneConfigurationManager();
  v18 = &off_100284570;
  v16[0] = a4;
  type metadata accessor for BagRoute();
  v8 = swift_allocObject();
  v9 = sub_10004BD98(v16, v17);
  __chkstk_darwin(v9, v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10010317C(a1, a2, a3, *v11, v8);
  sub_100019CCC(v16);
  return v13;
}

void *sub_10010317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for OctaneConfigurationManager();
  v17[3] = v9;
  v17[4] = &off_100284570;
  v17[0] = a4;
  a5[12] = 0;
  swift_unknownObjectWeakInit();
  a5[12] = &off_100289088;
  swift_unknownObjectWeakAssign();
  a5[13] = a2;
  a5[14] = a3;

  v10 = sub_10004BD98(v17, v9);
  __chkstk_darwin(v10, v10);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  a5[9] = v9;
  a5[10] = &off_100284570;
  a5[5] = 0;
  a5[6] = v14;
  a5[2] = 0xD000000000000029;
  a5[3] = 0x8000000100227EF0;
  a5[4] = 0;
  sub_100019CCC(v17);
  return a5;
}

unint64_t sub_1001032F0()
{
  result = qword_1002B4140;
  if (!qword_1002B4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4140);
  }

  return result;
}

uint64_t sub_10010336C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001033CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001033F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100103464()
{
  v1 = (sub_1000183C4(&qword_1002B4148) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[13];
  v7 = sub_1001F6508();
  if (!sub_10001C990(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4 + 600) != 1)
  {
  }

  return _swift_deallocObject(v0, v4 + 889, v2 | 7);
}

uint64_t sub_100103728()
{
  v1 = *(sub_1000183C4(&qword_1002B4148) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1000A9A04(v0 + v2, v6, v7, v0 + v4);
}

uint64_t sub_1001037CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100103804()
{

  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    sub_10003A380(v0[11], v1);
  }

  if (v0[15] != 1)
  {
  }

  return _swift_deallocObject(v0, 225, 7);
}

uint64_t sub_1001038BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100103904()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100103950()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_1001039A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100103A00()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_100103A74()
{

  swift_unknownObjectRelease();
  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100103ACC()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100103B48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100103C94()
{

  return swift_dynamicCast();
}

uint64_t sub_100103CB4()
{
  v9 = *v3;
  v10 = *v4;
  *(v7 - 256) = v5;
  *(v7 - 264) = v1;
  *(v7 - 288) = v9;
  v0[14] = v2;
  v0[15] = v6;
  v0[11] = v10;

  return sub_10004BD98(v7 - 288, v1);
}

uint64_t sub_100103D20()
{
  v7 = *v4;
  *(v6 - 296) = v5;
  *(v6 - 304) = v3;
  *(v6 - 328) = v7;
  sub_100019CCC(v6 - 168);
  result = sub_100019CCC(v6 - 128);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  return result;
}

uint64_t sub_100103D60()
{

  return sub_10008E840();
}

uint64_t sub_100103D7C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;

  return swift_unknownObjectRetain_n();
}

uint64_t sub_100103DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = a2;
  *(v3 - 128) = v2;
  return 0;
}

uint64_t sub_100103DC8()
{

  return sub_1001F75F8();
}

uint64_t sub_100103DF0()
{

  return type metadata accessor for OctaneConfigurationManager();
}

uint64_t sub_100103E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 64) = a1;
  *(v3 - 56) = a2;
  *(v3 - 88) = v2;

  return type metadata accessor for OctaneTransactionManager();
}

unint64_t sub_100103EB8()
{

  return sub_10011108C();
}

void sub_100103F24(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v10, 0xCu);
}

uint64_t sub_100103F44()
{
  *(v1 - 120) = v0;

  return swift_errorRetain();
}

BOOL sub_100103F5C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100103F88(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001042A8();
  sub_1001F8168();
  if (!v2)
  {
    sub_10001AE68(v5, v5[3]);
    sub_1001042A8();
    v1 = sub_1001F7ED8();
    sub_100019CCC(v5);
  }

  sub_100019CCC(a1);
  return v1 & 1;
}

uint64_t sub_1001040C4(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v2, v3);
  sub_1001F7EF8();
  return sub_100019CCC(v2);
}

uint64_t sub_100104158@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100103F88(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlexiblyDecodableBool(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100104270);
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

uint64_t sub_1001042BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100104310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100104380(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BCA8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001043CC(char a1)
{
  result = 7959874;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1869901639;
      break;
    case 3:
      result = 0x4165636976726553;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

BOOL sub_100104460(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BD28;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

uint64_t sub_1001044B8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BD60;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010450C(char a1)
{
  if (a1)
  {
    return 0x2E746E756F636361;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_100104578@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100104380(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1001045A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001043CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_100104690@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100104460(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001047AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001044B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001047DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10010450C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001048B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BDB0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100104908(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6D61726150797562;
      break;
    case 2:
      result = 0x656D614E6D657469;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x746567726174;
      break;
    case 5:
      result = 0x6567726174627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001049CC(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B4188);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13[-v10];
  sub_10001AE68(a1, a1[3]);
  sub_10010513C();
  sub_1001F8198();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1001052F4();
  sub_100024A88();
  sub_1001F7D58();
  if (!v2)
  {
    v13[13] = 1;
    sub_100024A88();
    sub_1001F7D18();
    v13[12] = 2;
    sub_100024A88();
    sub_1001F7D18();
    v13[11] = 3;
    sub_100024A88();
    sub_1001F7D18();
    v13[10] = v3[56];
    v13[9] = 4;
    sub_100105348();
    sub_100024A88();
    sub_1001F7D58();
    v13[8] = v3[57];
    v13[7] = 5;
    sub_10010539C();
    sub_100024A88();
    sub_1001F7D58();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_100104BF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000183C4(&qword_1002B4160);
  sub_10001A278();
  __chkstk_darwin(v5, v6);
  v41 = 1;
  v7 = a1[3];
  v8 = a1[4];
  v43 = a1;
  sub_10001AE68(a1, v7);
  sub_10010513C();
  sub_1001F8178();
  if (v2)
  {
    sub_100105B08();
    sub_100019CCC(v43);
    v31 = 4;
    *v32 = v42[0];
    *&v32[3] = *(v42 + 3);
    v33 = 0;
    v34 = 0;
    v35 = a2;
    v36 = v8;
    v37 = v7;
    v38 = a1;
    v39 = v41;
    v40 = 2;
    return sub_100105190(&v31);
  }

  else
  {
    sub_1001051C0();
    sub_100105B1C();
    v25 = v31;
    v22 = a2;
    v23 = sub_100105AE4(1);
    v24 = v9;
    v10 = sub_100105AE4(2);
    v21 = v11;
    v12 = sub_100105AE4(3);
    v20 = v13;
    LOBYTE(v26) = 4;
    sub_100105214();
    sub_100105B1C();
    v41 = v31;
    v29 = 5;
    sub_100105268();
    sub_100105B1C();
    v14 = sub_100105AD4();
    v15(v14);
    v16 = v30;
    LOBYTE(v26) = v25;
    *(&v26 + 1) = v23;
    *&v27 = v24;
    *(&v27 + 1) = v10;
    *v28 = v21;
    *&v28[8] = v12;
    *&v28[16] = v20;
    v17 = v41;
    v28[24] = v41;
    v28[25] = v30;
    sub_1001052BC(&v26, &v31);
    sub_100019CCC(v43);
    v31 = v25;
    v33 = v23;
    v34 = v24;
    v35 = v10;
    v36 = v21;
    v37 = v12;
    v38 = v20;
    v39 = v17;
    v40 = v16;
    result = sub_100105190(&v31);
    v19 = v27;
    *v22 = v26;
    v22[1] = v19;
    v22[2] = *v28;
    *(v22 + 42) = *&v28[10];
  }

  return result;
}

uint64_t sub_100104F88()
{
  result = sub_1000C85D8(&off_10027A038);
  qword_1002E60D0 = result;
  return result;
}

uint64_t sub_100104FD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001048B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100105004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100104908(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100105038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100104904();
  *a1 = result;
  return result;
}

uint64_t sub_100105060(uint64_t a1)
{
  v2 = sub_10010513C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010509C(uint64_t a1)
{
  v2 = sub_10010513C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001050D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100104BF4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

unint64_t sub_10010513C()
{
  result = qword_1002B4168;
  if (!qword_1002B4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4168);
  }

  return result;
}

unint64_t sub_1001051C0()
{
  result = qword_1002B4170;
  if (!qword_1002B4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4170);
  }

  return result;
}

unint64_t sub_100105214()
{
  result = qword_1002B4178;
  if (!qword_1002B4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4178);
  }

  return result;
}

unint64_t sub_100105268()
{
  result = qword_1002B4180;
  if (!qword_1002B4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4180);
  }

  return result;
}

unint64_t sub_1001052F4()
{
  result = qword_1002B4190;
  if (!qword_1002B4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4190);
  }

  return result;
}

unint64_t sub_100105348()
{
  result = qword_1002B4198;
  if (!qword_1002B4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4198);
  }

  return result;
}

unint64_t sub_10010539C()
{
  result = qword_1002B41A0;
  if (!qword_1002B41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1001054BCLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001054F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001055C0);
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

_BYTE *sub_1001055F4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100105690);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1001056C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100105790);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001057C8()
{
  result = qword_1002B41A8;
  if (!qword_1002B41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41A8);
  }

  return result;
}

unint64_t sub_100105820()
{
  result = qword_1002B41B0;
  if (!qword_1002B41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41B0);
  }

  return result;
}

unint64_t sub_100105878()
{
  result = qword_1002B41B8;
  if (!qword_1002B41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41B8);
  }

  return result;
}

unint64_t sub_1001058D0()
{
  result = qword_1002B41C0;
  if (!qword_1002B41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41C0);
  }

  return result;
}

unint64_t sub_100105928()
{
  result = qword_1002B41C8;
  if (!qword_1002B41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41C8);
  }

  return result;
}

unint64_t sub_100105980()
{
  result = qword_1002B41D0;
  if (!qword_1002B41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41D0);
  }

  return result;
}

unint64_t sub_1001059D4()
{
  result = qword_1002B41D8;
  if (!qword_1002B41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41D8);
  }

  return result;
}

unint64_t sub_100105A28()
{
  result = qword_1002B41E0;
  if (!qword_1002B41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41E0);
  }

  return result;
}

unint64_t sub_100105A7C()
{
  result = qword_1002B41E8;
  if (!qword_1002B41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41E8);
  }

  return result;
}

uint64_t sub_100105AE4@<X0>(char a1@<W8>)
{
  *(v1 - 160) = a1;

  return sub_1001F7C08();
}

uint64_t sub_100105B1C()
{

  return sub_1001F7C48();
}

void CircularBuffer.init(initialCapacity:)(unint64_t a1, uint64_t a2)
{
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  sub_100056624();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    sub_100106280(a1);
    sub_1000995D4();
    sub_100018460(v6, v7, v8, a2);
    sub_10005053C();
    sub_1001F7968();
    return;
  }

  __break(1u);
}

uint64_t CircularBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    sub_1000D4D04();
    sub_1001F74B8();
    v3 += _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  }

  return v3;
}

void CircularBuffer.append(_:)()
{
  sub_100037AEC();
  v3 = v2;
  v5 = *(v4 + 16);
  sub_10010B340();
  v6 = sub_1001F74B8();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  sub_10010B168();
  v11 = v0[2];
  sub_10007E2C8();
  (*(v12 + 16))(v1, v3, v5);
  sub_100099784();
  sub_100018460(v13, v14, v15, v5);
  sub_10010B030();
  sub_1001F7988();
  sub_1001F78E8();
  v16 = *v0;
  sub_10010B2FC();
  sub_10010AA80(v17, v18);
  sub_10010B2D4();
  v20(v16 + v19 + *(v8 + 32) * v11, v1, v6);
  CircularBuffer.advanceTailIdx(by:)(1);
  if (v0[1] == v0[2])
  {
    CircularBuffer._doubleCapacity()();
  }

  sub_100037A50();
}

Swift::Void __swiftcall CircularBuffer.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  sub_10010B19C();
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  sub_100056624();
  if (keepingCapacity)
  {
    v7 = CircularBuffer.count.getter(*v2, v2[1], v2[2]);
    CircularBuffer.removeFirst(_:)(v7);
  }

  else
  {
    sub_1001F7988();
    sub_1001F7958(0);
    sub_1000995D4();
    sub_100018460(v8, v9, v10, v4);
    sub_10005053C();
    sub_1001F7948();
  }

  v2[1] = 0;
  v2[2] = 0;
}

uint64_t CircularBuffer.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v8 = CircularBuffer.startIndex.getter(a1, a2, a3);
    sub_10010AF38(v8);
    CircularBuffer.subscript.getter(a4, a5);
    v7 = 0;
  }

  return sub_100018460(a5, v7, 1, a4);
}

void CircularBuffer.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_10010B19C();
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_100056624();
  CircularBuffer.first.getter(*v2, v2[1], v2[2], v5, v3);
  if (sub_10001C990(v3, 1, v5) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10007E2C8();
    (*(v8 + 32))(a2, v3, v5);
    sub_1001099C8();
  }
}

uint64_t CircularBuffer.capacity.getter()
{
  sub_1001F74B8();

  return _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
}

void CircularBuffer.prepend(_:)()
{
  sub_100037C08();
  v2 = *(v1 + 16);
  sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  sub_100056624();
  v5 = v0[2];
  v6 = CircularBuffer.indexBeforeHeadIdx()();
  sub_10007E2C8();
  v7 = sub_100075518();
  v8(v7);
  sub_100099784();
  sub_100018460(v9, v10, v11, v2);
  sub_10010B030();
  sub_1001F7988();
  sub_1001F78E8();
  sub_10010AA80(v6, *v0);
  sub_10010B2D4();
  sub_10010B2FC();
  v12();
  CircularBuffer.advanceHeadIdx(by:)(-1);
  if (v0[1] == v5)
  {
    CircularBuffer._doubleCapacity()();
  }

  sub_100037B00();
}

unint64_t CircularBuffer.startIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CircularBuffer.count.getter(a1, a2, a3);
  v5 = CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(a2, v4, a2);
  return sub_10010AF38(v5);
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  v7 = &v10 - v6;
  _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
  result = sub_10001C990(v7, 1, a1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10007E2C8();
    return (*(v9 + 32))(a2, v7, a1);
  }

  return result;
}

unint64_t CircularBuffer.index(after:)(uint64_t a1)
{
  v1 = sub_10010B210(a1);
  v5 = CircularBuffer.index(_:offsetBy:)(v1, 1, v2, v3, v4);
  return sub_10010AF38(v5);
}

uint64_t sub_100106280(int a1)
{
  v1 = __clz(a1 - 1);
  if (v1)
  {
    v2 = 1 << -v1;
  }

  else
  {
    v2 = 0;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001062A8(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = __clz(result - 1);
    if (v1)
    {
      return 1 << -v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = 0x1FFFFFF00000000;
  if (result < a3)
  {
    v3 = 0xFFFFFF00000000;
  }

  return v3 | result;
}

uint64_t static CircularBuffer.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFFFFFFFFLL) == (a2 & 0xFFFFFFFFFFFFFFLL))
  {
    return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
  }

  else
  {
    return 0;
  }
}

BOOL static CircularBuffer.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 < a2;
  if ((a2 & 0x100000000000000) != 0)
  {
    v2 = 0;
    v3 = a1 < a2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100106560(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t))
{
  if (*(a1 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  return a5(v5 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v6 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

void CircularBuffer.description.getter()
{
  sub_100037C08();
  v28 = v0;
  v30 = v1;
  v31 = v2;
  v4 = v3;
  v5 = sub_1001F74B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  v12 = &v27 - v11;
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v13, v14);
  v16 = &v27 - v15;
  v36 = 8283;
  v37 = 0xE200000000000000;
  v27 = v4;
  v35._countAndFlagsBits = v4;
  sub_1001F7988();
  swift_getWitnessTable();
  sub_1001F6E08();
  v34 = v32;
  sub_10010B030();
  sub_1001F7B38();
  sub_1001F7B08();
  sub_10010B030();
  sub_1001F7B28();
  v29 = v5 - 8;
  for (i = (v8 + 8); ; (*i)(v12, TupleTypeMetadata2))
  {
    sub_1001F7B18();
    if (sub_10001C990(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v18 = *v16;
    v19 = *(TupleTypeMetadata2 + 48);
    *v12 = *v16;
    v20 = (*(*(v5 - 8) + 32))(&v12[v19], &v16[v19], v5);
    if (v18 == v30)
    {
      v22._countAndFlagsBits = 60;
    }

    else
    {
      if (v18 != v28)
      {
        goto LABEL_8;
      }

      v22._countAndFlagsBits = 62;
    }

    v22._object = 0xE100000000000000;
    sub_1001F6CA8(v22);
LABEL_8:
    __chkstk_darwin(v20, v21);
    *(&v27 - 2) = v31;
    sub_1000B3104(sub_10010AA9C, &type metadata for String, v23, &v32);
    if (v33)
    {
      v24._countAndFlagsBits = v32;
    }

    else
    {
      v24._countAndFlagsBits = 8287;
    }

    if (v33)
    {
      v25 = v33;
    }

    else
    {
      v25 = 0xE200000000000000;
    }

    v24._object = v25;
    sub_1001F6CA8(v24);
  }

  v38._countAndFlagsBits = 93;
  v38._object = 0xE100000000000000;
  sub_1001F6CA8(v38);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_1001F77B8(37);

  v35._countAndFlagsBits = 0xD000000000000012;
  v35._object = 0x8000000100228040;
  v26 = v27;
  v32 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  sub_10010B258();
  v39._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v39);

  v40._countAndFlagsBits = 0x654C676E6972202CLL;
  v40._object = 0xEE00203A6874676ELL;
  sub_1001F6CA8(v40);
  v32 = CircularBuffer.count.getter(v26, v30, v28);
  sub_10010B258();
  v41._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v41);

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_1001F6CA8(v42);
  sub_1001F6CA8(v35);

  sub_100037B00();
}

unint64_t CircularBuffer.index(_:offsetBy:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 + a1;
  v8 = CircularBuffer.mask.getter();
  v9 = sub_10005053C();
  CircularBuffer.count.getter(v9, v10, a5);
  v12 = CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(v8 & v7, v11, a4);
  return sub_10010AF38(v12);
}

unint64_t CircularBuffer.index(before:)(uint64_t a1)
{
  v1 = sub_10010B210(a1);
  v5 = CircularBuffer.index(_:offsetBy:)(v1, -1, v2, v3, v4);
  return sub_10010AF38(v5);
}

void CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100037AEC();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v26 = *(v25 + 16);
  v27 = sub_1001F74B8();
  sub_10001A278();
  v29 = v28;
  sub_10001E844();
  __chkstk_darwin(v30, v31);
  v33 = &a9 - v32;
  v34 = *(v26 - 8);
  (*(v34 + 16))(&a9 - v32, v24, v26);
  sub_100099784();
  sub_100018460(v35, v36, v37, v26);
  sub_10010B19C();
  sub_1001F7988();
  sub_1001F78E8();
  (*(v34 + 8))(v24, v26);
  v38 = *v18;
  sub_10010AA80(v22, v38);
  (*(v29 + 40))(v38 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v33, v27);
  sub_100037A50();
}

uint64_t (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = *(a3 + 16);
  v7[3] = v8;
  sub_10002DFFC();
  *(v9 + 32) = v10;
  v12 = *(v11 + 64);
  v7[5] = sub_100064190(v12);
  v13 = sub_100064190(v12);
  v7[6] = v13;
  CircularBuffer.subscript.getter(v8, v13);
  return sub_100106CB4;
}

unint64_t CircularBuffer.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CircularBuffer.count.getter(a1, a2, a3);
  v6 = CircularBuffer.Index.init(backingIndex:backingCount:backingIndexOfHead:)(a3, v5, a2);
  return sub_10010AF38(v6);
}

unint64_t CircularBuffer.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  sub_1000D4D04();
  sub_1001F74B8();
  v4 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if ((v2 & 0x100000000000000) != 0)
  {
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - v2;
    }

    else
    {
      return v4 - v2 + a2;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v6 = v2 - a2 + v4;
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - v2;
  }

  return result;
}

void sub_100106E60(uint64_t a1@<X0>, void (*a2)(void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  a2(*v3, v3[1], v3[2], *(a1 + 16));
  sub_10010AF64();
  *a3 = v5;
  *(a3 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

void (*sub_100106EB0(void *a1, unsigned int *a2, uint64_t a3))(void *a1)
{
  v7 = sub_100064190(0x28uLL);
  *a1 = v7;
  v8 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v8 = 0;
  }

  v7[4] = sub_100106F98(v7, v8 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_100106F50;
}

void sub_100106F50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_100106F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  sub_10002DFFC();
  *v8 = v9;
  v8[1] = v10;
  v12 = sub_100064190(*(v11 + 64));
  *(a1 + 16) = v12;
  CircularBuffer.subscript.getter(a6, v12);
  return sub_100107050;
}

void sub_100107050(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

unint64_t sub_10010709C@<X0>(unsigned int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v4 = 0;
  }

  result = CircularBuffer.subscript.getter(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v5, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v4, *v2, v2[1], v2[2]);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

unint64_t CircularBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = CircularBuffer.startIndex.getter(a3, a4, a5);
  v11 = sub_10010AF38(v10);
  result = CircularBuffer.distance(from:to:)(v11, a1 & 0x1FFFFFFFFFFFFFFLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    CircularBuffer.endIndex.getter(a3, a4, a5);
    sub_10010AF50();
    result = CircularBuffer.distance(from:to:)(a2 & 0x1FFFFFFFFFFFFFFLL, v14 | (v13 << 56));
    if ((result & 0x8000000000000000) == 0)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_100107248(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v18 = 0;
  }

  CircularBuffer.subscript.setter(a1, v18 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t (*sub_100107274(void *a1, uint64_t a2, uint64_t a3))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v8 = *(a3 + 16);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  v7[4] = sub_100064190(v10);
  v11 = sub_100064190(v10);
  v7[5] = v11;
  *(v7 + 12) = *a2;
  *(v7 + 26) = *(a2 + 4);
  *(v7 + 54) = *(a2 + 6);
  *(v7 + 55) = *(a2 + 7);
  CircularBuffer.subscript.getter(v8, v11);
  return sub_100107398;
}

unint64_t sub_100107480(uint64_t *a1, unsigned int *a2)
{
  v2 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v2 = 0;
  }

  return CircularBuffer.subscript.setter(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v3, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v2);
}

unint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010B2C0();
  v10 = CircularBuffer.startIndex.getter(v7, v8, v9);
  v11 = sub_10010AF38(v10);
  result = CircularBuffer.distance(from:to:)(v11, a4 & 0x1FFFFFFFFFFFFFFLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_10010B2C0();
    CircularBuffer.endIndex.getter(v13, v14, v15);
    sub_10010AF50();
    result = CircularBuffer.distance(from:to:)(a5 & 0x1FFFFFFFFFFFFFFLL, v17 | (v16 << 56));
    if ((result & 0x8000000000000000) == 0)
    {
      sub_10010AFD4();
      swift_getWitnessTable();
      CircularBuffer.replaceSubrange<A>(_:with:)();
    }
  }

  __break(1u);
  return result;
}

void (*sub_1001075D4(void *a1, unsigned int *a2, uint64_t a3))()
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  v7[3] = v3;
  v7[4] = a3;
  v8 = *a2;
  v9 = *(a2 + 2);
  *(v7 + 24) = v9;
  v10 = *(a2 + 6);
  *(v7 + 52) = v10;
  v11 = *(a2 + 7);
  *(v7 + 53) = v11;
  v12 = a2[2];
  *(v7 + 10) = v8;
  *(v7 + 11) = v12;
  v13 = *(a2 + 6);
  *(v7 + 25) = v13;
  v14 = *(a2 + 14);
  v15 = v8 | (v9 << 32);
  *(v7 + 54) = v14;
  v16 = *(a2 + 15);
  v17 = v15 | (v10 << 48);
  *(v7 + 55) = v16;
  if (v11)
  {
    v18 = 0x100000000000000;
  }

  else
  {
    v18 = 0;
  }

  v19 = v12 | (v13 << 32) | (v14 << 48);
  if (v16)
  {
    v20 = 0x100000000000000;
  }

  else
  {
    v20 = 0;
  }

  *v7 = CircularBuffer.subscript.getter(v17 | v18, v19 | v20, *v3, v3[1], v3[2]);
  v7[1] = v21;
  v7[2] = v22;
  return sub_1001076C0;
}

void sub_1001076C0()
{
  sub_100037AEC();
  v1 = **v0;
  if (v2)
  {

    sub_10010B264(v3);
  }

  else
  {
    sub_10010B264(v1);
  }

  sub_100037A50();

  free(v4);
}

void (*CircularBuffer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  sub_1000997D8();
  v9 = sub_100064190(0x38uLL);
  *v7 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = v6;
  v9[4] = v5;
  *v9 = CircularBuffer.subscript.getter(v6 & 0x1FFFFFFFFFFFFFFLL, v5 & 0x1FFFFFFFFFFFFFFLL, *v4, v4[1], v4[2]);
  v9[1] = v10;
  v9[2] = v11;
  return sub_100107800;
}

void sub_100107800()
{
  sub_100037AEC();
  v1 = **v0;
  if (v2)
  {

    sub_10010B288(v3);
  }

  else
  {
    sub_10010B288(v1);
  }

  sub_100037A50();

  free(v4);
}

uint64_t sub_1001078F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  v7 = CircularBuffer.startIndex.getter(v6, v4, v5);

  *(a1 + 24) = v7;
  *(a1 + 28) = WORD2(v7);
  *(a1 + 30) = BYTE6(v7);
  *(a1 + 31) = HIBYTE(v7) != 0;
  return result;
}

uint64_t sub_100107980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1001079D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection._copyToContiguousArray()(a1, WitnessTable);
}

void CircularBuffer.replaceSubrange<A>(_:with:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v148 = v6;
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = HIWORD(v7);
  v11 = HIBYTE(v7);
  v173 = HIBYTE(v7);
  v152 = v12;
  v172 = HIBYTE(v12);
  v144 = v13;
  v14 = *(v13 + 16);
  sub_1001F74B8();
  sub_1000D4D04();
  v128[3] = sub_1001F81E8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v15, v16);
  sub_1000AD8B4();
  sub_100099A14(v17);
  v151 = v3;
  v18 = *(v3 + 8);
  sub_10010B19C();
  v137 = sub_1001F77D8();
  sub_10001A278();
  v136 = v19;
  sub_10001E844();
  __chkstk_darwin(v20, v21);
  sub_1000AD8B4();
  sub_100099A14(v22);
  sub_10010B19C();
  v135 = sub_1001F7A08();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v23, v24);
  sub_1000AD8B4();
  sub_100099A14(v25);
  v157 = v0;
  v156 = *(v0 - 1);
  __chkstk_darwin(v26, v27);
  sub_10004FE10();
  v154 = v28;
  __chkstk_darwin(v29, v30);
  v32 = v128 - v31;
  sub_10002DFFC();
  v141 = v33;
  __chkstk_darwin(v34, v35);
  sub_100023510();
  sub_100099A14(v37 - v36);
  v145 = v18;
  v146 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10001A278();
  v39 = v38;
  sub_10001E844();
  __chkstk_darwin(v40, v41);
  sub_1000AD8B4();
  v158 = v42;
  v43 = type metadata accessor for CircularBuffer.Index();
  v167 = v8;
  v168 = v9;
  v169 = v10;
  v138 = HIBYTE(v8) & 1;
  v170 = HIBYTE(v8) & 1;
  v45 = *v1;
  v44 = v1[1];
  v155 = v1;
  v46 = v1[2];
  v153 = v44;
  v147 = v14;
  CircularBuffer.startIndex.getter(v45, v44, v46);
  sub_10010AF64();
  LODWORD(v160) = v48;
  WORD2(v160) = v49;
  if (v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  BYTE6(v160) = v47;
  HIBYTE(v160) = v51;
  sub_10010B0C0();
  WitnessTable = swift_getWitnessTable();
  sub_10010B360();
  if ((sub_1001F6AB8() & 1) == 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v139 = v39;
  v53 = v172;
  v167 = v152;
  v132 = HIDWORD(v152);
  v168 = WORD2(v152);
  v133 = HIWORD(v152);
  v169 = BYTE6(v152);
  v170 = v172;
  v150 = v46;
  v54 = v46;
  v55 = v147;
  CircularBuffer.endIndex.getter(v45, v153, v54);
  sub_10010AF64();
  LODWORD(v160) = v57;
  WORD2(v160) = v58;
  if (v50)
  {
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  BYTE6(v160) = v56;
  HIBYTE(v160) = v59;
  sub_10010B360();
  v142 = WitnessTable;
  v143 = v43;
  if ((sub_1001F6AC8() & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v11)
  {
    v60 = 0x100000000000000;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60 & 0xFF00000000000000 | v8 & 0xFFFFFFFFFFFFFFLL;
  v131 = v53;
  if (v53)
  {
    v62 = 0x100000000000000;
  }

  else
  {
    v62 = 0;
  }

  v130 = v61;
  v129 = v62 & 0xFF00000000000000 | v152 & 0xFFFFFFFFFFFFFFLL;
  v63 = CircularBuffer.distance(from:to:)(v61, v129);
  v64 = v148;
  v65 = v45;
  v66 = v146;
  if (v63 == sub_1001F7118())
  {
    v141[2](v140, v64, v66);
    sub_1001F6DC8();
    swift_getAssociatedConformanceWitness();
    v153 = v55 - 8;
    v67 = v154;
    while (1)
    {
      sub_1001F7578();
      if (sub_10001C990(v32, 1, v55) == 1)
      {
        break;
      }

      v68 = 0x100000000000000;
      if ((v11 & 1) == 0)
      {
        v68 = 0;
      }

      v69 = v10 << 48;
      v70 = v8;
      v71 = v69 & 0xFFFF000000000000 | (v9 << 32) | v68 & 0xFFFFFFFF00000000 | v8;
      (*(*(v55 - 8) + 32))(v67, v32, v55);
      sub_100099784();
      sub_100018460(v72, v73, v74, v55);
      v75 = v157;
      sub_1001F7988();
      v76 = v155;
      sub_1001F78E8();
      v77 = *v76;
      sub_10010AA80(v70, *v76);
      (*(v156 + 40))(v77 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v70, v67, v75);
      v8 = CircularBuffer.index(after:)(v71);
      v9 = HIDWORD(v8);
      v10 = HIWORD(v8);
      sub_10010B03C();
      if (v50)
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        LOBYTE(v11) = 1;
      }
    }

    (*(v139 + 8))(v158, AssociatedTypeWitness);
    goto LABEL_37;
  }

  v149 = v65;
  v78 = v55;
  v79 = v150;
  v80 = v78;
  v81 = v66;
  if (v63 == CircularBuffer.count.getter(v65, v153, v150) && (sub_1001F7128() & 1) != 0)
  {
    CircularBuffer.removeSubrange(_:)();
LABEL_37:
    sub_100037B00();
    return;
  }

  sub_10010B32C();
  sub_1001F6F78();
  v171 = sub_1001F78A8();
  v82 = v79;
  v83 = v80;
  v84 = CircularBuffer.count.getter(v149, v153, v82);
  v85 = sub_1001F7118();
  v86 = v84 + v85;
  if (__OFADD__(v84, v85))
  {
    goto LABEL_40;
  }

  v87 = __OFSUB__(v86, v63);
  v88 = v86 - v63;
  if (v87)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v89 = v88 + 1;
  if (__OFADD__(v88, 1))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v90 = v149;
  v91 = CircularBuffer.capacity.getter();
  v92 = sub_1001062A8(v89);
  if (v92 > v91)
  {
    v91 = v92;
  }

  sub_10010B32C();
  v93 = sub_1001F7988();
  v158 = v91;
  AssociatedTypeWitness = v93;
  sub_1001F78B8(v91);
  v94 = v153;
  v95 = CircularBuffer.startIndex.getter(v90, v153, v150);
  v167 = v95;
  v168 = WORD2(v95);
  v169 = BYTE6(v95);
  v170 = HIBYTE(v95) != 0;
  LODWORD(v160) = v8;
  WORD2(v160) = v9;
  BYTE6(v160) = v10;
  HIBYTE(v160) = v138;
  sub_10010B360();
  if ((sub_1001F6AC8() & 1) == 0)
  {
    goto LABEL_43;
  }

  v160 = CircularBuffer.subscript.getter(v95 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v95) != 0) << 56), v130, v149, v94, v150);
  v161 = v96;
  v162 = v97;
  sub_10010B0A8();
  v98 = swift_getWitnessTable();
  sub_1001F6E58();

  v163 = v165;
  v164 = v166;
  v99 = sub_10010B36C();
  v99[2] = v83;
  v99[3] = v81;
  v100 = v151;
  v99[4] = v151;
  sub_1000A3FC4();
  v101 = swift_allocObject();
  v101[2] = v83;
  v101[3] = v81;
  v101[4] = v100;
  v101[5] = sub_10010AF24;
  v101[6] = v99;
  sub_10010B340();
  v102 = v81;
  v103 = sub_1001F77D8();
  v141 = &protocol conformance descriptor for LazySequence<A>;
  swift_getWitnessTable();
  sub_10010B1E0();
  *(v104 - 256) = v103;
  v138 = v105;
  sub_1001F7B98();

  sub_10010B240();
  sub_10010B340();
  v140 = v98;
  v106 = sub_1001F7A08();
  v107 = swift_getWitnessTable();
  v130 = v106;
  v128[1] = v107;
  sub_1001F7938();
  v108 = v134;
  sub_1001F6E58();
  v109 = sub_10010B36C();
  v109[2] = v83;
  v109[3] = v102;
  v109[4] = v100;
  sub_1000A3FC4();
  v110 = swift_allocObject();
  v110[2] = v83;
  v110[3] = v102;
  v110[4] = v100;
  v110[5] = sub_10010AAE8;
  v110[6] = v109;
  v111 = v137;
  swift_getWitnessTable();
  sub_1001F7B98();

  (*(v136 + 8))(v108, v111);
  swift_getWitnessTable();
  v112 = v153;
  sub_1001F7938();
  v167 = v152;
  v168 = v132;
  v169 = v133;
  v170 = v131;
  v113 = CircularBuffer.endIndex.getter(v149, v112, v150);
  LODWORD(v160) = v113;
  WORD2(v160) = WORD2(v113);
  BYTE6(v160) = BYTE6(v113);
  HIBYTE(v160) = HIBYTE(v113) != 0;
  sub_10010B360();
  if (sub_1001F6AC8())
  {
    v160 = CircularBuffer.subscript.getter(v129, v113 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v113) != 0) << 56), v149, v112, v150);
    v161 = v114;
    v162 = v115;
    sub_1001F6E58();

    v163 = v165;
    v164 = v166;
    v116 = sub_10010B36C();
    v116[2] = v83;
    v116[3] = v102;
    v117 = v151;
    v116[4] = v151;
    sub_1000A3FC4();
    v118 = swift_allocObject();
    v118[2] = v83;
    v118[3] = v102;
    v118[4] = v117;
    v118[5] = sub_10010AF24;
    v118[6] = v116;
    sub_10010B1E0();
    v119 = v157;
    sub_1001F7B98();

    sub_10010B240();
    sub_1001F7938();
    v120 = v158 - _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
    if (v120 >= 1)
    {
      v121 = v154;
      sub_1000995D4();
      sub_100018460(v122, v123, v124, v83);
      sub_1001F7868();
      (*(v156 + 8))(v121, v119);
      sub_10010AF78();
      swift_getWitnessTable();
      sub_1001F7938();
    }

    v125 = v171;

    v126 = v155;
    *v155 = v125;
    v126[1] = 0;
    v127 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();

    v126[2] = v127 - v120;
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
}