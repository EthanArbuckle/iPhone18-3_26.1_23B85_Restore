uint64_t sub_1004DC970(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1004DC6A8(*a1);
  v5 = v4;
  if (v3 == sub_1004DC6A8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1004DC9F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1004DC6A8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004DCA5C()
{
  sub_1004DC6A8(*v0);
  String.hash(into:)();
}

Swift::Int sub_1004DCAB0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1004DC6A8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004DCB10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004E113C();
  *a1 = result;
  return result;
}

unint64_t sub_1004DCB40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1004DC6A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1004DCC48()
{
  v1 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v1 - 8);
  v80[0] = v80 - v2;
  v3 = sub_1001F0C48(&qword_10077F340);
  __chkstk_darwin(v3 - 8);
  v5 = v80 - v4;
  v6 = sub_1001F0C48(&qword_10077F348);
  __chkstk_darwin(v6 - 8);
  v8 = v80 - v7;
  v9 = sub_1001F0C48(&qword_10077F130);
  __chkstk_darwin(v9 - 8);
  v11 = v80 - v10;
  sub_1001F0C48(&qword_100785AC8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006AE680;
  *(v12 + 32) = 0;
  v80[1] = v12 + 32;
  if (*(v0 + 16))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
  }

  else
  {
    v13 = *(v0 + 8);
    v15 = sub_1004D9FC4();
    v14 = &type metadata for AppleItemID;
    v16 = sub_1004DA018();
  }

  *(v12 + 40) = v13;
  *(v12 + 64) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  *(v12 + 88) = 1;
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);
  if (v18 >> 60 == 15)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v22 = sub_100329ED8();
    v21 = &type metadata for Data;
    v23 = sub_100329F2C();
    v19 = v17;
    v20 = v18;
  }

  *(v12 + 96) = v19;
  *(v12 + 104) = v20;
  *(v12 + 120) = v21;
  *(v12 + 128) = v22;
  *(v12 + 136) = v23;
  *(v12 + 144) = 2;
  v24 = *(v0 + 40);
  *(v12 + 176) = &type metadata for DDMAutomaticUpdatePolicy;
  *(v12 + 184) = sub_1004E31CC();
  *(v12 + 192) = sub_1004E3220();
  *(v12 + 152) = v24;
  *(v12 + 200) = 3;
  v25 = *(v0 + 41);
  *(v12 + 232) = &type metadata for Bool;
  *(v12 + 240) = &protocol witness table for Bool;
  *(v12 + 248) = &protocol witness table for Bool;
  *(v12 + 208) = v25;
  *(v12 + 256) = 4;
  v26 = *(v0 + 48);
  v27 = *(v0 + 56);
  *(v12 + 288) = &type metadata for String;
  *(v12 + 296) = &protocol witness table for String;
  *(v12 + 304) = &protocol witness table for String;
  *(v12 + 264) = v26;
  *(v12 + 272) = v27;
  *(v12 + 312) = 5;
  v28 = type metadata accessor for DDMDeclaration(0);
  sub_100005934(v0 + v28[10], v11, &qword_10077F130);
  v29 = type metadata accessor for DDMCachedMetadata(0);
  if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
  {
    sub_1001DFECC(v17, v18);

    sub_1000032A8(v11, &qword_10077F130);
    *(v12 + 320) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
  }

  else
  {
    *(v12 + 344) = v29;
    *(v12 + 352) = sub_1004E2F40(&qword_100785B48, type metadata accessor for DDMCachedMetadata);
    *(v12 + 360) = sub_1004E2F40(&qword_100785B50, type metadata accessor for DDMCachedMetadata);
    v30 = sub_10020A748((v12 + 320));
    sub_1004E34F4(v11, v30, type metadata accessor for DDMCachedMetadata);
    sub_1001DFECC(v17, v18);
  }

  *(v12 + 368) = 6;
  v31 = *(v0 + v28[11]);
  if (v31 == 3)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    *(v12 + 376) = 0;
    *(v12 + 384) = 0;
    *(v12 + 392) = 0;
  }

  else
  {
    v33 = sub_1004E33C4();
    v34 = sub_1004E3418();
    *(v12 + 376) = v31;
    v32 = &type metadata for DDMCellularPolicy;
  }

  *(v12 + 400) = v32;
  *(v12 + 408) = v33;
  *(v12 + 416) = v34;
  *(v12 + 424) = 7;
  sub_100005934(v0 + v28[12], v8, &qword_10077F348);
  v35 = type metadata accessor for ComposedIdentifier();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_1000032A8(v8, &qword_10077F348);
    *(v12 + 432) = 0u;
    *(v12 + 448) = 0u;
    *(v12 + 464) = 0u;
  }

  else
  {
    *(v12 + 456) = v35;
    *(v12 + 464) = sub_1004E2F40(&qword_100785B28, &type metadata accessor for ComposedIdentifier);
    *(v12 + 472) = sub_1004E2F40(&qword_100785B30, &type metadata accessor for ComposedIdentifier);
    v37 = sub_10020A748((v12 + 432));
    (*(v36 + 32))(v37, v8, v35);
  }

  *(v12 + 480) = 8;
  v38 = (v0 + v28[13]);
  v39 = *v38;
  v40 = v38[1];
  *(v12 + 512) = &type metadata for String;
  *(v12 + 520) = &protocol witness table for String;
  *(v12 + 528) = &protocol witness table for String;
  *(v12 + 488) = v39;
  *(v12 + 496) = v40;
  *(v12 + 536) = 9;
  v41 = (v0 + v28[14]);
  v42 = *v41;
  v43 = v41[1];
  *(v12 + 568) = &type metadata for String;
  *(v12 + 576) = &protocol witness table for String;
  *(v12 + 584) = &protocol witness table for String;
  *(v12 + 544) = v42;
  *(v12 + 552) = v43;
  *(v12 + 592) = 10;
  v44 = *(v0 + v28[15]);
  *(v12 + 624) = &type metadata for DDMInstallTiming;
  *(v12 + 632) = sub_1004E3274();
  *(v12 + 640) = sub_1004E32C8();
  *(v12 + 600) = v44;
  *(v12 + 648) = 11;
  v45 = *(v0 + v28[16]);
  *(v12 + 680) = &type metadata for Bool;
  *(v12 + 688) = &protocol witness table for Bool;
  *(v12 + 696) = &protocol witness table for Bool;
  *(v12 + 656) = v45;
  *(v12 + 704) = 12;
  v46 = *(v0 + v28[17]);
  *(v12 + 736) = &type metadata for Bool;
  *(v12 + 744) = &protocol witness table for Bool;
  *(v12 + 752) = &protocol witness table for Bool;
  *(v12 + 712) = v46;
  *(v12 + 760) = 13;
  sub_100005934(v0 + v28[18], v5, &qword_10077F340);
  v47 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v5, 1, v47) == 1)
  {

    sub_1000032A8(v5, &qword_10077F340);
    *(v12 + 768) = 0u;
    *(v12 + 784) = 0u;
    *(v12 + 800) = 0u;
  }

  else
  {
    *(v12 + 792) = v47;
    *(v12 + 800) = sub_1004E2F40(&qword_100785B18, &type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum);
    *(v12 + 808) = sub_1004E2F40(&qword_100785B20, &type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum);
    v49 = sub_10020A748((v12 + 768));
    (*(v48 + 32))(v49, v5, v47);
  }

  *(v12 + 816) = 14;
  v50 = *(v0 + v28[19]);
  *(v12 + 848) = &type metadata for ManagedAppDeclaration.ManagementScope;
  *(v12 + 856) = sub_1004E331C();
  *(v12 + 864) = sub_1004E3370();
  *(v12 + 824) = v50;
  *(v12 + 872) = 15;
  v51 = v80[0];
  sub_100005934(v0 + v28[20], v80[0], &unk_1007809F0);
  v52 = type metadata accessor for URL();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_1000032A8(v51, &unk_1007809F0);
    *(v12 + 880) = 0u;
    *(v12 + 896) = 0u;
    *(v12 + 912) = 0u;
  }

  else
  {
    *(v12 + 904) = v52;
    *(v12 + 912) = sub_1004E2F40(&qword_100781BB8, &type metadata accessor for URL);
    *(v12 + 920) = sub_1004E2F40(&qword_100782898, &type metadata accessor for URL);
    v54 = sub_10020A748((v12 + 880));
    (*(v53 + 32))(v54, v51, v52);
  }

  *(v12 + 928) = 16;
  v55 = (v0 + v28[21]);
  v56 = *v55;
  v57 = v55[1];
  *(v12 + 960) = &type metadata for String;
  *(v12 + 968) = &protocol witness table for String;
  *(v12 + 976) = &protocol witness table for String;
  *(v12 + 936) = v56;
  *(v12 + 944) = v57;
  *(v12 + 984) = 17;
  v58 = (v0 + v28[22]);
  v59 = *v58;
  v60 = v58[1];
  *(v12 + 1016) = &type metadata for Persona;
  *(v12 + 1024) = sub_1004D94C8();
  *(v12 + 1032) = sub_1004D951C();
  *(v12 + 992) = v59;
  *(v12 + 1000) = v60;
  *(v12 + 1040) = 18;
  v61 = (v0 + v28[23]);
  if (v61[1])
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    *(v12 + 1056) = 0u;
  }

  else
  {
    v62 = *v61;
    v64 = sub_1003818F0();
    v63 = &type metadata for AppleVersionID;
    v65 = sub_1004D9F70();
  }

  *(v12 + 1048) = v62;
  *(v12 + 1072) = v63;
  *(v12 + 1080) = v64;
  *(v12 + 1088) = v65;
  *(v12 + 1096) = 19;
  v66 = v28[24];
  v67 = type metadata accessor for Platform();
  *(v12 + 1128) = v67;
  *(v12 + 1136) = sub_1004E2F40(&qword_1007853F0, &type metadata accessor for Platform);
  *(v12 + 1144) = sub_1004E2F40(&qword_1007853F8, &type metadata accessor for Platform);
  v68 = sub_10020A748((v12 + 1104));
  (*(*(v67 - 8) + 16))(v68, v0 + v66, v67);
  *(v12 + 1152) = 20;
  v69 = v28[25];
  v70 = type metadata accessor for DDMPurchaseMethod();
  *(v12 + 1184) = v70;
  *(v12 + 1192) = sub_1004E2F40(&qword_100785B00, &type metadata accessor for DDMPurchaseMethod);
  *(v12 + 1200) = sub_1004E2F40(&qword_100785B08, &type metadata accessor for DDMPurchaseMethod);
  v71 = sub_10020A748((v12 + 1160));
  (*(*(v70 - 8) + 16))(v71, v0 + v69, v70);
  *(v12 + 1208) = 21;
  v72 = (v0 + v28[26]);
  v73 = v72[1];
  if (v73)
  {
    v74 = *v72;
    v75 = &protocol witness table for String;
    v76 = &protocol witness table for String;
    v77 = &type metadata for String;
  }

  else
  {
    v74 = 0;
    v77 = 0;
    v76 = 0;
    v75 = 0;
    *(v12 + 1232) = 0;
  }

  *(v12 + 1216) = v74;
  *(v12 + 1224) = v73;
  *(v12 + 1240) = v77;
  *(v12 + 1248) = v76;
  *(v12 + 1256) = v75;

  sub_10026E620(v59, v60);

  v78 = sub_1005295A8(v12);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100785B10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1004E603C(v78);
}

uint64_t sub_1004DD8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = type metadata accessor for DDMPurchaseMethod();
  v66 = *(v67 - 8);
  v7 = __chkstk_darwin(v67);
  v65 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = v64 - v9;
  v10 = type metadata accessor for Platform();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v69 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v12 - 8);
  v70 = v64 - v13;
  v14 = sub_1001F0C48(&qword_10077F340);
  __chkstk_darwin(v14 - 8);
  v16 = v64 - v15;
  v17 = sub_1001F0C48(&qword_10077F348);
  __chkstk_darwin(v17 - 8);
  v19 = v64 - v18;
  *(a3 + 24) = xmmword_10069E8A0;
  v20 = type metadata accessor for DDMDeclaration(0);
  v21 = v20[10];
  v22 = type metadata accessor for DDMCachedMetadata(0);
  (*(*(v22 - 8) + 56))(a3 + v21, 1, 1, v22);
  v23 = v20[12];
  v24 = type metadata accessor for ComposedIdentifier();
  v25 = *(*(v24 - 8) + 56);
  v76 = v23;
  v25(a3 + v23, 1, 1, v24);
  v26 = v20[18];
  v27 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v28 = *(*(v27 - 8) + 56);
  v75 = v26;
  v28(a3 + v26, 1, 1, v27);
  v29 = v20[20];
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(a3 + v29, 1, 1, v30);
  v72 = v20[24];
  static Platform.current.getter();
  *a3 = a1;
  *(a3 + 8) = sub_1005EBAA0(0, a2);
  *(a3 + 16) = v31 & 1;
  os_unfair_lock_lock((a2 + 24));
  sub_1005EC72C((a2 + 16), 1, v80);
  if (v3)
  {
    os_unfair_lock_unlock((a2 + 24));
    __break(1u);
    result = sub_1000032A8(v77, &qword_100783A30);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((a2 + 24));
    sub_100005934(v80, &v78, &qword_1007854A0);
    v71 = v21;
    if (*(&v79 + 1) == 1)
    {
      sub_1000032A8(v80, &qword_1007854A0);
      v32 = 0;
      v33 = 0xF000000000000000;
    }

    else
    {
      v77[0] = v78;
      v77[1] = v79;
      sub_1005EFF50(v77, 1, &v81);
      sub_1000032A8(v77, &qword_100783A30);
      sub_1000032A8(v80, &qword_1007854A0);
      v33 = *(&v81 + 1);
      v32 = v81;
    }

    sub_10020B0E0(*(a3 + 24), *(a3 + 32));
    *(a3 + 24) = v32;
    *(a3 + 32) = v33;
    *(a3 + 41) = sub_1005E6FBC(3, a2) & 1;
    sub_1005E701C(4, a2);
    v34 = v20[11];
    *(a3 + 48) = v35;
    *(a3 + 56) = v36;
    *(a3 + v34) = sub_1005EB874(6, a2);
    sub_1005EB6A8(7, a2, v19);
    sub_10020AD90(v19, a3 + v76, &qword_10077F348);
    sub_1005E701C(8, a2);
    v64[3] = 1;
    v37 = (a3 + v20[13]);
    *v37 = v38;
    v37[1] = v39;
    sub_1005E701C(9, a2);
    v40 = (a3 + v20[14]);
    *v40 = v41;
    v40[1] = v42;
    sub_1005E72B8(10, a2);
    *(a3 + v20[15]) = v43 & 1;
    *(a3 + v20[16]) = sub_1005E6FBC(11, a2) & 1;
    *(a3 + v20[17]) = sub_1005E6FBC(12, a2) & 1;
    sub_1005EB3E8(13, a2, v16);
    sub_10020AD90(v16, a3 + v75, &qword_10077F340);
    sub_1005E753C(14, a2);
    *(a3 + v20[19]) = v44 & 1;
    v45 = v70;
    sub_1005EB0F4(15, a2, v70);
    sub_10020AD90(v45, a3 + v29, &unk_1007809F0);
    sub_1005E701C(16, a2);
    v46 = (a3 + v20[21]);
    *v46 = v47;
    v46[1] = v48;
    sub_1005E77A0(17, a2);
    v49 = (a3 + v20[22]);
    v50 = a3 + v20[23];
    *v49 = v51;
    v49[1] = v52;
    *v50 = sub_1005EAE44(18, a2);
    *(v50 + 8) = v53 & 1;
    sub_1005E7A5C(19, a2, v69);
    (*(v73 + 40))(a3 + v72, v69, v74);
    sub_1005E7D98(20, a2, v68);
    v54 = (a3 + v20[26]);
    (*(v66 + 32))(a3 + v20[25], v68, v67);
    *v54 = sub_1005EAB10(21, a2);
    v54[1] = v55;
    v56 = sub_1005EAAF8(2, a2);
    if (v56 == 3)
    {
      v57 = v66;
      v58 = v65;
      v59 = v67;
      (*(v66 + 104))(v65, enum case for DDMPurchaseMethod.manifest(_:), v67);
      v60 = static DDMPurchaseMethod.== infix(_:_:)();

      result = (*(v57 + 8))(v58, v59);
      if (v60)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }

      *(a3 + 40) = v62;
    }

    else
    {
      v63 = v56;

      *(a3 + 40) = v63;
    }
  }

  return result;
}

uint64_t sub_1004DE27C()
{
  String.hash(into:)();
}

unint64_t sub_1004DE3AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004E1190(*a1);
  *a2 = result;
  return result;
}

void sub_1004DE3DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4449574F52;
  v5 = 0xE500000000000000;
  v6 = 0x7972746E65;
  if (v2 != 5)
  {
    v6 = 1701869940;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEB0000000079616CLL;
  v8 = 0x7065725F7473616CLL;
  if (v2 != 3)
  {
    v8 = 0x635F79616C706572;
    v7 = 0xEC000000746E756FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0064695F6E6F69;
  if (v2 != 1)
  {
    v9 = 0xEF79656B5F6E6F69;
  }

  if (*v1)
  {
    v4 = 0x746172616C636564;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

id sub_1004DE540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, "initWithPersistentID:onConnection:", a3, a4);
}

id sub_1004DE5B4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, "initWithPropertyValues:onConnection:", isa, v8);

  return v11;
}

id sub_1004DE6A4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1004DE700(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004DE7A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004DE850()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ManagedApp();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004DE8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DDMJournalEntry();
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a1;
  sub_1005E65AC(1, a2);
  if (!v3)
  {
    a3[1] = v10;
    a3[2] = v11;
    sub_1005E65AC(2, a2);
    a3[3] = v12;
    a3[4] = v13;
    sub_1005E6804(5, a2, v9);
    v15 = type metadata accessor for DDMJournal(0);
    v16 = a3 + v15[8];
    sub_1004E34F4(v9, a3 + v15[7], type metadata accessor for DDMJournalEntry);
    *v16 = sub_1005EAA00(3u, a2);
    v16[8] = v17 & 1;
    sub_1005E6B44(4u, a2);
    *(a3 + v15[9]) = v18;
    sub_1005E6D7C(6u, a2);
  }
}

uint64_t sub_1004DEAB4()
{
  sub_1001F0C48(&qword_100785B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E990;
  *(inited + 32) = 1;
  v2 = v0[1];
  v3 = v0[2];
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 88) = 2;
  v4 = v0[3];
  v5 = v0[4];
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = &protocol witness table for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 144) = 5;
  v6 = type metadata accessor for DDMJournal(0);
  v7 = v6[7];
  *(inited + 176) = type metadata accessor for DDMJournalEntry();
  *(inited + 184) = sub_1004E2F40(&qword_100785B60, type metadata accessor for DDMJournalEntry);
  *(inited + 192) = sub_1004E2F40(&qword_100785B68, type metadata accessor for DDMJournalEntry);
  v8 = sub_10020A748((inited + 152));
  sub_1004E348C(v0 + v7, v8, type metadata accessor for DDMJournalEntry);
  *(inited + 200) = 3;
  v9 = v0 + v6[8];
  if (v9[8])
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    *(inited + 216) = 0;
    *(inited + 224) = 0;
  }

  else
  {
    v10 = *v9;
    v13 = &protocol witness table for Int64;
    v12 = &protocol witness table for Int64;
    v11 = &type metadata for Int64;
  }

  *(inited + 208) = v10;
  *(inited + 232) = v11;
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 256) = 4;
  v14 = *(v0 + v6[9]);
  *(inited + 288) = &type metadata for Int64;
  *(inited + 296) = &protocol witness table for Int64;
  *(inited + 304) = &protocol witness table for Int64;
  *(inited + 264) = v14;
  *(inited + 312) = 6;
  *(inited + 344) = &type metadata for DDMJournalType;
  *(inited + 352) = sub_100328B28();
  *(inited + 360) = sub_100328B7C();

  v15 = sub_100529338(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100785B70);
  swift_arrayDestroy();
  return sub_1004E566C(v15);
}

uint64_t sub_1004DED20(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1001F0C48(&qword_100785A98);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1001F0C48(&qword_100785AA0);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1001F0C48(&qword_100785AA8);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1001F0C48(&qword_100785AB0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006D8C(a1, a1[3]);
  sub_1004E3030();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1004E30D8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1004E3084();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1004E312C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1004DF0A0(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100785A38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_1004E2EEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for Date();
  sub_1004E2F40(&qword_100785A40, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DDMCachedMetadata(0);
    v11[14] = 1;
    type metadata accessor for ManagedApp();
    sub_1004E2F40(&qword_100785A48, &type metadata accessor for ManagedApp);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_1004E2FDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004DF2E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for ManagedApp();
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v23 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001F0C48(&qword_100785A10);
  v24 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v20 - v9;
  v11 = type metadata accessor for DDMCachedMetadata(0);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D8C(a1, a1[3]);
  sub_1004E2EEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v20 = v11;
  v21 = a1;
  v14 = v13;
  v15 = v26;
  v17 = v24;
  v16 = v25;
  v33 = 0;
  sub_1004E2F40(&qword_100785A20, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(v14, v27, v29);
  v32 = 1;
  sub_1004E2F40(&qword_100785A28, &type metadata accessor for ManagedApp);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v14 + *(v20 + 20), v7, v16);
  v30 = 2;
  sub_1004E2F88();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21;
  (*(v17 + 8))(v10, v28);
  *(v14 + *(v20 + 24)) = v31;
  sub_1004E348C(v14, v22, type metadata accessor for DDMCachedMetadata);
  sub_10000710C(v18);
  return sub_1004E355C(v14, type metadata accessor for DDMCachedMetadata);
}

uint64_t sub_1004DF7C0(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1001F0C48(&qword_100785938);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1001F0C48(&qword_100785940);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1001F0C48(&qword_100785948);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100006D8C(a1, a1[3]);
  sub_1004E1E48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1004E1E9C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1004E1EF0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1004DFA7C(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1001F0C48(&qword_1007859F0);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1001F0C48(&qword_1007859F8);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1001F0C48(&qword_100785A00);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1001F0C48(&qword_100785A08);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006D8C(a1, a1[3]);
  sub_1004E2D9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1004E2E44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1004E2DF0();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1004E2E98();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1004DFE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004E11DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004DFE3C(uint64_t a1)
{
  v2 = sub_1004E3030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004DFE78(uint64_t a1)
{
  v2 = sub_1004E3030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004DFEB4(uint64_t a1)
{
  v2 = sub_1004E312C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004DFEF0(uint64_t a1)
{
  v2 = sub_1004E312C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004DFF2C(uint64_t a1)
{
  v2 = sub_1004E30D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004DFF68(uint64_t a1)
{
  v2 = sub_1004E30D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004DFFA4(uint64_t a1)
{
  v2 = sub_1004E3084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004DFFE0(uint64_t a1)
{
  v2 = sub_1004E3084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E001C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004E12F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004E0068()
{
  result = qword_100785838;
  if (!qword_100785838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785838);
  }

  return result;
}

uint64_t sub_1004E00BC()
{
  v1 = 0x7041646568636163;
  if (*v0 != 1)
  {
    v1 = 0x6E616E65766F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4F646568636163;
  }
}

uint64_t sub_1004E0120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004E1864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004E0148(uint64_t a1)
{
  v2 = sub_1004E2EEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0184(uint64_t a1)
{
  v2 = sub_1004E2EEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E01F0()
{
  if (*v0)
  {
    return 0x6C616E6F6974706FLL;
  }

  else
  {
    return 0x6465726975716572;
  }
}

uint64_t sub_1004E0224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465726975716572 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1004E0300(uint64_t a1)
{
  v2 = sub_1004E1E48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E033C(uint64_t a1)
{
  v2 = sub_1004E1E48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0378(uint64_t a1)
{
  v2 = sub_1004E1E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E03B4(uint64_t a1)
{
  v2 = sub_1004E1E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E03F0(uint64_t a1)
{
  v2 = sub_1004E1EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E042C(uint64_t a1)
{
  v2 = sub_1004E1EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0468@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004E198C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1004E04B4()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x74655365726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_1004E0504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004E1F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004E052C(uint64_t a1)
{
  v2 = sub_1004E2D9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0568(uint64_t a1)
{
  v2 = sub_1004E2D9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E05A4(uint64_t a1)
{
  v2 = sub_1004E2E44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E05E0(uint64_t a1)
{
  v2 = sub_1004E2E44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E061C(uint64_t a1)
{
  v2 = sub_1004E2E98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0658(uint64_t a1)
{
  v2 = sub_1004E2E98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0694(uint64_t a1)
{
  v2 = sub_1004E2DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E06D0(uint64_t a1)
{
  v2 = sub_1004E2DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E070C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004E2058(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004E0758()
{
  result = qword_100785840;
  if (!qword_100785840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785840);
  }

  return result;
}

uint64_t sub_1004E07AC(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1001F0C48(&qword_100785990);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1001F0C48(&qword_100785998);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1001F0C48(&qword_1007859A0);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1001F0C48(&qword_1007859A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006D8C(a1, a1[3]);
  sub_1004E2C4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1004E2CF4();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1004E2CA0();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1004E2D48();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1004E0B2C(uint64_t a1)
{
  v2 = sub_1004E2D48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0B68(uint64_t a1)
{
  v2 = sub_1004E2D48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0BA4()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x74655365726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_1004E0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004E25C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004E0C28(uint64_t a1)
{
  v2 = sub_1004E2C4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0C64(uint64_t a1)
{
  v2 = sub_1004E2C4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0CA0(uint64_t a1)
{
  v2 = sub_1004E2CF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0CDC(uint64_t a1)
{
  v2 = sub_1004E2CF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0D18(uint64_t a1)
{
  v2 = sub_1004E2CA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E0D54(uint64_t a1)
{
  v2 = sub_1004E2CA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E0D90@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004E26DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004E0DDC()
{
  result = qword_100785848;
  if (!qword_100785848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785848);
  }

  return result;
}

unint64_t sub_1004E0E34()
{
  result = qword_100785850;
  if (!qword_100785850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785850);
  }

  return result;
}

unint64_t sub_1004E0E8C()
{
  result = qword_100785858;
  if (!qword_100785858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785858);
  }

  return result;
}

unint64_t sub_1004E0EE4()
{
  result = qword_100785890;
  if (!qword_100785890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785890);
  }

  return result;
}

unint64_t sub_1004E0F78()
{
  result = qword_1007858C8;
  if (!qword_1007858C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007858C8);
  }

  return result;
}

unint64_t sub_1004E0FCC()
{
  result = qword_1007858D0;
  if (!qword_1007858D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007858D0);
  }

  return result;
}

unint64_t sub_1004E1020()
{
  result = qword_1007858D8;
  if (!qword_1007858D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007858D8);
  }

  return result;
}

unint64_t sub_1004E1078()
{
  result = qword_1007858E0;
  if (!qword_1007858E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007858E0);
  }

  return result;
}

uint64_t sub_1004E113C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1004E1190(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A9D0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004E11DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x495041616964656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1004E12F4(void *a1)
{
  v31 = sub_1001F0C48(&qword_100785A58);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1001F0C48(&qword_100785A60);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1001F0C48(&qword_100785A68);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1001F0C48(&qword_100785A70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100006D8C(a1, v12);
  sub_1004E3030();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1005CD740();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1004E30D8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000710C(v35);
          return v9;
        }

        v40 = 2;
        sub_1004E3084();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1004E312C();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1001F0C48(&qword_1007896A0) + 48);
    *v22 = &type metadata for DDMCachedMetadata.Provenance;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000710C(v35);
  return v9;
}

uint64_t sub_1004E1864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4F646568636163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7041646568636163 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1004E198C(void *a1)
{
  v2 = sub_1001F0C48(&qword_100785908);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1001F0C48(&qword_100785910);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1001F0C48(&qword_100785918);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_1004E1E48();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000710C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1005CD744();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1001F0C48(&qword_1007896A0);
    *v19 = &type metadata for DDMInstallTiming;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000710C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1004E1E9C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1004E1EF0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000710C(v26);
  return v31 & 1;
}

unint64_t sub_1004E1E48()
{
  result = qword_100785920;
  if (!qword_100785920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785920);
  }

  return result;
}

unint64_t sub_1004E1E9C()
{
  result = qword_100785928;
  if (!qword_100785928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785928);
  }

  return result;
}

unint64_t sub_1004E1EF0()
{
  result = qword_100785930;
  if (!qword_100785930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785930);
  }

  return result;
}

uint64_t sub_1004E1F44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28271 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74655365726F7473 && a2 == 0xEC000000676E6974)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1004E2058(void *a1)
{
  v31 = sub_1001F0C48(&qword_1007859B0);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1001F0C48(&qword_1007859B8);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1001F0C48(&qword_1007859C0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1001F0C48(&qword_1007859C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100006D8C(a1, v12);
  sub_1004E2D9C();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1005CD740();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1004E2E44();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000710C(v35);
          return v9;
        }

        v40 = 2;
        sub_1004E2DF0();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1004E2E98();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1001F0C48(&qword_1007896A0) + 48);
    *v22 = &type metadata for DDMAutomaticUpdatePolicy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000710C(v35);
  return v9;
}

uint64_t sub_1004E25C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961776C61 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74655365726F7473 && a2 == 0xEC000000676E6974)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1004E26DC(void *a1)
{
  v31 = sub_1001F0C48(&qword_100785950);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1001F0C48(&qword_100785958);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1001F0C48(&qword_100785960);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1001F0C48(&qword_100785968);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100006D8C(a1, v12);
  sub_1004E2C4C();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1005CD740();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1004E2CF4();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000710C(v35);
          return v9;
        }

        v40 = 2;
        sub_1004E2CA0();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1004E2D48();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1001F0C48(&qword_1007896A0) + 48);
    *v22 = &type metadata for DDMCellularPolicy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000710C(v35);
  return v9;
}

unint64_t sub_1004E2C4C()
{
  result = qword_100785970;
  if (!qword_100785970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785970);
  }

  return result;
}

unint64_t sub_1004E2CA0()
{
  result = qword_100785978;
  if (!qword_100785978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785978);
  }

  return result;
}

unint64_t sub_1004E2CF4()
{
  result = qword_100785980;
  if (!qword_100785980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785980);
  }

  return result;
}

unint64_t sub_1004E2D48()
{
  result = qword_100785988;
  if (!qword_100785988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785988);
  }

  return result;
}

unint64_t sub_1004E2D9C()
{
  result = qword_1007859D0;
  if (!qword_1007859D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007859D0);
  }

  return result;
}

unint64_t sub_1004E2DF0()
{
  result = qword_1007859D8;
  if (!qword_1007859D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007859D8);
  }

  return result;
}

unint64_t sub_1004E2E44()
{
  result = qword_1007859E0;
  if (!qword_1007859E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007859E0);
  }

  return result;
}

unint64_t sub_1004E2E98()
{
  result = qword_1007859E8;
  if (!qword_1007859E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007859E8);
  }

  return result;
}

unint64_t sub_1004E2EEC()
{
  result = qword_100785A18;
  if (!qword_100785A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A18);
  }

  return result;
}

uint64_t sub_1004E2F40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004E2F88()
{
  result = qword_100785A30;
  if (!qword_100785A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A30);
  }

  return result;
}

unint64_t sub_1004E2FDC()
{
  result = qword_100785A50;
  if (!qword_100785A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A50);
  }

  return result;
}

unint64_t sub_1004E3030()
{
  result = qword_100785A78;
  if (!qword_100785A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A78);
  }

  return result;
}

unint64_t sub_1004E3084()
{
  result = qword_100785A80;
  if (!qword_100785A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A80);
  }

  return result;
}

unint64_t sub_1004E30D8()
{
  result = qword_100785A88;
  if (!qword_100785A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A88);
  }

  return result;
}

unint64_t sub_1004E312C()
{
  result = qword_100785A90;
  if (!qword_100785A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785A90);
  }

  return result;
}

unint64_t sub_1004E3180()
{
  result = qword_100785AB8;
  if (!qword_100785AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100785AB8);
  }

  return result;
}

unint64_t sub_1004E31CC()
{
  result = qword_100785AD0;
  if (!qword_100785AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785AD0);
  }

  return result;
}

unint64_t sub_1004E3220()
{
  result = qword_100785AD8;
  if (!qword_100785AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785AD8);
  }

  return result;
}

unint64_t sub_1004E3274()
{
  result = qword_100785AE0;
  if (!qword_100785AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785AE0);
  }

  return result;
}

unint64_t sub_1004E32C8()
{
  result = qword_100785AE8;
  if (!qword_100785AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785AE8);
  }

  return result;
}

unint64_t sub_1004E331C()
{
  result = qword_100785AF0;
  if (!qword_100785AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785AF0);
  }

  return result;
}

unint64_t sub_1004E3370()
{
  result = qword_100785AF8;
  if (!qword_100785AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785AF8);
  }

  return result;
}

unint64_t sub_1004E33C4()
{
  result = qword_100785B38;
  if (!qword_100785B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785B38);
  }

  return result;
}

unint64_t sub_1004E3418()
{
  result = qword_100785B40;
  if (!qword_100785B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785B40);
  }

  return result;
}

uint64_t sub_1004E348C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E34F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E355C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1004E3604()
{
  type metadata accessor for DDMJournalEntry();
  if (v0 <= 0x3F)
  {
    sub_10000585C(319, &unk_100785BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for DDMDeclarationEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DDMDeclarationEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004E3930()
{
  result = qword_100785C28;
  if (!qword_100785C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C28);
  }

  return result;
}

unint64_t sub_1004E3988()
{
  result = qword_100785C30;
  if (!qword_100785C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C30);
  }

  return result;
}

unint64_t sub_1004E39E0()
{
  result = qword_100785C38;
  if (!qword_100785C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C38);
  }

  return result;
}

unint64_t sub_1004E3A38()
{
  result = qword_100785C40;
  if (!qword_100785C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C40);
  }

  return result;
}

unint64_t sub_1004E3A90()
{
  result = qword_100785C48;
  if (!qword_100785C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C48);
  }

  return result;
}

unint64_t sub_1004E3AE8()
{
  result = qword_100785C50;
  if (!qword_100785C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C50);
  }

  return result;
}

uint64_t sub_1004E3B6C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004E3BC4()
{
  result = qword_100785C98;
  if (!qword_100785C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C98);
  }

  return result;
}

unint64_t sub_1004E3C1C()
{
  result = qword_100785CA0;
  if (!qword_100785CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785CA0);
  }

  return result;
}

uint64_t sub_1004E3CB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1004E3D04()
{
  result = qword_100785CD8;
  if (!qword_100785CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785CD8);
  }

  return result;
}

unint64_t sub_1004E3D58()
{
  result = qword_100785CE0;
  if (!qword_100785CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785CE0);
  }

  return result;
}

unint64_t sub_1004E3DAC()
{
  result = qword_100785CE8;
  if (!qword_100785CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785CE8);
  }

  return result;
}

unint64_t sub_1004E3E04()
{
  result = qword_100785CF0;
  if (!qword_100785CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785CF0);
  }

  return result;
}

unint64_t sub_1004E3E5C()
{
  result = qword_100785CF8;
  if (!qword_100785CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785CF8);
  }

  return result;
}

unint64_t sub_1004E3EB4()
{
  result = qword_100785D00;
  if (!qword_100785D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D00);
  }

  return result;
}

unint64_t sub_1004E3F0C()
{
  result = qword_100785D08;
  if (!qword_100785D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D08);
  }

  return result;
}

unint64_t sub_1004E3F64()
{
  result = qword_100785D10;
  if (!qword_100785D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D10);
  }

  return result;
}

unint64_t sub_1004E3FBC()
{
  result = qword_100785D18;
  if (!qword_100785D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D18);
  }

  return result;
}

unint64_t sub_1004E4014()
{
  result = qword_100785D20;
  if (!qword_100785D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D20);
  }

  return result;
}

unint64_t sub_1004E406C()
{
  result = qword_100785D28;
  if (!qword_100785D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D28);
  }

  return result;
}

unint64_t sub_1004E40C4()
{
  result = qword_100785D30;
  if (!qword_100785D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D30);
  }

  return result;
}

unint64_t sub_1004E411C()
{
  result = qword_100785D38;
  if (!qword_100785D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D38);
  }

  return result;
}

unint64_t sub_1004E4174()
{
  result = qword_100785D40;
  if (!qword_100785D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D40);
  }

  return result;
}

unint64_t sub_1004E41CC()
{
  result = qword_100785D48;
  if (!qword_100785D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D48);
  }

  return result;
}

unint64_t sub_1004E4224()
{
  result = qword_100785D50;
  if (!qword_100785D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D50);
  }

  return result;
}

unint64_t sub_1004E427C()
{
  result = qword_100785D58;
  if (!qword_100785D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D58);
  }

  return result;
}

unint64_t sub_1004E42D4()
{
  result = qword_100785D60;
  if (!qword_100785D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D60);
  }

  return result;
}

unint64_t sub_1004E432C()
{
  result = qword_100785D68;
  if (!qword_100785D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D68);
  }

  return result;
}

unint64_t sub_1004E4384()
{
  result = qword_100785D70;
  if (!qword_100785D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D70);
  }

  return result;
}

unint64_t sub_1004E43DC()
{
  result = qword_100785D78;
  if (!qword_100785D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D78);
  }

  return result;
}

unint64_t sub_1004E4434()
{
  result = qword_100785D80;
  if (!qword_100785D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D80);
  }

  return result;
}

unint64_t sub_1004E448C()
{
  result = qword_100785D88;
  if (!qword_100785D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D88);
  }

  return result;
}

unint64_t sub_1004E44E4()
{
  result = qword_100785D90;
  if (!qword_100785D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D90);
  }

  return result;
}

unint64_t sub_1004E453C()
{
  result = qword_100785D98;
  if (!qword_100785D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785D98);
  }

  return result;
}

unint64_t sub_1004E4594()
{
  result = qword_100785DA0;
  if (!qword_100785DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DA0);
  }

  return result;
}

unint64_t sub_1004E45EC()
{
  result = qword_100785DA8;
  if (!qword_100785DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DA8);
  }

  return result;
}

unint64_t sub_1004E4644()
{
  result = qword_100785DB0;
  if (!qword_100785DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DB0);
  }

  return result;
}

unint64_t sub_1004E469C()
{
  result = qword_100785DB8;
  if (!qword_100785DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DB8);
  }

  return result;
}

unint64_t sub_1004E46F4()
{
  result = qword_100785DC0;
  if (!qword_100785DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DC0);
  }

  return result;
}

unint64_t sub_1004E474C()
{
  result = qword_100785DC8;
  if (!qword_100785DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DC8);
  }

  return result;
}

unint64_t sub_1004E47A4()
{
  result = qword_100785DD0;
  if (!qword_100785DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DD0);
  }

  return result;
}

unint64_t sub_1004E47FC()
{
  result = qword_100785DD8;
  if (!qword_100785DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DD8);
  }

  return result;
}

unint64_t sub_1004E4854()
{
  result = qword_100785DE0;
  if (!qword_100785DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DE0);
  }

  return result;
}

unint64_t sub_1004E48AC()
{
  result = qword_100785DE8;
  if (!qword_100785DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785DE8);
  }

  return result;
}

uint64_t sub_1004E4900(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x695F656C646E7562;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x5F65736E6563696CLL;
    v4 = 0xEA00000000006469;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x75705F7465737361;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF64695F63696C62;
  }

  v7 = 0x695F656C646E7562;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x5F65736E6563696CLL;
    v8 = 0xEA00000000006469;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x75705F7465737361;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF64695F63696C62;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1004E4A1C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004E4AD4()
{
  String.hash(into:)();
}

Swift::Int sub_1004E4B78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004E4C2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004E5268(*a1);
  *a2 = result;
  return result;
}

void sub_1004E4C5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64695F63696C62;
  v4 = 0xE900000000000064;
  v5 = 0x695F656C646E7562;
  if (v2 != 1)
  {
    v5 = 0x5F65736E6563696CLL;
    v4 = 0xEA00000000006469;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x75705F7465737361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1004E4E7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LicenseStorageEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004E4EE8()
{
  result = qword_100785E18;
  if (!qword_100785E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E18);
  }

  return result;
}

unint64_t sub_1004E4F3C(void *a1)
{
  a1[1] = sub_1004E4F74();
  a1[2] = sub_1004E4FC8();
  result = sub_1004E501C();
  a1[3] = result;
  return result;
}

unint64_t sub_1004E4F74()
{
  result = qword_100785E50;
  if (!qword_100785E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E50);
  }

  return result;
}

unint64_t sub_1004E4FC8()
{
  result = qword_100785E58;
  if (!qword_100785E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E58);
  }

  return result;
}

unint64_t sub_1004E501C()
{
  result = qword_100785E60;
  if (!qword_100785E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E60);
  }

  return result;
}

unint64_t sub_1004E5074()
{
  result = qword_100785E68;
  if (!qword_100785E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E68);
  }

  return result;
}

unint64_t sub_1004E50CC()
{
  result = qword_100785E70;
  if (!qword_100785E70)
  {
    sub_1001F76D0(&qword_100785E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E70);
  }

  return result;
}

uint64_t sub_1004E5130()
{
  sub_1001F0C48(&qword_100785E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A4050;
  *(inited + 32) = 0;
  v2 = *(v0 + 8);
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = v2;
  *(inited + 88) = 1;
  v8 = *(v0 + 24);
  v3 = v8;
  v9 = v2;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = &protocol witness table for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 96) = v3;
  *(inited + 144) = 2;
  v4 = *(v0 + 40);
  *(inited + 176) = &type metadata for UInt64;
  *(inited + 184) = &protocol witness table for UInt64;
  *(inited + 192) = &protocol witness table for UInt64;
  *(inited + 152) = v4;
  sub_100222DF8(&v9, v7);
  sub_100222DF8(&v8, v7);
  v5 = sub_100529708(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100785E88);
  swift_arrayDestroy();
  return sub_1004E64A4(v5);
}

unint64_t sub_1004E5268(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075AAC0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004E52EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(a1 + 36);
    v29 = v2;
    v30 = v7;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
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
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v11 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v34, &qword_100785498);
      v31[0] = v11;
      v32[0] = v34[0];
      v32[1] = v34[1];
      v32[2] = v34[2];
      *&v35 = sub_1004E8090(v36, v11, v32);
      *(&v35 + 1) = v12;
      sub_1000032A8(v31, &qword_100785F00);
      v13 = v3;
      v37 = v3;
      v14 = v3[2];
      v15 = v13[3];
      if (v14 >= v15 >> 1)
      {
        sub_100526490((v15 > 1), v14 + 1, 1);
        v13 = v37;
      }

      v13[2] = v14 + 1;
      v16 = &v13[6 * v14];
      v17 = v35;
      v18 = v36[1];
      v16[3] = v36[0];
      v16[4] = v18;
      v16[2] = v17;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_28;
      }

      v19 = *(v4 + 8 * v10);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      v3 = v13;
      v7 = v30;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v29;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v9 = v29;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100323C00(v5, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v30, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
    }

    while (v6 != v9);

    if (!v3[2])
    {
      goto LABEL_23;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_23:
      v26 = &_swiftEmptyDictionarySingleton;
      goto LABEL_24;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v26 = static _DictionaryStorage.allocate(capacity:)();
LABEL_24:
  v33 = v26;
  sub_1004EB210(v3, 1, &v33);
  v27 = v33;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v27;
  return result;
}

uint64_t sub_1004E566C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v29 = *(a1 + 36);
    v28 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
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

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_42;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_43;
      }

      v10 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v36, &qword_100785498);
      v33[0] = v10;
      v34[0] = v36[0];
      v34[1] = v36[1];
      v34[2] = v36[2];
      if (v10 <= 2)
      {
        if (v10)
        {
          v11 = 0x746172616C636564;
          if (v10 == 1)
          {
            v12 = 0xEE0064695F6E6F69;
          }

          else
          {
            v12 = 0xEF79656B5F6E6F69;
          }
        }

        else
        {
          v12 = 0xE500000000000000;
          v11 = 0x4449574F52;
        }
      }

      else if (v10 > 4)
      {
        if (v10 == 5)
        {
          v12 = 0xE500000000000000;
          v11 = 0x7972746E65;
        }

        else
        {
          v12 = 0xE400000000000000;
          v11 = 1701869940;
        }
      }

      else if (v10 == 3)
      {
        v11 = 0x7065725F7473616CLL;
        v12 = 0xEB0000000079616CLL;
      }

      else
      {
        v11 = 0x635F79616C706572;
        v12 = 0xEC000000746E756FLL;
      }

      sub_100005934(v34, &v31, &qword_100785498);
      if (v32)
      {
        sub_1002733F8(&v31, v30);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v30, &v38);
        sub_10000710C(v30);
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      *&v37 = v11;
      *(&v37 + 1) = v12;
      sub_1000032A8(v33, &qword_100785F30);
      v40 = v3;
      v14 = v3[2];
      v13 = v3[3];
      if (v14 >= v13 >> 1)
      {
        sub_100526490((v13 > 1), v14 + 1, 1);
        v3 = v40;
      }

      v3[2] = v14 + 1;
      v15 = &v3[6 * v14];
      v16 = v37;
      v17 = v39;
      v15[3] = v38;
      v15[4] = v17;
      v15[2] = v16;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_44;
      }

      v4 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_45;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_46;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v28;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v8 = v28;
        v22 = (a1 + 72 + 8 * v9);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_100323C00(v5, v29, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v29, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v8);

    if (!v3[2])
    {
      goto LABEL_39;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_39:
      v25 = &_swiftEmptyDictionarySingleton;
      goto LABEL_40;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v25 = static _DictionaryStorage.allocate(capacity:)();
LABEL_40:
  v35 = v25;
  sub_1004EB210(v3, 1, &v35);
  v26 = v35;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v26;
  return result;
}

uint64_t sub_1004E5B64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v28 = *(a1 + 36);
    v27 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_38;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_39;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v35, &qword_100785498);
      v32[0] = v9;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v33[2] = v35[2];
      if (v9 <= 1)
      {
        if (v9)
        {
          v10 = 0xD000000000000012;
          v11 = "distributor_priority_list";
        }

        else
        {
          v10 = 0xD000000000000019;
          v11 = "";
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xD000000000000016;
        v11 = "single_instance_id";
      }

      else if (v9 == 3)
      {
        v10 = 0xD000000000000013;
        v11 = "disabled_install_sheet";
      }

      else
      {
        v10 = 0xD000000000000010;
        v11 = "approved_developers";
      }

      sub_100005934(v33, &v30, &qword_100785498);
      if (v31)
      {
        sub_1002733F8(&v30, v29);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v29, &v37);
        sub_10000710C(v29);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      *&v36 = v10;
      *(&v36 + 1) = v11 | 0x8000000000000000;
      sub_1000032A8(v32, &qword_100785F40);
      v39 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100526490((v12 > 1), v13 + 1, 1);
        v3 = v39;
      }

      v3[2] = v13 + 1;
      v14 = &v3[6 * v13];
      v15 = v36;
      v16 = v38;
      v14[3] = v37;
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_40;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_41;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_42;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100323C00(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v27);

    if (!v3[2])
    {
      goto LABEL_35;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_35:
      v24 = _swiftEmptyDictionarySingleton;
      goto LABEL_36;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_36:
  v34 = v24;
  sub_1004EB210(v3, 1, &v34);
  v25 = v34;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

uint64_t sub_1004E6064(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_100526490(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    v6 = _HashTable.startBucket.getter();
    v7 = a1;
    v8 = 0;
    v34 = *(a1 + 36);
    v30 = v3;
    do
    {
      if (v6 < 0 || v6 >= 1 << *(v7 + 32))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (v34 != *(v7 + 36))
      {
        goto LABEL_30;
      }

      v11 = *(*(v7 + 48) + v6);
      sub_100005934(*(v7 + 56) + 48 * v6, v41, &qword_100785498);
      v38[0] = v11;
      v39[0] = v41[0];
      v39[1] = v41[1];
      v39[2] = v41[2];
      v12 = a2(v11);
      v14 = v13;
      sub_100005934(v39, &v36, &qword_100785498);
      if (v37)
      {
        sub_1002733F8(&v36, v35);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v35, &v43);
        sub_10000710C(v35);
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      *&v42 = v12;
      *(&v42 + 1) = v14;
      sub_1000032A8(v38, a3);
      v45 = v4;
      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        sub_100526490((v15 > 1), v16 + 1, 1);
        v4 = v45;
      }

      v4[2] = v16 + 1;
      v17 = &v4[6 * v16];
      v18 = v42;
      v19 = v44;
      v17[3] = v43;
      v17[4] = v19;
      v17[2] = v18;
      v7 = a1;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_31;
      }

      v5 = a1 + 64;
      v20 = *(a1 + 64 + 8 * v10);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_32;
      }

      if (v34 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (a1 + 72 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_100323C00(v6, v34, 0);
            v7 = a1;
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_100323C00(v6, v34, 0);
        v7 = a1;
      }

LABEL_4:
      ++v8;
      v6 = v9;
    }

    while (v8 != v30);

    if (!v4[2])
    {
      goto LABEL_26;
    }
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_26:
      v27 = &_swiftEmptyDictionarySingleton;
      goto LABEL_27;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v27 = static _DictionaryStorage.allocate(capacity:)();
LABEL_27:
  v40 = v27;
  sub_1004EB210(v4, 1, &v40);
  v28 = v40;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v28;
  return result;
}

uint64_t sub_1004E64A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v28 = *(a1 + 36);
    v27 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_34;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_35;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v35, &qword_100785498);
      v32[0] = v9;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v33[2] = v35[2];
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = 0xE900000000000064;
          v11 = 0x695F656C646E7562;
        }

        else
        {
          v10 = 0xEA00000000006469;
          v11 = 0x5F65736E6563696CLL;
        }
      }

      else
      {
        v11 = 0x75705F7465737361;
        v10 = 0xEF64695F63696C62;
      }

      sub_100005934(v33, &v30, &qword_100785498);
      if (v31)
      {
        sub_1002733F8(&v30, v29);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v29, &v37);
        sub_10000710C(v29);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      *&v36 = v11;
      *(&v36 + 1) = v10;
      sub_1000032A8(v32, &qword_100786080);
      v39 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100526490((v12 > 1), v13 + 1, 1);
        v3 = v39;
      }

      v3[2] = v13 + 1;
      v14 = &v3[6 * v13];
      v15 = v36;
      v16 = v38;
      v14[3] = v37;
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_36;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_37;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_38;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100323C00(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v27);

    if (!v3[2])
    {
      goto LABEL_31;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_31:
      v24 = _swiftEmptyDictionarySingleton;
      goto LABEL_32;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_32:
  v34 = v24;
  sub_1004EB210(v3, 1, &v34);
  v25 = v34;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

uint64_t sub_1004E6928(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v28 = *(a1 + 36);
    v27 = v2;
    while (1)
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_47;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_48;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v35, &qword_100785498);
      v32[0] = v9;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v33[2] = v35[2];
      if (v9 <= 3)
      {
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = 0xE900000000000064;
            v11 = 0x695F656C646E7562;
          }

          else
          {
            v11 = 0x765F656C646E7562;
            v10 = 0xEE006E6F69737265;
          }
        }

        else
        {
          if (!v9)
          {
            v11 = 0x5F746E756F636361;
LABEL_25:
            v10 = 0xEA00000000006469;
            goto LABEL_27;
          }

          v11 = 0x726168735F707061;
          v10 = 0xED00006C72755F65;
        }
      }

      else if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v10 = 0xE700000000000000;
          v11 = 0x6C72755F706461;
        }

        else
        {
          v11 = 0xD00000000000001ALL;
          v10 = 0x80000001006C2BB0;
        }
      }

      else if (v9 == 6)
      {
        v11 = 0xD000000000000014;
        v10 = 0x80000001006C3EA0;
      }

      else
      {
        if (v9 != 7)
        {
          v11 = 0x5F6E6F6973726576;
          goto LABEL_25;
        }

        v10 = 0xE700000000000000;
        v11 = 0x64695F6D657469;
      }

LABEL_27:
      sub_100005934(v33, &v30, &qword_100785498);
      if (v31)
      {
        sub_1002733F8(&v30, v29);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v29, &v37);
        sub_10000710C(v29);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      *&v36 = v11;
      *(&v36 + 1) = v10;
      sub_1000032A8(v32, &qword_100785F38);
      v39 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100526490((v12 > 1), v13 + 1, 1);
        v3 = v39;
      }

      v3[2] = v13 + 1;
      v14 = &v3[6 * v13];
      v15 = v36;
      v16 = v38;
      v14[3] = v37;
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_49;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_50;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_51;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100323C00(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v27)
      {

        if (!v3[2])
        {
          goto LABEL_44;
        }

LABEL_42:
        sub_1001F0C48(&qword_10077E998);
        v24 = static _DictionaryStorage.allocate(capacity:)();
        goto LABEL_45;
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_42;
  }

LABEL_44:
  v24 = &_swiftEmptyDictionarySingleton;
LABEL_45:
  v34 = v24;
  sub_1004EB210(v3, 1, &v34);
  v25 = v34;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

uint64_t sub_1004E6E8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v28 = *(a1 + 36);
    v27 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_38;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_39;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v35, &qword_100785498);
      v32[0] = v9;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v33[2] = v35[2];
      if (v9 <= 1)
      {
        v10 = 0x746172616C636564;
        if (v9)
        {
          v11 = 0xEF79656B5F6E6F69;
        }

        else
        {
          v11 = 0xEE0064695F6E6F69;
        }
      }

      else if (v9 == 2)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6574617473;
      }

      else if (v9 == 3)
      {
        v10 = 0x735F657461647075;
        v11 = 0xEC00000065746174;
      }

      else
      {
        v11 = 0xE700000000000000;
        v10 = 0x736E6F73616572;
      }

      sub_100005934(v33, &v30, &qword_100785498);
      if (v31)
      {
        sub_1002733F8(&v30, v29);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v29, &v37);
        sub_10000710C(v29);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      *&v36 = v10;
      *(&v36 + 1) = v11;
      sub_1000032A8(v32, &qword_100785F20);
      v39 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100526490((v12 > 1), v13 + 1, 1);
        v3 = v39;
      }

      v3[2] = v13 + 1;
      v14 = &v3[6 * v13];
      v15 = v36;
      v16 = v38;
      v14[3] = v37;
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_40;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_41;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_42;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100323C00(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v27);

    if (!v3[2])
    {
      goto LABEL_35;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_35:
      v24 = &_swiftEmptyDictionarySingleton;
      goto LABEL_36;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_36:
  v34 = v24;
  sub_1004EB210(v3, 1, &v34);
  v25 = v34;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

uint64_t sub_1004E7348(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v34 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v25 = *(a1 + 36);
    v24 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      sub_100005934(*(a1 + 56) + 48 * v5, v30, &qword_100785498);
      v29[0] = v30[0];
      v29[1] = v30[1];
      v29[2] = v30[2];
      sub_100005934(v29, &v27, &qword_100785498);
      if (v28)
      {
        sub_1002733F8(&v27, v26);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v26, &v32);
        sub_10000710C(v26);
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      *&v31 = 0x695F656C646E7562;
      *(&v31 + 1) = 0xE900000000000064;
      sub_1000032A8(v29, &qword_100785F18);
      v34 = v3;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        sub_100526490((v9 > 1), v10 + 1, 1);
        v3 = v34;
      }

      v3[2] = v10 + 1;
      v11 = &v3[6 * v10];
      v12 = v31;
      v13 = v33;
      v11[3] = v32;
      v11[4] = v13;
      v11[2] = v12;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_31;
      }

      v4 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v8);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_32;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 72 + 8 * v8);
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_100323C00(v5, v25, 0);
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v25, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v24);

    if (!v3[2])
    {
      goto LABEL_26;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_26:
      v21 = _swiftEmptyDictionarySingleton;
      goto LABEL_27;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v21 = static _DictionaryStorage.allocate(capacity:)();
LABEL_27:
  *&v31 = v21;
  sub_1004EB210(v3, 1, &v31);
  v22 = v31;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v22;
  return result;
}

uint64_t sub_1004E774C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v28 = *(a1 + 36);
    v27 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_38;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_39;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v35, &qword_100785498);
      v32[0] = v9;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v33[2] = v35[2];
      if (v9 <= 1)
      {
        if (v9)
        {
          v10 = 0xD000000000000011;
          v11 = 0x80000001006C3E30;
        }

        else
        {
          v10 = 0x7562697274736964;
          v11 = 0xEE0064695F726F74;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xD000000000000010;
        v11 = 0x80000001006C3E50;
      }

      else if (v9 == 3)
      {
        v10 = 0xD000000000000010;
        v11 = 0x80000001006C3E70;
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7107189;
      }

      sub_100005934(v33, &v30, &qword_100785498);
      if (v31)
      {
        sub_1002733F8(&v30, v29);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v29, &v37);
        sub_10000710C(v29);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      *&v36 = v10;
      *(&v36 + 1) = v11;
      sub_1000032A8(v32, &qword_100785F10);
      v39 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100526490((v12 > 1), v13 + 1, 1);
        v3 = v39;
      }

      v3[2] = v13 + 1;
      v14 = &v3[6 * v13];
      v15 = v36;
      v16 = v38;
      v14[3] = v37;
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_40;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_41;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_42;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100323C00(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v27);

    if (!v3[2])
    {
      goto LABEL_35;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_35:
      v24 = &_swiftEmptyDictionarySingleton;
      goto LABEL_36;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_36:
  v34 = v24;
  sub_1004EB210(v3, 1, &v34);
  v25 = v34;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

uint64_t sub_1004E7C24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_100526490(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v28 = *(a1 + 36);
    v27 = v2;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(a1 + 32))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);

        swift_unexpectedError();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_34;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_35;
      }

      v9 = *(*(a1 + 48) + v5);
      sub_100005934(*(a1 + 56) + 48 * v5, v35, &qword_100785498);
      v32[0] = v9;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v33[2] = v35[2];
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = 0xEA00000000007265;
          v11 = 0x696669746E656469;
        }

        else
        {
          v10 = 0xE700000000000000;
          v11 = 0x6E6F6973726576;
        }
      }

      else
      {
        v10 = 0xE400000000000000;
        v11 = 1701869940;
      }

      sub_100005934(v33, &v30, &qword_100785498);
      if (v31)
      {
        sub_1002733F8(&v30, v29);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        SQLiteEncodeValue(_:using:)(v29, &v37);
        sub_10000710C(v29);
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      *&v36 = v11;
      *(&v36 + 1) = v10;
      sub_1000032A8(v32, &qword_100785F48);
      v39 = v3;
      v13 = v3[2];
      v12 = v3[3];
      if (v13 >= v12 >> 1)
      {
        sub_100526490((v12 > 1), v13 + 1, 1);
        v3 = v39;
      }

      v3[2] = v13 + 1;
      v14 = &v3[6 * v13];
      v15 = v36;
      v16 = v38;
      v14[3] = v37;
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_36;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_37;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_38;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_100323C00(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_100323C00(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
    }

    while (v6 != v27);

    if (!v3[2])
    {
      goto LABEL_31;
    }
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_31:
      v24 = _swiftEmptyDictionarySingleton;
      goto LABEL_32;
    }
  }

  sub_1001F0C48(&qword_10077E998);
  v24 = static _DictionaryStorage.allocate(capacity:)();
LABEL_32:
  v34 = v24;
  sub_1004EB210(v3, 1, &v34);
  v25 = v34;
  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

unint64_t sub_1004E8090(uint64_t a1, char a2, uint64_t a3)
{
  v3 = 0x666F5F7365747962;
  switch(a2)
  {
    case 1:
      v3 = 0x645F726568706963;
      break;
    case 2:
      v3 = 0x73736572706D6F63;
      break;
    case 3:
      v3 = 0x6F72705F61746164;
      break;
    case 4:
      v3 = 0x747365676964;
      break;
    case 5:
      v3 = 0x636F6C5F6B736964;
      break;
    case 6:
      v3 = 0x6974707972636E65;
      break;
    case 7:
      v3 = 0x74616D726F66;
      break;
    case 8:
      v3 = 0x6B636F6C625F7369;
      break;
    case 9:
      v3 = 0xD000000000000012;
      break;
    case 10:
      v3 = 0x695F746E65726170;
      break;
    case 11:
      v3 = 0x5F74736575716572;
      break;
    case 12:
      v3 = 0x7265696669726576;
      break;
    case 13:
      v3 = 1701869940;
      break;
    case 14:
      v3 = 0xD000000000000011;
      break;
    case 15:
      v3 = 7107189;
      break;
    case 16:
      v3 = 0x746E6169726176;
      break;
    default:
      break;
  }

  sub_100005934(a3, &v7, &qword_100785498);
  if (v8)
  {
    sub_1002733F8(&v7, v6);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    SQLiteEncodeValue(_:using:)(v6, a1);
    sub_10000710C(v6);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return v3;
}

uint64_t sub_1004E838C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for AppPackage();
  v15 = v14[8];
  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 56);
  v75 = v15;
  v18 = a3 + v15;
  v19 = v6;
  v20 = a3;
  v17(v18, 1, 1, v16);
  v21 = *(v19 + 56);
  v68 = v14[10];
  v21(a3 + v68, 1, 1, v5);
  v64 = v14;
  v22 = (a3 + v14[21]);
  v22[2] = 0u;
  v22[3] = 0u;
  *v22 = 0u;
  v22[1] = 0u;
  v66 = v22;
  *a3 = a1;
  v23 = v65;
  v24 = v67;
  sub_1005E5448(0, v65);
  if (v24)
  {
    v67 = v24;

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v26 = v13;
    *(a3 + 8) = v25;
    sub_1005EA7C0(1, v23, v71);
    v27 = v71[1];
    *(a3 + 16) = v71[0];
    *(a3 + 32) = v27;
    *(a3 + 48) = v71[2];
    sub_1005E5448(2, v23);
    v55 = v19;
    v56 = v5;
    v37 = v64;
    v38 = (a3 + v64[9]);
    *(a3 + 64) = v39;
    sub_1005EA618(3, v23, v26);
    sub_10020AD90(v26, a3 + v75, &unk_100780A00);
    sub_1005EA7C0(4, v23, &v72);
    v62 = *(&v72 + 1);
    v60 = v72;
    v61 = *(&v73 + 1);
    v57 = v74;
    v58 = v73;
    v59 = *(&v74 + 1);
    v40 = v73;
    *v38 = v72;
    v38[1] = v40;
    v38[2] = v74;
    sub_1005EA0A0(5, v23, v10);
    sub_10020AD90(v10, a3 + v68, &unk_1007809F0);
    sub_1005E5480(6, v23, v69);
    v41 = (a3 + v37[11]);
    v42 = v69[5];
    v41[4] = v69[4];
    v41[5] = v42;
    v41[6] = v69[6];
    v43 = v69[1];
    *v41 = v69[0];
    v41[1] = v43;
    v44 = v69[3];
    v41[2] = v69[2];
    v41[3] = v44;
    sub_1005E5864(7, v23);
    v30 = v62;
    *(v20 + v37[12]) = v45 & 1;
    *(v20 + v37[13]) = sub_1005E5AE8(8, v23) & 1;
    *(v20 + v37[14]) = sub_1005E5AE8(9, v23) & 1;
    sub_1005E5D90(10, v23);
    *(v20 + v37[15]) = v46;
    sub_1005E5448(11, v23);
    *(v20 + v37[16]) = v47;
    sub_1005E6014(13, v23);
    v67 = 0;
    v49 = v20 + v37[18];
    *(v20 + v37[17]) = v48 & 1;
    *v49 = sub_1005EA248(14, v23);
    *(v49 + 8) = v50 & 1;
    v51 = v63;
    v52 = v67;
    sub_1005E6278(15, v23, v63);
    v67 = v52;
    if (!v52)
    {
      v53 = (v20 + v64[20]);
      (*(v55 + 32))(v20 + v64[19], v51, v56);
      *v53 = sub_1005EA074(16, v23);
      v53[1] = v54;
      sub_1005E9F64(12, v23, v70);

      return sub_10020AD90(v70, v66, &qword_10077E968);
    }

    sub_1000032A8(v71, &unk_1007803F0);
    v28 = 1;
    v29 = v60;
    v31 = v58;
  }

  sub_1000032A8(v20 + v75, &unk_100780A00);
  sub_10035CD9C(v29, v30, v31);
  sub_1000032A8(v20 + v68, &unk_1007809F0);
  if (v28)
  {
    v32 = (v20 + v64[11]);
    v33 = v32[5];
    v70[4] = v32[4];
    v70[5] = v33;
    v70[6] = v32[6];
    v34 = v32[1];
    v70[0] = *v32;
    v70[1] = v34;
    v35 = v32[3];
    v70[2] = v32[2];
    v70[3] = v35;
    sub_1004EACB0(v70);
  }

  return sub_1000032A8(v66, &qword_10077E968);
}

uint64_t sub_1004E89B4()
{
  v1 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v1 - 8);
  v77 = &v73 - v2;
  v3 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v73 - v4;
  sub_1001F0C48(&qword_100785EF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006A00B0;
  *(v6 + 32) = 0;
  v78 = v6 + 32;
  *(v6 + 64) = &type metadata for UInt;
  *(v6 + 72) = &protocol witness table for UInt;
  *(v6 + 80) = &protocol witness table for UInt;
  v7 = v0[2];
  *(v6 + 40) = v0[1];
  *(v6 + 88) = 1;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[7];
  v79 = v10;
  v80 = v7;
  v75 = v8;
  v76 = v9;
  if (v9 == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  else
  {
    v73 = v12;
    v74 = v5;
    v17 = v11;
    v18 = v7;
    v19 = v10;
    v15 = sub_1004EAD04();
    v16 = sub_1004EAF68();
    v13 = swift_allocObject();
    *(v13 + 16) = v18;
    v20 = v17;
    *(v13 + 24) = v8;
    *(v13 + 32) = v9;
    *(v13 + 40) = v19;
    v21 = v73;
    v5 = v74;
    *(v13 + 48) = v20 & 1;
    *(v13 + 56) = v21;
    v14 = &type metadata for BlockDigest;
  }

  *(v6 + 96) = v13;
  *(v6 + 120) = v14;
  *(v6 + 128) = v15;
  *(v6 + 136) = v16;
  *(v6 + 144) = 2;
  v22 = v0[8];
  *(v6 + 176) = &type metadata for UInt;
  *(v6 + 184) = &protocol witness table for UInt;
  *(v6 + 192) = &protocol witness table for UInt;
  *(v6 + 152) = v22;
  *(v6 + 200) = 3;
  v23 = type metadata accessor for AppPackage();
  sub_100005934(v0 + v23[8], v5, &unk_100780A00);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v5, 1, v24) == 1)
  {
    sub_10047D0D4(v80, v75, v76);
    sub_1000032A8(v5, &unk_100780A00);
    *(v6 + 208) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 240) = 0u;
  }

  else
  {
    *(v6 + 232) = v24;
    *(v6 + 240) = sub_1004EAFBC(&qword_100784988, &type metadata accessor for UUID);
    *(v6 + 248) = sub_1004EAFBC(&qword_1007849A0, &type metadata accessor for UUID);
    v26 = sub_10020A748((v6 + 208));
    (*(v25 + 32))(v26, v5, v24);
    sub_10047D0D4(v80, v75, v76);
  }

  *(v6 + 256) = 4;
  v27 = (v0 + v23[9]);
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v32 = v27[4];
  v79 = v27[5];
  v80 = v32;
  v75 = v28;
  v76 = v31;
  if (v30 == 1)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    *(v6 + 272) = 0;
    *(v6 + 280) = 0;
  }

  else
  {
    v37 = v28;
    v35 = sub_1004EAD04();
    v36 = sub_1004EAF68();
    v33 = swift_allocObject();
    *(v33 + 16) = v37;
    *(v33 + 24) = v29;
    *(v33 + 32) = v30;
    *(v33 + 40) = v31;
    *(v33 + 48) = v80 & 1;
    *(v33 + 56) = v79;
    v34 = &type metadata for BlockDigest;
  }

  *(v6 + 264) = v33;
  *(v6 + 288) = v34;
  *(v6 + 296) = v35;
  *(v6 + 304) = v36;
  *(v6 + 312) = 5;
  v38 = v77;
  sub_100005934(v0 + v23[10], v77, &unk_1007809F0);
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_10047D0D4(v75, v29, v30);
    sub_1000032A8(v38, &unk_1007809F0);
    *(v6 + 320) = 0u;
    *(v6 + 336) = 0u;
    *(v6 + 352) = 0u;
  }

  else
  {
    *(v6 + 344) = v39;
    *(v6 + 352) = sub_1004EAFBC(&qword_100781BB8, &type metadata accessor for URL);
    *(v6 + 360) = sub_1004EAFBC(&qword_100782898, &type metadata accessor for URL);
    v41 = sub_10020A748((v6 + 320));
    (*(v40 + 32))(v41, v38, v39);
    sub_10047D0D4(v75, v29, v30);
  }

  *(v6 + 368) = 6;
  v42 = (v0 + v23[11]);
  v43 = v42[5];
  v85[4] = v42[4];
  v85[5] = v43;
  v85[6] = v42[6];
  v44 = v42[1];
  v85[0] = *v42;
  v85[1] = v44;
  v45 = v42[3];
  v85[2] = v42[2];
  v85[3] = v45;
  *(v6 + 400) = &type metadata for AppPackageEncryption;
  *(v6 + 408) = sub_1004EAD58();
  *(v6 + 416) = sub_1004EB004();
  v46 = swift_allocObject();
  *(v6 + 376) = v46;
  v47 = v42[5];
  v46[5] = v42[4];
  v46[6] = v47;
  v46[7] = v42[6];
  v48 = v42[1];
  v46[1] = *v42;
  v46[2] = v48;
  v49 = v42[3];
  v46[3] = v42[2];
  v46[4] = v49;
  *(v6 + 424) = 7;
  LOBYTE(v42) = *(v0 + v23[12]);
  *(v6 + 456) = &type metadata for AppPackageFormat;
  *(v6 + 464) = sub_1004EADAC();
  *(v6 + 472) = sub_1004EB058();
  *(v6 + 432) = v42;
  *(v6 + 480) = 8;
  v50 = *(v0 + v23[13]);
  *(v6 + 512) = &type metadata for Bool;
  *(v6 + 520) = &protocol witness table for Bool;
  *(v6 + 528) = &protocol witness table for Bool;
  *(v6 + 488) = v50;
  *(v6 + 536) = 9;
  v51 = *(v0 + v23[14]);
  *(v6 + 568) = &type metadata for Bool;
  *(v6 + 576) = &protocol witness table for Bool;
  *(v6 + 584) = &protocol witness table for Bool;
  *(v6 + 544) = v51;
  *(v6 + 592) = 10;
  v52 = *(v0 + v23[15]);
  *(v6 + 624) = &type metadata for Int64;
  *(v6 + 632) = &protocol witness table for Int64;
  *(v6 + 640) = &protocol witness table for Int64;
  *(v6 + 600) = v52;
  *(v6 + 648) = 11;
  v53 = *(v0 + v23[16]);
  *(v6 + 680) = &type metadata for UInt;
  *(v6 + 688) = &protocol witness table for UInt;
  *(v6 + 696) = &protocol witness table for UInt;
  *(v6 + 656) = v53;
  *(v6 + 704) = 13;
  LOBYTE(v42) = *(v0 + v23[17]);
  *(v6 + 736) = &type metadata for AppPackageType;
  *(v6 + 744) = sub_1004EAE00();
  *(v6 + 752) = sub_1004EB0AC();
  *(v6 + 712) = v42;
  *(v6 + 760) = 14;
  v54 = v0 + v23[18];
  if (v54[8])
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(v6 + 776) = 0u;
  }

  else
  {
    v55 = *v54;
    v58 = &protocol witness table for UInt;
    v57 = &protocol witness table for UInt;
    v56 = &type metadata for UInt;
  }

  *(v6 + 768) = v55;
  *(v6 + 792) = v56;
  *(v6 + 800) = v57;
  *(v6 + 808) = v58;
  *(v6 + 816) = 15;
  v59 = v23[19];
  *(v6 + 848) = v39;
  *(v6 + 856) = sub_1004EAFBC(&qword_100781BB8, &type metadata accessor for URL);
  *(v6 + 864) = sub_1004EAFBC(&qword_100782898, &type metadata accessor for URL);
  v60 = sub_10020A748((v6 + 824));
  (*(v40 + 16))(v60, v0 + v59, v39);
  *(v6 + 872) = 16;
  v61 = (v0 + v23[20]);
  v62 = v61[1];
  if (v62)
  {
    v63 = &protocol witness table for String;
    v64 = *v61;
    v65 = &protocol witness table for String;
    v66 = v62;
    v67 = &type metadata for String;
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v63 = 0;
    *(v6 + 896) = 0;
  }

  *(v6 + 880) = v64;
  *(v6 + 888) = v66;
  *(v6 + 904) = v67;
  *(v6 + 912) = v65;
  *(v6 + 920) = v63;
  *(v6 + 928) = 12;
  sub_100005934(v0 + v23[21], v82, &qword_10077E968);
  if (v83)
  {
    *(v6 + 960) = &type metadata for BlockVerifierState;
    *(v6 + 968) = sub_1004EAE54();
    *(v6 + 976) = sub_1004EB100();
    v68 = swift_allocObject();
    *(v6 + 936) = v68;
    v69 = v82[1];
    v68[1] = v82[0];
    v68[2] = v69;
    v70 = v84;
    v68[3] = v83;
    v68[4] = v70;
    sub_100361F08(v85, v81);
  }

  else
  {
    sub_100361F08(v85, v81);

    sub_1000032A8(v82, &qword_10077E968);
    *(v6 + 952) = 0u;
    *(v6 + 968) = 0u;
    *(v6 + 936) = 0u;
  }

  v71 = sub_1005291D8(v6);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100786F00);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_1004E52EC(v71);
}

unint64_t sub_1004E936C(char a1)
{
  result = 0x6573616261746164;
  switch(a1)
  {
    case 1:
      result = 0x66664F7365747962;
      break;
    case 2:
      result = 0x6944726568706963;
      break;
    case 3:
      result = 0x73736572706D6F63;
      break;
    case 4:
      result = 0x6D6F725061746164;
      break;
    case 5:
      result = 0x747365676964;
      break;
    case 6:
      result = 0x61636F4C6B736964;
      break;
    case 7:
      result = 0x6974707972636E65;
      break;
    case 8:
      result = 0x74616D726F66;
      break;
    case 9:
      result = 0x656B636F6C427369;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x4449746E65726170;
      break;
    case 12:
      result = 0x4374736575716572;
      break;
    case 13:
      result = 1701869940;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 7107189;
      break;
    case 16:
      result = 0x746E6169726176;
      break;
    case 17:
      result = 0x7265696669726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1004E9580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004EBAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004E95B4(uint64_t a1)
{
  v2 = sub_1004EAC5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E95F0(uint64_t a1)
{
  v2 = sub_1004EAC5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004E962C(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100785EC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1004EAC5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v36) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v36) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = v3[2];
    v36 = v3[1];
    v37 = v9;
    v38 = v3[3];
    LOBYTE(v29) = 2;
    sub_1004EAF68();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v36) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = type metadata accessor for AppPackage();
    v44 = v24[8];
    LOBYTE(v36) = 4;
    type metadata accessor for UUID();
    sub_1004EAFBC(&qword_1007849A0, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v24[9]);
    v11 = v10[1];
    v36 = *v10;
    v37 = v11;
    v38 = v10[2];
    LOBYTE(v29) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v44 = v24[10];
    v43 = 6;
    v12 = type metadata accessor for URL();
    v13 = sub_1004EAFBC(&qword_100782898, &type metadata accessor for URL);
    v44 = v12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23[1] = v13;
    v14 = (v3 + v24[11]);
    v15 = v14[4];
    v16 = v14[2];
    v39 = v14[3];
    v40 = v15;
    v17 = v14[4];
    v18 = v14[6];
    v41 = v14[5];
    v42 = v18;
    v19 = *v14;
    v20 = v14[2];
    v37 = v14[1];
    v38 = v20;
    v21 = *v14;
    v33 = v17;
    v34 = v41;
    v35 = v14[6];
    v36 = v21;
    v29 = v19;
    v30 = v37;
    v31 = v16;
    v32 = v39;
    v28 = 7;
    sub_100361F08(&v36, v27);
    sub_1004EB004();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_1004EACB0(v27);
    v26 = *(v3 + v24[12]);
    v25 = 8;
    sub_1004EB058();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + v24[17]);
    v25 = 13;
    sub_1004EB0AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = 15;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = 17;
    sub_1004EB100();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004E9C90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v96 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v6 - 8);
  v102 = v88 - v7;
  v8 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v8 - 8);
  v10 = v88 - v9;
  v101 = sub_1001F0C48(&qword_100785E90);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v12 = v88 - v11;
  v13 = type metadata accessor for AppPackage();
  v14 = __chkstk_darwin(v13);
  v16 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 32);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 56);
  v110 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = *(v13 + 40);
  v97 = v4;
  v21 = *(v4 + 56);
  v108 = v20;
  v98 = v3;
  v21(v16 + v20, 1, 1, v3);
  v109 = v13;
  v22 = *(v13 + 84);
  v122 = v16;
  v23 = v16 + v22;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v106 = v23;
  v24 = a1[3];
  v107 = a1;
  sub_100006D8C(a1, v24);
  sub_1004EAC5C();
  v25 = v12;
  v26 = v111;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    v111 = v26;
LABEL_3:
    LODWORD(v100) = 0;
    LODWORD(v101) = 0;
    v102 = 0;
    v105 = 0;
    v103 = 0;
    v104 = 0;
    v99 = 0;
    v27 = 0;
    v28 = 1;
    v29 = 1;
LABEL_4:
    v30 = v110;
    goto LABEL_6;
  }

  v31 = v10;
  v32 = v102;
  v33 = v100;
  LOBYTE(v115) = 0;
  v34 = v101;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v122;
  *v122 = v35;
  LOBYTE(v115) = 1;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v111 = 0;
  v36[1] = v37;
  v112[0] = 2;
  v45 = sub_1004EAD04();
  v46 = v111;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v46)
  {
    v111 = v46;
    (*(v33 + 8))(v25, v34);
    goto LABEL_3;
  }

  v105 = v45;
  v47 = *(&v115 + 1);
  v48 = v116;
  v49 = v117;
  v99 = v115;
  v36[2] = v115;
  v36[3] = v47;
  v94 = v47;
  v93 = v48;
  *(v36 + 2) = v48;
  v92 = v49;
  *(v36 + 3) = v49;
  LOBYTE(v115) = 3;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  v111 = 0;
  v91 = *(&v49 + 1);
  v122[8] = v50;
  LOBYTE(v115) = 4;
  sub_1004EAFBC(&qword_100784988, &type metadata accessor for UUID);
  v51 = v111;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v111 = v51;
  if (v51 || (sub_10020AD90(v31, v122 + v110, &unk_100780A00), v112[0] = 5, v52 = v111, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), v111 = v52, v53 = v109, v52))
  {
    (*(v33 + 8))(v25, v34);
    LODWORD(v100) = 0;
    LODWORD(v101) = 0;
    v102 = 0;
    v105 = 0;
    v103 = 0;
    v104 = 0;
    v28 = 1;
    v27 = v94;
    v29 = v93;
    goto LABEL_4;
  }

  v54 = v122 + v109[9];
  v55 = *(&v115 + 1);
  v56 = v116;
  v57 = v117;
  v105 = v115;
  *v54 = v115;
  *(v54 + 1) = v55;
  v103 = v55;
  v89 = v56;
  *(v54 + 1) = v56;
  v104 = *(&v56 + 1);
  v88[1] = v57;
  *(v54 + 2) = v57;
  v90 = *(&v57 + 1);
  LOBYTE(v115) = 6;
  sub_1004EAFBC(&qword_100781BB8, &type metadata accessor for URL);
  v58 = v111;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v111 = v58;
  v59 = v94;
  if (v58 || (sub_10020AD90(v32, v122 + v108, &unk_1007809F0), v114 = 7, sub_1004EAD58(), v60 = v111, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v111 = v60) != 0))
  {
    (*(v33 + 8))(v25, v101);
    LODWORD(v100) = 0;
    v27 = v59;
    LODWORD(v101) = 0;
    v102 = 0;
LABEL_19:
    v29 = v93;
    v28 = v89;
    goto LABEL_4;
  }

  v27 = v59;
  v61 = (v122 + v53[11]);
  v62 = v120;
  v61[4] = v119;
  v61[5] = v62;
  v61[6] = v121;
  v63 = v116;
  *v61 = v115;
  v61[1] = v63;
  v64 = v118;
  v61[2] = v117;
  v61[3] = v64;
  v113 = 8;
  sub_1004EADAC();
  v65 = v111;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v111 = v65;
  if (v65)
  {
    (*(v33 + 8))(v25, v101);
    LODWORD(v101) = 0;
    v102 = 0;
    LODWORD(v100) = 1;
    goto LABEL_19;
  }

  *(v122 + v109[12]) = v112[0];
  v112[0] = 9;
  v66 = v111;
  v67 = KeyedDecodingContainer.decode(_:forKey:)();
  v111 = v66;
  if (v66 || (*(v122 + v109[13]) = v67 & 1, v112[0] = 10, v68 = v111, v69 = KeyedDecodingContainer.decode(_:forKey:)(), (v111 = v68) != 0) || (*(v122 + v109[14]) = v69 & 1, v112[0] = 11, v70 = v111, v71 = KeyedDecodingContainer.decode(_:forKey:)(), (v111 = v70) != 0) || (*(v122 + v109[15]) = v71, v112[0] = 12, v72 = v111, v73 = KeyedDecodingContainer.decode(_:forKey:)(), (v111 = v72) != 0) || (*(v122 + v109[16]) = v73, v113 = 13, sub_1004EAE00(), v74 = v111, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v111 = v74) != 0) || (*(v122 + v109[17]) = v112[0], v112[0] = 14, v75 = v111, v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v111 = v75) != 0) || (v78 = v122 + v109[18], *v78 = v76, v78[8] = v77 & 1, v112[0] = 15, v79 = v111, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v111 = v79) != 0))
  {
    (*(v33 + 8))(v25, v101);
    LODWORD(v101) = 0;
    v102 = 0;
    v80 = &v120 + 8;
  }

  else
  {
    (*(v97 + 32))(v122 + v109[19], v96, v98);
    v112[0] = 16;
    v81 = v111;
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v102 = v83;
    v111 = v81;
    if (v81)
    {
      (*(v33 + 8))(v25, v101);
      v102 = 0;
    }

    else
    {
      v84 = (v122 + v109[20]);
      v85 = v102;
      *v84 = v82;
      v84[1] = v85;
      v113 = 17;
      sub_1004EAE54();
      v86 = v111;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v111 = v86;
      if (!v86)
      {
        (*(v33 + 8))(v25, v101);
        sub_10020AD90(v112, v106, &qword_10077E968);
        v87 = v122;
        sub_1004EAEA8(v122, v95);
        sub_10000710C(v107);
        return sub_1004EAF0C(v87);
      }

      (*(v33 + 8))(v25, v101);
    }

    LODWORD(v100) = 1;
    v80 = &v121;
  }

  *(v80 - 64) = 1;
  v30 = v110;
  v27 = v94;
  v29 = v93;
  v28 = v89;
LABEL_6:
  sub_10000710C(v107);
  sub_10035CD9C(v99, v27, v29);
  v38 = v122;
  sub_1000032A8(v122 + v30, &unk_100780A00);
  sub_10035CD9C(v105, v103, v28);
  sub_1000032A8(&v38[v108], &unk_1007809F0);
  v39 = v109;
  if (v100)
  {
    v40 = &v38[v109[11]];
    v41 = *(v40 + 5);
    v119 = *(v40 + 4);
    v120 = v41;
    v121 = *(v40 + 6);
    v42 = *(v40 + 1);
    v115 = *v40;
    v116 = v42;
    v43 = *(v40 + 3);
    v117 = *(v40 + 2);
    v118 = v43;
    sub_1004EACB0(&v115);
  }

  if (v101)
  {
    (*(v97 + 8))(&v38[v39[19]], v98);
  }

  return sub_1000032A8(v106, &qword_10077E968);
}

uint64_t type metadata accessor for AppPackage()
{
  result = qword_100785FA8;
  if (!qword_100785FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004EAC5C()
{
  result = qword_100785E98;
  if (!qword_100785E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785E98);
  }

  return result;
}

unint64_t sub_1004EAD04()
{
  result = qword_100785EA0;
  if (!qword_100785EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EA0);
  }

  return result;
}

unint64_t sub_1004EAD58()
{
  result = qword_100785EA8;
  if (!qword_100785EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EA8);
  }

  return result;
}

unint64_t sub_1004EADAC()
{
  result = qword_100785EB0;
  if (!qword_100785EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EB0);
  }

  return result;
}

unint64_t sub_1004EAE00()
{
  result = qword_100785EB8;
  if (!qword_100785EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EB8);
  }

  return result;
}

unint64_t sub_1004EAE54()
{
  result = qword_100785EC0;
  if (!qword_100785EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EC0);
  }

  return result;
}

uint64_t sub_1004EAEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPackage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EAF0C(uint64_t a1)
{
  v2 = type metadata accessor for AppPackage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004EAF68()
{
  result = qword_100785ED0;
  if (!qword_100785ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785ED0);
  }

  return result;
}

uint64_t sub_1004EAFBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004EB004()
{
  result = qword_100785ED8;
  if (!qword_100785ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785ED8);
  }

  return result;
}

unint64_t sub_1004EB058()
{
  result = qword_100785EE0;
  if (!qword_100785EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EE0);
  }

  return result;
}

unint64_t sub_1004EB0AC()
{
  result = qword_100785EE8;
  if (!qword_100785EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EE8);
  }

  return result;
}

unint64_t sub_1004EB100()
{
  result = qword_100785EF0;
  if (!qword_100785EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785EF0);
  }

  return result;
}

uint64_t sub_1004EB154(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12)
{
  if (a12 >> 62 == 1)
  {
    sub_100007158(a3, a4);

    sub_100007158(a10, a11);
  }

  else if (!(a12 >> 62))
  {
    sub_100361F64(result, a2, a3, a4, a5);

    return sub_10020B0E0(a9, a10);
  }

  return result;
}

uint64_t sub_1004EB210(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_100005934(a1 + 32, &v51, &qword_100786EF0);
  v8 = v51;
  v7 = v52;
  v49 = v51;
  v50 = v52;
  v47 = v53;
  v48 = v54;
  v9 = *a3;
  v10 = sub_10052213C(v51, v52);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1005BB6D4(v15, a2 & 1);
    v10 = sub_10052213C(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1005C4DFC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v55 = v18;
    swift_errorRetain();
    sub_1001F0C48(&unk_10077F940);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000032A8(&v47, &qword_100783A30);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  v23 = (v21[7] + 32 * v10);
  v24 = v48;
  *v23 = v47;
  v23[1] = v24;
  v25 = v21[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v14)
  {
    v21[2] = v26;
    if (v4 == 1)
    {
    }

    v27 = a1 + 80;
    v28 = 1;
    while (v28 < *(a1 + 16))
    {
      sub_100005934(v27, &v51, &qword_100786EF0);
      v30 = v51;
      v29 = v52;
      v49 = v51;
      v50 = v52;
      v47 = v53;
      v48 = v54;
      v31 = *a3;
      v32 = sub_10052213C(v51, v52);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        goto LABEL_23;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_1005BB6D4(v36, 1);
        v32 = sub_10052213C(v30, v29);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v30;
      v40[1] = v29;
      v41 = (v39[7] + 32 * v32);
      v42 = v48;
      *v41 = v47;
      v41[1] = v42;
      v43 = v39[2];
      v14 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v28;
      v39[2] = v44;
      v27 += 48;
      if (v4 == v28)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  v45._object = 0x80000001006C4E90;
  v45._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v45);
  _print_unlocked<A, B>(_:_:)();
  v46._countAndFlagsBits = 39;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AppPackage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppPackage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1004EB768()
{
  sub_10000585C(319, &qword_100782B10);
  if (v0 <= 0x3F)
  {
    sub_1004EB930(319, &qword_100785520, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      sub_1004EB930(319, &qword_100780B40, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_10000585C(319, &qword_100785FB8);
        if (v3 <= 0x3F)
        {
          type metadata accessor for URL();
          if (v4 <= 0x3F)
          {
            sub_10000585C(319, &qword_1007819E0);
            if (v5 <= 0x3F)
            {
              sub_10000585C(319, &unk_100785FC0);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004EB930(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1004EB988()
{
  result = qword_100786030;
  if (!qword_100786030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786030);
  }

  return result;
}

unint64_t sub_1004EB9E0()
{
  result = qword_100786068;
  if (!qword_100786068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786068);
  }

  return result;
}

unint64_t sub_1004EBA38()
{
  result = qword_100786070;
  if (!qword_100786070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786070);
  }

  return result;
}

unint64_t sub_1004EBA90()
{
  result = qword_100786078;
  if (!qword_100786078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786078);
  }

  return result;
}

uint64_t sub_1004EBAE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616261746164 && a2 == 0xEA00000000004449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66664F7365747962 && a2 == 0xEB00000000746573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6944726568706963 && a2 == 0xEC00000074736567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEE00657A69536465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6F725061746164 && a2 == 0xED00004449657369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61636F4C6B736964 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974707972636E65 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656B636F6C427369 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006CC760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4374736575716572 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006CA8F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7265696669726576 && a2 == 0xED00006574617453)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1004EC0B8()
{
  v1[81] = v0;
  v2 = type metadata accessor for Logger();
  v1[82] = v2;
  v1[83] = *(v2 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v3 = type metadata accessor for Restore();
  v1[87] = v3;
  v1[88] = *(v3 - 8);
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  type metadata accessor for ConfigurationBag(0);
  v1[93] = swift_task_alloc();

  return _swift_task_switch(sub_1004EC23C, 0, 0);
}

uint64_t sub_1004EC23C()
{
  v29 = v0;
  v1 = v0[81];
  if (*(v1 + 112) == 1)
  {
    v2 = (v1 + 40);
    v3 = (v1 + 32);
    v4 = &type metadata for WebDistributor;
    v5 = sub_100231E84();
  }

  else
  {
    v2 = (v1 + 56);
    v3 = (v1 + 48);
    v4 = &type metadata for NativeDistributor;
    v5 = sub_1003000A4();
  }

  v6 = *v3;
  v7 = *v2;
  v28[3] = v4;
  v28[4] = v5;
  v28[0] = v6;
  v28[1] = v7;
  v8 = type metadata accessor for DecoratedHTTP();
  v9 = *(v1 + 8);
  v26 = *v1;
  v27 = v8;
  v10 = *(v1 + 128);
  v11 = *(v1 + 136);
  v12 = *(v1 + 168);
  v13 = *(v1 + 184);

  v14 = sub_100006D8C((v1 + 144), v12);
  v15 = objc_opt_self();

  v16 = v11;
  v17 = [v15 ephemeralSessionConfiguration];
  [v17 setHTTPShouldSetCookies:0];
  [v17 setHTTPCookieAcceptPolicy:1];
  [v17 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v18 = [objc_opt_self() sessionWithConfiguration:v17];

  type metadata accessor for PlainHTTP();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  v20 = *(v12 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v14, v12);
  v22 = sub_10038E7B4(v19, v28, v26, v9, v10, v16, v21, v27, v12, v13);
  v0[94] = v22;

  v23 = swift_task_alloc();
  v0[95] = v23;
  *v23 = v0;
  v23[1] = sub_1004EC4E4;
  v24 = v0[93];

  return sub_1004EDB44(v24, v22);
}

uint64_t sub_1004EC4E4()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_1004ED87C;
  }

  else
  {
    v2 = sub_1004EC5F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004EC5F8()
{
  v1 = v0[81];
  v0[77] = _swiftEmptyArrayStorage;
  v0[78] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 120);
  v0[97] = v2;
  v3 = swift_task_alloc();
  v0[98] = v3;
  *v3 = v0;
  v3[1] = sub_1004EC6AC;
  v4 = v0[93];

  return sub_1004EE278(v2, v4);
}

uint64_t sub_1004EC6AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[99] = a1;
  v4[100] = a2;
  v4[101] = v2;

  if (v2)
  {
    v5 = sub_1004ED954;
  }

  else
  {
    v5 = sub_1004EC7C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004EC7C8()
{
  v121 = v0;
  v1 = *(v0 + 792);
  if (*(v1 + 16))
  {
    result = sub_100654194(v1);
  }

  else
  {
  }

  v3 = *(v0 + 800);
  v99 = *(v3 + 16);
  if (v99)
  {
    v4 = 0;
    v112 = *(v0 + 696);
    v115 = *(v0 + 704);
    v110 = *(v0 + 776);
    v5 = *(v110 + 16);
    v98 = v3 + 32;
    v95 = (*(v0 + 664) + 8);
    v6 = _swiftEmptyArrayStorage;
    v108 = _swiftEmptyArrayStorage;
    v96 = *(v0 + 800);
    do
    {
      if (v4 >= *(v3 + 16))
      {
        goto LABEL_59;
      }

      v109 = v4;
      v8 = (v98 + 56 * v4);
      v9 = *v8;
      v10 = v8[1];
      v100 = *(v8 + 2);
      v101 = *(v8 + 1);
      v11 = v8[6];

      swift_bridgeObjectRetain_n();
      v102 = v9;
      result = sub_1005B7724(v9, v10);
      if (v5)
      {
        v13 = result;
        v14 = v12;
        v104 = v6;
        v106 = v11;
        v15 = 0;
        v97 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v16 = *(v0 + 776) + v97;
        while (v15 < *(v110 + 16))
        {
          v17 = *(v0 + 720);
          v18 = *(v115 + 72);
          sub_1001F75AC(v16 + v18 * v15, v17);
          v19 = v17 + v112[15];
          if ((*(v19 + 8) & 1) == 0 && (v14 & 1) == 0 && *v19 == v13)
          {
            v20 = *(v0 + 736);
            v21 = *(v0 + 728);
            sub_1004640D8(*(v0 + 720), v21);
            sub_1004640D8(v21, v20);
            swift_beginAccess();
            if (*(v20 + v112[22]))
            {
              v6 = v104;
              v3 = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v108 = sub_100363E28(0, *(v108 + 2) + 1, 1, v108);
              }

              v7 = v109;
              v23 = *(v108 + 2);
              v22 = *(v108 + 3);
              v24 = v106;
              if (v23 >= v22 >> 1)
              {
                v48 = sub_100363E28((v22 > 1), v23 + 1, 1, v108);
                v24 = v106;
                v108 = v48;
              }

              v25 = *(v0 + 736);
              *(v108 + 2) = v23 + 1;
              v26 = &v108[56 * v23];
              *(v26 + 4) = v102;
              *(v26 + 5) = v10;
              *(v26 + 3) = v101;
              *(v26 + 4) = v100;
              *(v26 + 10) = v24;
              result = sub_1004F01B0(v25, type metadata accessor for Restore);
              *(v0 + 624) = v108;
              goto LABEL_8;
            }

            v27 = *(v0 + 736);
            v28 = *(v0 + 712);

            *(v27 + v112[22]) = 1;
            sub_1001F75AC(v27, v28);
            v6 = v104;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_100363E00(0, v104[2] + 1, 1, v104);
            }

            v30 = v6[2];
            v29 = v6[3];
            if (v30 >= v29 >> 1)
            {
              v6 = sub_100363E00(v29 > 1, v30 + 1, 1, v6);
            }

            v31 = *(v0 + 712);
            v32 = *(v0 + 648);
            v6[2] = v30 + 1;
            sub_1004640D8(v31, v6 + v97 + v30 * v18);
            static Logger.restore.getter();
            sub_1004F0060(v32, v0 + 400);
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.default.getter();
            v35 = os_log_type_enabled(v33, v34);
            v36 = *(v0 + 736);
            v37 = *(v0 + 688);
            v38 = *(v0 + 656);
            if (v35)
            {
              v39 = swift_slowAlloc();
              v107 = v38;
              v40 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v103 = v37;
              v41 = v119;
              *v39 = 138412546;
              v42 = *(v0 + 536);
              sub_100473F78(v0 + 400);
              *(v39 + 4) = v42;
              *v40 = v42;
              *(v39 + 12) = 2082;
              v43 = (v36 + v112[9]);
              v105 = v36;
              v45 = *v43;
              v44 = v43[1];

              v46 = sub_1002346CC(v45, v44, &v119);

              *(v39 + 14) = v46;
              _os_log_impl(&_mh_execute_header, v33, v34, "[%@][%{public}s] Retrying for latest version", v39, 0x16u);
              sub_1000032A8(v40, &qword_10077F920);

              sub_10000710C(v41);

              (*v95)(v103, v107);
              v47 = v105;
            }

            else
            {

              sub_100473F78(v0 + 400);
              (*v95)(v37, v38);
              v47 = v36;
            }

            result = sub_1004F01B0(v47, type metadata accessor for Restore);
LABEL_32:
            v3 = v96;
            goto LABEL_7;
          }

          ++v15;
          result = sub_1004F01B0(*(v0 + 720), type metadata accessor for Restore);
          if (v5 == v15)
          {

            v6 = v104;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

LABEL_7:
      v7 = v109;
LABEL_8:
      v4 = v7 + 1;
      *(v0 + 824) = v108;
      *(v0 + 816) = v6;
    }

    while (v4 != v99);

    if (!v6[2])
    {
      goto LABEL_42;
    }

    v49 = *(v0 + 648);
    static Logger.restore.getter();
    sub_1004F0060(v49, v0 + 16);
    swift_bridgeObjectRetain_n();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 680);
    v54 = *(v0 + 656);
    if (v52)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v118 = v57;
      *v55 = 138412802;
      v116 = v53;
      v58 = *(v0 + 152);
      sub_100473F78(v0 + 16);
      *(v55 + 4) = v58;
      *v56 = v58;
      *(v55 + 12) = 2048;
      v59 = v6[2];

      *(v55 + 14) = v59;

      *(v55 + 22) = 2082;
      v113 = v54;
      v60 = v6[2];
      *(v0 + 640) = v60;
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v61;
      v62._countAndFlagsBits = 32;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      v63._countAndFlagsBits = 0x65726F74736572;
      v63._object = 0xE700000000000000;
      String.append(_:)(v63);
      if (v60 == 1)
      {
        v64 = 0;
      }

      else
      {
        v64 = 115;
      }

      if (v60 == 1)
      {
        v65 = 0xE000000000000000;
      }

      else
      {
        v65 = 0xE100000000000000;
      }

      v66 = v65;
      String.append(_:)(*&v64);

      v67 = sub_1002346CC(v119, v120, &v118);

      *(v55 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%@] Will return %ld %{public}s", v55, 0x20u);
      sub_1000032A8(v56, &qword_10077F920);

      sub_10000710C(v57);

      (*v95)(v116, v113);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_100473F78(v0 + 16);
      (*v95)(v53, v54);
    }

    v93 = swift_task_alloc();
    *(v0 + 832) = v93;
    *v93 = v0;
    v93[1] = sub_1004ED380;
    v94 = *(v0 + 744);

    return sub_1004EE278(v6, v94);
  }

  else
  {
LABEL_42:

    v68 = *(v0 + 648);
    static Logger.restore.getter();
    sub_1004F0060(v68, v0 + 208);
    v69 = *(v0 + 616);
    swift_bridgeObjectRetain_n();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 744);
    v74 = *(v0 + 672);
    v75 = *(v0 + 664);
    v76 = *(v0 + 656);
    if (v72)
    {
      v77 = swift_slowAlloc();
      v117 = v76;
      v78 = swift_slowAlloc();
      v114 = v74;
      v79 = swift_slowAlloc();
      v118 = v79;
      *v77 = 138412802;
      v111 = v73;
      v80 = *(v0 + 344);
      sub_100473F78(v0 + 208);
      *(v77 + 4) = v80;
      *v78 = v80;
      *(v77 + 12) = 2048;
      v81 = *(v69 + 16);

      *(v77 + 14) = v81;

      *(v77 + 22) = 2082;
      v82 = *(v69 + 16);
      *(v0 + 632) = v82;
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v120 = v83;
      v84._countAndFlagsBits = 32;
      v84._object = 0xE100000000000000;
      String.append(_:)(v84);
      v85._countAndFlagsBits = 0x65726F74736572;
      v85._object = 0xE700000000000000;
      String.append(_:)(v85);
      if (v82 == 1)
      {
        v86 = 0;
      }

      else
      {
        v86 = 115;
      }

      if (v82 == 1)
      {
        v87 = 0xE000000000000000;
      }

      else
      {
        v87 = 0xE100000000000000;
      }

      v88 = v87;
      String.append(_:)(*&v86);

      v89 = sub_1002346CC(v119, v120, &v118);

      *(v77 + 24) = v89;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%@] Found metadata for %ld %{public}s", v77, 0x20u);
      sub_1000032A8(v78, &qword_10077F920);

      sub_10000710C(v79);

      (*(v75 + 8))(v114, v117);
      v90 = v111;
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_100473F78(v0 + 208);
      (*(v75 + 8))(v74, v76);
      v90 = v73;
    }

    sub_1004F01B0(v90, type metadata accessor for ConfigurationBag);
    v91 = *(v0 + 624);

    v92 = *(v0 + 8);

    return v92(v69, v91);
  }
}

uint64_t sub_1004ED380(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 840) = v2;

  if (v2)
  {

    v7 = sub_1004EDA4C;
  }

  else
  {
    *(v6 + 848) = a2;
    *(v6 + 856) = a1;
    v7 = sub_1004ED4D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004ED4D4()
{
  v34 = v0;
  v1 = *(v0 + 848);
  sub_100654194(*(v0 + 856));
  sub_100654304(v1);
  v2 = *(v0 + 648);
  static Logger.restore.getter();
  sub_1004F0060(v2, v0 + 208);
  v3 = *(v0 + 616);
  swift_bridgeObjectRetain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v29 = *(v0 + 672);
    v30 = *(v0 + 744);
    v27 = *(v0 + 664);
    v28 = *(v0 + 656);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 138412802;
    v9 = *(v0 + 344);
    sub_100473F78(v0 + 208);
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2048;
    v10 = *(v3 + 16);

    *(v6 + 14) = v10;

    *(v6 + 22) = 2082;
    v11 = *(v3 + 16);
    *(v0 + 632) = v11;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v12;
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x65726F74736572;
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    if (v11 == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = 115;
    }

    if (v11 == 1)
    {
      v16 = 0xE000000000000000;
    }

    else
    {
      v16 = 0xE100000000000000;
    }

    v17 = v16;
    String.append(_:)(*&v15);

    v18 = sub_1002346CC(v32, v33, &v31);

    *(v6 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Found metadata for %ld %{public}s", v6, 0x20u);
    sub_1000032A8(v7, &qword_10077F920);

    sub_10000710C(v8);

    (*(v27 + 8))(v29, v28);
    v19 = v30;
  }

  else
  {
    v20 = *(v0 + 744);
    v21 = *(v0 + 672);
    v22 = *(v0 + 664);
    v23 = *(v0 + 656);
    swift_bridgeObjectRelease_n();

    sub_100473F78(v0 + 208);
    (*(v22 + 8))(v21, v23);
    v19 = v20;
  }

  sub_1004F01B0(v19, type metadata accessor for ConfigurationBag);
  v24 = *(v0 + 624);

  v25 = *(v0 + 8);

  return v25(v3, v24);
}

uint64_t sub_1004ED87C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004ED954()
{
  v1 = *(v0 + 744);

  sub_1004F01B0(v1, type metadata accessor for ConfigurationBag);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EDA4C()
{
  v1 = *(v0 + 744);

  sub_1004F01B0(v1, type metadata accessor for ConfigurationBag);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004EDB44(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[104] = a2;
  v3[103] = a1;
  v4 = type metadata accessor for Logger();
  v3[106] = v4;
  v3[107] = *(v4 - 8);
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();

  return _swift_task_switch(sub_1004EDC18, 0, 0);
}

uint64_t sub_1004EDC18()
{
  v25 = v0;
  v1 = v0[105];
  static Logger.restore.getter();
  sub_1004F0060(v1, (v0 + 2));
  sub_1004F0060(v1, (v0 + 26));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[109];
  v6 = v0[107];
  v7 = v0[106];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = v0[8];
    v10 = v0[9];

    sub_100473F78((v0 + 2));
    v11 = sub_1002346CC(v9, v10, &v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = v0[30];
    v13 = v0[31];

    sub_100473F78((v0 + 26));
    v14 = sub_1002346CC(v12, v13, &v24);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching bag configuration for distributor: %{public}s atDomain: %s", v8, 0x16u);
    swift_arrayDestroy();

    v15 = *(v6 + 8);
    v15(v5, v7);
  }

  else
  {

    v15 = *(v6 + 8);
    v15(v5, v7);
    sub_100473F78((v0 + 2));
    sub_100473F78((v0 + 26));
  }

  v0[110] = v15;
  v16 = v0[105];
  v17 = v0[104];
  v18 = v16[4];
  v19 = v16[5];
  v0[101] = type metadata accessor for DecoratedHTTP();
  v0[102] = &off_100762548;
  v0[98] = v17;
  v20 = v16[17];

  v21 = swift_task_alloc();
  v0[111] = v21;
  *v21 = v0;
  v21[1] = sub_1004EDEB4;
  v22 = v0[103];

  return sub_1003936EC(v22, v18, v19, (v0 + 98), v20);
}

uint64_t sub_1004EDEB4()
{
  v2 = *v1;
  *(v2 + 896) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004EE018, 0, 0);
  }

  else
  {
    sub_10000710C(v2 + 784);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004EE018()
{
  v20 = v0;
  v1 = *(v0 + 840);
  sub_10000710C(v0 + 784);
  static Logger.restore.getter();
  sub_1004F0060(v1, v0 + 400);
  sub_1004F0060(v1, v0 + 592);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 880);
  v6 = *(v0 + 864);
  v7 = *(v0 + 848);
  if (v4)
  {
    v18 = *(v0 + 880);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v6;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 138412546;
    v11 = *(v0 + 536);
    sub_100473F78(v0 + 400);
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 2082;
    v12 = *(v0 + 640);
    v13 = *(v0 + 648);

    sub_100473F78(v0 + 592);
    v14 = sub_1002346CC(v12, v13, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Error loading configuration bag for %{public}s", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    v18(v17, v7);
  }

  else
  {

    sub_100473F78(v0 + 400);
    v5(v6, v7);
    sub_100473F78(v0 + 592);
  }

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1004EE278(uint64_t a1, uint64_t a2)
{
  v3[81] = v2;
  v3[80] = a2;
  v3[79] = a1;
  v4 = type metadata accessor for Logger();
  v3[82] = v4;
  v3[83] = *(v4 - 8);
  v3[84] = swift_task_alloc();
  sub_1001F0C48(&qword_100786088);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  sub_1001F0C48(&qword_100782768);
  v3[87] = swift_task_alloc();
  v3[88] = type metadata accessor for ConfigurationBag(0);
  v3[89] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[92] = v5;
  v3[93] = *(v5 - 8);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v6 = type metadata accessor for Restore();
  v3[98] = v6;
  v3[99] = *(v6 - 8);
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();

  return _swift_task_switch(sub_1004EE518, 0, 0);
}

uint64_t sub_1004EE518()
{
  v132 = v0;
  v1 = *(v0 + 632);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 792);
    v4 = *(v0 + 784);
    v5 = *(v0 + 744);
    v6 = *(v0 + 704);
    v117 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v7 = v1 + v117;
    v129 = *(v3 + 72);
    v123 = (v5 + 56);
    v124 = (v5 + 16);
    v121 = (v5 + 48);
    v122 = (v5 + 32);
    v8 = _swiftEmptyDictionarySingleton;
    v115 = v5;
    v116 = (v5 + 8);
    v9 = &unk_1006A7048;
    v118 = v6;
    v119 = v4;
    while (1)
    {
      v10 = *(v0 + 808);
      sub_1001F75AC(v7, v10);
      v11 = v10 + *(v4 + 60);
      if (*(v11 + 8) == 1)
      {
        sub_1004F01B0(*(v0 + 808), type metadata accessor for Restore);
        goto LABEL_4;
      }

      v125 = v2;
      v127 = v8;
      v12 = *(v0 + 712);
      v13 = *(v0 + 696);
      *(v0 + 624) = *v11;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v9;
      sub_1003940B0(v14, v16, v12);

      sub_100005934(v12 + *(v6 + 28), v13, &qword_100782768);
      v17 = type metadata accessor for ConfigurationBag.RestoresConfiguration(0);
      v18 = (*(*(v17 - 8) + 48))(v13, 1, v17);
      v19 = *(v0 + 736);
      v20 = *(v0 + 728);
      v21 = *(v0 + 720);
      v22 = *(v0 + 712);
      v23 = *(v0 + 696);
      if (v18 == 1)
      {
        sub_1000032A8(v23, &qword_100782768);
        (*v123)(v21, 1, 1, v19);
        sub_100005934(v22 + *(v6 + 24), v20, &unk_1007809F0);
        sub_1004F01B0(v22, type metadata accessor for ConfigurationBag);
        v24 = *v121;
        v25 = v15;
        if ((*v121)(v21, 1, v19) != 1)
        {
          v0 = v120;
          sub_1000032A8(*(v120 + 720), &unk_1007809F0);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1004F01B0(v22, type metadata accessor for ConfigurationBag);
        (*v124)(v21, v23, v19);
        sub_1004F01B0(v23, type metadata accessor for ConfigurationBag.RestoresConfiguration);
        v26 = *v123;
        (*v123)(v21, 0, 1, v19);
        (*v122)(v20, v21, v19);
        v26(v20, 0, 1, v19);
        v24 = *v121;
        v25 = v15;
      }

      v0 = v120;
LABEL_11:
      v27 = *(v0 + 736);
      v28 = *(v0 + 728);
      if (v24(v28, 1, v27) == 1)
      {
        sub_1004F01B0(*(v0 + 808), type metadata accessor for Restore);
        sub_1000032A8(v28, &unk_1007809F0);
        v6 = v118;
        v4 = v119;
        v2 = v125;
        v8 = v127;
        v9 = v25;
      }

      else
      {
        (*v122)(*(v0 + 776), v28, v27);
        v8 = v127;
        if (v127[2] && (v29 = sub_100522F18(*(v0 + 776)), (v30 & 1) != 0))
        {
          v31 = *(v127[7] + 8 * v29);
        }

        else
        {
          v31 = _swiftEmptyArrayStorage;
        }

        sub_1001F75AC(*(v0 + 808), *(v0 + 800));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100363E00(0, v31[2] + 1, 1, v31);
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          v31 = sub_100363E00(v32 > 1, v33 + 1, 1, v31);
        }

        v34 = *(v0 + 800);
        v35 = *(v0 + 776);
        v36 = *(v0 + 768);
        v37 = *(v0 + 736);
        v31[2] = v33 + 1;
        sub_1004640D8(v34, v31 + v117 + v33 * v129);
        v38 = *v124;
        (*v124)(v36, v35, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131[0] = v127;
        v41 = sub_100522F18(v36);
        v42 = v127[2];
        v43 = (v40 & 1) == 0;
        result = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          __break(1u);
LABEL_56:
          __break(1u);
          return result;
        }

        v45 = v40;
        if (v127[3] >= result)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1005C5F48();
            v8 = v131[0];
          }
        }

        else
        {
          v46 = *(v0 + 768);
          sub_1005BD5E0(result, isUniquelyReferenced_nonNull_native);
          v8 = v131[0];
          v47 = sub_100522F18(v46);
          if ((v45 & 1) != (v48 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v41 = v47;
        }

        v9 = &unk_1006A7048;
        if (v45)
        {
          *(v8[7] + 8 * v41) = v31;
        }

        else
        {
          v49 = *(v0 + 768);
          v50 = *(v0 + 736);
          v8[(v41 >> 6) + 8] |= 1 << v41;
          result = (v38)(v8[6] + *(v115 + 72) * v41, v49, v50);
          *(v8[7] + 8 * v41) = v31;
          v51 = v8[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_56;
          }

          v8[2] = v53;
        }

        v54 = *(v0 + 808);
        v55 = *(v0 + 776);
        v56 = *(v0 + 736);
        v57 = *v116;
        (*v116)(*(v0 + 768), v56);
        v57(v55, v56);
        sub_1004F01B0(v54, type metadata accessor for Restore);
        v6 = v118;
        v4 = v119;
        v2 = v125;
      }

LABEL_4:
      v7 += v129;
      if (!--v2)
      {
        goto LABEL_33;
      }
    }
  }

  v8 = _swiftEmptyDictionarySingleton;
LABEL_33:
  *(v0 + 816) = v8;
  v58 = *(v0 + 648);
  v59 = *(v58 + 112);
  *(v0 + 319) = v59;
  if (v59 == 1)
  {
    v60 = (v58 + 40);
    v61 = (v58 + 32);
    v62 = &type metadata for WebDistributor;
    v63 = sub_100231E84();
  }

  else
  {
    v60 = (v58 + 56);
    v61 = (v58 + 48);
    v62 = &type metadata for NativeDistributor;
    v63 = sub_1003000A4();
  }

  v64 = *v61;
  v65 = *v60;
  v131[3] = v62;
  v131[4] = v63;
  v131[0] = v64;
  v131[1] = v65;
  v66 = type metadata accessor for DecoratedHTTP();
  v67 = *(v58 + 8);
  v128 = *v58;
  v130 = v66;
  v68 = *(v58 + 128);
  *(v0 + 431) = v68;
  v69 = *(v58 + 136);
  v70 = *(v58 + 168);
  v126 = *(v58 + 184);

  v71 = sub_100006D8C((v58 + 144), v70);
  v72 = objc_opt_self();

  v73 = v69;
  v74 = [v72 ephemeralSessionConfiguration];
  [v74 setHTTPShouldSetCookies:0];
  [v74 setHTTPCookieAcceptPolicy:1];
  [v74 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v75 = [objc_opt_self() sessionWithConfiguration:v74];

  type metadata accessor for PlainHTTP();
  v76 = swift_allocObject();
  *(v76 + 24) = 0;
  *(v76 + 16) = v75;
  v77 = *(v70 - 8);
  v78 = swift_task_alloc();
  (*(v77 + 16))(v78, v71, v70);
  *(v0 + 824) = sub_10038E7B4(v76, v131, v128, v67, v68, v73, v78, v130, v70, v126);

  *(v0 + 600) = _swiftEmptyArrayStorage;
  *(v0 + 608) = _swiftEmptyArrayStorage;
  v79 = *(v8 + 32);
  *(v0 + 473) = v79;
  v80 = -1;
  v81 = -1 << v79;
  if (-(-1 << v79) < 64)
  {
    v80 = ~(-1 << -v81);
  }

  v82 = v80 & v8[8];

  if (v82)
  {
    v83 = 0;
    v84 = *(v0 + 816);
LABEL_43:
    v87 = *(v0 + 760);
    v88 = *(v0 + 744);
    v89 = *(v0 + 736);
    v90 = *(v0 + 680);
    v91 = (v82 - 1) & v82;
    v92 = __clz(__rbit64(v82)) | (v83 << 6);
    (*(v88 + 16))(v87, *(v84 + 48) + *(v88 + 72) * v92, v89);
    v93 = *(*(v84 + 56) + 8 * v92);
    v94 = sub_1001F0C48(&qword_100786090);
    v95 = *(v94 + 48);
    (*(v88 + 32))(v90, v87, v89);
    *(v90 + v95) = v93;
    (*(*(v94 - 8) + 56))(v90, 0, 1, v94);

    v86 = v83;
  }

  else
  {
    v85 = 0;
    v86 = ((63 - v81) >> 6) - 1;
    while (v86 != v85)
    {
      v83 = v85 + 1;
      v84 = *(v0 + 816);
      v82 = *(v84 + 8 * v85++ + 72);
      if (v82)
      {
        goto LABEL_43;
      }
    }

    v113 = *(v0 + 680);
    v114 = sub_1001F0C48(&qword_100786090);
    (*(*(v114 - 8) + 56))(v113, 1, 1, v114);
    v91 = 0;
  }

  *(v0 + 840) = v86;
  *(v0 + 832) = v91;
  v96 = *(v0 + 688);
  sub_1004F0098(*(v0 + 680), v96);
  v97 = sub_1001F0C48(&qword_100786090);
  if ((*(*(v97 - 8) + 48))(v96, 1, v97) == 1)
  {

    v98 = *(v0 + 600);
    v99 = *(v0 + 608);

    v100 = *(v0 + 8);

    return v100(v98, v99);
  }

  else
  {
    v101 = *(v0 + 648);
    v102 = *(*(v0 + 688) + *(v97 + 48));
    (*(*(v0 + 744) + 32))(*(v0 + 752));
    v103 = (*sub_100006D8C((v101 + 144), *(v101 + 168)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v104 = *(v103 + 95);
    v105 = v103[5];
    v106 = v103[3];
    *(v0 + 272) = v103[4];
    *(v0 + 288) = v105;
    *(v0 + 303) = v104;
    *(v0 + 256) = v106;
    v107 = *v103;
    v108 = v103[2];
    *(v0 + 224) = v103[1];
    *(v0 + 240) = v108;
    *(v0 + 208) = v107;
    sub_10020A7AC(v0 + 208, v0 + 320);
    sub_1003C930C(v102, v0 + 208, (v0 + 528));
    sub_10020A92C(v0 + 208);
    *(v0 + 456) = &type metadata for RestoreHTTPRequest;
    *(v0 + 464) = sub_1004F0108();
    v109 = swift_allocObject();
    *(v0 + 432) = v109;
    v110 = *(v0 + 544);
    *(v109 + 16) = *(v0 + 528);
    *(v109 + 32) = v110;
    *(v109 + 48) = *(v0 + 560);
    *(v0 + 472) = 0;
    sub_100391884(v0 + 432, v0 + 480);
    v111 = swift_task_alloc();
    *(v0 + 848) = v111;
    *v111 = v0;
    v111[1] = sub_1004EF264;
    v112 = *(v0 + 752);

    return sub_10038FFA4(v112, 1, v0 + 480, 0, 1);
  }
}

uint64_t sub_1004EF264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[107] = a1;
  v5[108] = a2;
  v5[109] = a3;
  v5[110] = v3;

  sub_1000032A8((v5 + 60), &qword_100780BA8);
  if (v3)
  {

    v6 = sub_1004EFEF4;
  }

  else
  {
    sub_1003918E0((v5 + 54));
    v6 = sub_1004EF3B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004EF3B8()
{
  v95 = v0;
  if ([*(v0 + 872) statusCode] != 200)
  {
    v8 = *(v0 + 872);

    if ([v8 statusCode] == 401)
    {
      if ((*(v0 + 319) & 1) != 0 || !*(v0 + 431))
      {
LABEL_12:
        v12 = *(v0 + 872);
        v13 = *(v0 + 864);
        v14 = *(v0 + 856);
        v15 = *(v0 + 752);
        v16 = *(v0 + 744);
        v17 = *(v0 + 736);
        v20 = [v12 statusCode];
        sub_10039403C();
        swift_allocError();
        *v21 = v20;
        *(v21 + 8) = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v9 = *(v0 + 431);
      v10 = *(v0 + 319);
      v11 = [*(v0 + 872) statusCode];
      if ((v10 & 1) != 0 || v11 != 403 || !v9)
      {
        goto LABEL_12;
      }
    }

    v12 = *(v0 + 872);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = [v12 statusCode];
    sub_10039403C();
    swift_allocError();
    *v19 = v18;
    *(v19 + 8) = 1;
LABEL_13:
    swift_willThrow();

    sub_100007158(v14, v13);
    (*(v16 + 8))(v15, v17);
    goto LABEL_14;
  }

  v1 = *(v0 + 880);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1004F015C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 872);
    v3 = *(v0 + 864);
    v4 = *(v0 + 856);
    v5 = *(v0 + 752);
    v6 = *(v0 + 744);
    v7 = *(v0 + 736);

    sub_100007158(v4, v3);
    (*(v6 + 8))(v5, v7);

LABEL_14:

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = *(v0 + 648);

  v25 = *(v0 + 568);
  v26 = *(v0 + 576);
  static Logger.restore.getter();
  sub_1004F0060(v24, v0 + 16);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 672);
  v31 = *(v0 + 664);
  v32 = *(v0 + 656);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v93 = v32;
    v34 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v94 = v91;
    *v33 = 138412546;
    v92 = v30;
    v35 = *(v0 + 152);
    sub_100473F78(v0 + 16);
    *(v33 + 4) = v35;
    *v34 = v35;
    *(v33 + 12) = 2082;
    v36 = *(v25 + 16);
    *(v0 + 616) = v36;
    *(v0 + 584) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 592) = v37;
    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0x65726F74736572;
    v39._object = 0xE700000000000000;
    String.append(_:)(v39);
    if (v36 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = 115;
    }

    if (v36 == 1)
    {
      v41 = 0xE000000000000000;
    }

    else
    {
      v41 = 0xE100000000000000;
    }

    v42 = v41;
    String.append(_:)(*&v40);

    v43 = sub_1002346CC(*(v0 + 584), *(v0 + 592), &v94);

    *(v33 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%@] Received metadata for %{public}s", v33, 0x16u);
    sub_1000032A8(v34, &qword_10077F920);

    sub_10000710C(v91);

    (*(v31 + 8))(v92, v93);
  }

  else
  {

    sub_100473F78(v0 + 16);
    (*(v31 + 8))(v30, v32);
  }

  if (*(v25 + 16))
  {

    sub_100654194(v44);
  }

  if (v26)
  {

    v45 = *(v0 + 872);
    v46 = *(v0 + 864);
    v47 = *(v0 + 856);
    v48 = *(v0 + 752);
    v49 = *(v0 + 736);
    v50 = (*(v0 + 744) + 8);
    if (*(v26 + 16))
    {
      sub_100654304(v26);

      sub_100007158(v47, v46);
      result = (*v50)(v48, v49);
    }

    else
    {
      (*v50)(*(v0 + 752), *(v0 + 736));

      sub_100007158(v47, v46);
    }
  }

  else
  {
    v51 = *(v0 + 864);
    v52 = *(v0 + 856);
    v53 = *(v0 + 752);
    v54 = *(v0 + 744);
    v55 = *(v0 + 736);

    sub_100007158(v52, v51);

    result = (*(v54 + 8))(v53, v55);
  }

  v56 = *(v0 + 840);
  v57 = *(v0 + 832);
  if (v57)
  {
    v58 = *(v0 + 816);
LABEL_43:
    v63 = *(v0 + 760);
    v64 = *(v0 + 744);
    v65 = *(v0 + 736);
    v66 = *(v0 + 680);
    v67 = (v57 - 1) & v57;
    v68 = __clz(__rbit64(v57)) | (v56 << 6);
    (*(v64 + 16))(v63, *(v58 + 48) + *(v64 + 72) * v68, v65);
    v69 = *(*(v58 + 56) + 8 * v68);
    v70 = sub_1001F0C48(&qword_100786090);
    v71 = *(v70 + 48);
    (*(v64 + 32))(v66, v63, v65);
    *(v66 + v71) = v69;
    (*(*(v70 - 8) + 56))(v66, 0, 1, v70);

    v61 = v56;
LABEL_44:
    *(v0 + 840) = v61;
    *(v0 + 832) = v67;
    v72 = *(v0 + 688);
    sub_1004F0098(*(v0 + 680), v72);
    v73 = sub_1001F0C48(&qword_100786090);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
    {

      v74 = *(v0 + 600);
      v75 = *(v0 + 608);

      v76 = *(v0 + 8);

      return v76(v74, v75);
    }

    else
    {
      v77 = *(v0 + 648);
      v78 = *(*(v0 + 688) + *(v73 + 48));
      (*(*(v0 + 744) + 32))(*(v0 + 752));
      v79 = (*sub_100006D8C((v77 + 144), *(v77 + 168)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
      v80 = *(v79 + 95);
      v81 = v79[5];
      v82 = v79[3];
      *(v0 + 272) = v79[4];
      *(v0 + 288) = v81;
      *(v0 + 303) = v80;
      *(v0 + 256) = v82;
      v83 = *v79;
      v84 = v79[2];
      *(v0 + 224) = v79[1];
      *(v0 + 240) = v84;
      *(v0 + 208) = v83;
      sub_10020A7AC(v0 + 208, v0 + 320);
      sub_1003C930C(v78, v0 + 208, (v0 + 528));
      sub_10020A92C(v0 + 208);
      *(v0 + 456) = &type metadata for RestoreHTTPRequest;
      *(v0 + 464) = sub_1004F0108();
      v85 = swift_allocObject();
      *(v0 + 432) = v85;
      v86 = *(v0 + 544);
      *(v85 + 16) = *(v0 + 528);
      *(v85 + 32) = v86;
      *(v85 + 48) = *(v0 + 560);
      *(v0 + 472) = 0;
      sub_100391884(v0 + 432, v0 + 480);
      v87 = swift_task_alloc();
      *(v0 + 848) = v87;
      *v87 = v0;
      v87[1] = sub_1004EF264;
      v88 = *(v0 + 752);

      return sub_10038FFA4(v88, 1, v0 + 480, 0, 1);
    }
  }

  else
  {
    v59 = ((1 << *(v0 + 473)) + 63) >> 6;
    if (v59 <= (v56 + 1))
    {
      v60 = v56 + 1;
    }

    else
    {
      v60 = ((1 << *(v0 + 473)) + 63) >> 6;
    }

    v61 = v60 - 1;
    while (1)
    {
      v62 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v62 >= v59)
      {
        v89 = *(v0 + 680);
        v90 = sub_1001F0C48(&qword_100786090);
        (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
        v67 = 0;
        goto LABEL_44;
      }

      v58 = *(v0 + 816);
      v57 = *(v58 + 8 * v62 + 64);
      ++v56;
      if (v57)
      {
        v56 = v62;
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004EFEF4()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];

  (*(v2 + 8))(v1, v3);
  sub_1003918E0((v0 + 54));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004F0098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100786088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004F0108()
{
  result = qword_100786098;
  if (!qword_100786098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786098);
  }

  return result;
}

unint64_t sub_1004F015C()
{
  result = qword_1007860A0;
  if (!qword_1007860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007860A0);
  }

  return result;
}

uint64_t sub_1004F01B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1004F0210(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1004F0244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1004F028C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1004F030C(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_1004F04B8()
{
  v1[432] = v0;
  v1[433] = type metadata accessor for EnsureAllowedDeveloperTask();
  v1[434] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[435] = v2;
  v1[436] = *(v2 - 8);
  v1[437] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[438] = v3;
  v1[439] = *(v3 - 8);
  v1[440] = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  v1[441] = v4;
  v1[442] = *(v4 - 8);
  v1[443] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v1[444] = v5;
  v1[445] = *(v5 - 8);
  v1[446] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EF30);
  v1[447] = swift_task_alloc();
  v1[448] = swift_task_alloc();
  v6 = type metadata accessor for DeveloperApprovalSheetContext();
  v1[449] = v6;
  v1[450] = *(v6 - 8);
  v1[451] = swift_task_alloc();
  v7 = sub_1001F0C48(&unk_100784AE0);
  v1[452] = v7;
  v1[453] = *(v7 - 8);
  v1[454] = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_10077EC98);
  v1[455] = v8;
  v1[456] = *(v8 - 8);
  v1[457] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v1[458] = swift_task_alloc();
  v1[459] = swift_task_alloc();
  v1[460] = swift_task_alloc();
  v1[461] = swift_task_alloc();
  v1[462] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v1[463] = v9;
  v1[464] = *(v9 - 8);
  v1[465] = swift_task_alloc();
  v1[466] = swift_task_alloc();
  v10 = type metadata accessor for FeatureFlag();
  v1[467] = v10;
  v1[468] = *(v10 - 8);
  v1[469] = swift_task_alloc();
  v11 = type metadata accessor for ApprovedDeveloper();
  v1[470] = v11;
  v1[471] = *(v11 - 8);
  v1[472] = swift_task_alloc();

  return _swift_task_switch(sub_1004F09E0, 0, 0);
}

uint64_t sub_1004F09E0()
{
  v1 = *(v0 + 3456);
  v2 = *(v1 + 32);
  *(v0 + 3784) = v2;
  v3 = *(v1 + 40);
  *(v0 + 3792) = v3;
  v4 = sub_10058BEFC();
  if (v4)
  {
    v5 = v4;
    v59 = v2;
    v6 = 0;
    v7 = *(v0 + 3768);
    v61 = *(v4 + 16);
    v58 = (v7 + 8);
    while (1)
    {
      if (v61 == v6)
      {

        goto LABEL_12;
      }

      if (v6 >= *(v5 + 16))
      {
        __break(1u);
      }

      (*(v7 + 16))(*(v0 + 3776), v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, *(v0 + 3760));
      v8 = ApprovedDeveloper.identifier.getter();
      v10 = *(v0 + 3776);
      v11 = *(v0 + 3760);
      if (v8 == v59 && v9 == v3)
      {
        break;
      }

      ++v6;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v58)(v10, v11);
      if (v13)
      {

        v57 = 0;
        goto LABEL_24;
      }
    }

    (*v58)(v10, v11);

    v57 = 0;
    goto LABEL_24;
  }

LABEL_12:
  v14 = *(v0 + 3464);
  v15 = *(v0 + 3456);
  if (*(v15 + *(v14 + 36)) != 1)
  {
    v32 = *(v0 + 3472);
    static Logger.install.getter();
    sub_1004F8524(v15, v32);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 3496);
    v37 = *(v0 + 3488);
    v38 = *(v0 + 3480);
    v39 = *(v0 + 3472);
    if (v35)
    {
      v40 = *(v0 + 3464);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = *(v39 + *(v40 + 40));
      sub_1004F8588(v39);
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Developer not approved, but install is automatic so we can't show a prompt.", v41, 0xCu);
      sub_1000032A8(v42, &qword_10077F920);
    }

    else
    {

      sub_1004F8588(v39);
    }

    (*(v37 + 8))(v36, v38);
    v57 = 1;
LABEL_24:

    v56 = *(v0 + 8);

    return v56(v57);
  }

  v16 = v0 + 2656;
  v17 = v0 + 2728;
  v60 = v0 + 2872;
  v62 = v0 + 888;
  v18 = *(v15 + *(v14 + 48));
  *(v0 + 1065) = v18;
  v19 = *(v15 + 48);

  *(v0 + 3808) = v20;
  *(v0 + 3800) = v19;
  v21 = *(v0 + 3752);
  v22 = *(v0 + 3744);
  v23 = *(v0 + 3736);
  *(v0 + 2584) = v19;
  *(v0 + 2592) = v20;
  *(v0 + 2648) = v18;
  v24 = *(v0 + 2632);
  *(v0 + 1032) = *(v0 + 2616);
  *(v0 + 1048) = v24;
  *(v0 + 1064) = *(v0 + 2648);
  v25 = *(v0 + 2600);
  *(v0 + 1000) = *(v0 + 2584);
  *(v0 + 1016) = v25;
  *(v0 + 956) = enum case for FeatureFlag.newInstallSheetFlow(_:);
  v26 = *(v22 + 104);
  *(v0 + 3816) = v26;
  *(v0 + 3824) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v26(v21);
  v27 = isFeatureEnabled(_:)();
  v28 = *(v22 + 8);
  *(v0 + 3832) = v28;
  *(v0 + 3840) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v21, v23);
  *(v0 + 2784) = 0;
  *(v0 + 2768) = 0u;
  *(v0 + 2752) = 0u;
  v29 = v0;
  *(v0 + 2736) = 0u;
  if (v27)
  {
    *v16 = xmmword_1006B00A0;
    v30 = 9;
    v31 = 18;
  }

  else
  {
    *v16 = 0;
    *(v0 + 2664) = 0;
    v30 = 2;
    v31 = 17;
  }

  *(v29 + 2728) = v31;
  *(v29 + 2792) = 41;
  v44 = *(v29 + 3464);
  v45 = *(v29 + 3456);
  *(v29 + 2672) = 0u;
  *(v29 + 2688) = 0u;
  *(v29 + 2704) = 0u;
  *(v29 + 2720) = 41;
  v46 = *(v17 + 48);
  *(v62 + 32) = *(v17 + 32);
  *(v62 + 48) = v46;
  *(v62 + 64) = *(v17 + 64);
  v47 = *(v17 + 16);
  *v62 = *v17;
  *(v62 + 16) = v47;
  v48 = *(v16 + 32);
  v49 = *(v16 + 48);
  *(v60 + 64) = *(v16 + 64);
  *(v60 + 32) = v48;
  *(v60 + 48) = v49;
  v50 = *(v16 + 16);
  *v60 = *v16;
  *(v60 + 16) = v50;
  v51 = *(v45 + *(v44 + 44));
  *(v29 + 3848) = v51;
  v52 = swift_allocObject();
  *(v29 + 3856) = v52;
  *(v52 + 16) = v30;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 0u;
  *(v52 + 56) = 0u;
  *(v52 + 72) = 0;
  *(v52 + 80) = 41;
  *(v52 + 88) = v51;
  v53 = swift_task_alloc();
  *(v29 + 3864) = v53;
  *(v53 + 16) = &unk_10069F2C0;
  *(v53 + 24) = v52;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v54 = swift_task_alloc();
  *(v29 + 3872) = v54;
  *v54 = v29;
  v54[1] = sub_1004F10D8;

  return sub_1006600F0(v62);
}

uint64_t sub_1004F10D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[485] = a1;
  v3[486] = a2;

  sub_100222FFC((v3 + 341));
  v4 = swift_task_alloc();
  v3[487] = v4;
  *v4 = v6;
  v4[1] = sub_1004F1264;

  return sub_1006600F0((v3 + 125));
}

uint64_t sub_1004F1264(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[488] = a1;
  v3[489] = a2;

  sub_100222FFC((v3 + 323));
  v4 = swift_task_alloc();
  v3[490] = v4;
  *v4 = v6;
  v4[1] = sub_1004F13F0;

  return sub_1006600F0((v3 + 359));
}

uint64_t sub_1004F13F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3928) = a1;
  *(v3 + 3936) = a2;

  sub_100222FFC(v3 + 2656);

  return _swift_asyncLet_get(v3 + 16, v3 + 3400, sub_1004F152C, v3 + 848);
}

uint64_t sub_1004F152C()
{

  return _swift_task_switch(sub_1004F15B8, 0, 0);
}

uint64_t sub_1004F15B8()
{
  v6 = *(v0 + 3904);
  v7 = *(v0 + 3928);
  v5 = *(v0 + 3880);
  v1 = *(v0 + 3400);
  v2 = *(v0 + 3408);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 3944) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 3400, sub_1004F16C0, v0 + 960);
}

uint64_t sub_1004F16C0()
{
  sub_1004F85E4(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004F17A8, v1, v0);
}

uint64_t sub_1004F17A8()
{
  v1 = *(v0 + 3944);

  return _swift_task_switch(sub_1004F1860, v1, 0);
}

uint64_t sub_1004F1860()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 3952) = qword_100786178;

  return _swift_task_switch(sub_1004F1924, v1, 0);
}

uint64_t sub_1004F1924()
{
  v1 = v0[494];
  v2 = v0[493];
  v3 = sub_1004F85E4(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[495] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[496] = v5;
  *v5 = v0;
  v5[1] = sub_1004F1A8C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 953, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1004F1A8C()
{
  v1 = *(*v0 + 3952);

  return _swift_task_switch(sub_1004F1BEC, v1, 0);
}

uint64_t sub_1004F1BEC()
{

  *(v0 + 1066) = *(v0 + 953);

  return _swift_task_switch(sub_1004F1C88, 0, 0);
}

uint64_t sub_1004F1C88()
{
  v1 = *(v0 + 1066);
  v2 = *(v0 + 3832);
  v3 = *(v0 + 3752);
  v4 = *(v0 + 3736);
  (*(v0 + 3816))(v3, *(v0 + 956), v4);
  v5 = isFeatureEnabled(_:)();
  v2(v3, v4);
  if (v1 == 1)
  {
    v6 = *(v0 + 3712);
    v7 = *(v0 + 3704);
    if (v5)
    {
      v8 = *(v0 + 3696);
      URL.init(string:)();
      if ((*(v6 + 48))(v8, 1, v7) == 1)
      {
        sub_1000032A8(*(v0 + 3696), &unk_1007809F0);
LABEL_15:
        v26 = objc_allocWithZone(FLFollowUpController);
        v27 = String._bridgeToObjectiveC()();
        v28 = [v26 initWithClientIdentifier:v27];
        *(v0 + 4000) = v28;

        if (!v28)
        {
LABEL_24:
          *(v0 + 4032) = 0;
          *(v0 + 1072) = 3;
          *(v0 + 1128) = 0;
          *(v0 + 1080) = 0u;
          *(v0 + 1096) = 0u;
          *(v0 + 1112) = 0u;
          *(v0 + 1136) = 41;
          v46 = swift_task_alloc();
          *(v0 + 4040) = v46;
          *v46 = v0;
          v46[1] = sub_1004F3250;

          return sub_1006600F0(v0 + 1072);
        }

        *(v0 + 3440) = 0;
        v29 = [v28 pendingFollowUpItems:v0 + 3440];
        v30 = *(v0 + 3440);
        if (!v29)
        {
          v45 = v30;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          goto LABEL_24;
        }

        v31 = v29;
        v32 = *(v0 + 3456);
        sub_100006190(0, &qword_1007860C0);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v30;

        v35 = swift_task_alloc();
        v35[2] = v32;
        v36 = sub_1004F030C(sub_1004F8634, v35, v33);
        *(v0 + 4008) = 0;

        if (!(v36 >> 62))
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v38 = v37;
          if (v37 < 2)
          {
LABEL_19:

            goto LABEL_24;
          }

          goto LABEL_30;
        }

        v47 = _CocoaArrayWrapper.endIndex.getter();
        if (v47 < 2)
        {
          goto LABEL_19;
        }

        v37 = v47;
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if ((v15 & 0x8000000000000000) == 0)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
LABEL_30:
          v48 = v37 - 1;
          if (v38 < v48)
          {
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
          }

          if ((v36 & 0xC000000000000001) != 0)
          {
            v49 = 0;
            do
            {
              v50 = v49 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v49);
              v49 = v50;
            }

            while (v48 != v50);
          }

          if (v36 >> 62)
          {

            _CocoaArrayWrapper.subscript.getter();
            v52 = v53;
            v51 = v54;
            v48 = v55 >> 1;
          }

          else
          {
            v51 = 0;
            v52 = (v36 & 0xFFFFFFFFFFFFFF8) + 32;
          }

          swift_unknownObjectRetain();

          v56 = v48 - v51;
          if (__OFSUB__(v48, v51))
          {
            goto LABEL_59;
          }

          v75 = v28;
          if (v56)
          {
            sub_10052640C(0, v56 & ~(v56 >> 63), 0);
            swift_unknownObjectRelease();
            if (v56 < 0)
            {
              goto LABEL_60;
            }

            if (v48 <= v51)
            {
              v57 = v51;
            }

            else
            {
              v57 = v48;
            }

            v58 = v57 - v51;
            v59 = (v52 + 8 * v51);
            while (v58)
            {
              v60 = *v59;
              v61 = [v60 uniqueIdentifier];
              if (v61)
              {
                v62 = v61;
                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;
              }

              else
              {

                v63 = 0;
                v65 = 0;
              }

              v67 = _swiftEmptyArrayStorage[2];
              v66 = _swiftEmptyArrayStorage[3];
              if (v67 >= v66 >> 1)
              {
                sub_10052640C((v66 > 1), v67 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v67 + 1;
              v68 = &_swiftEmptyArrayStorage[2 * v67];
              v68[4] = v63;
              v68[5] = v65;
              --v58;
              ++v59;
              if (!--v56)
              {
                swift_unknownObjectRelease();
                goto LABEL_53;
              }
            }

            __break(1u);
            goto LABEL_58;
          }

          swift_unknownObjectRelease_n();
LABEL_53:
          v69 = *(v0 + 3632);
          v70 = *(v0 + 3624);
          v71 = *(v0 + 3616);
          v76 = v75;
          sub_10023585C(_swiftEmptyArrayStorage);

          isa = Array._bridgeToObjectiveC()().super.isa;
          *(v0 + 4016) = isa;

          *(v0 + 720) = v0;
          *(v0 + 760) = v0 + 955;
          *(v0 + 728) = sub_1004F3014;
          swift_continuation_init();
          *(v0 + 3128) = v71;
          v73 = sub_10020A748((v0 + 3104));
          sub_1001F0C48(&unk_10077F940);
          CheckedContinuation.init(continuation:function:)();
          (*(v70 + 32))(v73, v69, v71);
          *(v0 + 3072) = _NSConcreteStackBlock;
          *(v0 + 3080) = 1107296256;
          *(v0 + 3088) = sub_10041DC48;
          *(v0 + 3096) = &unk_1007680D0;
          [v76 clearPendingFollowUpItemsWithUniqueIdentifiers:isa completion:v0 + 3072];
          (*(v70 + 8))(v73, v71);
          v15 = v0 + 720;
          goto LABEL_54;
        }

LABEL_64:
        __break(1u);
        return _swift_continuation_await(v15);
      }

      (*(*(v0 + 3712) + 32))(*(v0 + 3728), *(v0 + 3696), *(v0 + 3704));
      v15 = [objc_opt_self() defaultWorkspace];
      if (v15)
      {
        v19 = v15;
        v20 = *(v0 + 3728);
        v21 = *(v0 + 3712);
        v22 = *(v0 + 3704);
        URL._bridgeToObjectiveC()(v18);
        v24 = v23;
        sub_100528684(_swiftEmptyArrayStorage);
        v25 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v19 openSensitiveURL:v24 withOptions:v25];

        (*(v21 + 8))(v20, v22);
        goto LABEL_15;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v11 = *(v0 + 3688);
    URL.init(string:)();
    v12 = *(v6 + 48);
    if (v12(v11, 1, v7) == 1)
    {
      v13 = *(v0 + 3704);
      v14 = *(v0 + 3680);
      URL.init(string:)();
      v15 = v12(v14, 1, v13);
      if (v15 == 1)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v16 = *(v0 + 3704);
      v17 = *(v0 + 3688);
      (*(*(v0 + 3712) + 32))(*(v0 + 3720), *(v0 + 3680), v16);
      if (v12(v17, 1, v16) != 1)
      {
        sub_1000032A8(*(v0 + 3688), &unk_1007809F0);
      }
    }

    else
    {
      (*(*(v0 + 3712) + 32))(*(v0 + 3720), *(v0 + 3688), *(v0 + 3704));
    }

    v15 = [objc_opt_self() defaultWorkspace];
    *(v0 + 3976) = v15;
    if (v15)
    {
      v39 = v15;
      v40 = *(v0 + 3656);
      v41 = *(v0 + 3648);
      v42 = *(v0 + 3640);
      URL._bridgeToObjectiveC()((v0 + 3136));
      v74 = v43;
      *(v0 + 3984) = v43;
      *(v0 + 784) = v0;
      *(v0 + 824) = v0 + 3448;
      *(v0 + 792) = sub_1004F2878;
      swift_continuation_init();
      *(v0 + 3192) = v42;
      v44 = sub_10020A748((v0 + 3168));
      sub_1001F0C48(&qword_10077ECA0);
      sub_1001F0C48(&unk_10077F940);
      CheckedContinuation.init(continuation:function:)();
      (*(v41 + 32))(v44, v40, v42);
      *(v0 + 3136) = _NSConcreteStackBlock;
      *(v0 + 3144) = 1107296256;
      *(v0 + 3152) = sub_1003FA170;
      *(v0 + 3160) = &unk_1007680F8;
      [v39 openURL:v74 configuration:0 completionHandler:?];
      (*(v41 + 8))(v44, v42);
      v15 = v0 + 784;
LABEL_54:

      return _swift_continuation_await(v15);
    }

    __break(1u);
    goto LABEL_62;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(v0 + 8);

  return v9(1);
}

uint64_t sub_1004F2878()
{
  v1 = *(*v0 + 816);
  *(*v0 + 3992) = v1;
  if (v1)
  {
    v2 = sub_1004F79DC;
  }

  else
  {
    v2 = sub_1004F29B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F29B4()
{
  v1 = *(v0 + 3984);
  v2 = *(v0 + 3976);
  (*(*(v0 + 3712) + 8))(*(v0 + 3720), *(v0 + 3704));

  v3 = objc_allocWithZone(FLFollowUpController);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithClientIdentifier:v4];
  *(v0 + 4000) = v5;

  if (!v5)
  {
LABEL_7:
    *(v0 + 4032) = 0;
    *(v0 + 1072) = 3;
    *(v0 + 1128) = 0;
    *(v0 + 1080) = 0u;
    *(v0 + 1096) = 0u;
    *(v0 + 1112) = 0u;
    *(v0 + 1136) = 41;
    v17 = swift_task_alloc();
    *(v0 + 4040) = v17;
    *v17 = v0;
    v17[1] = sub_1004F3250;

    return sub_1006600F0(v0 + 1072);
  }

  *(v0 + 3440) = 0;
  v6 = [v5 pendingFollowUpItems:v0 + 3440];
  v7 = *(v0 + 3440);
  if (!v6)
  {
    v16 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_7;
  }

  v8 = v6;
  v9 = *(v0 + 3456);
  sub_100006190(0, &qword_1007860C0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v7;

  v12 = swift_task_alloc();
  v12[2] = v9;
  v13 = sub_1004F030C(sub_1004F8634, v12, v10);
  *(v0 + 4008) = 0;

  if (v13 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 < 2)
    {
      goto LABEL_5;
    }

    v14 = v19;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20 < 0)
    {
      __break(1u);
      return _swift_continuation_await(v20);
    }

    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14;
    if (v14 < 2)
    {
LABEL_5:

      goto LABEL_7;
    }
  }

  v21 = v14 - 1;
  if (v15 < v21)
  {
    goto LABEL_40;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v22);
      v22 = v23;
    }

    while (v21 != v23);
  }

  if (v13 >> 62)
  {

    _CocoaArrayWrapper.subscript.getter();
    v25 = v26;
    v24 = v27;
    v21 = v28 >> 1;
  }

  else
  {
    v24 = 0;
    v25 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  swift_unknownObjectRetain();

  v29 = v21 - v24;
  if (__OFSUB__(v21, v24))
  {
    goto LABEL_41;
  }

  v47 = v5;
  if (!v29)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_36;
  }

  sub_10052640C(0, v29 & ~(v29 >> 63), 0);
  swift_unknownObjectRelease();
  if (v29 < 0)
  {
LABEL_42:
    __break(1u);
  }

  if (v21 <= v24)
  {
    v30 = v24;
  }

  else
  {
    v30 = v21;
  }

  v31 = v30 - v24;
  v32 = (v25 + 8 * v24);
  do
  {
    if (!v31)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v33 = *v32;
    v34 = [v33 uniqueIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {

      v36 = 0;
      v38 = 0;
    }

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_10052640C((v39 > 1), v40 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
    --v31;
    ++v32;
    --v29;
  }

  while (v29);
  swift_unknownObjectRelease();
LABEL_36:
  v42 = *(v0 + 3632);
  v43 = *(v0 + 3624);
  v44 = *(v0 + 3616);
  v48 = v47;
  sub_10023585C(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 4016) = isa;

  *(v0 + 720) = v0;
  *(v0 + 760) = v0 + 955;
  *(v0 + 728) = sub_1004F3014;
  swift_continuation_init();
  *(v0 + 3128) = v44;
  v46 = sub_10020A748((v0 + 3104));
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v43 + 32))(v46, v42, v44);
  *(v0 + 3072) = _NSConcreteStackBlock;
  *(v0 + 3080) = 1107296256;
  *(v0 + 3088) = sub_10041DC48;
  *(v0 + 3096) = &unk_1007680D0;
  [v48 clearPendingFollowUpItemsWithUniqueIdentifiers:isa completion:v0 + 3072];
  (*(v43 + 8))(v46, v44);
  v20 = v0 + 720;

  return _swift_continuation_await(v20);
}