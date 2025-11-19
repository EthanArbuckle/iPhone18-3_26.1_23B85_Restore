uint64_t sub_16A0@<X0>(uint64_t a1@<X8>)
{
  *&v114 = sub_B088();
  *(&v114 + 1) = v2;
  v3 = sub_ACD0();
  sub_A99C(v3, v4, v5, v6, v7, v8, v9, v10, v79, v86, v94, v102, v109[0], v110, v111, v112, v113, v114);
  sub_9878(v109);
  if (v115)
  {
    if (sub_A8A8())
    {
      v11 = v95;
      goto LABEL_6;
    }
  }

  else
  {
    sub_9D78(&v114, &qword_14748, &qword_BA00);
  }

  v11 = 0;
LABEL_6:
  *&v114 = sub_B088();
  *(&v114 + 1) = v12;
  v13 = sub_ACD0();
  sub_A99C(v13, v14, v15, v16, v17, v18, v19, v20, v80, v87, v95, v103, v109[0], v110, v111, v112, v113, v114);
  sub_9878(v109);
  if (v115)
  {
    if (sub_A8A8())
    {
      HIDWORD(v88) = v96;
      goto LABEL_11;
    }
  }

  else
  {
    sub_9D78(&v114, &qword_14748, &qword_BA00);
  }

  HIDWORD(v88) = 0;
LABEL_11:
  *&v114 = 0xD000000000000019;
  *(&v114 + 1) = 0x800000000000C000;
  v21 = sub_ACD0();
  sub_A99C(v21, v22, v23, v24, v25, v26, v27, v28, v81, v88, v96, v104, v109[0], v110, v111, v112, v113, v114);
  sub_9878(v109);
  if (v115)
  {
    if (sub_A8A8())
    {
      v29 = v97;
      goto LABEL_16;
    }
  }

  else
  {
    sub_9D78(&v114, &qword_14748, &qword_BA00);
  }

  v29 = 0;
LABEL_16:
  *&v114 = sub_B088();
  *(&v114 + 1) = v30;
  v31 = sub_ACD0();
  sub_A99C(v31, v32, v33, v34, v35, v36, v37, v38, v82, v89, v97, v105, v109[0], v110, v111, v112, v113, v114);
  sub_9878(v109);
  if (v115)
  {
    v39 = sub_A8A8();
    if (v39)
    {
      v40 = v98;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v106;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    sub_9D78(&v114, &qword_14748, &qword_BA00);
    v40 = 0;
    v41 = 0;
  }

  *&v114 = sub_B088();
  *(&v114 + 1) = v42;
  v43 = sub_ACD0();
  sub_A99C(v43, v44, v45, v46, v47, v48, v49, v50, v83, v90, v98, v106, v109[0], v110, v111, v112, v113, v114);
  sub_9878(v109);
  if (v115)
  {
    v51 = sub_A8A8();
    if (v51)
    {
      v52 = v99;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v107;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    sub_9D78(&v114, &qword_14748, &qword_BA00);
    v52 = 0;
    v53 = 0;
  }

  *&v114 = sub_B088();
  *(&v114 + 1) = v54;
  v55 = sub_ACD0();
  sub_A99C(v55, v56, v57, v58, v59, v60, v61, v62, v84, v91, v99, v107, v109[0], v110, v111, v112, v113, v114);
  sub_9878(v109);
  if (v115)
  {
    v63 = sub_A8A8();
    if (v63)
    {
      v64 = v100;
    }

    else
    {
      v64 = 0;
    }

    v65 = v63 ^ 1;
  }

  else
  {
    sub_9D78(&v114, &qword_14748, &qword_BA00);
    v64 = 0;
    v65 = 1;
  }

  v116 = v65;
  *&v114 = sub_B088();
  *(&v114 + 1) = v66;
  v67 = sub_ACD0();
  sub_A99C(v67, v68, v69, v70, v71, v72, v73, v74, v85, v92, v100, v108, v109[0], v110, v111, v112, v113, v114);

  sub_9878(v109);
  if (v115)
  {
    sub_8188(&qword_148B8, &qword_BAC0);
    result = sub_A8A8();
    v76 = v101;
    if (!result)
    {
      v76 = 0;
    }
  }

  else
  {
    result = sub_9D78(&v114, &qword_14748, &qword_BA00);
    v76 = 0;
  }

  v77 = v29 | ~v11;
  v78 = v116;
  if (v93)
  {
    v77 = v29;
  }

  *a1 = v11;
  *(a1 + 1) = v77 & 1;
  *(a1 + 8) = v40;
  *(a1 + 16) = v41;
  *(a1 + 24) = v52;
  *(a1 + 32) = v53;
  *(a1 + 40) = v64;
  *(a1 + 48) = v78;
  *(a1 + 56) = v76;
  return result;
}

double sub_1A88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_90FC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_979C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1AEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_9140(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_979C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_9140(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1BA0(char a1)
{
  if (a1)
  {
    return 0x53746E756F636361;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_1BE0()
{
  v0 = sub_B088();
  v2 = v1;
  if (v0 == sub_B088() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_B228();
  }

  return v5 & 1;
}

id sub_1C64()
{
  result = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (result)
  {
    result = [objc_opt_self() shared];
    if (result)
    {
      v1 = sub_AFE8();
      v2 = *(v1 + 48);
      v3 = *(v1 + 52);
      swift_allocObject();
      sub_AFC8();
      v4 = [objc_allocWithZone(AAFollowUpController) init];
      v5 = objc_allocWithZone(type metadata accessor for AccountAuthenticationPlugin());
      v6 = sub_AE70();
      v8 = sub_1D80(v6, v7, v4);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
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

id sub_1D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___GKAccountAuthenticationPlugin_authController] = a1;
  *&v3[OBJC_IVAR___GKAccountAuthenticationPlugin_responseHandler] = a2;
  *&v3[OBJC_IVAR___GKAccountAuthenticationPlugin_followUpController] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for AccountAuthenticationPlugin();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1DD8()
{
  sub_AF84();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_8188(&qword_147B0, &qword_BA50);
  v11 = sub_ACAC(v10);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  sub_AC20();
  v14 = sub_B128();
  sub_AE7C(v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v0;
  v15[5] = v9;
  v15[6] = v7;
  v15[7] = v5;
  v15[8] = v3;
  v16 = v7;
  v17 = v0;
  v18 = v9;
  v19 = sub_AAA8();
  sub_A468(v19);
  v20 = sub_ABF0();
  sub_2118(v20, v21, v1, v22, v15);

  sub_AF70();
}

uint64_t sub_1EC4()
{
  sub_A968();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1F74;

  return sub_2548();
}

uint64_t sub_1F74()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = sub_A87C();

  return _swift_task_switch(v6);
}

void sub_205C()
{
  sub_A968();
  v1 = v0[6];
  v2 = v0[3];
  if (v1 != &dword_0 + 1)
  {
    if (v2)
    {
      v4 = v0[4];
      v5 = v1;
      v2(0, v1);

      sub_A590(v1);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v0[4];
  v2(v0[2], 0);
LABEL_6:
  sub_A990();

  v6();
}

uint64_t sub_2118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_8188(&qword_147B0, &qword_BA50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v25 - v10;
  sub_9CE0(a3, v25 - v10);
  v12 = sub_B128();
  v13 = sub_9D50(v11, 1, v12);

  if (v13 == 1)
  {
    sub_9D78(v11, &qword_147B0, &qword_BA50);
  }

  else
  {
    sub_B118();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_B0F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_B098() + 32;
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

      sub_9D78(a3, &qword_147B0, &qword_BA50);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9D78(a3, &qword_147B0, &qword_BA50);
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

void sub_24D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_AF98();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2548()
{
  sub_A8E4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_B018();
  v1[5] = v4;
  sub_A974(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_ADAC();
  v1[8] = swift_task_alloc();
  v8 = sub_A87C();

  return _swift_task_switch(v8);
}

void sub_25FC()
{
  sub_AF5C();
  sub_AA60();
  v1 = *(v0 + 64);
  sub_AFF8();
  v2 = sub_B008();
  v3 = sub_B178();
  if (sub_AD1C(v3))
  {
    sub_A9F8();
    v4 = swift_slowAlloc();
    sub_ADFC(v4);
    sub_AAB4(&dword_0, v5, v6, "Received call to verify Game Center credentials");
    sub_A89C();
  }

  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);

  *(v0 + 72) = *(v9 + 8);
  v11 = sub_ABBC();
  v12(v11);
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = [*(v0 + 24) client];
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = sub_B088();
  v17 = sub_965C(v15, v16, v14);

  if (v17)
  {
    if (*(v0 + 16))
    {
      v18 = swift_task_alloc();
      *(v0 + 80) = v18;
      *v18 = v0;
      v18[1] = sub_27DC;
      v19 = *(v0 + 32);
      sub_AE08();

      sub_6964();
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  sub_A2DC(0, &qword_14780, NSError_ptr);
  sub_AEBC("The application is not permitted to renew GameCenter account credentials.");
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);

  v23 = *(v0 + 8);
  sub_AE08();

  v26(v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_27DC()
{
  sub_A8E4();
  sub_A984();
  v3 = v2;
  sub_ABE0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_A848();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_AA24();

    return _swift_task_switch(v9);
  }

  else
  {
    v11 = v3[7];
    v10 = v3[8];

    v12 = *(v7 + 8);

    return v12(1);
  }
}

uint64_t sub_2908()
{
  sub_AA60();
  v1 = v0[11];
  v2 = v0[7];
  sub_AFF8();
  swift_errorRetain();
  v3 = sub_B008();
  v4 = sub_B168();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = sub_ACB8();
    v7 = sub_ABC8();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_AD54(&dword_0, v9, v4, "Token fetching during verification failed with error: %@");
    sub_9D78(v7, &qword_14738, &qword_B9F0);
    sub_A89C();

    sub_A89C();
  }

  v10 = v0[11];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];

  v11(v12, v14);
  v15 = sub_AF98();

  v17 = v0[7];
  v16 = v0[8];

  v18 = v0[1];

  return v18(v15);
}

id sub_2A80(uint64_t a1, uint64_t a2)
{
  sub_B088();
  sub_AE1C();
  sub_8188(&qword_14788, &qword_BA38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B940;
  *(inited + 32) = sub_B088();
  *(inited + 40) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_AE4C();
  v6 = sub_B048();
  v7 = objc_allocWithZone(NSError);
  v8 = sub_AC30();
  return sub_8474(v8, v9, 7, v6);
}

void sub_2B68()
{
  sub_AF84();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_8188(&qword_147B0, &qword_BA50);
  v13 = sub_ACAC(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_AC20();
  v16 = sub_B128();
  sub_AE7C(v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v0;
  v17[5] = v11;
  v17[6] = v9;
  v17[7] = v7;
  v17[8] = v5;
  v17[9] = v3;

  v18 = v0;
  v19 = v11;
  v20 = v9;
  sub_A468(v5);
  v21 = sub_ABF0();
  sub_2118(v21, v22, v1, v23, v17);

  sub_AF70();
}

uint64_t sub_2C64()
{
  sub_A968();
  v0[2] = v1;
  v0[3] = v5;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2D1C;
  sub_AAA8();

  return sub_2FFC();
}

uint64_t sub_2D1C()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;

  v7 = sub_A87C();

  return _swift_task_switch(v7);
}

void sub_2E08()
{
  sub_A968();
  v1 = *(v0 + 16);
  if (!*(v0 + 48))
  {
    if (v1)
    {
      v7 = *(v0 + 40);
      v8 = *(v0 + 24);
      v9 = v7;
      v1(1, v7);
      sub_A478(v7, 0);
      v5 = v7;
      v6 = 0;
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (*(v0 + 48) != 1)
  {
    if (v1)
    {
      v10 = *(v0 + 24);
      v1(0, 0);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v2;
  v1(2, v2);

  v5 = v2;
  v6 = 1;
LABEL_7:
  sub_A478(v5, v6);
LABEL_10:
  sub_A990();

  v11();
}

uint64_t sub_2FFC()
{
  sub_A8E4();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v5 = sub_B018();
  v1[31] = v5;
  sub_A974(v5);
  v1[32] = v6;
  v8 = *(v7 + 64);
  v1[33] = sub_ADAC();
  v1[34] = swift_task_alloc();
  v9 = sub_A87C();

  return _swift_task_switch(v9);
}

uint64_t sub_30B0()
{
  sub_AF5C();
  sub_AA60();
  v1 = *(v0 + 272);
  sub_AFF8();
  v2 = sub_B008();
  v3 = sub_B178();
  if (sub_AD1C(v3))
  {
    sub_A9F8();
    v4 = swift_slowAlloc();
    sub_ADFC(v4);
    sub_AAB4(&dword_0, v5, v6, "Received call to renew Game Center credentials");
    sub_A89C();
  }

  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v10 = *(v0 + 224);

  *(v0 + 280) = *(v9 + 8);
  v11 = sub_ABBC();
  v13 = v12(v11);
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = *(v0 + 224);
  v13 = [v21 client];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v13;
  v23 = sub_B088();
  v25 = sub_965C(v23, v24, v22);

  if (v25)
  {
    v26 = *(v0 + 216);
    if (v26)
    {
      if ([*(v0 + 216) isAuthenticated])
      {
        [v26 setAuthenticated:0];
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 208;
        *(v0 + 24) = sub_3398;
        v27 = swift_continuation_init();
        *(v0 + 200) = sub_8188(&qword_14790, &qword_BA40);
        *(v0 + 144) = _NSConcreteStackBlock;
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_375C;
        *(v0 + 168) = &unk_107F0;
        *(v0 + 176) = v27;
        [v21 gkSaveAccount:v26 verify:0 withCompletion:v0 + 144];
        sub_AE08();

        return _swift_continuation_await(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v13 = *(v0 + 232);
      if (v13)
      {
        v39 = *(v0 + 216);
        v40 = *(v0 + 224);

        sub_16A0(v0 + 80);
        v41 = swift_task_alloc();
        *(v0 + 288) = v41;
        *v41 = v0;
        sub_A914(v41);
        sub_AE08();

        return sub_37C8();
      }

LABEL_21:
      __break(1u);
      return _swift_continuation_await(v13, v14, v15, v16, v17, v18, v19, v20);
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_A2DC(0, &qword_14780, NSError_ptr);
  sub_AEBC("The application is not permitted to renew GameCenter account credentials.");
  v29 = *(v0 + 264);
  v28 = *(v0 + 272);

  sub_AA50();
  sub_AE08();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_3398()
{
  sub_A8E4();
  v5 = *v0;
  v1 = *v0;
  sub_A848();
  *v2 = v1;
  sub_AA24();

  return _swift_task_switch(v3);
}

uint64_t sub_3468()
{
  v1 = v0[26];
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = v0[33];
    sub_AFF8();
    v5 = v3;
    v6 = sub_B008();
    LOBYTE(v4) = sub_B168();

    if (os_log_type_enabled(v6, v4))
    {
      v7 = sub_ACB8();
      v8 = sub_ABC8();
      *v7 = 138412290;
      v9 = v5;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      sub_AEDC(&dword_0, v11, v12, "Failed to save account during credential renewal: %@");
      sub_9D78(v8, &qword_14738, &qword_B9F0);
      sub_A89C();

      sub_A89C();

      v5 = v6;
      v6 = v9;
    }

    v13 = v0[35];
    v15 = v0[32];
    v14 = v0[33];
    v16 = v0[31];

    v13(v14, v16);
  }

  else
  {
  }

  result = v0[29];
  if (result)
  {
    v18 = v0[27];
    v19 = v0[28];

    sub_16A0((v0 + 10));
    v20 = swift_task_alloc();
    v0[36] = v20;
    *v20 = v0;
    sub_A914(v20);

    return sub_37C8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3620()
{
  sub_AF5C();
  sub_AA60();
  v1 = *v0;
  v2 = *v0;
  sub_A848();
  *v3 = v2;
  v4 = v1[36];
  v5 = *v0;
  *v3 = *v0;

  sub_A31C((v2 + 10));
  v6 = v1[34];
  v7 = v1[33];

  v8 = v5[1];
  sub_AE08();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_375C(uint64_t a1, void *a2)
{
  v3 = *sub_9938((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_37A8(v3, v4);
}

uint64_t sub_37C8()
{
  sub_A8E4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_B018();
  v1[9] = v5;
  sub_A974(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = sub_ADAC();
  v1[12] = swift_task_alloc();
  v9 = sub_A87C();

  return _swift_task_switch(v9);
}

uint64_t sub_387C()
{
  sub_A968();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  *(v0 + 232) = [*(v0 + 40) isAuthenticated];
  sub_A2DC(0, &qword_147C0, AKAppleIDAuthenticationContext_ptr);
  v4 = sub_AAA8();
  v6 = sub_44E8(v4, v5, v1);
  *(v0 + 104) = v6;
  v7 = *(v2 + OBJC_IVAR___GKAccountAuthenticationPlugin_authController);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_3964;

  return sub_4AB4(v6);
}

uint64_t sub_3964()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v6;

  v7 = sub_A87C();

  return _swift_task_switch(v7);
}

uint64_t sub_3A4C()
{
  sub_A968();
  v2 = v0[15];
  v1 = v0[16];
  if (v2)
  {
    v3 = sub_B088();
    v5 = v4;
    v6 = v1;

    v7 = sub_1B50(v3, v5, v2);

    if (v7)
    {
      v0[4] = v7;
      sub_8188(&qword_14890, &qword_BAA0);
      if (swift_dynamicCast())
      {
        v8 = v0[13];
        v9 = v0[3];
        v0[17] = v0[2];
        v0[18] = v9;
        if (sub_57D0(v8))
        {
          v10 = v0[5];
          sub_4CF8();
          v11 = swift_task_alloc();
          v0[19] = v11;
          *v11 = v0;
          v11[1] = sub_3C18;
          v12 = v0[8];
          v14 = v0[5];
          v13 = v0[6];

          return sub_6964();
        }
      }
    }
  }

  else
  {
    v6 = v1;
  }

  v0[23] = v2;
  v0[24] = v6;
  v16 = swift_task_alloc();
  v0[25] = v16;
  *v16 = v0;
  sub_A858(v16);

  return sub_5AFC();
}

uint64_t sub_3C18()
{
  sub_A8E4();
  sub_A984();
  v3 = v2;
  sub_ABE0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_A848();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    v9 = *(v3 + 144);
  }

  sub_AA24();

  return _swift_task_switch(v10);
}

uint64_t sub_3D18()
{
  v1 = v0[16];
  if (v1 && [v1 ak_isAuthenticationErrorWithCode:-7033])
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[12];
    v5 = v0[5];
    sub_4CF8();

    sub_AFF8();
    v6 = sub_B008();
    v7 = sub_B178();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[9];
    v14 = v0[10];
    if (v8)
    {
      sub_A9F8();
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v6, v7, "Successfully renewed credentials.", v15, 2u);
      sub_A89C();
    }

    (*(v14 + 8))(v11, v13);
    v17 = v0[11];
    v16 = v0[12];

    v18 = v0[1];

    return v18(0, 2);
  }

  else
  {
    v20 = v0[18];

    v21 = swift_task_alloc();
    v0[21] = v21;
    *v21 = v0;
    sub_A858(v21);

    return sub_5AFC();
  }
}

uint64_t sub_3F00()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 176) = v5;
  *(v1 + 233) = v6;

  v7 = sub_A87C();

  return _swift_task_switch(v7);
}

uint64_t sub_3FEC()
{
  sub_A968();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  v3 = *(v0 + 176);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 233);

  v7 = sub_AA50();

  return v8(v7, v6);
}

uint64_t sub_407C()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 208) = v5;
  *(v1 + 234) = v6;

  v7 = sub_A87C();

  return _swift_task_switch(v7);
}

uint64_t sub_4168()
{
  sub_A968();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 104);

  v4 = *(v0 + 208);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 234);

  v8 = sub_AA50();

  return v9(v8, v7);
}

uint64_t sub_41F8()
{
  sub_AF5C();
  sub_AA60();
  v1 = v0[20];
  v2 = v0[11];
  sub_AFF8();
  swift_errorRetain();
  v3 = sub_B008();
  v4 = sub_B168();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = sub_ACB8();
    v7 = sub_ABC8();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    sub_AD54(&dword_0, v9, v4, "Token fetching failed during renewal with error: %@");
    sub_9D78(v7, &qword_14738, &qword_B9F0);
    sub_A89C();

    sub_A89C();
  }

  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];

  v13 = *(v11 + 8);
  v14 = sub_ABBC();
  v15(v14);
  v16 = swift_task_alloc();
  v0[27] = v16;
  *v16 = v0;
  sub_A858(v16);
  sub_AE08();

  return sub_5AFC();
}

uint64_t sub_4364()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 224) = v5;
  *(v1 + 235) = v6;

  v7 = sub_A87C();

  return _swift_task_switch(v7);
}

uint64_t sub_4450()
{
  sub_A968();
  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);

  v5 = *(v0 + 224);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 235);

  v9 = sub_AA50();

  return v10(v9, v8);
}

id sub_44E8(void *a1, void *a2, uint64_t a3)
{
  v8 = sub_B018();
  v9 = sub_A834(v8);
  v58 = v10;
  v59 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_AB84();
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v17 = sub_9980(a1, &selRef_username);
  if (v18)
  {
    sub_B058();
    v17 = sub_ADC4();
  }

  else
  {
    v4 = 0;
  }

  sub_ACE8(v17, "setUsername:");

  [v16 setIsUsernameEditable:0];
  v19 = sub_9980(a1, &selRef_aa_personID);
  if (v20)
  {
    sub_B058();
    v19 = sub_ADC4();
  }

  else
  {
    v4 = 0;
  }

  sub_ACE8(v19, "setDSID:");

  v21 = sub_9980(a1, &selRef_aa_altDSID);
  if (v22)
  {
    sub_B058();
    v21 = sub_ADC4();
  }

  else
  {
    v4 = 0;
  }

  sub_ACE8(v21, "setAltDSID:");

  v23 = [v16 setAnticipateEscrowAttempt:1];
  if (*(a3 + 16))
  {
    v24 = *(a3 + 8);
    v23 = sub_B058();
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  sub_ACE8(v23, "setReason:");

  [v16 _setProxyingForApp:1];
  result = [a2 client];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v27 = sub_9A98(result, &selRef_name);
  if (v28)
  {
    sub_B058();
    v27 = sub_ADC4();
  }

  else
  {
    v25 = 0;
  }

  sub_ACE8(v27, "_setProxiedAppName:");

  v29 = *(a3 + 32);
  if (v29)
  {
    v30 = *(a3 + 24);
    v31 = *(a3 + 32);
LABEL_21:

    sub_B058();
    v32 = sub_ADC4();
    goto LABEL_22;
  }

  result = [a2 client];
  if (!result)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v32 = sub_9A98(result, &selRef_bundleID);
  if (v33)
  {
    goto LABEL_21;
  }

  v29 = 0;
LABEL_22:
  sub_ACE8(v32, "_setProxiedAppBundleID:");

  [v16 setAuthenticationType:*a3 & 1];
  sub_8188(&qword_148A8, &qword_BAB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B950;
  *(inited + 32) = 0x746E756F636361;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  strcpy((inited + 56), "accountStore");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = a2;
  sub_A2DC(0, &qword_148B0, NSObject_ptr);
  v35 = a1;
  v36 = a2;
  sub_B048();
  isa = sub_B028().super.isa;

  [v16 setClientInfo:isa];

  if ((*(a3 + 48) & 1) != 0 || !*(a3 + 40))
  {
    sub_AFF8();
    v38 = sub_B008();
    v39 = sub_B168();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_ACB8();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136315138;
      v42 = sub_B088();
      v44 = sub_8B8C(v42, v43, &v60);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v38, v39, "Invalid value service type for key %s in renewCredentials", v40, 0xCu);
      sub_9740(v41);
      sub_A89C();

      sub_A89C();
    }

    (*(v58 + 8))(v15, v59);
  }

  else
  {
    [v16 setServiceType:?];
  }

  v45 = *(a3 + 56);
  if (v45)
  {
    sub_AFF8();

    v46 = sub_B008();
    sub_B158();

    if (sub_AD94())
    {
      v47 = sub_ACB8();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 136315138;
      v49 = sub_B0E8();
      v51 = sub_8B8C(v49, v50, &v60);

      *(v47 + 4) = v51;
      sub_A958();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_9740(v48);
      sub_A89C();

      sub_A89C();
    }

    (*(v58 + 8))(v3, v59);
    sub_99DC(v45, v16);
    [v16 setShouldUpdatePersistentServiceTokens:1];
  }

  return v16;
}

uint64_t sub_4AB4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  v3 = sub_A87C();
  return _swift_task_switch(v3);
}

uint64_t sub_4ADC()
{
  sub_A968();
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[3].i64[1] = v3;
  sub_8188(&qword_14898, &qword_BAA8);
  *v3 = v0;
  v3[1] = sub_4BE0;
  sub_AA24();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_4BE0()
{
  sub_A8E4();
  sub_A984();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_A848();
  *v5 = v4;

  v6 = sub_A87C();

  return _swift_task_switch(v6);
}

void sub_4CF8()
{
  if ([v0 credential])
  {
    v1 = sub_AE70();
    v7 = v2;
    sub_9A40(v1, v3, v2);
  }

  else
  {
    objc_allocWithZone(ACAccountCredential);

    v4 = sub_AE70();
    v7 = sub_85B4(v4, v5, v6);
    [v0 setCredential:?];
  }
}

id sub_4DB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_8188(&qword_147B0, &qword_BA50);
  v7 = sub_ACAC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  result = [a2 client];
  if (result)
  {
    v13 = sub_9A98(result, &selRef_adamOrDisplayID);
    v15 = &_swiftEmptyDictionarySingleton;
    if (v14)
    {
      v16 = AAFollowUpUserInfoClientName;
      v30 = &type metadata for String;
      *&v29 = v13;
      *(&v29 + 1) = v14;
      sub_98CC(&v29, v28);
      v17 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = &_swiftEmptyDictionarySingleton;
      sub_94BC(v28, v17, isUniquelyReferenced_nonNull_native);

      v15 = v27;
    }

    v19 = sub_B128();
    sub_96B8(v11, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v3;
    v20[5] = a1;
    v20[6] = v15;
    v21 = v3;
    v22 = a1;
    v23 = sub_ABF0();
    sub_2118(v23, v24, v11, v25, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_A87C();
  return _swift_task_switch(v7);
}

uint64_t sub_4F68()
{
  sub_A968();
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR___GKAccountAuthenticationPlugin_followUpController);
  sub_550C(v0[4]);
  v3 = sub_AE70();
  sub_9F34(v3, v4, v5, 0, v2);
  sub_A990();

  return v6();
}

uint64_t sub_4FF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_8188(&qword_14778, &qword_BA30);
    v2 = sub_B1F8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v32[0] = *v12;
    *(&v32[0] + 1) = v13;

    swift_dynamicCast();
    sub_8188(&qword_14730, &qword_B9E8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_98CC(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_98CC(v31, v32);
    result = sub_B198(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_98CC(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_52C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_8188(&qword_14760, &qword_BA18);
    v2 = sub_B1F8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_98CC(&v27, v29);
    sub_98CC(v29, v30);
    sub_98CC(v30, &v28);
    result = sub_9140(v14, v13);
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      sub_9740(v20);
      result = sub_98CC(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_98CC(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_550C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_8188(&qword_14778, &qword_BA30);
    v2 = sub_B1F8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_979C(*(a1 + 56) + 32 * v11, v34 + 8);
    *&v34[0] = v12;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v12;
    type metadata accessor for AAFollowUpUserInfo(0);
    v13 = v12;
    swift_dynamicCast();
    sub_98CC((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_98CC(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_98CC(v30, v31);
    result = sub_B198(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v16];
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v22 = v2[6] + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    result = sub_98CC(v31, (v2[7] + 32 * v17));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_57D0(void *a1)
{
  v3 = sub_B018();
  v4 = sub_A834(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_AB84();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  if ([a1 serviceType] != &dword_0 + 2)
  {
    if ([a1 clientInfo])
    {
      sub_B188();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26 = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      sub_8188(&qword_14798, &qword_BA48);
      if ((sub_AD00() & 1) == 0)
      {
LABEL_17:
        sub_AFF8();
        v18 = sub_B008();
        v19 = sub_B178();
        if (os_log_type_enabled(v18, v19))
        {
          sub_A9F8();
          *swift_slowAlloc() = 0;
          sub_AE9C(&dword_0, v20, v21, "Authentication results are not valid, because we are missing critical info");
          sub_A89C();
        }

        (*(v6 + 8))(v11, v3);
        return 0;
      }

      v15 = v23;
      sub_1AEC(0x746E756F636361, 0xE700000000000000, v23, &v26);
      if (*(&v27 + 1))
      {
        sub_A2DC(0, &qword_147A0, ACAccount_ptr);
        if ((sub_AD00() & 1) == 0)
        {

          goto LABEL_17;
        }

        v16 = v24;
        sub_1AEC(0x53746E756F636361, 0xEC00000065726F74, v15, &v26);

        if (*(&v27 + 1))
        {
          sub_A2DC(0, &qword_147A8, ACDAccountStore_ptr);
          if (sub_AD00())
          {

            return 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    sub_9D78(&v26, &qword_14748, &qword_BA00);
    goto LABEL_17;
  }

  sub_AFF8();
  v12 = sub_B008();
  v13 = sub_B178();
  if (os_log_type_enabled(v12, v13))
  {
    sub_A9F8();
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Authentication results are not valid, because this is an iTunes login.", v14, 2u);
    sub_A89C();
  }

  (*(v6 + 8))(v1, v3);
  return 0;
}

uint64_t sub_5AFC()
{
  sub_A8E4();
  *(v1 + 224) = v2;
  *(v1 + 168) = v3;
  *(v1 + 176) = v0;
  *(v1 + 152) = v4;
  *(v1 + 160) = v5;
  v6 = sub_B018();
  *(v1 + 184) = v6;
  sub_A974(v6);
  *(v1 + 192) = v7;
  v9 = *(v8 + 64);
  *(v1 + 200) = sub_ADAC();
  *(v1 + 208) = swift_task_alloc();
  v10 = sub_A87C();

  return _swift_task_switch(v10);
}

uint64_t sub_5BB4()
{
  sub_AF5C();
  sub_AA60();
  v1 = *(v0 + 208);
  sub_AFF8();
  v2 = sub_B008();
  v3 = sub_B178();
  if (sub_AD1C(v3))
  {
    sub_A9F8();
    v4 = swift_slowAlloc();
    sub_ADFC(v4);
    sub_AAB4(&dword_0, v5, v6, "Handling invalid auth results.");
    sub_A89C();
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = *(v0 + 152);

  *(v0 + 216) = *(v9 + 8);
  v11 = sub_ABBC();
  v12(v11);
  if (v10)
  {
    v13 = *(v0 + 152);
    if ([v13 ak_isUserCancelError])
    {
      if (sub_81D0())
      {
        v14 = *(v0 + 176);
        sub_4DB8(*(v0 + 160), *(v0 + 168));
      }

LABEL_17:
      v31 = *(v0 + 200);
      v30 = *(v0 + 208);

      v32 = *(v0 + 8);
      v33 = *(v0 + 152);
      sub_AE08();

      return v37(v34, v35, v36, v37, v38, v39, v40, v41);
    }
  }

  if (*(v0 + 224) != 1)
  {
    v26 = *(v0 + 152);
    if (v26)
    {
      v27 = *(v0 + 152);
      if (sub_81D0())
      {
        v28 = *(v0 + 176);
        sub_4DB8(*(v0 + 160), *(v0 + 168));
      }
    }

    v29 = v26;
    goto LABEL_17;
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 168);
  [v15 setAuthenticated:1];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_5E18;
  v17 = swift_continuation_init();
  *(v0 + 136) = sub_8188(&qword_14790, &qword_BA40);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_375C;
  *(v0 + 104) = &unk_10700;
  *(v0 + 112) = v17;
  [v16 gkSaveAccount:v15 verify:0 withCompletion:v0 + 80];
  sub_AE08();

  return _swift_continuation_await(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_5E18()
{
  sub_A8E4();
  v5 = *v0;
  v1 = *v0;
  sub_A848();
  *v2 = v1;
  sub_AA24();

  return _swift_task_switch(v3);
}

uint64_t sub_5EE8()
{
  v1 = *(v0 + 144);
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 200);
    sub_AFF8();
    v5 = v3;
    v6 = sub_B008();
    LOBYTE(v4) = sub_B168();

    if (os_log_type_enabled(v6, v4))
    {
      v7 = sub_ACB8();
      v8 = sub_ABC8();
      *v7 = 138412290;
      v9 = v5;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      sub_AEDC(&dword_0, v11, v12, "Failed to save account while handling authentication results. Error: %@");
      sub_9D78(v8, &qword_14738, &qword_B9F0);
      sub_A89C();

      sub_A89C();

      v5 = v6;
      v6 = v9;
    }

    v13 = *(v0 + 216);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);

    v13(v14, v16);
  }

  else
  {
  }

  v17 = *(v0 + 152);
  if (v17)
  {
    v18 = *(v0 + 152);
    if (sub_81D0())
    {
      v19 = *(v0 + 176);
      sub_4DB8(*(v0 + 160), *(v0 + 168));
    }
  }

  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v22 = v17;

  v23 = *(v0 + 8);
  v24 = *(v0 + 152);

  return v23(v24, 1);
}

uint64_t sub_60AC()
{
  v0 = sub_B018();
  v1 = sub_A834(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_A8C8();
  sub_AFF8();
  v6 = sub_B008();
  v7 = sub_B178();
  if (os_log_type_enabled(v6, v7))
  {
    sub_A9F8();
    *swift_slowAlloc() = 0;
    sub_AE9C(&dword_0, v8, v9, "Received call to for whether Game Center accounts are push enabled.");
    sub_A89C();
  }

  v10 = *(v3 + 8);
  v11 = sub_AE28();
  v12(v11);
  return 1;
}

uint64_t sub_61E8(uint64_t a1, void *a2)
{
  v5 = sub_B018();
  v6 = sub_A834(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_A8C8();
  sub_AFF8();
  v11 = sub_B008();
  v12 = sub_B178();
  if (os_log_type_enabled(v11, v12))
  {
    sub_A9F8();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Received call to for retrieve Game Center credentials.", v13, 2u);
    sub_A89C();
  }

  (*(v8 + 8))(v2, v5);
  if (!a2)
  {
    sub_B088();
    sub_AE1C();
    sub_8188(&qword_14788, &qword_BA38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B940;
    *(inited + 32) = sub_B088();
    *(inited + 40) = v20;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000037;
    *(inited + 56) = 0x800000000000BE70;
    v21 = sub_B048();
    v22 = objc_allocWithZone(NSError);
    v23 = sub_AC30();
    v14 = v24;
    sub_8474(v23, v25, 1, v21);
    swift_willThrow();
    return v14;
  }

  v14 = sub_B088();
  v16 = v15;
  v17 = a2;
  if ((sub_965C(v14, v16, v17) & 1) == 0)
  {
    sub_A2DC(0, &qword_14780, NSError_ptr);
    sub_2A80(0xD00000000000004CLL, 0x800000000000BEB0);
LABEL_10:
    swift_willThrow();

    return v14;
  }

  v18 = [objc_opt_self() credentialForAccount:a1 clientID:0];
  if (!v18)
  {
    sub_B088();
    sub_AE1C();
    v26 = objc_allocWithZone(NSError);
    v27 = sub_AC30();
    v14 = v28;
    sub_8474(v27, v29, 11, 0);
    goto LABEL_10;
  }

  v14 = v18;

  return v14;
}

void sub_65BC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, id))
{
  v7 = sub_B018();
  v8 = sub_A834(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_A8C8();
  sub_AFF8();
  v13 = sub_B008();
  v14 = sub_B178();
  if (os_log_type_enabled(v13, v14))
  {
    sub_A9F8();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Received call to discover Game Center properties.", v15, 2u);
    sub_A89C();
  }

  (*(v10 + 8))(v4, v7);
  if (!a2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = [a2 client];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = sub_B088();
  v20 = sub_965C(v18, v19, v17);

  if (v20)
  {
    v21 = sub_B088();
    v23 = v22;
    sub_8188(&qword_14788, &qword_BA38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B940;
    *(inited + 32) = sub_B088();
    *(inited + 40) = v25;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000063;
    *(inited + 56) = 0x800000000000BE00;
    v26 = sub_B048();
    v27 = objc_allocWithZone(NSError);
    v28 = sub_8474(v21, v23, 4, v26);
    if (a4)
    {
LABEL_10:
      v29 = v28;
      a4(0, v28);

      return;
    }

    __break(1u);
  }

  if (a4)
  {
    sub_A2DC(0, &qword_14780, NSError_ptr);
    v28 = sub_2A80(0xD00000000000004ALL, 0x800000000000BDB0);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_6964()
{
  sub_A8E4();
  v1[48] = v2;
  v1[49] = v0;
  v1[47] = v3;
  v4 = sub_8188(&qword_14720, &qword_B9D8);
  sub_ACAC(v4);
  v6 = *(v5 + 64) + 15;
  v1[50] = swift_task_alloc();
  v7 = sub_B018();
  v1[51] = v7;
  sub_A974(v7);
  v1[52] = v8;
  v10 = *(v9 + 64);
  v1[53] = sub_ADAC();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v11 = sub_A87C();

  return _swift_task_switch(v11);
}

uint64_t sub_6FE8()
{
  sub_A8E4();
  sub_A984();
  sub_A88C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 488) = *(v3 + 48);
  sub_AA24();

  return _swift_task_switch(v4);
}

uint64_t sub_70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t), uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_AC78();
  a23 = v31;
  a24 = v32;
  sub_ADF0();
  a22 = v25;
  v33 = *(v25 + 464);

  v34 = *(v25 + 344);
  if (!v34)
  {
    v53 = *(v25 + 456);
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v33 = *(v25 + 456);

    goto LABEL_9;
  }

  v24 = v35;
  v36 = [v35 status];
  if (!v36)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return AuthenticationPluginResponseHandler.process(response:account:store:)(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v26 = v36;
  v33 = [v36 integerValue];

  if (v33 < 1)
  {
    v68 = *(v25 + 456);

    v34 = v34;
    v69 = sub_9800(v24);
    if (v69)
    {
      v70 = v69;
      *(v25 + 352) = sub_B088();
      *(v25 + 360) = v71;
      sub_B1B8();
      sub_1A88(v25 + 264, v70, (v25 + 304));

      sub_9878(v25 + 264);
      if (*(v25 + 328))
      {
        sub_8188(&qword_14750, &qword_BA08);
        if (swift_dynamicCast())
        {
          v72 = *(v25 + 368);

          v70 = v72;
        }
      }

      else
      {
        sub_9D78(v25 + 304, &qword_14748, &qword_BA00);
      }

      *(v25 + 496) = v70;
      v93 = *(*(v25 + 392) + OBJC_IVAR___GKAccountAuthenticationPlugin_responseHandler);
      v94 = async function pointer to AuthenticationPluginResponseHandler.process(response:account:store:)[1];
      v95 = swift_task_alloc();
      *(v25 + 504) = v95;
      *v95 = v25;
      v95[1] = sub_7728;
      v96 = *(v25 + 376);
      v97 = *(v25 + 384);
      sub_AA6C();

      return AuthenticationPluginResponseHandler.process(response:account:store:)(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16);
    }

LABEL_10:
    if ([*(v25 + 376) objectID])
    {
      sub_AA04();

      v54 = sub_AFB8();
      sub_A9D8(v54);
      sub_9D78(v34, &qword_14720, &qword_B9D8);
      v55 = sub_96E0(v24);
      if (v55)
      {
        sub_AE64(v55);
        if (v56)
        {
          sub_ABA0();
          v57 = v34;
          sub_AF14();
          v58 = sub_B008();
          sub_B158();

          sub_AD94();
          sub_AA40();
          if (v59)
          {
            a11 = v34;
            v34 = *(v25 + 376);
            a10 = v27;
            v60 = swift_slowAlloc();
            sub_ABC8();
            a9 = v28;
            v61 = sub_AB14();
            a12 = v61;
            sub_A8F0(5.778e-34);
            sub_B148();
            sub_AB4C();
            sub_8B8C(v30, v34, &a12);
            sub_AF44();
            *(v60 + 14) = v26;
            sub_A958();
            _os_log_impl(v62, v63, v64, v65, v66, 0x16u);
            sub_9D78(v29, &qword_14738, &qword_B9F0);
            sub_A89C();

            sub_9740(v61);
            sub_A89C();

            sub_A89C();

            a11(a10, a9);
          }

          else
          {

            v74 = sub_AA30();
            (v34)(v74);
          }
        }

        else
        {
        }
      }

      v75 = *(v25 + 376);
      [v75 refresh];
      v76 = objc_opt_self();
      v77 = sub_AF2C(v76, "credentialForAccount:clientID:");
      sub_AE40();
      if (v78)
      {
        if (v34)
        {
          v79 = *(v25 + 472);
          v80 = v75;
          sub_AAA8();
          sub_B058();
          sub_AEFC();
        }

        else
        {
          v81 = v75;
          v79 = 0;
        }

        v82 = sub_ACA0();
        [v82 v83];
      }

      else
      {
      }

      [sub_AE34() setCredential:v75];
    }

    else
    {
      sub_AB68();

      v67 = sub_AFB8();
      sub_A9B8(v67);
      sub_9D78(v34, &qword_14720, &qword_B9D8);
    }

    sub_AB30();

    sub_A948();
    goto LABEL_33;
  }

  v44 = v34;
  v45 = sub_9A98(v24, &selRef_statusMessage);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    sub_8188(&qword_14758, &qword_BA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B940;
    *(inited + 32) = sub_B088();
    *(inited + 40) = v50;
    *(inited + 48) = v47;
    *(inited + 56) = v48;
    v51 = sub_B048();
    v52 = sub_52C0(v51);
  }

  else
  {
    v52 = 0;
  }

  v73 = objc_allocWithZone(NSError);
  sub_8474(0xD000000000000016, 0x800000000000BD90, v33, v52);
  swift_willThrow();

  v36 = [*(v25 + 376) credential];
  if (!v36)
  {
    goto LABEL_42;
  }

  sub_AC50();

  [v44 setPassword:0];

  swift_willThrow();

  sub_A990();
LABEL_33:
  sub_AA6C();

  return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_7728()
{
  sub_A968();
  v2 = *v1;
  sub_ABE0();
  *v4 = v3;
  v5 = *(v2 + 504);
  *v4 = *v1;
  *(v3 + 512) = v0;

  v6 = *(v2 + 496);

  sub_AA24();

  return _swift_task_switch(v7);
}

id sub_7B08()
{
  v3 = *(v1 + 488);
  v4 = *(v1 + 464);
  swift_willThrow();

  v5 = *(v1 + 488);
  result = [*(v1 + 376) credential];
  if (result)
  {
    sub_AC50();

    [v0 setPassword:0];

    swift_willThrow();

    sub_A990();

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_7FB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_9938((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v8 = a4;

    return sub_8048(v7, v8);
  }

  else
  {
    v10 = a2;
    v11 = a3;

    return sub_80B4(v7, a2, a3);
  }
}

uint64_t sub_8048(uint64_t a1, uint64_t a2)
{
  sub_8188(&qword_14768, &qword_BA20);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_80B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_throwingResume();
}

id sub_80D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAuthenticationPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_8188(uint64_t *a1, uint64_t *a2)
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

id sub_81D0()
{
  if ([v0 ak_isUnableToPromptError] & 1) != 0 || (objc_msgSend(v0, "ak_isUserCancelError"))
  {
    return &dword_0 + 1;
  }

  else
  {
    return [v0 ak_isAuthenticationErrorWithCode:-7014];
  }
}

void sub_8228()
{
  sub_AF84();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_8188(&qword_148A0, &qword_BAB0);
  v8 = sub_A834(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_AC20();
  (*(v10 + 16))(v0, v6, v7);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v0, v7);
  v16[4] = sub_A070;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_83C4;
  v16[3] = &unk_107C8;
  v15 = _Block_copy(v16);

  [v4 authenticateWithContext:v2 completion:v15];
  _Block_release(v15);
  sub_AF70();
}

uint64_t sub_83C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_8188(&qword_14890, &qword_BAA0);
    v4 = sub_B038();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_B058();

  if (a4)
  {
    v8.super.isa = sub_B028().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_8524(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4.super.isa = sub_B028().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithAccount:a1 parameters:v4.super.isa];

  return v5;
}

id sub_85B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = sub_B058();
  }

  else
  {
    v4 = 0;
  }

  v5 = *a3;
  v6 = sub_ACA0();
  v8 = [v6 v7];

  return v8;
}

uint64_t sub_8624(uint64_t a1, id *a2)
{
  result = sub_B068();
  *a2 = 0;
  return result;
}

uint64_t sub_86A0(uint64_t a1, id *a2)
{
  v3 = sub_B078();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_8720@<X0>(void *a1@<X8>)
{
  result = sub_8748();
  *a1 = result;
  return result;
}

NSString sub_8748()
{
  sub_B088();
  v0 = sub_B058();

  return v0;
}

uint64_t sub_8788()
{
  sub_B088();
  v0 = sub_B0C8();

  return v0;
}

uint64_t sub_87C8()
{
  sub_B088();
  sub_B0A8();
}

Swift::Int sub_8824()
{
  sub_B088();
  sub_B248();
  sub_B0A8();
  v0 = sub_B258();

  return v0;
}

uint64_t sub_8898(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BE0();
}

uint64_t sub_88A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_B058();

  *a2 = v5;
  return result;
}

uint64_t sub_88EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8918(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_891C(uint64_t a1)
{
  v2 = sub_A790(&qword_148E8);
  v3 = sub_A790(&unk_148F0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_89B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8AAC;

  return v7(a1);
}

uint64_t sub_8AAC()
{
  sub_A8E4();
  sub_A984();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_A848();
  *v4 = v3;

  sub_A948();

  return v5();
}

uint64_t sub_8B8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_8C50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_979C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_9740(v11);
  return v7;
}

unint64_t sub_8C50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8D50(a5, a6);
    *a1 = v9;
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
    result = sub_B1D8();
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

char *sub_8D50(uint64_t a1, unint64_t a2)
{
  v4 = sub_8D9C(a1, a2);
  sub_8EB4(&off_106B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_8D9C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_B0B8())
  {
    result = sub_8F98(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_B1C8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_B1D8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_8EB4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_9008(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_8F98(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_8188(&qword_14770, &qword_BA28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_9008(char *result, int64_t a2, char a3, char *a4)
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
    sub_8188(&qword_14770, &qword_BA28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_90FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_B198(*(v2 + 40));

  return sub_924C(a1, v4);
}

unint64_t sub_9140(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_B248();
  sub_B0A8();
  v6 = sub_B258();

  return sub_9310(a1, a2, v6);
}

unint64_t sub_91B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_B088();
  sub_B248();
  sub_B0A8();
  v4 = sub_B258();

  return sub_93C4(a1, v4);
}

unint64_t sub_924C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_98DC(*(v2 + 48) + 40 * i, v7);
    v5 = sub_B1A8();
    sub_9878(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_9310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_B228() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_93C4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_B088();
    v8 = v7;
    if (v6 == sub_B088() && v8 == v9)
    {

      return i;
    }

    v11 = sub_B228();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

_OWORD *sub_94BC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_91B8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v8;
  v14 = v9;
  sub_8188(&qword_147B8, &qword_BA68);
  if (!sub_B1E8(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v15 = *v4;
  v16 = sub_91B8(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    type metadata accessor for AAFollowUpUserInfo(0);
    result = sub_B238();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v13);
    sub_9740(v19);

    return sub_98CC(a1, v19);
  }

  else
  {
    sub_95F4(v13, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_95F4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_98CC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_965C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_B058();

  v5 = [a3 hasEntitlement:v4];

  return v5;
}

uint64_t sub_96E0(void *a1)
{
  v1 = [a1 gkDirtyProperties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_B138();

  return v3;
}

uint64_t sub_9740(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_979C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9800(void *a1)
{
  v2 = [a1 responseParameters];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_B038();

  return v3;
}

_OWORD *sub_98CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_9938(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_9980(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_B088();
  sub_AE1C();

  return v2;
}

void sub_99DC(uint64_t a1, void *a2)
{
  isa = sub_B0D8().super.isa;
  [a2 setServiceIdentifiers:isa];
}

void sub_9A40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_B058();
  [a3 setPassword:v4];
}

uint64_t sub_9A98(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_B088();

  return v4;
}

uint64_t sub_9B04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_9B54()
{
  sub_A968();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_AC94(v4);
  *v5 = v6;
  v5[1] = sub_9BEC;
  sub_AC40();

  return sub_4F3C(v7, v8, v9, v10, v11, v3);
}

uint64_t sub_9BEC()
{
  sub_A8E4();
  sub_A984();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_A848();
  *v4 = v3;

  sub_A990();

  return v5();
}

uint64_t sub_9CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_8188(&qword_147B0, &qword_BA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9D78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_8188(a2, a3);
  sub_ADDC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_9DCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_9E04()
{
  sub_A968();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_AC94(v3);
  *v4 = v5;
  v6 = sub_AA88(v4);

  return v7(v6);
}

uint64_t sub_9E9C()
{
  sub_A968();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_AC94(v3);
  *v4 = v5;
  v6 = sub_AA88(v4);

  return v7(v6);
}

void sub_9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = sub_B028().super.isa;

  [a5 postFollowUpWithIdentifier:a1 forAccount:a2 userInfo:isa completion:a4];
}

void sub_9FE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_8228();
}

uint64_t sub_9FE8()
{
  v1 = sub_8188(&qword_148A0, &qword_BAB0);
  sub_ADDC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_A070(uint64_t a1, uint64_t a2)
{
  v3 = sub_8188(&qword_148A0, &qword_BAB0);
  sub_ACAC(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (a2)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_8188(&qword_14768, &qword_BA20);
    sub_A2DC(0, &qword_14780, NSError_ptr);
    if (swift_dynamicCast())
    {

      v6 = v14;
    }

    else
    {
      v7 = sub_B088();
      v9 = v8;
      sub_8188(&qword_14788, &qword_BA38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_B940;
      *(inited + 32) = sub_B088();
      *(inited + 40) = v11;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = 0xD000000000000036;
      *(inited + 56) = 0x800000000000BF70;
      v12 = sub_B048();
      v13 = objc_allocWithZone(NSError);
      v6 = sub_8474(v7, v9, 1, v12);
    }

    sub_8188(&qword_148A0, &qword_BAB0);
    sub_B108();
  }

  else
  {

    sub_8188(&qword_148A0, &qword_BAB0);
    sub_B108();
  }
}

uint64_t sub_A2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A2DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_A34C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  if (*(v0 + 64))
  {
    v3 = *(v0 + 72);
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_A3B4()
{
  sub_AA60();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  v7 = swift_task_alloc();
  v8 = sub_AC94(v7);
  *v8 = v9;
  v8[1] = sub_A824;
  sub_AC40();

  return sub_2C64();
}

uint64_t sub_A468(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_A478(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_A48C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_A4EC()
{
  sub_AF5C();
  sub_AA60();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = sub_AC94(v6);
  *v7 = v8;
  v7[1] = sub_A824;
  sub_AC40();
  sub_AE08();

  return sub_1EC4();
}

void sub_A590(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_A5A0()
{
  _Block_release(*(v0 + 16));
  sub_AE58();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_A5DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_A600(uint64_t a1, unint64_t *a2)
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

__n128 sub_A64C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_A660(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_A6B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_A790(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AAFollowUpUserInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A858(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 232);
  v4 = *(v2 + 64);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return *(v2 + 128);
}

uint64_t sub_A8A8()
{

  return swift_dynamicCast();
}

id sub_A8F0(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *v3 = v1;
  *(v2 + 12) = 2080;

  return v1;
}

uint64_t sub_A914(uint64_t a1)
{
  *(a1 + 8) = sub_3620;
  v3 = *(v2 + 240);
  return v1;
}

uint64_t sub_A948()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_A990()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

double sub_A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18)
{

  return sub_1A88(&a13, v18, &a18);
}

uint64_t sub_A9B8(uint64_t a1)
{

  return sub_96B8(v1, 1, 1, a1);
}

uint64_t sub_A9D8(uint64_t a1)
{

  return sub_96B8(v1, 0, 1, a1);
}

uint64_t sub_AA04()
{
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);

  return static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_AA40()
{
  v1 = v0[56];
  v2 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
}

uint64_t sub_AA88(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_AAB4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_AAD4()
{

  return swift_slowAlloc();
}

uint64_t sub_AAF4()
{
  v2 = *(v0 + 376);

  return swift_slowAlloc();
}

uint64_t sub_AB14()
{

  return swift_slowAlloc();
}

uint64_t sub_AB30()
{
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[50];
}

uint64_t sub_AB4C()
{
}

void sub_AB68()
{
  v2 = v0[60];
  v3 = v0[58];
  v4 = v0[50];
}

uint64_t sub_ABA0()
{
  v2 = *(v0 + 432);
  v3 = *(v0 + 376);

  return sub_AFF8();
}

uint64_t sub_ABC8()
{

  return swift_slowAlloc();
}

uint64_t sub_AC50()
{
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];
  v8 = v0[50];
}

uint64_t sub_ACB8()
{

  return swift_slowAlloc();
}

uint64_t sub_ACD0()
{

  return sub_B1B8();
}

id sub_ACE8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_AD00()
{

  return swift_dynamicCast();
}

BOOL sub_AD1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_AD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_8B8C(v5, v4, va);
}

void sub_AD54(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *sub_AD70(int a1, int a2, int a3, int a4, int a5, void *aBlock)
{

  return _Block_copy(aBlock);
}

BOOL sub_AD94()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_ADAC()
{

  return swift_task_alloc();
}

uint64_t sub_ADC4()
{
}

uint64_t sub_AE7C(uint64_t a1)
{

  return sub_96B8(v1, 1, 1, a1);
}

void sub_AE9C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_AEBC@<X0>(uint64_t a1@<X8>)
{

  return sub_2A80(0xD000000000000049, (a1 - 32) | 0x8000000000000000);
}

void sub_AEDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_AEFC()
{
}

uint64_t sub_AF14()
{
}

id sub_AF2C(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_AF44()
{
}