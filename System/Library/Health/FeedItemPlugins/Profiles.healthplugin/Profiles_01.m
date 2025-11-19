uint64_t sub_29E4AFDAC(uint64_t (*a1)(void), uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E4FC3C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v9 = sub_29E4FC3B0();
  v10 = sub_29E4FC940();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = a2;
    v12 = a1;
    v13 = v11;
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = sub_29E4FD0B0();
    v17 = sub_29E4F68F4(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29E494000, v9, v10, "%{public}s Received notification in foreground mode", v13, 0xCu);
    sub_29E4A1754(v14);
    MEMORY[0x29ED8BDB0](v14, -1, -1);
    v18 = v13;
    a1 = v12;
    MEMORY[0x29ED8BDB0](v18, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a1(26);
}

uint64_t sub_29E4AFF84(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v11 = sub_29E4FC3B0();
  v12 = sub_29E4FC940();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a3;
    v27 = v15;
    v16 = v15;
    *v14 = 136446210;
    v17 = sub_29E4FD0B0();
    v19 = sub_29E4F68F4(v17, v18, &v27);
    v24 = v6;
    v20 = a2;
    v21 = v19;

    *(v14 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_29E494000, v11, v12, "%{public}s Handling new invitation notification", v14, 0xCu);
    sub_29E4A1754(v16);
    v22 = v16;
    a3 = v26;
    MEMORY[0x29ED8BDB0](v22, -1, -1);
    MEMORY[0x29ED8BDB0](v14, -1, -1);

    (*(v25 + 8))(v10, v24);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return sub_29E4AE9C8(a1, a2, a3);
}

uint64_t sub_29E4B019C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v107 = a2;
  v108 = a3;
  ObjectType = swift_getObjectType();
  sub_29E4B0B1C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FB130();
  v110 = *(v9 - 8);
  v10 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FC3C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v103 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v109 = &v99 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v99 - v19;
  sub_29E4FC3A0();
  v21 = a1;
  v22 = sub_29E4FC3B0();
  v23 = sub_29E4FC940();

  v24 = os_log_type_enabled(v22, v23);
  v101 = ObjectType;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v105 = v13;
    v100 = v26;
    v111 = v26;
    *v25 = 136446978;
    v27 = sub_29E4FD0B0();
    v104 = v12;
    v29 = sub_29E4F68F4(v27, v28, &v111);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29E4F68F4(0xD00000000000003BLL, 0x800000029E501EE0, &v111);
    *(v25 + 22) = 2080;
    v30 = [v21 notification];
    v31 = [v30 request];

    v32 = [v31 identifier];
    v33 = sub_29E4FC6F0();
    v34 = v9;
    v36 = v35;

    v37 = sub_29E4F68F4(v33, v36, &v111);

    *(v25 + 24) = v37;
    *(v25 + 32) = 2082;
    v38 = [v21 actionIdentifier];
    v39 = sub_29E4FC6F0();
    v41 = v40;

    v42 = sub_29E4F68F4(v39, v41, &v111);
    v12 = v104;

    *(v25 + 34) = v42;
    v9 = v34;
    _os_log_impl(&dword_29E494000, v22, v23, "%{public}s %{public}s notification: %s action: %{public}s", v25, 0x2Au);
    v43 = v100;
    swift_arrayDestroy();
    v13 = v105;
    MEMORY[0x29ED8BDB0](v43, -1, -1);
    MEMORY[0x29ED8BDB0](v25, -1, -1);
  }

  v44 = *(v13 + 8);
  v44(v20, v12);
  v45 = [v21 notification];
  sub_29E4FC9C0();

  v46 = v110;
  v47 = (*(v110 + 48))(v8, 1, v9);
  v48 = v109;
  if (v47 != 1)
  {
    v64 = v8;
    v65 = v9;
    (*(v46 + 32))(v106, v64, v9);
    v66 = [v21 actionIdentifier];
    v67 = sub_29E4FC6F0();
    v69 = v68;

    v70 = *MEMORY[0x29EDBCCF8];
    if (sub_29E4FC6F0() == v67 && v71 == v69)
    {

LABEL_11:

      v73 = sub_29E4FC860();
      MEMORY[0x2A1C7C4A8](v73);
      v74 = v106;
      *(&v99 - 2) = v102;
      *(&v99 - 1) = v74;
      sub_29E4AD684(sub_29E4B0C3C, (&v99 - 4));
      sub_29E4AD80C(v21, v107, v108);
      v75 = v65;
      return (*(v46 + 8))(v74, v75);
    }

    v72 = sub_29E4FCF80();

    if (v72)
    {
      v46 = v110;
      goto LABEL_11;
    }

    v78 = *MEMORY[0x29EDBCD00];
    if (sub_29E4FC6F0() == v67 && v79 == v69)
    {

      v80 = v65;
      v46 = v110;
    }

    else
    {
      v81 = sub_29E4FCF80();

      v80 = v65;
      v46 = v110;
      if ((v81 & 1) == 0)
      {
        sub_29E4FC3A0();
        v82 = v21;
        v83 = sub_29E4FC3B0();
        v84 = sub_29E4FC920();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v111 = v86;
          *v85 = 136446466;
          v87 = sub_29E4FD0B0();
          v89 = sub_29E4F68F4(v87, v88, &v111);
          v105 = v13;
          v90 = v89;

          *(v85 + 4) = v90;
          *(v85 + 12) = 2082;
          v91 = [v82 actionIdentifier];
          v92 = sub_29E4FC6F0();
          v94 = v93;

          v95 = sub_29E4F68F4(v92, v94, &v111);

          *(v85 + 14) = v95;
          _os_log_impl(&dword_29E494000, v83, v84, "%{public}s Unrecognized notification response action identifier %{public}s", v85, 0x16u);
          swift_arrayDestroy();
          v96 = v86;
          v80 = v65;
          MEMORY[0x29ED8BDB0](v96, -1, -1);
          MEMORY[0x29ED8BDB0](v85, -1, -1);

          v97 = v109;
        }

        else
        {

          v97 = v48;
        }

        v98 = (v44)(v97, v12);
        v46 = v110;
        v107(v98);
        goto LABEL_23;
      }
    }

    sub_29E4AD80C(v21, v107, v108);
LABEL_23:
    v75 = v80;
    v74 = v106;
    return (*(v46 + 8))(v74, v75);
  }

  sub_29E4B0B74(v8, sub_29E4B0B1C);
  v49 = v103;
  sub_29E4FC3A0();
  v50 = v21;
  v51 = sub_29E4FC3B0();
  v52 = sub_29E4FC920();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v105 = v13;
    v55 = v54;
    v56 = swift_slowAlloc();
    v104 = v12;
    v57 = v56;
    v111 = v56;
    *v53 = 136446466;
    v58 = sub_29E4FD0B0();
    v60 = sub_29E4F68F4(v58, v59, &v111);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2114;
    v61 = [v50 notification];
    *(v53 + 14) = v61;
    *v55 = v61;
    _os_log_impl(&dword_29E494000, v51, v52, "%{public}s Cannot access URL for %{public}@", v53, 0x16u);
    sub_29E4B0B74(v55, sub_29E4B0BD4);
    MEMORY[0x29ED8BDB0](v55, -1, -1);
    sub_29E4A1754(v57);
    MEMORY[0x29ED8BDB0](v57, -1, -1);
    MEMORY[0x29ED8BDB0](v53, -1, -1);

    v62 = v104;
    v63 = v49;
  }

  else
  {

    v63 = v49;
    v62 = v12;
  }

  v76 = (v44)(v63, v62);
  return v107(v76);
}

void sub_29E4B0B1C()
{
  if (!qword_2A184B558)
  {
    sub_29E4FB130();
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B558);
    }
  }
}

uint64_t sub_29E4B0B74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4B0BD4()
{
  if (!qword_2A1A6F170)
  {
    sub_29E4A2AD8(255, &qword_2A1A708C8, 0x29EDC9738);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F170);
    }
  }
}

uint64_t sub_29E4B0C68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_29E4B0C90()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    if ([v2 respondsToSelector_])
    {
      v3 = [v0 sharedApplication];
      sub_29E4A267C(MEMORY[0x29EDCA190]);
      v4 = sub_29E4FB100();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29E4B0FA8(&unk_2A184B560, type metadata accessor for OpenURLOptionsKey);
      v5 = sub_29E4FC620();

      [v2 application:v3 openURL:v4 options:v5];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_29E4B0E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSharingUserInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4B0EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSharingUserInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4B0F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4B0F40()
{
  if (!qword_2A184B570)
  {
    sub_29E4AD188();
    v0 = sub_29E4FC430();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B570);
    }
  }
}

uint64_t sub_29E4B0FA8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E4B1010()
{
  type metadata accessor for ProfilesHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A70D38 = result;
  return result;
}

uint64_t sub_29E4B1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v27[1] = a1;
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v32 = sub_29E4FB010();
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32);
  sub_29E4B13A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E4FB020();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E4FC690();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = sub_29E4FB040();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29E4FC6A0();
  (*(v12 + 16))(v15, v28, v11);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A70D38;
  v24 = sub_29E4FB250();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  v25 = v23;
  sub_29E4FB030();
  sub_29E4FB000();
  (*(v19 + 8))(v22, v18);
  sub_29E4B1400();
  return sub_29E4FC770();
}

void sub_29E4B13A8()
{
  if (!qword_2A184B5F0)
  {
    sub_29E4FB250();
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B5F0);
    }
  }
}

unint64_t sub_29E4B1400()
{
  result = qword_2A184B5F8;
  if (!qword_2A184B5F8)
  {
    sub_29E4FB010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B5F8);
  }

  return result;
}

uint64_t sub_29E4B1458(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a2;
  *(v4 + 152) = v3;
  *(v4 + 160) = a3;
  *(v4 + 136) = a1;
  return MEMORY[0x2A1C73D48](sub_29E4B1480, 0, 0);
}

uint64_t sub_29E4B1480()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 128;
  *(v0 + 24) = sub_29E4B1654;
  v5 = swift_continuation_init();
  v6 = sub_29E4FC600();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = objc_allocWithZone(MEMORY[0x29EDBA9F8]);
  *(v0 + 112) = sub_29E4B507C;
  *(v0 + 120) = v7;
  *(v0 + 80) = MEMORY[0x29EDCA5F8];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_29E4B5084;
  *(v0 + 104) = &unk_2A24E8318;
  v9 = _Block_copy((v0 + 80));
  v10 = v4;
  v11 = [v8 initWithPredicate:v6 resultsHandler:v9];

  _Block_release(v9);
  v12 = *(v0 + 120);

  [v11 setLimit_];
  [v11 setOrderByDateAscending_];
  [v10 executeQuery_];

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_29E4B1654()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 128);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_29E4B1794@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v45 - v5;
  sub_29E4B6A9C(0, &qword_2A184B618, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v46 = *(v7 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v45 - v10;
  v12 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = 0;
  v47 = v14;
  v17 = *(v14 + 20);
  v18 = sub_29E4FB470();
  v19 = *(*(v18 - 8) + 56);
  v49 = v17;
  v19(v16 + v17, 1, 1, v18);
  v21 = a1[3];
  v20 = a1[4];
  v48 = a1;
  sub_29E4A1710(a1, v21);
  sub_29E4B694C();
  v22 = v50;
  sub_29E4FD070();
  if (!v22)
  {
    v23 = v46;
    LOBYTE(v51) = 2;
    v24 = sub_29E4FCEB0();
    v29 = v47;
    v30 = (v16 + *(v47 + 24));
    *v30 = v24;
    v30[1] = v31;
    LOBYTE(v51) = 3;
    v32 = sub_29E4FCE80();
    v50 = 0;
    v34 = (v16 + *(v29 + 28));
    *v34 = v32;
    v34[1] = v33;
    LOBYTE(v51) = 1;
    sub_29E4B4C48(&qword_2A184B628, 255, MEMORY[0x29EDC3850]);
    v35 = v50;
    sub_29E4FCEA0();
    v50 = v35;
    if (v35)
    {
      (*(v23 + 8))(v11, v8);
LABEL_10:
      v25 = 1;
      goto LABEL_4;
    }

    v26 = v49;
    sub_29E4B69A0(v6, v16 + v49);
    v53 = 0;
    sub_29E4A1B2C();
    v36 = v50;
    sub_29E4FCEA0();
    v50 = v36;
    if (v36)
    {
      (*(v23 + 8))(v11, v8);
      v25 = 1;
      goto LABEL_5;
    }

    v37 = v52;
    if (v52 >> 60 == 15)
    {
      (*(v23 + 8))(v11, v8);
      v38 = v45;
    }

    else
    {
      v39 = v51;
      sub_29E4A2AD8(0, &qword_2A184B2A0, 0x29EDBA000);
      sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
      v40 = v50;
      v41 = sub_29E4FCA20();
      v50 = v40;
      if (v40)
      {
        (*(v23 + 8))(v11, v8);
        sub_29E4A1B80(v39, v37);
        goto LABEL_10;
      }

      v42 = v41;
      v43 = *(v23 + 8);
      v44 = v45;
      v43(v11, v8);
      sub_29E4A1B80(v39, v37);
      v38 = v44;
      *v16 = v42;
    }

    sub_29E4B6A34(v16, v38, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
    sub_29E4A1754(v48);
    return sub_29E4B6F60(v16, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  }

  v50 = v22;
  v25 = 0;
LABEL_4:
  v26 = v49;
LABEL_5:
  sub_29E4A1754(v48);
  sub_29E4B6C2C(v16 + v26, &qword_2A1A70650, MEMORY[0x29EDC3850]);
  if (v25)
  {
    v27 = *(v16 + *(v47 + 24) + 8);
  }
}

uint64_t sub_29E4B1CE0(void *a1)
{
  v3 = v1;
  v31 = *MEMORY[0x29EDCA608];
  sub_29E4B6A9C(0, &qword_2A184B630, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4B694C();
  sub_29E4FD080();
  v12 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v13 = (v3 + v12[6]);
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v30) = 2;
  sub_29E4FCF30();
  if (!v2)
  {
    v30 = *(v3 + v12[7]);
    v29 = 3;
    sub_29E4B6B00(0, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29E4A1C4C();
    sub_29E4FCF50();
    v16 = *v3;
    if (!*v3)
    {
LABEL_6:
      v25 = v12[5];
      LOBYTE(v30) = 1;
      sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
      sub_29E4B6B50();
      sub_29E4FCF50();
      goto LABEL_7;
    }

    v17 = objc_opt_self();
    *&v30 = 0;
    v18 = v16;
    v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v30];
    v20 = v30;
    if (v19)
    {
      v28 = v18;
      v21 = sub_29E4FB160();
      v23 = v22;

      *&v30 = v21;
      *(&v30 + 1) = v23;
      v29 = 0;
      sub_29E4A1CE0();
      sub_29E4FCF50();

      sub_29E4A1B94(v21, v23);
      goto LABEL_6;
    }

    v24 = v20;
    sub_29E4FB0E0();

    swift_willThrow();
  }

LABEL_7:
  result = (*(v7 + 8))(v10, v6);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29E4B2068()
{
  v1 = 0x737574617473;
  v2 = 0x6D614E6E65766967;
  if (*v0 != 2)
  {
    v2 = 0x614E796C696D6166;
  }

  if (*v0)
  {
    v1 = 0x7953657669746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29E4B20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E4B5588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E4B211C(uint64_t a1)
{
  v2 = sub_29E4B694C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4B2158(uint64_t a1)
{
  v2 = sub_29E4B694C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4B21C8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29E4B6854(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = sub_29E4FB460();
  v2[20] = v6;
  v7 = *(v6 - 8);
  v2[21] = v7;
  v8 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();
  sub_29E4B6854(0, &qword_2A1A705D8, MEMORY[0x29EDC18E8], v3);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  sub_29E4B6854(0, &qword_2A1A705E0, MEMORY[0x29EDC1740], v3);
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], v3);
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v15 = sub_29E4FB820();
  v2[26] = v15;
  v16 = *(v15 - 8);
  v2[27] = v16;
  v17 = *(v16 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v18 = sub_29E4FB880();
  v2[31] = v18;
  v19 = *(v18 - 8);
  v2[32] = v19;
  v20 = *(v19 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v21 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v2[35] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v23 = sub_29E4FB7B0();
  v2[39] = v23;
  v24 = *(v23 - 8);
  v2[40] = v24;
  v25 = *(v24 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v26 = sub_29E4FC3C0();
  v2[43] = v26;
  v27 = *(v26 - 8);
  v2[44] = v27;
  v28 = *(v27 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4B25F4, 0, 0);
}

uint64_t sub_29E4B25F4()
{
  v89 = v0;
  v1 = v0[17];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  sub_29E4B4C48(&qword_2A1A6FAA0, v4, type metadata accessor for PrimaryProfileInformationExecutor);
  sub_29E4FB310();
  v5 = v0[47];
  sub_29E4FC350();
  v6 = sub_29E4FC3B0();
  v7 = sub_29E4FC940();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[47];
  v10 = v0[43];
  v11 = v0[44];
  if (v8)
  {
    v12 = v0[18];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v88[0] = v14;
    *v13 = 136446210;
    v0[15] = v12;
    swift_getMetatypeMetadata();
    v15 = sub_29E4FC700();
    v17 = sub_29E4F68F4(v15, v16, v88);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29E494000, v6, v7, "[%{public}s]: Running work plan for primary profile", v13, 0xCu);
    sub_29E4A1754(v14);
    MEMORY[0x29ED8BDB0](v14, -1, -1);
    MEMORY[0x29ED8BDB0](v13, -1, -1);
  }

  v18 = *(v11 + 8);
  v18(v9, v10);
  v0[48] = v18;
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[35];
  v84 = v0[42];
  v85 = v0[36];
  v22 = v0[34];
  v23 = v0[16];
  v78 = v18;
  v79 = v0[17];
  sub_29E4B4B54();
  sub_29E4FC2A0();
  v24 = (v19 + *(v21 + 24));
  v25 = v24[1];
  v81 = *v24;

  sub_29E4B6F60(v19, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  sub_29E4FC2A0();
  v26 = (v20 + *(v21 + 28));
  v27 = *v26;
  v28 = v26[1];

  sub_29E4B6F60(v20, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  v29 = [*(v79 + 32) profileIdentifier];
  sub_29E4FB870();
  sub_29E4FB7A0();
  sub_29E4FB6F0();
  sub_29E4FB8B0();

  sub_29E4FC2A0();
  v30 = *v85;
  v31 = *v85;
  sub_29E4B6F60(v85, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  if (v30)
  {
    v32 = v0[46];
    v33 = v0[38];
    v34 = v0[35];
    v35 = v0[30];
    v86 = v0[29];
    v36 = v0[27];
    v82 = v0[26];
    v37 = v0[25];
    v38 = v0[16];
    v39 = v31;
    sub_29E4FC2A0();
    sub_29E4B68B8(v33 + *(v34 + 20), v37);
    sub_29E4B6F60(v33, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
    sub_29E4FB830();
    sub_29E4FC350();
    v40 = *(v36 + 16);
    v40(v86, v35, v82);
    v41 = sub_29E4FC3B0();
    v42 = sub_29E4FC940();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[46];
    v45 = v0[43];
    v87 = v0[44];
    v46 = v0[29];
    if (v43)
    {
      v73 = v0[28];
      v80 = v0[46];
      v83 = v39;
      v48 = v0[26];
      v47 = v0[27];
      v76 = v42;
      v49 = v0[18];
      v77 = v0[43];
      v50 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v88[0] = v75;
      *v50 = 136446466;
      v0[14] = v49;
      swift_getMetatypeMetadata();
      v51 = sub_29E4FC700();
      v74 = v40;
      v53 = sub_29E4F68F4(v51, v52, v88);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      v40(v73, v46, v48);
      v54 = sub_29E4FC700();
      v56 = v55;
      v57 = v41;
      v58 = *(v47 + 8);
      v59 = v48;
      v39 = v83;
      v58(v46, v59);
      v60 = sub_29E4F68F4(v54, v56, v88);

      *(v50 + 14) = v60;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v75, -1, -1);
      MEMORY[0x29ED8BDB0](v50, -1, -1);

      v78(v80, v77);
      v61 = v74;
    }

    else
    {
      v63 = v0[26];
      v62 = v0[27];

      v58 = *(v62 + 8);
      v58(v46, v63);
      v78(v44, v45);
      v61 = v40;
    }

    v64 = v0[42];
    v65 = v0[30];
    v66 = v0[26];
    v67 = v0[27];
    v68 = v0[24];
    v61(v68, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    sub_29E4FB710();

    v58(v65, v66);
  }

  v69 = swift_task_alloc();
  v0[49] = v69;
  *v69 = v0;
  v69[1] = sub_29E4B2D70;
  v70 = v0[23];
  v71 = v0[17];

  return sub_29E4B3D98(v70);
}

uint64_t sub_29E4B2D70()
{
  v2 = *(*v1 + 392);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_29E4B36E0;
  }

  else
  {
    v3 = sub_29E4B2E88;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E4B2E88()
{
  v65 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[23];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29E4B6C2C(v3, &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  }

  else
  {
    v4 = v0[42];
    v6 = v0[33];
    v5 = v0[34];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_29E4FB730();
    (*(v2 + 8))(v6, v1);
  }

  v7 = v0[45];
  sub_29E4FC350();
  v8 = sub_29E4FC3B0();
  v9 = sub_29E4FC940();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[48];
  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[43];
  if (v10)
  {
    v15 = v0[42];
    v55 = v0[41];
    v17 = v0[39];
    v16 = v0[40];
    v62 = v0[48];
    v18 = v0[18];
    v60 = v0[43];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v64 = v20;
    *v19 = 136446466;
    v0[13] = v18;
    swift_getMetatypeMetadata();
    v21 = sub_29E4FC700();
    v57 = v12;
    v23 = sub_29E4F68F4(v21, v22, &v64);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    swift_beginAccess();
    (*(v16 + 16))(v55, v15, v17);
    v24 = sub_29E4FC700();
    v26 = sub_29E4F68F4(v24, v25, &v64);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_29E494000, v8, v9, "[%{public}s]: Created item for feedItem submission: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v20, -1, -1);
    MEMORY[0x29ED8BDB0](v19, -1, -1);

    v62(v57, v60);
  }

  else
  {

    v11(v12, v14);
  }

  v27 = v0[42];
  v28 = v0[20];
  v29 = v0[21];
  v30 = v0[19];
  swift_beginAccess();
  HealthKitProfileInformation.makePluginFeedItem()(v30);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    sub_29E4B6C2C(v0[19], &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    v31 = v0[46];
    v32 = v0[47];
    v33 = v0[45];
    v34 = v0[41];
    v36 = v0[37];
    v35 = v0[38];
    v37 = v0[36];
    v38 = v0[34];
    v51 = v0[33];
    v52 = v0[30];
    v53 = v0[29];
    v54 = v0[28];
    v56 = v0[25];
    v58 = v0[24];
    v59 = v0[23];
    v61 = v0[22];
    v63 = v0[19];
    (*(v0[40] + 8))(v0[42], v0[39]);
    sub_29E4A1754(v0 + 2);

    v39 = v0[1];

    return v39();
  }

  else
  {
    v42 = v0[21];
    v41 = v0[22];
    v43 = v0[20];
    (*(v42 + 32))(v41, v0[19], v43);
    v45 = v0[5];
    v44 = v0[6];
    sub_29E4A1710(v0 + 2, v45);
    sub_29E4B6854(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v46 = *(v42 + 72);
    v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v48 = swift_allocObject();
    v0[50] = v48;
    *(v48 + 16) = xmmword_29E4FDE40;
    (*(v42 + 16))(v48 + v47, v41, v43);
    v49 = *(MEMORY[0x29EDC3888] + 4);
    v50 = swift_task_alloc();
    v0[51] = v50;
    *v50 = v0;
    v50[1] = sub_29E4B3424;

    return MEMORY[0x2A1C64D80](v48, v45, v44);
  }
}

uint64_t sub_29E4B3424()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 400);

  if (v0)
  {
    v6 = sub_29E4B3C0C;
  }

  else
  {
    v6 = sub_29E4B3558;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29E4B3558()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[41];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[36];
  v8 = v0[34];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[19];
  (*(v0[40] + 8))(v0[42], v0[39]);
  sub_29E4A1754(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29E4B36E0()
{
  v59 = v0;
  (*(v0[32] + 56))(v0[23], 1, 1, v0[31]);
  sub_29E4B6C2C(v0[23], &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  v1 = v0[45];
  sub_29E4FC350();
  v2 = sub_29E4FC3B0();
  v3 = sub_29E4FC940();
  if (os_log_type_enabled(v2, v3))
  {
    v54 = v0[45];
    v56 = v0[48];
    v4 = v0[42];
    v50 = v0[44];
    v52 = v0[43];
    v5 = v0[40];
    v46 = v0[39];
    v48 = v0[41];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v0[13] = v6;
    v58 = v8;
    *v7 = 136446466;
    swift_getMetatypeMetadata();
    v9 = sub_29E4FC700();
    v11 = sub_29E4F68F4(v9, v10, &v58);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_beginAccess();
    (*(v5 + 16))(v48, v4, v46);
    v12 = sub_29E4FC700();
    v14 = sub_29E4F68F4(v12, v13, &v58);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_29E494000, v2, v3, "[%{public}s]: Created item for feedItem submission: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v8, -1, -1);
    MEMORY[0x29ED8BDB0](v7, -1, -1);

    v56(v54, v52);
  }

  else
  {
    v15 = v0[48];
    v17 = v0[44];
    v16 = v0[45];
    v18 = v0[43];

    v15(v16, v18);
  }

  v19 = v0[42];
  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[19];
  swift_beginAccess();
  HealthKitProfileInformation.makePluginFeedItem()(v22);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_29E4B6C2C(v0[19], &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    v23 = v0[46];
    v24 = v0[47];
    v25 = v0[45];
    v26 = v0[41];
    v28 = v0[37];
    v27 = v0[38];
    v29 = v0[36];
    v30 = v0[34];
    v43 = v0[33];
    v44 = v0[30];
    v45 = v0[29];
    v47 = v0[28];
    v49 = v0[25];
    v51 = v0[24];
    v53 = v0[23];
    v55 = v0[22];
    v57 = v0[19];
    (*(v0[40] + 8))(v0[42], v0[39]);
    sub_29E4A1754(v0 + 2);

    v31 = v0[1];

    return v31();
  }

  else
  {
    v34 = v0[21];
    v33 = v0[22];
    v35 = v0[20];
    (*(v34 + 32))(v33, v0[19], v35);
    v37 = v0[5];
    v36 = v0[6];
    sub_29E4A1710(v0 + 2, v37);
    sub_29E4B6854(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v38 = *(v34 + 72);
    v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v40 = swift_allocObject();
    v0[50] = v40;
    *(v40 + 16) = xmmword_29E4FDE40;
    (*(v34 + 16))(v40 + v39, v33, v35);
    v41 = *(MEMORY[0x29EDC3888] + 4);
    v42 = swift_task_alloc();
    v0[51] = v42;
    *v42 = v0;
    v42[1] = sub_29E4B3424;

    return MEMORY[0x2A1C64D80](v40, v37, v36);
  }
}

uint64_t sub_29E4B3C0C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754(v0 + 2);
  v24 = v0[52];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[36];
  v13 = v0[33];
  v12 = v0[34];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[19];

  v14 = v0[1];

  return v14();
}

uint64_t sub_29E4B3D98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_29E4B3E2C;

  return sub_29E49CAB0(0);
}

uint64_t sub_29E4B3E2C(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29E4B3F60, 0, 0);
  }
}

uint64_t sub_29E4B3F60()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = [v1 activityMoveMode];
    v0[6] = v2;
    if (v2 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = [objc_opt_self() predicateForActivitySummariesWithActivityMoveMode_];
    v0[7] = v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_29E49C854;
    v6 = v0[3];

    return sub_29E49CAB0(v4);
  }

  else
  {
    v8 = v0[2];
    v9 = sub_29E4FB880();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_29E4B40B8()
{
  v0 = sub_29E4FC110();
  sub_29E4A19E0(v0, qword_2A1A70C80);
  sub_29E4A18DC(v0, qword_2A1A70C80);
  return sub_29E4FC100();
}

void *sub_29E4B411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = sub_29E4FC300();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E4FC110();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B6B00(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  v28 = xmmword_29E4FDE50;
  *(v13 + 16) = xmmword_29E4FDE50;
  if (qword_2A1A6FB80 != -1)
  {
    swift_once();
  }

  v14 = sub_29E4A18DC(v8, qword_2A1A70C80);
  (*(v9 + 16))(v12, v14, v8);
  sub_29E4A1914();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E4FDE60;
  inited = swift_initStackObject();
  *(inited + 16) = v28;
  sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29E4D6814(inited);
    swift_setDeallocating();
    v18 = *(inited + 16);
    swift_arrayDestroy();
    *(v15 + 56) = sub_29E4FB6E0();
    *(v15 + 64) = sub_29E4B4C48(&qword_2A1A70618, 255, MEMORY[0x29EDC3C08]);
    sub_29E4A197C((v15 + 32));
    sub_29E4FB6D0();
    *(v15 + 96) = sub_29E4FB630();
    *(v15 + 104) = sub_29E4B4C48(&qword_2A1A70640, 255, MEMORY[0x29EDC3B40]);
    sub_29E4A197C((v15 + 72));
    sub_29E4FB620();
    v19 = sub_29E4FC2E0();
    *(v15 + 136) = v19;
    v20 = sub_29E4B4C48(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
    *(v15 + 144) = v20;
    sub_29E4A197C((v15 + 112));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    *(v15 + 176) = v19;
    *(v15 + 184) = v20;
    sub_29E4A197C((v15 + 152));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    v21 = sub_29E4FC140();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    *(v13 + 32) = sub_29E4FC120();
    v3[2] = v13;
    v3[3] = a1;
    v3[4] = v26;
    v24 = OBJC_IVAR____TtCC8Profiles33PrimaryProfileInformationExecutor7Planner_signals;
    v25 = sub_29E4FC190();
    (*(*(v25 - 8) + 32))(v4 + v24, v27, v25);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4B4584()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtCC8Profiles33PrimaryProfileInformationExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4B4630()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  swift_getObjectType();
  v3 = *(*(v1 + 16) + 8);
  return sub_29E4FC0E0();
}

uint64_t sub_29E4B4678@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E4B46CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles33PrimaryProfileInformationExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4B4744()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v7[3] = swift_getObjectType();
  v7[4] = *(v4 + 8);
  v7[0] = v3;
  v5 = *(*(v4 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();
  return sub_29E4A1754(v7);
}

uint64_t sub_29E4B4838(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4B4C48(&qword_2A1A6FB78, 255, type metadata accessor for PrimaryProfileInformationExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4B4914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4B4C48(&qword_2A1A6FB78, 255, type metadata accessor for PrimaryProfileInformationExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E4B49D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E4B4A60()
{
  result = sub_29E4FC190();
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

void sub_29E4B4B54()
{
  if (!qword_2A1A704A0)
  {
    type metadata accessor for PrimaryProfileInformationWorkPlanInfo(255);
    sub_29E4B4C48(&qword_2A1A6F9A8, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
    sub_29E4B4C48(qword_2A1A6F9B0, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
    v0 = sub_29E4FC2B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A704A0);
    }
  }
}

uint64_t sub_29E4B4C48(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E4B4C90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E4B21C8(a1);
}

uint64_t sub_29E4B4D24(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  (*(v9 + 16))(v6, a1);
  v10 = type metadata accessor for PrimaryProfileInformationExecutor.Planner(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = swift_unknownObjectRetain();
  sub_29E4B411C(v14, v7, v6);
  return v13;
}

uint64_t sub_29E4B4E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4B4C48(qword_2A1A6FAA8, a2, type metadata accessor for PrimaryProfileInformationExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E4B4F18(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return MEMORY[0x2A1C73CD8](a5);
  }

  else
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_29E4B6674(MEMORY[0x29EDCA190]);
      sub_29E4B4C48(&qword_2A184B418, 255, type metadata accessor for HKError);
      sub_29E4FB0C0();
      v8 = v12;
    }

    sub_29E4A2CE8(0, &qword_2A1A70BC8);
    swift_allocError();
    *v9 = v8;
    v10 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_29E4B5084(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_29E4A2AD8(0, &qword_2A1A708E8, 0x29EDBA9F0);
    v5 = sub_29E4FC7C0();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_29E4B513C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_29E4B5154(void **a1, void **a2)
{
  v4 = sub_29E4FB470();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v39 - v11;
  sub_29E4B6ECC();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v40 = a2;
  v19 = *a2;
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
    v20 = v19;
    v21 = v18;
    v22 = sub_29E4FCB40();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v24 = v23[5];
  v25 = *(v14 + 48);
  sub_29E4B68B8(a1 + v24, v17);
  sub_29E4B68B8(v40 + v24, &v17[v25]);
  v26 = *(v5 + 48);
  if (v26(v17, 1, v4) != 1)
  {
    sub_29E4B68B8(v17, v12);
    if (v26(&v17[v25], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v25], v4);
      sub_29E4B4C48(&qword_2A184B668, 255, MEMORY[0x29EDC3850]);
      v28 = sub_29E4FC680();
      v29 = *(v5 + 8);
      v29(v8, v4);
      v29(v12, v4);
      sub_29E4B6C2C(v17, &qword_2A1A70650, MEMORY[0x29EDC3850]);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v5 + 8))(v12, v4);
LABEL_11:
    sub_29E4B6F60(v17, sub_29E4B6ECC);
    return 0;
  }

  if (v26(&v17[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_29E4B6C2C(v17, &qword_2A1A70650, MEMORY[0x29EDC3850]);
LABEL_15:
  v30 = v23[6];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (v40 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_29E4FCF80() & 1) == 0)
  {
    return 0;
  }

  v34 = v23[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (v40 + v34);
  v38 = v37[1];
  if (v36)
  {
    return v38 && (*v35 == *v37 && v36 == v38 || (sub_29E4FCF80() & 1) != 0);
  }

  return !v38;
}

uint64_t sub_29E4B5588(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7953657669746361 && a2 == 0xEF6574617453636ELL || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_29E4FCF80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_29E4FCF80();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29E4B5700()
{
  v119 = *v0;
  v1 = sub_29E4FC3C0();
  v128 = *(v1 - 8);
  v129 = v1;
  v2 = *(v128 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v127 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for PrimaryProfileInformationWorkPlanInfo(0);
  v4 = *(*(v112 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v112);
  v111 = (&v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = sub_29E4FC1C0();
  v107 = *(v108 - 8);
  v6 = *(v107 + 64);
  MEMORY[0x2A1C7C4A8](v108);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FC1E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E4FC230();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v109 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v105 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v118 = &v103 - v19;
  v20 = MEMORY[0x29EDC34D8];
  sub_29E4B6854(0, &qword_2A1A704E0, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, MEMORY[0x29EDC34D8]);
  v116 = v21;
  v114 = *(v21 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v113 = &v103 - v23;
  sub_29E4B6854(0, &qword_2A1A70548, sub_29E4A1D34, v14);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v115 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v123 = &v103 - v28;
  v29 = sub_29E4FC300();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v122 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B6854(0, &qword_2A1A704D0, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, v20);
  v120 = *(v32 - 8);
  v121 = v32;
  v33 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v35 = &v103 - v34;
  sub_29E4A1D34();
  v124 = v36;
  v126 = *(v36 - 8);
  v37 = *(v126 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v117 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v125 = &v103 - v40;
  sub_29E4B6854(0, &qword_2A1A70630, MEMORY[0x29EDC3B48], v14);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v41 - 8);
  v44 = &v103 - v43;
  sub_29E4B6854(0, &unk_2A1A704F0, MEMORY[0x29EDC3B60], v20);
  v46 = v45;
  v47 = *(v45 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v45);
  v50 = &v103 - v49;
  v51 = sub_29E4FB660();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v51);
  v55 = &v103 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB670();
  sub_29E4FC170();
  sub_29E4B4C48(&qword_2A1A70628, 255, MEMORY[0x29EDC3B60]);
  sub_29E4FC2C0();
  v56 = v46;
  v57 = v52;
  (*(v47 + 8))(v50, v56);
  if ((*(v52 + 48))(v44, 1, v51) == 1)
  {
    v58 = &qword_2A1A70630;
    v59 = MEMORY[0x29EDC3B48];
LABEL_5:
    v63 = v59;
    v64 = v44;
LABEL_6:
    sub_29E4B6C2C(v64, v58, v63);
    v65 = v127;
    sub_29E4FC350();
    v66 = sub_29E4FC3B0();
    v67 = sub_29E4FC920();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v130[0] = v69;
      *v68 = 136446210;
      v131 = v119;
      swift_getMetatypeMetadata();
      v70 = sub_29E4FC700();
      v72 = sub_29E4F68F4(v70, v71, v130);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_29E494000, v66, v67, "[%{public}s] Can't create work plan, anchorSet doesn't contain the needed anchors", v68, 0xCu);
      sub_29E4A1754(v69);
      MEMORY[0x29ED8BDB0](v69, -1, -1);
      MEMORY[0x29ED8BDB0](v68, -1, -1);
    }

    (*(v128 + 8))(v65, v129);
    return MEMORY[0x29EDCA190];
  }

  (*(v52 + 32))(v55, v44, v51);
  sub_29E4FC2F0();
  type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal();
  sub_29E4FC180();
  sub_29E4B4C48(qword_2A1A6F490, 255, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
  v44 = v123;
  sub_29E4FC2C0();
  (*(v120 + 8))(v35, v121);
  v60 = v126;
  v61 = *(v126 + 48);
  v62 = v124;
  if (v61(v44, 1, v124) == 1)
  {
    (*(v57 + 8))(v55, v51);
    v58 = &qword_2A1A70548;
    v59 = sub_29E4A1D34;
    goto LABEL_5;
  }

  v121 = v51;
  v123 = *(v60 + 32);
  (v123)(v125, v44, v62);
  sub_29E4FC2F0();
  type metadata accessor for ContactStoreGivenFamilyNameInputSignal();
  v74 = v113;
  sub_29E4FC180();
  sub_29E4B4C48(qword_2A1A6F908, 255, type metadata accessor for ContactStoreGivenFamilyNameInputSignal);
  v75 = v115;
  sub_29E4FC2C0();
  (*(v114 + 8))(v74, v116);
  if (v61(v75, 1, v62) == 1)
  {
    (*(v126 + 8))(v125, v62);
    (*(v57 + 8))(v55, v121);
    v58 = &qword_2A1A70548;
    v63 = sub_29E4A1D34;
    v64 = v75;
    goto LABEL_6;
  }

  (v123)(v117, v75, v62);
  v128 = sub_29E4FB650();
  v129 = v55;
  sub_29E4FB640();
  sub_29E4FC0C0();
  v76 = v131;
  v77 = v132;

  if (v77)
  {
    v123 = v77;
    v127 = v76;
  }

  else
  {
    sub_29E4FC0C0();
    v78 = v130[0];
    v79 = v130[1];

    if (v79)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0;
    }

    v127 = v80;
    v81 = 0xE000000000000000;
    if (v79)
    {
      v81 = v79;
    }

    v123 = v81;
  }

  sub_29E4FC0C0();

  v82 = v134;
  v104 = v57;
  if (v134)
  {
    v83 = v133;
  }

  else
  {
    sub_29E4FC0C0();

    v83 = v130[2];
    v82 = v130[3];
  }

  v122 = v83;
  sub_29E4B6854(0, &qword_2A1A6F0D8, sub_29E4B4B54, MEMORY[0x29EDC9E90]);
  sub_29E4B4B54();
  v85 = *(*(v84 - 8) + 72);
  v120 = (*(*(v84 - 8) + 80) + 32) & ~*(*(v84 - 8) + 80);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_29E4FDE40;
  sub_29E4FC220();
  v86 = v107;
  v87 = v106;
  v88 = v108;
  (*(v107 + 104))(v106, *MEMORY[0x29EDC3508], v108);
  sub_29E4FC1D0();
  (*(v86 + 8))(v87, v88);
  v89 = v118;
  v90 = v105;
  sub_29E4B68B8(v118, v105);
  v91 = v112;
  v92 = *(v112 + 20);
  v93 = sub_29E4FB470();
  v94 = v111;
  (*(*(v93 - 8) + 56))(v111 + v92, 1, 1, v93);
  v95 = (v94 + *(v91 + 28));
  v96 = v128;
  *v94 = v128;
  v97 = v96;
  sub_29E4B69A0(v90, v94 + v92);
  v98 = (v94 + *(v91 + 24));
  v99 = v123;
  *v98 = v127;
  v98[1] = v99;
  *v95 = v122;
  v95[1] = v82;
  sub_29E4B4C48(&qword_2A1A6F9A8, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  sub_29E4B4C48(qword_2A1A6F9B0, 255, type metadata accessor for PrimaryProfileInformationWorkPlanInfo);
  v100 = v119;
  sub_29E4FC290();

  sub_29E4B6C2C(v89, &qword_2A1A70650, MEMORY[0x29EDC3850]);
  v101 = *(v126 + 8);
  v102 = v124;
  v101(v117, v124);
  v101(v125, v102);
  (*(v104 + 8))(v129, v121);
  return v100;
}

unint64_t sub_29E4B6674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E4B678C();
    v3 = sub_29E4FCE20();
    v4 = a1 + 32;

    while (1)
    {
      sub_29E4B6A34(v4, &v13, sub_29E4B67F0);
      v5 = v13;
      v6 = v14;
      result = sub_29E49EE18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29E4A2C58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E4B678C()
{
  if (!qword_2A184B608)
  {
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B608);
    }
  }
}

void sub_29E4B67F0()
{
  if (!qword_2A184B610)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B610);
    }
  }
}

void sub_29E4B6854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4B68B8(uint64_t a1, uint64_t a2)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E4B694C()
{
  result = qword_2A184B620;
  if (!qword_2A184B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B620);
  }

  return result;
}

uint64_t sub_29E4B69A0(uint64_t a1, uint64_t a2)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4B6A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E4B6A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4B694C();
    v7 = a3(a1, &type metadata for PrimaryProfileInformationWorkPlanInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E4B6B00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E4B6B50()
{
  result = qword_2A184B638;
  if (!qword_2A184B638)
  {
    sub_29E4B6854(255, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
    sub_29E4B4C48(&qword_2A184B640, 255, MEMORY[0x29EDC3850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B638);
  }

  return result;
}

uint64_t sub_29E4B6C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4B6854(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E4B6CD4()
{
  sub_29E4A3228();
  if (v0 <= 0x3F)
  {
    sub_29E4B6854(319, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29E4B6B00(319, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29E4B6DC8()
{
  result = qword_2A184B648;
  if (!qword_2A184B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B648);
  }

  return result;
}

unint64_t sub_29E4B6E20()
{
  result = qword_2A184B650;
  if (!qword_2A184B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B650);
  }

  return result;
}

unint64_t sub_29E4B6E78()
{
  result = qword_2A184B658;
  if (!qword_2A184B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B658);
  }

  return result;
}

void sub_29E4B6ECC()
{
  if (!qword_2A184B660)
  {
    sub_29E4B6854(255, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B660);
    }
  }
}

uint64_t sub_29E4B6F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4B6FC8()
{
  result = sub_29E4FB950();
  qword_2A1A70660 = result;
  *algn_2A1A70668 = v1;
  return result;
}

uint64_t sub_29E4B6FEC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33[0] = sub_29E4FB320();
  v1 = *(v33[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FB460();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FC3C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v33 - v15;
  sub_29E4FC350();
  v17 = sub_29E4FC3B0();
  v18 = sub_29E4FC940();
  v19 = os_log_type_enabled(v17, v18);
  v37 = v9;
  v33[1] = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v38);
    _os_log_impl(&dword_29E494000, v17, v18, "[%s] Creating summary sharing first time user feed item", v20, 0xCu);
    sub_29E4A1754(v21);
    MEMORY[0x29ED8BDB0](v21, -1, -1);
    MEMORY[0x29ED8BDB0](v20, -1, -1);

    v22 = *(v10 + 8);
    v22(v16, v37);
  }

  else
  {

    v22 = *(v10 + 8);
    v22(v16, v9);
  }

  if (qword_2A1A70658 != -1)
  {
    swift_once();
  }

  type metadata accessor for SummarySharingInformationTileViewController();
  (*(v1 + 104))(v4, *MEMORY[0x29EDC3790], v33[0]);

  sub_29E4FB350();
  sub_29E4FB370();
  sub_29E4FB3B0();
  sub_29E4FC350();
  v23 = sub_29E4FC3B0();
  v24 = sub_29E4FC940();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v38);
    *(v25 + 12) = 2080;
    swift_beginAccess();
    sub_29E4B8C84(&qword_2A1A70BB8, MEMORY[0x29EDC3840]);
    v27 = v35;
    v28 = sub_29E4FCF60();
    v30 = sub_29E4F68F4(v28, v29, v38);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_29E494000, v23, v24, "[%s] Created first time user feed item: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v26, -1, -1);
    MEMORY[0x29ED8BDB0](v25, -1, -1);

    v22(v14, v37);
  }

  else
  {

    v22(v14, v37);
    v27 = v35;
  }

  swift_beginAccess();
  v31 = v34;
  (*(v34 + 16))(v36, v8, v27);
  return (*(v31 + 8))(v8, v27);
}

uint64_t sub_29E4B7568@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v142 = a7;
  v128 = a6;
  v129 = a5;
  v125 = a4;
  v124 = a3;
  v123 = a2;
  v138 = a9;
  v132 = sub_29E4FB320();
  v130 = *(v132 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v132);
  v131 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E4FB460();
  v136 = *(v13 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v151 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E4FB240();
  v144 = *(v16 - 8);
  v145 = v16;
  v17 = *(v144 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v143 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E4FBAA0();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v147 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v122 = &v119 - v25;
  v121 = v26;
  MEMORY[0x2A1C7C4A8](v24);
  v28 = &v119 - v27;
  v149 = sub_29E4FC3C0();
  v29 = *(v149 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v149);
  v134 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v120 = &v119 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v36 = &v119 - v35;
  sub_29E4FC350();
  v37 = v20[2];
  v148 = a1;
  v127 = v20 + 2;
  v126 = v37;
  v37(v28, a1, v19);

  v38 = sub_29E4FC3B0();
  v39 = sub_29E4FC940();

  v40 = os_log_type_enabled(v38, v39);
  v137 = v13;
  v135 = a8;
  v141 = v29;
  v139 = v19;
  v133 = v20;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v150 = v42;
    *v41 = 136315650;
    *(v41 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, &v150);
    LODWORD(v140) = v39;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_29E4F68F4(v142, a8, &v150);
    *(v41 + 22) = 2080;
    sub_29E4B8C84(&unk_2A184B678, MEMORY[0x29EDC1A38]);
    v43 = sub_29E4FCF60();
    v45 = v44;
    v119 = v20[1];
    v119(v28, v19);
    v46 = sub_29E4F68F4(v43, v45, &v150);

    *(v41 + 24) = v46;
    _os_log_impl(&dword_29E494000, v38, v140, "[%s][%s] Creating feed item from SharingEntryProfileInformation: %s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v42, -1, -1);
    MEMORY[0x29ED8BDB0](v41, -1, -1);

    v140 = *(v141 + 8);
  }

  else
  {

    v119 = v20[1];
    v119(v28, v19);
    v140 = *(v29 + 8);
  }

  v47 = v140(v36, v149);
  v48 = v148;
  MEMORY[0x29ED8A010](v47);
  v49 = v143;
  sub_29E4FBA80();
  sub_29E4FBA70();

  (*(v144 + 8))(v49, v145);
  v50 = v146;
  sub_29E4FBA90();
  v51 = v147;
  if (v50)
  {
  }

  v146 = 0;
  sub_29E4A2AD8(0, &qword_2A184B670, 0x29EDC7DA8);
  (*(v130 + 104))(v131, *MEMORY[0x29EDC36E8], v132);
  sub_29E4FB350();
  sub_29E4FB370();
  sub_29E4FB3C0();
  v53 = v139;
  sub_29E4FB840();
  sub_29E4FB3D0();
  sub_29E4FB430();
  if (sub_29E4FB9D0())
  {
    v54 = v122;
    v126(v122, v48, v53);
    v55 = v133;
    v56 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v57 = (v121 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = v53;
    v62 = v60;
    (v55[4])(v60 + v56, v54, v61);
    v63 = v123;
    *(v62 + v57) = v123;
    v64 = v124;
    *(v62 + v58) = v124;
    *(v62 + v59) = v125;
    v65 = (v62 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    v66 = v128;
    *v65 = v129;
    v65[1] = v66;
    v67 = v63;
    v68 = v64;

    swift_unknownObjectRetain();
    sub_29E4FB380();
    v69 = v142;
  }

  else
  {
    v70 = sub_29E4FBA20();
    v69 = v142;
    v71 = v133;
    if (v70)
    {
      v72 = v122;
      v126(v122, v48, v53);
      v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v74 = (v121 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = v71;
      v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
      v78 = swift_allocObject();
      v79 = v53;
      v80 = v78;
      v81 = v72;
      v69 = v142;
      (v76[4])(v78 + v73, v81, v79);
      v82 = v123;
      *(v80 + v74) = v123;
      v83 = v124;
      *(v80 + v75) = v124;
      *(v80 + v77) = v125;
      v84 = (v80 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
      v85 = v128;
      *v84 = v129;
      v84[1] = v85;
      v86 = v82;
      v87 = v83;

      swift_unknownObjectRetain();
    }

    else if (sub_29E4FBA10() & 1) != 0 || (sub_29E4FBA00())
    {
      v106 = v120;
      sub_29E4FC3A0();
      v126(v51, v48, v53);
      v107 = sub_29E4FC3B0();
      v108 = sub_29E4FC940();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v150 = v110;
        *v109 = 136315394;
        *(v109 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, &v150);
        *(v109 + 12) = 2080;
        v111 = sub_29E4FBA40();
        v113 = v112;
        v119(v51, v139);
        v114 = sub_29E4F68F4(v111, v113, &v150);

        *(v109 + 14) = v114;
        _os_log_impl(&dword_29E494000, v107, v108, "%s Removing any invitation notifications with identifiers %s", v109, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED8BDB0](v110, -1, -1);
        MEMORY[0x29ED8BDB0](v109, -1, -1);

        v115 = v120;
      }

      else
      {

        v119(v51, v53);
        v115 = v106;
      }

      v140(v115, v149);
      v88 = v134;
      swift_getObjectType();
      sub_29E4B8AA4();
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_29E4FDE40;
      *(v116 + 32) = sub_29E4FBA40();
      *(v116 + 40) = v117;
      v118 = *(v128 + 8);
      sub_29E4FB5B0();

      goto LABEL_12;
    }

    sub_29E4FB380();
  }

  v88 = v134;
LABEL_12:
  v89 = sub_29E4FBA50();
  v91 = v151;
  v92 = v135;
  sub_29E4B8494(v151, v89, v90 & 1, v69, v135);
  v93 = sub_29E4FB9C0();
  sub_29E4B8770(v91, v93, v94 & 1, v69, v92);
  sub_29E4FC350();

  v95 = sub_29E4FC3B0();
  v96 = sub_29E4FC940();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v150 = v98;
    *v97 = 136315650;
    *(v97 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, &v150);
    *(v97 + 12) = 2080;
    *(v97 + 14) = sub_29E4F68F4(v69, v92, &v150);
    *(v97 + 22) = 2080;
    swift_beginAccess();
    sub_29E4B8C84(&qword_2A1A70BB8, MEMORY[0x29EDC3840]);
    v99 = v137;
    v100 = sub_29E4FCF60();
    v102 = sub_29E4F68F4(v100, v101, &v150);

    *(v97 + 24) = v102;
    _os_log_impl(&dword_29E494000, v95, v96, "[%s][%s] Created feed item: %s", v97, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v98, -1, -1);
    MEMORY[0x29ED8BDB0](v97, -1, -1);

    v140(v88, v149);
  }

  else
  {

    v140(v88, v149);
    v99 = v137;
  }

  v103 = v151;
  swift_beginAccess();
  v104 = v136;
  v105 = v138;
  (*(v136 + 16))(v138, v103, v99);
  (*(v104 + 56))(v105, 0, 1, v99);
  return (*(v104 + 8))(v103, v99);
}

uint64_t sub_29E4B8404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29E4E1F5C(a2, a3, a5, a6, a7);
  sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
  sub_29E4AD188();
  sub_29E4FC420();
}

uint64_t sub_29E4B8494(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_29E4FC3C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    goto LABEL_7;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_7;
    }

    v14 = sub_29E4FB500();
  }

  else
  {
    v14 = sub_29E4FB530();
  }

  v16 = v14;
  v17 = v15;
  v18 = sub_29E4FB410();
  sub_29E4F70DC(&v29, v16, v17);

  v18(v28, 0);
LABEL_7:
  sub_29E4FB420();
  sub_29E4FC350();

  v19 = sub_29E4FC3B0();
  v20 = sub_29E4FC940();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v28);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_29E4F68F4(a4, a5, v28);
    *(v21 + 22) = 2080;
    v23 = sub_29E4FC8B0();
    v25 = v24;

    v26 = sub_29E4F68F4(v23, v25, v28);

    *(v21 + 24) = v26;
    _os_log_impl(&dword_29E494000, v19, v20, "[%s][%s] Current keywords after adding for HKSharingMessageDirection: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v22, -1, -1);
    MEMORY[0x29ED8BDB0](v21, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_29E4B8770(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_29E4FC3C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = sub_29E4FB520();
        v16 = v15;
        v17 = sub_29E4FB410();
        sub_29E4F70DC(&v32, v14, v16);

        v17(v31, 0);
      }
    }

    else
    {
      v18 = sub_29E4FB510();
      v20 = v19;
      v21 = sub_29E4FB410();
      sub_29E4F70DC(&v32, v18, v20);

      v21(v31, 0);
      sub_29E4FB440();
    }
  }

  sub_29E4FB420();
  sub_29E4FC350();

  v22 = sub_29E4FC3B0();
  v23 = sub_29E4FC940();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136315650;
    *(v24 + 4) = sub_29E4F68F4(0x65466E6967756C50, 0xEE006D6574496465, v31);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_29E4F68F4(a4, a5, v31);
    *(v24 + 22) = 2080;
    v26 = sub_29E4FC8B0();
    v28 = v27;

    v29 = sub_29E4F68F4(v26, v28, v31);

    *(v24 + 24) = v29;
    _os_log_impl(&dword_29E494000, v22, v23, "[%s][%s] Current keywords after adding for HKSharingStatus: %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v25, -1, -1);
    MEMORY[0x29ED8BDB0](v24, -1, -1);
  }

  else
  {
  }

  return (*(v10 + 8))(v13, v9);
}

void sub_29E4B8AA4()
{
  if (!qword_2A1A70BD0)
  {
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70BD0);
    }
  }
}

uint64_t sub_29E4B8AF8()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v7);

  v10 = *(v0 + v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, v8 + 16, v3 | 7);
}

uint64_t sub_29E4B8BCC(uint64_t a1)
{
  v3 = *(sub_29E4FBAA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_29E4B8404(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_29E4B8C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E4B8CD0()
{
  v1 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
  v2 = sub_29E4FBAA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29E4A1754((v0 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_29E4B8D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v39 = a3;
  v40 = a6;
  v37 = a5;
  v38 = a1;
  v31 = a2;
  v32 = a4;
  v33 = *v6;
  v8 = sub_29E4FCA60();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FCA30();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = sub_29E4FC580();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = MEMORY[0x29EDCA190];
  v17 = sub_29E4A0E38(MEMORY[0x29EDCA190]);
  sub_29E4C39C4();
  v18 = swift_allocObject();
  *(v18 + 32) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = v17;
  v6[5] = v18;
  v34 = sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
  sub_29E4FC570();
  *&v43 = v16;
  sub_29E4BFA6C(&qword_2A1A6F1C0, 255, MEMORY[0x29EDCA288]);
  v19 = MEMORY[0x29EDCA288];
  sub_29E49684C(0, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29E4C3A24(&qword_2A1A6F220, &qword_2A1A6F228, v19);
  sub_29E4FCC70();
  (*(v35 + 104))(v11, *MEMORY[0x29EDCA2A8], v36);
  v20 = v37;
  v6[11] = sub_29E4FCA90();
  v21 = [v20 profileIdentifier];
  v22 = [v21 type];

  if ((v22 - 1) > 1)
  {
    sub_29E4C46EC(v40, sub_29E4C3A88);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v26 = v7[5];

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v23 = v31;
    v7[2] = v38;
    v7[3] = v23;
    v24 = v40;
    v25 = v32;
    v7[12] = v39;
    v7[13] = v25;
    v7[4] = v20;
    sub_29E4C3AF0(v24, &v41);
    if (v42)
    {
      sub_29E4C46EC(v24, sub_29E4C3A88);
      sub_29E498334(&v41, &v43);
    }

    else
    {
      v27 = type metadata accessor for SharingEntryProfileInformationInputSignal.AuthorizationSourceProvider();
      v28 = swift_allocObject();
      v44 = v27;
      v45 = &off_2A24E84C0;
      *&v43 = v28;
      sub_29E4C46EC(v24, sub_29E4C3A88);
      if (v42)
      {
        sub_29E4C46EC(&v41, sub_29E4C3A88);
      }
    }

    sub_29E498334(&v43, (v7 + 6));
  }

  return v7;
}

uint64_t sub_29E4B91E4(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v66 = *MEMORY[0x29EDCA608];
  sub_29E49684C(0, &qword_2A1A70470, sub_29E4C4ABC, MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = v55 - v7;
  sub_29E4C4ABC();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x2A1C7C4A8](v9);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C45FC(a1, v8, &qword_2A1A70470, sub_29E4C4ABC);
  if ((*(v11 + 6))(v8, 1, v10) == 1)
  {
    sub_29E4C467C(v8, &qword_2A1A70470, sub_29E4C4ABC);
    v15 = MEMORY[0x29EDCA1A0];
    goto LABEL_45;
  }

  (*(v11 + 4))(v14, v8, v10);
  v16 = sub_29E4FC310();
  v17 = v65;
  v60 = v2;
  v61 = 0;
  if ((v65 & 0xC000000000000001) == 0)
  {
    v35 = *(v65 + 32);
    v15 = ((1 << v35) + 63) >> 6;
    if ((v35 & 0x3Fu) <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

  v59 = v14;
  v15 = MEMORY[0x29EDCA1A0];
  v64 = MEMORY[0x29EDCA1A0];
  sub_29E4FCCA0();
  v18 = sub_29E4FCCD0();
  if (!v18)
  {
LABEL_23:

    v14 = v59;
    goto LABEL_42;
  }

  v19 = v18;
  sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
  v20 = v19;
  v14 = MEMORY[0x29EDCA170];
  v4 = &off_29F36A000;
  while (1)
  {
    v62 = v20;
    swift_dynamicCast();
    v21 = v63;
    if ([v63 status] != 3 && objc_msgSend(v21, sel_status) != 4)
    {
      break;
    }

LABEL_7:
    v20 = sub_29E4FCCD0();
    if (!v20)
    {
      goto LABEL_23;
    }
  }

  v22 = v63;
  v23 = *(v15 + 16);
  if (*(v15 + 24) <= v23)
  {
    sub_29E4F7D40(v23 + 1);
  }

  v15 = v64;
  v24 = *(v64 + 40);
  v17 = v22;
  v25 = sub_29E4FCB30();
  v26 = v15 + 56;
  v27 = -1 << *(v15 + 32);
  v28 = v25 & ~v27;
  v29 = v28 >> 6;
  if (((-1 << v28) & ~*(v15 + 56 + 8 * (v28 >> 6))) != 0)
  {
    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v15 + 48) + 8 * v30) = v22;
    ++*(v15 + 16);
    goto LABEL_7;
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v26 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_25:
    v59 = v11;
    v55[1] = v55;
    v56 = v15;
    MEMORY[0x2A1C7C4A8](v16);
    v57 = v55 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v36);
    v58 = 0;
    v37 = 0;
    v4 = (v17 + 56);
    v38 = 1 << *(v17 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v17 + 56);
    v15 = (v38 + 63) >> 6;
    v11 = &off_29F36A000;
    while (v40)
    {
      v41 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v42 = v41 | (v37 << 6);
LABEL_36:
      v45 = *(*(v17 + 48) + 8 * v42);
      if ([v45 *(v11 + 321)] == 3)
      {
      }

      else
      {
        v46 = [v45 *(v11 + 321)];
        v47 = v14;
        v48 = v46;

        v49 = v48 == 4;
        v14 = v47;
        v11 = &off_29F36A000;
        if (!v49)
        {
          *&v57[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          if (__OFADD__(v58++, 1))
          {
            __break(1u);
LABEL_41:
            v15 = sub_29E4C0190(v57, v56, v58, v17);
            goto LABEL_42;
          }
        }
      }
    }

    v43 = v37;
    v11 = v59;
    while (1)
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v37 >= v15)
      {
        goto LABEL_41;
      }

      v44 = v4[v37];
      ++v43;
      if (v44)
      {
        v40 = (v44 - 1) & v44;
        v42 = __clz(__rbit64(v44)) | (v37 << 6);
        v11 = &off_29F36A000;
        goto LABEL_36;
      }
    }
  }

  v54 = swift_slowAlloc();
  v15 = sub_29E4C0100(v54, v15, v17, sub_29E4B9868);
  v61 = v4;

  MEMORY[0x29ED8BDB0](v54, -1, -1);
LABEL_42:
  v51 = [*(v60 + 32) profileIdentifier];
  if ([v51 type] == 1)
  {
    (*(v11 + 1))(v14, v10);
  }

  else
  {
    v15 = sub_29E4C3E3C(v15, v51);

    (*(v11 + 1))(v14, v10);
  }

LABEL_45:
  v52 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t sub_29E4B98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2A1C73D48](sub_29E4B98F0, 0, 0);
}

uint64_t sub_29E4B98F0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_29E4A1710(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_29E4B9A14;

  return v8(v2, v3);
}

uint64_t sub_29E4B9A14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_29E4B9C30;
  }

  else
  {
    v5 = sub_29E4B9B28;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

void sub_29E4B9B28()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    v2 = sub_29E4FCCB0();
    v9 = v0[6];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = *(v5 + 40);
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v5;
  os_unfair_lock_lock(v6 + 8);
  sub_29E4C4F38(&v6[4]);
  os_unfair_lock_unlock(v6 + 8);
  if (!v3)
  {

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_29E4B9C30()
{
  v1 = swift_task_alloc();
  v2 = *(*(v0 + 24) + 40);
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  os_unfair_lock_lock(v2 + 8);
  sub_29E4C4F1C(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E4B9CF4(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBA80();
  v7 = *(a1 + 8);
  if (*(v7 + 16) && (v8 = sub_29E49ED7C(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = *(v3 + 8);

    v11(v6, v2);
    swift_beginAccess();
    sub_29E4FB990();
    swift_endAccess();
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  return sub_29E4B9E74(a1);
}

uint64_t sub_29E4B9E74(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v115 = sub_29E4FC3C0();
  v5 = *(v115 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v115);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v98 - v10;
  v12 = sub_29E4FB240();
  v13 = *(v12 - 8);
  v112 = v12;
  v113 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v111 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E4FC560();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v104 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E4FC580();
  v103 = *(v20 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v102 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_29E4FBAA0();
  v23 = *(*(v119 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v119);
  v118 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    sub_29E4FC350();

    v55 = sub_29E4FC3B0();
    v56 = sub_29E4FC920();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v5;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136446210;
      aBlock[9] = v2;
      sub_29E4BFA6C(&unk_2A1A6F620, v60, type metadata accessor for SharingEntryProfileInformationInputSignal);
      v61 = sub_29E4FCF60();
      v63 = sub_29E4F68F4(v61, v62, aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_29E494000, v55, v56, "[%{public}s]: Not updating observer, hasn't received initial anchors", v58, 0xCu);
      sub_29E4A1754(v59);
      MEMORY[0x29ED8BDB0](v59, -1, -1);
      MEMORY[0x29ED8BDB0](v58, -1, -1);

      return (*(v57 + 8))(v9, v115);
    }

    else
    {

      return (*(v5 + 8))(v9, v115);
    }
  }

  v114 = v4;
  v98 = v20;
  v99 = v17;
  v100 = v16;
  v101 = v2;
  v26 = *(a1 + 8);
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v116 = (v24 + 16);
  v110 = v24;
  v32 = (v24 + 8);
  v117 = v26;
  result = swift_bridgeObjectRetain_n();
  v34 = 0;
  while (v30)
  {
    v35 = v34;
LABEL_11:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = *(*(v117 + 56) + ((v35 << 9) | (8 * v36)));
    v38 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
    swift_beginAccess();
    v39 = v37 + v38;
    v40 = v118;
    v41 = v119;
    (*v116)(v118, v39, v119);
    sub_29E4FB980();
    v43 = v42;
    result = (*v32)(v40, v41);
    if (v43)
    {

      sub_29E4FC350();
      v44 = v101;

      v45 = sub_29E4FC3B0();
      v46 = v11;
      v47 = sub_29E4FC920();

      if (os_log_type_enabled(v45, v47))
      {
        v48 = v5;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v49 = 136446210;
        aBlock[6] = v44;
        sub_29E4BFA6C(&unk_2A1A6F620, v51, type metadata accessor for SharingEntryProfileInformationInputSignal);
        v52 = sub_29E4FCF60();
        v54 = sub_29E4F68F4(v52, v53, aBlock);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_29E494000, v45, v47, "[%{public}s]: Not updating observer, an entry contains no topics sharing", v49, 0xCu);
        sub_29E4A1754(v50);
        MEMORY[0x29ED8BDB0](v50, -1, -1);
        MEMORY[0x29ED8BDB0](v49, -1, -1);

        return (*(v48 + 8))(v46, v115);
      }

      else
      {

        return (*(v5 + 8))(v46, v115);
      }
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v35);
    ++v34;
    if (v30)
    {
      v34 = v35;
      goto LABEL_11;
    }
  }

  v64 = v117;

  sub_29E4C5AC8(0, &qword_2A1A6F128, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9E70]);
  result = sub_29E4FCE00();
  v65 = result;
  v66 = 0;
  v67 = 1 << *(v64 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v64 + 64);
  v70 = (v67 + 63) >> 6;
  v108 = v113 + 16;
  v107 = result + 64;
  v106 = v113 + 32;
  v105 = v110 + 32;
  v109 = result;
  v71 = v110;
  if (!v69)
  {
LABEL_20:
    v73 = v66;
    while (1)
    {
      v66 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_32;
      }

      if (v66 >= v70)
      {
        v90 = v101;
        v91 = v101[11];
        v92 = swift_allocObject();
        *(v92 + 16) = v90;
        *(v92 + 24) = v65;
        aBlock[4] = sub_29E4C4F58;
        aBlock[5] = v92;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_29E4BB1B0;
        aBlock[3] = &unk_2A24E8570;
        v93 = _Block_copy(aBlock);

        v94 = v102;
        sub_29E4FC570();
        v120 = MEMORY[0x29EDCA190];
        sub_29E4BFA6C(&qword_2A1A70428, 255, MEMORY[0x29EDCA248]);
        v95 = MEMORY[0x29EDCA248];
        sub_29E49684C(0, &qword_2A1A6F240, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29E4C3A24(&qword_2A1A6F238, &qword_2A1A6F240, v95);
        v96 = v104;
        v97 = v100;
        sub_29E4FCC70();
        MEMORY[0x29ED8B0B0](0, v94, v96, v93);
        _Block_release(v93);
        (*(v99 + 8))(v96, v97);
        (*(v103 + 8))(v94, v98);
      }

      v74 = *(v27 + 8 * v66);
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v114 = (v74 - 1) & v74;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v72 = __clz(__rbit64(v69));
    v114 = (v69 - 1) & v69;
LABEL_25:
    v75 = v72 | (v66 << 6);
    v76 = v117;
    v77 = *(v117 + 48);
    v79 = v112;
    v78 = v113;
    v115 = *(v113 + 72) * v75;
    v80 = v111;
    (*(v113 + 16))(v111, v77 + v115, v112);
    v81 = *(*(v76 + 56) + 8 * v75);
    v82 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
    swift_beginAccess();
    v83 = v81 + v82;
    v85 = v118;
    v84 = v119;
    (*(v71 + 16))(v118, v83, v119);
    *(v107 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
    v86 = *(v78 + 32);
    v65 = v109;
    v86(*(v109 + 48) + v115, v80, v79);
    result = (*(v71 + 32))(*(v65 + 56) + *(v71 + 72) * v75, v85, v84);
    v87 = *(v65 + 16);
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (v88)
    {
      break;
    }

    *(v65 + 16) = v89;
    v69 = v114;
    if (!v114)
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_29E4BA9CC(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBA80();
  v7 = *(a1 + 8);
  if (*(v7 + 16) && (v8 = sub_29E49ED7C(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = *(v3 + 8);

    v11(v6, v2);
    swift_beginAccess();
    sub_29E4FB990();
    swift_endAccess();
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  return sub_29E4B9E74(a1);
}

uint64_t sub_29E4BAB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29E49684C(0, &qword_2A184B728, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = v27 - v12;
  sub_29E4C45FC(a3, v27 - v12, &qword_2A184B728, v9);
  v14 = sub_29E4FC880();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_29E4C467C(v13, &qword_2A184B728, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E4FC870();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_29E4FC810();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_29E4FC720() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_29E4C467C(a3, &qword_2A184B728, MEMORY[0x29EDCA398]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29E4C467C(a3, &qword_2A184B728, MEMORY[0x29EDCA398]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_29E4BAE88(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E4FCCA0();
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4C4BB4(&qword_2A1A6F190);
    sub_29E4FC8D0();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_29E4FCCD0())
        {
          break;
        }

        sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_29E4C4CA8();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29E4BB0F0(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  swift_getObjectType();
  type metadata accessor for SharingEntryProfileInformationInputSignal();
  sub_29E4BFA6C(&unk_2A1A6F630, v3, type metadata accessor for SharingEntryProfileInformationInputSignal);

  sub_29E4FC280();
}

uint64_t sub_29E4BB1B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_29E4BB1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  sub_29E49684C(0, &qword_2A184B728, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = v27 - v7;
  v9 = sub_29E4FBAA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v13 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v12);
  v16 = v27 - v15;
  v17 = *(a1 + 8);
  if (*(v17 + 16))
  {
    result = sub_29E49ED7C(a2);
    if (v18)
    {
      v19 = *(*(v17 + 56) + 8 * result);
      v20 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
      v27[0] = v8;
      v27[1] = v19;
      v21 = v19;
      swift_beginAccess();
      v22 = *(v10 + 16);
      v22(v16, v21 + v20, v9);
      sub_29E4A76F0(v21 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource, v30);
      v23 = sub_29E4FC880();
      v24 = v27[0];
      (*(*(v23 - 8) + 56))(v27[0], 1, 1, v23);
      sub_29E4A76F0(v30, v29);
      v22(v13, v16, v9);
      v25 = (*(v10 + 80) + 80) & ~*(v10 + 80);
      v26 = swift_allocObject();
      *(v26 + 2) = 0;
      *(v26 + 3) = 0;
      sub_29E498334(v29, (v26 + 32));
      *(v26 + 9) = v28;
      (*(v10 + 32))(&v26[v25], v13, v9);

      sub_29E4BAB40(0, 0, v24, &unk_29E4FFAA0, v26);

      sub_29E4A1754(v30);
      return (*(v10 + 8))(v16, v9);
    }
  }

  return result;
}

uint64_t sub_29E4BB500(uint64_t a1)
{
  v48 = sub_29E4FBAA0();
  v46 = *(v48 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v45 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A184B728, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v44 = &v39 - v5;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_29E4FBA80();
  v11 = objc_allocWithZone(MEMORY[0x29EDBADC8]);
  v12 = sub_29E4FB210();
  v13 = [v11 initForInvitationUUID_];
  v41 = v13;

  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_29E4FBA80();
  v15 = type metadata accessor for SharingEntryProfileInformationInputSignal.AuthorizationObserver(0);
  v16 = objc_allocWithZone(v15);
  swift_weakInit();
  (*(v7 + 16))(v16 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC821AuthorizationObserver_uuid, v10, v6);
  v17 = v49;
  swift_weakAssign();
  v52.receiver = v16;
  v52.super_class = v15;
  v18 = objc_msgSendSuper2(&v52, sel_init);
  v14(v10, v6);
  v42 = v18;
  swift_weakAssign();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_getObjectType();
  v21 = *(v19 + 16);
  v22 = sub_29E4FB2B0();
  v23 = [objc_allocWithZone(MEMORY[0x29EDBADC0]) initWithHealthStore:v22 recipientIdentifier:v13];
  v51[3] = sub_29E4A2AD8(0, &unk_2A184B730, 0x29EDBADC0);
  v51[4] = &off_2A24E8420;

  v51[0] = v23;
  [v23 addObserver_];
  v24 = sub_29E4FC880();
  v25 = v44;
  (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
  sub_29E4A76F0(v51, v50);
  v26 = v46;
  v40 = *(v46 + 16);
  v27 = v45;
  v28 = v43;
  v29 = v48;
  v40(v45, v43, v48);
  v30 = v26;
  v31 = (*(v26 + 80) + 80) & ~*(v26 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  sub_29E498334(v50, (v32 + 32));
  *(v32 + 9) = v49;
  v33 = *(v30 + 32);
  v33(&v32[v31], v27, v29);

  sub_29E4BAB40(0, 0, v25, &unk_29E4FFA80, v32);

  v40(v27, v28, v29);
  sub_29E4A76F0(v51, v50);
  v34 = type metadata accessor for SharingEntryProfileInformationInputSignal.SharingEntry(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v33((v37 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry), v27, v29);
  sub_29E498334(v50, v37 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource);
  *(v37 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationObserver) = v42;
  sub_29E4A1754(v51);
  return v37;
}

uint64_t sub_29E4BB9FC(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  sub_29E4C4568();
  v104 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v108 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_29E4FB240();
  v6 = *(v118 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v118);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v113 = &v94 - v11;
  sub_29E49684C(0, &qword_2A1A70580, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v97 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v107 = &v94 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v114 = &v94 - v18;
  v19 = sub_29E4FBAA0();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v121 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v95 = &v94 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v94 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v109 = &v94 - v29;
  v30 = a2 + 64;
  v31 = 1 << *(a2 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a2 + 64);
  v34 = (v31 + 63) >> 6;
  v120 = v28 + 16;
  v110 = v28 + 56;
  v111 = v6;
  v117 = (v6 + 8);
  v101 = (v28 + 48);
  v112 = (v28 + 32);
  v119 = v28;
  v116 = (v28 + 8);
  v106 = a2;

  v35 = 0;
  v115 = MEMORY[0x29EDCA190];
  v102 = a2 + 64;
  v103 = v10;
  v99 = v34;
  v100 = v27;
  if (v33)
  {
    while (1)
    {
LABEL_12:
      while (1)
      {
        v43 = v119;
        v44 = *(v119 + 72);
        v45 = *(v119 + 16);
        v46 = v109;
        v45(v109, *(v106 + 56) + v44 * (__clz(__rbit64(v33)) | (v35 << 6)), v19);
        v47 = v114;
        v45(v114, v46, v19);
        v48 = *(v43 + 56);
        v49 = 1;
        v48(v47, 0, 1, v19);
        v50 = v113;
        sub_29E4FBA80();
        v51 = v105;
        v52 = *(v105 + 16);
        v98 = v44;
        if (!v52)
        {
          goto LABEL_15;
        }

        v53 = sub_29E49ED7C(v50);
        if (v54)
        {
          v55 = *(v51 + 56) + v53 * v44;
          v56 = v107;
          v45(v107, v55, v19);
          v49 = 0;
        }

        else
        {
LABEL_15:
          v56 = v107;
        }

        v33 &= v33 - 1;
        (*v117)(v113, v118);
        v48(v56, v49, 1, v19);
        v57 = v56;
        v58 = *(v104 + 48);
        v59 = MEMORY[0x29EDC1A38];
        v60 = v114;
        v61 = v108;
        sub_29E4C45FC(v114, v108, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        v62 = v59;
        v63 = v61;
        sub_29E4C45FC(v57, v61 + v58, &qword_2A1A70580, v62);
        v64 = *v101;
        if ((*v101)(v63, 1, v19) == 1)
        {
          break;
        }

        v65 = v97;
        sub_29E4C45FC(v63, v97, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        if (v64(v63 + v58, 1, v19) == 1)
        {
          v66 = MEMORY[0x29EDC1A38];
          sub_29E4C467C(v107, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
          v67 = v66;
          v38 = v108;
          sub_29E4C467C(v114, &qword_2A1A70580, v67);
          v40 = v116;
          (*v116)(v65, v19);
          v30 = v102;
          v10 = v103;
          v27 = v100;
          goto LABEL_6;
        }

        v68 = v95;
        (*v112)(v95, v63 + v58, v19);
        sub_29E4BFA6C(&qword_2A184B710, 255, MEMORY[0x29EDC1A38]);
        v96 = sub_29E4FC680();
        v41 = *v116;
        (*v116)(v68, v19);
        v69 = MEMORY[0x29EDC1A38];
        sub_29E4C467C(v107, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        sub_29E4C467C(v114, &qword_2A1A70580, v69);
        v41(v65, v19);
        sub_29E4C467C(v63, &qword_2A1A70580, v69);
        v30 = v102;
        v10 = v103;
        v27 = v100;
        if ((v96 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_22:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v99;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = sub_29E4A7BF0(0, v115[2] + 1, 1, v115);
        }

        v72 = v115[2];
        v71 = v115[3];
        if (v72 >= v71 >> 1)
        {
          v115 = sub_29E4A7BF0(v71 > 1, v72 + 1, 1, v115);
        }

        v73 = v115;
        v115[2] = v72 + 1;
        (*(v119 + 32))(v73 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + v72 * v98, v109, v19);
        if (!v33)
        {
          goto LABEL_8;
        }
      }

      v36 = MEMORY[0x29EDC1A38];
      sub_29E4C467C(v57, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
      v37 = v36;
      v38 = v108;
      sub_29E4C467C(v60, &qword_2A1A70580, v37);
      v39 = v64(v38 + v58, 1, v19);
      v30 = v102;
      v10 = v103;
      v27 = v100;
      v40 = v116;
      if (v39 == 1)
      {
        sub_29E4C467C(v38, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        goto LABEL_22;
      }

LABEL_6:
      sub_29E4C46EC(v38, sub_29E4C4568);
      v41 = *v40;
LABEL_7:
      v34 = v99;
      v41(v109, v19);
      if (!v33)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v42 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = sub_29E4FCFB0();
      __break(1u);
      return result;
    }

    if (v42 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v42);
    ++v35;
    if (v33)
    {
      v35 = v42;
      goto LABEL_12;
    }
  }

  v74 = v115;
  v114 = v115[2];
  if (v114)
  {
    v75 = 0;
    v113 = v115 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v109 = (v119 + 40);
    v110 = v111 + 16;
    v76 = MEMORY[0x29EDCA198];
    while (1)
    {
      if (v75 >= v74[2])
      {
        goto LABEL_47;
      }

      v77 = *(v119 + 72);
      v78 = *(v119 + 16);
      v78(v27, &v113[v77 * v75], v19);
      sub_29E4FBA80();
      v78(v121, v27, v19);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v76;
      v81 = sub_29E49ED7C(v10);
      v82 = v76[2];
      v83 = (v80 & 1) == 0;
      v84 = v82 + v83;
      if (__OFADD__(v82, v83))
      {
        goto LABEL_48;
      }

      v85 = v80;
      if (v76[3] >= v84)
      {
        if (v79)
        {
          v76 = v122;
          if (v80)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_29E4C2AA8(MEMORY[0x29EDC1A38], &qword_2A1A6F128, MEMORY[0x29EDC1A38]);
          v76 = v122;
          if (v85)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_29E4C0F30(v84, v79, MEMORY[0x29EDC1A38], &qword_2A1A6F128, MEMORY[0x29EDC1A38]);
        v86 = sub_29E49ED7C(v10);
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_50;
        }

        v81 = v86;
        v76 = v122;
        if (v85)
        {
LABEL_30:
          (*v109)(v76[7] + v81 * v77, v121, v19);
          (*v117)(v10, v118);
          (*v116)(v27, v19);
          goto LABEL_31;
        }
      }

      v76[(v81 >> 6) + 8] |= 1 << v81;
      v88 = v111;
      v89 = v118;
      (*(v111 + 16))(v76[6] + *(v111 + 72) * v81, v10, v118);
      (*v112)((v76[7] + v81 * v77), v121, v19);
      (*(v88 + 8))(v10, v89);
      (*v116)(v27, v19);
      v90 = v76[2];
      v91 = __OFADD__(v90, 1);
      v92 = v90 + 1;
      if (v91)
      {
        goto LABEL_49;
      }

      v76[2] = v92;
LABEL_31:
      ++v75;
      v74 = v115;
      if (v114 == v75)
      {
        goto LABEL_45;
      }
    }
  }

  v76 = MEMORY[0x29EDCA198];
LABEL_45:

  return v76;
}

uint64_t sub_29E4BC588(void *a1, uint64_t a2)
{
  sub_29E4C43EC(0, &qword_2A1A6F0F0, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4C4280();
  sub_29E4FD080();
  v12[1] = a2;
  sub_29E4C5AC8(0, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
  sub_29E4C4450();
  sub_29E4FCF50();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_29E4BC720()
{
  sub_29E4FD030();
  MEMORY[0x29ED8B670](0);
  return sub_29E4FD050();
}

uint64_t sub_29E4BC764()
{
  sub_29E4FD030();
  MEMORY[0x29ED8B670](0);
  return sub_29E4FD050();
}

uint64_t sub_29E4BC7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E4FCF80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E4BC844(uint64_t a1)
{
  v2 = sub_29E4C4280();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4BC880(uint64_t a1)
{
  v2 = sub_29E4C4280();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4BC8BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29E4BB9FC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_29E4BC8EC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v1;

    v4 = sub_29E4961AC(v3, v2);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void *sub_29E4BC95C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_29E4C40B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29E4BC9A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(result + 8) + 16))
  {
    v4 = result;

    v6 = sub_29E4C5010(a2, a3);

    *(v4 + 8) = v6;
  }

  return result;
}

uint64_t sub_29E4BCA1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v16 = v1 + 64;
  v17 = v1;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = sub_29E4A1754(v18))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v17 + 56) + ((v8 << 9) | (8 * v9)));
    sub_29E4A76F0(v10 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource, v18);
    v11 = v18[4];
    sub_29E4A1710(v18, v18[3]);
    v12 = *(v10 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationObserver);
    v19 = *(v11 + 16);

    v13 = v12;
    v19();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v14 = sub_29E4A0E38(MEMORY[0x29EDCA190]);

      *(a1 + 8) = v14;
      return result;
    }

    v4 = *(v16 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4BCBAC()
{
  v1 = *v0;
  v111 = v0;
  v107 = v1;
  v2 = sub_29E4FC3C0();
  v112 = *(v2 - 8);
  v113 = v2;
  v3 = *(v112 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v110 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v94 = &v92 - v6;
  v7 = MEMORY[0x29EDC9C68];
  sub_29E49684C(0, &qword_2A1A70530, sub_29E4A1EB4, MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v98 = &v92 - v10;
  v11 = MEMORY[0x29EDC34D8];
  sub_29E49684C(0, &qword_2A1A704E8, type metadata accessor for EndSharingRelationshipInputSignal, MEMORY[0x29EDC34D8]);
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v95 = &v92 - v14;
  sub_29E4A1EB4();
  v16 = *(v15 - 8);
  v100 = v15;
  v101 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v99 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A1A70510, sub_29E4C474C, v7);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v106 = &v92 - v21;
  v22 = sub_29E4FC300();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v105 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A1A704C8, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, v11);
  v103 = *(v25 - 8);
  v104 = v25;
  v26 = *(v103 + 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v92 - v27;
  sub_29E4C474C();
  v108 = *(v29 - 8);
  v109 = v29;
  v30 = *(v108 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v102 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E49684C(0, &qword_2A1A70470, sub_29E4C4ABC, v7);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x2A1C7C4A8](v32 - 8);
  v93 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v37 = &v92 - v36;
  sub_29E49684C(0, &qword_2A1A70500, MEMORY[0x29EDC3B28], v11);
  v39 = v38;
  v40 = *(v38 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v43 = &v92 - v42;
  sub_29E4C4ABC();
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = *(v46 + 8);
  MEMORY[0x2A1C7C4A8](v44);
  v49 = &v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB610();
  sub_29E4FC160();
  sub_29E4BFA6C(&qword_2A1A70648, 255, MEMORY[0x29EDC3B28]);
  sub_29E4FC2C0();
  (*(v40 + 8))(v43, v39);
  v50 = v45;
  v51 = v46;
  if ((*(v46 + 6))(v37, 1, v50) == 1)
  {
    sub_29E4C467C(v37, &qword_2A1A70470, sub_29E4C4ABC);
LABEL_7:
    v61 = v110;
    v60 = v111;
    sub_29E4FC350();

    v62 = sub_29E4FC3B0();
    v63 = sub_29E4FC920();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v114 = v60;
      v115[0] = v65;
      *v64 = 136446210;
      sub_29E4BFA6C(&unk_2A1A6F620, v66, type metadata accessor for SharingEntryProfileInformationInputSignal);
      v67 = sub_29E4FCF60();
      v69 = sub_29E4F68F4(v67, v68, v115);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_29E494000, v62, v63, "[%{public}s]: Missing anchor for dependent signals", v64, 0xCu);
      sub_29E4A1754(v65);
      MEMORY[0x29ED8BDB0](v65, -1, -1);
      MEMORY[0x29ED8BDB0](v64, -1, -1);
    }

    return (*(v112 + 8))(v61, v113);
  }

  (*(v46 + 4))(v49, v37, v50);
  sub_29E4FC2F0();
  type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal();
  sub_29E4FC180();
  sub_29E4BFA6C(qword_2A1A6F3D0, 255, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
  v52 = v106;
  sub_29E4FC2C0();
  (*(v103 + 1))(v28, v104);
  v53 = v108;
  v54 = v109;
  if ((*(v108 + 48))(v52, 1, v109) == 1)
  {
    v51[1](v49, v50);
    sub_29E4C467C(v52, &qword_2A1A70510, sub_29E4C474C);
    goto LABEL_7;
  }

  v103 = v49;
  v104 = v50;
  v55 = v102;
  (*(v53 + 32))(v102, v52, v54);
  sub_29E4FC2F0();
  type metadata accessor for EndSharingRelationshipInputSignal();
  v56 = v95;
  sub_29E4FC180();
  sub_29E4BFA6C(qword_2A1A6FC38, 255, type metadata accessor for EndSharingRelationshipInputSignal);
  v57 = v98;
  sub_29E4FC2C0();
  (*(v96 + 8))(v56, v97);
  v59 = v100;
  v58 = v101;
  if ((*(v101 + 48))(v57, 1, v100) == 1)
  {
    v51[1](v103, v104);
    sub_29E4C467C(v57, &qword_2A1A70530, sub_29E4A1EB4);
    (*(v53 + 8))(v55, v54);
    goto LABEL_7;
  }

  (*(v58 + 32))(v99, v57, v59);
  v71 = v93;
  v72 = v104;
  (v51[2])(v93, v103, v104);
  v110 = v51;
  (v51[7])(v71, 0, 1, v72);
  v73 = v111;
  v74 = sub_29E4B91E4(v71);
  sub_29E4C467C(v71, &qword_2A1A70470, sub_29E4C4ABC);
  v75 = v94;
  sub_29E4FC350();

  v76 = sub_29E4FC3B0();
  v77 = sub_29E4FC940();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v114 = v73;
    v115[0] = v79;
    *v78 = 136446467;
    sub_29E4BFA6C(&unk_2A1A6F620, v80, type metadata accessor for SharingEntryProfileInformationInputSignal);
    v81 = sub_29E4FCF60();
    v83 = sub_29E4F68F4(v81, v82, v115);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2081;
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4C4BB4(&qword_2A1A6F190);
    v84 = sub_29E4FC8B0();
    v86 = sub_29E4F68F4(v84, v85, v115);

    *(v78 + 14) = v86;
    _os_log_impl(&dword_29E494000, v76, v77, "[%{public}s]: Relevant entries: %{private}s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v79, -1, -1);
    v87 = v78;
    v58 = v101;
    MEMORY[0x29ED8BDB0](v87, -1, -1);
  }

  v88 = (*(v112 + 8))(v75, v113);
  v89 = v73[5];
  MEMORY[0x2A1C7C4A8](v88);
  v90 = v102;
  *(&v92 - 4) = v74;
  *(&v92 - 3) = v90;
  v91 = v99;
  *(&v92 - 2) = v73;
  *(&v92 - 1) = v91;
  os_unfair_lock_lock(v89 + 8);
  sub_29E4C4C68(&v89[4]);
  os_unfair_lock_unlock(v89 + 8);

  (*(v110 + 1))(v103, v104);
  (*(v58 + 8))(v91, v59);
  return (*(v108 + 8))(v90, v109);
}

uint64_t sub_29E4BD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v178 = a5;
  v162[2] = a4;
  v164 = a3;
  v187 = a2;
  v6 = MEMORY[0x29EDC9C68];
  sub_29E49684C(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v177 = v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v186 = v162 - v11;
  sub_29E49684C(0, &qword_2A1A70580, MEMORY[0x29EDC1A38], v6);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v176 = v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v185 = v162 - v16;
  v175 = sub_29E4FBAA0();
  v166 = *(v175 - 8);
  v17 = *(v166 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v175 - 8);
  v188 = v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v179 = v162 - v20;
  sub_29E49684C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], v6);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x2A1C7C4A8](v21 - 8);
  v174 = v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v165 = v162 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v191 = v162 - v27;
  v28 = sub_29E4FB240();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v162[0] = v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v173 = v162 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v172 = v162 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v180 = v162 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v40 = (v162 - v39);
  v41 = MEMORY[0x2A1C7C4A8](v38);
  v169 = (v162 - v42);
  v43 = MEMORY[0x2A1C7C4A8](v41);
  v184 = v162 - v44;
  MEMORY[0x2A1C7C4A8](v43);
  v182 = (v162 - v46);
  *a1 = 1;
  v181 = a1;
  v47 = *(a1 + 8);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 64);
  v52 = (v49 + 63) >> 6;
  v190 = (v45 + 16);
  v192 = (v45 + 32);
  v193 = v45;
  v195 = (v45 + 8);
  v53 = v47;

  v170 = MEMORY[0x29EDCA190];
  v194 = v28;
  v189 = v40;
  v171 = v48;
  v55 = 0;
  if (v51)
  {
    while (1)
    {
      v56 = v55;
LABEL_8:
      v57 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v58 = v53;
      v59 = v193;
      v60 = v194;
      v61 = v193[9];
      (v193[2])(v184, v53[6] + v61 * (v57 | (v56 << 6)), v194);
      v62 = v59[4];
      v63 = v182;
      v64 = v62();
      MEMORY[0x2A1C7C4A8](v64);
      v162[-2] = v63;
      v65 = v183;
      sub_29E4BAE88(sub_29E4C4C88, &v162[-4], v187);
      v183 = v65;
      if (v66)
      {
        result = (*v195)(v63, v60);
        v55 = v56;
        v28 = v60;
        v53 = v58;
        v40 = v189;
        v48 = v171;
        if (!v51)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v67 = v60;
        v68 = v62;
        (v62)(v169, v63, v67);
        v69 = v170;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v197[0] = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29E4C3534(0, *(v69 + 16) + 1, 1);
          v69 = v197[0];
        }

        v53 = v58;
        v72 = *(v69 + 16);
        v71 = *(v69 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_29E4C3534(v71 > 1, v72 + 1, 1);
          v69 = v197[0];
        }

        *(v69 + 16) = v72 + 1;
        v73 = *(v193 + 80);
        v170 = v69;
        v28 = v194;
        result = (v68)(v69 + ((v73 + 32) & ~v73) + v72 * v61, v169, v194);
        v40 = v189;
        v48 = v171;
        v55 = v56;
        if (!v51)
        {
          goto LABEL_5;
        }
      }
    }
  }

  while (1)
  {
LABEL_5:
    v56 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      return result;
    }

    if (v56 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v56);
    ++v55;
    if (v51)
    {
      goto LABEL_8;
    }
  }

  v74 = *(v170 + 16);
  if (v74)
  {
    v75 = v170 + ((*(v193 + 80) + 32) & ~*(v193 + 80));
    v76 = v193[9];
    v192 = v193[2];
    v184 = v76;
    v192(v40, v75, v28);
    while (1)
    {
      if (v53[2] && (v77 = sub_29E49ED7C(v40), (v78 & 1) != 0))
      {
        v193 = v53;
        v79 = *(v53[7] + 8 * v77);
        sub_29E4A76F0(v79 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationSource, v197);
        v80 = v199;
        sub_29E4A1710(v197, v198);
        v81 = *(v79 + OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_authorizationObserver);
        v82 = *(v80 + 16);

        v83 = v81;
        v82();
        v84 = v193;
        v40 = v189;

        sub_29E4A1754(v197);
        v53 = v84;
        v85 = sub_29E49ED7C(v40);
        if (v86)
        {
          v87 = v85;
          v193 = v79;
          v88 = v181;
          v89 = *(v181 + 8);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v91 = *(v88 + 8);
          v197[0] = v91;
          v28 = v194;
          if (!v90)
          {
            sub_29E4C2A54();
            v91 = v197[0];
          }

          v76 = v184;
          v92 = *v195;
          (*v195)((*(v91 + 48) + v87 * v184), v28);
          v93 = *(*(v91 + 56) + 8 * v87);

          sub_29E4C19E0(v87, v91);

          v92(v40, v28);
          *(v181 + 8) = v91;
          v53 = v91;
        }

        else
        {
          v28 = v194;
          (*v195)(v40, v194);

          v76 = v184;
        }
      }

      else
      {
        (*v195)(v40, v28);
      }

      v75 += v76;
      if (!--v74)
      {
        break;
      }

      v192(v40, v75, v28);
    }
  }

  v94 = v180;
  if ((v187 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E4FCCA0();
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4C4BB4(&qword_2A1A6F190);
    sub_29E4FC8D0();
    result = v197[0];
    v95 = v197[1];
    v96 = v197[2];
    v97 = v198;
    v98 = v199;
  }

  else
  {
    v99 = -1 << *(v187 + 32);
    v95 = v187 + 56;
    v100 = ~v99;
    v101 = -v99;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    else
    {
      v102 = -1;
    }

    v98 = v102 & *(v187 + 56);

    v96 = v100;
    v97 = 0;
  }

  v162[1] = v96;
  v103 = (v96 + 64) >> 6;
  v163 = (v166 + 16);
  v169 = (v166 + 56);
  v168 = (v166 + 48);
  v182 = (v166 + 8);
  v167 = (v166 + 32);
  v166 += 24;
  v187 = result;
  v171 = v95;
  v170 = v103;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v104 = sub_29E4FCCD0();
    if (!v104)
    {
      break;
    }

    v200 = v104;
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    swift_dynamicCast();
    v105 = v196;
    i = v97;
    v184 = v98;
    if (!v196)
    {
      break;
    }

    while (1)
    {
      v109 = [v105 UUID];
      sub_29E4FB230();

      v110 = v53[2];
      v193 = v53;
      if (v110)
      {
        v111 = sub_29E49ED7C(v94);
        v112 = v172;
        if (v113)
        {
          v114 = *v195;
          v192 = *(v53[7] + 8 * v111);

          v189 = v114;
          (v114)(v94, v28);
        }

        else
        {
          v189 = *v195;
          v189(v94, v28);
          v192 = 0;
        }
      }

      else
      {
        v189 = *v195;
        v189(v94, v28);
        v192 = 0;
        v112 = v172;
      }

      v115 = sub_29E4FB1E0();
      v116 = *(v115 - 8);
      v117 = *(v116 + 56);
      v117(v191, 1, 1, v115);
      v190 = v105;
      v118 = [v105 profileIdentifier];
      v119 = v185;
      if (v118)
      {
        v120 = v118;
        sub_29E4C474C();
        sub_29E4FC0C0();
        v121 = v196;
        v122 = [v120 identifier];
        sub_29E4FB230();

        if (v121[2])
        {
          v123 = sub_29E49ED7C(v112);
          v124 = v191;
          if (v125)
          {
            (*(v116 + 16))(v165, v121[7] + *(v116 + 72) * v123, v115);

            v189(v112, v194);
            sub_29E4C467C(v124, qword_2A1A70838, MEMORY[0x29EDB9BC8]);

            v126 = 0;
          }

          else
          {

            v189(v112, v194);
            sub_29E4C467C(v124, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
            v126 = 1;
          }

          v127 = v124;
        }

        else
        {

          v189(v112, v194);
          v127 = v191;
          sub_29E4C467C(v191, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
          v126 = 1;
        }

        v119 = v185;
        v128 = v165;
        v117(v165, v126, 1, v115);
        sub_29E496A9C(v128, v127, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      }

      v129 = v192;
      if (v192)
      {
        v130 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
        swift_beginAccess();
        v131 = v175;
        (*v163)(v119, v129 + v130, v175);
        v132 = 0;
        v133 = v186;
      }

      else
      {
        v132 = 1;
        v133 = v186;
        v131 = v175;
      }

      v134 = v194;
      (*v169)(v119, v132, 1, v131);
      sub_29E4A1EB4();
      sub_29E4FC0C0();
      v135 = v196;
      v136 = [v190 UUID];
      v137 = v173;
      sub_29E4FB230();

      if (!v135[2])
      {
        goto LABEL_63;
      }

      v138 = sub_29E49ED7C(v137);
      if (v139)
      {
        v140 = v138;
        v141 = v135[7];
        v142 = sub_29E4FB910();
        v143 = *(v142 - 8);
        (*(v143 + 16))(v186, v141 + *(v143 + 72) * v140, v142);
        v189(v137, v134);

        v144 = v185;
        (*(v143 + 56))(v186, 0, 1, v142);
        v133 = v186;
      }

      else
      {
LABEL_63:
        v145 = v134;
        v144 = v119;

        v189(v137, v145);
        v146 = sub_29E4FB910();
        (*(*(v146 - 8) + 56))(v133, 1, 1, v146);
      }

      v147 = v190;
      sub_29E4FB970();
      sub_29E4C45FC(v191, v174, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      sub_29E4FB9A0();
      sub_29E4C45FC(v133, v177, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      sub_29E4FB960();
      v148 = v176;
      sub_29E4C45FC(v144, v176, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
      if ((*v168)(v148, 1, v131) == 1)
      {
        sub_29E4C467C(v133, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
        sub_29E4C467C(v144, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
        v149 = v148;
      }

      else
      {
        sub_29E4FB980();
        v150 = v148;
        v152 = v151;
        (*v182)(v150, v131);
        if ((v152 & 1) == 0)
        {
          sub_29E4FB990();
        }

        sub_29E4C467C(v133, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
        v149 = v144;
      }

      v153 = v192;
      sub_29E4C467C(v149, &qword_2A1A70580, MEMORY[0x29EDC1A38]);
      v154 = v179;
      (*v167)(v179, v188, v131);
      v94 = v180;
      v28 = v194;
      if (v153)
      {

        sub_29E4C467C(v191, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
        v155 = OBJC_IVAR____TtCC8Profiles41SharingEntryProfileInformationInputSignalP33_E10E3388A4AD6554C4BB6D43AFDF1EC812SharingEntry_entry;
        swift_beginAccess();
        (*v166)(v153 + v155, v154, v131);
        swift_endAccess();

        (*v182)(v154, v131);
        v97 = i;
        v98 = v184;
        result = v187;
        v53 = v193;
      }

      else
      {
        v156 = [v147 UUID];
        v157 = v162[0];
        sub_29E4FB230();

        v158 = sub_29E4BB500(v154);
        v159 = v181;
        v160 = *(v181 + 8);
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v196 = *(v159 + 8);
        sub_29E4C24F4(v158, v157, v161, sub_29E4C2A54, sub_29E4C06B4);
        v189(v157, v28);

        v53 = v196;
        *(v159 + 8) = v196;
        v94 = v180;
        (*v182)(v179, v131);
        sub_29E4C467C(v191, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
        v97 = i;
        v98 = v184;
        result = v187;
      }

      v95 = v171;
      v103 = v170;
      if (result < 0)
      {
        break;
      }

LABEL_39:
      v107 = v97;
      v108 = v98;
      for (i = v97; !v108; ++v107)
      {
        i = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          goto LABEL_76;
        }

        if (i >= v103)
        {
          goto LABEL_74;
        }

        v108 = *(v95 + 8 * i);
      }

      v184 = (v108 - 1) & v108;
      v105 = *(*(result + 48) + ((i << 9) | (8 * __clz(__rbit64(v108)))));
      if (!v105)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_74:
  sub_29E4C4CA8();
  return sub_29E4B9E74(v181);
}

uint64_t sub_29E4BEE64(id *a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_29E4FB230();

  v8 = sub_29E4FB220();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_29E4BEF70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  sub_29E4A1754((v0 + 48));

  v3 = *(v0 + 96);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E4BEFD0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 104);
  return swift_unknownObjectRetain();
}

void sub_29E4BEFFC(void *a1)
{
  if (*a1)
  {
    v2 = *(*v1 + 40);
    MEMORY[0x2A1C7C4A8](a1);
    os_unfair_lock_lock(v2 + 8);
    sub_29E4C54E4(&v2[4]);
    os_unfair_lock_unlock(v2 + 8);
  }
}

void sub_29E4BF084()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock(v1 + 8);
  sub_29E4BCA1C(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_29E4BF108(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4BFA6C(&unk_2A1A6F630, a2, type metadata accessor for SharingEntryProfileInformationInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

id sub_29E4BF2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingEntryProfileInformationInputSignal.AuthorizationObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E4BF3B0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29E4BF4C0;
  v2 = swift_continuation_init();
  sub_29E4C591C();
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E4BFAB4;
  v0[13] = &unk_2A24E85C0;
  v0[14] = v2;
  [v1 fetchSharingAuthorizationsWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E4BF4C0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_29E4BF64C()
{
  result = sub_29E4FBAA0();
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

uint64_t sub_29E4BF71C()
{
  result = sub_29E4FB240();
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

__n128 sub_29E4BF7D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29E4BF7E4(uint64_t a1, int a2)
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

uint64_t sub_29E4BF82C(uint64_t result, int a2, int a3)
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

unint64_t sub_29E4BF8C4()
{
  result = qword_2A1A6F668;
  if (!qword_2A1A6F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F668);
  }

  return result;
}

unint64_t sub_29E4BF91C()
{
  result = qword_2A1A6F640;
  if (!qword_2A1A6F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F640);
  }

  return result;
}

unint64_t sub_29E4BF974()
{
  result = qword_2A1A6F658;
  if (!qword_2A1A6F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F658);
  }

  return result;
}

unint64_t sub_29E4BF9CC()
{
  result = qword_2A1A6F650;
  if (!qword_2A1A6F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F650);
  }

  return result;
}

uint64_t sub_29E4BFA6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E4BFAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_29E4A1710((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29E4A2CE8(0, &qword_2A1A70BC8);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_29E4A2AD8(0, &unk_2A184B770, 0x29EDBADB8);
    **(*(v4 + 64) + 40) = sub_29E4FC7C0();

    return MEMORY[0x2A1C73CD8](v4);
  }
}

uint64_t sub_29E4BFBA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29E4BFCA0;

  return v7(a1);
}

uint64_t sub_29E4BFCA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_29E4BFD98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_29E4C0190(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_29E4BFF04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v25 = a1;
    v24 = a2;
    v8 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = a4;
    v26 = 0;
    v27 = a3;
    v13 = 0;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v17 = v14 | (v13 << 6);
      v18 = *(*(a3 + 48) + 8 * v17);
      if ([v18 direction] == 1 && (v19 = objc_msgSend(v18, sel_profileIdentifier)) != 0)
      {
        v20 = v19;
        sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
        v21 = v28;
        v22 = sub_29E4FCB40();

        a3 = v27;
        if (v22)
        {
          *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          if (__OFADD__(v26++, 1))
          {
            __break(1u);
LABEL_21:
            sub_29E4C0190(v25, v24, v26, a3);

            return;
          }
        }
      }

      else
      {
      }
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_21;
      }

      v16 = *(v8 + 8 * v13);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_29E4C0100(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_29E4BFD98(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_29E4C0190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x29EDCA1A0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_29E4C4F78(0, &unk_2A184B740, MEMORY[0x29EDC9D70]);
  result = sub_29E4FCD40();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_29E4FCB30();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_29E4C0394(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_29E4FB240();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x29EDCA1A0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_29E4C5A30();
  result = sub_29E4FCD40();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    result = sub_29E4FC650();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_29E4C0708(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_29E4A2D44();
  v42 = a2;
  result = sub_29E4FCE10();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
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
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_29E498334((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_29E4A76F0(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      result = sub_29E4FC650();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
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
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_29E498334(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
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

uint64_t sub_29E4C0B04(uint64_t a1, int a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v10 = sub_29E4FB240();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_29E4C5AC8(0, a3, a4, MEMORY[0x29EDC9E70]);
  v47 = a2;
  result = sub_29E4FCE10();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      result = sub_29E4FC650();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_29E4C0F30(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v61);
  v60 = &v49 - v13;
  v14 = sub_29E4FB240();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  sub_29E4C5AC8(0, a4, a5, MEMORY[0x29EDC9E70]);
  v56 = a2;
  result = sub_29E4FCE10();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      result = sub_29E4FC650();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_29E4C13F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29E4C5574();
  result = sub_29E4FCE10();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_29E4A2C58((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_29E4A25CC(v24, &v38);
        sub_29E4AD310(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_29E4FCCE0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_29E4A2C58(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_29E4C16B4(int64_t a1, uint64_t a2)
{
  v45 = sub_29E4FB240();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x2A1C7C4A8](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_29E4FCC80();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      v26 = sub_29E4FC650();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_29E4C19E0(int64_t a1, uint64_t a2)
{
  v43 = sub_29E4FB240();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x2A1C7C4A8](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_29E4FCC80();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      v26 = sub_29E4FC650();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_29E4C1D1C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_29E4FCC80();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
      v25 = sub_29E4FC650();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29E4C2070(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E4FCC80() + 1) & ~v5;
    do
    {
      sub_29E4A25CC(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_29E4FCCE0();
      result = sub_29E4A2628(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_29E4C229C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v38 = a6;
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = sub_29E4FB240();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_29E49ED7C(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v36();
      goto LABEL_7;
    }

    v37();
    v33 = *v8;
    v34 = sub_29E49ED7C(a2);
    if ((v23 & 1) == (v35 & 1))
    {
      v19 = v34;
      v25 = *v8;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v12);
      return sub_29E4C2824(v19, v16, a1, v25, v39);
    }

LABEL_15:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v8;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = v25[7];
  v27 = v38(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 40);
  v30 = v27;
  v31 = v26 + *(v28 + 72) * v19;

  return v29(v31, a1, v30);
}

uint64_t sub_29E4C24F4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_29E4FB240();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_29E49ED7C(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v27 = *v6;
    v28 = sub_29E49ED7C(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_29E4C2920(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

_OWORD *sub_29E4C26D8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_29E49EE90(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_29E4C337C();
      goto LABEL_7;
    }

    sub_29E4C13F0(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_29E49EE90(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_29E4A25CC(a2, v22);
      return sub_29E4C29D8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_29E4A1754(v17);

  return sub_29E4A2C58(a1, v17);
}

uint64_t sub_29E4C2824(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_29E4FB240();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_29E4C2920(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E4FB240();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_29E4C29D8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_29E4A2C58(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

char *sub_29E4C2AA8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v47 = &v37 - v8;
  v46 = sub_29E4FB240();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5AC8(0, a2, a3, MEMORY[0x29EDC9E70]);
  v11 = *v3;
  v12 = sub_29E4FCE00();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *sub_29E4C2E18()
{
  v1 = v0;
  v30 = sub_29E4FB240();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A2D44();
  v4 = *v0;
  v5 = sub_29E4FCE00();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_29E4A76F0(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_29E498334(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

char *sub_29E4C30B0(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v38 = sub_29E4FB240();
  v40 = *(v38 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5AC8(0, a1, a2, MEMORY[0x29EDC9E70]);
  v8 = *v2;
  v9 = sub_29E4FCE00();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v33 = v5;
    v34 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v39 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v40;
        v25 = *(v40 + 72) * v23;
        v27 = v37;
        v26 = v38;
        (*(v40 + 16))(v37, *(v8 + 48) + v25, v38);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v8;
        v30 = v39;
        (*(v24 + 32))(*(v39 + 48) + v25, v27, v26);
        v31 = *(v30 + 56);
        v8 = v29;
        *(v31 + 8 * v23) = v28;

        v18 = v41;
      }

      while (v41);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v33;
        v10 = v39;
        goto LABEL_18;
      }

      v22 = *(v34 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

void *sub_29E4C337C()
{
  v1 = v0;
  sub_29E4C5574();
  v2 = *v0;
  v3 = sub_29E4FCE00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_29E4A25CC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_29E4AD310(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_29E4A2C58(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *sub_29E4C3514(char *a1, int64_t a2, char a3)
{
  result = sub_29E4C3574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E4C3534(size_t a1, int64_t a2, char a3)
{
  result = sub_29E4C3690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E4C3554(void *a1, int64_t a2, char a3)
{
  result = sub_29E4C388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E4C3574(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4C5B88(0, &qword_2A1A70BD0, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

size_t sub_29E4C3690(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E49684C(0, &qword_2A184B4E0, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9E90]);
  v10 = *(sub_29E4FB240() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_29E4FB240() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_29E4C388C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_29E4C5500();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4C5B88(0, &qword_2A1A70908, MEMORY[0x29EDC9A40]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_29E4C39C4()
{
  if (!qword_2A1A6F140)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E4FCDC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F140);
    }
  }
}

uint64_t sub_29E4C3A24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E49684C(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4C3A88()
{
  if (!qword_2A1A6F9E8)
  {
    sub_29E4A2CE8(255, qword_2A1A6F9F0);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F9E8);
    }
  }
}

uint64_t sub_29E4C3AF0(uint64_t a1, uint64_t a2)
{
  sub_29E4C3A88();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4C3B54(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v36 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v9 = a2;
  v35 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v30 = v7;
    v31 = v3;
    v29 = &v29;
    MEMORY[0x2A1C7C4A8](v9);
    v32 = &v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v8);
    v33 = 0;
    v34 = v4;
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_13:
      v17 = v14 | (v7 << 6);
      v8 = *(*(v4 + 48) + 8 * v17);
      if ([v8 direction] == 1 && (v18 = objc_msgSend(v8, sel_profileIdentifier)) != 0)
      {
        v19 = v18;
        sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
        v20 = v35;
        v21 = sub_29E4FCB40();

        v4 = v34;
        if (v21)
        {
          *&v32[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_19:
            v23 = sub_29E4C0190(v32, v30, v33, v4);

            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v35;
  sub_29E4BFF04(v26, v7, v4, v27);
  v23 = v28;

  MEMORY[0x29ED8BDB0](v26, -1, -1);

LABEL_20:
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t sub_29E4C3E3C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_29E4C3B54(a1, a2);
  }

  v2 = MEMORY[0x29EDCA1A0];
  v21 = MEMORY[0x29EDCA1A0];
  v3 = a2;
  sub_29E4FCCA0();
  if (sub_29E4FCCD0())
  {
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    do
    {
      swift_dynamicCast();
      if ([v20 direction] == 1 && (v4 = objc_msgSend(v20, sel_profileIdentifier)) != 0 && (v5 = v4, sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0), v6 = v3, v7 = sub_29E4FCB40(), v6, v5, (v7 & 1) != 0))
      {
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_29E4F7D40(v8 + 1);
        }

        v2 = v21;
        v9 = *(v21 + 40);
        result = sub_29E4FCB30();
        v11 = v21 + 56;
        v12 = -1 << *(v21 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v21 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v14 == v17;
            if (v14 == v17)
            {
              v14 = 0;
            }

            v16 |= v18;
            v19 = *(v11 + 8 * v14);
          }

          while (v19 == -1);
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v21 + 48) + 8 * v15) = v20;
        ++*(v21 + 16);
      }

      else
      {
      }
    }

    while (sub_29E4FCCD0());
  }

  return v2;
}

void *sub_29E4C40B0(uint64_t *a1)
{
  sub_29E4C43EC(0, &qword_2A1A6F108, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = sub_29E4A1710(a1, a1[3]);
  sub_29E4C4280();
  sub_29E4FD070();
  if (!v1)
  {
    sub_29E4C5AC8(0, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
    sub_29E4C42D4();
    sub_29E4FCED0();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  sub_29E4A1754(a1);
  return v10;
}

unint64_t sub_29E4C4280()
{
  result = qword_2A1A6F680;
  if (!qword_2A1A6F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F680);
  }

  return result;
}

unint64_t sub_29E4C42D4()
{
  result = qword_2A1A6F2A8;
  if (!qword_2A1A6F2A8)
  {
    sub_29E4C5AC8(255, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
    sub_29E4BFA6C(&unk_2A1A706A0, 255, MEMORY[0x29EDB9C08]);
    sub_29E4BFA6C(&unk_2A1A70588, 255, MEMORY[0x29EDC1A38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2A8);
  }

  return result;
}

void sub_29E4C43EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4C4280();
    v7 = a3(a1, &type metadata for SharingEntryProfileInformationInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4C4450()
{
  result = qword_2A1A6F2B8;
  if (!qword_2A1A6F2B8)
  {
    sub_29E4C5AC8(255, &qword_2A1A6F2C8, MEMORY[0x29EDC1A38], MEMORY[0x29EDC98E0]);
    sub_29E4BFA6C(&unk_2A1A706C0, 255, MEMORY[0x29EDB9C08]);
    sub_29E4BFA6C(&qword_2A1A70598, 255, MEMORY[0x29EDC1A38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2B8);
  }

  return result;
}

void sub_29E4C4568()
{
  if (!qword_2A184B718)
  {
    sub_29E49684C(255, &qword_2A1A70580, MEMORY[0x29EDC1A38], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B718);
    }
  }
}

uint64_t sub_29E4C45FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E49684C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E4C467C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E49684C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4C46EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4C474C()
{
  if (!qword_2A1A70518)
  {
    sub_29E4C4804(255);
    sub_29E4C4838();
    sub_29E4C4920();
    sub_29E4C4A08(&qword_2A1A6F288, sub_29E4C4804, sub_29E4C4A84);
    v0 = sub_29E4FC0D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70518);
    }
  }
}

unint64_t sub_29E4C4838()
{
  result = qword_2A1A6F278;
  if (!qword_2A1A6F278)
  {
    sub_29E4C4804(255);
    sub_29E4BFA6C(&unk_2A1A706A0, 255, MEMORY[0x29EDB9C08]);
    sub_29E4BFA6C(&unk_2A1A706E0, 255, MEMORY[0x29EDB9BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F278);
  }

  return result;
}

unint64_t sub_29E4C4920()
{
  result = qword_2A1A6F298;
  if (!qword_2A1A6F298)
  {
    sub_29E4C4804(255);
    sub_29E4BFA6C(&unk_2A1A706C0, 255, MEMORY[0x29EDB9C08]);
    sub_29E4BFA6C(&qword_2A1A70700, 255, MEMORY[0x29EDB9BC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F298);
  }

  return result;
}

uint64_t sub_29E4C4A08(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4C4ABC()
{
  if (!qword_2A1A70478)
  {
    sub_29E4C4F78(255, &qword_2A1A6F200, MEMORY[0x29EDC9B90]);
    sub_29E4C4C08(&qword_2A1A6F1F8);
    sub_29E4C4C08(&qword_2A1A6F1F0);
    sub_29E4C4BB4(&qword_2A1A6F1A8);
    v0 = sub_29E4FC320();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70478);
    }
  }
}

uint64_t sub_29E4C4BB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E4A2AD8(255, &unk_2A1A6F198, 0x29EDBAE30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4C4C08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29E4C4F78(255, &qword_2A1A6F200, MEMORY[0x29EDC9B90]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4C4CB0(uint64_t a1)
{
  v4 = *(sub_29E4FBAA0() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E4C5DDC;

  return sub_29E4B98CC(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

uint64_t sub_29E4C4DAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29E4C5DDC;

  return sub_29E4BFBA8(a1, v5);
}

uint64_t sub_29E4C4E64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29E49D938;

  return sub_29E4BFBA8(a1, v5);
}

uint64_t sub_29E4C4F1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29E4BA9CC(a1);
}

uint64_t sub_29E4C4F38(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_29E4B9CF4(a1);
}

uint64_t sub_29E4C4F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4C4F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4A2AD8(255, &unk_2A1A6F198, 0x29EDBAE30);
    v7 = sub_29E4C4BB4(&qword_2A1A6F190);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E4C5010(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v42 = sub_29E4FBAA0();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v40 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E4FB240();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v47 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C5AC8(0, &qword_2A184B720, type metadata accessor for SharingEntryProfileInformationInputSignal.SharingEntry, MEMORY[0x29EDC9E70]);
  result = sub_29E4FCE00();
  v10 = result;
  v11 = 0;
  v43 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v36 = v3 + 16;
  v37 = v6 + 16;
  v41 = v3;
  v34 = result + 64;
  v35 = v3 + 8;
  v38 = result;
  v39 = v6;
  v33[1] = v6 + 32;
  v19 = v42;
  if (v17)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v17));
      v45 = (v17 - 1) & v17;
LABEL_10:
      v23 = v20 | (v11 << 6);
      v24 = v43;
      v25 = *(v43 + 48);
      v26 = v39;
      v46 = *(v39 + 72) * v23;
      (*(v39 + 16))(v47, v25 + v46, v48);
      v27 = v40;
      v28 = v41;
      (*(v41 + 16))(v40, *(v24 + 56) + *(v41 + 72) * v23, v19);
      v29 = sub_29E4BB500(v27);
      (*(v28 + 8))(v27, v19);
      *(v34 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v10 = v38;
      result = (*(v26 + 32))(*(v38 + 48) + v46, v47, v48);
      *(*(v10 + 56) + 8 * v23) = v29;
      v30 = *(v10 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v10 + 16) = v32;
      v17 = v45;
      if (!v45)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v10;
      }

      v22 = *(v13 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4C5360()
{
  v0 = sub_29E4FC300();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E4A1914();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E4FF750;
  v3 = sub_29E4FC2E0();
  *(v2 + 56) = v3;
  v4 = sub_29E4BFA6C(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
  *(v2 + 64) = v4;
  sub_29E4A197C((v2 + 32));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  sub_29E4FB610();
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  sub_29E4A197C((v2 + 72));
  sub_29E4FB600();
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  sub_29E4A197C((v2 + 112));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  return v2;
}

void sub_29E4C5500()
{
  if (!qword_2A1A708B0)
  {
    sub_29E4C5B88(255, &qword_2A1A70908, MEMORY[0x29EDC9A40]);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A708B0);
    }
  }
}

void sub_29E4C5574()
{
  if (!qword_2A184B750)
  {
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B750);
    }
  }
}

uint64_t sub_29E4C55D8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v1 + 8);
    sub_29E4C5DE4(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_29E4C5684()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v1 + 8);
    sub_29E4C5730(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_29E4C574C()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  sub_29E4A1754(v0 + 4);
  v7 = v0[9];

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4C5820(uint64_t a1)
{
  v4 = *(sub_29E4FBAA0() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E49D938;

  return sub_29E4B98CC(a1, v6, v7, (v1 + 4), v8, v1 + v5);
}

void sub_29E4C591C()
{
  if (!qword_2A184B760)
  {
    sub_29E4C599C();
    sub_29E4A2CE8(255, &qword_2A1A70BC8);
    v0 = sub_29E4FC890();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B760);
    }
  }
}

void sub_29E4C599C()
{
  if (!qword_2A184B768)
  {
    sub_29E4A2AD8(255, &unk_2A184B770, 0x29EDBADB8);
    v0 = sub_29E4FC800();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B768);
    }
  }
}

void sub_29E4C5A30()
{
  if (!qword_2A184B780)
  {
    sub_29E4FB240();
    sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v0 = sub_29E4FCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B780);
    }
  }
}

void sub_29E4C5AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4FB240();
    v9 = a3(255);
    v10 = sub_29E4BFA6C(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v11 = a4(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E4C5B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharingEntryProfileInformationInputSignal.Anchor.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SharingEntryProfileInformationInputSignal.Anchor.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29E4C5CD8()
{
  result = qword_2A184B798;
  if (!qword_2A184B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B798);
  }

  return result;
}

unint64_t sub_29E4C5D30()
{
  result = qword_2A1A6F670;
  if (!qword_2A1A6F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F670);
  }

  return result;
}

unint64_t sub_29E4C5D88()
{
  result = qword_2A1A6F678;
  if (!qword_2A1A6F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F678);
  }

  return result;
}

void sub_29E4C5E10()
{
  if (!qword_2A1A6F2F8)
  {
    sub_29E4C5E68();
    v0 = sub_29E4FC5D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F2F8);
    }
  }
}

unint64_t sub_29E4C5E68()
{
  result = qword_2A1A708D0;
  if (!qword_2A1A708D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A708D0);
  }

  return result;
}

uint64_t type metadata accessor for ProfileSearch()
{
  result = qword_2A1A70B68;
  if (!qword_2A1A70B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4C5F14()
{
  sub_29E4C5E10();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E4C5FAC()
{
  result = qword_2A184B7A0;
  if (!qword_2A184B7A0)
  {
    sub_29E4C769C(255, &qword_2A184B7A8, &type metadata for ProfileSearch.Destination, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7A0);
  }

  return result;
}

uint64_t sub_29E4C6028()
{
  sub_29E4FD030();
  sub_29E4FC730();
  return sub_29E4FD050();
}

uint64_t sub_29E4C60AC()
{
  sub_29E4FD030();
  sub_29E4FC730();
  return sub_29E4FD050();
}

uint64_t sub_29E4C6108@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29E4FCE50();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_29E4C6248()
{
  result = qword_2A184B7B0;
  if (!qword_2A184B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7B0);
  }

  return result;
}

uint64_t sub_29E4C629C(void *a1)
{
  v3 = v1;
  sub_29E4C784C(0, &qword_2A1A708C0, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v16[-v9];
  v11 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4C7740();
  sub_29E4FD080();
  v16[15] = 0;
  sub_29E4C5E10();
  sub_29E4C6EFC(qword_2A1A6F300, sub_29E4C5E10);
  sub_29E4FCF50();
  if (!v2)
  {
    v16[14] = 1;
    sub_29E4C78B0();
    sub_29E4FCF50();
    v12 = (v3 + *(type metadata accessor for ProfileSearch() + 24));
    v13 = *v12;
    v14 = v12[1];
    v16[13] = 2;
    sub_29E4FCF30();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29E4C649C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_29E4C5E10();
  v5 = v4;
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4C784C(0, &qword_2A184B7B8, MEMORY[0x29EDC9E80]);
  v32 = v8;
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ProfileSearch();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4C7740();
  sub_29E4FD070();
  if (v2)
  {
    return sub_29E4A1754(a1);
  }

  v28 = v15;
  v18 = v30;
  v17 = v31;
  v36 = 0;
  sub_29E4C6EFC(&qword_2A184B7C0, sub_29E4C5E10);
  v19 = v32;
  sub_29E4FCED0();
  (*(v17 + 32))(v28, v33, v5);
  v35 = 1;
  sub_29E4C7794();
  sub_29E4FCED0();
  v34 = 2;
  v20 = sub_29E4FCEB0();
  v33 = v21;
  v22 = v20;
  (*(v18 + 8))(v11, v19);
  v24 = v28;
  v23 = v29;
  v25 = &v28[*(v12 + 24)];
  v26 = v33;
  *v25 = v22;
  v25[1] = v26;
  sub_29E4C77E8(v24, v23);
  sub_29E4A1754(a1);
  return sub_29E4C6F44(v24);
}

unint64_t sub_29E4C6820()
{
  v1 = 0x74616E6974736564;
  if (*v0 != 1)
  {
    v1 = 0x657A696C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_29E4C6894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E4C6FA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E4C68C8(uint64_t a1)
{
  v2 = sub_29E4C7740();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4C6904(uint64_t a1)
{
  v2 = sub_29E4C7740();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4C6970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_29E4FC3C0();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = sub_29E4FB320();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v33 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProfileSearch();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  v12 = sub_29E4FB050();
  v14 = v13;
  sub_29E4C5E68();
  v15 = a1;
  sub_29E4FC5E0();
  v16 = &v11[*(v8 + 24)];
  *v16 = v12;
  v16[1] = v14;
  v17 = sub_29E4FAF70();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_29E4FAF60();
  sub_29E4C6EFC(&qword_2A1A70B78, type metadata accessor for ProfileSearch);
  v20 = sub_29E4FAF50();
  v22 = v21;

  v34 = sub_29E4C74CC();
  v30 = v23;
  type metadata accessor for ProfileSearchTileViewController(0);
  sub_29E4FB360();
  v29[1] = v24;
  (*(v31 + 104))(v33, *MEMORY[0x29EDC36D0], v32);
  v25 = v15;
  sub_29E4C7648(v20, v22);
  v26 = v35;
  sub_29E4FB3E0();

  sub_29E4FB3D0();
  sub_29E4C70D0();
  sub_29E4FB430();
  sub_29E4FB3C0();
  sub_29E4FB3F0();
  sub_29E4A1B94(v20, v22);
  sub_29E4C6F44(v11);
  v27 = sub_29E4FB460();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_29E4C6EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E4C6F44(uint64_t a1)
{
  v2 = type metadata accessor for ProfileSearch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E4C6FA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029E5024E0 == a2 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464)
  {

    return 2;
  }

  else
  {
    v5 = sub_29E4FCF80();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29E4C70D0()
{
  v37 = *MEMORY[0x29EDCA608];
  sub_29E4C769C(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E4FDE40;
  if (qword_2A1A70BD8 != -1)
  {
LABEL_29:
    swift_once();
  }

  *(inited + 32) = sub_29E4FB050();
  *(inited + 40) = v1;
  v2 = sub_29E4FB050();
  v4 = v3;
  inited = sub_29E4A7C24(1, 2, 1, inited);
  *(inited + 16) = 2;
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  v35 = MEMORY[0x29EDCA190];
  sub_29E4C3554(0, 2, 0);
  v5 = v35;
  sub_29E4C76EC();
  v31 = *(inited + 32);
  v33 = *(inited + 40);
  v6 = sub_29E4FCC40();
  v8 = *(v35 + 16);
  v7 = *(v35 + 24);
  if (v8 >= v7 >> 1)
  {
    v29 = v6;
    sub_29E4C3554((v7 > 1), v8 + 1, 1);
    v6 = v29;
    v5 = v35;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 8 * v8 + 32) = v6;
  v32 = *(inited + 48);
  v34 = *(inited + 56);
  v9 = sub_29E4FCC40();
  v36 = v5;
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v30 = v9;
    sub_29E4C3554((v10 > 1), v11 + 1, 1);
    v9 = v30;
    v5 = v36;
  }

  v13 = 0;
  *(v5 + 16) = v12;
  *(v5 + 8 * v11 + 32) = v9;
  v14 = MEMORY[0x29EDCA190];
  do
  {
    if (v13 >= *(v5 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v15 = v5 + 8 * v13;
    v16 = *(v15 + 32);
    v17 = *(v16 + 16);
    v18 = *(v14 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_25;
    }

    v20 = *(v15 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= *(v14 + 3) >> 1)
    {
      if (!*(v16 + 16))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v14 = sub_29E4A7C24(isUniquelyReferenced_nonNull_native, v22, 1, v14);
      if (!*(v16 + 16))
      {
LABEL_7:

        if (v17)
        {
          goto LABEL_26;
        }

        goto LABEL_8;
      }
    }

    if ((*(v14 + 3) >> 1) - *(v14 + 2) < v17)
    {
      goto LABEL_27;
    }

    swift_arrayInitWithCopy();

    if (v17)
    {
      v23 = *(v14 + 2);
      v24 = __OFADD__(v23, v17);
      v25 = v23 + v17;
      if (v24)
      {
        goto LABEL_28;
      }

      *(v14 + 2) = v25;
    }

LABEL_8:
    ++v13;
  }

  while (v12 != v13);

  v26 = sub_29E4D6AE0(v14);

  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t sub_29E4C74CC()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x800000029E5024C0;
  sub_29E4C5E10();
  v5 = sub_29E4FC5C0();
  v6 = [v5 identifier];

  sub_29E4FB230();
  sub_29E4C6EFC(&qword_2A1A70BC0, MEMORY[0x29EDB9C08]);
  v7 = sub_29E4FCF60();
  MEMORY[0x29ED8AD70](v7);

  (*(v1 + 8))(v4, v0);
  return v9[0];
}

uint64_t sub_29E4C7648(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}