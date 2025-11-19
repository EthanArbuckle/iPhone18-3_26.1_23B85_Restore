uint64_t sub_2170@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer;
  v2 = sub_21E8(&qword_EE800, &unk_C50E0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_21E8(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_2274()
{
  v2 = (v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_22E0(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_2404(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_2450(a1);
}

uint64_t sub_2450(uint64_t *a1)
{
  v6 = 0;
  v5[5] = a1;
  sub_8EC30();
  v1 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID;
  *OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID = 0;
  *(v1 + 8) = 0;
  sub_24F4(a1, v5);
  v4 = sub_BF288(v5);

  v6 = v4;
  sub_2560(a1);

  return v4;
}

uint64_t sub_24F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_2560(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_2600(uint64_t a1)
{
  v73 = a1;
  v81 = sub_34D4;
  v84 = sub_6014;
  v88 = sub_7BBC;
  v90 = sub_7B48;
  v92 = sub_7B48;
  v95 = sub_7C08;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v47 = 0;
  v65 = 0;
  v48 = sub_C23B4();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v52 = &v27 - v51;
  v53 = sub_21E8(&qword_EE800, &unk_C50E0);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v57 = &v27 - v56;
  v58 = (*(*(sub_21E8(&qword_EE808, &unk_C5BE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v59 = &v27 - v58;
  v60 = type metadata accessor for INSiriSocialConversation();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v64 = &v27 - v63;
  v109 = &v27 - v63;
  v80 = sub_C2384();
  v76 = *(v80 - 8);
  v77 = v80 - 8;
  v74 = v76;
  v75 = *(v76 + 64);
  v66 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v79 = &v27 - v66;
  v72 = sub_C3234();
  v70 = *(v72 - 8);
  v71 = v72 - 8;
  v68 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v73);
  v2 = &v27 - v68;
  v69 = &v27 - v68;
  v108 = v1;
  v107 = v3;
  v4 = sub_BF704();
  (*(v70 + 16))(v2, v4, v72);
  (*(v76 + 16))(v79, v73, v80);
  v78 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v86 = 7;
  v82 = swift_allocObject();
  (*(v76 + 32))(v82 + v78, v79, v80);

  v85 = 32;
  v5 = swift_allocObject();
  v6 = v82;
  v87 = v5;
  *(v5 + 16) = v81;
  *(v5 + 24) = v6;

  v99 = sub_C3224();
  v100 = sub_C3874();
  v83 = 17;
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v93 = swift_allocObject();
  *(v93 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v87;
  v89 = v7;
  *(v7 + 16) = v84;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v89;
  v96 = v9;
  *(v9 + 16) = v88;
  *(v9 + 24) = v10;
  v98 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v94 = sub_C3C64();
  v97 = v11;

  v12 = v91;
  v13 = v97;
  *v97 = v90;
  v13[1] = v12;

  v14 = v93;
  v15 = v97;
  v97[2] = v92;
  v15[3] = v14;

  v16 = v96;
  v17 = v97;
  v97[4] = v95;
  v17[5] = v16;
  sub_4E48();

  if (os_log_type_enabled(v99, v100))
  {
    v18 = v47;
    v40 = sub_C3954();
    v39 = sub_21E8(&qword_EE828, &qword_C5100);
    v41 = sub_5DD4(0);
    v42 = sub_5DD4(1);
    v43 = &v105;
    v105 = v40;
    v44 = &v104;
    v104 = v41;
    v45 = &v103;
    v103 = v42;
    sub_5E28(2, &v105);
    sub_5E28(1, v43);
    v101 = v90;
    v102 = v91;
    sub_5E3C(&v101, v43, v44, v45);
    v46 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v101 = v92;
      v102 = v93;
      sub_5E3C(&v101, &v105, &v104, &v103);
      v37 = 0;
      v101 = v95;
      v102 = v96;
      sub_5E3C(&v101, &v105, &v104, &v103);
      v36 = 0;
      _os_log_impl(&dword_0, v99, v100, "CannedDialogFlow on input %s", v40, 0xCu);
      sub_5E88(v41);
      sub_5E88(v42);
      sub_C3934();

      v38 = v36;
    }
  }

  else
  {
    v19 = v47;

    v38 = v19;
  }

  v20 = v57;
  v21 = v38;
  _objc_release(v99);
  (*(v70 + 8))(v69, v72);
  (*(v54 + 16))(v20, v67 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer, v53);
  v34 = sub_C2D84();
  v33 = v22;
  (*(v54 + 8))(v57, v53);
  sub_C2374();
  v34(v52);
  v35 = v21;
  if (v21)
  {
    v27 = v35;
    (*(v49 + 8))(v52, v48);

    (*(v61 + 56))(v59, 1, 1, v60);
  }

  else
  {
    (*(v49 + 8))(v52, v48);
    (*(v61 + 56))(v59, 0, 1, v60);
  }

  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_7C14(v59);
    v32 = 0;
  }

  else
  {
    sub_7D34(v59, v64);
    v28 = *v64;
    v31 = *(v64 + 1);

    v29 = (v67 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
    v30 = &v106;
    swift_beginAccess();
    v23 = v29;
    v24 = v31;
    v25 = v29[1];
    *v29 = v28;
    v23[1] = v24;

    swift_endAccess();

    sub_7EB4(v64);
    v32 = 1;
  }

  return v32 & 1;
}

uint64_t sub_3408()
{
  v3 = *(sub_C2384() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_34D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C2384();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_33A8(v3, a1);
}

uint64_t sub_3548()
{
  type metadata accessor for CannedDialogFlow();
  sub_800C();
  return sub_C1E04();
}

uint64_t sub_35C0(uint64_t a1)
{
  v2[49] = v1;
  v2[48] = a1;
  v2[36] = v2;
  v2[37] = 0;
  v2[38] = 0;
  v2[32] = 0;
  v2[33] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v2[47] = 0;
  v3 = sub_C3234();
  v2[50] = v3;
  v6 = *(v3 - 8);
  v2[51] = v6;
  v7 = *(v6 + 64);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[37] = v1;
  v4 = v2[36];

  return _swift_task_switch(sub_36E8, 0);
}

uint64_t sub_36E8()
{
  v48 = v0[49];
  v0[36] = v0;
  v1 = sub_59974();
  v47 = *v1;
  v42 = v1[1];
  v43 = *(v1 + 16);
  v2 = sub_599D4();
  v44 = *v2;
  v45 = v2[1];
  v46 = *(v2 + 16);
  v3 = sub_59A34();
  sub_B504(v47, v42, v43, v44, v45, v46, *v3, v3[1], v0 + 2, *(v3 + 16));

  sub_24F4(v48 + 16, (v0 + 11));

  v50 = v0[14];
  v49 = v0[15];
  sub_808C(v0 + 11, v50);
  (*(v49 + 40))(v50);
  v52 = v0[19];
  v51 = v0[20];
  sub_808C(v0 + 16, v52);
  v53 = (*(v51 + 72))(v52);
  sub_2560(v0 + 16);
  sub_2560(v0 + 11);
  if (v53)
  {
    sub_C1F24();
    v39 = *(v41 + 200);
    sub_808C((v41 + 168), *(v41 + 192));
    v40 = sub_C2274();
    *(v41 + 432) = v4;
    if (v4)
    {
      v34 = v4;
      v35 = *(v41 + 392);
      *(v41 + 256) = v40;
      *(v41 + 264) = v4;
      sub_2560((v41 + 168));
      v36 = (v35 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
      swift_beginAccess();
      v37 = *v36;
      v38 = v36[1];
      *(v41 + 440) = v38;

      swift_endAccess();
      if (v38)
      {
        *(v41 + 272) = v37;
        *(v41 + 280) = v38;

        v5 = sub_92590(v37, v38);
        v33 = sub_92614(v5, v6);
        *(v41 + 448) = v33;

        *(v41 + 376) = v33;
        v7 = swift_task_alloc();
        *(v41 + 456) = v7;
        *v7 = *(v41 + 288);
        v7[1] = sub_3EFC;

        return sub_502FC(v40, v34, v37, v38, v33);
      }
    }

    else
    {
      sub_2560((v41 + 168));
    }
  }

  else
  {
    v9 = *(v41 + 424);
    v29 = *(v41 + 400);
    v28 = *(v41 + 408);
    v10 = sub_BF704();
    (*(v28 + 16))(v9, v10, v29);
    oslog = sub_C3224();
    v30 = sub_C3874();
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v32 = sub_C3C64();
    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v25 = sub_5DD4(0);
      v26 = sub_5DD4(0);
      *(v41 + 344) = buf;
      *(v41 + 352) = v25;
      *(v41 + 360) = v26;
      sub_5E28(0, (v41 + 344));
      sub_5E28(0, (v41 + 344));
      *(v41 + 368) = v32;
      v27 = swift_task_alloc();
      v27[2] = v41 + 344;
      v27[3] = v41 + 352;
      v27[4] = v41 + 360;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, oslog, v30, "SocialHints feature flag is diabled. Not submitting intent to SiriSuggestions", buf, 2u);
      sub_5E88(v25);
      sub_5E88(v26);
      sub_C3934();
    }

    v22 = *(v41 + 424);
    v23 = *(v41 + 400);
    v21 = *(v41 + 408);
    _objc_release(oslog);
    (*(v21 + 8))(v22, v23);
  }

  v14 = *(v41 + 392);

  *(v41 + 464) = *(v14 + 56);

  v15 = (v14 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *(v41 + 472) = v17;

  swift_endAccess();
  v18 = sub_4800();
  v19 = v11;
  *(v41 + 480) = v11;
  v20 = sub_483C();
  *(v41 + 488) = v20;
  v12 = swift_task_alloc();
  *(v41 + 496) = v12;
  *v12 = *(v41 + 288);
  v12[1] = sub_41C0;
  v13 = *(v41 + 384);

  return sub_BDA8(v13, v16, v17, v41 + 16, v18, v19, v20);
}

uint64_t sub_3EFC()
{
  v4 = *v0;
  v1 = *(*v0 + 456);
  *(v4 + 288) = *v0;

  v2 = *(v4 + 288);

  return _swift_task_switch(sub_4014, 0);
}

uint64_t sub_4014()
{
  v1 = v0[56];
  v6 = v0[55];
  v7 = v0[54];
  v0[36] = v0;

  v8 = v0[49];

  v0[58] = *(v8 + 56);

  v9 = (v8 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  swift_beginAccess();
  v11 = *v9;
  v12 = v9[1];
  v0[59] = v12;

  swift_endAccess();
  v13 = sub_4800();
  v14 = v2;
  v0[60] = v2;
  v15 = sub_483C();
  v0[61] = v15;
  v3 = swift_task_alloc();
  v10[62] = v3;
  *v3 = v10[36];
  v3[1] = sub_41C0;
  v4 = v10[48];

  return sub_BDA8(v4, v11, v12, (v0 + 2), v13, v14, v15);
}

uint64_t sub_41C0()
{
  v14 = *v1;
  v12 = (*v1 + 16);
  v13 = *v1 + 288;
  v2 = *(*v1 + 496);
  *(v14 + 288) = *v1;
  *(v14 + 504) = v0;

  if (v0)
  {
    v7 = *v13;

    return _swift_task_switch(sub_43BC, 0);
  }

  else
  {
    v3 = v12[59];
    v8 = v12[58];
    v9 = v12[57];
    v10 = v12[56];

    v4 = v12[51];
    v11 = v12[50];

    v5 = *(*v13 + 8);

    return v5();
  }
}

uint64_t sub_43BC()
{
  v22 = v0[63];
  v1 = v0[61];
  v19 = v0[60];
  v20 = v0[59];
  v21 = v0[58];
  v2 = v0[52];
  v23 = v0[51];
  v24 = v0[50];
  v0[36] = v0;

  swift_errorRetain();
  v0[38] = v22;
  v3 = sub_BF704();
  (*(v23 + 16))(v2, v3, v24);
  v26 = sub_C3224();
  v25 = sub_C3884();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v27 = sub_C3C64();
  if (os_log_type_enabled(v26, v25))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v15 = sub_5DD4(0);
    v16 = sub_5DD4(0);
    *(v18 + 312) = buf;
    *(v18 + 320) = v15;
    *(v18 + 328) = v16;
    sub_5E28(0, (v18 + 312));
    sub_5E28(0, (v18 + 312));
    *(v18 + 336) = v27;
    v17 = swift_task_alloc();
    v17[2] = v18 + 312;
    v17[3] = v18 + 320;
    v17[4] = v18 + 328;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, v26, v25, "Error thrown from flow dialog", buf, 2u);
    sub_5E88(v15);
    sub_5E88(v16);
    sub_C3934();
  }

  v12 = *(v18 + 504);
  v9 = *(v18 + 416);
  v10 = *(v18 + 400);
  v11 = *(v18 + 384);
  v8 = *(v18 + 408);
  _objc_release(v26);
  (*(v8 + 8))(v9, v10);
  sub_C2054();

  v4 = *(v18 + 424);
  v13 = *(v18 + 416);

  v5 = *(*(v18 + 288) + 8);
  v6 = *(v18 + 288);

  return v5();
}

uint64_t sub_4800()
{
  v0 = sub_41A2C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_4860()
{
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer;
  v1 = sub_21E8(&qword_EE800, &unk_C50E0);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return sub_8224(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
}

uint64_t sub_48E8()
{
  v3 = sub_BF340();
  v2 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_cannedInputTransformer;
  v0 = sub_21E8(&qword_EE800, &unk_C50E0);
  (*(*(v0 - 8) + 8))(v3 + v2);
  sub_8224(v3 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16CannedDialogFlow_socialConversationDialogID);
  return v3;
}

uint64_t sub_4988()
{
  v0 = *sub_48E8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_4A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = async function pointer to Flow.onAsync(input:)[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_4AD8;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4AD8(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_4C2C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4CE4;

  return sub_35C0(a1);
}

uint64_t sub_4CE4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_4EE8()
{
  sub_8FF0();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_50EC()
{
  sub_8FF0();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_5130()
{
  sub_8FF0();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_5174()
{
  sub_8FF0();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5294()
{
  sub_90E8();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_5498()
{
  sub_90E8();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_54DC()
{
  sub_90E8();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_5520()
{
  sub_90E8();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5564()
{
  sub_9168();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_5768()
{
  sub_9168();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_57AC()
{
  sub_9168();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_57F0()
{
  sub_9168();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5834()
{
  sub_91E8();
  sub_9070();
  return sub_C3DF4();
}

uint64_t sub_5A38()
{
  sub_91E8();
  sub_9070();
  return sub_C3DE4();
}

uint64_t sub_5A7C()
{
  sub_91E8();
  sub_9070();
  return sub_C3DC4();
}

uint64_t sub_5AC0()
{
  sub_91E8();
  sub_9070();
  return sub_C3DD4();
}

uint64_t sub_5B90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_5D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5DA4@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_5DD4(uint64_t a1)
{
  if (a1)
  {
    return sub_C3954();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5E28(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_5E88(uint64_t a1)
{
  if (a1)
  {
    sub_C3944();
    sub_C3934();
  }
}

uint64_t sub_5EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin();
  v10 = v7 - v7[0];
  v4();
  v12 = sub_C3C14();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_5FD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6014()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_C2384();
  v1 = sub_6070();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_6070()
{
  v2 = qword_EE810;
  if (!qword_EE810)
  {
    sub_C2384();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EE810);
    return WitnessTable;
  }

  return v2;
}

void **sub_6124(void **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  v9 = sub_6198(v4, v5, a3);

  result = a1;
  v7 = *a1;
  *v7 = v9;
  *a1 = v7 + 1;
  return result;
}

uint64_t sub_6198(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_6320(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_9268(v12, v6);
      *a3 = v6 + 32;
    }

    sub_2560(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_9268(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_2560(v13);
  }

  return v11;
}

uint64_t sub_6320(uint64_t result, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v17 = result;
  v24 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      v16 = a2 ? a3 - a2 : 0;
      v15 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v15 < v16)
      {
        if (a2)
        {
          __src[0] = a5;
          __src[1] = a6 & (-bswap64(0xFFuLL) - 1);
          memcpy(a2, __src, v15);
          *(a2 + v15) = 0;
          *v17 = a2;
          v11 = 0;
          v12 = v15;
          v13 = 1;
          v14 = 0;
LABEL_24:
          __src[2] = v11;
          __src[3] = v12;
          v22 = v13 & 1;
          v23 = v14 & 1;
          return v11;
        }

        goto LABEL_26;
      }
    }

LABEL_11:
    v6 = sub_6628(a5, a6);
    *v17 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 0;
    v14 = 1;
    goto LABEL_24;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v10 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_19;
    }

    __break(1u);
  }

  result = sub_C3AD4();
  if (!result)
  {
    goto LABEL_27;
  }

  v10 = result;
LABEL_19:
  *v17 = v10;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_23:
    v11 = v9;
    v12 = a5 & 0xFFFFFFFFFFFFLL;
    v13 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_23;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_6628(uint64_t a1, uint64_t a2)
{
  v7 = sub_66E4(a1, a2);
  sub_21E8(&unk_EEAC0, &unk_C5970);
  inited = swift_initStackObject();
  v3 = sub_6EF4(inited, 1);
  *v4 = 0;
  sub_6F40();
  sub_6F74(v3);

  v8 = sub_731C(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_66E4(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_C35C4();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_783C();
  }

  v10 = sub_7334(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_C3BA4();
    __break(1u);
    return sub_783C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_7478(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_C3AD4();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_7478(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_C3AC4();
  if (v2)
  {
LABEL_29:
    sub_C3B84();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_C3B84();
    __break(1u);
  }

  sub_8224(v17);
  return v10;
}

uint64_t sub_6EF4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_6F74(uint64_t a1)
{
  v20 = sub_731C(a1);
  v2 = sub_731C(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_786C(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_C3BA4();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_79D8(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_C3B84();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_C3B84();
    __break(1u);
    goto LABEL_21;
  }

  sub_7478((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_60F0();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_7334(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_21E8(&unk_EEAC0, &unk_C5970);
    v5 = swift_allocObject();

    if (sub_92CC())
    {
      v3 = sub_92D8(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_7478(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_C3BA4();
    __break(1u);
  }

  result = sub_C3BA4();
  __break(1u);
  return result;
}

uint64_t sub_75C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_C35E4();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_C3B84();
    __break(1u);
  }

  v5 = sub_C3604();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_786C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_7334(v4, v6);
  if (v7)
  {
    sub_79E0((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_7478((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_79E0(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_C3BA4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_7B08(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_7B7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7C14(uint64_t a1)
{
  v8 = type metadata accessor for INSiriSocialConversation();
  if (!(*(*(v8 - 8) + 48))(a1, 1))
  {
    v1 = *(a1 + 8);

    v2 = *(a1 + 24);

    v4 = a1 + *(v8 + 24);
    v5 = sub_C1B54();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v4, 1))
    {
      (*(v6 + 8))(v4, v5);
    }
  }

  return a1;
}

char *sub_7D34(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v5 = *(type metadata accessor for INSiriSocialConversation() + 24);
  v7 = sub_C1B54();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

uint64_t sub_7EB4(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  v4 = *(type metadata accessor for INSiriSocialConversation() + 24);
  v6 = sub_C1B54();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v4, 1))
  {
    (*(v7 + 8))(a1 + v4, v6);
  }

  return a1;
}

uint64_t type metadata accessor for CannedDialogFlow()
{
  v1 = qword_EE870;
  if (!qword_EE870)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_800C()
{
  v2 = qword_EE830;
  if (!qword_EE830)
  {
    type metadata accessor for CannedDialogFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EE830);
    return WitnessTable;
  }

  return v2;
}

void *sub_808C(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_8128()
{
  v2 = qword_EE840;
  if (!qword_EE840)
  {
    sub_81B0(&unk_EEFB0, qword_C5110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EE840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_81B0(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t sub_8224(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_826C()
{
  v2 = sub_835C();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_835C()
{
  v4 = qword_EE880;
  if (!qword_EE880)
  {
    sub_C23B4();
    type metadata accessor for INSiriSocialConversation();
    v3 = sub_C2D94();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_EE880);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Base64EncodingOptions()
{
  v4 = qword_EE9F8;
  if (!qword_EE9F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EE9F8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_EEA00;
  if (!qword_EEA00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EEA00);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ReadingOptions()
{
  v4 = qword_EEA08;
  if (!qword_EEA08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EEA08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for WritingOptions()
{
  v4 = qword_EEA10;
  if (!qword_EEA10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_EEA10);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_8688()
{
  v2 = qword_EEA18;
  if (!qword_EEA18)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8720()
{
  v2 = qword_EEA20;
  if (!qword_EEA20)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_87B8()
{
  v2 = qword_EEA28;
  if (!qword_EEA28)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8850()
{
  v2 = qword_EEA30;
  if (!qword_EEA30)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_88E8()
{
  v2 = qword_EEA38;
  if (!qword_EEA38)
  {
    type metadata accessor for CompareOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8980()
{
  v2 = qword_EEA40;
  if (!qword_EEA40)
  {
    type metadata accessor for CompareOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8A18()
{
  v2 = qword_EEA48;
  if (!qword_EEA48)
  {
    type metadata accessor for Base64EncodingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8AB0()
{
  v2 = qword_EEA50;
  if (!qword_EEA50)
  {
    type metadata accessor for Base64EncodingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8B48()
{
  v2 = qword_EEA58;
  if (!qword_EEA58)
  {
    type metadata accessor for Base64EncodingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8BE0()
{
  v2 = qword_EEA60;
  if (!qword_EEA60)
  {
    type metadata accessor for Base64EncodingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8C78()
{
  v2 = qword_EEA68;
  if (!qword_EEA68)
  {
    type metadata accessor for CompareOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8D10()
{
  v2 = qword_EEA70;
  if (!qword_EEA70)
  {
    type metadata accessor for CompareOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8DA8()
{
  v2 = qword_EEA78;
  if (!qword_EEA78)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8E40()
{
  v2 = qword_EEA80;
  if (!qword_EEA80)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8ED8()
{
  v2 = qword_EEA88;
  if (!qword_EEA88)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8F70()
{
  v2 = qword_EEA90;
  if (!qword_EEA90)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8FF0()
{
  v2 = qword_EEA98;
  if (!qword_EEA98)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9070()
{
  v2 = qword_EEAA0;
  if (!qword_EEAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_90E8()
{
  v2 = qword_EEAA8;
  if (!qword_EEAA8)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9168()
{
  v2 = qword_EEAB0;
  if (!qword_EEAB0)
  {
    type metadata accessor for CompareOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_91E8()
{
  v2 = qword_EEAB8;
  if (!qword_EEAB8)
  {
    type metadata accessor for Base64EncodingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEAB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9268(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_9300@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer;
  v2 = sub_21E8(&qword_EEE30, &qword_C5980);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_9378(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_93C4(a1);
}

uint64_t sub_93C4(uint64_t *a1)
{
  v5 = 0;
  v4[5] = a1;
  sub_8ECA0();
  sub_24F4(a1, v4);
  v3 = sub_BF288(v4);

  v5 = v3;
  sub_2560(a1);

  return v3;
}

BOOL sub_9450(uint64_t a1)
{
  v65 = a1;
  v73 = sub_34D4;
  v76 = sub_6014;
  v80 = sub_7BBC;
  v82 = sub_7B48;
  v84 = sub_7B48;
  v87 = sub_7C08;
  v101 = 0;
  v100 = 0;
  v46 = 0;
  v57 = 0;
  v47 = sub_C23B4();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v51 = &v24 - v50;
  v52 = sub_21E8(&qword_EEE30, &qword_C5980);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v56 = &v24 - v55;
  v72 = sub_C2384();
  v68 = *(v72 - 8);
  v69 = v72 - 8;
  v66 = v68;
  v67 = *(v68 + 64);
  v58 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v71 = &v24 - v58;
  v64 = sub_C3234();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v65);
  v2 = &v24 - v60;
  v61 = &v24 - v60;
  v101 = v1;
  v100 = v3;
  v4 = sub_BF704();
  (*(v62 + 16))(v2, v4, v64);
  (*(v68 + 16))(v71, v65, v72);
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v78 = 7;
  v74 = swift_allocObject();
  (*(v68 + 32))(v74 + v70, v71, v72);

  v77 = 32;
  v5 = swift_allocObject();
  v6 = v74;
  v79 = v5;
  *(v5 + 16) = v73;
  *(v5 + 24) = v6;

  v91 = sub_C3224();
  v92 = sub_C3874();
  v75 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = 32;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v79;
  v81 = v7;
  *(v7 + 16) = v76;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v81;
  v88 = v9;
  *(v9 + 16) = v80;
  *(v9 + 24) = v10;
  v90 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v86 = sub_C3C64();
  v89 = v11;

  v12 = v83;
  v13 = v89;
  *v89 = v82;
  v13[1] = v12;

  v14 = v85;
  v15 = v89;
  v89[2] = v84;
  v15[3] = v14;

  v16 = v88;
  v17 = v89;
  v89[4] = v87;
  v17[5] = v16;
  sub_4E48();

  if (os_log_type_enabled(v91, v92))
  {
    v18 = v46;
    v39 = sub_C3954();
    v38 = sub_21E8(&qword_EE828, &qword_C5100);
    v40 = sub_5DD4(0);
    v41 = sub_5DD4(1);
    v42 = &v97;
    v97 = v39;
    v43 = &v96;
    v96 = v40;
    v44 = &v95;
    v95 = v41;
    sub_5E28(2, &v97);
    sub_5E28(1, v42);
    v93 = v82;
    v94 = v83;
    sub_5E3C(&v93, v42, v43, v44);
    v45 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v93 = v84;
      v94 = v85;
      sub_5E3C(&v93, &v97, &v96, &v95);
      v36 = 0;
      v93 = v87;
      v94 = v88;
      sub_5E3C(&v93, &v97, &v96, &v95);
      v35 = 0;
      _os_log_impl(&dword_0, v91, v92, "CannedDialogVoiceTriggerFlow on input %s", v39, 0xCu);
      sub_5E88(v40);
      sub_5E88(v41);
      sub_C3934();

      v37 = v35;
    }
  }

  else
  {
    v19 = v46;

    v37 = v19;
  }

  v20 = v56;
  v21 = v37;
  _objc_release(v91);
  (*(v62 + 8))(v61, v64);
  (*(v53 + 16))(v20, v59 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer, v52);
  v33 = sub_C2D84();
  v32 = v22;
  (*(v53 + 8))(v56, v52);
  sub_C2374();
  v33(v99, v51);
  v34 = v21;
  if (v21)
  {
    v27 = v34;

    (*(v48 + 8))(v51, v47);

    v30 = 0;
    v31 = 0;
  }

  else
  {
    v28 = v99[0];
    v29 = v99[1];

    (*(v48 + 8))(v51, v47);
    v30 = v28;
    v31 = v29;
  }

  v98[0] = v30;
  v98[1] = v31;
  v26 = v31 != 0;
  v25 = v26;
  sub_8224(v98);
  return v25;
}

uint64_t sub_9FD8()
{
  v3 = *(sub_C2384() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_A0A4()
{
  type metadata accessor for CannedDialogVoiceTriggerFlow();
  sub_B268();
  return sub_C1E04();
}

uint64_t sub_A11C(uint64_t a1)
{
  *(v2 + 264) = v1;
  *(v2 + 256) = a1;
  *(v2 + 200) = v2;
  *(v2 + 208) = 0;
  *(v2 + 392) = 0;
  *(v2 + 216) = 0;
  v3 = sub_C3234();
  *(v2 + 272) = v3;
  v11 = *(v3 - 8);
  *(v2 + 280) = v11;
  v4 = *(v11 + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  v5 = sub_C2064();
  *(v2 + 296) = v5;
  v12 = *(v5 - 8);
  *(v2 + 304) = v12;
  v6 = *(v12 + 64) + 15;
  *(v2 + 312) = swift_task_alloc();
  v7 = sub_C2D64();
  *(v2 + 320) = v7;
  v13 = *(v7 - 8);
  *(v2 + 328) = v13;
  v8 = *(v13 + 64) + 15;
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 208) = v1;
  v9 = *(v2 + 200);

  return _swift_task_switch(sub_A2F4, 0);
}

uint64_t sub_A2F4()
{
  v34 = *(v0 + 336);
  v33 = *(v0 + 328);
  v35 = *(v0 + 320);
  v31 = *(v0 + 264);
  *(v0 + 200) = v0;
  v1 = sub_59A94();
  v30 = *v1;
  v25 = v1[1];
  v26 = *(v1 + 16);
  v2 = sub_59AF4();
  v27 = *v2;
  v28 = v2[1];
  v29 = *(v2 + 16);
  v3 = sub_59B54();
  sub_B504(v30, v25, v26, v27, v28, v29, *v3, v3[1], (v0 + 16), *(v3 + 16));

  sub_BF388();

  v32 = *(v0 + 120);
  sub_808C((v0 + 88), *(v0 + 112));
  sub_C1F44();
  v36 = sub_C2D54();
  v37 = v4;
  (*(v33 + 8))(v34, v35);
  *(v0 + 168) = v36;
  *(v0 + 176) = v37;
  *(v0 + 184) = sub_C3564("voiceTrigger", 0xCuLL, 1);
  *(v0 + 192) = v5;
  sub_B2E8();
  v38 = sub_C39D4();
  sub_8224(v0 + 184);
  sub_8224(v0 + 168);
  sub_2560((v0 + 88));
  *(v0 + 392) = (v38 ^ 1) & 1;
  if ((v38 ^ 1))
  {
    v18 = v24[33];

    v24[43] = *(v18 + 56);

    v6 = sub_419CC();
    v19 = *v6;
    v20 = v6[1];
    v24[44] = v20;

    v21 = sub_4800();
    v22 = v7;
    v24[45] = v7;
    v23 = sub_483C();
    v24[46] = v23;
    v8 = swift_task_alloc();
    v24[47] = v8;
    *v8 = v24[25];
    v8[1] = sub_A734;
    v9 = v24[39];

    return sub_BDA8(v9, v19, v20, (v24 + 2), v21, v22, v23);
  }

  else
  {
    v15 = v24[32];
    sub_C1E94();
    v14 = v24[20];
    sub_808C(v24 + 16, v24[19]);
    sub_C1F14();
    sub_C1F04();
    sub_C1EA4();

    sub_2560(v24 + 16);
    sub_C2054();
    v11 = v24[42];
    v16 = v24[39];
    v17 = v24[36];

    v12 = *(v24[25] + 8);
    v13 = v24[25];

    return v12();
  }
}

uint64_t sub_A734()
{
  v11 = *v1;
  v2 = *(*v1 + 376);
  v11[25] = *v1;
  v12 = v11 + 25;
  v11[48] = v0;

  if (v0)
  {
    v6 = *v12;
    v5 = sub_A9FC;
  }

  else
  {
    v3 = v11[46];
    v8 = v11[45];
    v9 = v11[44];
    v10 = v11[43];

    v4 = *v12;
    v5 = sub_A8E0;
  }

  return _swift_task_switch(v5, 0);
}

uint64_t sub_A8E0()
{
  v8 = v0[39];
  v6 = v0[38];
  v7 = v0[37];
  v1 = v0[32];
  v0[25] = v0;
  (*(v6 + 16))(v1);
  (*(v6 + 8))(v8, v7);
  v2 = v0[42];
  v9 = v0[39];
  v10 = v0[36];

  v3 = *(v0[25] + 8);
  v4 = v0[25];

  return v3();
}

uint64_t sub_A9FC()
{
  v23 = v0[48];
  v1 = v0[46];
  v20 = v0[45];
  v21 = v0[44];
  v22 = v0[43];
  v2 = v0[36];
  v24 = v0[35];
  v25 = v0[34];
  v0[25] = v0;

  swift_errorRetain();
  v0[27] = v23;
  v3 = sub_BF704();
  (*(v24 + 16))(v2, v3, v25);
  v27 = sub_C3224();
  v26 = sub_C3884();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v28 = sub_C3C64();
  if (os_log_type_enabled(v27, v26))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v16 = sub_5DD4(0);
    v17 = sub_5DD4(0);
    *(v19 + 224) = buf;
    *(v19 + 232) = v16;
    *(v19 + 240) = v17;
    sub_5E28(0, (v19 + 224));
    sub_5E28(0, (v19 + 224));
    *(v19 + 248) = v28;
    v18 = swift_task_alloc();
    v18[2] = v19 + 224;
    v18[3] = v19 + 232;
    v18[4] = v19 + 240;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, v27, v26, "Error thrown from voice trigger flow dialog", buf, 2u);
    sub_5E88(v16);
    sub_5E88(v17);
    sub_C3934();
  }

  v12 = *(v19 + 384);
  v9 = *(v19 + 288);
  v10 = *(v19 + 272);
  v11 = *(v19 + 256);
  v8 = *(v19 + 280);
  _objc_release(v27);
  (*(v8 + 8))(v9, v10);
  sub_C2054();

  v4 = *(v19 + 336);
  v13 = *(v19 + 312);
  v14 = *(v19 + 288);

  v5 = *(*(v19 + 200) + 8);
  v6 = *(v19 + 200);

  return v5();
}

uint64_t sub_AE70()
{
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer;
  v1 = sub_21E8(&qword_EEE30, &qword_C5980);
  return (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_AEE8()
{
  v3 = sub_BF340();
  v2 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin28CannedDialogVoiceTriggerFlow_cannedInputTransformer;
  v0 = sub_21E8(&qword_EEE30, &qword_C5980);
  (*(*(v0 - 8) + 8))(v3 + v2);
  return v3;
}

uint64_t sub_AF74()
{
  v0 = *sub_AEE8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_B024(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_4CE4;

  return sub_A11C(a1);
}

uint64_t sub_B0DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_B174()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_B1B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for CannedDialogVoiceTriggerFlow()
{
  v1 = qword_EEE68;
  if (!qword_EEE68)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_B268()
{
  v2 = qword_EEE38;
  if (!qword_EEE38)
  {
    type metadata accessor for CannedDialogVoiceTriggerFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B2E8()
{
  v2 = qword_F0450;
  if (!qword_F0450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_B37C()
{
  v2 = sub_B460();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_B460()
{
  v4 = qword_EEE78;
  if (!qword_EEE78)
  {
    sub_C23B4();
    v3 = sub_C2D94();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_EEE78);
      return v1;
    }
  }

  return v4;
}

void *sub_B504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10)
{
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3;
  __src[3] = a4;
  __src[4] = a5;
  LOBYTE(__src[5]) = a6;
  __src[6] = a7;
  __src[7] = a8;
  LOBYTE(__src[8]) = a10;
  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_B588@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
  swift_beginAccess();
  sub_B5E4(v3, a1);
  return swift_endAccess();
}

void *sub_B5E4(const void *a1, void *a2)
{
  v6 = sub_C1B54();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_B70C(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(sub_21E8(&qword_EE820, &qword_C5A60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v5 = &v4 - v4;
  sub_B5E4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
  v7 = &v9;
  swift_beginAccess();
  sub_B7DC(v5, v6);
  swift_endAccess();
  return sub_BA04(v8);
}

void *sub_B7DC(const void *a1, void *a2)
{
  v7 = sub_C1B54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_21E8(&qword_EE820, &qword_C5A60);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_BA04(uint64_t a1)
{
  v3 = sub_C1B54();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_BB10()
{
  v2 = (v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_BB7C(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_BC60(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_BCAC(a1);
}

uint64_t sub_BCAC(uint64_t *a1)
{
  v9 = 0;
  v10 = a1;
  v5 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri;
  v2 = sub_C1B54();
  (*(*(v2 - 8) + 56))(v1 + v5, 1);
  v3 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  *v3 = 0;
  v3[1] = 0;
  sub_24F4(a1, v8);
  sub_BD6C(v8, (v1 + 16));
  sub_2560(a1);
  return v7;
}

uint64_t sub_BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 576) = v7;
  *(v8 + 568) = a7;
  *(v8 + 560) = a6;
  *(v8 + 552) = a5;
  *(v8 + 544) = a4;
  *(v8 + 536) = a3;
  *(v8 + 528) = a2;
  *(v8 + 520) = a1;
  *(v8 + 584) = *v7;
  *(v8 + 432) = v8;
  *(v8 + 288) = 0;
  *(v8 + 296) = 0;
  *(v8 + 440) = 0;
  *(v8 + 304) = 0;
  *(v8 + 312) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  *(v8 + 320) = 0;
  *(v8 + 328) = 0;
  *(v8 + 872) = 0;
  *(v8 + 368) = 0;
  *(v8 + 376) = 0;
  *(v8 + 464) = 0;
  *(v8 + 472) = 0;
  *(v8 + 480) = 0;
  v9 = sub_C2064();
  *(v8 + 592) = v9;
  v21 = *(v9 - 8);
  *(v8 + 600) = v21;
  v10 = *(v21 + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  v11 = sub_C2134();
  *(v8 + 616) = v11;
  v22 = *(v11 - 8);
  *(v8 + 624) = v22;
  v12 = *(v22 + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  v13 = sub_21E8(&qword_EEF88, &unk_C5A70);
  *(v8 + 640) = v13;
  v23 = *(*(v13 - 8) + 64);
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v14 = *(*(sub_21E8(&qword_EEF90, &qword_C5DF0) - 8) + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  v15 = sub_C1FE4();
  *(v8 + 672) = v15;
  v24 = *(v15 - 8);
  *(v8 + 680) = v24;
  v16 = *(v24 + 64) + 15;
  *(v8 + 688) = swift_task_alloc();
  v17 = sub_C3234();
  *(v8 + 696) = v17;
  v25 = *(v17 - 8);
  *(v8 + 704) = v25;
  v26 = *(v25 + 64);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  v18 = *(*(type metadata accessor for DialogServiceButton() - 8) + 64) + 15;
  *(v8 + 728) = swift_task_alloc();
  v27 = *(*(sub_21E8(&qword_EEF98, &qword_C5A80) - 8) + 64);
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 288) = a2;
  *(v8 + 296) = a3;
  *(v8 + 440) = a4;
  *(v8 + 304) = a5;
  *(v8 + 312) = a6;
  *(v8 + 448) = a7;
  *(v8 + 456) = v7;
  v19 = *(v8 + 432);

  return _swift_task_switch(sub_C20C, 0);
}

uint64_t sub_C20C()
{
  v1 = v0[72];
  v2 = v0[67];
  v3 = v0[66];
  v0[54] = v0;
  v106 = sub_13690(v3, v2);
  v107 = v4;
  v0[94] = v106;
  v0[95] = v4;
  v0[40] = v106;
  v0[41] = v4;
  v0[42] = v106;
  v0[43] = v4;
  v5 = sub_41A8C();
  v108 = *v5;
  v109 = v5[1];

  sub_146A0(v0 + 42, v0 + 32);
  v0[34] = v108;
  v0[35] = v109;
  if (!v0[33])
  {
    if (!*(v105 + 280))
    {
      sub_8224(v105 + 256);

      goto LABEL_11;
    }

LABEL_9:
    sub_146E0(v105 + 256);

    goto LABEL_14;
  }

  sub_146A0((v105 + 256), (v105 + 384));
  if (!*(v105 + 280))
  {
    sub_8224(v105 + 384);
    goto LABEL_9;
  }

  *(v105 + 400) = *(v105 + 384);
  *(v105 + 416) = *(v105 + 272);
  v6 = *(v105 + 400);
  v7 = *(v105 + 408);
  v8 = *(v105 + 416);
  v9 = *(v105 + 424);
  v104 = sub_C3574();
  sub_8224(v105 + 416);
  sub_8224(v105 + 400);
  sub_8224(v105 + 256);

  if ((v104 & 1) == 0)
  {
LABEL_14:
    v92 = *(v105 + 728);
    v13 = *(v105 + 576);
    v14 = sub_41AEC();
    v90 = *v14;
    v91 = v14[1];

    sub_19BC4(v106, v107, v90, v91, v92);

    v93 = *v92;
    v94 = *(v92 + 1);

    *(v105 + 352) = v93;
    *(v105 + 360) = v94;
    v89 = *(v105 + 360) != 0;
    v83 = *(v105 + 576);
    sub_8224(v105 + 352);
    *(v105 + 872) = v89;
    sub_24F4(v83 + 16, v105 + 16);
    v85 = *(v105 + 40);
    v84 = *(v105 + 48);
    sub_808C((v105 + 16), v85);
    (*(v84 + 40))(v85);
    v87 = *(v105 + 80);
    v86 = *(v105 + 88);
    sub_808C((v105 + 56), v87);
    v88 = (*(v86 + 16))(v87);
    sub_2560((v105 + 56));
    sub_2560((v105 + 16));
    if (v88)
    {
      v15 = *(v105 + 720);
      v79 = *(v105 + 696);
      v78 = *(v105 + 704);
      v16 = sub_BF704();
      v17 = *(v78 + 16);
      *(v105 + 784) = v17;
      *(v105 + 792) = (v78 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v17(v15, v16, v79);
      oslog = sub_C3224();
      v80 = sub_C3874();
      *(v105 + 800) = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v82 = sub_C3C64();
      if (os_log_type_enabled(oslog, v80))
      {
        buf = sub_C3954();
        sub_21E8(&qword_EE828, &qword_C5100);
        v75 = sub_5DD4(0);
        v76 = sub_5DD4(0);
        *(v105 + 488) = buf;
        *(v105 + 496) = v75;
        *(v105 + 504) = v76;
        sub_5E28(0, (v105 + 488));
        sub_5E28(0, (v105 + 488));
        *(v105 + 512) = v82;
        v77 = swift_task_alloc();
        v77[2] = v105 + 488;
        v77[3] = v105 + 496;
        v77[4] = v105 + 504;
        sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        sub_C3654();

        _os_log_impl(&dword_0, oslog, v80, "OutputPatternDialog RF enabled", buf, 2u);
        sub_5E88(v75);
        sub_5E88(v76);
        sub_C3934();
      }

      v72 = *(v105 + 720);
      v73 = *(v105 + 696);
      v71 = *(v105 + 704);
      _objc_release(oslog);
      v18 = *(v71 + 8);
      *(v105 + 808) = v18;
      *(v105 + 816) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v72, v73);
      v19 = swift_task_alloc();
      *(v105 + 824) = v19;
      *v19 = *(v105 + 432);
      v19[1] = sub_D5D0;
      v20 = *(v105 + 576);
      v21 = *(v105 + 568);
      v22 = *(v105 + 520);

      return sub_11DF0(v22, v106, v107, v21);
    }

    else
    {
      v66 = *(v105 + 656);
      v70 = *(v105 + 648);
      v69 = *(v105 + 640);
      v23 = *(v105 + 576);
      v67 = sub_148B4(v66, *(v105 + 752), *(v105 + 760), *(v105 + 544), *(v105 + 552), *(v105 + 560));
      v68 = v24;
      *(v105 + 840) = v24;
      *(v105 + 368) = v67;
      *(v105 + 376) = v24;
      sub_19F8C(v66, v70);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = *(v105 + 760);
        v44 = *(v105 + 728);
        v43 = *(v105 + 656);
        v31 = *(v105 + 544);
        v41 = *(v105 + 520);
        v42 = **(v105 + 648);
        *(v105 + 464) = v42;
        v39 = *(v31 + 48);
        v37 = *(v31 + 56);
        v38 = *(v31 + 64);
        swift_errorRetain();
        v40 = swift_task_alloc();
        *(v40 + 16) = v42;
        sub_5A43C(v39, v37, v38, 1, sub_1A060, v40, &type metadata for () + 8, v36);

        sub_C2054();

        sub_1A068(v43);

        sub_1A104(v44);

        v32 = *(v105 + 744);
        v46 = *(v105 + 736);
        v47 = *(v105 + 728);
        v48 = *(v105 + 720);
        v49 = *(v105 + 712);
        v50 = *(v105 + 688);
        v51 = *(v105 + 664);
        v52 = *(v105 + 656);
        v53 = *(v105 + 648);
        v54 = *(v105 + 632);
        v55 = *(v105 + 608);

        v33 = *(*(v105 + 432) + 8);
        v34 = *(v105 + 432);

        return v33();
      }

      else
      {
        v59 = *(v105 + 760);
        v58 = *(v105 + 752);
        v25 = *(v105 + 648);
        v60 = *(v105 + 632);
        v26 = *(v105 + 616);
        v57 = *(v105 + 576);
        v61 = *(v105 + 568);
        v56 = *(v105 + 544);
        v62 = *(v105 + 584);
        (*(*(v105 + 624) + 32))();
        *(v105 + 472) = v60;
        v63 = *(v56 + 24);
        v64 = *(v56 + 32);
        v65 = *(v56 + 40);

        v27 = swift_task_alloc();
        *(v105 + 848) = v27;
        v27[2] = v57;
        v27[3] = v58;
        v27[4] = v59;
        v27[5] = v67;
        v27[6] = v68;
        v27[7] = v60;
        v27[8] = v61;
        v27[9] = v62;
        v28 = swift_task_alloc();
        *(v105 + 856) = v28;
        *v28 = *(v105 + 432);
        v28[1] = sub_E640;
        v29 = *(v105 + 608);
        v30 = *(v105 + 592);

        return sub_59BB4(v29, v63, v64, v65, 1, &unk_C5A90, v27, v30);
      }
    }
  }

LABEL_11:
  v100 = *(v105 + 744);
  v101 = *(v105 + 736);
  v96 = *(v105 + 576);
  v95 = *(v105 + 568);
  type metadata accessor for CannedDialogHelper();
  sub_1A3BC(0, v95, v100);
  sub_24F4(v96 + 16, v105 + 136);
  v98 = *(v105 + 160);
  v97 = *(v105 + 168);
  sub_808C((v105 + 136), v98);
  (*(v97 + 16))(v98);
  v102 = *(v105 + 200);
  v103 = *(v105 + 208);
  sub_808C((v105 + 176), v102);
  sub_1CA74();
  sub_C3C64();
  v99 = v10;
  sub_1CAD8();
  *v99 = sub_EE34();
  sub_4E48();
  sub_1CB3C(v100, v101);
  *(v105 + 240) = sub_C2414();
  *(v105 + 248) = &protocol witness table for AceOutput;
  sub_1CC64((v105 + 216));
  sub_C23F4();
  v11 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v12 = swift_task_alloc();
  *(v105 + 768) = v12;
  *v12 = *(v105 + 432);
  v12[1] = sub_D2A0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v105 + 216, v102, v103);
}

uint64_t sub_D2A0()
{
  v9 = *v1;
  v7 = (*v1 + 432);
  v8 = (*v1 + 216);
  v2 = *(*v1 + 768);
  *(v9 + 432) = *v1;
  *(v9 + 776) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_EA50;
  }

  else
  {
    sub_2560(v8);
    v3 = *v7;
    v4 = sub_D41C;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_D41C()
{
  v7 = v0[95];
  v6 = v0[93];
  v5 = v0[65];
  v0[54] = v0;
  sub_2560(v0 + 22);
  sub_2560(v0 + 17);
  sub_C2054();
  sub_1CCE4(v6);

  v1 = v0[93];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[86];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[79];
  v17 = v0[76];

  v2 = *(v0[54] + 8);
  v3 = v0[54];

  return v2();
}

uint64_t sub_D5D0()
{
  v8 = *v1;
  v7 = (v8 + 432);
  v2 = *(*v1 + 824);
  *(v8 + 432) = *v1;
  *(v8 + 832) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_D8CC;
  }

  else
  {
    v3 = *v7;
    v4 = sub_D73C;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_D73C()
{
  v6 = v0[95];
  v1 = v0[91];
  v0[54] = v0;
  sub_1A104(v1);

  v2 = v0[93];
  v7 = v0[92];
  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[86];
  v12 = v0[83];
  v13 = v0[82];
  v14 = v0[81];
  v15 = v0[79];
  v16 = v0[76];

  v3 = *(v0[54] + 8);
  v4 = v0[54];

  return v3();
}

uint64_t sub_D8CC()
{
  v92 = v0;
  v77 = v0[104];
  v84 = v0[100];
  v75 = v0[99];
  v76 = v0[98];
  v1 = v0[89];
  v74 = v0[87];
  v0[54] = v0;
  swift_errorRetain();
  v0[60] = v77;
  v2 = sub_BF704();
  v76(v1, v2, v74);
  swift_errorRetain();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  v85 = sub_C3224();
  v86 = sub_C3884();
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1A354;
  *(v79 + 24) = v78;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_7BBC;
  *(v82 + 24) = v79;
  sub_C3C64();
  v83 = v3;

  *v83 = sub_7B48;
  v83[1] = v80;

  v83[2] = sub_7B48;
  v83[3] = v81;

  v83[4] = sub_7C08;
  v83[5] = v82;
  sub_4E48();

  if (os_log_type_enabled(v85, v86))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v71 = sub_5DD4(0);
    v72 = sub_5DD4(1);
    v87 = buf;
    v88 = v71;
    v89 = v72;
    sub_5E28(2, &v87);
    sub_5E28(1, &v87);
    v90 = sub_7B48;
    v91 = v80;
    sub_5E3C(&v90, &v87, &v88, &v89);
    v90 = sub_7B48;
    v91 = v81;
    sub_5E3C(&v90, &v87, &v88, &v89);
    v90 = sub_7C08;
    v91 = v82;
    sub_5E3C(&v90, &v87, &v88, &v89);
    _os_log_impl(&dword_0, v85, v86, "Could not output pattern dialog %s", buf, 0xCu);
    sub_5E88(v71);
    sub_5E88(v72);
    sub_C3934();
  }

  else
  {
  }

  v63 = v73[104];
  v49 = v73[102];
  v50 = v73[101];
  v57 = v73[95];
  v56 = v73[94];
  v47 = v73[89];
  v48 = v73[87];
  v61 = v73[86];
  v52 = v73[84];
  v60 = v73[83];
  v59 = v73[70];
  v58 = v73[69];
  v51 = v73[85];
  _objc_release(v85);
  v50(v47, v48);
  sub_C1E94();
  v62 = v73[16];
  sub_808C(v73 + 12, v73[15]);
  sub_C1F14();
  (*(v51 + 104))(v61, enum case for ActivityType.failed(_:), v52);

  v53 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v55 = sub_C1EB4();
  v54 = *(v55 - 8);
  (*(v54 + 104))(v60, v53);
  (*(v54 + 56))(v60, 0, 1, v55);

  swift_errorRetain();
  v4 = swift_allocObject();
  v4[2] = v56;
  v4[3] = v57;
  v4[4] = v63;
  sub_C1EE4();
  sub_C1EA4();

  sub_2560(v73 + 12);

  v64 = v73[82];
  v68 = v73[81];
  v67 = v73[80];
  v5 = v73[72];
  v65 = sub_148B4(v64, v73[94], v73[95], v73[68], v73[69], v73[70]);
  v66 = v6;
  v73[105] = v6;
  v73[46] = v65;
  v73[47] = v6;
  sub_19F8C(v64, v68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v73[95];
    v25 = v73[91];
    v24 = v73[82];
    v14 = v73[68];
    v22 = v73[65];
    v23 = *v73[81];
    v73[58] = v23;
    v20 = *(v14 + 48);
    v18 = *(v14 + 56);
    v19 = *(v14 + 64);
    swift_errorRetain();
    v21 = swift_task_alloc();
    *(v21 + 16) = v23;
    sub_5A43C(v20, v18, v19, 1, sub_1A060, v21, &type metadata for () + 8, v69);

    sub_C2054();

    sub_1A068(v24);

    sub_1A104(v25);

    v15 = v73[93];
    v27 = v73[92];
    v28 = v73[91];
    v29 = v73[90];
    v30 = v73[89];
    v31 = v73[86];
    v32 = v73[83];
    v33 = v73[82];
    v34 = v73[81];
    v35 = v73[79];
    v36 = v73[76];

    v16 = *(v73[54] + 8);
    v17 = v73[54];

    return v16();
  }

  else
  {
    v40 = v73[95];
    v39 = v73[94];
    v7 = v73[81];
    v41 = v73[79];
    v8 = v73[77];
    v38 = v73[72];
    v42 = v73[71];
    v37 = v73[68];
    v43 = v73[73];
    (*(v73[78] + 32))();
    v73[59] = v41;
    v44 = *(v37 + 24);
    v45 = *(v37 + 32);
    v46 = *(v37 + 40);

    v9 = swift_task_alloc();
    v73[106] = v9;
    v9[2] = v38;
    v9[3] = v39;
    v9[4] = v40;
    v9[5] = v65;
    v9[6] = v66;
    v9[7] = v41;
    v9[8] = v42;
    v9[9] = v43;
    v10 = swift_task_alloc();
    v73[107] = v10;
    *v10 = v73[54];
    v10[1] = sub_E640;
    v11 = v73[76];
    v12 = v73[74];

    return sub_59BB4(v11, v44, v45, v46, 1, &unk_C5A90, v9, v12);
  }
}

uint64_t sub_E640()
{
  v14 = *v1;
  v12 = (*v1 + 16);
  v13 = (v14 + 432);
  v2 = *(*v1 + 856);
  *(v14 + 432) = *v1;
  *(v14 + 864) = v0;

  if (v0)
  {
    v6 = *v13;
    v5 = sub_EBFC;
  }

  else
  {
    v3 = v12[104];
    v10 = v12[103];
    v9 = v12[93];
    v8 = v12[70];
    v11 = v12[69];

    v4 = *v13;
    v5 = sub_E800;
  }

  return _swift_task_switch(v5, 0);
}

uint64_t sub_E800()
{
  v13 = v0[105];
  v15 = v0[95];
  v14 = v0[91];
  v12 = v0[82];
  v10 = v0[79];
  v9 = v0[78];
  v11 = v0[77];
  v8 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v1 = v0[65];
  v0[54] = v0;
  (*(v6 + 16))(v1);
  (*(v6 + 8))(v8, v7);
  (*(v9 + 8))(v10, v11);
  sub_1A068(v12);

  sub_1A104(v14);

  v2 = v0[93];
  v16 = v0[92];
  v17 = v0[91];
  v18 = v0[90];
  v19 = v0[89];
  v20 = v0[86];
  v21 = v0[83];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[79];
  v25 = v0[76];

  v3 = *(v0[54] + 8);
  v4 = v0[54];

  return v3();
}

uint64_t sub_EA50()
{
  v7 = v0[95];
  v6 = v0[93];
  v0[54] = v0;
  sub_2560(v0 + 27);
  sub_2560(v0 + 22);
  sub_2560(v0 + 17);
  sub_1CCE4(v6);

  v1 = v0[97];
  v2 = v0[93];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[86];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[79];
  v17 = v0[76];

  v3 = *(v0[54] + 8);
  v4 = v0[54];

  return v3();
}

uint64_t sub_EBFC()
{
  v1 = v0[106];
  v13 = v0[105];
  v15 = v0[95];
  v14 = v0[91];
  v12 = v0[82];
  v10 = v0[79];
  v9 = v0[78];
  v11 = v0[77];
  v7 = v0[72];
  v8 = v0[71];
  v0[54] = v0;

  (*(v9 + 8))(v10, v11);
  sub_1A068(v12);

  sub_1A104(v14);

  v2 = v0[108];
  v3 = v0[93];
  v16 = v0[92];
  v17 = v0[91];
  v18 = v0[90];
  v19 = v0[89];
  v20 = v0[86];
  v21 = v0[83];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[79];
  v25 = v0[76];

  v4 = *(v0[54] + 8);
  v5 = v0[54];

  return v4();
}

uint64_t sub_EEA4(uint64_t *a1)
{
  v2 = *a1;

  sub_C1EC4();

  v4 = *a1;

  swift_getErrorValue();
  sub_C3C94();
  sub_C1ED4();
}

uint64_t sub_EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 512) = v26;
  *(v8 + 504) = a8;
  *(v8 + 496) = a7;
  *(v8 + 488) = a6;
  *(v8 + 480) = a5;
  *(v8 + 472) = a4;
  *(v8 + 464) = a3;
  *(v8 + 456) = a2;
  *(v8 + 448) = a1;
  *(v8 + 392) = v8;
  *(v8 + 400) = 0;
  *(v8 + 360) = 0;
  *(v8 + 368) = 0;
  *(v8 + 376) = 0;
  *(v8 + 384) = 0;
  *(v8 + 408) = 0;
  *(v8 + 416) = 0;
  *(v8 + 424) = 0;
  *(v8 + 632) = 0;
  *(v8 + 432) = 0;
  v9 = sub_C2414();
  *(v8 + 520) = v9;
  v14 = *(v9 - 8);
  *(v8 + 528) = v14;
  v10 = *(v14 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v11 = sub_C3234();
  *(v8 + 544) = v11;
  v15 = *(v11 - 8);
  *(v8 + 552) = v15;
  v16 = *(v15 + 64);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  v17 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  *(v8 + 576) = v17;
  *(v8 + 584) = *(v17 + 64);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 400) = a2;
  *(v8 + 360) = a3;
  *(v8 + 368) = a4;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  v12 = *(v8 + 392);

  return _swift_task_switch(sub_F230, 0);
}

uint64_t sub_F230()
{
  v110 = v0;
  v96 = *(v0 + 496);
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  v98 = *(v0 + 456);
  *(v0 + 392) = v0;
  v95 = sub_18164(v4, v3, v2, v1, 0, 0);
  *(v0 + 608) = v95;
  *(v0 + 424) = v95;
  v97 = sub_C2104(0);
  *(v0 + 633) = v97;
  *(v0 + 632) = v97;
  sub_1CA74();
  *(v0 + 432) = sub_C3324();
  v5 = sub_C20F4();
  v99 = sub_17A44(v5, v6);

  if (v99)
  {
    sub_1CEB0();
    v94[55] = sub_EE34();
    sub_21E8(&qword_EF248, &unk_C5BC0);
    sub_C3724();
  }

  v68 = v94[75];
  v69 = v94[71];
  v71 = v94[68];
  v73 = v94[64];
  v74 = v94[63];
  v70 = v94[69];
  type metadata accessor for CannedDialogHelper();
  sub_1A3BC(v97, v74, v68);
  v7 = sub_BF704();
  v72 = *(v70 + 16);
  v72(v69, v7, v71);
  v76 = swift_allocObject();
  *(v76 + 16) = v73;

  v75 = swift_allocObject();
  *(v75 + 16) = v74;

  v80 = swift_allocObject();
  *(v80 + 16) = sub_1F0A8;
  *(v80 + 24) = v75;

  oslog = sub_C3224();
  v93 = sub_C3874();
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1F060;
  *(v77 + 24) = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1F278;
  *(v78 + 24) = v77;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_7BBC;
  *(v84 + 24) = v78;
  v85 = swift_allocObject();
  *(v85 + 16) = 32;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_11730;
  *(v79 + 24) = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_7BBC;
  *(v87 + 24) = v79;
  v88 = swift_allocObject();
  *(v88 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1F0F0;
  *(v81 + 24) = v80;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_7BBC;
  *(v90 + 24) = v81;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v91 = v8;

  *v91 = sub_7B48;
  v91[1] = v82;

  v91[2] = sub_7B48;
  v91[3] = v83;

  v91[4] = sub_7C08;
  v91[5] = v84;

  v91[6] = sub_7B48;
  v91[7] = v85;

  v91[8] = sub_7B48;
  v91[9] = v86;

  v91[10] = sub_7C08;
  v91[11] = v87;

  v91[12] = sub_7B48;
  v91[13] = v88;

  v91[14] = sub_7B48;
  v91[15] = v89;

  v91[16] = sub_7C08;
  v91[17] = v90;
  sub_4E48();

  if (os_log_type_enabled(oslog, v93))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v66 = sub_5DD4(0);
    v67 = sub_5DD4(3);
    v105 = buf;
    v106 = v66;
    v107 = v67;
    sub_5E28(2, &v105);
    sub_5E28(3, &v105);
    v108 = sub_7B48;
    v109 = v82;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7B48;
    v109 = v83;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7C08;
    v109 = v84;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7B48;
    v109 = v85;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7B48;
    v109 = v86;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7C08;
    v109 = v87;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7B48;
    v109 = v88;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7B48;
    v109 = v89;
    sub_5E3C(&v108, &v105, &v106, &v107);
    v108 = sub_7C08;
    v109 = v90;
    sub_5E3C(&v108, &v105, &v106, &v107);
    _os_log_impl(&dword_0, oslog, v93, "%s.%s nextTurns: %s", buf, 0x20u);
    sub_5E88(v66);
    sub_5E88(v67);
    sub_C3934();
  }

  else
  {
  }

  v42 = v94[75];
  v46 = v94[74];
  v44 = v94[73];
  v38 = v94[71];
  v9 = v94[70];
  v40 = v94[68];
  v41 = v94[64];
  v43 = v94[72];
  v37 = v94[69];
  _objc_release(oslog);
  v39 = *(v37 + 8);
  v39(v38, v40);
  v10 = sub_BF704();
  v72(v9, v10, v40);
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  sub_1CB3C(v42, v46);
  v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v51 = swift_allocObject();
  sub_1F620(v46, (v51 + v45));
  log = sub_C3224();
  v64 = sub_C3874();
  v53 = swift_allocObject();
  *(v53 + 16) = 32;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1F060;
  *(v48 + 24) = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1F278;
  *(v49 + 24) = v48;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_7BBC;
  *(v55 + 24) = v49;
  v56 = swift_allocObject();
  *(v56 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_11730;
  *(v50 + 24) = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_7BBC;
  *(v58 + 24) = v50;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1F748;
  *(v52 + 24) = v51;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_7BBC;
  *(v61 + 24) = v52;
  sub_C3C64();
  v62 = v11;

  *v62 = sub_7B48;
  v62[1] = v53;

  v62[2] = sub_7B48;
  v62[3] = v54;

  v62[4] = sub_7C08;
  v62[5] = v55;

  v62[6] = sub_7B48;
  v62[7] = v56;

  v62[8] = sub_7B48;
  v62[9] = v57;

  v62[10] = sub_7C08;
  v62[11] = v58;

  v62[12] = sub_7B48;
  v62[13] = v59;

  v62[14] = sub_7B48;
  v62[15] = v60;

  v62[16] = sub_7C08;
  v62[17] = v61;
  sub_4E48();

  if (os_log_type_enabled(log, v64))
  {
    v34 = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v35 = sub_5DD4(0);
    v36 = sub_5DD4(3);
    v100 = v34;
    v101 = v35;
    v102 = v36;
    sub_5E28(2, &v100);
    sub_5E28(3, &v100);
    v103 = sub_7B48;
    v104 = v53;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v54;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7C08;
    v104 = v55;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v56;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v57;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7C08;
    v104 = v58;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v59;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7B48;
    v104 = v60;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7C08;
    v104 = v61;
    sub_5E3C(&v103, &v100, &v101, &v102);
    _os_log_impl(&dword_0, log, v64, "%s.%s NL context update: %s", v34, 0x20u);
    sub_5E88(v35);
    sub_5E88(v36);
    sub_C3934();
  }

  else
  {
  }

  v24 = v94[75];
  v16 = v94[70];
  v17 = v94[68];
  v30 = v94[67];
  v31 = v94[65];
  v23 = v94[62];
  v26 = v94[57];
  v29 = v94[66];
  _objc_release(log);
  v39(v16, v17);
  sub_24F4(v26 + 16, (v94 + 2));
  v19 = v94[5];
  v18 = v94[6];
  sub_808C(v94 + 2, v19);
  (*(v18 + 8))(v19);
  sub_24F4(v26 + 16, (v94 + 12));
  v21 = v94[15];
  v20 = v94[16];
  sub_808C(v94 + 12, v21);
  (*(v20 + 8))(v21);
  v22 = v94[21];
  sub_808C(v94 + 17, v94[20]);
  sub_C1F54();
  v25 = v94[54];

  v94[22] = 0;
  v94[23] = 0;
  v94[24] = 0;
  v94[25] = 0;
  v94[26] = 0;
  sub_C2034();
  sub_1FA80(v94 + 22);

  sub_2560(v94 + 17);
  sub_2560(v94 + 12);
  sub_2560(v94 + 7);
  sub_2560(v94 + 2);
  sub_24F4(v26 + 16, (v94 + 27));
  v28 = v94[30];
  v27 = v94[31];
  sub_808C(v94 + 27, v28);
  (*(v27 + 16))(v28);
  v32 = v94[35];
  v33 = v94[36];
  sub_808C(v94 + 32, v32);
  v94[40] = v31;
  v94[41] = &protocol witness table for AceOutput;
  v12 = sub_1CC64(v94 + 37);
  (*(v29 + 16))(v12, v30, v31);
  v13 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v14 = swift_task_alloc();
  v94[77] = v14;
  *v14 = v94[49];
  v14[1] = sub_1111C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v94 + 37, v32, v33);
}

uint64_t sub_1111C()
{
  v9 = *v1;
  v7 = (*v1 + 392);
  v8 = (*v1 + 296);
  v2 = *(*v1 + 616);
  *(v9 + 392) = *v1;
  *(v9 + 624) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_115D0;
  }

  else
  {
    sub_2560(v8);
    v3 = *v7;
    v4 = sub_11298;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_11298()
{
  v26 = v0[59];
  v25 = v0[58];
  v1 = v0[57];
  v0[49] = v0;
  sub_2560(v0 + 32);
  sub_2560(v0 + 27);
  if ((sub_1340C(v25, v26) & 1) == 0)
  {
    v23 = (*(v24 + 456) + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    swift_beginAccess();
    v2 = v23[1];
    *v23 = 0;
    v23[1] = 0;

    swift_endAccess();
  }

  if (*(v24 + 633))
  {
    v22 = *(v24 + 608);
    v21 = *(v24 + 600);
    v19 = *(v24 + 536);
    v20 = *(v24 + 520);
    v3 = *(v24 + 448);
    v18 = *(v24 + 528);
    sub_C2044();
    (*(v18 + 8))(v19, v20);
    sub_1CCE4(v21);
  }

  else
  {
    v17 = *(v24 + 608);
    v16 = *(v24 + 600);
    v14 = *(v24 + 536);
    v15 = *(v24 + 520);
    v4 = *(v24 + 448);
    v13 = *(v24 + 528);
    sub_C2054();
    (*(v13 + 8))(v14, v15);
    sub_1CCE4(v16);
  }

  sub_1D7C8((v24 + 432));

  v5 = *(v24 + 600);
  v9 = *(v24 + 592);
  v10 = *(v24 + 568);
  v11 = *(v24 + 560);
  v12 = *(v24 + 536);

  v6 = *(*(v24 + 392) + 8);
  v7 = *(v24 + 392);

  return v6();
}

uint64_t sub_115D0()
{
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[71];
  v11 = v0[70];
  v12 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v0[49] = v0;
  sub_2560(v0 + 37);
  sub_2560(v0 + 32);
  sub_2560(v0 + 27);
  (*(v5 + 8))(v12, v6);
  sub_1CCE4(v8);
  sub_1D7C8(v0 + 54);

  v1 = *(*(v13 + 392) + 8);
  v2 = *(v13 + 392);
  v3 = *(v13 + 624);

  return v1();
}

uint64_t sub_11760@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_11794(uint64_t a1)
{
  v3 = a1;
  v5 = sub_21E8(&qword_EEF98, &qword_C5A80);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_1CB3C(v1, &v3 - v4);
  return sub_C34F4();
}

uint64_t sub_11830(uint64_t a1)
{
  v30 = a1;
  v32 = sub_1A354;
  v36 = sub_7BBC;
  v38 = sub_7B48;
  v40 = sub_7B48;
  v43 = sub_7C08;
  v54 = 0;
  v24 = 0;
  v29 = sub_C3234();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v25 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v16 - v25;
  v26 = v16 - v25;
  v54 = __chkstk_darwin(v30);
  v2 = sub_BF704();
  (*(v27 + 16))(v1, v2, v29);
  swift_errorRetain();
  v34 = 7;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  v47 = sub_C3224();
  v48 = sub_C3884();
  v31 = 17;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v33 = 32;
  v3 = swift_allocObject();
  v4 = v35;
  v37 = v3;
  *(v3 + 16) = v32;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v37;
  v44 = v5;
  *(v5 + 16) = v36;
  *(v5 + 24) = v6;
  v46 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v42 = sub_C3C64();
  v45 = v7;

  v8 = v39;
  v9 = v45;
  *v45 = v38;
  v9[1] = v8;

  v10 = v41;
  v11 = v45;
  v45[2] = v40;
  v11[3] = v10;

  v12 = v44;
  v13 = v45;
  v45[4] = v43;
  v13[5] = v12;
  sub_4E48();

  if (os_log_type_enabled(v47, v48))
  {
    v14 = v24;
    v17 = sub_C3954();
    v16[3] = sub_21E8(&qword_EE828, &qword_C5100);
    v18 = sub_5DD4(0);
    v19 = sub_5DD4(1);
    v20 = &v53;
    v53 = v17;
    v21 = &v52;
    v52 = v18;
    v22 = &v51;
    v51 = v19;
    sub_5E28(2, &v53);
    sub_5E28(1, v20);
    v49 = v38;
    v50 = v39;
    sub_5E3C(&v49, v20, v21, v22);
    v23 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v49 = v40;
      v50 = v41;
      sub_5E3C(&v49, &v53, &v52, &v51);
      v16[1] = 0;
      v49 = v43;
      v50 = v44;
      sub_5E3C(&v49, &v53, &v52, &v51);
      _os_log_impl(&dword_0, v47, v48, "Error: %s", v17, 0xCu);
      sub_5E88(v18);
      sub_5E88(v19);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v47);
  return (*(v27 + 8))(v26, v29);
}

uint64_t sub_11DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = v4;
  v5[61] = a4;
  v5[60] = a3;
  v5[59] = a2;
  v5[58] = a1;
  v5[52] = v5;
  v5[48] = 0;
  v5[49] = 0;
  v5[53] = 0;
  v5[54] = 0;
  v5[55] = 0;
  v5[56] = 0;
  v5[57] = 0;
  v6 = *(*(sub_21E8(&qword_EEFD0, &unk_C6820) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v7 = sub_C3234();
  v5[64] = v7;
  v11 = *(v7 - 8);
  v5[65] = v11;
  v8 = *(v11 + 64) + 15;
  v5[66] = swift_task_alloc();
  v5[48] = a2;
  v5[49] = a3;
  v5[53] = a4;
  v5[54] = v4;
  v9 = v5[52];

  return _swift_task_switch(sub_11F84, 0);
}

uint64_t sub_11F84()
{
  v59 = v0;
  v1 = v0[66];
  v40 = v0[65];
  v41 = v0[64];
  v43 = v0[60];
  v42 = v0[59];
  v0[52] = v0;
  v2 = sub_BF704();
  (*(v40 + 16))(v1, v2, v41);

  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  v50 = sub_C3224();
  v51 = sub_C3874();
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1CDCC;
  *(v45 + 24) = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_7BBC;
  *(v48 + 24) = v45;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v49 = v3;

  *v49 = sub_7B48;
  v49[1] = v46;

  v49[2] = sub_7B48;
  v49[3] = v47;

  v49[4] = sub_7C08;
  v49[5] = v48;
  sub_4E48();

  if (os_log_type_enabled(v50, v51))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v37 = sub_5DD4(0);
    v38 = sub_5DD4(1);
    v54 = buf;
    v55 = v37;
    v56 = v38;
    sub_5E28(2, &v54);
    sub_5E28(1, &v54);
    v57 = sub_7B48;
    v58 = v46;
    sub_5E3C(&v57, &v54, &v55, &v56);
    v57 = sub_7B48;
    v58 = v47;
    sub_5E3C(&v57, &v54, &v55, &v56);
    v57 = sub_7C08;
    v58 = v48;
    sub_5E3C(&v57, &v54, &v55, &v56);
    _os_log_impl(&dword_0, v50, v51, "outputPatternDialog: %s", buf, 0xCu);
    sub_5E88(v37);
    sub_5E88(v38);
    sub_C3934();
  }

  else
  {
  }

  v30 = v39[66];
  v31 = v39[64];
  v35 = v39[60];
  v34 = v39[59];
  v29 = v39[65];
  _objc_release(v50);
  (*(v29 + 8))(v30, v31);
  v4 = sub_41AEC();
  v32 = *v4;
  v33 = v4[1];

  v39[50] = v34;
  v39[51] = v35;
  if (v39[51])
  {
    v52 = v39[50];
    v53 = v39[51];
  }

  else
  {
    v52 = sub_C3564("", 0, 1);
    v53 = v5;
    if (v39[51])
    {
      sub_8224((v39 + 50));
    }
  }

  v27 = v39[62];
  sub_2E6E0(v32, v33, v52, v53, v39 + 2);
  v26 = sub_16240((v39 + 2));
  v39[67] = v26;
  v39[55] = v26;
  v6 = sub_2F52C();
  v28 = sub_17A44(v6, v7);

  sub_1CEB0();
  if (v28)
  {
    v24 = sub_C3C64();
    *v8 = sub_EE34();
    sub_4E48();
    v25 = v24;
  }

  else
  {
    v25 = sub_C3C64();
  }

  v39[68] = v25;
  v21 = v39[63];
  v18 = v39[62];
  v39[56] = v25;
  sub_24F4(v18 + 16, (v39 + 10));
  v15 = v39[13];
  v14 = v39[14];
  sub_808C(v39 + 10, v15);
  v22 = (*(v14 + 32))(v15);
  v39[69] = v22;
  v39[57] = v22;
  sub_2560(v39 + 10);
  sub_24F4(v18 + 16, (v39 + 20));
  v17 = v39[23];
  v16 = v39[24];
  sub_808C(v39 + 20, v17);
  (*(v16 + 8))(v17);
  sub_2560(v39 + 20);
  sub_24F4(v18 + 16, (v39 + 30));
  v20 = v39[33];
  v19 = v39[34];
  sub_808C(v39 + 30, v20);
  v39[70] = (*(v19 + 24))(v20);

  sub_1CEB0();
  sub_1CA74();
  v23 = sub_C3B34();
  v39[71] = v23;
  v9 = sub_C2DB4();
  (*(*(v9 - 8) + 56))(v21, 1);
  v10 = swift_task_alloc();
  v39[72] = v10;
  *v10 = v39[52];
  v10[1] = sub_12A00;
  v11 = v39[63];
  v12 = v39[61];

  return sub_370E0((v39 + 25), (v39 + 2), v26, v22, (v39 + 15), v12, v23, v11);
}

uint64_t sub_12A00()
{
  v13 = *v1;
  v10 = (*v1 + 16);
  v11 = (*v1 + 416);
  v12 = (*v1 + 240);
  v2 = *(*v1 + 576);
  *(v13 + 416) = *v1;
  *(v13 + 584) = v0;

  if (v0)
  {
    v5 = *v11;
    v4 = sub_13088;
  }

  else
  {
    v7 = v10[69];
    v9 = v10[68];
    v8 = v10[66];
    sub_1CF14(v10[61]);

    sub_2560(v12);
    v3 = *v11;
    v4 = sub_12BC0;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_12BC0()
{
  v1 = v0[62];
  v0[52] = v0;
  sub_24F4(v1 + 16, (v0 + 35));
  v6 = v0[38];
  v5 = v0[39];
  sub_808C(v0 + 35, v6);
  (*(v5 + 16))(v6);
  v8 = v0[43];
  v9 = v0[44];
  sub_808C(v0 + 40, v8);
  v2 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v3 = swift_task_alloc();
  *(v7 + 592) = v3;
  *v3 = *(v7 + 416);
  v3[1] = sub_12D00;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v7 + 200, v8, v9);
}

uint64_t sub_12D00()
{
  v8 = *v1;
  v7 = (v8 + 416);
  v2 = *(*v1 + 592);
  *(v8 + 416) = *v1;
  *(v8 + 600) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_131F8;
  }

  else
  {
    v3 = *v7;
    v4 = sub_12E6C;
  }

  return _swift_task_switch(v4, 0);
}

uint64_t sub_12E6C()
{
  v1 = v0[62];
  v15 = v0[60];
  v14 = v0[59];
  v0[52] = v0;
  sub_2560(v0 + 40);
  sub_2560(v0 + 35);
  if ((sub_1340C(v14, v15) & 1) == 0)
  {
    v12 = (v13[62] + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    swift_beginAccess();
    v2 = v12[1];
    *v12 = 0;
    v12[1] = 0;

    swift_endAccess();
  }

  v7 = v13[69];
  v8 = v13[68];
  v9 = v13[67];
  v10 = v13[66];
  v11 = v13[63];
  v3 = v13[58];
  sub_C2054();
  sub_2560(v13 + 25);
  sub_2560(v13 + 15);
  _objc_release(v7);

  sub_1CFBC(v13 + 2);

  v4 = *(v13[52] + 8);
  v5 = v13[52];

  return v4();
}

uint64_t sub_13088()
{
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  v1 = v0[63];
  v0[52] = v0;
  sub_1CF14(v1);

  sub_2560(v0 + 30);
  sub_2560(v0 + 15);
  _objc_release(v9);

  sub_1CFBC(v0 + 2);
  v2 = v0[73];
  v3 = v0[66];
  v12 = v0[63];

  v4 = *(v0[52] + 8);
  v5 = v0[52];

  return v4();
}

uint64_t sub_131F8()
{
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v0[52] = v0;
  sub_2560(v0 + 40);
  sub_2560(v0 + 35);
  sub_2560(v0 + 25);
  sub_2560(v0 + 15);
  _objc_release(v6);

  sub_1CFBC(v0 + 2);
  v1 = v0[75];
  v2 = v0[66];
  v9 = v0[63];

  v3 = *(v0[52] + 8);
  v4 = v0[52];

  return v3();
}

uint64_t sub_13348(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  sub_C3B84();
  __break(1u);
  return v3;
}

uint64_t sub_1340C(uint64_t a1, uint64_t a2)
{
  v17[4] = 0;
  v17[5] = a1;
  v17[6] = a2;
  v15 = sub_C3C64();
  v14 = v2;
  *v2 = sub_C3564("dalRandomJoke", 0xDuLL, 1);
  v14[1] = v3;
  v14[2] = sub_C3564("dalFlipACoin", 0xCuLL, 1);
  v14[3] = v4;
  sub_4E48();
  v17[3] = v15;
  v17[2] = v15;

  if (a2)
  {
    v10 = a1;
    v11 = a2;
  }

  else
  {
    sub_C3B84();
    __break(1u);
  }

  v17[0] = v10;
  v17[1] = v11;
  sub_21E8(&qword_EEFE0, &qword_C5AB0);
  sub_1D00C();
  v9 = sub_C3684();
  sub_8224(v17);
  if (v9)
  {

    v7 = (v13 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    swift_beginAccess();
    v5 = v7[1];
    *v7 = a1;
    v7[1] = a2;

    swift_endAccess();

    v8 = 1;
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_13690(uint64_t a1, uint64_t a2)
{
  v176 = a2;
  v175 = a1;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v166 = 0;
  v196 = 0;
  v195 = 0;
  v167 = sub_C3234();
  v168 = *(v167 - 8);
  v169 = v168;
  v171 = *(v168 + 64);
  v3 = __chkstk_darwin(v176);
  v173 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = &v48 - v173;
  v4 = __chkstk_darwin(v3);
  v172 = &v48 - v173;
  v5 = __chkstk_darwin(v4);
  v174 = &v48 - v173;
  v209 = v6;
  v210 = v5;
  v208 = v2;

  v206 = v175;
  v207 = v176;
  v205[0] = v175;
  v205[1] = v176;
  v7 = sub_41A8C();
  v180 = *v7;
  v181 = v7[1];

  v177 = v181;

  v178 = v203;
  v179 = v204;
  sub_146A0(v205, v203);
  v204[0] = v180;
  v204[1] = v181;
  if (v203[1])
  {
    sub_146A0(v178, &v184);
    if (v179[1])
    {
      v183 = v184;
      v182 = *v179;
      v163 = sub_C3574();
      sub_8224(&v182);
      sub_8224(&v183);
      sub_8224(v178);
      v164 = v163;
      goto LABEL_7;
    }

    sub_8224(&v184);
    goto LABEL_9;
  }

  if (v179[1])
  {
LABEL_9:
    sub_146E0(v203);
    v164 = 0;
    goto LABEL_7;
  }

  sub_8224(v178);
  v164 = 1;
LABEL_7:
  v162 = v164;

  if (v162)
  {
    v8 = v174;
    v9 = sub_BF704();
    v140 = *(v169 + 16);
    v141 = (v169 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v140(v8, v9, v167);

    v144 = 32;
    v148 = 32;
    v149 = 7;
    v10 = swift_allocObject();
    v11 = v176;
    v150 = v10;
    *(v10 + 16) = v175;
    *(v10 + 24) = v11;
    v161 = sub_C3224();
    v142 = v161;
    v160 = sub_C3874();
    v143 = v160;
    v145 = 17;
    v154 = swift_allocObject();
    v146 = v154;
    *(v154 + 16) = v144;
    v155 = swift_allocObject();
    v147 = v155;
    *(v155 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v150;
    v151 = v12;
    *(v12 + 16) = sub_1D0D4;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v151;
    v158 = v14;
    v152 = v14;
    *(v14 + 16) = sub_7BBC;
    *(v14 + 24) = v15;
    v159 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v153 = v159;
    v156 = sub_C3C64();
    v157 = v16;

    v17 = v154;
    v18 = v157;
    *v157 = sub_7B48;
    v18[1] = v17;

    v19 = v155;
    v20 = v157;
    v157[2] = sub_7B48;
    v20[3] = v19;

    v21 = v157;
    v22 = v158;
    v157[4] = sub_7C08;
    v21[5] = v22;
    sub_4E48();

    if (os_log_type_enabled(v161, v160))
    {
      v23 = v166;
      v133 = sub_C3954();
      v130 = v133;
      v131 = sub_21E8(&qword_EE828, &qword_C5100);
      v134 = sub_5DD4(0);
      v132 = v134;
      v136 = 1;
      v135 = sub_5DD4(1);
      v189 = v133;
      v188 = v134;
      v187 = v135;
      v137 = &v189;
      sub_5E28(2, &v189);
      sub_5E28(v136, v137);
      v185 = sub_7B48;
      v186 = v146;
      sub_5E3C(&v185, v137, &v188, &v187);
      v138 = v23;
      v139 = v23;
      if (v23)
      {
        v128 = 0;

        __break(1u);
      }

      else
      {
        v185 = sub_7B48;
        v186 = v147;
        sub_5E3C(&v185, &v189, &v188, &v187);
        v126 = 0;
        v127 = 0;
        v185 = sub_7C08;
        v186 = v152;
        sub_5E3C(&v185, &v189, &v188, &v187);
        v124 = 0;
        v125 = 0;
        _os_log_impl(&dword_0, v142, v143, "cannedDialogId: %s", v130, 0xCu);
        sub_5E88(v132);
        sub_5E88(v135);
        sub_C3934();

        v129 = v124;
      }
    }

    else
    {
      v24 = v166;

      v129 = v24;
    }

    v116 = v129;

    v117 = *(v169 + 8);
    v118 = (v169 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v117(v174, v167);
    v119 = (v165 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
    v122 = &v201;
    swift_beginAccess();
    v120 = *v119;
    v123 = v119[1];
    v121 = v123;

    swift_endAccess();
    if (v123)
    {
      v114 = v120;
      v115 = v121;
      v25 = v172;
      v95 = v121;
      v94 = v120;
      v195 = v120;
      v196 = v121;

      v206 = v94;
      v207 = v95;

      v26 = sub_BF704();
      v140(v25, v26, v167);
      v98 = 32;
      v102 = 32;
      v103 = 7;
      v27 = swift_allocObject();
      v28 = v95;
      v104 = v27;
      *(v27 + 16) = v94;
      *(v27 + 24) = v28;
      v113 = sub_C3224();
      v96 = v113;
      v112 = sub_C3874();
      v97 = v112;
      v99 = 17;
      v107 = swift_allocObject();
      v100 = v107;
      *(v107 + 16) = v98;
      v108 = swift_allocObject();
      v101 = v108;
      *(v108 + 16) = 8;
      v29 = swift_allocObject();
      v30 = v104;
      v105 = v29;
      *(v29 + 16) = sub_1D1F8;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v105;
      v111 = v31;
      v106 = v31;
      *(v31 + 16) = sub_7BBC;
      *(v31 + 24) = v32;
      v109 = sub_C3C64();
      v110 = v33;

      v34 = v107;
      v35 = v110;
      *v110 = sub_7B48;
      v35[1] = v34;

      v36 = v108;
      v37 = v110;
      v110[2] = sub_7B48;
      v37[3] = v36;

      v38 = v110;
      v39 = v111;
      v110[4] = sub_7C08;
      v38[5] = v39;
      sub_4E48();

      if (os_log_type_enabled(v113, v112))
      {
        v40 = v116;
        v87 = sub_C3954();
        v84 = v87;
        v85 = sub_21E8(&qword_EE828, &qword_C5100);
        v88 = sub_5DD4(0);
        v86 = v88;
        v90 = 1;
        v89 = sub_5DD4(1);
        v194 = v87;
        v193 = v88;
        v192 = v89;
        v91 = &v194;
        sub_5E28(2, &v194);
        sub_5E28(v90, v91);
        v190 = sub_7B48;
        v191 = v100;
        sub_5E3C(&v190, v91, &v193, &v192);
        v92 = v40;
        v93 = v40;
        if (v40)
        {
          v82 = 0;

          __break(1u);
        }

        else
        {
          v190 = sub_7B48;
          v191 = v101;
          sub_5E3C(&v190, &v194, &v193, &v192);
          v80 = 0;
          v81 = 0;
          v190 = sub_7C08;
          v191 = v106;
          sub_5E3C(&v190, &v194, &v193, &v192);
          v78 = 0;
          v79 = 0;
          _os_log_impl(&dword_0, v96, v97, "cannedDialogIdAfterFollowUpLogic: %s", v84, 0xCu);
          sub_5E88(v86);
          sub_5E88(v89);
          sub_C3934();

          v83 = v78;
        }
      }

      else
      {
        v41 = v116;

        v83 = v41;
      }

      v76 = v83;

      v117(v172, v167);

      v77 = v76;
    }

    else
    {
      v42 = v170;
      v43 = sub_BF704();
      v140(v42, v43, v167);
      v74 = sub_C3224();
      v71 = v74;
      v73 = sub_C3874();
      v72 = v73;
      v75 = sub_C3C64();
      if (os_log_type_enabled(v74, v73))
      {
        v44 = v116;
        v62 = sub_C3954();
        v58 = v62;
        v59 = sub_21E8(&qword_EE828, &qword_C5100);
        v60 = 0;
        v63 = sub_5DD4(0);
        v61 = v63;
        v64 = sub_5DD4(v60);
        v200 = v62;
        v199 = v63;
        v198 = v64;
        v65 = 0;
        v66 = &v200;
        sub_5E28(0, &v200);
        sub_5E28(v65, v66);
        v197 = v75;
        v67 = &v48;
        __chkstk_darwin(&v48);
        v68 = &v48 - 6;
        *(&v48 - 4) = v45;
        *(&v48 - 3) = &v199;
        *(&v48 - 2) = &v198;
        v69 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        sub_C3654();
        v70 = v44;
        if (v44)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v71, v72, "dalAgain with no follow up so returning dalAgain", v58, 2u);
          v56 = 0;
          sub_5E88(v61);
          sub_5E88(v64);
          sub_C3934();

          v57 = v70;
        }
      }

      else
      {

        v57 = v116;
      }

      v55 = v57;

      v117(v170, v167);
      v46 = sub_41A8C();
      v53 = *v46;
      v54 = v46[1];

      v206 = v53;
      v207 = v54;

      v77 = v55;
    }

    v52 = v77;
  }

  else
  {
    v52 = v166;
  }

  v49 = &v206;
  v48 = &v202;
  swift_beginAccess();
  v51 = v206;
  v50 = v207;

  swift_endAccess();
  sub_8224(v49);
  return v51;
}

void *sub_146A0(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_146E0(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_14718(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  sub_C3B84();
  __break(1u);
  return v3;
}

uint64_t sub_147DC(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    return a1;
  }

  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_148B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a6;
  v106 = a5;
  v105 = a4;
  v117 = a3;
  v108 = a2;
  v97 = a1;
  v99 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v98 = 0;
  v100 = sub_21E8(&qword_EEFF0, &qword_C5AB8);
  v101 = *(*(v100 - 8) + 64);
  v7 = __chkstk_darwin(0);
  v103 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  v102 = (v52 - v103);
  __chkstk_darwin(v7);
  v104 = (v52 - v103);
  v137 = v52 - v103;
  v109 = sub_C3234();
  v110 = *(v109 - 8);
  v111 = v110;
  v8 = *(v110 + 64);
  __chkstk_darwin(v109 - 8);
  v112 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v10;
  v136 = v11;
  v134 = v12;
  v132 = v13;
  v133 = v14;
  v131 = v6;
  v15 = sub_41AEC();
  v115 = *v15;
  v113 = v115;
  v116 = v15[1];
  v114 = v116;

  v129 = v115;
  v130 = v116;

  if (v117)
  {
    v95 = v108;
    v96 = v117;
  }

  else
  {
    LODWORD(v51) = 0;
    v50 = 153;
    LOBYTE(v49) = 2;
    sub_C3B84();
    __break(1u);
  }

  v16 = v112;
  v75 = &v138;
  sub_2E6E0(v113, v114, v95, v96, &v138);
  v128 = v141;
  v127 = v140;
  v126 = v139;
  v125 = v138;
  v17 = sub_BF704();
  (*(v111 + 16))(v16, v17, v109);
  sub_1D2DC(v75, v124);
  v83 = 7;
  v18 = swift_allocObject();
  v84 = v18;
  v19 = v138;
  v20 = v139;
  v21 = v140;
  v18[4] = v141;
  v18[3] = v21;
  v18[2] = v20;
  v18[1] = v19;
  v94 = sub_C3224();
  v76 = v94;
  v93 = sub_C3874();
  v77 = v93;
  v78 = 17;
  v87 = swift_allocObject();
  v79 = v87;
  v80 = 32;
  *(v87 + 16) = 32;
  v22 = swift_allocObject();
  v23 = v80;
  v88 = v22;
  v81 = v22;
  *(v22 + 16) = 8;
  v82 = v23;
  v24 = swift_allocObject();
  v25 = v84;
  v85 = v24;
  *(v24 + 16) = sub_1D3E4;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v85;
  v91 = v26;
  v86 = v26;
  *(v26 + 16) = sub_7BBC;
  *(v26 + 24) = v27;
  v92 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v89 = sub_C3C64();
  v90 = v28;

  v29 = v87;
  v30 = v90;
  *v90 = sub_7B48;
  v30[1] = v29;

  v31 = v88;
  v32 = v90;
  v90[2] = sub_7B48;
  v32[3] = v31;

  v33 = v90;
  v34 = v91;
  v90[4] = sub_7C08;
  v33[5] = v34;
  sub_4E48();

  if (os_log_type_enabled(v94, v93))
  {
    v35 = v98;
    v68 = sub_C3954();
    v65 = v68;
    v66 = sub_21E8(&qword_EE828, &qword_C5100);
    v69 = sub_5DD4(0);
    v67 = v69;
    v71 = 1;
    v70 = sub_5DD4(1);
    v122 = v68;
    v121 = v69;
    v120 = v70;
    v72 = &v122;
    sub_5E28(2, &v122);
    sub_5E28(v71, v72);
    v118 = sub_7B48;
    v119 = v79;
    sub_5E3C(&v118, v72, &v121, &v120);
    v73 = v35;
    v74 = v35;
    if (v35)
    {
      v63 = 0;

      __break(1u);
    }

    else
    {
      v118 = sub_7B48;
      v119 = v81;
      sub_5E3C(&v118, &v122, &v121, &v120);
      v61 = 0;
      v62 = 0;
      v118 = sub_7C08;
      v119 = v86;
      sub_5E3C(&v118, &v122, &v121, &v120);
      v59 = 0;
      v60 = 0;
      _os_log_impl(&dword_0, v76, v77, "CatMetadata: %s", v65, 0xCu);
      sub_5E88(v67);
      sub_5E88(v70);
      sub_C3934();

      v64 = v59;
    }
  }

  else
  {
    v36 = v98;

    v64 = v36;
  }

  (*(v111 + 8))(v112, v109);
  v52[0] = *v105;
  v52[1] = *(v105 + 8);
  v53 = *(v105 + 16);

  v55 = &v138;
  sub_1D2DC(&v138, v123);

  v54 = v52;
  v37 = __chkstk_darwin(v52[0]);
  v38 = v108;
  v39 = v117;
  v52[-8] = v40;
  v52[-7] = v41;
  v52[-6] = v42;
  v52[-5] = v43;
  v56 = &v129;
  v49 = &v129;
  v50 = v38;
  v51 = v39;
  sub_5A43C(v37, v44, v45, 1, sub_1D4C4, &v52[-10], v46, v47);

  sub_1CFBC(v55);

  sub_1D4E4(v104, v102);
  v58 = *v102;
  v57 = v102[1];
  sub_1D624(v102 + *(v100 + 48), v97);
  sub_1D6F4(v104);
  sub_1CFBC(v55);
  sub_8224(v56);
  return v58;
}

uint64_t sub_151A8(void *a1)
{
  sub_1D2DC(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  return sub_C34F4();
}

uint64_t sub_151F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v121 = a8;
  v159 = a1;
  v167 = a2;
  v162 = a3;
  v163 = a4;
  v146 = a5;
  v147 = a6;
  v148 = a7;
  v122 = sub_1ED0C;
  v123 = sub_7BBC;
  v124 = sub_1ED0C;
  v125 = sub_7BBC;
  v126 = sub_1A354;
  v127 = sub_7BBC;
  v128 = sub_7B48;
  v129 = sub_7B48;
  v130 = sub_7C08;
  v131 = sub_7B48;
  v132 = sub_7B48;
  v133 = sub_7C08;
  v134 = sub_7B48;
  v135 = sub_7B48;
  v136 = sub_7C08;
  v137 = "Fatal error";
  v138 = "Unexpectedly found nil while unwrapping an Optional value";
  v139 = "SocialConversationFlowDelegatePlugin/CannedDialogHelper.swift";
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v201 = 0;
  v199 = 0;
  v200 = 0;
  v198 = 0;
  v196 = 0;
  v197 = 0;
  v195 = 0;
  v191 = 0;
  v183 = 0;
  v140 = 0;
  v141 = sub_C3234();
  v142 = *(v141 - 8);
  v143 = v141 - 8;
  v144 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v141);
  v145 = &v62 - v144;
  v171 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v149 = (*(*(v171 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v167);
  v150 = (&v62 - v149);
  v204 = &v62 - v149;
  v151 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v172 = (&v62 - v151);
  v152 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v170 = (&v62 - v152);
  v203 = &v62 - v152;
  v202 = a1;
  v201 = v13;
  v199 = v14;
  v200 = v15;
  v198 = v16;
  v196 = v17;
  v197 = v18;
  v164 = sub_16240(v13);
  v195 = v164;
  v155 = v192;
  sub_24F4(v159 + 16, v192);
  v154 = v193;
  v153 = v194;
  sub_808C(v155, v193);
  v165 = (*(v153 + 32))(v154);
  v191 = v165;
  sub_2560(v155);
  v158 = v187;
  sub_24F4(v159 + 16, v187);
  v157 = v188;
  v156 = v189;
  sub_808C(v158, v188);
  v19 = *(v156 + 8);
  v166 = v190;
  v19(v157);
  sub_2560(v158);
  v169 = v184;
  sub_24F4(v159 + 16, v184);
  v161 = v185;
  v160 = v186;
  sub_808C(v169, v185);
  v168 = (*(v160 + 24))(v161);
  sub_2FB84(v167, v162, v163, v164, v165, v166, v170);

  sub_2560(v169);
  sub_19F8C(v170, v172);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v115 = *v172;
    v183 = v115;
    v23 = sub_41B4C();
    v116 = *v23;
    v117 = v23[1];

    v24 = v117;
    v25 = v146;
    v26 = v146[1];
    *v146 = v116;
    v25[1] = v24;

    v118 = *v146;
    v119 = v146[1];

    if (v148)
    {
      v113 = v147;
      v114 = v148;
    }

    else
    {
      sub_C3B84();
      __break(1u);
    }

    v27 = v145;
    v86 = v205;
    sub_2E6E0(v118, v119, v113, v114, v205);
    v28 = sub_BF704();
    (*(v142 + 16))(v27, v28, v141);
    sub_1D2DC(v167, v182);
    v85 = 80;
    v96 = 7;
    v88 = swift_allocObject();
    v87 = 64;
    memcpy((v88 + 16), v167, 0x40uLL);
    sub_1D2DC(v86, v181);
    v90 = swift_allocObject();
    memcpy((v90 + 16), v86, v87);
    swift_errorRetain();
    v97 = swift_allocObject();
    *(v97 + 16) = v115;
    v111 = sub_C3224();
    v112 = sub_C3884();
    v93 = 17;
    v99 = swift_allocObject();
    v92 = 32;
    *(v99 + 16) = 32;
    v100 = swift_allocObject();
    v94 = 8;
    *(v100 + 16) = 8;
    v95 = 32;
    v29 = swift_allocObject();
    v30 = v88;
    v89 = v29;
    *(v29 + 16) = v122;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v89;
    v101 = v31;
    *(v31 + 16) = v123;
    *(v31 + 24) = v32;
    v102 = swift_allocObject();
    *(v102 + 16) = v92;
    v103 = swift_allocObject();
    *(v103 + 16) = v94;
    v33 = swift_allocObject();
    v34 = v90;
    v91 = v33;
    *(v33 + 16) = v124;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v91;
    v104 = v35;
    *(v35 + 16) = v125;
    *(v35 + 24) = v36;
    v105 = swift_allocObject();
    *(v105 + 16) = v92;
    v106 = swift_allocObject();
    *(v106 + 16) = v94;
    v37 = swift_allocObject();
    v38 = v97;
    v98 = v37;
    *(v37 + 16) = v126;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v98;
    v108 = v39;
    *(v39 + 16) = v127;
    *(v39 + 24) = v40;
    v110 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v107 = sub_C3C64();
    v109 = v41;

    v42 = v99;
    v43 = v109;
    *v109 = v128;
    v43[1] = v42;

    v44 = v100;
    v45 = v109;
    v109[2] = v129;
    v45[3] = v44;

    v46 = v101;
    v47 = v109;
    v109[4] = v130;
    v47[5] = v46;

    v48 = v102;
    v49 = v109;
    v109[6] = v131;
    v49[7] = v48;

    v50 = v103;
    v51 = v109;
    v109[8] = v132;
    v51[9] = v50;

    v52 = v104;
    v53 = v109;
    v109[10] = v133;
    v53[11] = v52;

    v54 = v105;
    v55 = v109;
    v109[12] = v134;
    v55[13] = v54;

    v56 = v106;
    v57 = v109;
    v109[14] = v135;
    v57[15] = v56;

    v58 = v108;
    v59 = v109;
    v109[16] = v136;
    v59[17] = v58;
    sub_4E48();

    if (os_log_type_enabled(v111, v112))
    {
      v60 = v140;
      v78 = sub_C3954();
      v77 = sub_21E8(&qword_EE828, &qword_C5100);
      v79 = sub_5DD4(0);
      v80 = sub_5DD4(3);
      v81 = &v177;
      v177 = v78;
      v82 = &v176;
      v176 = v79;
      v83 = &v175;
      v175 = v80;
      sub_5E28(2, &v177);
      sub_5E28(3, v81);
      v173 = v128;
      v174 = v99;
      sub_5E3C(&v173, v81, v82, v83);
      v84 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v173 = v129;
        v174 = v100;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v76 = 0;
        v173 = v130;
        v174 = v101;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v75 = 0;
        v173 = v131;
        v174 = v102;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v74 = 0;
        v173 = v132;
        v174 = v103;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v73 = 0;
        v173 = v133;
        v174 = v104;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v72 = 0;
        v173 = v134;
        v174 = v105;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v71 = 0;
        v173 = v135;
        v174 = v106;
        sub_5E3C(&v173, &v177, &v176, &v175);
        v70 = 0;
        v173 = v136;
        v174 = v108;
        sub_5E3C(&v173, &v177, &v176, &v175);
        _os_log_impl(&dword_0, v111, v112, "Initial error with %s family, retrying now with %s: %s", v78, 0x20u);
        sub_5E88(v79);
        sub_5E88(v80);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v111);
    (*(v142 + 8))(v145, v141);
    v66 = v178;
    sub_24F4(v159 + 16, v178);
    v64 = v179;
    v63 = v180;
    sub_808C(v66, v179);
    v65 = (*(v63 + 24))(v64);
    v68 = v205;
    v69 = v190;
    sub_2FB84(v205, v162, v163, v164, v165, v190, v150);

    sub_2560(v66);
    v61 = sub_21E8(&qword_EEFF0, &qword_C5AB8);
    v67 = (v121 + *(v61 + 48));
    sub_146A0(v146, v121);
    sub_19F8C(v150, v67);
    sub_1A068(v150);
    sub_1CFBC(v68);

    sub_1A068(v170);
    sub_2560(v69);
    _objc_release(v165);
  }

  else
  {
    v20 = sub_21E8(&qword_EEFF0, &qword_C5AB8);
    v120 = (v121 + *(v20 + 48));
    sub_146A0(v146, v121);
    sub_19F8C(v170, v120);
    v21 = sub_C2134();
    (*(*(v21 - 8) + 8))(v172);
    sub_1A068(v170);
    sub_2560(v190);
    _objc_release(v165);
  }
}

uint64_t sub_16208(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  return v2;
}

uint64_t sub_16240(uint64_t a1)
{
  v122 = a1;
  v132 = 0;
  v131 = sub_1710C;
  v95 = sub_1710C;
  v96 = sub_1D834;
  v97 = sub_7BBC;
  v98 = sub_7B48;
  v99 = sub_7B48;
  v100 = sub_7C08;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v158 = 0;
  v159 = 0;
  v157[0] = 0;
  v155 = 0uLL;
  v154 = 0;
  v116 = 0;
  v101 = sub_C3234();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v105 = &v33 - v104;
  v106 = sub_C1C64();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v110 = &v33 - v109;
  v111 = sub_C1CA4();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v115 = &v33 - v114;
  v117 = sub_C1CC4();
  v118 = *(v117 - 8);
  v119 = v117 - 8;
  v120 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v121 = &v33 - v120;
  v126 = sub_C1B54();
  v124 = *(v126 - 8);
  v125 = v126 - 8;
  v123 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v122);
  v127 = &v33 - v123;
  v164 = v2;
  v163 = v1;
  v134 = &type metadata for String;
  v135 = &type metadata for Any + 8;
  v136 = &protocol witness table for String;
  v133 = sub_C3314();

  v162 = v133;
  sub_C1B44();
  v130 = sub_17188(v127);
  v128 = *(v124 + 8);
  v129 = v124 + 8;
  v128(v127, v126);
  v3 = sub_C33C4();
  v137 = 0;
  v138 = v3;
  v92 = v3;

  v162 = v92;

  sub_C1B44();
  v91 = sub_175C8(v127);
  v128(v127, v126);
  v4 = sub_C33C4();
  v93 = 0;
  v94 = v4;
  v162 = v4;

  v87 = sub_C3564("nextYear", 8uLL, 1);
  v88 = v5;
  sub_C1C94();
  (*(v112 + 104))(v115, enum case for Calendar.Component.year(_:), v111);
  sub_C1B44();
  v89 = sub_C1CB4();
  v128(v127, v126);
  (*(v112 + 8))(v115, v111);
  (*(v118 + 8))(v121, v117);
  result = v89;
  v90 = v89 + 1;
  if (__OFADD__(v89, 1))
  {
    __break(1u);
  }

  else
  {
    v69 = v161;
    v161[3] = &type metadata for Int;
    v161[0] = v90;
    v68 = v160;
    v160[0] = v87;
    v160[1] = v88;
    v86 = sub_21E8(&qword_EEFF8, &unk_C5AC0);
    v79 = &v162;
    sub_C33F4();
    sub_C1C14();
    isa = sub_C1BD4().super.isa;
    v71 = [(objc_class *)isa af_aceTemperatureUnit];
    _objc_release(isa);
    (*(v107 + 8))(v110, v106);
    v72 = sub_C3494();
    v73 = v8;
    v158 = v72;
    v159 = v8;
    _objc_release(v71);
    v82 = 1;
    v74 = sub_C3564("temperatureUnit", 0xFuLL, 1);
    v75 = v9;

    v76 = &type metadata for String;
    v157[6] = &type metadata for String;
    v157[3] = v72;
    v157[4] = v73;
    v157[1] = v74;
    v157[2] = v75;
    sub_C33F4();
    v157[0] = sub_C3314();
    v77 = sub_C3564("holiday", 7uLL, v82 & 1);
    v78 = v10;
    v80 = "firstadvent";
    v81 = 11;
    v11 = sub_C3564("firstadvent", 0xBuLL, v82 & 1);
    v156[13] = v76;
    v156[10] = v11;
    v156[11] = v12;
    v156[8] = v77;
    v156[9] = v78;
    sub_C33F4();
    v84 = sub_C3564(v80, v81, v82 & 1);
    v85 = v13;
    v83 = v157[0];

    v156[7] = v86;
    v156[4] = v83;
    v156[2] = v84;
    v156[3] = v85;
    sub_C33F4();
    v167 = *(v122 + 32);
    sub_146A0(&v167, v156);
    v168 = v167;
    if (*(&v167 + 1))
    {
      v65 = v168;
      v155 = v168;
      v64 = &type metadata for String;
      v154 = sub_C3314();
      v66 = sub_C3564("holiday", 7uLL, 1);
      v67 = v14;

      v153 = v64;
      v152 = v65;
      v151[2] = v66;
      v151[3] = v67;
      sub_C33F4();
      v166 = *(v122 + 48);
      sub_146A0(&v166, v151);
      v150 = v166;
      v63 = *(&v166 + 1) != 0;
      v62 = v63;
      sub_8224(&v150);
      if (v62)
      {
        v60 = sub_C3564("calendarType", 0xCuLL, 1);
        v61 = v15;
        v165 = *(v122 + 48);
        sub_146A0(&v165, &v141);
        v169 = v165;
        if (*(&v165 + 1))
        {
          v170 = v169;
          v144 = &type metadata for String;
          v142 = v169;
        }

        else
        {
          v142 = 0uLL;
          v143 = 0;
          v144 = 0;
        }

        v139 = v60;
        v140 = v61;
        sub_C33F4();
      }

      v49 = 7;
      v45 = sub_C3564("holiday", 7uLL, 1);
      v46 = v16;
      v44 = v154;

      v149[6] = v86;
      v149[3] = v44;
      v149[1] = v45;
      v149[2] = v46;
      sub_C33F4();
      v17 = v105;
      v18 = sub_BF704();
      (*(v102 + 16))(v17, v18, v101);

      v48 = 32;
      v19 = swift_allocObject();
      v20 = *(&v65 + 1);
      v50 = v19;
      *(v19 + 16) = v65;
      *(v19 + 24) = v20;
      v58 = sub_C3224();
      v59 = sub_C3874();
      v47 = 17;
      v52 = swift_allocObject();
      *(v52 + 16) = 32;
      v53 = swift_allocObject();
      *(v53 + 16) = 8;
      v21 = swift_allocObject();
      v22 = v50;
      v51 = v21;
      *(v21 + 16) = v96;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v51;
      v55 = v23;
      *(v23 + 16) = v97;
      *(v23 + 24) = v24;
      v57 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v54 = sub_C3C64();
      v56 = v25;

      v26 = v52;
      v27 = v56;
      *v56 = v98;
      v27[1] = v26;

      v28 = v53;
      v29 = v56;
      v56[2] = v99;
      v29[3] = v28;

      v30 = v55;
      v31 = v56;
      v56[4] = v100;
      v31[5] = v30;
      sub_4E48();

      if (os_log_type_enabled(v58, v59))
      {
        v32 = v93;
        v37 = sub_C3954();
        v36 = sub_21E8(&qword_EE828, &qword_C5100);
        v38 = sub_5DD4(0);
        v39 = sub_5DD4(1);
        v40 = v149;
        v149[0] = v37;
        v41 = &v148;
        v148 = v38;
        v42 = &v147;
        v147 = v39;
        sub_5E28(2, v149);
        sub_5E28(1, v40);
        v145 = v98;
        v146 = v52;
        sub_5E3C(&v145, v40, v41, v42);
        v43 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v145 = v99;
          v146 = v53;
          sub_5E3C(&v145, v149, &v148, &v147);
          v35 = 0;
          v145 = v100;
          v146 = v55;
          sub_5E3C(&v145, v149, &v148, &v147);
          _os_log_impl(&dword_0, v58, v59, "holiday: %s", v37, 0xCu);
          sub_5E88(v38);
          sub_5E88(v39);
          sub_C3934();
        }
      }

      else
      {
      }

      _objc_release(v58);
      (*(v102 + 8))(v105, v101);
      sub_1D7C8(&v154);
    }

    v33 = &v162;
    v34 = v162;

    sub_1D7C8(v157);

    sub_1D7C8(v33);
    return v34;
  }

  return result;
}

uint64_t sub_17188(uint64_t a1)
{
  v30 = a1;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v19 = 0;
  v31 = sub_C1CA4();
  v26 = *(v31 - 8);
  v27 = v31 - 8;
  v18 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v34 = &v18 - v18;
  v25 = sub_C1C74();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v20 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v24 = &v18 - v20;
  v44 = sub_C1CC4();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v1 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v24);
  v45 = &v18 - v3;
  v51 = &v18 - v3;
  v50 = v30;
  v49 = v21;
  (*(v22 + 104))(v2, enum case for Calendar.Identifier.chinese(_:));
  sub_C1C84();
  (*(v22 + 8))(v24, v25);
  v29 = v26[13];
  v28 = v26 + 13;
  v29(v34, enum case for Calendar.Component.month(_:), v31);
  v36 = sub_C1CB4();
  v33 = v26[1];
  v32 = v26 + 1;
  v33(v34, v31);
  v48 = v36;
  v29(v34, enum case for Calendar.Component.day(_:), v31);
  v39 = sub_C1CB4();
  v33(v34, v31);
  v47 = v39;
  v41 = sub_21E8(&qword_EF000, &qword_C5E10);
  v40 = sub_C3C64();
  v38 = v4;
  v35 = 1;
  v5 = sub_C3564("lunarCalendarMonth", 0x12uLL, 1);
  v6 = v35;
  v7 = v5;
  v8 = v36;
  v10 = v9;
  v11 = v38;
  *v38 = v7;
  v11[1] = v10;
  v37 = &type metadata for Int;
  v11[5] = &type metadata for Int;
  v11[2] = v8;
  v12 = sub_C3564("lunarCalendarDay", 0x10uLL, v6 & 1);
  v13 = v37;
  v14 = v38;
  v15 = v39;
  v38[6] = v12;
  v14[7] = v16;
  v14[11] = v13;
  v14[8] = v15;
  sub_4E48();
  v46 = sub_C3374();
  (*(v42 + 8))(v45, v44);
  return v46;
}

uint64_t sub_175C8(uint64_t a1)
{
  v32 = a1;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v17 = 0;
  v33 = sub_C1CA4();
  v28 = *(v33 - 8);
  v29 = v33 - 8;
  v16 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v36 = v12 - v16;
  v26 = sub_C1C74();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v18 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v25 = v12 - v18;
  v19 = sub_C1CC4();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v1 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v25);
  v27 = v12 - v3;
  v45 = v12 - v3;
  v44 = v32;
  v43 = v22;
  (*(v23 + 104))(v2, enum case for Calendar.Identifier.gregorian(_:));
  sub_C1C84();
  (*(v23 + 8))(v25, v26);
  v31 = v28[13];
  v30 = v28 + 13;
  v31(v36, enum case for Calendar.Component.day(_:), v33);
  v38 = sub_C1CB4();
  v35 = v28[1];
  v34 = v28 + 1;
  v35(v36, v33);
  v42 = v38;
  v31(v36, enum case for Calendar.Component.hour(_:), v33);
  v37 = sub_C1CB4();
  v35(v36, v33);
  result = v38;
  v41 = v37;
  v39 = 25 - v38;
  if (__OFSUB__(25, v38))
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = 24 * v39;
  if ((24 * v39) >> 64 != (24 * v39) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v15 - v37;
  if (!__OFSUB__(v15, v37))
  {
    v40 = v14;
    v12[2] = sub_21E8(&qword_EF000, &qword_C5E10);
    v12[1] = sub_C3C64();
    v12[0] = v7;
    v8 = sub_C3564("hoursToChristmas", 0x10uLL, 1);
    v9 = v12[0];
    v10 = v14;
    *v12[0] = v8;
    v9[1] = v11;
    v9[5] = &type metadata for Int;
    v9[2] = v10;
    sub_4E48();
    v13 = sub_C3374();
    (*(v20 + 8))(v27, v19);
    return v13;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_17A44(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v3 = sub_21E8(&qword_EE820, &qword_C5A60);
  v48 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v49 = &v38[-v48];
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v38[-v48]);
  v51 = &v38[-v50];
  v52 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v38[-v50]);
  v53 = &v38[-v52];
  v54 = sub_C1B54();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v68);
  v58 = &v38[-v57];
  v87 = &v38[-v57];
  v85 = v6;
  v86 = v7;
  v84 = v2;
  v61 = 3;
  v64 = &type metadata for String;
  v60 = sub_C3C64();
  v59 = v8;
  v67 = 1;
  v9 = sub_C3564("SocialConversation#dalDismissAssistant", 0x26uLL, 1);
  v10 = v59;
  v11 = v67;
  *v59 = v9;
  v10[1] = v12;
  v13 = sub_C3564("SocialConversation#dalOkay", 0x1AuLL, v11 & 1);
  v14 = v59;
  v15 = v67;
  v59[2] = v13;
  v14[3] = v16;
  v17 = sub_C3564("SocialConversation#dalGoodBye", 0x1DuLL, v15 & 1);
  v18 = v59;
  v19 = v17;
  v20 = v60;
  v59[4] = v19;
  v18[5] = v21;
  sub_4E48();
  v65 = v20;
  v83 = v20;
  v63 = sub_C3C64();
  v62 = v22;
  v23 = sub_C3564("SocialConversation#dalProfanityAtSiri", 0x25uLL, v67 & 1);
  v24 = v62;
  v25 = v67;
  *v62 = v23;
  v24[1] = v26;
  v27 = sub_C3564("SocialConversation#dalGenderProfanityAtSiri", 0x2BuLL, v25 & 1);
  v28 = v62;
  v29 = v67;
  v62[2] = v27;
  v28[3] = v30;
  v31 = sub_C3564("SocialConversation#dalSexuallyHarassSiri", 0x28uLL, v29 & 1);
  v32 = v62;
  v33 = v31;
  v34 = v63;
  v62[4] = v33;
  v32[5] = v35;
  sub_4E48();
  v73 = v34;
  v82 = v34;
  v80[2] = v65;
  v66 = v80;
  v80[0] = v68;
  v80[1] = v69;
  v70 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v71 = sub_1D00C();
  v72 = &protocol witness table for String;
  v74 = sub_C3684();
  v81 = v74 & v67;
  v79 = v73;
  v77 = v68;
  v78 = v69;
  if (sub_C3684())
  {
    v45 = (v47 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
    v46 = &v76;
    swift_beginAccess();
    sub_B5E4(v45, v53);
    swift_endAccess();
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_BA04(v53);
      v44 = v74;
    }

    else
    {
      (*(v55 + 32))(v58, v53, v54);
      sub_C1B04();
      if (v36 < -60.0)
      {
        (*(v55 + 8))(v58, v54, -60.0);
        v44 = v74;
      }

      else
      {
        v81 = 1;
        (*(v55 + 8))(v58, v54, -60.0);
        v44 = 1;
      }
    }

    v42 = v44;
    sub_C1B44();
    (*(v55 + 56))(v51, 0, 1, v54);
    sub_B5E4(v51, v49);
    v40 = (v47 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
    v41 = &v75;
    swift_beginAccess();
    sub_B7DC(v49, v40);
    swift_endAccess();
    sub_BA04(v51);
    v43 = v42;
  }

  else
  {
    v43 = v74;
  }

  v39 = v43;

  return v39 & 1;
}

uint64_t sub_18164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v249 = a6;
  v248 = a5;
  v247 = a4;
  v246 = a3;
  v251 = a2;
  v250 = a1;
  v237 = 0;
  v307 = 0;
  v306 = 0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v229 = 0;
  v288 = 0;
  v287 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v276 = 0;
  v265 = 0;
  v230 = sub_C3234();
  v231 = *(v230 - 8);
  v232 = v231;
  v233 = *(v231 + 64);
  __chkstk_darwin(v230 - 8);
  v235 = (v233 + 15) & 0xFFFFFFFFFFFFFFF0;
  v234 = v67 - v235;
  __chkstk_darwin(v67 - v235);
  v236 = v67 - v235;
  v238 = *(sub_21E8(&qword_EF008, &unk_C5AD0) - 8);
  v239 = v238;
  v242 = *(v238 + 64);
  v240 = v242;
  v7 = __chkstk_darwin(v237);
  v244 = (v242 + 15) & 0xFFFFFFFFFFFFFFF0;
  v241 = v67 - v244;
  v8 = __chkstk_darwin(v7);
  v243 = v67 - v244;
  __chkstk_darwin(v8);
  v245 = v67 - v244;
  v307 = v67 - v244;
  v252 = type metadata accessor for DialogServiceButton();
  v9 = *(*(v252 - 8) + 64);
  v10 = __chkstk_darwin(v250);
  v253 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = v253;
  v304 = v10;
  v305 = v12;
  v302 = v13;
  v303 = v14;
  v300 = v15;
  v301 = v16;
  v299 = v6;
  v256 = v293;
  sub_24F4(v6 + 16, v293);
  v255 = v294;
  v254 = v295;
  sub_808C(v256, v294);
  v17 = *(v254 + 8);
  v257 = v296;
  v17(v255);
  sub_2560(v256);
  v259 = v297;
  v258 = v298;
  sub_808C(v257, v297);
  if (sub_C1F74())
  {
    v227 = 0;
  }

  else
  {
    v226 = v297;
    v225 = v298;
    sub_808C(v296, v297);
    v227 = sub_C1F84() ^ 1;
  }

  if (v227)
  {
    v223 = v297;
    v222 = v298;
    sub_808C(v296, v297);
    v224 = sub_C1FA4() ^ 1;
  }

  else
  {
    v224 = 0;
  }

  if (v224)
  {

    if (!v251)
    {
      v90 = 0;
      v91 = sub_1D918();
      v92 = sub_C3C64();
      sub_2560(v296);
      v101 = v92;
      v102 = v229;
      return v101;
    }

    v220 = v250;
    v221 = v251;
    v219 = v251;
    v218 = v250;
    v287 = v250;
    v288 = v251;

    v283 = v248;
    v284 = v249;

    if (v284)
    {
      v285 = v283;
      v286 = v284;
    }

    else
    {

      v285 = v218;
      v286 = v219;
      if (v284)
      {
        sub_8224(&v283);
      }
    }

    v209 = v286;
    sub_19BC4(v285, v286, v246, v247, v253);

    v216 = *v253;
    v210 = v216;
    v217 = *(v253 + 1);
    v211 = v217;

    v281 = v216;
    v282 = v217;
    sub_1D97C(&v253[*(v252 + 20)], v245);
    v18 = &v253[*(v252 + 24)];
    v214 = *v18;
    v212 = v214;
    v215 = *(v18 + 1);
    v213 = v215;

    v279 = v214;
    v280 = v215;
    v277 = v216;
    v278 = v217;
    v208 = v217 != 0;
    v207 = v208;

    if (v207)
    {

      if (v211)
      {
        v205 = v210;
        v206 = v211;
        v202 = v211;
        v203 = sub_C3594();

        v204 = v203 > 0;
        goto LABEL_20;
      }

      sub_C3B84();
      __break(1u);
    }

    v204 = 0;
LABEL_20:
    v201 = v204;

    if (v201)
    {
      v19 = v236;
      v20 = sub_BF704();
      (*(v232 + 16))(v19, v20, v230);

      v180 = 32;
      v185 = 32;
      v186 = 7;
      v21 = swift_allocObject();
      v22 = v211;
      v23 = v243;
      v24 = v21;
      v25 = v245;
      v177 = v24;
      *(v24 + 16) = v210;
      *(v24 + 24) = v22;
      sub_1D97C(v25, v23);
      v172 = (*(v239 + 80) + 16) & ~*(v239 + 80);
      v187 = swift_allocObject();
      sub_1DCD8(v243, (v187 + v172));
      v200 = sub_C3224();
      v173 = v200;
      v199 = sub_C3874();
      v174 = v199;
      v181 = 17;
      v190 = swift_allocObject();
      v175 = v190;
      *(v190 + 16) = v180;
      v191 = swift_allocObject();
      v176 = v191;
      v183 = 8;
      *(v191 + 16) = 8;
      v26 = swift_allocObject();
      v27 = v177;
      v178 = v26;
      *(v26 + 16) = sub_1DB8C;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v178;
      v192 = v28;
      v179 = v28;
      *(v28 + 16) = sub_7BBC;
      *(v28 + 24) = v29;
      v193 = swift_allocObject();
      v182 = v193;
      *(v193 + 16) = v180;
      v194 = swift_allocObject();
      v184 = v194;
      *(v194 + 16) = v183;
      v30 = swift_allocObject();
      v31 = v187;
      v188 = v30;
      *(v30 + 16) = sub_1DE00;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v188;
      v197 = v32;
      v189 = v32;
      *(v32 + 16) = sub_7BBC;
      *(v32 + 24) = v33;
      v198 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v195 = sub_C3C64();
      v196 = v34;

      v35 = v190;
      v36 = v196;
      *v196 = sub_7B48;
      v36[1] = v35;

      v37 = v191;
      v38 = v196;
      v196[2] = sub_7B48;
      v38[3] = v37;

      v39 = v192;
      v40 = v196;
      v196[4] = sub_7C08;
      v40[5] = v39;

      v41 = v193;
      v42 = v196;
      v196[6] = sub_7B48;
      v42[7] = v41;

      v43 = v194;
      v44 = v196;
      v196[8] = sub_7B48;
      v44[9] = v43;

      v45 = v196;
      v46 = v197;
      v196[10] = sub_7C08;
      v45[11] = v46;
      sub_4E48();

      if (os_log_type_enabled(v200, v199))
      {
        v47 = v229;
        v165 = sub_C3954();
        v162 = v165;
        v163 = sub_21E8(&qword_EE828, &qword_C5100);
        v166 = sub_5DD4(0);
        v164 = v166;
        v168 = 2;
        v167 = sub_5DD4(2);
        v264 = v165;
        v263 = v166;
        v262 = v167;
        v169 = &v264;
        sub_5E28(v168, &v264);
        sub_5E28(v168, v169);
        v260 = sub_7B48;
        v261 = v175;
        sub_5E3C(&v260, v169, &v263, &v262);
        v170 = v47;
        v171 = v47;
        if (v47)
        {
          v160 = 0;

          __break(1u);
        }

        else
        {
          v260 = sub_7B48;
          v261 = v176;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v158 = 0;
          v159 = 0;
          v260 = sub_7C08;
          v261 = v179;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v156 = 0;
          v157 = 0;
          v260 = sub_7B48;
          v261 = v182;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v154 = 0;
          v155 = 0;
          v260 = sub_7B48;
          v261 = v184;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v152 = 0;
          v153 = 0;
          v260 = sub_7C08;
          v261 = v189;
          sub_5E3C(&v260, &v264, &v263, &v262);
          v150 = 0;
          v151 = 0;
          _os_log_impl(&dword_0, v173, v174, "button with label: %s link: %s", v162, 0x16u);
          sub_5E88(v164);
          sub_5E88(v167);
          sub_C3934();

          v161 = v150;
        }
      }

      else
      {
        v48 = v229;

        v161 = v48;
      }

      v148 = v161;

      (*(v232 + 8))(v236, v230);
      sub_1E020();
      v149 = sub_EE34();
      v276 = v149;

      if (v211)
      {
        v146 = v210;
        v147 = v211;
        v143 = v211;
        v144 = sub_C3484();

        v145 = v144;
      }

      else
      {
        v145 = 0;
      }

      v138 = v145;
      [v149 setText:?];

      v139 = sub_C1AC4();
      v140 = *(v139 - 8);
      v141 = *(v140 + 48);
      v142 = (v140 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if ((v141)(v245, 1) != 1)
      {
        sub_1E084();
        v136 = sub_EE34();
        v265 = v136;
        sub_1D97C(v245, v241);
        v49 = v141(v241, 1, v139);
        if (v49 == 1)
        {
          v135 = 0;
        }

        else
        {
          sub_C1A74((v49 - 1));
          v134 = v50;
          (*(v140 + 8))(v241, v139);
          v135 = v134;
        }

        v128 = v135;
        [v136 setPunchOutUri:?];

        v131 = sub_21E8(&qword_EF080, &qword_C5AE0);
        v130 = sub_C3C64();
        v129 = v51;
        v52 = v136;
        v53 = v130;
        *v129 = v136;
        sub_4E48();
        v132 = v53;
        isa = sub_C36C4().super.isa;

        [v149 setCommands:isa];
      }

      else
      {
        v274 = v212;
        v275 = v213;
        v127 = v213 != 0;
        if (v213)
        {
          v124 = sub_21E8(&qword_EF080, &qword_C5AE0);
          v125 = sub_C3C64();
          v126 = v54;

          if (v213)
          {
            v122 = v212;
            v123 = v213;
          }

          else
          {
            sub_C3B84();
            __break(1u);
          }

          v118 = v123;
          v115 = v122;
          v117 = v267;
          sub_24F4(v228 + 16, v267);
          v114 = v268;
          v113 = v269;
          sub_808C(v117, v268);
          v55 = *(v113 + 8);
          v116 = &v266;
          v55(v114);
          v119 = sub_52CC4(v115, v118, v116);
          sub_2560(v116);
          sub_2560(v117);

          v56 = v125;
          *v126 = v119;
          sub_4E48();
          v120 = v56;
          v121 = sub_C36C4().super.isa;

          [v149 setCommands:v121];
        }

        else
        {
          v110 = sub_21E8(&qword_EF080, &qword_C5AE0);
          v109 = sub_C3C64();
          v107 = v57;
          v106 = v271;
          sub_24F4(v228 + 16, v271);
          v104 = v272;
          v103 = v273;
          sub_808C(v106, v272);
          v58 = *(v103 + 8);
          v105 = &v270;
          v58(v104);
          v108 = sub_52CC4(v218, v219, v105);
          sub_2560(v105);
          sub_2560(v106);
          v59 = v109;
          *v107 = v108;
          sub_4E48();
          v111 = v59;
          v112 = sub_C36C4().super.isa;

          [v149 setCommands:v112];
        }
      }

      v98 = sub_1D918();
      v99 = sub_C3C64();
      v97 = v60;
      v61 = v149;
      v62 = v99;
      *v97 = v149;
      sub_4E48();
      v100 = v62;

      sub_1DAA4(v245);

      sub_1A104(v253);

      sub_2560(v296);
      v101 = v100;
      v102 = v148;
    }

    else
    {
      v93 = 0;
      v94 = sub_1D918();
      v95 = sub_C3C64();
      v96 = v95;

      sub_1DAA4(v245);

      sub_1A104(v253);

      sub_2560(v296);
      v101 = v96;
      v102 = v229;
    }

    return v101;
  }

  v63 = v234;
  v64 = sub_BF704();
  (*(v232 + 16))(v63, v64, v230);
  v88 = sub_C3224();
  v85 = v88;
  v87 = sub_C3874();
  v86 = v87;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v89 = sub_C3C64();
  if (os_log_type_enabled(v88, v87))
  {
    v65 = v229;
    v76 = sub_C3954();
    v72 = v76;
    v73 = sub_21E8(&qword_EE828, &qword_C5100);
    v74 = 0;
    v77 = sub_5DD4(0);
    v75 = v77;
    v78 = sub_5DD4(v74);
    v292 = v76;
    v291 = v77;
    v290 = v78;
    v79 = 0;
    v80 = &v292;
    sub_5E28(0, &v292);
    sub_5E28(v79, v80);
    v289 = v89;
    v81 = v67;
    __chkstk_darwin(v67);
    v82 = &v67[-6];
    v83 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v84 = v65;
    if (v65)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v85, v86, "not creating snippets for device type", v72, 2u);
      v70 = 0;
      sub_5E88(v75);
      sub_5E88(v78);
      sub_C3934();

      v71 = v84;
    }
  }

  else
  {

    v71 = v229;
  }

  v69 = v71;

  (*(v232 + 8))(v234, v230);
  v67[1] = 0;
  v67[2] = sub_1D918();
  v68 = sub_C3C64();
  sub_2560(v296);
  v101 = v68;
  v102 = v69;
  return v101;
}

uint64_t sub_19948(uint64_t a1, uint64_t a2)
{

  v6 = a1;
  v7 = a2;
  if (a2)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = sub_C3564("-", 1uLL, 1);
    v9 = v2;
  }

  return v8;
}

uint64_t sub_199EC(uint64_t a1)
{
  v9 = a1;
  v10 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v9);
  v11 = &v5 - v10;
  sub_1D97C(v1, &v5 - v10);
  v12 = sub_C1AC4();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    sub_1DAA4(v11);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_C1A54();
    v6 = v2;
    (*(v13 + 8))(v11, v12);
    v7 = v5;
    v8 = v6;
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = sub_C3564("-", 1uLL, 1);
    v18 = v3;
    if (v16)
    {
      sub_8224(&v15);
    }
  }

  return v17;
}

double sub_19BC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v37 = a1;
  v38 = a2;
  v35 = a3;
  v36 = a4;

  if (!a2)
  {
    return sub_2F6D4(a5);
  }

  v32 = a1;
  v33 = a2;
  v40._countAndFlagsBits = sub_C3564("button", 6uLL, 1);
  v17 = sub_C3614(v40);

  if (v17)
  {

    v30 = a1;
    v31 = a2;
    v15 = a1;
    v16 = a2;
  }

  else
  {
    sub_C3564("button", 6uLL, 1);
    v41._countAndFlagsBits = sub_C3564("dal", 3uLL, 1);
    v14 = sub_C3614(v41);

    if (v14)
    {
      sub_1E0E8();
      sub_C3814();
      sub_C3634();
    }

    v12 = sub_C3554();
    v13 = v5;

    v30 = v12;
    v31 = v13;
    v15 = v12;
    v16 = v13;
  }

  sub_2E6E0(a3, a4, v15, v16, v39);
  sub_24F4(v22 + 16, v27);
  v8 = v28;
  v7 = v29;
  sub_808C(v27, v28);
  (*(v7 + 24))(v8);
  sub_24F4(v22 + 16, v24);
  v10 = v25;
  v9 = v26;
  sub_808C(v24, v25);
  v11 = (*(v9 + 32))(v10);
  sub_34638(v39, v11, a5);
  _objc_release(v11);
  sub_2560(v24);

  sub_2560(v27);
  sub_1CFBC(v39);
  sub_8224(&v30);

  return result;
}

void *sub_19F8C(uint64_t *a1, void *a2)
{
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a1;
    swift_errorRetain();
    *a2 = v4;
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t *sub_1A068(uint64_t *a1)
{
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v1 = sub_C2134();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1A104(uint64_t a1)
{
  v1 = *(a1 + 8);

  v4 = type metadata accessor for DialogServiceButton();
  v5 = *(v4 + 20);
  v7 = sub_C1AC4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  v2 = *(a1 + *(v4 + 24) + 8);

  return a1;
}

uint64_t sub_1A1F8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[8];
  v6 = v1[9];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_EF68(a1, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1A314()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A35C()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_1A36C(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_1A37C()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_1A38C(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return result;
}

uint64_t sub_1A39C()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  return result;
}

uint64_t sub_1A3AC(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t sub_1A3BC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v186 = a2;
  v185 = a1;
  v139 = a3;
  v140 = a1;
  v180 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222[0] = 0;
  v221[1] = 0;
  v221[0] = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212[1] = 0;
  v212[0] = 0;
  v207 = 0;
  v206 = 0;
  v141 = 0;
  v142 = sub_C24F4();
  v143 = *(v142 - 8);
  v144 = v143;
  v145 = *(v143 + 64);
  v4 = __chkstk_darwin(0);
  v147 = (v145 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = &v42 - v147;
  __chkstk_darwin(v4);
  v148 = &v42 - v147;
  v233 = &v42 - v147;
  v149 = sub_C25A4();
  v150 = *(v149 - 8);
  v151 = v150;
  v152 = *(v150 + 64);
  v5 = __chkstk_darwin(v180);
  v154 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  v153 = &v42 - v154;
  __chkstk_darwin(v5);
  v155 = &v42 - v154;
  v232 = &v42 - v154;
  v156 = sub_C2574();
  v157 = *(v156 - 8);
  v158 = v157;
  v6 = *(v157 + 64);
  __chkstk_darwin(v180);
  v159 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v159;
  v160 = sub_C2534();
  v161 = *(v160 - 8);
  v162 = v161;
  v163 = *(v161 + 64);
  v8 = __chkstk_darwin(v180);
  v165 = (v163 + 15) & 0xFFFFFFFFFFFFFFF0;
  v164 = &v42 - v165;
  __chkstk_darwin(v8);
  v166 = &v42 - v165;
  v230 = &v42 - v165;
  v167 = sub_C24C4();
  v168 = *(v167 - 8);
  v169 = v168;
  v170 = *(v168 + 64);
  __chkstk_darwin(v167 - 8);
  v172 = (v170 + 15) & 0xFFFFFFFFFFFFFFF0;
  v171 = &v42 - v172;
  __chkstk_darwin(&v42 - v172);
  v173 = &v42 - v172;
  v229 = &v42 - v172;
  v176 = *(*(sub_21E8(&qword_EF098, &qword_C5AE8) - 8) + 64);
  v9 = __chkstk_darwin(v180);
  v178 = (v176 + 15) & 0xFFFFFFFFFFFFFFF0;
  v174 = &v42 - v178;
  v10 = __chkstk_darwin(v9);
  v175 = &v42 - v178;
  v228 = &v42 - v178;
  v11 = __chkstk_darwin(v10);
  v177 = &v42 - v178;
  __chkstk_darwin(v11);
  v179 = &v42 - v178;
  v227 = &v42 - v178;
  v181 = sub_C2094();
  v182 = *(v181 - 8);
  v183 = v182;
  v12 = *(v182 + 64);
  __chkstk_darwin(v180);
  v184 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v184;
  v187 = sub_C3234();
  v188 = *(v187 - 8);
  v189 = v188;
  v190 = *(v188 + 64);
  v14 = __chkstk_darwin(v185);
  v192 = (v190 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = &v42 - v192;
  v15 = __chkstk_darwin(v14);
  v193 = &v42 - v192;
  v225 = v15;
  v224 = v16;
  v223 = v3;
  v222[1] = v16;
  v195 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v194 = v195;
  v196 = sub_1E160();
  if ((sub_C3804() & 1) == 0)
  {
    v20 = v191;
    v21 = sub_BF704();
    (*(v189 + 16))(v20, v21, v187);

    v105 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = v186;
    v116 = sub_C3224();
    v98 = v116;
    v115 = sub_C3874();
    v99 = v115;
    v100 = 17;
    v109 = swift_allocObject();
    v101 = v109;
    v102 = 32;
    *(v109 + 16) = 32;
    v22 = swift_allocObject();
    v23 = v102;
    v110 = v22;
    v103 = v22;
    *(v22 + 16) = 8;
    v104 = v23;
    v24 = swift_allocObject();
    v25 = v106;
    v107 = v24;
    *(v24 + 16) = sub_1E228;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v107;
    v113 = v26;
    v108 = v26;
    *(v26 + 16) = sub_7BBC;
    *(v26 + 24) = v27;
    v114 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v111 = sub_C3C64();
    v112 = v28;

    v29 = v109;
    v30 = v112;
    *v112 = sub_7B48;
    v30[1] = v29;

    v31 = v110;
    v32 = v112;
    v112[2] = sub_7B48;
    v32[3] = v31;

    v33 = v112;
    v34 = v113;
    v112[4] = sub_7C08;
    v33[5] = v34;
    sub_4E48();

    if (os_log_type_enabled(v116, v115))
    {
      v35 = v141;
      v91 = sub_C3954();
      v88 = v91;
      v89 = sub_21E8(&qword_EE828, &qword_C5100);
      v92 = sub_5DD4(0);
      v90 = v92;
      v94 = 1;
      v93 = sub_5DD4(1);
      v205 = v91;
      v204 = v92;
      v203 = v93;
      v95 = &v205;
      sub_5E28(2, &v205);
      sub_5E28(v94, v95);
      v201 = sub_7B48;
      v202 = v101;
      sub_5E3C(&v201, v95, &v204, &v203);
      v96 = v35;
      v97 = v35;
      if (v35)
      {
        v86 = 0;

        __break(1u);
      }

      else
      {
        v201 = sub_7B48;
        v202 = v103;
        sub_5E3C(&v201, &v205, &v204, &v203);
        v84 = 0;
        v85 = 0;
        v201 = sub_7C08;
        v202 = v108;
        sub_5E3C(&v201, &v205, &v204, &v203);
        v82 = 0;
        v83 = 0;
        _os_log_impl(&dword_0, v98, v99, "Creating NL context update for %s", v88, 0xCu);
        sub_5E88(v90);
        sub_5E88(v93);
        sub_C3934();

        v87 = v82;
      }
    }

    else
    {
      v36 = v141;

      v87 = v36;
    }

    v81 = v87;

    (*(v189 + 8))(v191, v187);
    sub_C2084();
    if (v140)
    {
      v213 = sub_C3C64();

      v211 = v186;
      sub_C3824();
      for (i = v81; ; i = v69)
      {
        v77 = i;
        sub_21E8(&qword_EF0A8, &qword_C5AF0);
        sub_C3B44();
        v78 = v209;
        v79 = v210;
        if (!v210)
        {
          break;
        }

        v75 = v78;
        v76 = v79;
        v71 = v79;
        v206 = v78;
        v207 = v79;
        sub_1BB48(v78, v79, v179);
        v72 = sub_C2464();
        v37 = *(v72 - 8);
        v73 = *(v37 + 48);
        v74 = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if ((v73)(v179, 1) != 1)
        {
          sub_C24B4();
          sub_C2524();
          sub_1E438(v179, v177);
          if (v73(v177, 1, v72) == 1)
          {
            sub_C3B84();
            __break(1u);
          }

          sub_C2514();
          (*(v162 + 16))(v164, v166, v160);
          sub_C24A4();
          (*(v169 + 16))(v171, v173, v167);
          sub_21E8(&qword_EF0C0, &unk_C5B00);
          sub_C3724();
          (*(v162 + 8))(v166, v160);
          (*(v169 + 8))(v173, v167);
        }

        v69 = v77;
        sub_1E390(v179);
      }

      sub_1D7C8(v212);
      v67 = v213;

      v208 = v67;
      v66 = sub_21E8(&qword_EF0C0, &unk_C5B00);
      sub_1E560();
      v68 = sub_C3804();

      if (v68)
      {
        (*(v183 + 56))(v139, 1, 1, v181);
        sub_1D7C8(&v213);
        (*(v183 + 8))(v184, v181);
        return v77;
      }

      sub_C2564();
      sub_C2594();
      v63 = v213;

      sub_C2584();
      (*(v151 + 16))(v153, v155, v149);
      sub_C2544();
      v64 = sub_C3C64();
      (*(v158 + 16))(v38, v159, v156);
      sub_4E48();
      sub_C2074();
      (*(v151 + 8))(v155, v149);
      (*(v158 + 8))(v159, v156);
      sub_1D7C8(&v213);
      v65 = v77;
    }

    else
    {
      v59 = 0;
      v60 = sub_C2464();
      v61 = v60;
      v222[0] = sub_C3C64();

      v220 = v186;
      sub_C3824();
      for (j = v81; ; j = v49)
      {
        v56 = j;
        sub_21E8(&qword_EF0A8, &qword_C5AF0);
        sub_C3B44();
        v57 = v218;
        v58 = v219;
        if (!v219)
        {
          break;
        }

        v54 = v57;
        v55 = v58;
        v51 = v58;
        v214 = v57;
        v215 = v58;
        sub_1BB48(v57, v58, v175);
        v39 = *(v61 - 8);
        v52 = *(v39 + 48);
        v53 = (v39 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if ((v52)(v175, 1) != 1)
        {
          sub_1E438(v175, v174);
          if (v52(v174, 1, v61) == 1)
          {
            sub_C3B84();
            __break(1u);
          }

          sub_21E8(&qword_EF0B0, &qword_C5AF8);
          sub_C3724();
        }

        v49 = v56;
        sub_1E390(v175);
      }

      sub_1D7C8(v221);
      v47 = v222[0];

      v217 = v47;
      v46 = sub_21E8(&qword_EF0B0, &qword_C5AF8);
      sub_1E308();
      v48 = sub_C3804();

      if (v48)
      {
        (*(v183 + 56))(v139, 1, 1, v181);
        sub_1D7C8(v222);
        (*(v183 + 8))(v184, v181);
        return v56;
      }

      v216 = v159;
      sub_C2564();
      sub_C24E4();
      v44 = v222[0];

      sub_C24D4();
      (*(v144 + 16))(v146, v148, v142);
      sub_C2554();
      v45 = sub_C3C64();
      (*(v158 + 16))(v40, v159, v156);
      sub_4E48();
      sub_C2074();
      (*(v144 + 8))(v148, v142);
      (*(v158 + 8))(v159, v156);
      sub_1D7C8(v222);
      v65 = v56;
    }

    v43 = v65;
    (*(v183 + 16))(v139, v184, v181);
    (*(v183 + 56))(v139, 0, 1, v181);
    (*(v183 + 8))(v184, v181);
    return v43;
  }

  v17 = v193;
  v18 = sub_BF704();
  (*(v189 + 16))(v17, v18, v187);
  v137 = sub_C3224();
  v134 = v137;
  v136 = sub_C3874();
  v135 = v136;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v138 = sub_C3C64();
  if (os_log_type_enabled(v137, v136))
  {
    v19 = v141;
    v125 = sub_C3954();
    v121 = v125;
    v122 = sub_21E8(&qword_EE828, &qword_C5100);
    v123 = 0;
    v126 = sub_5DD4(0);
    v124 = v126;
    v127 = sub_5DD4(v123);
    v200[0] = v125;
    v199 = v126;
    v198 = v127;
    v128 = 0;
    v129 = v200;
    sub_5E28(0, v200);
    sub_5E28(v128, v129);
    v197 = v138;
    v130 = &v42;
    __chkstk_darwin(&v42);
    v131 = &v42 - 6;
    v132 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v133 = v19;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v134, v135, "Received empty intents for context update", v121, 2u);
      v119 = 0;
      sub_5E88(v124);
      sub_5E88(v127);
      sub_C3934();

      v120 = v133;
    }
  }

  else
  {

    v120 = v141;
  }

  v117 = v120;

  (*(v189 + 8))(v193, v187);
  (*(v183 + 56))(v139, 1, 1, v181);
  return v117;
}

uint64_t sub_1BAAC()
{
  sub_C3564(",", 1uLL, 1);
  sub_21E8(&qword_EEFE0, &qword_C5AB0);
  sub_1EC2C();
  v1 = sub_C3464();

  return v1;
}

uint64_t sub_1BB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v34 = a1;
  v35 = a2;
  v14 = sub_1D834;
  v15 = sub_7BBC;
  v16 = sub_7B48;
  v17 = sub_7B48;
  v18 = sub_7C08;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v19 = sub_C3234();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v12[-v22];
  v24 = sub_C2464();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v49 = &v12[-v27];
  v28 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12[-v27]);
  v29 = &v12[-v28];
  v60 = &v12[-v28];
  v30 = (*(*(sub_21E8(&qword_EF0D0, qword_C66B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v47 = &v12[-v30];
  v40 = sub_C28A4();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v31 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v39 = &v12[-v31];
  v58 = v5;
  v59 = v6;
  v57 = v3;
  sub_C2B54();
  v43 = sub_C2B44();
  v56 = v43;
  sub_C2B14();
  v41 = sub_C2B04();
  v55 = v41;

  v46 = 1;
  v32 = sub_C3564("com.apple.cati", 0xEuLL, 1);
  v33 = v7;
  v36 = IdentifierNamespaceGuid;
  _objc_retain(IdentifierNamespaceGuid);
  sub_C3494();
  sub_C2874();
  _objc_release(v36);
  sub_C2864();
  (*(v37 + 8))(v39, v40);
  sub_C29B4();
  v45 = sub_C28B4();
  v42 = sub_C3C64();
  v44 = v8;

  v9 = v42;
  *v44 = v43;
  sub_4E48();
  v48 = v9;
  v10 = sub_C2904();
  (*(*(v10 - 8) + 56))(v47, v46);
  v50 = sub_C28F4();
  sub_1E5E8(v47);

  v54 = v50;
  sub_C25F4();
  v52 = 0;
  (*(v25 + 32))(v29, v49, v24);
  (*(v25 + 16))(v13, v29, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  (*(v25 + 8))(v29, v24);
}

uint64_t sub_1C7F0()
{
  sub_2560((v0 + 16));
  sub_BA04(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_previousProfanityAtSiri);
  sub_8224(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin18CannedDialogHelper_followUpId);
  return v2;
}

uint64_t sub_1C848()
{
  v0 = *sub_1C7F0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1C928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1C968()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1C9A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1C9F0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_EEA4(a1);
}

uint64_t type metadata accessor for CannedDialogHelper()
{
  v1 = qword_EF100;
  if (!qword_EF100)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1CA74()
{
  v2 = qword_EEFC0;
  if (!qword_EEFC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EEFC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1CAD8()
{
  v2 = qword_EEFC8;
  if (!qword_EEFC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EEFC8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1CB3C(const void *a1, void *a2)
{
  v6 = sub_C2094();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EEF98, &qword_C5A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t *sub_1CC64(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_1CCE4(uint64_t a1)
{
  v3 = sub_C2094();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1CD8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CE30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CE70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1CEB0()
{
  v2 = qword_EEFD8;
  if (!qword_EEFD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EEFD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1CF14(uint64_t a1)
{
  v3 = sub_C2DB4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1CFBC(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  v3 = a1[5];

  v4 = a1[7];

  return a1;
}

unint64_t sub_1D00C()
{
  v2 = qword_EEFE8;
  if (!qword_EEFE8)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EEFE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D094()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D178()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D1B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D25C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D29C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_1D2DC(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];

  a2[3] = v4;
  a2[4] = a1[4];
  v6 = a1[5];

  a2[5] = v6;
  a2[6] = a1[6];
  v8 = a1[7];

  result = a2;
  a2[7] = v8;
  return result;
}

uint64_t sub_1D38C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1D444()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D484()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_1D4E4(void *a1, void *a2)
{
  *a2 = *a1;
  v6 = a1[1];

  a2[1] = v6;
  v7 = *(sub_21E8(&qword_EEFF0, &qword_C5AB8) + 48);
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a1 + v7);
    swift_errorRetain();
    *(a2 + v7) = v4;
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 16))();
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_1D624(const void *a1, void *a2)
{
  v6 = sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1D6F4(uint64_t a1)
{
  v1 = *(a1 + 8);

  v5 = *(sub_21E8(&qword_EEFF0, &qword_C5AB8) + 48);
  sub_21E8(&qword_EEF88, &unk_C5A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(a1 + v5);
  }

  else
  {
    v2 = sub_C2134();
    (*(*(v2 - 8) + 8))(a1 + v5);
  }

  return a1;
}

uint64_t *sub_1D7C8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1D7F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D834()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_17154();
  return result;
}

uint64_t sub_1D898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1D918()
{
  v2 = qword_EF010;
  if (!qword_EF010)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF010);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1D97C(const void *a1, void *a2)
{
  v6 = sub_C1AC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1DAA4(uint64_t a1)
{
  v3 = sub_C1AC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1DB4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DB98()
{
  v3 = *(sub_21E8(&qword_EF008, &unk_C5AD0) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = sub_C1AC4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

void *sub_1DCD8(const void *a1, void *a2)
{
  v6 = sub_C1AC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1DE00()
{
  v1 = *(sub_21E8(&qword_EF008, &unk_C5AD0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_199EC(v2);
}

uint64_t sub_1DEC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DF08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DFA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DFE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1E020()
{
  v2 = qword_EF018;
  if (!qword_EF018)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF018);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1E084()
{
  v2 = qword_EF088;
  if (!qword_EF088)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF088);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1E0E8()
{
  v2 = qword_EF090;
  if (!qword_EF090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E160()
{
  v2 = qword_EF0A0;
  if (!qword_EF0A0)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E1E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E288()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E2C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1E308()
{
  v2 = qword_EF0B8;
  if (!qword_EF0B8)
  {
    sub_81B0(&qword_EF0B0, &qword_C5AF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF0B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E390(uint64_t a1)
{
  v3 = sub_C2464();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1E438(const void *a1, void *a2)
{
  v6 = sub_C2464();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EF098, &qword_C5AE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1E560()
{
  v2 = qword_EF0C8;
  if (!qword_EF0C8)
  {
    sub_81B0(&qword_EF0C0, &unk_C5B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF0C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1E5E8(uint64_t a1)
{
  v3 = sub_C2904();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1E690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E728()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E7C4()
{
  v2 = sub_1E8B0();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1E8B0()
{
  v4 = qword_EF110;
  if (!qword_EF110)
  {
    sub_C1B54();
    v3 = sub_C3964();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_EF110);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1E980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 65))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1EA60(uint64_t result, int a2, int a3)
{
  v3 = (result + 65);
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 64) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

unint64_t sub_1EC2C()
{
  v2 = qword_EF238;
  if (!qword_EF238)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1ECB4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1ED14()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1ED6C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1EE04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1EE44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1EEDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1EF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1EFB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1EFF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F068()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1F0B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F0F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v1 = sub_1F158();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_1F158()
{
  v2 = qword_EF240;
  if (!qword_EF240)
  {
    sub_81B0(&qword_EEFE0, &qword_C5AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1F238()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F284()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F2C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F35C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F39C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F434()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F4E0()
{
  v3 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = sub_C2094();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

void *sub_1F620(const void *a1, void *a2)
{
  v6 = sub_C2094();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EEF98, &qword_C5A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1F748()
{
  v1 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_11794(v2);
}

uint64_t sub_1F810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F968()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1FA00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1FA40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *sub_1FA80(uint64_t *a1)
{
  if (a1[3])
  {
    sub_2560(a1);
  }

  return a1;
}

uint64_t sub_1FABC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1FB54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1FB94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1FBD4()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_1FC00()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  swift_endAccess();
  return v2;
}

uint64_t sub_1FC5C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1FD28()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_1FD54()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_1FD80()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t sub_1FDD0(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;

  swift_endAccess();
}

uint64_t sub_1FEAC()
{
  swift_beginAccess();
  v2 = *(v0 + 160);

  swift_endAccess();
  return v2;
}

uint64_t sub_1FEFC(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 160);
  *(v1 + 160) = a1;

  swift_endAccess();
}

uint64_t sub_20004(uint64_t *a1)
{
  v243 = a1;
  v270 = 0;
  v291 = 0;
  v290 = 0;
  v287[1] = 0;
  v287[0] = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v242 = 0;
  v280 = 0;
  v279 = 0;
  v267 = sub_C3234();
  v244 = v267;
  v245 = *(v267 - 8);
  v266 = v245;
  v246 = v245;
  v247 = *(v245 + 64);
  v1 = v182 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = v1;
  v290 = __chkstk_darwin(v243);
  v291 = v2;
  v252 = v2;
  v262 = &type metadata for String;
  v249 = 5;
  v251 = sub_C3C64();
  v250 = v3;
  v258 = 1;
  v4 = sub_C3564("en-AU", v249, 1);
  v5 = v250;
  v6 = v258;
  v8 = v7;
  v9 = v249;
  *v250 = v4;
  v5[1] = v8;
  v10 = sub_C3564("en-CA", v9, v6);
  v11 = v250;
  v12 = v258;
  v14 = v13;
  v15 = v249;
  v250[2] = v10;
  v11[3] = v14;
  v16 = sub_C3564("en-IN", v15, v12);
  v17 = v250;
  v18 = v258;
  v20 = v19;
  v21 = v249;
  v250[4] = v16;
  v17[5] = v20;
  v22 = sub_C3564("en-GB", v21, v18);
  v23 = v250;
  v24 = v258;
  v26 = v25;
  v27 = v249;
  v250[6] = v22;
  v23[7] = v26;
  v28 = sub_C3564("en-US", v27, v24);
  v29 = v250;
  v30 = v28;
  v31 = v251;
  v250[8] = v30;
  v29[9] = v32;
  sub_4E48();
  v33 = v258;
  *(v252 + 72) = v31;
  v253 = v291;
  v34 = sub_C3564("com.apple.siri.SiriSocialConversation", 0x25uLL, v33);
  v35 = v253;
  *(v253 + 80) = v34;
  *(v35 + 88) = v36;
  v257 = v291;
  v256 = sub_C3C64();
  v255 = v37;
  v254 = 2;
  v38 = sub_C3564("ar", 2uLL, v258);
  v39 = v255;
  v40 = v258;
  v42 = v41;
  v43 = v254;
  *v255 = v38;
  v39[1] = v42;
  v44 = sub_C3564("en", v43, v40);
  v45 = v255;
  v46 = v258;
  v48 = v47;
  v49 = v254;
  v255[2] = v44;
  v45[3] = v48;
  v50 = sub_C3564("fr", v49, v46);
  v51 = v255;
  v52 = v258;
  v54 = v53;
  v55 = v254;
  v255[4] = v50;
  v51[5] = v54;
  v56 = sub_C3564("it", v55, v52);
  v57 = v255;
  v58 = v258;
  v60 = v59;
  v61 = v254;
  v255[6] = v56;
  v57[7] = v60;
  v62 = sub_C3564("ms", v61, v58);
  v63 = v255;
  v64 = v258;
  v66 = v65;
  v67 = v254;
  v255[8] = v62;
  v63[9] = v66;
  v68 = sub_C3564("pt", v67, v64);
  v69 = v255;
  v70 = v258;
  v72 = v71;
  v73 = v254;
  v255[10] = v68;
  v69[11] = v72;
  v74 = sub_C3564("th", v73, v70);
  v75 = v255;
  v76 = v258;
  v78 = v77;
  v79 = v254;
  v255[12] = v74;
  v75[13] = v78;
  v80 = sub_C3564("zh", v79, v76);
  v81 = v255;
  v82 = v258;
  v84 = v83;
  v85 = v254;
  v255[14] = v80;
  v81[15] = v84;
  v86 = sub_C3564("da", v85, v82);
  v87 = v255;
  v88 = v258;
  v90 = v89;
  v91 = v254;
  v255[16] = v86;
  v87[17] = v90;
  v92 = sub_C3564("es", v91, v88);
  v93 = v255;
  v94 = v258;
  v96 = v95;
  v97 = v254;
  v255[18] = v92;
  v93[19] = v96;
  v98 = sub_C3564("he", v97, v94);
  v99 = v255;
  v100 = v258;
  v102 = v101;
  v103 = v254;
  v255[20] = v98;
  v99[21] = v102;
  v104 = sub_C3564("ja", v103, v100);
  v105 = v255;
  v106 = v258;
  v108 = v107;
  v109 = v254;
  v255[22] = v104;
  v105[23] = v108;
  v110 = sub_C3564("nb", v109, v106);
  v111 = v255;
  v112 = v258;
  v114 = v113;
  v115 = v254;
  v255[24] = v110;
  v111[25] = v114;
  v116 = sub_C3564("ru", v115, v112);
  v117 = v255;
  v118 = v258;
  v120 = v119;
  v121 = v254;
  v255[26] = v116;
  v117[27] = v120;
  v122 = sub_C3564("tr", v121, v118);
  v123 = v255;
  v124 = v258;
  v126 = v125;
  v127 = v254;
  v255[28] = v122;
  v123[29] = v126;
  v128 = sub_C3564("de", v127, v124);
  v129 = v255;
  v130 = v258;
  v132 = v131;
  v133 = v254;
  v255[30] = v128;
  v129[31] = v132;
  v134 = sub_C3564("fi", v133, v130);
  v135 = v255;
  v136 = v258;
  v138 = v137;
  v139 = v254;
  v255[32] = v134;
  v135[33] = v138;
  v140 = sub_C3564("hi", v139, v136);
  v141 = v255;
  v142 = v258;
  v144 = v143;
  v145 = v254;
  v255[34] = v140;
  v141[35] = v144;
  v146 = sub_C3564("ko", v145, v142);
  v147 = v255;
  v148 = v258;
  v150 = v149;
  v151 = v254;
  v255[36] = v146;
  v147[37] = v150;
  v152 = sub_C3564("nl", v151, v148);
  v153 = v255;
  v154 = v258;
  v156 = v155;
  v157 = v254;
  v255[38] = v152;
  v153[39] = v156;
  v158 = sub_C3564("sv", v157, v154);
  v159 = v255;
  v160 = v258;
  v255[40] = v158;
  v159[41] = v161;
  v162 = sub_C3564("yue", 3uLL, v160);
  v163 = v255;
  v164 = v162;
  v165 = v256;
  v255[42] = v164;
  v163[43] = v166;
  sub_4E48();
  *(v257 + 96) = v165;
  v261 = v291;
  v260 = sub_C3C64();
  v259 = v167;
  v168 = sub_C3564("dalTellBearStory", 0x10uLL, v258);
  v169 = v259;
  v170 = v168;
  v171 = v260;
  *v259 = v170;
  v169[1] = v172;
  sub_4E48();
  v173 = v270;
  *(v261 + 104) = v171;
  *(v291 + 112) = v173;
  v265 = v291;
  sub_21E8(&qword_EF250, &unk_C5BD0);
  v263 = sub_C3C64();
  v264 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  *(v265 + 160) = sub_C3374();
  v174 = sub_BF704();
  (*(v266 + 16))(v1, v174, v267);
  v272 = sub_C3224();
  v268 = v272;
  v271 = sub_C3874();
  v269 = v271;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v273 = sub_C3C64();
  if (os_log_type_enabled(v272, v271))
  {
    v175 = v242;
    v233 = sub_C3954();
    v229 = v233;
    v230 = sub_21E8(&qword_EE828, &qword_C5100);
    v231 = 0;
    v234 = sub_5DD4(0);
    v232 = v234;
    v235 = sub_5DD4(v231);
    v277 = v233;
    v276 = v234;
    v275 = v235;
    v236 = 0;
    v237 = &v277;
    sub_5E28(0, &v277);
    sub_5E28(v236, v237);
    v274 = v273;
    v238 = v182;
    __chkstk_darwin(v182);
    v239 = &v182[-6];
    v182[-4] = v176;
    v182[-3] = &v276;
    v182[-2] = &v275;
    v240 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v241 = v175;
    if (v175)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v268, v269, "Initializing override SocialConversation plugin", v229, 2u);
      v227 = 0;
      sub_5E88(v232);
      sub_5E88(v235);
      sub_C3934();

      v228 = v241;
    }
  }

  else
  {

    v228 = v242;
  }

  v225 = v228;

  (*(v246 + 8))(v248, v244);
  v220 = v291;
  v219 = sub_C1DC4();
  v177 = sub_C1DB4();
  v289[3] = v219;
  v289[4] = &protocol witness table for AuthoredFlowFactory;
  v289[0] = v177;
  sub_BD6C(v289, (v220 + 120));
  v221 = v288;
  sub_24F4(v243, v288);
  v223 = sub_BF288(v221);
  v222 = v223;

  v291 = v223;
  v224 = *(v223 + 96);

  v286 = v224;
  sub_1E160();
  sub_C3824();
  for (i = v225; ; i = v185)
  {
    v216 = i;
    sub_21E8(&qword_EF0A8, &qword_C5AF0);
    sub_C3B44();
    v217 = v284;
    v218 = v285;
    if (!v285)
    {
      break;
    }

    v214 = v217;
    v215 = v218;
    v179 = v216;
    v204 = v218;
    v203 = v217;
    v282 = v217;
    v283 = v218;
    v207 = 0;
    sub_C2E54();

    v205 = sub_C2E34();
    v208 = sub_C2E44();
    v206 = v208;

    v281 = v208;
    sub_210D0();
    type metadata accessor for SocialConversationFlowDelegatePlugin();
    v209 = sub_2115C();
    v180 = sub_A7FFC(v208, v209);
    v210 = v179;
    v211 = v180;
    v212 = v181;
    v213 = v179;
    if (v179)
    {
      v182[1] = v213;
      v183 = 0;
      v184 = 0;

      v200 = v183;
      v201 = v183;
      v202 = v184;
    }

    else
    {
      v198 = v212;
      v199 = v211;

      v200 = v199;
      v201 = v198;
      v202 = v210;
    }

    v195 = v202;
    v196 = v201;
    v197 = v200;
    if (v201)
    {
      v193 = v197;
      v194 = v196;
      v192 = v196;
      v190 = v197;
      v279 = v197;
      v280 = v196;
      v186 = 0;
      sub_C2EA4();
      v187 = v291;
      v188 = &v278;
      swift_beginAccess();
      v189 = *(v187 + 80);
      v191 = *(v187 + 88);

      swift_endAccess();
      sub_C2E84();
    }

    v185 = v195;
  }

  sub_1D7C8(v287);
  sub_2560(v243);

  return v222;
}

unint64_t sub_210D0()
{
  v2 = qword_EF258;
  if (!qword_EF258)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF258);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_2115C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t sub_21208(uint64_t *a1, uint64_t *a2)
{
  v201 = a2;
  v200 = a1;
  v227 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v199 = 0;
  v224 = sub_C3234();
  v202 = v224;
  v203 = *(v224 - 8);
  v223 = v203;
  v204 = v203;
  v205 = *(v203 + 64);
  v2 = &v180 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v2;
  v238 = __chkstk_darwin(v200);
  v237 = v3;
  v239 = v4;
  v210 = v4;
  v220 = &type metadata for String;
  v207 = 5;
  v209 = sub_C3C64();
  v208 = v5;
  v216 = 1;
  v6 = sub_C3564("en-AU", v207, 1);
  v7 = v208;
  v8 = v216;
  v10 = v9;
  v11 = v207;
  *v208 = v6;
  v7[1] = v10;
  v12 = sub_C3564("en-CA", v11, v8);
  v13 = v208;
  v14 = v216;
  v16 = v15;
  v17 = v207;
  v208[2] = v12;
  v13[3] = v16;
  v18 = sub_C3564("en-IN", v17, v14);
  v19 = v208;
  v20 = v216;
  v22 = v21;
  v23 = v207;
  v208[4] = v18;
  v19[5] = v22;
  v24 = sub_C3564("en-GB", v23, v20);
  v25 = v208;
  v26 = v216;
  v28 = v27;
  v29 = v207;
  v208[6] = v24;
  v25[7] = v28;
  v30 = sub_C3564("en-US", v29, v26);
  v31 = v208;
  v32 = v30;
  v33 = v209;
  v208[8] = v32;
  v31[9] = v34;
  sub_4E48();
  v35 = v216;
  *(v210 + 72) = v33;
  v211 = v239;
  v36 = sub_C3564("com.apple.siri.SiriSocialConversation", 0x25uLL, v35);
  v37 = v211;
  *(v211 + 80) = v36;
  *(v37 + 88) = v38;
  v215 = v239;
  v214 = sub_C3C64();
  v213 = v39;
  v212 = 2;
  v40 = sub_C3564("ar", 2uLL, v216);
  v41 = v213;
  v42 = v216;
  v44 = v43;
  v45 = v212;
  *v213 = v40;
  v41[1] = v44;
  v46 = sub_C3564("en", v45, v42);
  v47 = v213;
  v48 = v216;
  v50 = v49;
  v51 = v212;
  v213[2] = v46;
  v47[3] = v50;
  v52 = sub_C3564("fr", v51, v48);
  v53 = v213;
  v54 = v216;
  v56 = v55;
  v57 = v212;
  v213[4] = v52;
  v53[5] = v56;
  v58 = sub_C3564("it", v57, v54);
  v59 = v213;
  v60 = v216;
  v62 = v61;
  v63 = v212;
  v213[6] = v58;
  v59[7] = v62;
  v64 = sub_C3564("ms", v63, v60);
  v65 = v213;
  v66 = v216;
  v68 = v67;
  v69 = v212;
  v213[8] = v64;
  v65[9] = v68;
  v70 = sub_C3564("pt", v69, v66);
  v71 = v213;
  v72 = v216;
  v74 = v73;
  v75 = v212;
  v213[10] = v70;
  v71[11] = v74;
  v76 = sub_C3564("th", v75, v72);
  v77 = v213;
  v78 = v216;
  v80 = v79;
  v81 = v212;
  v213[12] = v76;
  v77[13] = v80;
  v82 = sub_C3564("zh", v81, v78);
  v83 = v213;
  v84 = v216;
  v86 = v85;
  v87 = v212;
  v213[14] = v82;
  v83[15] = v86;
  v88 = sub_C3564("da", v87, v84);
  v89 = v213;
  v90 = v216;
  v92 = v91;
  v93 = v212;
  v213[16] = v88;
  v89[17] = v92;
  v94 = sub_C3564("es", v93, v90);
  v95 = v213;
  v96 = v216;
  v98 = v97;
  v99 = v212;
  v213[18] = v94;
  v95[19] = v98;
  v100 = sub_C3564("he", v99, v96);
  v101 = v213;
  v102 = v216;
  v104 = v103;
  v105 = v212;
  v213[20] = v100;
  v101[21] = v104;
  v106 = sub_C3564("ja", v105, v102);
  v107 = v213;
  v108 = v216;
  v110 = v109;
  v111 = v212;
  v213[22] = v106;
  v107[23] = v110;
  v112 = sub_C3564("nb", v111, v108);
  v113 = v213;
  v114 = v216;
  v116 = v115;
  v117 = v212;
  v213[24] = v112;
  v113[25] = v116;
  v118 = sub_C3564("ru", v117, v114);
  v119 = v213;
  v120 = v216;
  v122 = v121;
  v123 = v212;
  v213[26] = v118;
  v119[27] = v122;
  v124 = sub_C3564("tr", v123, v120);
  v125 = v213;
  v126 = v216;
  v128 = v127;
  v129 = v212;
  v213[28] = v124;
  v125[29] = v128;
  v130 = sub_C3564("de", v129, v126);
  v131 = v213;
  v132 = v216;
  v134 = v133;
  v135 = v212;
  v213[30] = v130;
  v131[31] = v134;
  v136 = sub_C3564("fi", v135, v132);
  v137 = v213;
  v138 = v216;
  v140 = v139;
  v141 = v212;
  v213[32] = v136;
  v137[33] = v140;
  v142 = sub_C3564("hi", v141, v138);
  v143 = v213;
  v144 = v216;
  v146 = v145;
  v147 = v212;
  v213[34] = v142;
  v143[35] = v146;
  v148 = sub_C3564("ko", v147, v144);
  v149 = v213;
  v150 = v216;
  v152 = v151;
  v153 = v212;
  v213[36] = v148;
  v149[37] = v152;
  v154 = sub_C3564("nl", v153, v150);
  v155 = v213;
  v156 = v216;
  v158 = v157;
  v159 = v212;
  v213[38] = v154;
  v155[39] = v158;
  v160 = sub_C3564("sv", v159, v156);
  v161 = v213;
  v162 = v216;
  v213[40] = v160;
  v161[41] = v163;
  v164 = sub_C3564("yue", 3uLL, v162);
  v165 = v213;
  v166 = v164;
  v167 = v214;
  v213[42] = v166;
  v165[43] = v168;
  sub_4E48();
  *(v215 + 96) = v167;
  v219 = v239;
  v218 = sub_C3C64();
  v217 = v169;
  v170 = sub_C3564("dalTellBearStory", 0x10uLL, v216);
  v171 = v217;
  v172 = v170;
  v173 = v218;
  *v217 = v172;
  v171[1] = v174;
  sub_4E48();
  v175 = v227;
  *(v219 + 104) = v173;
  *(v239 + 112) = v175;
  v222 = v239;
  sub_21E8(&qword_EF250, &unk_C5BD0);
  v221 = sub_C3C64();
  sub_21E8(&qword_EEFE0, &qword_C5AB0);
  *(v222 + 160) = sub_C3374();
  v176 = sub_BF704();
  (*(v223 + 16))(v2, v176, v224);
  v229 = sub_C3224();
  v225 = v229;
  v228 = sub_C3874();
  v226 = v228;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v230 = sub_C3C64();
  if (os_log_type_enabled(v229, v228))
  {
    v177 = v199;
    v190 = sub_C3954();
    v186 = v190;
    v187 = sub_21E8(&qword_EE828, &qword_C5100);
    v188 = 0;
    v191 = sub_5DD4(0);
    v189 = v191;
    v192 = sub_5DD4(v188);
    v234 = v190;
    v233 = v191;
    v232 = v192;
    v193 = 0;
    v194 = &v234;
    sub_5E28(0, &v234);
    sub_5E28(v193, v194);
    v231 = v230;
    v195 = &v180;
    __chkstk_darwin(&v180);
    v196 = &v180 - 6;
    *(&v180 - 4) = v178;
    *(&v180 - 3) = &v233;
    *(&v180 - 2) = &v232;
    v197 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v198 = v177;
    if (v177)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v225, v226, "Initializing SocialConversation plugin", v186, 2u);
      v184 = 0;
      sub_5E88(v189);
      sub_5E88(v192);
      sub_C3934();

      v185 = v198;
    }
  }

  else
  {

    v185 = v199;
  }

  (*(v204 + 8))(v206, v202);
  v180 = v239;
  v181 = v236;
  sub_24F4(v201, v236);
  sub_BD6C(v181, (v180 + 120));
  v182 = v235;
  sub_24F4(v200, v235);
  v183 = sub_BF288(v182);

  v239 = v183;
  sub_2560(v201);
  sub_2560(v200);

  return v183;
}

uint64_t sub_21E18()
{
  v34 = 0;
  v25 = 0;
  v31 = sub_C3234();
  v26 = v31;
  v27 = *(v31 - 8);
  v30 = v27;
  v28 = v27;
  v0 = *(v27 + 64);
  __chkstk_darwin(v31 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2;
  v3 = sub_BF704();
  (*(v30 + 16))(v2, v3, v31);
  v36 = sub_C3224();
  v32 = v36;
  v35 = sub_C3874();
  v33 = v35;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v37 = sub_C3C64();
  if (os_log_type_enabled(v36, v35))
  {
    v4 = v25;
    v16 = sub_C3954();
    v12 = v16;
    v13 = sub_21E8(&qword_EE828, &qword_C5100);
    v14 = 0;
    v17 = sub_5DD4(0);
    v15 = v17;
    v18 = sub_5DD4(v14);
    v41 = v16;
    v40 = v17;
    v39 = v18;
    v19 = 0;
    v20 = &v41;
    sub_5E28(0, &v41);
    sub_5E28(v19, v20);
    v38 = v37;
    v21 = &v8;
    __chkstk_darwin(&v8);
    v22 = &v8 - 6;
    *(&v8 - 4) = v5;
    *(&v8 - 3) = &v40;
    *(&v8 - 2) = &v39;
    v23 = sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v32, v33, "convenience Initializing SocialConversation plugin", v12, 2u);
      v10 = 0;
      sub_5E88(v15);
      sub_5E88(v18);
      sub_C3934();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v28 + 8))(v29, v26);
  v8 = type metadata accessor for SharedObjectProvider();
  v6 = sub_2224C();
  v42[3] = v8;
  v42[4] = &off_E3D98;
  v42[0] = v6;
  v9 = sub_1FFB8(v42);

  v42[5] = v9;

  return v9;
}

uint64_t sub_22288(uint64_t a1)
{
  v454 = a1;
  v432 = 0;
  v559 = 0;
  v558 = 0;
  v557 = 0;
  v556 = 0;
  v401 = 0;
  v549 = 0;
  v548 = 0;
  v544 = 0;
  v533 = 0;
  v527 = 0;
  v402 = (*(*(sub_21E8(&qword_EE820, &qword_C5A60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v403 = &v114 - v402;
  v404 = sub_C1D34();
  v405 = *(v404 - 8);
  v406 = v405;
  v408 = *(v405 + 64);
  v407 = v408;
  __chkstk_darwin(v404 - 8);
  v410 = (v408 + 15) & 0xFFFFFFFFFFFFFFF0;
  v409 = &v114 - v410;
  __chkstk_darwin(&v114 - v410);
  v411 = &v114 - v410;
  v559 = &v114 - v410;
  v412 = sub_21E8(&qword_EE800, &unk_C50E0);
  v413 = *(v412 - 8);
  v414 = v413;
  v415 = (*(v413 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v412 - 8);
  v416 = &v114 - v415;
  v417 = (*(*(sub_21E8(&qword_EE808, &unk_C5BE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v432);
  v418 = &v114 - v417;
  v419 = type metadata accessor for INSiriSocialConversation();
  v420 = *(v419 - 8);
  v421 = v420;
  v423 = *(v420 + 64);
  v422 = v423;
  __chkstk_darwin(v419 - 8);
  v425 = (v423 + 15) & 0xFFFFFFFFFFFFFFF0;
  v424 = &v114 - v425;
  __chkstk_darwin(&v114 - v425);
  v426 = &v114 - v425;
  v558 = &v114 - v425;
  v427 = sub_21E8(&qword_EEE30, &qword_C5980);
  v428 = *(v427 - 8);
  v429 = v428;
  v430 = (*(v428 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v432);
  v431 = &v114 - v430;
  v462 = sub_C23B4();
  v433 = v462;
  v434 = *(v462 - 8);
  v460 = v434;
  v457 = *(v434 + 64);
  v435 = v457;
  __chkstk_darwin(v432);
  v461 = &v114 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = v461;
  v451 = sub_C3234();
  v438 = v451;
  v439 = *(v451 - 8);
  v450 = v439;
  v440 = v439;
  v446 = *(v439 + 64);
  v2 = __chkstk_darwin(v454);
  v448 = (v446 + 15) & 0xFFFFFFFFFFFFFFF0;
  v441 = &v114 - v448;
  v3 = __chkstk_darwin(v2);
  v442 = &v114 - v448;
  v4 = __chkstk_darwin(v3);
  v443 = &v114 - v448;
  v5 = __chkstk_darwin(v4);
  v444 = &v114 - v448;
  v6 = __chkstk_darwin(v5);
  v445 = &v114 - v448;
  v7 = __chkstk_darwin(v6);
  v447 = &v114 - v448;
  v8 = __chkstk_darwin(v7);
  v9 = &v114 - v448;
  v449 = &v114 - v448;
  v557 = v8;
  v556 = v10;
  v11 = sub_BF704();
  v452 = *(v450 + 16);
  v453 = (v450 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v452(v9, v11, v451);
  v455 = *(v460 + 16);
  v456 = (v460 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v455(v461, v454, v462);
  v458 = *(v460 + 80);
  v459 = (v458 + 16) & ~v458;
  v473 = swift_allocObject();
  v463 = *(v460 + 32);
  v464 = (v460 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v463(v473 + v459, v461, v462);
  v484 = sub_C3224();
  v465 = v484;
  v483 = sub_C3874();
  v466 = v483;
  v467 = 17;
  v472 = 7;
  v477 = swift_allocObject();
  v468 = v477;
  v469 = 32;
  *(v477 + 16) = 32;
  v12 = swift_allocObject();
  v13 = v469;
  v478 = v12;
  v470 = v12;
  *(v12 + 16) = 8;
  v471 = v13;
  v14 = swift_allocObject();
  v15 = v473;
  v474 = v14;
  *(v14 + 16) = sub_2C488;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v474;
  v481 = v16;
  v475 = v16;
  *(v16 + 16) = sub_7BBC;
  *(v16 + 24) = v17;
  v482 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v476 = v482;
  v479 = sub_C3C64();
  v480 = v18;

  v19 = v477;
  v20 = v480;
  *v480 = sub_7B48;
  v20[1] = v19;

  v21 = v478;
  v22 = v480;
  v480[2] = sub_7B48;
  v22[3] = v21;

  v23 = v480;
  v24 = v481;
  v480[4] = sub_7C08;
  v23[5] = v24;
  sub_4E48();

  if (os_log_type_enabled(v484, v483))
  {
    v25 = v401;
    v394 = sub_C3954();
    v391 = v394;
    v392 = sub_21E8(&qword_EE828, &qword_C5100);
    v395 = sub_5DD4(0);
    v393 = v395;
    v397 = 1;
    v396 = sub_5DD4(1);
    v489 = v394;
    v488 = v395;
    v487 = v396;
    v398 = &v489;
    sub_5E28(2, &v489);
    sub_5E28(v397, v398);
    v485 = sub_7B48;
    v486 = v468;
    sub_5E3C(&v485, v398, &v488, &v487);
    v399 = v25;
    v400 = v25;
    if (v25)
    {
      v389 = 0;

      __break(1u);
    }

    else
    {
      v485 = sub_7B48;
      v486 = v470;
      sub_5E3C(&v485, &v489, &v488, &v487);
      v387 = 0;
      v388 = 0;
      v485 = sub_7C08;
      v486 = v475;
      sub_5E3C(&v485, &v489, &v488, &v487);
      v385 = 0;
      v386 = 0;
      _os_log_impl(&dword_0, v465, v466, "Parsing Intent %s", v391, 0xCu);
      sub_5E88(v393);
      sub_5E88(v396);
      sub_C3934();

      v390 = v385;
    }
  }

  else
  {
    v26 = v401;

    v390 = v26;
  }

  v27 = v390;

  v379 = *(v440 + 8);
  v380 = (v440 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v379(v449, v438);
  sub_8ECA0();
  v382 = sub_C2D84();
  v381 = v28;
  (*(v429 + 8))(v431, v427);
  v382(v555, v454);
  v383 = v27;
  v384 = v27;
  if (v27)
  {
    v371 = v384;
    v372 = 0;
    v373 = 0;

    v376 = v372;
    v377 = v372;
    v378 = v373;
  }

  else
  {
    v375 = v555[0];
    v374 = v555[1];

    v376 = v375;
    v377 = v374;
    v378 = v383;
  }

  v370 = v378;
  v554[0] = v376;
  v554[1] = v377;
  v369 = v377 != 0;
  v368 = v369;
  sub_8224(v554);
  if (v368)
  {
    v29 = v447;
    v30 = sub_BF704();
    v452(v29, v30, v438);
    v455(v436, v454, v433);
    v349 = (v458 + 16) & ~v458;
    v358 = swift_allocObject();
    v463(v358 + v349, v436, v433);
    v367 = sub_C3224();
    v350 = v367;
    v366 = sub_C3874();
    v351 = v366;
    v352 = 17;
    v357 = 7;
    v361 = swift_allocObject();
    v353 = v361;
    v354 = 32;
    *(v361 + 16) = 32;
    v31 = swift_allocObject();
    v32 = v354;
    v362 = v31;
    v355 = v31;
    *(v31 + 16) = 8;
    v356 = v32;
    v33 = swift_allocObject();
    v34 = v358;
    v359 = v33;
    *(v33 + 16) = sub_2C488;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v359;
    v365 = v35;
    v360 = v35;
    *(v35 + 16) = sub_7BBC;
    *(v35 + 24) = v36;
    v363 = sub_C3C64();
    v364 = v37;

    v38 = v361;
    v39 = v364;
    *v364 = sub_7B48;
    v39[1] = v38;

    v40 = v362;
    v41 = v364;
    v364[2] = sub_7B48;
    v41[3] = v40;

    v42 = v364;
    v43 = v365;
    v364[4] = sub_7C08;
    v42[5] = v43;
    sub_4E48();

    if (os_log_type_enabled(v367, v366))
    {
      v44 = v370;
      v342 = sub_C3954();
      v339 = v342;
      v340 = sub_21E8(&qword_EE828, &qword_C5100);
      v343 = sub_5DD4(0);
      v341 = v343;
      v345 = 1;
      v344 = sub_5DD4(1);
      v494[0] = v342;
      v493 = v343;
      v492 = v344;
      v346 = v494;
      sub_5E28(2, v494);
      sub_5E28(v345, v346);
      v490 = sub_7B48;
      v491 = v353;
      sub_5E3C(&v490, v346, &v493, &v492);
      v347 = v44;
      v348 = v44;
      if (v44)
      {
        v337 = 0;

        __break(1u);
      }

      else
      {
        v490 = sub_7B48;
        v491 = v355;
        sub_5E3C(&v490, v494, &v493, &v492);
        v335 = 0;
        v336 = 0;
        v490 = sub_7C08;
        v491 = v360;
        sub_5E3C(&v490, v494, &v493, &v492);
        v333 = 0;
        v334 = 0;
        _os_log_impl(&dword_0, v350, v351, "Parsed INVoiceTrigger. Executing VoiceTriggerFlow %s", v339, 0xCu);
        sub_5E88(v341);
        sub_5E88(v344);
        sub_C3934();

        v338 = v333;
      }
    }

    else
    {
      v45 = v370;

      v338 = v45;
    }

    v330 = v338;

    v379(v447, v438);
    v328 = type metadata accessor for CannedDialogVoiceTriggerFlow();

    v327 = v495;
    sub_24F4(v437 + 16, v495);

    v494[1] = sub_9378(v327);
    sub_B268();
    v329 = sub_C1DF4();

    v331 = v329;
    v332 = v330;
  }

  else
  {
    v46 = v370;
    sub_8EC30();
    v324 = sub_C2D84();
    v323 = v47;
    (*(v414 + 8))(v416, v412);
    v324(v454);
    v325 = v46;
    v326 = v46;
    if (v46)
    {
      v114 = v326;
      v115 = 0;

      (*(v421 + 56))(v418, 1, 1, v419);
      v322 = v115;
    }

    else
    {
      (*(v421 + 56))(v418, 0, 1, v419);

      v322 = v325;
    }

    v321 = v322;
    if ((*(v421 + 48))(v418, 1, v419) == 1)
    {
      v107 = v441;
      sub_7C14(v418);
      v108 = sub_BF704();
      v452(v107, v108, v438);
      v134 = sub_C3224();
      v131 = v134;
      v133 = sub_C3884();
      v132 = v133;
      v135 = sub_C3C64();
      if (os_log_type_enabled(v134, v133))
      {
        v109 = v321;
        v122 = sub_C3954();
        v118 = v122;
        v119 = sub_21E8(&qword_EE828, &qword_C5100);
        v120 = 0;
        v123 = sub_5DD4(0);
        v121 = v123;
        v124 = sub_5DD4(v120);
        v553 = v122;
        v552 = v123;
        v551 = v124;
        v125 = 0;
        v126 = &v553;
        sub_5E28(0, &v553);
        sub_5E28(v125, v126);
        v550 = v135;
        v127 = &v114;
        __chkstk_darwin(&v114);
        v128 = &v114 - 6;
        *(&v114 - 4) = v110;
        *(&v114 - 3) = &v552;
        v112 = &v551;
        v129 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        sub_C3654();
        v130 = v109;
        if (v109)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v131, v132, "SocialConversationFlowDelegatePlugin received an error for handling request even though the feature flag and locale is on for this", v118, 2u);
          v116 = 0;
          sub_5E88(v121);
          sub_5E88(v124);
          sub_C3934();

          v117 = v130;
        }
      }

      else
      {

        v117 = v321;
      }

      v379(v441, v438);
      sub_C3564("SocialConversationFlowDelegatePlugin received makeFlowFor call with invalid parse", 0x51uLL, 1);
      v113 = 0;
      v112 = (&stru_68 + 6);
      sub_C3B94();
      __break(1u);
    }

    else
    {
      v48 = v445;
      sub_7D34(v418, v426);
      v49 = sub_BF704();
      v452(v48, v49, v438);
      sub_2C670(v426, v424);
      v302 = (*(v421 + 80) + 16) & ~*(v421 + 80);
      v311 = swift_allocObject();
      sub_7D34(v424, (v311 + v302));
      v320 = sub_C3224();
      v303 = v320;
      v319 = sub_C3874();
      v304 = v319;
      v305 = 17;
      v310 = 7;
      v314 = swift_allocObject();
      v306 = v314;
      v307 = 32;
      *(v314 + 16) = 32;
      v50 = swift_allocObject();
      v51 = v307;
      v315 = v50;
      v308 = v50;
      *(v50 + 16) = 8;
      v309 = v51;
      v52 = swift_allocObject();
      v53 = v311;
      v312 = v52;
      *(v52 + 16) = sub_2C994;
      *(v52 + 24) = v53;
      v54 = swift_allocObject();
      v55 = v312;
      v318 = v54;
      v313 = v54;
      *(v54 + 16) = sub_7BBC;
      *(v54 + 24) = v55;
      v316 = sub_C3C64();
      v317 = v56;

      v57 = v314;
      v58 = v317;
      *v317 = sub_7B48;
      v58[1] = v57;

      v59 = v315;
      v60 = v317;
      v317[2] = sub_7B48;
      v60[3] = v59;

      v61 = v317;
      v62 = v318;
      v317[4] = sub_7C08;
      v61[5] = v62;
      sub_4E48();

      if (os_log_type_enabled(v320, v319))
      {
        v63 = v321;
        v295 = sub_C3954();
        v292 = v295;
        v293 = sub_21E8(&qword_EE828, &qword_C5100);
        v296 = sub_5DD4(0);
        v294 = v296;
        v298 = 1;
        v297 = sub_5DD4(1);
        v500 = v295;
        v499 = v296;
        v498 = v297;
        v299 = &v500;
        sub_5E28(2, &v500);
        sub_5E28(v298, v299);
        v496 = sub_7B48;
        v497 = v306;
        sub_5E3C(&v496, v299, &v499, &v498);
        v300 = v63;
        v301 = v63;
        if (v63)
        {
          v290 = 0;

          __break(1u);
        }

        else
        {
          v496 = sub_7B48;
          v497 = v308;
          sub_5E3C(&v496, &v500, &v499, &v498);
          v288 = 0;
          v289 = 0;
          v496 = sub_7C08;
          v497 = v313;
          sub_5E3C(&v496, &v500, &v499, &v498);
          v286 = 0;
          v287 = 0;
          _os_log_impl(&dword_0, v303, v304, "Parsed INSiriSocialConversation: %s", v292, 0xCu);
          sub_5E88(v294);
          sub_5E88(v297);
          sub_C3934();

          v291 = v286;
        }
      }

      else
      {
        v64 = v321;

        v291 = v64;
      }

      v251 = v291;

      v379(v445, v438);
      v252 = *v426;
      v253 = *(v426 + 1);

      v259 = sub_2574C(v252, v253);
      v260 = v65;
      v254 = v65;

      v548 = v259;
      v549 = v260;

      v257 = v545;
      sub_24F4(v437 + 16, v545);

      v256 = v546;
      v255 = v547;
      sub_808C(v257, v546);
      v66 = (*(v255 + 32))(v256);
      v67 = v444;
      v261 = v66;
      v258 = v66;
      v544 = v66;
      sub_2560(v257);
      sub_600E0(v259, v260, v261);
      v68 = sub_BF704();
      v452(v67, v68, v438);
      v262 = *(v406 + 16);
      v263 = (v406 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v262(v409, v411, v404);
      v264 = *(v406 + 80);
      v265 = (v264 + 16) & ~v264;
      v276 = swift_allocObject();
      v266 = *(v406 + 32);
      v267 = (v406 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v266(v276 + v265, v409, v404);
      v285 = sub_C3224();
      v268 = v285;
      v284 = sub_C3874();
      v269 = v284;
      v270 = 17;
      v275 = 7;
      v279 = swift_allocObject();
      v271 = v279;
      v272 = 32;
      *(v279 + 16) = 32;
      v69 = swift_allocObject();
      v70 = v272;
      v280 = v69;
      v273 = v69;
      *(v69 + 16) = 8;
      v274 = v70;
      v71 = swift_allocObject();
      v72 = v276;
      v277 = v71;
      *(v71 + 16) = sub_2CB9C;
      *(v71 + 24) = v72;
      v73 = swift_allocObject();
      v74 = v277;
      v283 = v73;
      v278 = v73;
      *(v73 + 16) = sub_7BBC;
      *(v73 + 24) = v74;
      v281 = sub_C3C64();
      v282 = v75;

      v76 = v279;
      v77 = v282;
      *v282 = sub_7B48;
      v77[1] = v76;

      v78 = v280;
      v79 = v282;
      v282[2] = sub_7B48;
      v79[3] = v78;

      v80 = v282;
      v81 = v283;
      v282[4] = sub_7C08;
      v80[5] = v81;
      sub_4E48();

      if (os_log_type_enabled(v285, v284))
      {
        v82 = v251;
        v244 = sub_C3954();
        v241 = v244;
        v242 = sub_21E8(&qword_EE828, &qword_C5100);
        v245 = sub_5DD4(0);
        v243 = v245;
        v247 = 1;
        v246 = sub_5DD4(1);
        v505 = v244;
        v504 = v245;
        v503 = v246;
        v248 = &v505;
        sub_5E28(2, &v505);
        sub_5E28(v247, v248);
        v501 = sub_7B48;
        v502 = v271;
        sub_5E3C(&v501, v248, &v504, &v503);
        v249 = v82;
        v250 = v82;
        if (v82)
        {
          v239 = 0;

          __break(1u);
        }

        else
        {
          v501 = sub_7B48;
          v502 = v273;
          sub_5E3C(&v501, &v505, &v504, &v503);
          v237 = 0;
          v238 = 0;
          v501 = sub_7C08;
          v502 = v278;
          sub_5E3C(&v501, &v505, &v504, &v503);
          v235 = 0;
          v236 = 0;
          _os_log_impl(&dword_0, v268, v269, "Parsed AuthoredFlowDescriptor: %s", v241, 0xCu);
          sub_5E88(v243);
          sub_5E88(v246);
          sub_C3934();

          v240 = v235;
        }
      }

      else
      {
        v83 = v251;

        v240 = v83;
      }

      v227 = v240;

      v379(v444, v438);

      v228 = v541;
      sub_24F4(v437 + 16, v541);

      v230 = v542;
      v229 = v543;
      sub_808C(v228, v542);
      v84 = *(v229 + 40);
      v231 = v538;
      v84(v230);
      v233 = v539;
      v232 = v540;
      sub_808C(v231, v539);
      v234 = (*(v232 + 8))(v233);

      if (v234)
      {
        v224 = v506;
        sub_24F4(v437 + 120, v506);
        v222 = v507;
        v223 = v508;
        sub_808C(v224, v507);
        v225 = sub_C1DE4();
        sub_2560(v224);
        v226 = v225;
      }

      else
      {
        v226 = 0;
      }

      v221 = v226;

      sub_2560(v538);
      sub_2560(v541);

      if (v221)
      {
        v220 = sub_269CC(v411);
      }

      else
      {
        v220 = 0;
      }

      v219 = v220;

      if (v219)
      {
        v85 = v443;
        v86 = sub_BF704();
        v452(v85, v86, v438);
        v217 = sub_C3224();
        v214 = v217;
        v216 = sub_C3874();
        v215 = v216;
        v218 = sub_C3C64();
        if (os_log_type_enabled(v217, v216))
        {
          v87 = v227;
          v205 = sub_C3954();
          v201 = v205;
          v202 = sub_21E8(&qword_EE828, &qword_C5100);
          v203 = 0;
          v206 = sub_5DD4(0);
          v204 = v206;
          v207 = sub_5DD4(v203);
          v512[0] = v205;
          v511 = v206;
          v510 = v207;
          v208 = 0;
          v209 = v512;
          sub_5E28(0, v512);
          sub_5E28(v208, v209);
          v509 = v218;
          v210 = &v114;
          __chkstk_darwin(&v114);
          v211 = &v114 - 6;
          *(&v114 - 4) = v88;
          *(&v114 - 3) = &v511;
          v112 = &v510;
          v212 = sub_21E8(&unk_EEFB0, qword_C5110);
          sub_8128();
          sub_C3654();
          v213 = v87;
          if (v87)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v214, v215, "Executing AuthoredFlow with SiriKit", v201, 2u);
            v199 = 0;
            sub_5E88(v204);
            sub_5E88(v207);
            sub_C3934();

            v200 = v213;
          }
        }

        else
        {

          v200 = v227;
        }

        v198 = v200;

        v379(v443, v438);
        v189 = 0;
        sub_C1D94();
        v196 = swift_allocBox();
        v182 = v89;
        v527 = v89;

        v178 = v437 + 16;
        v165 = v526;
        sub_24F4(v437 + 16, v526);

        sub_601E0(v165, v182);
        sub_2560(v165);
        v187 = sub_21E8(&qword_EF260, &qword_C5BF0);
        v188 = sub_C3C64();
        v185 = v90;
        inited = type metadata accessor for InitDailyUpliftBehaviorResponseHandler();
        sub_B5E4(&v426[*(v419 + 24)], v403);
        v167 = sub_92A5C(v403);
        v185[3] = inited;
        v91 = sub_2CD04();
        v92 = v167;
        v93 = v185;
        v185[4] = v91;
        *v93 = v92;
        v176 = type metadata accessor for InitGreetingBehaviorResponseHandler();

        v175 = v523;
        sub_24F4(v178, v523);

        v169 = v524;
        v168 = v525;
        sub_808C(v175, v524);
        v172 = (*(v168 + 32))(v169);

        v174 = v520;
        sub_24F4(v178, v520);

        v171 = v521;
        v170 = v522;
        sub_808C(v174, v521);
        v94 = *(v170 + 8);
        v173 = &v519;
        v94(v171);
        v177 = sub_92AA8(v172, v173);
        sub_2560(v174);
        sub_2560(v175);
        v185[8] = v176;
        v95 = sub_2CD84();
        v96 = v177;
        v97 = v185;
        v185[9] = v95;
        v97[5] = v96;
        v184 = type metadata accessor for DismissSiriBehaviorResponseHandler();

        v183 = v516;
        sub_24F4(v178, v516);

        v180 = v517;
        v179 = v518;
        sub_808C(v183, v517);
        v98 = *(v179 + 16);
        v181 = &v515;
        v98(v180);
        v186 = sub_92AFC(v181);
        sub_2560(v183);
        v185[13] = v184;
        v99 = sub_2CE04();
        v100 = v185;
        v101 = v186;
        v185[14] = v99;
        v100[10] = v101;
        sub_4E48();
        sub_C1D64();
        v195 = v514;
        sub_24F4(v437 + 120, v514);
        v194 = sub_C1CD4();
        v190 = v513;
        sub_24F4(v195, v513);
        v262(v409, v411, v404);

        v191 = (v264 + 56) & ~v264;
        v192 = (v191 + v407 + 7) & 0xFFFFFFFFFFFFFFF8;
        v193 = swift_allocObject();
        sub_BD6C(v190, (v193 + 16));
        v266(v193 + v191, v409, v404);
        *(v193 + v192) = v196;
        v512[1] = sub_C1CE4();
        v197 = sub_C1DF4();

        sub_2560(v195);

        (*(v406 + 8))(v411, v404);

        sub_7EB4(v426);
        v331 = v197;
        v332 = v198;
      }

      else
      {
        v102 = v442;
        v103 = sub_BF704();
        v452(v102, v103, v438);
        v163 = sub_C3224();
        v160 = v163;
        v162 = sub_C3874();
        v161 = v162;
        v164 = sub_C3C64();
        if (os_log_type_enabled(v163, v162))
        {
          v104 = v227;
          v151 = sub_C3954();
          v147 = v151;
          v148 = sub_21E8(&qword_EE828, &qword_C5100);
          v149 = 0;
          v152 = sub_5DD4(0);
          v150 = v152;
          v153 = sub_5DD4(v149);
          v531[0] = v151;
          v530 = v152;
          v529 = v153;
          v154 = 0;
          v155 = v531;
          sub_5E28(0, v531);
          sub_5E28(v154, v155);
          v528 = v164;
          v156 = &v114;
          __chkstk_darwin(&v114);
          v157 = &v114 - 6;
          *(&v114 - 4) = v105;
          *(&v114 - 3) = &v530;
          v112 = &v529;
          v158 = sub_21E8(&unk_EEFB0, qword_C5110);
          sub_8128();
          sub_C3654();
          v159 = v104;
          if (v104)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v160, v161, "Executing CannedDialogFlow", v147, 2u);
            v145 = 0;
            sub_5E88(v150);
            sub_5E88(v153);
            sub_C3934();

            v146 = v159;
          }
        }

        else
        {

          v146 = v227;
        }

        v142 = v146;

        v379(v442, v438);
        v143 = &v536;
        swift_beginAccess();
        v144 = *(v437 + 112);

        swift_endAccess();
        v535 = v144;

        if (v535)
        {
          v537 = v535;
        }

        else
        {
          type metadata accessor for CannedDialogFlow();

          v141 = v534;
          sub_24F4(v437 + 16, v534);

          v537 = sub_2404(v141);
          if (v535)
          {
            sub_2CCD8(&v535);
          }
        }

        v139 = v537;
        v533 = v537;

        v136 = &v532;
        v137 = 0;
        swift_beginAccess();
        v106 = *(v437 + 112);
        *(v437 + 112) = v139;

        swift_endAccess();

        v531[1] = v139;
        v138 = type metadata accessor for CannedDialogFlow();
        sub_800C();
        v140 = sub_C1DF4();

        (*(v406 + 8))(v411, v404);

        sub_7EB4(v426);
        v331 = v140;
        v332 = v142;
      }
    }
  }

  return v331;
}