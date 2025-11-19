uint64_t sub_CAA78()
{
  v1 = sub_115650();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

void sub_CAB00()
{
  v0 = *(*(sub_115650() - 8) + 80);
  sub_A77D0(sub_C6A74, 0);
  v1 = sub_117170();
  v8[4] = sub_C6A90;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_83460;
  v8[3] = &unk_168CB8;
  v2 = _Block_copy(v8);
  AnalyticsSendEventLazy();
  _Block_release(v2);

  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    sub_115620(((v0 + 16) & ~v0));
    v6 = v5;
    sub_8FC60(_swiftEmptyArrayStorage);
    isa = sub_117050().super.isa;

    [v4 openSensitiveURL:v6 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_CACB4()
{
  v1 = (type metadata accessor for UrsaView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 32);

  v6 = type metadata accessor for UrsaIssue(0);
  v7 = v6[9];
  v8 = sub_115760();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *(v3 + v6[11] + 8);

  v10 = *(v3 + v6[12] + 8);

  v11 = v1[7];
  sub_46F9C(&qword_185A90, &qword_12A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1160C0();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  return swift_deallocObject();
}

uint64_t sub_CAE48()
{
  v1 = *(type metadata accessor for UrsaView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_C643C(v2);
}

uint64_t sub_CAEA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CAEC0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_488B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_CAF04(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_48928(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_CAF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_CAFA8()
{
  v1 = *(v0 + 16);
  sub_117710(41);

  sub_54960(0, &qword_1831C0, NSNumber_ptr);
  v3._countAndFlagsBits = sub_117080();
  sub_117220(v3);

  return 0xD000000000000027;
}

uint64_t sub_CB05C(uint64_t a1)
{
  sub_C3D60(a1, *(v1 + 16), v3);
  type metadata accessor for UrsaView(0);
  sub_46F9C(&qword_185A08, &qword_12A600);
  sub_C8EA0(&qword_1859F8, type metadata accessor for UrsaView);
  sub_C8F08();
  return sub_116E60();
}

uint64_t sub_CB130@<X0>(uint64_t a1@<X8>)
{
  sub_CA6AC(*(v1 + 16), a1, type metadata accessor for UrsaIssue);
  v3 = *(type metadata accessor for UrsaView(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_46F9C(&qword_185A90, &qword_12A660);

  return swift_storeEnumTagMultiPayload();
}

double sub_CB1BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_CB1D8()
{
  v1 = *(v0 + 16);
  sub_117710(30);

  v3._countAndFlagsBits = sub_117320();
  sub_117220(v3);

  return 0xD00000000000001CLL;
}

unint64_t sub_CB260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_117710(22);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_117220(v4);
  return 0xD000000000000014;
}

uint64_t sub_CB30C@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  type metadata accessor for AppDetailViewModel();
  sub_116CB0();
  *a2 = v5;
  a2[1] = v6;
  return sub_CB368(a1, (a2 + 2));
}

uint64_t sub_CB368(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_CB380@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_46F9C(&qword_185D30, &qword_12AAC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15[-v6];
  v16 = v1;
  sub_46F9C(&qword_185D38, &qword_12AAC8);
  sub_48800(&qword_185D40, &qword_185D38, &qword_12AAC8);
  sub_116750();
  v8 = v1[5];
  v9 = v1[6];
  sub_66DE0(v1 + 2, v8);
  *&v17[0] = (*(v9 + 16))(v8, v9);
  *(&v17[0] + 1) = v10;
  sub_48800(&qword_185D48, &qword_185D30, &qword_12AAC0);
  sub_4869C();
  sub_116A40();

  (*(v4 + 8))(v7, v3);
  sub_CC4C8(v1, v17);
  v11 = swift_allocObject();
  v12 = v17[1];
  *(v11 + 16) = v17[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v17[2];
  *(v11 + 64) = v18;
  result = sub_46F9C(&qword_185D50, &qword_12AAD0);
  v14 = (a1 + *(result + 36));
  *v14 = sub_CC504;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

void sub_CB5E8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v87 = sub_46F9C(&qword_185F10, &qword_12B298);
  v82 = *(v87 - 8);
  v3 = *(v82 + 64);
  __chkstk_darwin(v87);
  v79 = v75 - v4;
  v5 = sub_46F9C(&qword_185F18, &qword_12B2A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v84 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = v75 - v9;
  v86 = sub_46F9C(&qword_185F20, &qword_12B2A8);
  v89 = *(v86 - 8);
  v10 = *(v89 + 64);
  __chkstk_darwin(v86);
  v76 = v75 - v11;
  v12 = sub_46F9C(&qword_185F28, &qword_12B2B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v83 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = v75 - v16;
  v17 = sub_46F9C(&qword_185F30, &qword_12B2B8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v75 - v20;
  v22 = sub_46F9C(&qword_185F38, &qword_12B2C0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v81 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v75 - v26;
  v88 = a1;
  v92 = a1;
  v28 = sub_117170();
  v29 = BatteryUILocalization(v28);

  if (!v29)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = sub_1171B0();
  v32 = v31;

  *&v100 = v30;
  *(&v100 + 1) = v32;
  v78 = sub_4869C();
  *&v100 = sub_116900();
  *(&v100 + 1) = v33;
  LOBYTE(v101) = v34 & 1;
  *(&v101 + 1) = v35;
  sub_D1DA4();
  sub_116E40();
  sub_116030();
  sub_D1DF8();
  sub_116A50();
  (*(v18 + 8))(v21, v17);
  v36 = &v27[*(v22 + 36)];
  *v36 = xmmword_12AAA0;
  *(v36 + 1) = xmmword_12AAA0;
  v77 = xmmword_12AAA0;
  v36[32] = 0;
  v37 = v88;
  v39 = *v88;
  v38 = v88[1];
  *&v100 = *v88;
  *(&v100 + 1) = v38;
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  v40 = sub_116CC0();
  (*(**&v98[0] + 400))(v98, v40);

  v106 = v98[6];
  v107 = v98[7];
  v108 = v98[8];
  v102 = v98[2];
  v103 = v98[3];
  v109 = v99;
  v104 = v98[4];
  v105 = v98[5];
  v100 = v98[0];
  v101 = v98[1];
  v41 = sub_68BD4(&v100);
  v80 = v27;
  if (v41 != 1)
  {
    v46 = *(&v100 + 1);
    v110[0] = *(&v100 + 1);
    if (*(&v100 + 1))
    {
      sub_479B4(v110, &v93, &qword_185F70, &qword_12B2D8);
      sub_488C8(v98, &qword_1835F0, &unk_12B240);
      v45 = v91;
      if (*(v46 + 16))
      {
        v47 = sub_CC068(v46);
        sub_488C8(v110, &qword_185F70, &qword_12B2D8);
        v97 = v47;
        v75[2] = swift_getKeyPath();
        sub_CC4C8(v37, &v93);
        v48 = swift_allocObject();
        v49 = v94;
        *(v48 + 16) = v93;
        *(v48 + 32) = v49;
        *(v48 + 48) = v95;
        *(v48 + 64) = v96;
        v75[1] = sub_46F9C(&qword_183598, &unk_1259B0);
        sub_46F9C(&qword_185F78, &qword_12B310);
        sub_48800(&qword_185F80, &qword_183598, &unk_1259B0);
        sub_D2060();
        v50 = v76;
        sub_116E10();
        v51 = v50;
        v52 = v86;
        (*(v89 + 32))(v45, v51, v86);
        v43 = v52;
        v42 = 0;
LABEL_10:
        v44 = v87;
        goto LABEL_11;
      }

      sub_488C8(v110, &qword_185F70, &qword_12B2D8);
      v42 = 1;
    }

    else
    {
      sub_488C8(v98, &qword_1835F0, &unk_12B240);
      v42 = 1;
      v45 = v91;
    }

    v43 = v86;
    goto LABEL_10;
  }

  v42 = 1;
  v43 = v86;
  v44 = v87;
  v45 = v91;
LABEL_11:
  v53 = 1;
  (*(v89 + 56))(v45, v42, 1, v43);
  *&v93 = v39;
  *(&v93 + 1) = v38;
  v54 = sub_116CC0();
  v55 = (*(*v97 + 440))(v54);

  if ((v55 & 1) == 0)
  {
LABEL_14:
    v68 = v90;
    (*(v82 + 56))(v90, v53, 1, v44);
    v69 = v80;
    v70 = v81;
    sub_479B4(v80, v81, &qword_185F38, &qword_12B2C0);
    v71 = v83;
    sub_479B4(v45, v83, &qword_185F28, &qword_12B2B0);
    v72 = v84;
    sub_479B4(v68, v84, &qword_185F18, &qword_12B2A0);
    v73 = v85;
    sub_479B4(v70, v85, &qword_185F38, &qword_12B2C0);
    v74 = sub_46F9C(&qword_185F50, &qword_12B2C8);
    sub_479B4(v71, v73 + *(v74 + 48), &qword_185F28, &qword_12B2B0);
    sub_479B4(v72, v73 + *(v74 + 64), &qword_185F18, &qword_12B2A0);
    sub_488C8(v68, &qword_185F18, &qword_12B2A0);
    sub_488C8(v91, &qword_185F28, &qword_12B2B0);
    sub_488C8(v69, &qword_185F38, &qword_12B2C0);
    sub_488C8(v72, &qword_185F18, &qword_12B2A0);
    sub_488C8(v71, &qword_185F28, &qword_12B2B0);
    sub_488C8(v70, &qword_185F38, &qword_12B2C0);
    return;
  }

  __chkstk_darwin(v56);
  v57 = sub_117170();
  v58 = BatteryUILocalization(v57);

  if (v58)
  {
    v59 = sub_1171B0();
    v61 = v60;

    *&v93 = v59;
    *(&v93 + 1) = v61;
    *&v93 = sub_116900();
    *(&v93 + 1) = v62;
    LOBYTE(v94) = v63 & 1;
    *(&v94 + 1) = v64;
    sub_46F9C(&qword_185F58, &qword_12B2D0);
    sub_D1F30();
    v65 = v79;
    sub_116E40();
    v66 = v65 + *(v44 + 36);
    v67 = v77;
    *v66 = v77;
    *(v66 + 16) = v67;
    *(v66 + 32) = 0;
    sub_548D0(v65, v90, &qword_185F10, &qword_12B298);
    v53 = 0;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

void *sub_CC068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *v2++;
      v6 = v7;
      if (sub_5D988(v7))
      {
        v22 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_65240(0, v3[2] + 1, 1);
          v3 = v22;
        }

        v5 = v3[2];
        v4 = v3[3];
        if (v5 >= v4 >> 1)
        {
          sub_65240((v4 > 1), v5 + 1, 1);
          v3 = v22;
        }

        v3[2] = v5 + 1;
        *(v3 + v5 + 32) = v6;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_D0E50(v8);

  v23 = v9;
  v10 = v3[2];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = 32;
  v12 = sub_5D938();
  do
  {
    v13 = *v12;
    if (*(*v12 + 16))
    {
      v14 = *(v3 + v11);
      v15 = *v12;

      v16 = sub_D0184(v14);
      if (v17)
      {
        v18 = *(*(v13 + 56) + v16);

        sub_D01F0();
      }

      else
      {
      }
    }

    ++v11;
    --v10;
  }

  while (v10);

  v9 = v23;
  v19 = *(v23 + 16);
  if (v19)
  {
    while (1)
    {
      v20 = sub_D0CE0(v19, 0);
      v9 = sub_D0D54(&v22, v20 + 32, v19, v9);
      sub_D0EC4();
      if (v9 == v19)
      {
        break;
      }

      __break(1u);
LABEL_21:

      v19 = *(v9 + 16);
      if (!v19)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t sub_CC250@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_5E934(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_CC27C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_46F9C(&qword_185F98, qword_12B318);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = *a1;
  v12 = a2[1];
  v24[2] = *a2;
  v24[3] = v12;
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CC0();
  v13 = v24[1];
  v14 = a2[5];
  v15 = a2[6];
  sub_66DE0(a2 + 2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = (*(*v13 + 424))(v11, v16, v17);
  v20 = v19;

  if (v20)
  {
    __chkstk_darwin(v21);
    LOBYTE(v24[-4]) = v11;
    v24[-3] = v18;
    v24[-2] = v20;
    sub_D2198();
    sub_116E50();

    (*(v7 + 32))(a3, v10, v6);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v7 + 56))(a3, v22, 1, v6);
}

uint64_t sub_CC504()
{
  v4[4] = sub_CC600;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_83460;
  v4[3] = &unk_169248;
  v0 = _Block_copy(v4);
  v1 = @"com.apple.batteryui";
  AnalyticsSendEventLazy();
  _Block_release(v0);

  sub_A77E8(sub_CC6CC, 0);
  v2 = sub_1171E0();
  notify_post((v2 + 32));
}

unint64_t sub_CC600()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000000136310;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

uint64_t sub_CC6EC@<X0>(uint64_t a1@<X8>)
{
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CE0();
  v2 = sub_116610();
  sub_115FD0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_116620();
  result = sub_115FD0();
  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 64) = 0;
  *(a1 + 72) = v11;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = 0;
  return result;
}

double sub_CC7BC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_1163F0();
  v21 = 0;
  sub_CC6EC(&v12);
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v30[6] = v18;
  v31 = v19;
  sub_479B4(&v22, &v11, &qword_185E50, &qword_12B118);
  sub_488C8(v30, &qword_185E50, &qword_12B118);
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  v6 = *&v20[80];
  *(a1 + 81) = *&v20[64];
  *(a1 + 97) = v6;
  *(a1 + 113) = *&v20[96];
  v7 = *&v20[16];
  *(a1 + 17) = *v20;
  *(a1 + 33) = v7;
  result = *&v20[32];
  v9 = *&v20[48];
  *(a1 + 49) = *&v20[32];
  v20[119] = v29;
  v10 = v21;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 129) = *&v20[112];
  *(a1 + 65) = v9;
  return result;
}

uint64_t sub_CC8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v5 = sub_46F9C(&qword_185EE8, &unk_12B250);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v98 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v96 = &v83[-v9];
  v10 = sub_46F9C(&qword_184F40, &unk_12C690);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v95 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v102 = &v83[-v14];
  v113 = a1;
  v114 = a2;
  v15 = sub_46F9C(&qword_185D58, &qword_12AAD8);
  v16 = sub_116CC0();
  v17 = (*(*v106 + 416))(v16);
  v19 = v18;

  if (v19)
  {
    v113 = v17;
    v114 = v19;
    sub_4869C();
    v20 = sub_116900();
    v22 = v21;
    v24 = v23;
    v89 = a1;
    sub_116670();
    v87 = v10;
    v25 = sub_1168C0();
    v88 = v15;
    v27 = v26;
    v90 = a2;
    v91 = v5;
    v29 = v28;

    sub_48928(v20, v22, v24 & 1);
    a1 = v89;

    sub_1166C0();
    v30 = sub_116810();
    v93 = v31;
    v94 = v30;
    v101 = v32;
    LOBYTE(v20) = v33;
    v34 = v29 & 1;
    a2 = v90;
    sub_48928(v25, v27, v34);
    v5 = v91;

    KeyPath = swift_getKeyPath();
    v35 = sub_116610();
    sub_115FD0();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v113) = v20 & 1;
    LOBYTE(v106) = 1;
    LOBYTE(v126) = 0;
    v19 = v20 & 1;
    v100 = 1;
    v44 = v35;
    v10 = v87;
    v99 = v44;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v100 = 0;
    v101 = 0;
    KeyPath = 0;
    v99 = 0;
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  v87 = v19;
  v45 = v102;
  sub_116DD0();
  v46 = sub_116610();
  sub_115FD0();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = &v45[*(sub_46F9C(&qword_184EA0, &qword_129180) + 36)];
  *v55 = v46;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = sub_116620();
  sub_115FD0();
  v57 = &v45[*(v10 + 36)];
  *v57 = v56;
  *(v57 + 1) = v58;
  *(v57 + 2) = v59;
  *(v57 + 3) = v60;
  *(v57 + 4) = v61;
  v57[40] = 0;
  v113 = a1;
  v114 = a2;
  v62 = sub_116CC0();
  (*(*v106 + 304))(v62);

  sub_116EB0();
  sub_116070();
  v90 = v128;
  v91 = v126;
  v88 = v131;
  v89 = v130;
  v105 = 1;
  v104 = v127;
  v103 = v129;
  *&v106 = a1;
  *(&v106 + 1) = a2;
  sub_116CE0();
  type metadata accessor for AppDetailViewModel();
  sub_D1C7C(&qword_185EF0, type metadata accessor for AppDetailViewModel);
  v63 = v96;
  sub_7AA94(&v113, v96);
  v64 = sub_116620();
  sub_115FD0();
  v65 = &v63[*(v5 + 36)];
  *v65 = v64;
  *(v65 + 1) = v66;
  *(v65 + 2) = v67;
  *(v65 + 3) = v68;
  *(v65 + 4) = v69;
  v65[40] = 0;
  v70 = v95;
  sub_479B4(v45, v95, &qword_184F40, &unk_12C690);
  v84 = v105;
  v85 = v104;
  v86 = v103;
  v71 = v98;
  sub_479B4(v63, v98, &qword_185EE8, &unk_12B250);
  v72 = v94;
  *&v106 = v94;
  *(&v106 + 1) = v101;
  *&v107 = v19;
  v74 = KeyPath;
  v73 = v93;
  *(&v107 + 1) = v93;
  v108 = KeyPath;
  *&v109 = v100;
  *(&v109 + 1) = v99;
  *&v110 = v37;
  *(&v110 + 1) = v39;
  *&v111 = v41;
  *(&v111 + 1) = v43;
  v112 = 0;
  v75 = v97;
  *(v97 + 96) = 0;
  v76 = v111;
  v75[4] = v110;
  v75[5] = v76;
  v77 = v107;
  *v75 = v106;
  v75[1] = v77;
  v78 = v109;
  v75[2] = v108;
  v75[3] = v78;
  v79 = sub_46F9C(&qword_185EF8, &unk_12B260);
  sub_479B4(v70, v75 + v79[12], &qword_184F40, &unk_12C690);
  v80 = v75 + v79[16];
  *v80 = 0;
  v80[8] = v84;
  *(v80 + 2) = v91;
  v80[24] = v85;
  *(v80 + 4) = v90;
  v80[40] = v86;
  v81 = v88;
  *(v80 + 6) = v89;
  *(v80 + 7) = v81;
  sub_479B4(v71, v75 + v79[20], &qword_185EE8, &unk_12B250);
  sub_479B4(&v106, &v113, &qword_183EB8, &unk_127930);
  sub_488C8(v63, &qword_185EE8, &unk_12B250);
  sub_488C8(v102, &qword_184F40, &unk_12C690);
  sub_488C8(v71, &qword_185EE8, &unk_12B250);
  sub_488C8(v70, &qword_184F40, &unk_12C690);
  v113 = v72;
  v114 = v101;
  v115 = v87;
  v116 = v73;
  v117 = v74;
  v118 = 0;
  v119 = v100;
  v120 = v99;
  v121 = v37;
  v122 = v39;
  v123 = v41;
  v124 = v43;
  v125 = 0;
  return sub_488C8(&v113, &qword_183EB8, &unk_127930);
}

uint64_t sub_CD028@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1163F0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_46F9C(&qword_185D60, &qword_12AAE0);
  return sub_CC8FC(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_CD088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_46F9C(&qword_185D70, &qword_12AAF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  *v9 = sub_1163F0();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v10 = sub_46F9C(&qword_185D78, &qword_12AAF8);
  sub_CD29C(a1, a2, a3, &v9[*(v10 + 44)]);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_46F9C(&qword_185D68, &qword_12AAE8);
  sub_116D90();
  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[2];
  swift_getKeyPath();
  v16 = v11;
  v17 = v12;
  v18 = v13;
  sub_116D80();

  sub_48800(&qword_185D80, &qword_185D70, &qword_12AAF0);
  sub_D0ECC();
  sub_116AC0();

  return sub_488C8(v9, &qword_185D70, &qword_12AAF0);
}

void sub_CD29C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v175 = a4;
  v7 = sub_1164B0();
  v171 = *(v7 - 8);
  v172 = v7;
  v8 = *(v171 + 64);
  __chkstk_darwin(v7);
  v170 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_185E98, &qword_12B1C0);
  v168 = *(v10 - 8);
  v169 = v10;
  v11 = *(v168 + 64);
  __chkstk_darwin(v10);
  v166 = &v162 - v12;
  v167 = sub_46F9C(&qword_185EA0, &qword_12B1C8);
  v13 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v174 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v173 = &v162 - v16;
  v17 = sub_1163D0();
  v178 = *(v17 - 8);
  v179 = v17;
  v18 = *(v178 + 64);
  __chkstk_darwin(v17);
  v177 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_46F9C(&qword_185EA8, &unk_12B1D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v187 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v188 = &v162 - v24;
  v25 = sub_116DE0();
  v182 = *(v25 - 8);
  v183 = v25;
  v26 = *(v182 + 64);
  __chkstk_darwin(v25);
  v181 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_46F9C(&qword_184EA0, &qword_129180);
  v28 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180);
  v186 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v162 - v31;
  __chkstk_darwin(v33);
  v189 = &v162 - v34;
  v185 = sub_116320();
  v198 = 1;
  v163 = a1;
  v164 = a2;
  *v196 = a1;
  *&v196[8] = a2;
  v165 = a3;
  *&v196[16] = a3;
  sub_46F9C(&qword_185D68, &qword_12AAE8);
  v35 = sub_116D60();
  (*(**v195 + 400))(v237, v35);

  v243 = v237[6];
  v244 = v237[7];
  v245 = v237[8];
  v246 = v238;
  v239[2] = v237[2];
  v240 = v237[3];
  v241 = v237[4];
  v242 = v237[5];
  v239[0] = v237[0];
  v239[1] = v237[1];
  if (sub_68BD4(v239) == 1)
  {
    sub_D1C20(v196);
    goto LABEL_17;
  }

  v36 = v240;
  v37 = sub_8D8B4();
  v38 = [v37[8] stringFromTimeInterval:*&v36];
  if (!v38)
  {
    goto LABEL_8;
  }

  v39 = v38;
  v40 = sub_1171B0();
  v42 = v41;

  v43 = AXDurationStringForDurationWithSeconds();
  if (!v43)
  {

LABEL_8:
    sub_D1C5C(v199);
    goto LABEL_9;
  }

  v44 = v43;
  v184 = sub_1171B0();
  *&v176 = v45;

  v46 = sub_117170();
  v47 = BatteryUILocalization(v46);

  if (!v47)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v48 = sub_1171B0();
  v50 = v49;

  v51 = sub_116BC0();
  v52 = sub_116BB0();
  sub_116E80();
  sub_116190();
  *v196 = v48;
  *&v196[8] = v50;
  *&v196[16] = v40;
  *&v196[24] = v42;
  *&v196[32] = v184;
  *&v196[40] = v176;
  *&v196[48] = v51;
  *&v196[56] = v52;
  nullsub_4(v196);
  v199[8] = *&v196[128];
  v199[9] = *&v196[144];
  v199[10] = *&v196[160];
  v199[4] = *&v196[64];
  v199[5] = *&v196[80];
  v199[6] = *&v196[96];
  v199[7] = *&v196[112];
  v199[0] = *v196;
  v199[1] = *&v196[16];
  v199[2] = *&v196[32];
  v199[3] = *&v196[48];
LABEL_9:
  v53 = [v37[8] stringFromTimeInterval:*(&v36 + 1)];
  if (!v53)
  {
    sub_488C8(v237, &qword_1835F0, &unk_12B240);
LABEL_15:
    sub_D1C5C(&v226);
    goto LABEL_16;
  }

  v54 = v53;
  v55 = sub_1171B0();
  v57 = v56;

  v58 = AXDurationStringForDurationWithSeconds();
  if (!v58)
  {
    sub_488C8(v237, &qword_1835F0, &unk_12B240);

    goto LABEL_15;
  }

  v59 = v58;
  v60 = sub_1171B0();
  v62 = v61;

  v63 = sub_117170();
  v64 = BatteryUILocalization(v63);

  if (v64)
  {
    sub_488C8(v237, &qword_1835F0, &unk_12B240);
    v65 = sub_1171B0();
    v67 = v66;

    v68 = sub_116BC0();
    v69 = sub_116BB0();
    sub_116E80();
    sub_116190();
    *v196 = v65;
    *&v196[8] = v67;
    *&v196[16] = v55;
    *&v196[24] = v57;
    *&v196[32] = v60;
    *&v196[40] = v62;
    *&v196[48] = v68;
    *&v196[56] = v69;
    nullsub_4(v196);
    v234 = *&v196[128];
    v235 = *&v196[144];
    v236 = *&v196[160];
    v230 = *&v196[64];
    v231 = *&v196[80];
    v232 = *&v196[96];
    v233 = *&v196[112];
    v226 = *v196;
    v227 = *&v196[16];
    v228 = *&v196[32];
    v229 = *&v196[48];
LABEL_16:
    v209 = v199[8];
    v210 = v199[9];
    v205 = v199[4];
    v206 = v199[5];
    v207 = v199[6];
    v208 = v199[7];
    v201 = v199[0];
    v202 = v199[1];
    v203 = v199[2];
    v204 = v199[3];
    v214[7] = v233;
    v214[8] = v234;
    v214[9] = v235;
    v214[10] = v236;
    v214[3] = v229;
    v214[4] = v230;
    v214[5] = v231;
    v214[6] = v232;
    v214[0] = v226;
    v214[1] = v227;
    v214[2] = v228;
    v212[7] = v199[7];
    v212[8] = v199[8];
    v212[9] = v199[9];
    v212[10] = v199[10];
    v212[3] = v199[3];
    v212[4] = v199[4];
    v212[5] = v199[5];
    v212[6] = v199[6];
    v211 = v199[10];
    v212[0] = v199[0];
    v212[1] = v199[1];
    v212[2] = v199[2];
    v200[8] = v199[8];
    v200[9] = v199[9];
    v200[4] = v199[4];
    v200[5] = v199[5];
    v200[6] = v199[6];
    v200[7] = v199[7];
    v200[0] = v199[0];
    v200[1] = v199[1];
    v200[2] = v199[2];
    v200[3] = v199[3];
    v213[7] = v233;
    v213[8] = v234;
    v213[9] = v235;
    v213[10] = v236;
    v213[3] = v229;
    v213[4] = v230;
    v213[5] = v231;
    v213[6] = v232;
    v213[0] = v226;
    v213[1] = v227;
    v213[2] = v228;
    v200[18] = v233;
    v200[19] = v234;
    v200[20] = v235;
    v200[21] = v236;
    v200[14] = v229;
    v200[15] = v230;
    v200[16] = v231;
    v200[17] = v232;
    v200[10] = v199[10];
    v200[11] = v226;
    v200[12] = v227;
    v200[13] = v228;
    sub_479B4(v212, v196, &qword_185EE0, &unk_12CB70);
    sub_479B4(v213, v196, &qword_185EE0, &unk_12CB70);
    sub_488C8(v214, &qword_185EE0, &unk_12CB70);
    v223 = v209;
    v224 = v210;
    v225 = v211;
    v219 = v205;
    v220 = v206;
    v221 = v207;
    v222 = v208;
    v215 = v201;
    v216 = v202;
    v217 = v203;
    v218 = v204;
    sub_488C8(&v215, &qword_185EE0, &unk_12CB70);
    memcpy(v195, v200, 0x160uLL);
    nullsub_4(v195);
    memcpy(v196, v195, 0x160uLL);
LABEL_17:
    memcpy(v195, v196, 0x160uLL);
    memcpy(v199, v195, sizeof(v199));
    memcpy(v200, v195, sizeof(v200));
    sub_479B4(v199, v196, &qword_185EB0, &unk_12B1E0);
    sub_488C8(v200, &qword_185EB0, &unk_12B1E0);
    memcpy(&v197[7], v199, 0x160uLL);
    LODWORD(v184) = v198;
    v70 = v181;
    sub_116DD0();
    sub_46F9C(&qword_182E10, &qword_1247F0);
    v71 = swift_allocObject();
    v176 = xmmword_1248A0;
    *(v71 + 16) = xmmword_1248A0;
    v72 = sub_116610();
    *(v71 + 32) = v72;
    v73 = sub_116620();
    *(v71 + 33) = v73;
    v74 = sub_116640();
    sub_116640();
    if (sub_116640() != v72)
    {
      v74 = sub_116640();
    }

    sub_116640();
    if (sub_116640() != v73)
    {
      v74 = sub_116640();
    }

    sub_115FD0();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    (*(v182 + 32))(v32, v70, v183);
    v83 = &v32[*(v180 + 36)];
    *v83 = v74;
    *(v83 + 1) = v76;
    *(v83 + 2) = v78;
    *(v83 + 3) = v80;
    *(v83 + 4) = v82;
    v83[40] = 0;
    sub_548D0(v32, v189, &qword_184EA0, &qword_129180);
    v84 = sub_117170();
    v85 = BatteryUILocalization(v84);

    if (v85)
    {
      v86 = sub_1171B0();
      v88 = v87;

      *v196 = v86;
      *&v196[8] = v88;
      v183 = sub_4869C();
      v89 = sub_116900();
      v91 = v90;
      LOBYTE(v88) = v92;
      sub_1166B0();
      v93 = sub_116810();
      v95 = v94;
      v97 = v96;
      v99 = v98;
      sub_48928(v89, v91, v88 & 1);

      *v196 = v93;
      *&v196[8] = v95;
      v196[16] = v97 & 1;
      *&v196[24] = v99;
      v100 = v177;
      sub_1163C0();
      sub_116A90();
      (*(v178 + 8))(v100, v179);
      sub_48928(v93, v95, v97 & 1);

      v101 = sub_117170();
      v102 = BatteryUILocalization(v101);

      if (v102)
      {
        v103 = sub_1171B0();
        v105 = v104;

        *v196 = v103;
        *&v196[8] = v105;
        v180 = sub_116900();
        v181 = v106;
        v108 = v107;
        v110 = v109;
        sub_46F9C(&qword_182E10, &qword_1247F0);
        inited = swift_initStackObject();
        *(inited + 16) = v176;
        v112 = sub_116610();
        *(inited + 32) = v112;
        v113 = sub_116620();
        *(inited + 33) = v113;
        v114 = sub_116640();
        sub_116640();
        if (sub_116640() != v112)
        {
          v114 = sub_116640();
        }

        sub_116640();
        if (sub_116640() != v113)
        {
          v114 = sub_116640();
        }

        sub_115FD0();
        v116 = v115;
        v118 = v117;
        v120 = v119;
        v122 = v121;
        v123 = v110 & 1;
        LOBYTE(v213[0]) = v110 & 1;
        LOBYTE(v212[0]) = 0;
        v124 = sub_117170();
        v125 = BatteryUILocalization(v124);

        if (v125)
        {
          v126 = sub_1171B0();
          v128 = v127;

          *v196 = v126;
          *&v196[8] = v128;
          v129 = sub_116900();
          v131 = v130;
          v179 = v132;
          v134 = v180;
          v133 = v181;
          *v195 = v180;
          *&v195[8] = v108;
          v135 = v108;
          v195[16] = v123;
          *&v195[24] = v181;
          v195[32] = v114;
          *&v195[40] = v116;
          *&v195[48] = v118;
          *&v195[56] = v120;
          *&v195[64] = v122;
          v195[72] = 0;
          *(v194 + 9) = *&v195[57];
          v193 = *&v195[32];
          v194[0] = *&v195[48];
          v191 = *v195;
          v192 = *&v195[16];
          v137 = v136 & 1;
          LOBYTE(v201) = v136 & 1;
          LODWORD(v178) = v136 & 1;
          sub_479B4(v195, v196, &qword_183530, &qword_12CCB0);
          v177 = v129;
          v182 = v131;
          sub_488B8(v129, v131, v137);

          sub_48928(v129, v131, v137);

          *v196 = v134;
          *&v196[8] = v135;
          v196[16] = v123;
          *&v196[17] = v215;
          *&v196[20] = *(&v215 + 3);
          *&v196[24] = v133;
          v196[32] = v114;
          *&v196[33] = v214[0];
          *&v196[36] = *(v214 + 3);
          *&v196[40] = v116;
          *&v196[48] = v118;
          *&v196[56] = v120;
          *&v196[64] = v122;
          v196[72] = 0;
          sub_488C8(v196, &qword_183530, &qword_12CCB0);
          v183 = sub_116BC0();
          v138 = swift_allocObject();
          v139 = v164;
          v138[2] = v163;
          v138[3] = v139;
          v138[4] = v165;

          sub_46F9C(&qword_185A48, &qword_12A620);
          sub_C9128();
          v140 = v166;
          sub_116D00();
          v141 = v170;
          sub_1164A0();
          sub_48800(&qword_185EB8, &qword_185E98, &qword_12B1C0);
          sub_D1C7C(&qword_185EC0, &type metadata accessor for BorderlessButtonStyle);
          v142 = v172;
          v143 = v173;
          v144 = v169;
          sub_1169F0();
          (*(v171 + 8))(v141, v142);
          (*(v168 + 8))(v140, v144);
          v145 = sub_116610();
          sub_115FD0();
          v146 = v143 + *(v167 + 36);
          *v146 = v145;
          *(v146 + 8) = v147;
          *(v146 + 16) = v148;
          *(v146 + 24) = v149;
          *(v146 + 32) = v150;
          *(v146 + 40) = 0;
          v151 = v186;
          sub_479B4(v189, v186, &qword_184EA0, &qword_129180);
          v152 = v187;
          sub_479B4(v188, v187, &qword_185EA8, &unk_12B1D0);
          v153 = v174;
          sub_479B4(v143, v174, &qword_185EA0, &qword_12B1C8);
          *v195 = v185;
          *&v195[8] = 0;
          v195[16] = v184;
          memcpy(&v195[17], v197, 0x167uLL);
          v154 = v175;
          memcpy(v175, v195, 0x178uLL);
          v155 = sub_46F9C(&qword_185EC8, &qword_12B1F0);
          sub_479B4(v151, &v154[v155[12]], &qword_184EA0, &qword_129180);
          sub_479B4(v152, &v154[v155[16]], &qword_185EA8, &unk_12B1D0);
          v156 = &v154[v155[20]];
          v217 = v193;
          v218 = v194[0];
          v219 = v194[1];
          v215 = v191;
          v216 = v192;
          v157 = v177;
          *&v220 = v177;
          *(&v220 + 1) = v182;
          LOBYTE(v151) = v178;
          LOBYTE(v221) = v178;
          *(&v221 + 1) = *v190;
          DWORD1(v221) = *&v190[3];
          v158 = v179;
          *(&v221 + 1) = v179;
          *&v222 = v183;
          *(v156 + 14) = v183;
          v159 = v220;
          *(v156 + 4) = v219;
          *(v156 + 5) = v159;
          *(v156 + 6) = v221;
          v160 = v216;
          *v156 = v215;
          *(v156 + 1) = v160;
          v161 = v218;
          *(v156 + 2) = v217;
          *(v156 + 3) = v161;
          sub_479B4(v153, &v154[v155[24]], &qword_185EA0, &qword_12B1C8);
          sub_479B4(v195, v196, &qword_185ED0, &qword_12B1F8);
          sub_479B4(&v215, v196, &qword_185ED8, &qword_12B200);
          sub_488C8(v143, &qword_185EA0, &qword_12B1C8);
          sub_488C8(v188, &qword_185EA8, &unk_12B1D0);
          sub_488C8(v189, &qword_184EA0, &qword_129180);
          sub_488C8(v153, &qword_185EA0, &qword_12B1C8);
          v228 = v193;
          v229 = v194[0];
          v230 = v194[1];
          v226 = v191;
          v227 = v192;
          *&v231 = v157;
          *(&v231 + 1) = v182;
          LOBYTE(v232) = v151;
          *(&v232 + 1) = *v190;
          DWORD1(v232) = *&v190[3];
          *(&v232 + 1) = v158;
          *&v233 = v183;
          sub_488C8(&v226, &qword_185ED8, &qword_12B200);
          sub_488C8(v187, &qword_185EA8, &unk_12B1D0);
          sub_488C8(v186, &qword_184EA0, &qword_129180);
          *v196 = v185;
          *&v196[8] = 0;
          v196[16] = v184;
          memcpy(&v196[17], v197, 0x167uLL);
          sub_488C8(v196, &qword_185ED0, &qword_12B1F8);
          return;
        }

        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_CE6E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

void sub_CE6F4(uint64_t a1@<X8>)
{
  v2 = sub_117170();
  v3 = BatteryUILocalization(v2);

  if (v3)
  {
    sub_1171B0();

    sub_4869C();
    v4 = sub_116900();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    KeyPath = swift_getKeyPath();
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v10;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_CE7C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

Swift::Int sub_CE87C()
{
  sub_117A90();
  sub_117AA0(0);
  return sub_117AD0();
}

Swift::Int sub_CE8E8()
{
  sub_117A90();
  sub_117AA0(0);
  return sub_117AD0();
}

uint64_t sub_CE974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_D19DC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_CE9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_D19DC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_CEA3C()
{
  sub_D19DC();
  sub_1165C0();
  __break(1u);
}

uint64_t sub_CEA64()
{
  v1 = sub_116530();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1163F0();
  v12 = 0;
  sub_CEC48(v0, v13);
  *&v11[55] = v14;
  *&v11[39] = v13[2];
  *&v11[23] = v13[1];
  *&v11[7] = v13[0];
  *&v10[17] = *&v11[16];
  *&v10[33] = *&v11[32];
  *&v10[49] = *&v11[48];
  *&v9 = v6;
  *(&v9 + 1) = 0x4000000000000000;
  v10[0] = v12;
  *&v10[64] = *(&v14 + 1);
  *&v10[1] = *v11;
  sub_116520();
  sub_46F9C(&qword_185D90, &qword_12AB28);
  sub_48800(&qword_185D98, &qword_185D90, &qword_12AB28);
  sub_116A80();
  (*(v2 + 8))(v5, v1);
  v15[2] = *&v10[16];
  v15[3] = *&v10[32];
  v15[4] = *&v10[48];
  v16 = *&v10[64];
  v15[0] = v9;
  v15[1] = *v10;
  return sub_488C8(v15, &qword_185D90, &qword_12AB28);
}

uint64_t sub_CEC48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v3 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v64 - v5;
  v7 = sub_116740();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v12 = a1[1];
  *&v84 = *a1;
  *(&v84 + 1) = v12;
  v81 = sub_4869C();

  v13 = sub_116900();
  v15 = v14;
  v17 = v16;
  v18 = v8[13];
  v73 = v8 + 13;
  v74 = v18;
  v66 = v7;
  v18(v11, enum case for Font.TextStyle.footnote(_:), v7);
  v71 = sub_116690();
  v67 = *(v71 - 8);
  v19 = *(v67 + 56);
  v68 = v67 + 56;
  v72 = v19;
  v19(v6, 1, 1, v71);
  sub_1166B0();
  v65 = v11;
  sub_1166E0();
  sub_488C8(v6, &qword_182FF8, &qword_124E30);
  v20 = v8[1];
  v69 = v8 + 1;
  v70 = v20;
  v20(v11, v7);
  v21 = sub_1168C0();
  v23 = v22;
  v25 = v24;

  sub_48928(v13, v15, v17 & 1);

  v26 = v80;
  v27 = v80[6];
  v78 = sub_116880();
  v76 = v28;
  v75 = v29;
  v77 = v30;
  sub_48928(v21, v23, v25 & 1);

  v31 = v26[3];
  *&v84 = v26[2];
  *(&v84 + 1) = v31;

  v32 = sub_116900();
  v34 = v33;
  LOBYTE(v13) = v35;
  v36 = v65;
  v37 = v66;
  v74(v65, enum case for Font.TextStyle.title2(_:), v66);
  v38 = v71;
  (*(v67 + 104))(v6, enum case for Font.Design.rounded(_:), v71);
  v72(v6, 0, 1, v38);
  sub_1166E0();
  sub_488C8(v6, &qword_182FF8, &qword_124E30);
  v70(v36, v37);
  v39 = sub_1168C0();
  v41 = v40;
  LOBYTE(v23) = v42;

  sub_48928(v32, v34, v13 & 1);

  sub_1166B0();
  v43 = sub_116810();
  v45 = v44;
  LOBYTE(v32) = v46;
  sub_48928(v39, v41, v23 & 1);

  v47 = v80;
  v85 = v80[7];
  *&v84 = v85;

  v48 = sub_116890();
  v50 = v49;
  LOBYTE(v13) = v51;
  sub_48928(v43, v45, v32 & 1);

  sub_D1A94(&v85);
  v84 = *(v47 + 2);
  v83 = *(v47 + 2);

  v52 = sub_1168A0();
  v54 = v53;
  LOBYTE(v32) = v55;
  v57 = v56;
  sub_48928(v48, v50, v13 & 1);

  sub_D1AE8(&v84);
  v58 = v75 & 1;
  v82 = v75 & 1;
  LOBYTE(v83) = v75 & 1;
  LOBYTE(v48) = v32 & 1;
  v86 = v32 & 1;
  v60 = v78;
  v59 = v79;
  v62 = v76;
  v61 = v77;
  *v79 = v78;
  v59[1] = v62;
  *(v59 + 16) = v58;
  v59[3] = v61;
  v59[4] = v52;
  v59[5] = v54;
  *(v59 + 48) = v48;
  v59[7] = v57;
  sub_488B8(v60, v62, v58);

  sub_488B8(v52, v54, v48);

  sub_48928(v52, v54, v48);

  sub_48928(v60, v62, v82);
}

uint64_t sub_CF270@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v42 = sub_1163F0();
  v45 = 0;
  v41 = sub_5DEA8(a1);
  v39 = v4;
  v40 = sub_5D9DC(a1);
  v38 = v5;
  v37 = sub_5D9AC(a1);
  sub_4869C();

  v6 = sub_116900();
  v8 = v7;
  v10 = v9;
  sub_116700();
  v11 = sub_1168C0();
  v13 = v12;
  v15 = v14;

  sub_48928(v6, v8, v10 & 1);

  sub_1164D0();
  v16 = sub_116890();
  v18 = v17;
  v20 = v19;
  v36 = v21;
  sub_48928(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v6) = sub_116630();
  sub_115FD0();
  v43[0] = 0;
  *&v46 = v16;
  *(&v46 + 1) = v18;
  LOBYTE(v47) = v20 & 1;
  DWORD1(v47) = *(v61 + 3);
  *(&v47 + 1) = v61[0];
  *(&v47 + 1) = v36;
  *v48 = KeyPath;
  v48[16] = 1;
  *&v48[20] = *&v60[3];
  *&v48[17] = *v60;
  v48[24] = v6;
  *&v48[28] = *&v59[3];
  *&v48[25] = *v59;
  *&v48[32] = v23;
  *&v48[40] = v24;
  *&v48[48] = v25;
  *&v48[56] = v26;
  v48[64] = 0;
  v58[103] = 0;
  *&v58[87] = *&v48[48];
  *&v58[71] = *&v48[32];
  *&v58[55] = *&v48[16];
  *&v58[39] = KeyPath;
  *&v58[23] = v47;
  *&v58[7] = v46;
  v49 = v16;
  v50 = v18;
  LOBYTE(v51) = v20 & 1;
  HIDWORD(v51) = *(v61 + 3);
  *(&v51 + 1) = v61[0];
  v52 = v36;
  *v53 = KeyPath;
  *&v53[8] = 0;
  v53[16] = 1;
  *&v54[3] = *&v60[3];
  *v54 = *v60;
  v54[7] = v6;
  *&v54[11] = *&v59[3];
  *&v54[8] = *v59;
  *&v54[15] = v23;
  *&v54[23] = v24;
  *&v54[31] = v25;
  *&v54[39] = v26;
  v54[47] = 0;

  sub_479B4(&v46, v43, &qword_183EC8, &unk_129700);
  sub_488C8(&v49, &qword_183EC8, &unk_129700);

  *&v48[49] = *&v58[48];
  *&v48[65] = *&v58[64];
  *&v48[81] = *&v58[80];
  *&v48[1] = *v58;
  *&v48[17] = *&v58[16];
  *&v48[33] = *&v58[32];
  *&v54[32] = *&v58[48];
  v55 = *&v58[64];
  v56 = *&v58[80];
  *&v53[1] = *v58;
  *v54 = *&v58[16];
  *&v48[97] = *&v58[96];
  *&v46 = v41;
  *(&v46 + 1) = v39;
  *&v47 = v40;
  *(&v47 + 1) = v38;
  v48[0] = v37;
  v49 = v41;
  v50 = v39;
  v51 = v40;
  v52 = v38;
  v53[0] = v37;
  v57 = *&v58[96];
  *&v54[16] = *&v58[32];
  sub_479B4(&v46, v43, &qword_185E90, &qword_12B188);
  sub_488C8(&v49, &qword_185E90, &qword_12B188);
  *&v44[87] = *&v48[48];
  *&v44[103] = *&v48[64];
  *&v44[119] = *&v48[80];
  *&v44[128] = *&v48[89];
  *&v44[23] = v47;
  *&v44[39] = *v48;
  *&v44[55] = *&v48[16];
  *&v44[71] = *&v48[32];
  *&v44[7] = v46;
  LOBYTE(KeyPath) = v45;
  LOBYTE(v6) = sub_116620();
  result = sub_115FD0();
  v28 = *&v44[64];
  *(a2 + 97) = *&v44[80];
  v29 = *&v44[112];
  *(a2 + 113) = *&v44[96];
  *(a2 + 129) = v29;
  *(a2 + 145) = *&v44[128];
  v30 = *v44;
  *(a2 + 33) = *&v44[16];
  v31 = *&v44[48];
  *(a2 + 49) = *&v44[32];
  *(a2 + 65) = v31;
  *(a2 + 81) = v28;
  *a2 = v42;
  *(a2 + 8) = 0;
  *(a2 + 16) = KeyPath;
  *(a2 + 17) = v30;
  *(a2 + 168) = v6;
  *(a2 + 176) = v32;
  *(a2 + 184) = v33;
  *(a2 + 192) = v34;
  *(a2 + 200) = v35;
  *(a2 + 208) = 0;
  return result;
}

uint64_t sub_CF6E4()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_46F9C(&qword_185DA0, &qword_12AB30);
  sub_D1034();
  return sub_116E50();
}

uint64_t sub_CF760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_46F9C(&qword_185E58, &qword_12B120);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v46 - v8);
  *v9 = sub_116EB0();
  v9[1] = v10;
  v11 = v9 + *(sub_46F9C(&qword_185E60, &qword_12B128) + 44);
  v46 = v9;
  sub_CFA5C(a1, v11);
  v12 = sub_116610();
  sub_115FD0();
  v13 = v9 + *(v4 + 44);
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = a1[2];
  v19 = a1[3];
  v49 = v18;
  v50 = v19;
  sub_4869C();

  v20 = sub_116900();
  v22 = v21;
  v24 = v23;
  sub_116730();
  v25 = sub_1168C0();
  v27 = v26;
  v29 = v28;

  sub_48928(v20, v22, v24 & 1);

  sub_1166B0();
  v30 = sub_116810();
  v32 = v31;
  v34 = v33;
  sub_48928(v25, v27, v29 & 1);

  sub_116BB0();
  v35 = sub_116880();
  v37 = v36;
  LOBYTE(v27) = v38;
  v40 = v39;

  sub_48928(v30, v32, v34 & 1);

  v42 = v46;
  v41 = v47;
  sub_479B4(v46, v47, &qword_185E58, &qword_12B120);
  v43 = v48;
  sub_479B4(v41, v48, &qword_185E58, &qword_12B120);
  v44 = v43 + *(sub_46F9C(&qword_185E68, &qword_12B130) + 48);
  *v44 = v35;
  *(v44 + 8) = v37;
  *(v44 + 16) = v27 & 1;
  *(v44 + 24) = v40;
  sub_488B8(v35, v37, v27 & 1);

  sub_488C8(v42, &qword_185E58, &qword_12B120);
  sub_48928(v35, v37, v27 & 1);

  return sub_488C8(v41, &qword_185E58, &qword_12B120);
}

uint64_t sub_CFA5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v57 = a2;
  v55 = sub_116C10();
  v53 = *(v55 - 8);
  v2 = *(v53 + 64);
  __chkstk_darwin(v55);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_116180();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_46F9C(&qword_185E70, &qword_12B138);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_46F9C(&qword_185E78, &qword_12B140);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v56 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  __chkstk_darwin(v20);
  v54 = &v52 - v21;
  v22 = *(v6 + 28);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_116390();
  v25 = v9 + v22;
  v26 = v52;
  (*(*(v24 - 8) + 104))(v25, v23, v24);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  if (v26[4])
  {
    v32 = sub_116B80();
  }

  else
  {
    v32 = sub_116B30();
  }

  v33 = v32;
  sub_D1A30(v9, v13);
  *&v13[*(v10 + 52)] = v33;
  *&v13[*(v10 + 56)] = 256;
  sub_116EB0();
  sub_116070();
  sub_548D0(v13, v19, &qword_185E70, &qword_12B138);
  v34 = &v19[*(v14 + 36)];
  v35 = v70;
  *v34 = v69;
  *(v34 + 1) = v35;
  *(v34 + 2) = v71;
  v36 = v54;
  sub_548D0(v19, v54, &qword_185E78, &qword_12B140);
  v37 = *v26;
  v38 = v26[1];

  sub_116C20();
  v39 = v53;
  v40 = v55;
  (*(v53 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v55);
  v41 = sub_116C30();

  (*(v39 + 8))(v4, v40);
  sub_116EB0();
  sub_116070();
  LOBYTE(v62[0]) = 1;
  *&v58[6] = v72;
  *&v58[22] = v73;
  *&v58[38] = v74;
  v42 = sub_116B70();
  KeyPath = swift_getKeyPath();
  v44 = v56;
  sub_479B4(v36, v56, &qword_185E78, &qword_12B140);
  v45 = v57;
  sub_479B4(v44, v57, &qword_185E78, &qword_12B140);
  v46 = v45 + *(sub_46F9C(&qword_185E80, &qword_12B178) + 48);
  v59[0] = v41;
  v59[1] = 0;
  LOWORD(v60[0]) = 1;
  *(v60 + 2) = *v58;
  *(&v60[1] + 2) = *&v58[16];
  *(&v60[2] + 2) = *&v58[32];
  *&v60[3] = *&v58[46];
  *(&v60[3] + 1) = KeyPath;
  v61 = v42;
  v47 = v60[0];
  *v46 = v41;
  *(v46 + 16) = v47;
  v48 = v60[1];
  v49 = v60[2];
  v50 = v60[3];
  *(v46 + 80) = v42;
  *(v46 + 48) = v49;
  *(v46 + 64) = v50;
  *(v46 + 32) = v48;
  sub_479B4(v59, v62, &qword_185E88, &qword_12B180);
  sub_488C8(v36, &qword_185E78, &qword_12B140);
  v62[0] = v41;
  v62[1] = 0;
  v63 = 1;
  v64 = *v58;
  v65 = *&v58[16];
  *v66 = *&v58[32];
  *&v66[14] = *&v58[46];
  v67 = KeyPath;
  v68 = v42;
  sub_488C8(v62, &qword_185E88, &qword_12B180);
  return sub_488C8(v44, &qword_185E78, &qword_12B140);
}

uint64_t sub_CFF90@<X0>(uint64_t a1@<X8>)
{
  v3 = *sub_8D6D8();
  *a1 = sub_116320();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = sub_46F9C(&qword_185DC0, &qword_12AB40);
  sub_CF760(v1, a1 + *(v4 + 44));
  v5 = sub_116680();
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(sub_46F9C(&qword_185DC8, &qword_12AB78) + 36));
  *v7 = KeyPath;
  v7[1] = v5;
  LODWORD(v5) = sub_1164C0();
  result = sub_46F9C(&qword_185DD0, &qword_12AB80);
  *(a1 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_D004C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_D1CC4();
  v7 = sub_1170C0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_68FB8();
    while (1)
    {
      v15 = *(*(v5 + 48) + v9);
      if (sub_117160())
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_D0B60(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_D0184(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_D1CC4();
  v4 = sub_1170C0();
  return sub_D0A98(a1, v4);
}

uint64_t sub_D01F0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  sub_D1CC4();
  v3 = sub_1170C0();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 26;
  }

  v6 = ~v4;
  sub_68FB8();
  while (1)
  {
    v13 = *(*(v1 + 48) + v5);
    if (sub_117160())
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 26;
    }
  }

  v8 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v12 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_D0320();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v5);
  sub_D08E0(v5);
  result = v11;
  *v0 = v12;
  return result;
}

void *sub_D0320()
{
  v1 = v0;
  sub_46F9C(&qword_185F08, &qword_12B278);
  v2 = *v0;
  v3 = sub_1176D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_D0460(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_46F9C(&qword_185F08, &qword_12B278);
  result = sub_1176E0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_D1CC4();
      result = sub_1170C0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_D0688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_46F9C(&qword_185F08, &qword_12B278);
  result = sub_1176E0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_D1CC4();
      result = sub_1170C0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_D08E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_117690();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_D1CC4();
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + v6);
        v12 = sub_1170C0() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + v2);
            v17 = (v15 + v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_D0A98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_68FB8();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_117160())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_D0B60(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_D0688(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_D0320();
      goto LABEL_12;
    }

    sub_D0460(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_D1CC4();
  result = sub_1170C0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_68FB8();
    do
    {
      v16 = *(*(v8 + 48) + a2);
      result = sub_117160();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_117A30();
  __break(1u);
  return result;
}

void *sub_D0CE0(uint64_t a1, uint64_t a2)
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

  sub_46F9C(&qword_183898, &qword_12B270);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_D0D54(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_D0E50(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_D1CC4();
  result = sub_117440();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_D004C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_D0ECC()
{
  result = qword_185D88;
  if (!qword_185D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185D88);
  }

  return result;
}

id sub_D0F20()
{
  v0 = [objc_allocWithZone(HLPHelpViewController) init];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    MobileGestalt_get_deviceClassNumber();

    v3 = sub_117170();

    [v0 setSelectedHelpTopicID:v3];

    [v0 setShowTopicViewOnLoad:1];
    [v0 setDisplayHelpTopicsOnly:1];
    v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_D1028@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_CF270(*(v1 + 16), a1);
}

unint64_t sub_D1034()
{
  result = qword_185DA8;
  if (!qword_185DA8)
  {
    sub_47A1C(&qword_185DA0, &qword_12AB30);
    sub_48800(&qword_185DB0, &qword_185DB8, &qword_12AB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185DA8);
  }

  return result;
}

unint64_t sub_D1160()
{
  result = qword_185DD8;
  if (!qword_185DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185DD8);
  }

  return result;
}

__n128 sub_D1218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_D1234(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_D127C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_D1328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_D1370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_D13D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D1418(uint64_t result, int a2, int a3)
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

__n128 sub_D1468(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_D147C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_D14C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_D151C()
{
  result = qword_185DE0;
  if (!qword_185DE0)
  {
    sub_47A1C(&qword_185D50, &qword_12AAD0);
    sub_47A1C(&qword_185D30, &qword_12AAC0);
    sub_48800(&qword_185D48, &qword_185D30, &qword_12AAC0);
    sub_4869C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185DE0);
  }

  return result;
}

uint64_t sub_D16B4()
{
  sub_47A1C(&qword_185D70, &qword_12AAF0);
  sub_48800(&qword_185D80, &qword_185D70, &qword_12AAF0);
  sub_D0ECC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_D1760()
{
  sub_47A1C(&qword_185D90, &qword_12AB28);
  sub_48800(&qword_185D98, &qword_185D90, &qword_12AB28);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_D1840()
{
  result = qword_185E18;
  if (!qword_185E18)
  {
    sub_47A1C(&qword_185DD0, &qword_12AB80);
    sub_D18F8();
    sub_48800(&qword_185E38, &qword_185E40, &qword_12B110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185E18);
  }

  return result;
}

unint64_t sub_D18F8()
{
  result = qword_185E20;
  if (!qword_185E20)
  {
    sub_47A1C(&qword_185DC8, &qword_12AB78);
    sub_48800(&qword_185E28, &qword_185E30, &unk_12B100);
    sub_48800(&qword_182E40, &qword_182E48, qword_124840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185E20);
  }

  return result;
}

unint64_t sub_D19DC()
{
  result = qword_185E48;
  if (!qword_185E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185E48);
  }

  return result;
}

uint64_t sub_D1A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_116180();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1B3C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_D1B84()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_46F9C(&qword_185D68, &qword_12AAE8);
  sub_116D60();
  (*(*v2 + 360))(1);
}

double sub_D1C20(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_12AAB0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  return result;
}

double sub_D1C5C(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_D1C7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_D1CC4()
{
  result = qword_185F00;
  if (!qword_185F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F00);
  }

  return result;
}

uint64_t sub_D1D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D1D30@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v6 = v3[1];
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CC0();
  type metadata accessor for AppDetailViewModel();
  result = sub_116CB0();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

unint64_t sub_D1DA4()
{
  result = qword_185F40;
  if (!qword_185F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F40);
  }

  return result;
}

unint64_t sub_D1DF8()
{
  result = qword_185F48;
  if (!qword_185F48)
  {
    sub_47A1C(&qword_185F30, &qword_12B2B8);
    sub_D1DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F48);
  }

  return result;
}

uint64_t sub_D1E90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v10 = *v3;
  v11 = v3[1];
  sub_46F9C(&qword_185D58, &qword_12AAD8);
  sub_116CC0();
  type metadata accessor for AppDetailViewModel();
  sub_116CB0();
  v4 = sub_116620();
  result = sub_115FD0();
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  return result;
}

unint64_t sub_D1F30()
{
  result = qword_185F60;
  if (!qword_185F60)
  {
    sub_47A1C(&qword_185F58, &qword_12B2D0);
    sub_D1FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F60);
  }

  return result;
}

unint64_t sub_D1FBC()
{
  result = qword_185F68;
  if (!qword_185F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F68);
  }

  return result;
}

uint64_t sub_D2010()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_6ACB4(v0 + 4);

  return swift_deallocObject();
}

unint64_t sub_D2060()
{
  result = qword_185F88;
  if (!qword_185F88)
  {
    sub_47A1C(&qword_185F78, &qword_12B310);
    sub_D2110(&qword_185F90, &qword_185F98, qword_12B318, sub_D2198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185F88);
  }

  return result;
}

uint64_t sub_D2110(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_D2198()
{
  result = qword_185FA0;
  if (!qword_185FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FA0);
  }

  return result;
}

uint64_t sub_D21EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void *sub_D2208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v23 = a1;
  v18 = a2;
  v19 = a3;
  sub_1173A0();
  swift_getWitnessTable();
  result = sub_117100();
  if (BYTE8(v26))
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = v26;
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = a1;
    *&v26 = 0;
    *(&v26 + 1) = v7;
    sub_46F9C(&qword_184178, &qword_1285D0);
    swift_getWitnessTable();
    sub_D2520();
    sub_117140();
    v21 = v23;
    v22 = v24;
    sub_117670();
    swift_getWitnessTable();
    sub_1172B0();
    v8 = swift_unknownObjectRelease();
    v17 = v26;
    v23 = v26;
    v24 = v27;
    __chkstk_darwin(v8);
    v16[8] = a2;
    v16[9] = a3;
    v16[10] = a1;
    __chkstk_darwin(v9);
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = sub_D2774;
    v16[5] = v10;
    v11 = sub_117830();
    v12 = sub_46F9C(&qword_185178, &unk_129BA0);
    WitnessTable = swift_getWitnessTable();
    v13 = swift_getWitnessTable();
    v15 = sub_D2854(sub_D2830, v16, v11, v12, &type metadata for Never, v13, &protocol witness table for Never, v14);
    swift_unknownObjectRelease();
    return v15;
  }

  return result;
}

unint64_t sub_D2520()
{
  result = qword_185FA8;
  if (!qword_185FA8)
  {
    sub_47A1C(&qword_184178, &qword_1285D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FA8);
  }

  return result;
}

uint64_t sub_D2584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v15 + 8))(v16, v15, v12);
  v17 = *(a7 + 16);
  v17(a6, a7);
  result = sub_117370();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (result - 1 <= a3)
    {
      v21 = sub_115760();
      (*(*(v21 - 8) + 56))(v23, 1, 1, v21);
    }

    else
    {
      sub_1173C0();
      v19 = v23;
      v17(a6, a7);
      (*(v10 + 8))(v14, a6);
      v20 = sub_115760();
      (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    }

    return v22;
  }

  return result;
}

uint64_t sub_D2780@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, char *, uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  v8 = sub_46F9C(&qword_185178, &unk_129BA0);
  result = a2(a3 + *(v8 + 48), a3 + *(v8 + 64), v6, &a1[v7]);
  *a3 = result;
  return result;
}

uint64_t sub_D2830@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_D2780(a1, *(v2 + 32), a2);
}

uint64_t sub_D2854(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_117470();
  if (!v26)
  {
    return sub_117340();
  }

  v48 = v26;
  v52 = sub_1177C0();
  v39 = sub_1177D0();
  sub_117770(v48);
  result = sub_117460();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1174A0();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1177B0();
      result = sub_117480();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_D2C74()
{
  v0 = sub_5822C();
  result = sub_F59F0(&type metadata for PerfPowerServices, v0);
  byte_191EC8 = result & 1;
  return result;
}

char *sub_D2CC4()
{
  if (qword_18F790 != -1)
  {
    swift_once();
  }

  return &byte_191EC8;
}

uint64_t sub_D2DD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x664F6E6565726373;
  }

  else
  {
    v4 = 0x6E4F6E6565726373;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000066;
  }

  if (*a2)
  {
    v6 = 0x664F6E6565726373;
  }

  else
  {
    v6 = 0x6E4F6E6565726373;
  }

  if (*a2)
  {
    v7 = 0xE900000000000066;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1179E0();
  }

  return v9 & 1;
}

Swift::Int sub_D2E7C()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D2F04()
{
  *v0;
  sub_117200();
}

Swift::Int sub_D2F78()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D2FFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_169298;
  v8._object = v3;
  v5 = sub_117890(v4, v8);

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

void sub_D305C(uint64_t *a1@<X8>)
{
  v2 = 0x6E4F6E6565726373;
  if (*v1)
  {
    v2 = 0x664F6E6565726373;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000066;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_D30B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6843646573756170;
  v4 = 0xEE00676E69677261;
  if (v2 != 1)
  {
    v3 = 0x43646570706F7473;
    v4 = 0xEF676E6967726168;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E696772616863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6843646573756170;
  v8 = 0xEE00676E69677261;
  if (*a2 != 1)
  {
    v7 = 0x43646570706F7473;
    v8 = 0xEF676E6967726168;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E696772616863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1179E0();
  }

  return v11 & 1;
}

Swift::Int sub_D31E4()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D32A0()
{
  *v0;
  *v0;
  sub_117200();
}

Swift::Int sub_D3348()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_D3400@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D66F0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_D3430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE00676E69677261;
  v5 = 0x6843646573756170;
  if (v2 != 1)
  {
    v5 = 0x43646570706F7473;
    v4 = 0xEF676E6967726168;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696772616863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_D34A8(char a1)
{
  v2 = sub_5A754();
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingColor;
    }

    else
    {
      v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_notChargingBarColor;
    }
  }

  else
  {
    v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelHighColor;
  }

  swift_beginAccess();
  v4 = *(*v2 + *v3);
}

uint64_t sub_D3534(char a1)
{
  v2 = sub_5A754();
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingIntervalBackgroundColor;
    }

    else
    {
      v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeColor;
    }
  }

  else
  {
    v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeColor;
  }

  swift_beginAccess();
  v4 = *(*v2 + *v3);
}

uint64_t sub_D35C0()
{
  sub_115710();
  v1 = v0 + *(type metadata accessor for BUIChartViewData.ChargingIntervalElement(0) + 20);
  sub_115710();

  return sub_115700();
}

double sub_D3624()
{
  v1 = v0 + *(type metadata accessor for BUIChartViewData.ChargingIntervalElement(0) + 20);
  sub_115710();
  v3 = v2;
  sub_115710();
  return v3 - v4;
}

uint64_t sub_D3670()
{
  sub_117710(22);

  v1 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if (*(v0 + *(v1 + 24)))
  {
    *(v0 + *(v1 + 24));
  }

  v2 = sub_1171D0();
  v4 = v3;

  v6._countAndFlagsBits = v2;
  v6._object = v4;
  sub_117220(v6);

  v7._countAndFlagsBits = 0x41565245544E495FLL;
  v7._object = 0xEE004E4F43495F4CLL;
  sub_117220(v7);
  return 0x5F5452414843;
}

uint64_t sub_D37A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_115760();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_D3810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_115760();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

int *sub_D3894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v63 = a3;
  v5 = sub_115760();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v72 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  v10 = __chkstk_darwin(v8);
  v71 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v56 - v12);
  v70 = a2;
  v58 = sub_D6CD4(a1, a2);
  v59 = v14;
  v60 = v15;
  v61 = v16;
  *&v74 = 0xD00000000000001ALL;
  *(&v74 + 1) = 0x80000000001363B0;
  v17 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  if (*(&v75 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v18 = v73;
      goto LABEL_9;
    }
  }

  else
  {
    sub_D7D00(&v76);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v18 = sub_1174C0();
LABEL_9:
  *&v74 = 0xD000000000000016;
  *(&v74 + 1) = 0x80000000001363D0;
  v19 = sub_117A10();
  v57 = v18;
  v20 = [v18 __swift_objectForKeyedSubscript:v19];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  if (*(&v75 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v21 = v73;
      goto LABEL_17;
    }
  }

  else
  {
    sub_D7D00(&v76);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v21 = sub_117590();
LABEL_17:
  *&v74 = 0xD00000000000001BLL;
  *(&v74 + 1) = 0x80000000001363F0;
  v22 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  if (*(&v75 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v23 = v73;
      goto LABEL_25;
    }
  }

  else
  {
    sub_D7D00(&v76);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v23 = sub_1174C0();
LABEL_25:
  *&v74 = 0xD000000000000016;
  *(&v74 + 1) = 0x80000000001363D0;
  v24 = sub_117A10();
  v56 = v23;
  v25 = [v23 __swift_objectForKeyedSubscript:v24];
  swift_unknownObjectRelease();
  if (v25)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76 = v74;
  v77 = v75;
  v62 = a1;
  if (!*(&v75 + 1))
  {
    sub_D7D00(&v76);
    goto LABEL_32;
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    v26 = sub_117590();
    goto LABEL_33;
  }

  v26 = v73;
LABEL_33:
  sub_54960(0, &qword_1831C0, NSNumber_ptr);
  v27 = 0;
  v68 += 32;
  v28 = &_swiftEmptyArrayStorage;
  v65 = v21;
  v64 = v26;
  do
  {
    v29.super.super.isa = sub_1175C0(-1).super.super.isa;
    if (v27 < [v21 count])
    {
      v30 = [v21 objectAtIndexedSubscript:v27];
      sub_117660();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v31 = v74;

        v29.super.super.isa = v31;
      }
    }

    v32.super.super.isa = sub_1175C0(-1).super.super.isa;
    if (v27 < [v26 count])
    {
      v33 = [v26 objectAtIndexedSubscript:v27];
      sub_117660();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v34 = v74;

        v32.super.super.isa = v34;
      }
    }

    [(objc_class *)v29.super.super.isa doubleValue];
    v35 = 0.0;
    v36 = 0.0;
    if (v37 >= 0.0)
    {
      [(objc_class *)v29.super.super.isa doubleValue];
      v36 = v38;
    }

    [(objc_class *)v32.super.super.isa doubleValue];
    if (v39 >= 0.0)
    {
      [(objc_class *)v32.super.super.isa doubleValue];
      v35 = v40;
    }

    v41 = sub_A79F0();
    v42 = *v41;
    if (*v41 >= v36)
    {
      v43 = v36;
    }

    else
    {
      v43 = *v41;
    }

    if (v43 < 0.0)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v43;
    }

    v45 = v42 - v44;
    if (v42 - v44 >= v35)
    {
      v45 = v35;
    }

    if (v45 < 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v45;
    }

    sub_115740();
    [(objc_class *)v29.super.super.isa doubleValue];
    if (v47 >= 0.0)
    {
      v49 = 1;
    }

    else
    {
      [(objc_class *)v32.super.super.isa doubleValue];
      v49 = v48 >= 0.0;
    }

    *v13 = v27;
    v50 = v67;
    v51 = *v68;
    (*v68)(v13 + v67[5], v72, v69);
    *(v13 + v50[6]) = v44;
    *(v13 + v50[7]) = v46;
    *(v13 + v50[8]) = v49;
    sub_D7DF0(v13, v71, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_D5CD0(0, v28[2] + 1, 1, v28, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    v53 = v28[2];
    v52 = v28[3];
    if (v53 >= v52 >> 1)
    {
      v28 = sub_D5CD0(v52 > 1, v53 + 1, 1, v28, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    ++v27;

    sub_D8FEC(v13, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    v28[2] = v53 + 1;
    sub_D7D68(v71, v28 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v53, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    v21 = v65;
    v26 = v64;
  }

  while (v27 != 24);

  v54 = v63;
  v51(v63, v70, v69);
  result = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  *&v54[result[5]] = v58;
  *&v54[result[6]] = v59;
  *&v54[result[7]] = v60;
  *&v54[result[8]] = v61;
  *&v54[result[9]] = v28;
  return result;
}

id sub_D4258(void *a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  if ([a1 count] > a2)
  {
    v9 = [a1 objectAtIndexedSubscript:a2];
    sub_117660();
    swift_unknownObjectRelease();
    sub_54960(0, a4, a5);
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  return a3;
}

BOOL sub_D433C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_D7DF0(v14, v11, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      sub_D7DF0(v15, v7, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if (*v11 != *v7)
      {
        break;
      }

      v17 = v4[5];
      if ((sub_115720() & 1) == 0 || *(v11 + v4[6]) != *(v7 + v4[6]) || *(v11 + v4[7]) != *(v7 + v4[7]) || *(v11 + v4[8]) != *(v7 + v4[8]))
      {
        break;
      }

      v18 = *(v11 + v4[9]);
      sub_D8FEC(v11, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v19 = *(v7 + v4[9]);
      sub_D8FEC(v7, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      result = v18 == v19;
      if (v18 == v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return result;
    }

    sub_D8FEC(v7, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    sub_D8FEC(v11, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  }

  return 0;
}

BOOL sub_D4594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_D7DF0(v14, v11, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_D7DF0(v15, v7, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      if ((sub_115720() & 1) == 0 || (v17 = v4[5], (sub_115720() & 1) == 0))
      {
LABEL_29:
        sub_D8FEC(v7, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
        sub_D8FEC(v11, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
        return 0;
      }

      v18 = v4[6];
      if (v11[v18])
      {
        if (v11[v18] == 1)
        {
          v19 = 0x6843646573756170;
          v20 = 0xEE00676E69677261;
          v21 = v7[v18];
          if (v21)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v19 = 0x43646570706F7473;
          v20 = 0xEF676E6967726168;
          v21 = v7[v18];
          if (v21)
          {
LABEL_10:
            if (v21 == 1)
            {
              v22 = 0x6843646573756170;
            }

            else
            {
              v22 = 0x43646570706F7473;
            }

            if (v21 == 1)
            {
              v23 = 0xEE00676E69677261;
            }

            else
            {
              v23 = 0xEF676E6967726168;
            }

            if (v19 != v22)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
        v20 = 0xE800000000000000;
        v19 = 0x676E696772616863;
        v21 = v7[v18];
        if (v21)
        {
          goto LABEL_10;
        }
      }

      v23 = 0xE800000000000000;
      if (v19 != 0x676E696772616863)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (v20 == v23)
      {

        goto LABEL_23;
      }

LABEL_22:
      v24 = sub_1179E0();

      if ((v24 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_23:
      v25 = v11[v4[7]];
      sub_D8FEC(v11, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      v26 = v7[v4[7]];
      sub_D8FEC(v7, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      result = v25 == v26;
      if (v25 == v26)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_D48EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_D7DF0(v14, v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        sub_D7DF0(v15, v7, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        if (*v11 != *v7)
        {
          break;
        }

        v17 = v4[5];
        if ((sub_115720() & 1) == 0 || *(v11 + v4[6]) != *(v7 + v4[6]) || *(v11 + v4[7]) != *(v7 + v4[7]))
        {
          break;
        }

        v18 = *(v11 + v4[8]);
        sub_D8FEC(v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        v19 = *(v7 + v4[8]);
        sub_D8FEC(v7, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        if (((v18 ^ v19) & 1) == 0)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        v20 = v18 ^ v19 ^ 1;
        return v20 & 1;
      }

      sub_D8FEC(v7, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      sub_D8FEC(v11, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_D4B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_D7DF0(v14, v11, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        sub_D7DF0(v15, v7, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        if (*v11 != *v7)
        {
          break;
        }

        v17 = v4[5];
        if ((sub_115720() & 1) == 0 || *(v11 + v4[6]) != *(v7 + v4[6]))
        {
          break;
        }

        v18 = *(v11 + v4[7]);
        sub_D8FEC(v11, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        v19 = *(v7 + v4[7]);
        sub_D8FEC(v7, type metadata accessor for BUIChartViewData.BatteryUsageElement);
        if (((v18 ^ v19) & 1) == 0)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        v20 = v18 ^ v19 ^ 1;
        return v20 & 1;
      }

      sub_D8FEC(v7, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      sub_D8FEC(v11, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_D4D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_115720() & 1) == 0 || (sub_D4B3C(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_D48EC(v7, v8);
}

id sub_D4DF8(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;

  v9 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_117660();
    swift_unknownObjectRelease();
    sub_543D8(&v14, &v13);
    sub_54960(0, a5, a6);
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  return a4;
}

uint64_t sub_D4F00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v83 = a2;
  v67 = a3;
  v81 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  __chkstk_darwin(v81);
  v95 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v78 = *(v79 - 8);
  v5 = *(v78 + 64);
  __chkstk_darwin(v79);
  v94 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_115760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v93 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v92 = &v67 - v13;
  __chkstk_darwin(v12);
  v15 = &v67 - v14;
  v91 = sub_A79FC();
  v77 = sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v76 = sub_54960(0, &qword_1831C0, NSNumber_ptr);
  v16 = 0;
  v75 = "PLBatteryUIScreenOffTimeKey";
  v74 = "edCharging";
  v73 = "PLBatteryUIGraphHourly";
  v72 = "PLBatteryUIEnergyKey";
  v70 = (v8 + 8);
  v17 = &_swiftEmptyArrayStorage;
  v96 = v15;
  v97 = &_swiftEmptyArrayStorage;
  v71 = (v8 + 32);
  v69 = (v8 + 16);
  v68 = v7;
  do
  {
    v89 = v17;
    v18 = *v91 * v16;
    sub_115740();
    v19 = sub_1174C0();
    v87 = v16;
    v20 = sub_D4258(v82, v16, v19, &qword_185FB0, NSDictionary_ptr);

    isa = sub_1175C0(0).super.super.isa;
    v22 = sub_D4DF8(v20, 0xD000000000000014, v75 | 0x8000000000000000, isa, &qword_1831C0, NSNumber_ptr);

    v23 = sub_1174C0();
    v24 = sub_D4DF8(v20, 0xD00000000000001ALL, v74 | 0x8000000000000000, v23, &qword_185FB0, NSDictionary_ptr);

    v25 = sub_1174C0();
    v88 = v20;
    v26 = sub_D4DF8(v20, 0xD00000000000001BLL, v73 | 0x8000000000000000, v25, &qword_185FB0, NSDictionary_ptr);

    v27 = sub_1175C0(0).super.super.isa;
    v28 = v72;
    v85 = v24;
    v29 = sub_D4DF8(v24, 0xD000000000000015, v72 | 0x8000000000000000, v27, &qword_1831C0, NSNumber_ptr);

    v30 = sub_1175C0(0).super.super.isa;
    v84 = v26;
    v31 = v22;
    v32 = v69;
    v33 = sub_D4DF8(v26, 0xD000000000000015, v28 | 0x8000000000000000, v30, &qword_1831C0, NSNumber_ptr);

    v34 = v68;
    v90 = *v32;
    v90(v92, v96);
    [v31 doubleValue];
    v35 = 0;
    if (v36 >= 0.0)
    {
      [v31 doubleValue];
      v35 = v37;
    }

    v86 = v31;
    [v31 doubleValue];
    v39 = v38 >= 0.0;
    v40 = v94;
    v41 = v87;
    *v94 = v87;
    v42 = v79;
    v43 = *v71;
    (*v71)(&v40[*(v79 + 20)], v92, v34);
    *&v40[*(v42 + 24)] = v35;
    v40[*(v42 + 28)] = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v97 = sub_D5CD0(0, v97[2] + 1, 1, v97, &qword_185628, &unk_12B850, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    }

    v45 = v97[2];
    v44 = v97[3];
    if (v45 >= v44 >> 1)
    {
      v97 = sub_D5CD0(v44 > 1, v45 + 1, 1, v97, &qword_185628, &unk_12B850, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    }

    v46 = v97;
    v97[2] = v45 + 1;
    sub_D7D68(v94, v46 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v45, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    [v29 doubleValue];
    v47 = 0.0;
    v48 = 0.0;
    if (v49 >= 0.0)
    {
      [v29 doubleValue];
      v48 = v50;
    }

    [v33 doubleValue];
    if (v51 >= 0.0)
    {
      [v33 doubleValue];
      v47 = v52;
    }

    if (*v91 >= v48)
    {
      v53 = v48;
    }

    else
    {
      v53 = *v91;
    }

    if (v53 < 0.0)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = v53;
    }

    v55 = *v91 - v54;
    if (v55 >= v47)
    {
      v55 = v47;
    }

    if (v55 < 0.0)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = v55;
    }

    (v90)(v93, v96, v34);
    [v29 doubleValue];
    if (v57 >= 0.0)
    {
      v59 = 1;
    }

    else
    {
      [v33 doubleValue];
      v59 = v58 >= 0.0;
    }

    v60 = v95;
    *v95 = v41;
    v61 = v81;
    v43(v60 + *(v81 + 20), v93, v34);
    *(v60 + v61[6]) = v54;
    *(v60 + v61[7]) = v56;
    *(v60 + v61[8]) = v59;
    v17 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_D5CD0(0, v17[2] + 1, 1, v17, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    v63 = v17[2];
    v62 = v17[3];
    if (v63 >= v62 >> 1)
    {
      v17 = sub_D5CD0(v62 > 1, v63 + 1, 1, v17, &qword_185630, &qword_12A290, type metadata accessor for BUIChartViewData.ScreenUsageElement);
    }

    v64 = v96;
    v16 = v41 + 1;

    (*v70)(v64, v34);
    v17[2] = v63 + 1;
    sub_D7D68(v95, v17 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v63, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  }

  while (v16 != 10);
  v65 = v67;
  (v90)(v67, v83, v34);
  result = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  *(v65 + *(result + 20)) = v97;
  *(v65 + *(result + 24)) = v17;
  return result;
}

uint64_t sub_D5810@<X0>(void *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v40 = a2;
  v5 = sub_1158D0();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_115760();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v37 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - v19;
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  *&v43 = 0xD000000000000015;
  *(&v43 + 1) = 0x8000000000136450;
  v23 = sub_117A10();
  v41 = a1;
  v24 = [a1 __swift_objectForKeyedSubscript:v23];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v25 = v42;
      goto LABEL_9;
    }
  }

  else
  {
    sub_D7D00(&v45);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v25 = sub_1174C0();
LABEL_9:
  v26 = v25;
  v27 = sub_A79FC();
  v28 = a3 - *v27;
  sub_115700();
  sub_D3894(v26, v22, v40);
  *&v43 = 0xD000000000000014;
  *(&v43 + 1) = 0x8000000000136470;
  v29 = [v41 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v30 = v42;
      goto LABEL_17;
    }
  }

  else
  {
    sub_D7D00(&v45);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v30 = sub_117590();
LABEL_17:
  sub_115700();
  sub_1158A0();
  sub_115830();
  (*(v38 + 8))(v8, v39);
  v31 = sub_115720();
  v32 = -9.0;
  if (v31)
  {
    v32 = -10.0;
  }

  v33 = *v27 * v32;
  sub_115740();
  v34 = type metadata accessor for BUIChartViewData(0);
  sub_D4F00(v30, v20, &v40[*(v34 + 20)]);

  v35 = *(v10 + 8);
  v35(v14, v9);
  v35(v17, v9);
  return (v35)(v20, v9);
}

size_t sub_D5CD0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_46F9C(a5, a6);
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

uint64_t sub_D5EAC(uint64_t result)
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_D5CD0(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_186450, &qword_12BE20, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_D5FFC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.ScreenUsageLongFormElement(0);
  v5 = v4[5];
  if ((sub_115720() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_21;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    v9 = 0x664F6E6565726373;
  }

  else
  {
    v9 = 0x6E4F6E6565726373;
  }

  if (v7)
  {
    v10 = 0xE900000000000066;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v8)
  {
    v11 = 0x664F6E6565726373;
  }

  else
  {
    v11 = 0x6E4F6E6565726373;
  }

  if (v8)
  {
    v12 = 0xE900000000000066;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {

    goto LABEL_24;
  }

  v14 = sub_1179E0();

  if (v14)
  {
LABEL_24:
    v15 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
    return v15 & 1;
  }

LABEL_21:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_D6134(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v5 = v4[5];
  if ((sub_115720() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v6 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL sub_D61E4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v5 = v4[5];
  return (sub_115720() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]);
}

uint64_t sub_D62E4(uint64_t a1, uint64_t a2)
{
  if ((sub_115720() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  if (!sub_D433C(*(a1 + v4[5]), *(a2 + v4[5])) || !sub_D4594(*(a1 + v4[6]), *(a2 + v4[6])) || !sub_D4594(*(a1 + v4[7]), *(a2 + v4[7])) || !sub_D4594(*(a1 + v4[8]), *(a2 + v4[8])))
  {
    return 0;
  }

  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_D48EC(v6, v7);
}

uint64_t sub_D63A4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v5 = v4[5];
  if ((sub_115720() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v6 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL sub_D6440(uint64_t a1, uint64_t a2)
{
  if ((sub_115720() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v5 = v4[5];
  if ((sub_115720() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (!v7)
  {
    v10 = 0xE800000000000000;
    v9 = 0x676E696772616863;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v7 != 1)
  {
    v9 = 0x43646570706F7473;
    v10 = 0xEF676E6967726168;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v8 == 1)
    {
      v11 = 0xEE00676E69677261;
      if (v9 != 0x6843646573756170)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0xEF676E6967726168;
      if (v9 != 0x43646570706F7473)
      {
        goto LABEL_17;
      }
    }

LABEL_15:
    if (v10 == v11)
    {

      return *(a1 + v4[7]) == *(a2 + v4[7]);
    }

    goto LABEL_17;
  }

  v9 = 0x6843646573756170;
  v10 = 0xEE00676E69677261;
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_12:
  v11 = 0xE800000000000000;
  if (v9 == 0x676E696772616863)
  {
    goto LABEL_15;
  }

LABEL_17:
  v12 = sub_1179E0();

  if (v12)
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  return 0;
}

BOOL sub_D65E8(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_115720())
  {
    v4 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
    if (sub_D433C(*(a1 + v4[5]), *(a2 + v4[5])) && sub_D4594(*(a1 + v4[6]), *(a2 + v4[6])) && sub_D4594(*(a1 + v4[7]), *(a2 + v4[7])) && sub_D4594(*(a1 + v4[8]), *(a2 + v4[8])) && (sub_D48EC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0)
    {
      v5 = *(type metadata accessor for BUIChartViewData(0) + 20);
      v6 = a1 + v5;
      v7 = a2 + v5;
      if (sub_115720())
      {
        v8 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
        if (sub_D4B3C(*(v6 + *(v8 + 20)), *(v7 + *(v8 + 20))) & 1) != 0 && (sub_D48EC(*(v6 + *(v8 + 24)), *(v7 + *(v8 + 24))))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_D66F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1692E8;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void *sub_D679C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v45 = a4;
  v43 = a2;
  v44 = a3;
  v42 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v42);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_115600();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1175A0();
  sub_1155F0();
  if (v51)
  {
    v15 = &_swiftEmptyArrayStorage;
    do
    {
      sub_543D8(&v50, &v49);
      sub_54960(0, &qword_185FB8, NSArray_ptr);
      if (swift_dynamicCast())
      {
        v40 = v4;
        v16 = v48;
        sub_54960(0, &qword_1831C0, NSNumber_ptr);
        isa = sub_1175C0(0).super.super.isa;
        v17 = [v16 count];
        v38 = v15;
        if (v17 >= 1)
        {
          v18 = [v16 objectAtIndexedSubscript:0];
          sub_117660();
          swift_unknownObjectRelease();
          if (swift_dynamicCast())
          {
            v19 = v11;
            v20 = v48;

            isa = v20;
            v11 = v19;
          }
        }

        v39 = v11;
        v21.super.super.isa = sub_1175C0(0).super.super.isa;
        v22 = [v16 count];
        v36 = v8;
        v37 = v16;
        if (v22 > 1 && (v23 = [v16 objectAtIndexedSubscript:1], sub_117660(), swift_unknownObjectRelease(), swift_dynamicCast()))
        {
          v24 = v48;

          v41 = v24;
        }

        else
        {
          v41 = v21.super.super.isa;
        }

        v25 = isa;
        [(objc_class *)isa doubleValue];
        sub_115740();
        v26 = v41;
        [(objc_class *)v41 doubleValue];
        v27 = v42;
        v28 = v25;
        v29 = *(v42 + 20);
        sub_115740();
        v30 = v44;
        v10[*(v27 + 24)] = v43;
        v10[*(v27 + 28)] = v30;
        if (sub_1156C0())
        {
          v8 = v36;
          sub_D7DF0(v10, v36, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          v15 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_D5CD0(0, v15[2] + 1, 1, v15, &qword_186450, &qword_12BE20, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          }

          v31 = v37;
          v33 = v15[2];
          v32 = v15[3];
          if (v33 >= v32 >> 1)
          {
            v15 = sub_D5CD0(v32 > 1, v33 + 1, 1, v15, &qword_186450, &qword_12BE20, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          }

          sub_D8FEC(v10, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          v15[2] = v33 + 1;
          v4 = v40;
          sub_D7D68(v8, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v40 + 72) * v33, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
          v11 = v39;
        }

        else
        {
          sub_D8FEC(v10, type metadata accessor for BUIChartViewData.ChargingIntervalElement);

          v11 = v39;
          v4 = v40;
          v8 = v36;
          v15 = v38;
        }
      }

      sub_1155F0();
    }

    while (v51);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  (*(v47 + 8))(v14, v11);
  return v15;
}

double *sub_D6CD4(void *a1, uint64_t a2)
{
  v95 = a2;
  v91 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v90 = *(v91 - 8);
  v3 = *(v90 + 64);
  v4 = __chkstk_darwin(v91);
  v89 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v73 - v6);
  v97 = sub_115760();
  v87 = *(v97 - 8);
  v8 = *(v87 + 64);
  v9 = __chkstk_darwin(v97);
  v96 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v98 = &v73 - v11;
  *&v101 = 0xD000000000000028;
  *(&v101 + 1) = 0x8000000000136490;
  v12 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  if (*(&v102 + 1))
  {
    sub_54960(0, &qword_185FB0, NSDictionary_ptr);
    if (swift_dynamicCast())
    {
      v13 = v106;
      goto LABEL_9;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  sub_54960(0, &qword_185FB0, NSDictionary_ptr);
  v13 = sub_1174C0();
LABEL_9:
  *&v101 = 0xD000000000000024;
  *(&v101 + 1) = 0x80000000001364C0;
  v14 = [v13 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  if (*(&v102 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v15 = v106;
      goto LABEL_17;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v15 = sub_117590();
LABEL_17:
  v81 = v15;
  v16 = sub_D679C(v15, 0, 1, v95);
  *&v101 = 0xD000000000000029;
  *(&v101 + 1) = 0x80000000001364F0;
  v17 = [v13 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  if (*(&v102 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v18 = v106;
      goto LABEL_25;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v18 = sub_117590();
LABEL_25:
  v80 = v18;
  v19 = sub_D679C(v18, 1, 1, v95);
  *&v101 = 0xD00000000000002ALL;
  *(&v101 + 1) = 0x8000000000136520;
  v20 = [v13 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  if (*(&v102 + 1))
  {
    sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v21 = v106;
      goto LABEL_33;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v21 = sub_117590();
LABEL_33:
  v79 = v21;
  v22 = sub_D679C(v21, 2, 1, v95);
  *&v103 = v16;

  sub_D5EAC(v23);

  sub_D5EAC(v24);
  v93 = v103;
  *&v101 = 0xD00000000000001BLL;
  *(&v101 + 1) = 0x8000000000136550;
  v25 = [a1 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v25)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  v82 = v13;
  if (*(&v102 + 1))
  {
    v26 = sub_54960(0, &qword_185FB8, NSArray_ptr);
    if (swift_dynamicCast())
    {
      v92 = v106;
      goto LABEL_41;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  v26 = sub_54960(0, &qword_185FB8, NSArray_ptr);
  v92 = sub_117590();
LABEL_41:
  sub_54960(0, &qword_185FB8, NSArray_ptr);
  v94 = v26;
  v27 = sub_117590();
  *&v101 = 0xD00000000000001FLL;
  *(&v101 + 1) = 0x8000000000136570;
  v28 = [v82 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  v29 = v82;
  if (*(&v102 + 1))
  {
    if (swift_dynamicCast())
    {
      v30 = v106;
      goto LABEL_49;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  v30 = sub_117590();
LABEL_49:

  v31 = v30;
  v32 = sub_D679C(v31, 0, 0, v95);
  v78 = v31;

  v106 = v32;
  sub_D5EAC(v16);
  *&v101 = 0xD000000000000025;
  *(&v101 + 1) = 0x8000000000136590;
  v33 = [v29 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  if (*(&v102 + 1))
  {
    if (swift_dynamicCast())
    {
      v34 = v105;
      goto LABEL_57;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  v34 = sub_117590();
LABEL_57:
  v77 = v34;
  v105 = sub_D679C(v34, 1, 0, v95);
  sub_D5EAC(v19);
  *&v101 = 0xD000000000000026;
  *(&v101 + 1) = 0x80000000001365C0;
  v35 = [v29 __swift_objectForKeyedSubscript:sub_117A10()];
  swift_unknownObjectRelease();
  if (v35)
  {
    sub_117660();
    swift_unknownObjectRelease();
  }

  else
  {
    v101 = 0u;
    v102 = 0u;
  }

  v103 = v101;
  v104 = v102;
  if (*(&v102 + 1))
  {
    if (swift_dynamicCast())
    {
      v36 = v99;
      goto LABEL_65;
    }
  }

  else
  {
    sub_D7D00(&v103);
  }

  v36 = sub_117590();
LABEL_65:
  *&v101 = sub_D679C(v36, 2, 0, v95);
  sub_D5EAC(v22);
  v37 = *sub_A79FC();
  result = sub_A7A80();
  v88 = result;
  v39 = v37 / *result;
  if (COERCE__INT64(fabs(v39)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_102;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v40 = v39;
  v42 = v105;
  v41 = v106;
  v100 = v106;

  sub_D5EAC(v43);
  v44 = v101;

  result = sub_D5EAC(v45);
  if (v40 < 0)
  {
LABEL_104:
    __break(1u);
    return result;
  }

  v73 = v44;
  v74 = v42;
  v75 = v41;
  v76 = v36;
  v83 = v100;
  if (v40)
  {
    sub_54960(0, &qword_1831C0, NSNumber_ptr);
    v46 = 0;
    v86 = (v87 + 16);
    v85 = (v87 + 32);
    v84 = (v87 + 8);
    v47 = &_swiftEmptyArrayStorage;
    v87 = v40;
    do
    {
      v48 = sub_117590();
      v49 = v92;
      if (v46 < [v92 count])
      {
        v50 = [v49 objectAtIndexedSubscript:v46];
        sub_117660();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v51 = v99;

          v48 = v51;
        }
      }

      v52.super.super.isa = sub_1175C0(0).super.super.isa;
      if ([v48 count] >= 1)
      {
        v53 = [v48 objectAtIndexedSubscript:0];
        sub_117660();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v54 = v99;

          v52.super.super.isa = v54;
        }
      }

      v55.super.super.isa = sub_1175C0(0).super.super.isa;
      if ([v48 count] <= 1)
      {
      }

      else
      {
        v56 = [v48 objectAtIndexedSubscript:1];
        sub_117660();
        swift_unknownObjectRelease();

        if (swift_dynamicCast())
        {
          v57 = v99;

          v55.super.super.isa = v57;
        }
      }

      v58 = *v88 * v46;
      sub_115740();
      v59 = sub_E5F34(v93);
      LOBYTE(v103) = 1;
      v60 = sub_5822C();
      v61 = sub_F59F0(&type metadata for PerfPowerServices, v60);
      if (v61)
      {
        v62 = 1;
      }

      else
      {
        v62 = v59 & 1;
      }

      if ((v61 & 1) != 0 && (v59 & 1) == 0)
      {
        if (sub_E5F34(v83))
        {
          v62 = v59 & 1;
        }

        else
        {
          v62 = 2;
        }
      }

      (*v86)(v96, v98, v97);
      [(objc_class *)v52.super.super.isa doubleValue];
      v63 = 0.0;
      if (v64 >= 0.0)
      {
        [(objc_class *)v52.super.super.isa doubleValue];
        if (v65 <= 100.0)
        {
          v63 = v65;
        }

        else
        {
          v63 = 100.0;
        }
      }

      v66 = [(objc_class *)v55.super.super.isa integerValue];
      [(objc_class *)v52.super.super.isa doubleValue];
      v68 = v67 >= 0.0;
      *v7 = v46;
      v69 = v91;
      (*v85)(v7 + *(v91 + 20), v96, v97);
      *(v7 + v69[6]) = v63;
      *(v7 + v69[7]) = v66;
      *(v7 + v69[8]) = v68;
      *(v7 + v69[9]) = v62;
      v70 = v89;
      sub_D7DF0(v7, v89, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_D5CD0(0, v47[2] + 1, 1, v47, &qword_185638, &qword_12A298, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      v72 = v47[2];
      v71 = v47[3];
      if (v72 >= v71 >> 1)
      {
        v47 = sub_D5CD0(v71 > 1, v72 + 1, 1, v47, &qword_185638, &qword_12A298, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      ++v46;

      sub_D8FEC(v7, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      (*v84)(v98, v97);
      v47[2] = v72 + 1;
      sub_D7D68(v70, v47 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v72, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    }

    while (v87 != v46);
  }

  else
  {
    v47 = &_swiftEmptyArrayStorage;
  }

  return v47;
}

uint64_t sub_D7D00(uint64_t a1)
{
  v2 = sub_46F9C(&qword_182FC8, &qword_124DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D7D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_D7DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_D7E88()
{
  result = qword_185FC0;
  if (!qword_185FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FC0);
  }

  return result;
}

unint64_t sub_D7EE0()
{
  result = qword_185FC8;
  if (!qword_185FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FC8);
  }

  return result;
}

unint64_t sub_D7F38()
{
  result = qword_185FD0;
  if (!qword_185FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185FD0);
  }

  return result;
}

unint64_t sub_D7F90()
{
  result = qword_183548;
  if (!qword_183548)
  {
    sub_115760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183548);
  }

  return result;
}

uint64_t sub_D7FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_D8100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_D81FC()
{
  result = type metadata accessor for BUIChartViewData.DataFor24Hrs(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BUIChartViewData.DataFor10Days(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_D82AC()
{
  result = sub_115760();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D8448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t sub_D8524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D85F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_D86BC()
{
  result = sub_115760();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D8774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D8840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_D88F8()
{
  result = sub_115760();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_D89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D8A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_D8B54()
{
  result = sub_115760();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_D8C18()
{
  sub_115760();
  if (v0 <= 0x3F)
  {
    sub_D8D28(319, &qword_186370, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    if (v1 <= 0x3F)
    {
      sub_D8D28(319, &qword_186378, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      if (v2 <= 0x3F)
      {
        sub_D8D28(319, &unk_186380, type metadata accessor for BUIChartViewData.ScreenUsageElement);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_D8D28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1173A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_D8D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_D8E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_D8F18()
{
  sub_115760();
  if (v0 <= 0x3F)
  {
    sub_D8D28(319, &unk_186418, type metadata accessor for BUIChartViewData.BatteryUsageElement);
    if (v1 <= 0x3F)
    {
      sub_D8D28(319, &unk_186380, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_D8FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_D9090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v23 = sub_46F9C(&qword_183560, &qword_129070);
  v6 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v22 = &v22 - v7;
  v8 = sub_5A754();
  swift_beginAccess();
  v9 = *v8;
  *(a2 + 24) = *v8;
  v10 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v11 = v10[7];
  *(a2 + v11) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  *(a2 + v10[8]) = 0;
  LOBYTE(v24[0]) = 1;
  v12 = sub_5822C();
  swift_retain_n();
  if (sub_F59F0(&type metadata for PerfPowerServices, v12))
  {
    v13 = &off_169540;
  }

  else
  {
    v13 = &off_169578;
  }

  *(a2 + v10[10]) = v13;
  *(a2 + v10[11]) = 0x4049000000000000;
  v14 = v10[13];
  LOBYTE(v24[0]) = 1;

  *(a2 + v14) = sub_F59F0(&type metadata for PerfPowerServices, v12) & 1;
  type metadata accessor for BUIChartViewModel();
  sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel);

  *a2 = sub_116120();
  *(a2 + 8) = v15;
  *(a2 + 16) = a3;
  v16 = *(v9 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);

  sub_ECCA4(a1, 0, v24, a3, v16);
  v17 = a2 + v10[9];
  v18 = v24[1];
  *v17 = v24[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v25;
  v19 = v22;
  sub_ECF08();
  v20 = v10[12];
  sub_48800(&qword_183570, &qword_183560, &qword_129070);
  sub_E9054(v13, v19, v23, a2 + v20, 50.0);
}

uint64_t sub_D934C(uint64_t *a1)
{
  v3 = *(**(v1 + 8) + 240);
  v4 = v3();
  if ((v5 & 1) == 0)
  {
    v6 = *a1;
    v7 = (v3)(v4);
    v9 = v6 + 3;
    if (v6 >= 0)
    {
      v9 = v6;
    }

    if ((v8 & 1) != 0 || v9 >> 2 != v7)
    {
      v12 = *(v1 + 24);
      v13 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelGrayColor;
      goto LABEL_13;
    }
  }

  v10 = sub_5822C();
  if ((sub_F59F0(&type metadata for PerfPowerServices, v10) & 1) != 0 && (v11 = *(a1 + *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) + 36)), sub_D7F38(), (sub_117160() & 1) == 0))
  {
    v16 = v11;
  }

  else
  {
    if (sub_D2D34())
    {
      v12 = *(v1 + 24);
      v13 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelLowColor;
LABEL_13:
      v14 = *(v12 + *v13);
    }

    if (sub_D2D5C())
    {
      v12 = *(v1 + 24);
      v13 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelMediumColor;
      goto LABEL_13;
    }

    v16 = *(a1 + *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) + 36));
  }

  return sub_D34A8(v16);
}

uint64_t sub_D94B4(uint64_t a1)
{
  v3 = sub_46F9C(&qword_186458, &qword_12B8B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_D96C4(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_488C8(v6, &qword_186458, &qword_12B8B8);
LABEL_3:
    v12 = type metadata accessor for BUIChartViewConfig();
    return (*(v12 + 608))(a1);
  }

  sub_548D0(v6, v11, &qword_186460, &unk_12B8C0);
  v14 = *(v7 + 36);
  if (sub_1156D0())
  {
    v15 = *(type metadata accessor for BUIChartViewData.ChargingIntervalElement(0) + 20);
    v16 = sub_1156C0();
    sub_488C8(v11, &qword_186460, &unk_12B8C0);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_488C8(v11, &qword_186460, &unk_12B8C0);
  }

  v17 = *(*(v1 + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalGrayColor);
  return swift_retain_n();
}

uint64_t sub_D96C4@<X0>(char *a1@<X8>)
{
  v48 = a1;
  v47 = sub_46F9C(&qword_185928, &unk_12A520);
  v2 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BUIChartViewData(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_115760();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v47 - v23;
  v25 = *(v1 + 8);
  v26 = (*(*v25 + 240))(v22);
  if (v27)
  {
    v28 = sub_46F9C(&qword_186460, &unk_12B8C0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v28;
    v31 = v48;

    return v29(v31, 1, 1, v30);
  }

  else
  {
    v33 = v26;
    (*(*v25 + 136))();
    sub_DA09C(v15, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v15, type metadata accessor for BUIChartViewData);
    (*(v17 + 16))(v20, v11, v16);
    sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v34 = sub_A79F0();
    v35 = *v34 * v33;
    sub_115740();
    v36 = *(v17 + 8);
    v36(v20, v16);
    v37 = *v34;
    sub_115740();
    sub_E4770(&qword_182F10, &type metadata accessor for Date);
    result = sub_117130();
    if (result)
    {
      v38 = *(v17 + 32);
      v38(v7, v24, v16);
      v39 = v36;
      v40 = v47;
      v38(&v7[*(v47 + 48)], v20, v16);
      sub_479B4(v7, v4, &qword_185928, &unk_12A520);
      v41 = *(v40 + 48);
      v42 = v48;
      v38(v48, v4, v16);
      v43 = &v4[v41];
      v44 = v39;
      v39(v43, v16);
      sub_548D0(v7, v4, &qword_185928, &unk_12A520);
      v45 = *(v40 + 48);
      v46 = sub_46F9C(&qword_186460, &unk_12B8C0);
      v38(&v42[*(v46 + 36)], &v4[v45], v16);
      v44(v4, v16);
      return (*(*(v46 - 8) + 56))(v42, 0, 1, v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_D9BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = sub_46F9C(&qword_185928, &unk_12A520);
  v6 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v44 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v11 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v13 = &v36 - v12;
  v14 = sub_115BC0();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v14);
  v46 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_186480, &unk_12B8E0);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  __chkstk_darwin(v17);
  v20 = &v36 - v19;
  v43 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v21 = *(v43 + 20);
  v22 = sub_115760();
  sub_E4770(&qword_182F10, &type metadata accessor for Date);
  result = sub_117130();
  if (result)
  {
    v24 = *(v22 - 8);
    v42 = a3;
    v25 = v24;
    v39 = a2;
    v26 = *(v24 + 16);
    v41 = v17;
    v26(v10, a1, v22);
    v40 = v20;
    v27 = v47;
    v26(&v10[*(v47 + 48)], a1 + v21, v22);
    v28 = v45;
    sub_479B4(v10, v45, &qword_185928, &unk_12A520);
    v29 = *(v27 + 48);
    v37 = a1;
    v38 = v14;
    v30 = *(v25 + 32);
    v30(v13, v28, v22);
    v31 = *(v25 + 8);
    v31(v28 + v29, v22);
    sub_548D0(v10, v28, &qword_185928, &unk_12A520);
    v30(&v13[*(v44 + 36)], v28 + *(v27 + 48), v22);
    v31(v28, v22);
    v32 = v46;
    sub_DA120(v13);
    sub_488C8(v13, &qword_186460, &unk_12B8C0);
    v50 = sub_D3534(*(v37 + *(v43 + 28)));
    v33 = v40;
    v34 = v38;
    sub_115AF0();

    (*(v48 + 8))(v32, v34);
    v50 = v34;
    v51 = &type metadata for Color;
    v52 = &protocol witness table for RectangleMark;
    v53 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v35 = v41;
    sub_115B20();
    return (*(v49 + 8))(v33, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_DA120(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1843C8, &qword_128140);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v4);
  v5 = sub_5822C();
  v6 = sub_F59F0(&type metadata for PerfPowerServices, v5);
  sub_116370();
  sub_115760();
  sub_115C60();

  sub_116370();
  v7 = a1 + *(sub_46F9C(&qword_186460, &unk_12B8C0) + 36);
  sub_115C60();

  v8 = *(v13 + 24);
  if (v6)
  {
    v9 = *(v8 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
    v10 = *(v8 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset) ^ 0x8000000000000000;
  }

  else
  {
    v11 = *(v8 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) + *(v8 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset);
  }

  return sub_115BB0();
}

uint64_t sub_DA370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = sub_46F9C(&qword_185928, &unk_12A520);
  v6 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v44 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v11 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v46 = &v38 - v12;
  v13 = sub_115BC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v47 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_186480, &unk_12B8E0);
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = *(type metadata accessor for BUIChartViewData.ChargingIntervalElement(0) + 20);
  v22 = sub_115760();
  sub_E4770(&qword_182F10, &type metadata accessor for Date);
  result = sub_117130();
  if (result)
  {
    v24 = *(v22 - 8);
    v43 = a3;
    v25 = v24;
    v39 = a2;
    v26 = *(v24 + 16);
    v42 = v17;
    v26(v10, a1, v22);
    v40 = v20;
    v41 = v14;
    v27 = v49;
    v26(&v10[*(v49 + 48)], a1 + v21, v22);
    v28 = v45;
    sub_479B4(v10, v45, &qword_185928, &unk_12A520);
    v29 = *(v27 + 48);
    v38 = v13;
    v30 = *(v25 + 32);
    v31 = v46;
    v30(v46, v28, v22);
    v32 = *(v25 + 8);
    v32(v28 + v29, v22);
    sub_548D0(v10, v28, &qword_185928, &unk_12A520);
    v30((v31 + *(v44 + 36)), v28 + *(v27 + 48), v22);
    v32(v28, v22);
    v33 = v47;
    v34 = v39;
    sub_DA120(v31);
    sub_488C8(v31, &qword_186460, &unk_12B8C0);
    v50 = *(*(v34 + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeGrayColor);
    v35 = v40;
    v36 = v38;
    sub_115AF0();
    (*(v41 + 8))(v33, v36);
    v50 = v36;
    v51 = &type metadata for Color;
    v52 = &protocol witness table for RectangleMark;
    v53 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v37 = v42;
    sub_115B20();
    return (*(v48 + 8))(v35, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA840()
{
  v1 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[7];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1158E0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(v3 + v6);
  }

  v9 = (v3 + v1[9]);
  v10 = *v9;

  v11 = v9[1];

  v12 = *(v3 + v1[10]);

  v13 = (v3 + v1[12]);
  v14 = *v13;

  v15 = *(sub_46F9C(&qword_185640, &unk_12A2C0) + 40);
  v16 = sub_46F9C(&qword_183560, &qword_129070);
  (*(*(v16 - 8) + 8))(&v13[v15], v16);

  return swift_deallocObject();
}

uint64_t sub_DAA18(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_DAAAC@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v101 = sub_46F9C(&qword_186490, &qword_12B8F0);
  v2 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v100 = v82 - v3;
  v4 = sub_46F9C(&qword_186498, &qword_12B8F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v95 = v82 - v6;
  v7 = sub_46F9C(&qword_1864A0, &qword_12B900);
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  __chkstk_darwin(v7);
  v106 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = v82 - v11;
  v12 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v102 = *(v12 - 8);
  v13 = *(v102 + 64);
  __chkstk_darwin(v12 - 8);
  v111 = v14;
  v109 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BUIChartViewData(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_46F9C(&qword_1864A8, &qword_12B908);
  v108 = *(v104 - 8);
  v23 = *(v108 + 64);
  __chkstk_darwin(v104);
  v25 = v82 - v24;
  v26 = sub_46F9C(&qword_1864B0, &qword_12B910);
  v96 = *(v26 - 8);
  v97 = v26;
  v27 = *(v96 + 64);
  __chkstk_darwin(v26);
  v103 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v110 = v82 - v30;
  v31 = sub_46F9C(&qword_186458, &qword_12B8B8);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = v82 - v33;
  v35 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = v82 - v38;
  v40 = v1;
  sub_D96C4(v34);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    v41 = sub_488C8(v34, &qword_186458, &qword_12B8B8);
    (*(**(v1 + 8) + 136))(v41);
    sub_DA09C(v18, v22, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v18, type metadata accessor for BUIChartViewData);
    v42 = *&v22[*(v19 + 24)];

    sub_E5E20(v22, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v116 = v42;
    v43 = v109;
    sub_DA09C(v40, v109, type metadata accessor for Battery24HrBatteryLevelChart);
    v44 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v45 = swift_allocObject();
    sub_E4688(v43, v45 + v44, type metadata accessor for Battery24HrBatteryLevelChart);
    v46 = v25;
    sub_46F9C(&qword_186468, &qword_12B8D0);
    sub_115760();
    sub_46F9C(&qword_186470, &qword_12B8D8);
    sub_48800(&qword_186478, &qword_186468, &qword_12B8D0);
    v47 = sub_47A1C(&qword_186480, &unk_12B8E0);
    v112 = sub_115BC0();
    v113 = &type metadata for Color;
    v114 = &protocol witness table for RectangleMark;
    v115 = &protocol witness table for Color;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v112 = v47;
    v113 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_E4770(&qword_186488, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
    sub_116DF0();
    (*(v108 + 32))(v107, v46, v104);
    sub_46F9C(&qword_1864B8, &qword_12B918);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v94 = v39;
    v50 = sub_548D0(v34, v39, &qword_186460, &unk_12B8C0);
    v91 = *(v1 + 8);
    v93 = v1;
    v51 = (*v91 + 136);
    v90 = *v51;
    v92 = v51;
    v90(v50);
    v89 = type metadata accessor for BUIChartViewData.DataFor24Hrs;
    sub_DA09C(v18, v22, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v88 = type metadata accessor for BUIChartViewData;
    sub_E5E20(v18, type metadata accessor for BUIChartViewData);
    v87 = v19;
    v52 = *&v22[*(v19 + 24)];

    v86 = type metadata accessor for BUIChartViewData.DataFor24Hrs;
    sub_E5E20(v22, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v116 = v52;
    v85 = type metadata accessor for Battery24HrBatteryLevelChart;
    v53 = v109;
    sub_DA09C(v40, v109, type metadata accessor for Battery24HrBatteryLevelChart);
    v102 = *(v102 + 80);
    v54 = (v102 + 16) & ~v102;
    v83 = v54;
    v55 = swift_allocObject();
    v84 = type metadata accessor for Battery24HrBatteryLevelChart;
    sub_E4688(v53, v55 + v54, type metadata accessor for Battery24HrBatteryLevelChart);
    v82[5] = sub_46F9C(&qword_186468, &qword_12B8D0);
    v82[4] = sub_115760();
    v82[3] = sub_46F9C(&qword_186470, &qword_12B8D8);
    v82[2] = sub_48800(&qword_186478, &qword_186468, &qword_12B8D0);
    v56 = sub_47A1C(&qword_186480, &unk_12B8E0);
    v112 = sub_115BC0();
    v113 = &type metadata for Color;
    v114 = &protocol witness table for RectangleMark;
    v115 = &protocol witness table for Color;
    v57 = swift_getOpaqueTypeConformance2();
    v112 = v56;
    v113 = v57;
    swift_getOpaqueTypeConformance2();
    v82[1] = sub_E4770(&qword_186488, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
    v58 = sub_116DF0();
    __chkstk_darwin(v58);
    swift_checkMetadataState();
    v59 = v104;
    v82[6] = sub_DB9DC();
    sub_115B40();
    v60 = *(v108 + 8);
    v61 = v60(v25, v59);
    v90(v61);
    sub_DA09C(v18, v22, v89);
    sub_E5E20(v18, v88);
    v62 = *&v22[*(v87 + 24)];

    sub_E5E20(v22, v86);
    v112 = v62;
    v63 = v109;
    sub_DA09C(v93, v109, v85);
    v64 = v83;
    v65 = swift_allocObject();
    sub_E4688(v63, v65 + v64, v84);
    v66 = sub_116DF0();
    v111 = v82;
    __chkstk_darwin(v66);
    sub_46F9C(&qword_1864C8, &qword_12B920);
    sub_48800(&qword_1864D0, &qword_1864C8, &qword_12B920);
    v67 = v105;
    sub_115B40();
    v60(v25, v59);
    v68 = v96;
    v69 = v97;
    v70 = *(v96 + 16);
    v71 = v103;
    v70(v103, v110, v97);
    v73 = v98;
    v72 = v99;
    v74 = *(v98 + 16);
    v74(v106, v67, v99);
    v75 = v100;
    v70(v100, v71, v69);
    v76 = v101;
    v77 = *(v101 + 48);
    v78 = v106;
    v74(&v75[v77], v106, v72);
    v79 = v95;
    (*(v68 + 32))(v95, v75, v69);
    (*(v73 + 32))(v79 + *(v76 + 48), &v75[v77], v72);
    v80 = *(v73 + 8);
    v80(v105, v72);
    v81 = *(v68 + 8);
    v81(v110, v69);
    v80(v78, v72);
    v81(v103, v69);
    sub_548D0(v79, v107, &qword_186498, &qword_12B8F8);
    sub_46F9C(&qword_1864B8, &qword_12B918);
    swift_storeEnumTagMultiPayload();
    return sub_488C8(v94, &qword_186460, &unk_12B8C0);
  }
}

uint64_t sub_DB9B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_DA120(v1);
}

unint64_t sub_DB9DC()
{
  result = qword_1864C0;
  if (!qword_1864C0)
  {
    sub_47A1C(&qword_1864A8, &qword_12B908);
    sub_47A1C(&qword_186480, &unk_12B8E0);
    sub_115BC0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1864C0);
  }

  return result;
}

uint64_t sub_DBAE0()
{
  v2 = *(v0 + 16);
  sub_46F9C(&qword_186888, &qword_12BE28);
  sub_E5E88();
  return sub_115DB0();
}

uint64_t sub_DBB54@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v90 = a3;
  v89 = sub_46F9C(&qword_186898, &qword_12BE30);
  v4 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v6 = &v81 - v5;
  v102 = sub_46F9C(&qword_185928, &unk_12A520);
  v7 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v100 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = &v81 - v10;
  v11 = sub_115760();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v96 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v81 - v16;
  v18 = type metadata accessor for BUIChartViewData(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_46F9C(&qword_186460, &unk_12B8C0);
  v26 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v99 = &v81 - v27;
  v28 = sub_115BC0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v88 = &v81 - v34;
  __chkstk_darwin(v35);
  v97 = &v81 - v36;
  v38 = __chkstk_darwin(v37);
  v103 = a1;
  v104 = &v81 - v39;
  v40 = *(a1 + 8);
  v41 = (*v40 + 136);
  v92 = *v41;
  v93 = v40;
  v91 = v41;
  v92(v38);
  sub_DA09C(v21, v25, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v95 = v21;
  sub_E5E20(v21, type metadata accessor for BUIChartViewData);
  v105 = v12[2];
  v106 = v12 + 2;
  v105(v17, v25, v11);
  v94 = v25;
  sub_E5E20(v25, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v42 = sub_E4770(&qword_182F10, &type metadata accessor for Date);
  result = sub_117130();
  if (result)
  {
    v82 = v32;
    v83 = v29;
    v84 = v28;
    v85 = v6;
    v44 = v12[4];
    v87 = v42;
    v45 = v101;
    v86 = v17;
    v44(v101, v17, v11);
    v46 = v102;
    v105((v45 + *(v102 + 48)), v107, v11);
    v47 = v100;
    sub_479B4(v45, v100, &qword_185928, &unk_12A520);
    v48 = *(v46 + 48);
    v49 = v99;
    v44(v99, v47, v11);
    v50 = v12[1];
    v50(v47 + v48, v11);
    sub_548D0(v45, v47, &qword_185928, &unk_12A520);
    v51 = *(v46 + 48);
    v52 = v49 + *(v98 + 36);
    v81 = v44;
    v44(v52, (v47 + v51), v11);
    v50(v47, v11);
    sub_DA120(v49);
    v53 = sub_488C8(v49, &qword_186460, &unk_12B8C0);
    v54 = v95;
    (v92)(v53);
    v55 = v94;
    sub_DA09C(v54, v94, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v56 = v54;
    v57 = v86;
    sub_E5E20(v56, type metadata accessor for BUIChartViewData);
    v58 = v96;
    v105(v96, v55, v11);
    sub_E5E20(v55, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v59 = *sub_A79FC();
    sub_115740();
    v60 = v107;
    v96 = v50;
    v50(v58, v11);
    result = sub_117130();
    if (result)
    {
      v61 = v101;
      v105(v101, v60, v11);
      v62 = v102;
      v63 = v81;
      v81((v61 + *(v102 + 48)), v57, v11);
      v64 = v100;
      sub_479B4(v61, v100, &qword_185928, &unk_12A520);
      v65 = *(v62 + 48);
      v66 = v99;
      v63(v99, v64, v11);
      v67 = v64 + v65;
      v68 = v96;
      (v96)(v67, v11);
      sub_548D0(v61, v64, &qword_185928, &unk_12A520);
      v63((v66 + *(v98 + 36)), v64 + *(v62 + 48), v11);
      v68(v64, v11);
      v69 = v97;
      sub_DA120(v66);
      sub_488C8(v66, &qword_186460, &unk_12B8C0);
      v70 = v83;
      v71 = *(v83 + 16);
      v72 = v88;
      v73 = v84;
      v71(v88, v104, v84);
      v74 = v82;
      v71(v82, v69, v73);
      v75 = v85;
      v71(v85, v72, v73);
      v76 = v89;
      v77 = *(v89 + 48);
      v71(&v75[v77], v74, v73);
      v78 = *(v70 + 32);
      v79 = v90;
      v78(v90, v75, v73);
      v78(v79 + *(v76 + 48), &v75[v77], v73);
      v80 = *(v70 + 8);
      v80(v97, v73);
      v80(v104, v73);
      v80(v74, v73);
      return (v80)(v72, v73);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_DC478@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_46F9C(&qword_1864D8, &qword_12B928);
  v3 = *(v2 - 8);
  v66 = v2 - 8;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v65 = &v54 - v5;
  v6 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v61 = *(v6 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v6 - 8);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_1864E0, &qword_12B930);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  __chkstk_darwin(v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v54 - v12;
  v13 = type metadata accessor for BUIChartViewData(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v56 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = sub_46F9C(&qword_1864E8, &qword_12B938);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v68 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v57 = v1;
  v58 = &v54 - v28;
  v29 = sub_DAAAC(&v54 - v28);
  v30 = *(**(v1 + 8) + 136);
  v30(v29);
  v54 = v30;
  sub_DA09C(v16, v23, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v16, type metadata accessor for BUIChartViewData);
  v55 = *&v23[v18[8]];

  v31 = sub_E5E20(v23, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v30(v31);
  v32 = v56;
  sub_DA09C(v16, v56, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v16, type metadata accessor for BUIChartViewData);
  v33 = *(v32 + v18[9]);

  sub_E5E20(v32, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v71 = v55;
  v34 = sub_D5EAC(v33);
  v54(v34);
  sub_DA09C(v16, v23, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v16, type metadata accessor for BUIChartViewData);
  v35 = *&v23[v18[10]];

  sub_E5E20(v23, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_D5EAC(v35);
  v70 = v71;
  v36 = v59;
  sub_DA09C(v57, v59, type metadata accessor for Battery24HrBatteryLevelChart);
  v37 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v38 = swift_allocObject();
  sub_E4688(v36, v38 + v37, type metadata accessor for Battery24HrBatteryLevelChart);
  sub_46F9C(&qword_186468, &qword_12B8D0);
  sub_115760();
  sub_46F9C(&qword_1864F0, &qword_12B940);
  sub_48800(&qword_186478, &qword_186468, &qword_12B8D0);
  sub_E3644();
  sub_E4770(&qword_186488, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
  v39 = v69;
  sub_116DF0();
  v40 = v58;
  v41 = v68;
  sub_479B4(v58, v68, &qword_1864E8, &qword_12B938);
  v42 = v62;
  v43 = v63;
  v44 = *(v63 + 16);
  v45 = v39;
  v46 = v64;
  v44(v62, v45, v64);
  sub_E38A0();
  v47 = v41;
  v48 = v65;
  sub_479B4(v47, v65, &qword_1864E8, &qword_12B938);
  sub_E3A90(&qword_186538, &qword_1864E0, &qword_12B930, sub_E3644);
  v49 = v66;
  v50 = *(v66 + 56);
  v44((v48 + v50), v42, v46);
  v51 = v67;
  sub_548D0(v48, v67, &qword_1864E8, &qword_12B938);
  (*(v43 + 32))(v51 + *(v49 + 56), v48 + v50, v46);
  v52 = *(v43 + 8);
  v52(v69, v46);
  sub_488C8(v40, &qword_1864E8, &qword_12B938);
  v52(v42, v46);
  return sub_488C8(v68, &qword_1864E8, &qword_12B938);
}

uint64_t sub_DCB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v111 = sub_46F9C(&qword_186878, &qword_12BE10);
  v5 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v110 = &v84 - v6;
  v97 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v7 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BUIChartIconMark();
  v106 = *(v9 - 8);
  v107 = v9;
  v10 = *(v106 + 64);
  __chkstk_darwin(v9);
  v84 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_46F9C(&qword_186518, &unk_12B958);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v109 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v84 - v16;
  v102 = sub_116390();
  v101 = *(v102 - 8);
  v18 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_46F9C(&qword_1843C8, &qword_128140);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v88 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v90 = sub_115BC0();
  v89 = *(v90 - 8);
  v24 = *(v89 + 64);
  __chkstk_darwin(v90);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_46F9C(&qword_186480, &unk_12B8E0);
  v91 = *(v93 - 8);
  v27 = *(v91 + 64);
  __chkstk_darwin(v93);
  v87 = &v84 - v28;
  v96 = sub_46F9C(&qword_186508, &qword_12B950);
  v94 = *(v96 - 8);
  v29 = *(v94 + 64);
  __chkstk_darwin(v96);
  v92 = &v84 - v30;
  v99 = sub_46F9C(&qword_186500, &qword_12B948);
  v98 = *(v99 - 8);
  v31 = *(v98 + 64);
  __chkstk_darwin(v99);
  v95 = &v84 - v32;
  v33 = sub_46F9C(&qword_186880, &qword_12BE18);
  v104 = *(v33 - 8);
  v105 = v33;
  v34 = *(v104 + 64);
  __chkstk_darwin(v33);
  v103 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v116 = &v84 - v37;
  v38 = sub_D94B4(a1);
  v113 = v39;
  v114 = v38;
  v40 = *(a2 + *(type metadata accessor for Battery24HrBatteryLevelChart(0) + 52));
  v115 = a2;
  v41 = *(a2 + 24);
  v108 = v17;
  if (v40 == 1)
  {
    v42 = *(v41 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight);
    v43 = *(v41 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset) * -0.5 - v42;
  }

  else
  {
    v43 = *(v41 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) + *(v41 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset);
    v42 = *(v41 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight);
  }

  v44 = v43 + v42 * -0.5;
  sub_116370();
  sub_115760();
  v45 = a1;
  sub_115C60();

  sub_116370();
  v46 = a1 + *(v97 + 20);
  v86 = a1;
  sub_115C60();

  v47 = v44 + *(v41 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight);
  sub_115BB0();
  v119 = v114;
  v48 = v87;
  v49 = v90;
  sub_115AF0();
  (*(v89 + 8))(v26, v49);
  v50 = v101;
  v51 = v100;
  v52 = v102;
  (*(v101 + 104))(v100, enum case for RoundedCornerStyle.continuous(_:), v102);
  v119 = v49;
  v120 = &type metadata for Color;
  v121 = &protocol witness table for RectangleMark;
  v122 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v92;
  v55 = v93;
  sub_115AE0();
  (*(v50 + 8))(v51, v52);
  (*(v91 + 8))(v48, v55);
  v56 = *(v115 + 8);
  v119 = (*(*v56 + 576))(v45);
  v120 = v57;
  v117 = v55;
  v118 = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_4869C();
  v60 = v95;
  v61 = v96;
  sub_115B00();

  (*(v94 + 8))(v54, v61);
  sub_116370();
  v119 = v61;
  v120 = &type metadata for String;
  v121 = v58;
  v122 = v59;
  swift_getOpaqueTypeConformance2();
  v62 = v99;
  sub_115B10();
  v63 = v86;

  (*(v98 + 8))(v60, v62);
  v64 = sub_D3624();
  v65.n128_u64[0] = *(v115 + 16);
  v66 = (*(*v56 + 496))(v65);
  v67 = 1;
  v68 = v108;
  if (v66 < v64)
  {
    v69 = v85;
    sub_DA09C(v63, v85, type metadata accessor for BUIChartViewData.ChargingIntervalElement);

    v70 = v113;

    v71 = v84;
    sub_10ACC0(v69, v56, v70, v84);
    sub_E4688(v71, v68, type metadata accessor for BUIChartIconMark);
    v67 = 0;
  }

  (*(v106 + 56))(v68, v67, 1, v107);
  v73 = v104;
  v72 = v105;
  v74 = v68;
  v75 = *(v104 + 16);
  v76 = v103;
  v75(v103, v116, v105);
  v77 = v109;
  sub_479B4(v74, v109, &qword_186518, &unk_12B958);
  v78 = v110;
  v75(v110, v76, v72);
  sub_E37EC();
  v79 = v111;
  v80 = *(v111 + 48);
  sub_479B4(v77, &v78[v80], &qword_186518, &unk_12B958);
  v81 = v112;
  (*(v73 + 32))(v112, v78, v72);
  sub_548D0(&v78[v80], v81 + *(v79 + 48), &qword_186518, &unk_12B958);

  sub_488C8(v74, &qword_186518, &unk_12B958);
  v82 = *(v73 + 8);
  v82(v116, v72);
  sub_488C8(v77, &qword_186518, &unk_12B958);
  return (v82)(v76, v72);
}

uint64_t sub_DD7F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BUIChartViewData(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(**(v2 + 8) + 136);
  v14(v11);
  sub_DA09C(v8, v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v8, type metadata accessor for BUIChartViewData);
  v15 = *&v13[*(v9 + 20)];

  sub_E5E20(v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v16 = *(v15 + 16);

  if ((a1 & 0x8000000000000000) != 0 || v16 <= a1)
  {
    v22 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
    (v14)(v17);
    sub_DA09C(v8, v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v8, type metadata accessor for BUIChartViewData);
    v18 = *&v13[*(v9 + 20)];

    result = sub_E5E20(v13, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    if (*(v18 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v20 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
      v21 = *(v20 - 8);
      sub_DA09C(v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * a1, a2, type metadata accessor for BUIChartViewData.BatteryLevelsElement);

      return (*(v21 + 56))(a2, 0, 1, v20);
    }
  }

  return result;
}

void *sub_DDAF0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for BUIChartViewData(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = *(**(v2 + 8) + 136);
  v16(v13);
  sub_DA09C(v7, v15, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  v17 = *&v15[*(v8 + 20)];

  sub_E5E20(v15, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v18 = *(v17 + 16);

  if (v18 <= a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v32 = a1;
  v34 = a1 & ~(a1 >> 63);
  (v16)(v19);
  v33 = type metadata accessor for BUIChartViewData.DataFor24Hrs;
  sub_DA09C(v7, v15, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  v20 = *&v15[*(v8 + 20)];

  sub_E5E20(v15, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v21 = *(v20 + 16);

  if (v21 - 1 >= v35)
  {
    v23 = v35;
  }

  else
  {
    v23 = v21 - 1;
  }

  (v16)(v22);
  sub_DA09C(v7, v11, v33);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  v24 = *&v11[*(v8 + 20)];

  v25 = v34;
  result = sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  if (v23 >= v25)
  {
    v27 = *(v24 + 16);
    if (v27 < v32 || v27 < v23)
    {
      goto LABEL_16;
    }

    if (v27 != v23 - v25)
    {
      v29 = *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) - 8);
      sub_E3B0C(v24, v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v25, (2 * v23) | 1);
      v31 = v30;

      return v31;
    }

    return v24;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_DDE2C@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_46F9C(&qword_185308, &qword_12A0A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_46F9C(&qword_186570, &unk_12B9A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v49 = sub_46F9C(&qword_186568, &qword_12B998);
  v47 = *(v49 - 8);
  v15 = *(v47 + 64);
  __chkstk_darwin(v49);
  v17 = &v44 - v16;
  v18 = sub_46F9C(&qword_186560, &qword_12B990);
  v48 = *(v18 - 8);
  v19 = *(v48 + 64);
  __chkstk_darwin(v18);
  v46 = &v44 - v20;
  v21 = *a1;
  v52 = a2;
  v53 = v21;
  sub_46F9C(&qword_186828, &qword_12BDD0);
  sub_E5960();
  sub_115DB0();
  v22 = *(a2 + *(type metadata accessor for Battery24HrBatteryLevelChart(0) + 52));
  v23 = *(a2 + 8);
  v50 = v18;
  v51 = a3;
  v45 = v21;
  if (v22 == 1)
  {
    sub_DD7F8(v21, v9);
    v24 = (*(*v23 + 560))(v9);
    v26 = v25;
    sub_488C8(v9, &qword_185308, &qword_12A0A8);
LABEL_8:
    v55 = v24;
    v56 = v26;
    v32 = sub_48800(&qword_186578, &qword_186570, &unk_12B9A0);
    v33 = sub_4869C();
    v34 = v17;
    sub_115B00();

    (*(v11 + 8))(v14, v10);
    sub_116370();
    v55 = v10;
    v56 = &type metadata for String;
    v57 = v32;
    v58 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v46;
    v37 = v49;
    sub_115B10();

    (*(v47 + 8))(v34, v37);
    v38 = sub_59514();
    v40 = *v38;
    v39 = v38[1];
    v55 = 1920298824;
    v56 = 0xE400000000000000;
    v54 = v45;

    v59._countAndFlagsBits = sub_1179B0();
    sub_117220(v59);

    v41 = v55;
    v42 = v56;
    v55 = v40;
    v56 = v39;

    v60._countAndFlagsBits = v41;
    v60._object = v42;
    sub_117220(v60);

    v55 = v37;
    v56 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v50;
    sub_115B30();

    return (*(v48 + 8))(v36, v43);
  }

  v27 = *sub_A79A8();
  result = v21 * v27;
  if ((v21 * v27) >> 64 != (v21 * v27) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v29 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = v29 * v27;
  if ((v29 * v27) >> 64 != (v29 * v27) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v30 >= result)
  {
    sub_DDAF0(result, v30);
    v24 = (*(*v23 + 568))();
    v26 = v31;

    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_DE3C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v105 = a1;
  v103 = a3;
  v3 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v4 = v3 - 8;
  v97 = *(v3 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v3);
  v6 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_186850, &qword_12BDE0);
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  __chkstk_darwin(v7);
  v98 = v83 - v9;
  v10 = sub_46F9C(&qword_184418, &unk_1281A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v96 = v83 - v12;
  v90 = sub_46F9C(&qword_185928, &unk_12A520);
  v13 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v87 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v83 - v16;
  v18 = sub_115760();
  v89 = *(v18 - 8);
  v19 = *(v89 + 64);
  __chkstk_darwin(v18);
  v21 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_46F9C(&qword_185930, &qword_12BDF0);
  v22 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v88 = v83 - v23;
  v24 = sub_46F9C(&qword_1843C8, &qword_128140);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v91 = v83 - v26;
  v95 = sub_115E00();
  v94 = *(v95 - 8);
  v27 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_46F9C(&qword_186868, &qword_12BDF8);
  v101 = *(v29 - 8);
  v102 = v29;
  v30 = *(v101 + 64);
  __chkstk_darwin(v29);
  v92 = v83 - v31;
  v32 = sub_46F9C(&qword_185308, &qword_12A0A8);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = v83 - v34;
  v36 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_46F9C(&qword_186840, &qword_12BDD8);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = v83 - v43;
  v45 = *(v4 + 60);
  v46 = v105;
  if (*(v105 + v45) == 1)
  {
    v100 = v44;
    sub_DD7F8(v104, v35);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_488C8(v35, &qword_185308, &qword_12A0A8);
      v47 = 1;
      v49 = v101;
      v48 = v102;
      v50 = v100;
LABEL_8:
      (*(v49 + 56))(v50, v47, 1, v48);
      sub_548D0(v50, v103, &qword_186840, &qword_12BDD8);
      goto LABEL_9;
    }

    v58 = v40;
    sub_E4688(v35, v40, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    v99 = sub_116370();
    v60 = v59;
    LODWORD(v98) = v61;
    v104 = v62;
    v63 = &v40[*(v36 + 20)];
    v64 = *sub_A79F0();
    sub_115740();
    v65 = v18;
    v97 = sub_E4770(&qword_182F10, &type metadata accessor for Date);
    result = sub_117130();
    if (result)
    {
      v83[1] = v60;
      v66 = v89;
      (*(v89 + 16))(v17, v63, v18);
      v67 = v90;
      v68 = *(v90 + 48);
      v85 = v58;
      v69 = *(v66 + 32);
      v69(&v17[v68], v21, v18);
      v70 = v87;
      sub_479B4(v17, v87, &qword_185928, &unk_12A520);
      v71 = v65;
      v72 = *(v67 + 48);
      v73 = v88;
      v84 = v36;
      v74 = v71;
      (v69)(v88, v70);
      v75 = *(v66 + 8);
      v75(v70 + v72, v74);
      sub_548D0(v17, v70, &qword_185928, &unk_12A520);
      v69((v73 + *(v86 + 36)), (v70 + *(v67 + 48)), v74);
      v75(v70, v74);
      sub_115C50();

      sub_488C8(v73, &qword_185930, &qword_12BDF0);
      sub_116370();
      v76 = v85;
      *&v109[0] = *(v85 + *(v84 + 24));
      sub_115C60();

      v78.n128_u64[0] = *(v105 + 16);
      (*(**(v105 + 8) + 448))(v77, v78);
      v79 = v93;
      sub_115DF0();
      v80 = sub_D934C(v76);
      sub_5B018(0, v80, v109);

      v106 = v109[0];
      v107 = v109[1];
      v108 = v110;
      v81 = v92;
      v82 = v95;
      sub_115AF0();
      sub_8CFC0(v109);
      (*(v94 + 8))(v79, v82);
      sub_E5E20(v76, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v50 = v100;
      v49 = v101;
      v48 = v102;
      (*(v101 + 32))(v100, v81, v102);
      v47 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v51 = v104;
    result = sub_A79A8();
    v53 = *result;
    if ((*result & 0x8000000000000000) == 0)
    {
      *&v109[0] = 0;
      *(&v109[0] + 1) = v53;
      swift_getKeyPath();
      sub_DA09C(v46, v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrBatteryLevelChart);
      v54 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v55 = (v5 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      sub_E4688(v6, v56 + v54, type metadata accessor for Battery24HrBatteryLevelChart);
      *(v56 + v55) = v51;
      sub_46F9C(&qword_186540, &qword_12B980);
      sub_46F9C(&qword_186860, &qword_12BDE8);
      sub_E3CB0();
      sub_E5AE0();
      v57 = v98;
      sub_116E00();
      (*(v99 + 32))(v103, v57, v100);
LABEL_9:
      sub_46F9C(&qword_186870, &unk_12BE00);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_DEF90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a4;
  v87 = a2;
  v6 = sub_46F9C(&qword_184418, &unk_1281A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v83 = v68 - v8;
  v77 = sub_46F9C(&qword_185928, &unk_12A520);
  v9 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v68 - v13;
  v15 = sub_115760();
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  __chkstk_darwin(v15);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_46F9C(&qword_185930, &qword_12BDF0);
  v19 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v76 = v68 - v20;
  v21 = sub_46F9C(&qword_1843C8, &qword_128140);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v78 = v68 - v23;
  v24 = sub_115E00();
  v81 = *(v24 - 8);
  v82 = v24;
  v25 = *(v81 + 64);
  __chkstk_darwin(v24);
  v80 = v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_46F9C(&qword_185950, &unk_12A540);
  v84 = *(v27 - 8);
  v85 = v27;
  v28 = *(v84 + 64);
  __chkstk_darwin(v27);
  v79 = v68 - v29;
  v30 = sub_46F9C(&qword_185308, &qword_12A0A8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = v68 - v32;
  v34 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  result = sub_A79A8();
  v41 = a3 * *result;
  if ((a3 * *result) >> 64 != v41 >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v41 + v39;
  if (__OFADD__(v41, v39))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_DD7F8(result, v33);
  v42 = v34;
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_488C8(v33, &qword_185308, &qword_12A0A8);
    v43 = 1;
    v45 = v84;
    v44 = v85;
    return (*(v45 + 56))(v86, v43, 1, v44);
  }

  v46 = v33;
  v47 = v38;
  sub_E4688(v46, v38, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  v73 = sub_116370();
  v49 = v48;
  v72 = v50;
  v52 = v51;
  v53 = v47 + *(v42 + 20);
  v54 = *sub_A79E4();
  sub_115740();
  v71 = sub_E4770(&qword_182F10, &type metadata accessor for Date);
  result = sub_117130();
  if (result)
  {
    v68[2] = v49;
    v55 = v75;
    (*(v75 + 16))(v14, v53, v15);
    v56 = v77;
    v57 = *(v77 + 48);
    v70 = v42;
    v68[1] = v52;
    v58 = *(v55 + 32);
    v58(&v14[v57], v18, v15);
    sub_479B4(v14, v11, &qword_185928, &unk_12A520);
    v59 = *(v56 + 48);
    v60 = v76;
    v58(v76, v11, v15);
    v69 = v47;
    v61 = *(v55 + 8);
    v61(&v11[v59], v15);
    sub_548D0(v14, v11, &qword_185928, &unk_12A520);
    v58((v60 + *(v74 + 36)), &v11[*(v56 + 48)], v15);
    v61(v11, v15);
    sub_115C50();

    sub_488C8(v60, &qword_185930, &qword_12BDF0);
    sub_116370();
    v62 = v69;
    v88 = *(v69 + *(v70 + 24));
    sub_115C60();

    v64.n128_u64[0] = *(v87 + 16);
    (*(**(v87 + 8) + 448))(v63, v64);
    v65 = v80;
    sub_115DF0();
    v88 = sub_D934C(v62);
    v66 = v79;
    v67 = v82;
    sub_115AF0();

    (*(v81 + 8))(v65, v67);
    sub_E5E20(v62, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
    v45 = v84;
    v44 = v85;
    (*(v84 + 32))(v86, v66, v85);
    v43 = 0;
    return (*(v45 + 56))(v86, v43, 1, v44);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_DF7EC@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_46F9C(&qword_184138, &qword_127D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - v4;
  v6 = sub_46F9C(&qword_186580, &qword_12B9B0);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v10 = sub_46F9C(&qword_186588, &qword_12B9B8);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v55 = sub_46F9C(&qword_186590, &qword_12B9C0);
  v56 = *(v55 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v55);
  v50 = &v49 - v15;
  v57 = sub_46F9C(&qword_186598, &qword_12B9C8);
  v58 = *(v57 - 8);
  v16 = *(v58 + 64);
  __chkstk_darwin(v57);
  v53 = &v49 - v17;
  v59 = sub_46F9C(&qword_1865A0, &qword_12B9D0);
  v18 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v54 = &v49 - v19;
  v65 = v1;
  sub_46F9C(&qword_1865A8, &qword_12B9D8);
  sub_E3D98();
  sub_115DC0();
  v69 = xmmword_12B860;
  v20 = sub_115F00();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = sub_46F9C(&qword_184178, &qword_1285D0);
  v22 = sub_48800(&qword_1865D8, &qword_186580, &qword_12B9B0);
  v23 = sub_E47B8(&qword_184180, &qword_184178, &qword_1285D0);
  sub_116970();
  sub_488C8(v5, &qword_184138, &qword_127D50);
  (*(v51 + 8))(v9, v6);
  v24 = v49;
  v64 = v49;
  v25 = sub_46F9C(&qword_1865E0, &unk_12B9F8);
  *&v70 = v6;
  *(&v70 + 1) = v21;
  *&v71 = v22;
  *(&v71 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v50;
  sub_116910();
  (*(v52 + 8))(v13, v10);
  v63 = v24;
  v29 = sub_46F9C(&qword_1856E0, &qword_12A370);
  *&v70 = v10;
  *(&v70 + 1) = v25;
  *&v71 = OpaqueTypeConformance2;
  *(&v71 + 1) = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_47A1C(&qword_183560, &qword_129070);
  v32 = sub_48800(&qword_183570, &qword_183560, &qword_129070);
  *&v70 = v31;
  *(&v70 + 1) = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v53;
  v35 = v55;
  sub_116930();
  (*(v56 + 8))(v28, v35);
  sub_E05A8();
  v67 = v36;
  v68 = v37;
  *&v70 = v35;
  *(&v70 + 1) = v29;
  *&v71 = v30;
  *(&v71 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  sub_BD25C();
  v38 = v54;
  v39 = v57;
  sub_116AB0();

  (*(v58 + 8))(v34, v39);
  v40 = *(*(v24 + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(*(v24 + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(*(v24 + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
  sub_116EA0();
  sub_116070();
  v41 = v59;
  v42 = (v38 + *(v59 + 36));
  v43 = v71;
  *v42 = v70;
  v42[1] = v43;
  v42[2] = v72;
  v66 = 1;
  v44 = sub_5822C();
  LOBYTE(v40) = sub_F59F0(&type metadata for PerfPowerServices, v44);
  v62 = v24;
  v45 = sub_46F9C(&qword_1865E8, &unk_12BA08);
  v46 = sub_E412C();
  v47 = sub_E4418(&qword_1865F8, &qword_1865E8, &unk_12BA08, sub_E412C);
  sub_8E234((LOBYTE(v40) & 1) == 0, sub_E4124, v61, v41, v45, v46, v47, v60);
  return sub_488C8(v38, &qword_1865A0, &qword_12B9D0);
}

uint64_t *sub_E004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_46F9C(&qword_186820, &unk_12BDC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v45 - v5;
  v7 = sub_46F9C(&qword_1865D0, &unk_12B9E8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = sub_46F9C(&qword_1865C0, &qword_12B9E0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v54 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v45 - v22;
  result = sub_A799C();
  v24 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v61 = 0;
    v62 = v24;
    KeyPath = swift_getKeyPath();
    v52 = a1;
    sub_DA09C(a1, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrBatteryLevelChart);
    v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v26 = swift_allocObject();
    sub_E4688(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for Battery24HrBatteryLevelChart);
    v49 = sub_46F9C(&qword_186540, &qword_12B980);
    v48 = sub_46F9C(&qword_186548, &qword_12B988);
    v47 = sub_E3CB0();
    v27 = sub_47A1C(&qword_186560, &qword_12B990);
    v28 = sub_47A1C(&qword_186568, &qword_12B998);
    v56 = v10;
    v50 = v3;
    v29 = v13;
    v30 = sub_47A1C(&qword_186570, &unk_12B9A0);
    v31 = sub_48800(&qword_186578, &qword_186570, &unk_12B9A0);
    v32 = sub_4869C();
    v57 = v30;
    v58 = &type metadata for String;
    v59 = v31;
    v60 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v28;
    v58 = OpaqueTypeConformance2;
    v34 = swift_getOpaqueTypeConformance2();
    v57 = v27;
    v58 = v34;
    swift_getOpaqueTypeConformance2();
    v35 = v53;
    sub_116E00();
    v46 = v29;
    sub_DC478(v29);
    v36 = *(v18 + 16);
    v37 = v54;
    v36(v54, v35, v17);
    v38 = v29;
    v39 = v17;
    v40 = v56;
    sub_479B4(v38, v56, &qword_1865D0, &unk_12B9E8);
    sub_E3E2C();
    v36(v6, v37, v39);
    sub_E3FB4();
    v41 = v50;
    v42 = *(v50 + 48);
    sub_479B4(v40, &v6[v42], &qword_1865D0, &unk_12B9E8);
    v43 = v55;
    (*(v18 + 32))(v55, v6, v39);
    sub_548D0(&v6[v42], v43 + *(v41 + 48), &qword_1865D0, &unk_12B9E8);
    sub_488C8(v46, &qword_1865D0, &unk_12B9E8);
    v44 = *(v18 + 8);
    v44(v35, v39);
    sub_488C8(v56, &qword_1865D0, &unk_12B9E8);
    return (v44)(v37, v39);
  }

  return result;
}

void sub_E05A8()
{
  v1 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BUIChartViewData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(**(v0 + 8) + 136);
  v10(v7);
  sub_DA09C(v9, v4, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v9, type metadata accessor for BUIChartViewData);
  sub_B87CC();
  v12 = v11;
  sub_E5E20(v4, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v13 = sub_117170();
  v14 = BatteryUILocalization(v13);

  if (v14)
  {
    sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
    sub_1171B0();

    v15 = sub_117580();
    v16 = sub_117170();
    v17 = BatteryUILocalization(v16);

    if (v17)
    {
      v18 = sub_1171B0();
      v27 = v19;
      v28 = v18;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v26[1] = sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
    sub_46F9C(&qword_185700, &qword_12A3A0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_12A2B0;
    v21 = v12;
    v22 = v15;
    (v10)();
    sub_DA09C(v9, v4, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v9, type metadata accessor for BUIChartViewData);
    sub_B8800();
    v24 = v23;
    sub_E5E20(v4, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    *(v20 + 32) = v24;
    v25 = sub_1174F0();
    *(swift_allocObject() + 16) = v25;
    j_nullsub_4(sub_C05EC);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_E095C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for BUIChartViewData(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v12 = a2[1];
  type metadata accessor for BUIChartViewModel();
  sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel);
  sub_116130();
  swift_getKeyPath();
  sub_116140();

  v15 = v24[0];
  v16 = v24[1];
  v17 = v24[2];
  v18 = v25;
  (*(*v12 + 136))(v14);
  sub_DA09C(v6, v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v6, type metadata accessor for BUIChartViewData);
  v19 = *&v11[*(v8 + 44)];

  sub_E5E20(v11, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v20 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v21 = sub_D2208(v19, v20, &off_169350);

  v22 = sub_BD2B0(v21);

  sub_46F9C(&qword_1865A0, &qword_12B9D0);
  sub_E412C();
  sub_AB1AC(v15, v16, v17, v18, v22);
}

uint64_t sub_E0C00@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_E0C30(uint64_t a1)
{
  v2 = sub_E45BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E0C6C(uint64_t a1)
{
  v2 = sub_E45BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_E0CA8@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_E44D4(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_E0CD8(void *a1)
{
  v2 = sub_46F9C(&qword_186600, &qword_12BA18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_E45BC();
  sub_117B00();
  return (*(v3 + 8))(v6, v2);
}

double sub_E0E58@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_5A754();
  swift_beginAccess();
  *(a1 + 24) = *v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_46F9C(&qword_184E40, &qword_12BA20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_129DB0;
  *(v5 + 32) = 0;

  v6.f64[0] = *sub_A79F0();
  *(v5 + 40) = v6.f64[0] * 0.25;
  *(v5 + 64) = v6.f64[0];
  v6.f64[1] = v6.f64[0] * 0.25;
  v14 = vmulq_f64(v6, xmmword_12B870);
  *(v5 + 48) = v14;
  *(a1 + 88) = v5;
  *(a1 + 96) = v14.f64[0];
  v7 = *(type metadata accessor for Battery24HrActivityChart(0) + 52);
  *(a1 + v7) = swift_getKeyPath();
  sub_46F9C(&qword_185648, &qword_12B880);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BUIChartViewModel();
  sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel);

  *a1 = sub_116120();
  *(a1 + 8) = v8;
  *(a1 + 16) = a2;

  sub_ECCA4(v9, 1, v17, a2, 0.0);
  v10 = v17[1];
  *(a1 + 48) = v17[0];
  *(a1 + 64) = v10;
  *(a1 + 80) = v18;
  sub_E4630();
  sub_E9054(v5, v11, &type metadata for PLBUIMinuteFormatStyle, v15, v14.f64[0]);

  result = *&v15[1];
  v13 = v16;
  *(a1 + 104) = v15[0];
  *(a1 + 112) = result;
  *(a1 + 120) = v13;
  return result;
}

double *sub_E1054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v3 = sub_46F9C(&qword_184138, &qword_127D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v92 = &v86 - v5;
  v6 = type metadata accessor for Battery24HrActivityChart(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for BUIChartViewData(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_46F9C(&qword_186610, &qword_12BA28);
  v87 = *(v88 - 8);
  v17 = *(v87 + 64);
  __chkstk_darwin(v88);
  v109 = &v86 - v18;
  v91 = sub_46F9C(&qword_186618, &qword_12BA30);
  v90 = *(v91 - 8);
  v19 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = &v86 - v20;
  v96 = sub_46F9C(&qword_186620, &qword_12BA38);
  v94 = *(v96 - 8);
  v21 = *(v94 + 64);
  __chkstk_darwin(v96);
  v93 = &v86 - v22;
  v98 = sub_46F9C(&qword_186628, &qword_12BA40);
  v97 = *(v98 - 8);
  v23 = *(v97 + 64);
  __chkstk_darwin(v98);
  v95 = &v86 - v24;
  v102 = sub_46F9C(&qword_186630, &unk_12BA48);
  v25 = *(*(v102 - 8) + 64);
  v26 = __chkstk_darwin(v102);
  v103 = &v86 - v27;
  v28 = *(v1 + 8);
  v29 = *(*v28 + 136);
  v30 = *v28 + 136;
  v101 = v28;
  v100 = v29;
  v99 = v30;
  v29(v26);
  sub_DA09C(v12, v16, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v107 = v12;
  sub_E5E20(v12, type metadata accessor for BUIChartViewData);
  v106 = v13;
  v31 = *&v16[*(v13 + 36)];

  v105 = v16;
  sub_E5E20(v16, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v118 = v31;
  v104 = v2;
  sub_DA09C(v2, &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrActivityChart);
  v32 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v33 = swift_allocObject();
  sub_E4688(&v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for Battery24HrActivityChart);
  sub_46F9C(&qword_185748, &qword_12A3E0);
  sub_46F9C(&qword_186638, &qword_12BA58);
  sub_48800(&qword_185758, &qword_185748, &qword_12A3E0);
  v34 = sub_47A1C(&qword_186640, &qword_12BA60);
  v35 = sub_47A1C(&qword_186648, &qword_12BA68);
  v36 = sub_47A1C(&qword_186650, &qword_12BA70);
  v37 = sub_47A1C(&qword_186658, &unk_12BA78);
  v38 = v109;
  v39 = sub_48800(&qword_186660, &qword_186658, &unk_12BA78);
  *&v119 = v37;
  *(&v119 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v119 = v36;
  *(&v119 + 1) = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_4869C();
  *&v119 = v35;
  *(&v119 + 1) = &type metadata for String;
  *&v120 = v41;
  *(&v120 + 1) = v42;
  v43 = swift_getOpaqueTypeConformance2();
  *&v119 = v34;
  *(&v119 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_E4770(&qword_185780, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  sub_115DE0();
  result = sub_A79F0();
  v45 = *result;
  if (*result < 0.0)
  {
    __break(1u);
  }

  else
  {
    v116 = 0;
    v117 = v45;
    v46 = sub_115F00();
    v47 = v92;
    (*(*(v46 - 8) + 56))(v92, 1, 1, v46);
    v48 = sub_46F9C(&qword_1856C0, &qword_12A360);
    v49 = sub_48800(&qword_186668, &qword_186610, &qword_12BA28);
    v50 = sub_E47B8(&qword_1856D0, &qword_1856C0, &qword_12A360);
    v51 = v89;
    v52 = v88;
    sub_116970();
    sub_488C8(v47, &qword_184138, &qword_127D50);
    v53 = (*(v87 + 8))(v38, v52);
    __chkstk_darwin(v53);
    v54 = v104;
    *(&v86 - 2) = v104;
    v55 = sub_46F9C(&qword_1865E0, &unk_12B9F8);
    *&v119 = v52;
    *(&v119 + 1) = v48;
    *&v120 = v49;
    *(&v120 + 1) = v50;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v93;
    v59 = v91;
    sub_116910();
    v60 = (*(v90 + 8))(v51, v59);
    __chkstk_darwin(v60);
    *(&v86 - 2) = v54;
    v61 = sub_46F9C(&qword_186670, &qword_12BA88);
    *&v119 = v59;
    *(&v119 + 1) = v55;
    *&v120 = v56;
    *(&v120 + 1) = v57;
    v62 = swift_getOpaqueTypeConformance2();
    v63 = sub_E4630();
    *&v119 = &type metadata for PLBUIMinuteFormatStyle;
    *(&v119 + 1) = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v95;
    v66 = v96;
    sub_116930();
    (*(v94 + 8))(v58, v66);
    sub_E3168();
    v114 = v67;
    v115 = v68;
    *&v119 = v66;
    *(&v119 + 1) = v61;
    *&v120 = v62;
    *(&v120 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    sub_BD25C();
    v69 = v103;
    v70 = v98;
    sub_116AB0();

    (*(v97 + 8))(v65, v70);
    v71 = *(v54[3] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v54[3] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(v54[3] + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
    sub_116EA0();
    sub_116070();
    v72 = (v69 + *(v102 + 36));
    v73 = v120;
    *v72 = v119;
    v72[1] = v73;
    v72[2] = v121;
    v74 = *v54;
    type metadata accessor for BUIChartViewModel();
    sub_E4770(&qword_185190, type metadata accessor for BUIChartViewModel);
    sub_116130();
    swift_getKeyPath();
    sub_116140();

    v76 = v110;
    v77 = v111;
    v78 = v112;
    v79 = v113;
    v80 = v107;
    (v100)(v75);
    v81 = v105;
    sub_DA09C(v80, v105, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    sub_E5E20(v80, type metadata accessor for BUIChartViewData);
    v82 = *(v81 + *(v106 + 36));

    sub_E5E20(v81, type metadata accessor for BUIChartViewData.DataFor24Hrs);
    v83 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
    v84 = sub_D2208(v82, v83, &off_169350);

    v85 = sub_BD2B0(v84);

    sub_E48C4();
    sub_AB1AC(v76, v77, v78, v79, v85);

    return sub_488C8(v69, &qword_186630, &unk_12BA48);
  }

  return result;
}

uint64_t sub_E1DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v67 = a1;
  v4 = sub_46F9C(&qword_185318, &unk_12A0B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v53 - v6;
  v56 = sub_116390();
  v7 = *(v56 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v56);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_46F9C(&qword_186658, &unk_12BA78);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v59 = sub_46F9C(&qword_186650, &qword_12BA70);
  v55 = *(v59 - 8);
  v15 = *(v55 + 64);
  __chkstk_darwin(v59);
  v17 = &v53 - v16;
  v63 = sub_46F9C(&qword_186648, &qword_12BA68);
  v60 = *(v63 - 8);
  v18 = *(v60 + 64);
  __chkstk_darwin(v63);
  v58 = &v53 - v19;
  v64 = sub_46F9C(&qword_186640, &qword_12BA60);
  v62 = *(v64 - 8);
  v20 = *(v62 + 64);
  v21 = __chkstk_darwin(v64);
  v61 = &v53 - v22;
  v23 = *(a2 + 8);
  v24 = *(*v23 + 240);
  v25 = v24(v21);
  if ((v26 & 1) == 0)
  {
    v25 = (v24)(v25);
    if ((v27 & 1) == 0)
    {
      v28 = __OFSUB__(v25, *v67);
    }
  }

  v57 = &v53;
  __chkstk_darwin(v25);
  *(&v53 - 4) = v29;
  *(&v53 - 3) = a2;
  *(&v53 - 16) = v30;
  sub_46F9C(&qword_186800, &unk_12BDA0);
  sub_E57CC();
  sub_115DB0();
  v31 = *(a2 + 24);
  v32 = *(a2 + 16) / 24.0 * *(v31 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor24Hrs);
  v33 = *(v31 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor24Hrs);
  v34 = v56;
  (*(v7 + 104))(v10, enum case for RoundedCornerStyle.continuous(_:), v56);
  v35 = sub_48800(&qword_186660, &qword_186658, &unk_12BA78);
  sub_115AE0();
  (*(v7 + 8))(v10, v34);
  (*(v54 + 8))(v14, v11);
  sub_116370();
  v68 = v11;
  v69 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v58;
  v37 = v59;
  sub_115B10();

  (*(v55 + 8))(v17, v37);
  v39 = v65;
  sub_DA09C(v67, v65, type metadata accessor for BUIChartViewData.ScreenUsageElement);
  v40 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = (*(*v23 + 584))(v39);
  v43 = v42;
  sub_488C8(v39, &qword_185318, &unk_12A0B0);
  v72 = v41;
  v73 = v43;
  v68 = v37;
  v69 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_4869C();
  v46 = v61;
  v47 = v63;
  sub_115B00();

  (*(v60 + 8))(v38, v47);
  v48 = sub_59520();
  v49 = *v48;
  v50 = v48[1];

  v68 = v47;
  v69 = &type metadata for String;
  v70 = v44;
  v71 = v45;
  swift_getOpaqueTypeConformance2();
  v51 = v64;
  sub_115B30();

  return (*(v62 + 8))(v46, v51);
}

uint64_t sub_E2540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v101) = a3;
  v100 = a2;
  v111 = a1;
  v109 = a4;
  v4 = sub_46F9C(&qword_186810, &qword_12BDB0);
  v5 = *(v4 - 8);
  v108 = v4 - 8;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v107 = &v83 - v7;
  v8 = sub_46F9C(&qword_184418, &unk_1281A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v113 = &v83 - v10;
  v11 = sub_46F9C(&qword_1842B8, &qword_129030);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v83 - v13;
  v15 = sub_1158B0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_46F9C(&qword_1843C8, &qword_128140);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v110 = &v83 - v22;
  v112 = sub_115E00();
  v118 = *(v112 - 8);
  v23 = *(v118 + 64);
  __chkstk_darwin(v112);
  v103 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v96 = &v83 - v26;
  v114 = sub_46F9C(&qword_185950, &unk_12A540);
  v119 = *(v114 - 8);
  v27 = *(v119 + 64);
  __chkstk_darwin(v114);
  v102 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v91 = &v83 - v30;
  v31 = sub_46F9C(&qword_186818, &qword_12BDB8);
  v105 = *(v31 - 8);
  v106 = v31;
  v32 = *(v105 + 64);
  __chkstk_darwin(v31);
  v104 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v117 = &v83 - v35;
  __chkstk_darwin(v36);
  v115 = &v83 - v37;
  __chkstk_darwin(v38);
  v116 = &v83 - v39;
  v90 = sub_116370();
  v40 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v95 = v40[5];
  v99 = enum case for Calendar.Component.hour(_:);
  v41 = v16[13];
  v97 = v16 + 13;
  v98 = v41;
  v85 = v15;
  v41(v19);
  v93 = sub_1158D0();
  v42 = *(v93 - 8);
  v92 = *(v42 + 56);
  v94 = v42 + 56;
  v87 = v14;
  v92(v14, 1, 1, v93);
  v43 = v111;
  v84 = v19;
  sub_115C40();

  sub_488C8(v14, &qword_1842B8, &qword_129030);
  v44 = v16[1];
  v89 = v16 + 1;
  v90 = v44;
  v44(v19, v15);
  sub_116370();
  v120 = *(v43 + v40[6]);
  sub_115C60();

  v45 = *(v100 + 16) / 24.0;
  v46 = *(v100 + 24);
  v100 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor24Hrs;
  v47 = *(v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor24Hrs);
  v48 = v46;
  v83 = v46;
  v88 = sub_115760();
  v49 = v96;
  sub_115DF0();
  v50 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  v51 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor;
  if (v101)
  {
    v51 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  }

  v52 = *(v48 + *v51);
  if ((v101 & 1) == 0)
  {
    v50 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor;
  }

  v101 = v50;

  v120 = v52;
  v53 = v91;
  v54 = v112;
  sub_115AF0();

  v55 = *(v118 + 8);
  v118 += 8;
  v86 = v55;
  v55(v49, v54);
  sub_116370();
  v120 = v54;
  v121 = &type metadata for Color;
  v122 = &protocol witness table for BarMark;
  v123 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v56 = v114;
  sub_115B10();

  v57 = *(v119 + 8);
  v119 += 8;
  v96 = v57;
  (v57)(v53, v56);
  sub_116370();
  v58 = v84;
  v59 = v85;
  v98(v84, v99, v85);
  v60 = v87;
  v92(v87, 1, 1, v93);
  v61 = v111;
  sub_115C40();

  sub_488C8(v60, &qword_1842B8, &qword_129030);
  v90(v58, v59);
  sub_116370();
  v120 = *(v61 + v40[7]);
  sub_115C60();

  v62 = v83;
  v63 = v45 * *(v83 + v100);
  v64 = v103;
  sub_115DF0();
  v65 = *(v62 + *v101);

  v120 = v65;
  v66 = v102;
  v67 = v112;
  sub_115AF0();

  v86(v64, v67);
  sub_116370();
  v69 = v114;
  v68 = v115;
  sub_115B10();

  (v96)(v66, v69);
  v71 = v105;
  v70 = v106;
  v72 = *(v105 + 16);
  v74 = v116;
  v73 = v117;
  v72(v117, v116, v106);
  v75 = v104;
  v72(v104, v68, v70);
  v76 = v107;
  v72(v107, v73, v70);
  v77 = v108;
  v78 = *(v108 + 56);
  v72(&v76[v78], v75, v70);
  v79 = *(v71 + 32);
  v80 = v109;
  v79(v109, v76, v70);
  v79(v80 + *(v77 + 56), &v76[v78], v70);
  v81 = *(v71 + 8);
  v81(v115, v70);
  v81(v74, v70);
  v81(v75, v70);
  return (v81)(v117, v70);
}

void sub_E3168()
{
  v1 = v0;
  v2 = type metadata accessor for Battery24HrActivityChart(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for BUIChartViewData(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 8);
  v14 = *(*v13 + 136);
  v33 = *v13 + 136;
  v34 = v14;
  v14(v10);
  sub_DA09C(v7, v12, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  sub_B87CC();
  v32 = v15;
  sub_E5E20(v12, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v16 = sub_117170();
  v17 = BatteryUILocalization(v16);

  if (!v17)
  {
    goto LABEL_7;
  }

  sub_54960(0, &qword_185328, AXNumericDataAxisDescriptor_ptr);
  sub_1171B0();

  if (*sub_A79F0() < 0.0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v30[1] = v13;
  v18 = *(v1 + 88);
  sub_DA09C(v1, v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Battery24HrActivityChart);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = swift_allocObject();
  sub_E4688(v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Battery24HrActivityChart);

  v21 = sub_117580();
  v22 = sub_117170();
  v23 = BatteryUILocalization(v22);

  if (v23)
  {
    sub_1171B0();
  }

  sub_54960(0, &qword_1856F8, AXChartDescriptor_ptr);
  sub_46F9C(&qword_185700, &qword_12A3A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_12A2B0;
  v25 = v32;
  v26 = v21;
  v34();
  sub_DA09C(v7, v12, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_E5E20(v7, type metadata accessor for BUIChartViewData);
  sub_B8C44();
  v28 = v27;
  sub_E5E20(v12, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  *(v24 + 32) = v28;
  v29 = sub_1174F0();
  *(swift_allocObject() + 16) = v29;
  j_nullsub_4(sub_C1204);
}

unint64_t sub_E3644()
{
  result = qword_1864F8;
  if (!qword_1864F8)
  {
    sub_47A1C(&qword_1864F0, &qword_12B940);
    sub_47A1C(&qword_186500, &qword_12B948);
    sub_47A1C(&qword_186508, &qword_12B950);
    sub_47A1C(&qword_186480, &unk_12B8E0);
    sub_115BC0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_4869C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_E37EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1864F8);
  }

  return result;
}

unint64_t sub_E37EC()
{
  result = qword_186510;
  if (!qword_186510)
  {
    sub_47A1C(&qword_186518, &unk_12B958);
    sub_E4770(&qword_186520, type metadata accessor for BUIChartIconMark);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186510);
  }

  return result;
}

unint64_t sub_E38A0()
{
  result = qword_186528;
  if (!qword_186528)
  {
    sub_47A1C(&qword_1864E8, &qword_12B938);
    sub_E392C();
    sub_DB9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186528);
  }

  return result;
}

unint64_t sub_E392C()
{
  result = qword_186530;
  if (!qword_186530)
  {
    sub_47A1C(&qword_186498, &qword_12B8F8);
    sub_47A1C(&qword_1864A8, &qword_12B908);
    sub_115BC0();
    sub_DB9DC();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_1864C8, &qword_12B920);
    sub_48800(&qword_1864D0, &qword_1864C8, &qword_12B920);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186530);
  }

  return result;
}

uint64_t sub_E3A90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_E3B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_46F9C(&qword_185638, &qword_12A298);
      v7 = *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for BUIChartViewData.BatteryLevelsElement(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_E3CB0()
{
  result = qword_186550;
  if (!qword_186550)
  {
    sub_47A1C(&qword_186540, &qword_12B980);
    sub_E3D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186550);
  }

  return result;
}

unint64_t sub_E3D3C()
{
  result = qword_186558;
  if (!qword_186558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186558);
  }

  return result;
}

unint64_t sub_E3D98()
{
  result = qword_1865B0;
  if (!qword_1865B0)
  {
    sub_47A1C(&qword_1865A8, &qword_12B9D8);
    sub_E3E2C();
    sub_E3FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865B0);
  }

  return result;
}

unint64_t sub_E3E2C()
{
  result = qword_1865B8;
  if (!qword_1865B8)
  {
    sub_47A1C(&qword_1865C0, &qword_12B9E0);
    sub_47A1C(&qword_186560, &qword_12B990);
    sub_47A1C(&qword_186568, &qword_12B998);
    sub_47A1C(&qword_186570, &unk_12B9A0);
    sub_48800(&qword_186578, &qword_186570, &unk_12B9A0);
    sub_4869C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865B8);
  }

  return result;
}

unint64_t sub_E3FB4()
{
  result = qword_1865C8;
  if (!qword_1865C8)
  {
    sub_47A1C(&qword_1865D0, &unk_12B9E8);
    sub_E38A0();
    sub_E3A90(&qword_186538, &qword_1864E0, &qword_12B930, sub_E3644);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865C8);
  }

  return result;
}

double *sub_E4074@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for Battery24HrBatteryLevelChart(0) + 36));
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 16);
  return sub_EB590(a1);
}

uint64_t sub_E40CC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) + 48);
  v3 = sub_46F9C(&qword_185640, &unk_12A2C0);
  return sub_E9144(v3);
}

unint64_t sub_E412C()
{
  result = qword_1865F0;
  if (!qword_1865F0)
  {
    sub_47A1C(&qword_1865A0, &qword_12B9D0);
    sub_47A1C(&qword_186598, &qword_12B9C8);
    sub_47A1C(&qword_186590, &qword_12B9C0);
    sub_47A1C(&qword_1856E0, &qword_12A370);
    sub_47A1C(&qword_186588, &qword_12B9B8);
    sub_47A1C(&qword_1865E0, &unk_12B9F8);
    sub_47A1C(&qword_186580, &qword_12B9B0);
    sub_47A1C(&qword_184178, &qword_1285D0);
    sub_48800(&qword_1865D8, &qword_186580, &qword_12B9B0);
    sub_E47B8(&qword_184180, &qword_184178, &qword_1285D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_47A1C(&qword_183560, &qword_129070);
    sub_48800(&qword_183570, &qword_183560, &qword_129070);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_BD25C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1865F0);
  }

  return result;
}

uint64_t sub_E4418(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    sub_AC5F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E449C()
{

  return swift_deallocObject();
}

uint64_t sub_E44D4(double a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(*v2 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForMinutes);
  v4 = objc_allocWithZone(NSNumber);
  v5 = v3;
  v6 = [v4 initWithDouble:a1];
  v7 = [v5 stringFromNumber:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1171B0();

  return v8;
}

unint64_t sub_E45BC()
{
  result = qword_1902B0[0];
  if (!qword_1902B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1902B0);
  }

  return result;
}

unint64_t sub_E4630()
{
  result = qword_186608;
  if (!qword_186608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186608);
  }

  return result;
}

uint64_t sub_E4688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E46F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Battery24HrActivityChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_E1DE4(a1, v6, a2);
}

uint64_t sub_E4770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E47B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double *sub_E4820@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v2 + 48);
  v5 = *(v2 + 64);
  v6 = *(v2 + 80);
  return sub_EB590(a1);
}

uint64_t sub_E4860()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v2 = sub_46F9C(&qword_1867F8, &unk_12BD90);
  return sub_E9144(v2);
}

unint64_t sub_E48C4()
{
  result = qword_186678;
  if (!qword_186678)
  {
    sub_47A1C(&qword_186630, &unk_12BA48);
    sub_47A1C(&qword_186628, &qword_12BA40);
    sub_47A1C(&qword_186620, &qword_12BA38);
    sub_47A1C(&qword_186670, &qword_12BA88);
    sub_47A1C(&qword_186618, &qword_12BA30);
    sub_47A1C(&qword_1865E0, &unk_12B9F8);
    sub_47A1C(&qword_186610, &qword_12BA28);
    sub_47A1C(&qword_1856C0, &qword_12A360);
    sub_48800(&qword_186668, &qword_186610, &qword_12BA28);
    sub_E47B8(&qword_1856D0, &qword_1856C0, &qword_12A360);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_E4630();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_BD25C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186678);
  }

  return result;
}