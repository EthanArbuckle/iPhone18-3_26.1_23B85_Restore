uint64_t *sub_23634(uint64_t *a1)
{
  v39 = a1;
  v46 = 0;
  v57 = 0;
  v36 = 0;
  v37 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = v18 - v37;
  v40 = sub_50DB0();
  v41 = *(v40 - 8);
  v42 = v41;
  v1 = *(v41 + 64);
  v2 = __chkstk_darwin(v39);
  v43 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  sub_50D90();
  v48 = sub_50DA0();
  v44 = v48;
  v47 = sub_51480();
  v45 = v47;
  sub_23FC(&qword_64648, &qword_51E60);
  v49 = sub_51650();
  if (os_log_type_enabled(v48, v47))
  {
    v4 = v36;
    v27 = sub_514F0();
    v23 = v27;
    v24 = sub_23FC(&qword_64650, &unk_53930);
    v25 = 0;
    v28 = sub_121D4(0);
    v26 = v28;
    v29 = sub_121D4(v25);
    v53 = v27;
    v52 = v28;
    v51 = v29;
    v30 = 0;
    v31 = &v53;
    sub_12228(0, &v53);
    sub_12228(v30, v31);
    v50 = v49;
    v32 = v18;
    __chkstk_darwin(v18);
    v33 = &v18[-6];
    v18[-4] = v5;
    v18[-3] = &v52;
    v18[-2] = &v51;
    v34 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v35 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v44, v45, "User Action: Clicked 'Turn off Automatic Updates' on the automaticUpdatesCancellation alert in AutomaticUpdatesView", v23, 2u);
      v21 = 0;
      sub_12288(v26);
      sub_12288(v29);
      sub_514D0();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v42 + 8))(v43, v40);
  sub_51430();
  v18[0] = 0;
  v6 = *(*(sub_51450() - 8) + 56);
  v19 = 0;
  v6(v38);
  sub_18F68(v39, v56);
  v7 = swift_allocObject();
  v8 = v18[0];
  v9 = v38;
  v10 = v39;
  *(v7 + 16) = v18[0];
  *(v7 + 24) = v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  *(v7 + 80) = *(v10 + 3);
  *(v7 + 64) = v13;
  *(v7 + 48) = v12;
  *(v7 + 32) = v11;
  v18[1] = sub_F350(v8, v8, v9, &unk_52E60, v7, &type metadata for () + 8);
  sub_14BA4(v38);

  sub_18F68(v39, v55);
  v14 = *v39;
  v15 = *(v39 + 1);
  v16 = *(v39 + 2);
  v54[3] = *(v39 + 3);
  v54[2] = v16;
  v54[1] = v15;
  v54[0] = v14;
  v20 = v54;
  sub_1E434(v19);
  return sub_180B8(v20);
}

uint64_t sub_23C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a4;
  *(v4 + 272) = v4;
  *(v4 + 280) = 0;
  *(v4 + 288) = 0;
  *(v4 + 384) = 0;
  v5 = sub_50DB0();
  *(v4 + 304) = v5;
  v8 = *(v5 - 8);
  *(v4 + 312) = v8;
  v9 = *(v8 + 64);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 280) = a4;
  v6 = *(v4 + 272);

  return _swift_task_switch(sub_23D78, 0, 0);
}

uint64_t sub_23D78()
{
  v1 = *(v0 + 296);
  *(v0 + 272) = v0;
  memcpy((v0 + 16), v1, 0x40uLL);
  *(v0 + 385) = sub_25A44() & 1;
  *(v0 + 336) = sub_51410();
  *(v0 + 344) = sub_51400();
  v5 = sub_513F0();
  v3 = *(v0 + 272);

  return _swift_task_switch(sub_23E44, v5, v2);
}

uint64_t sub_23E44()
{
  v4 = *(v0 + 344);
  v1 = *(v0 + 385);
  *(v0 + 272) = v0;
  sub_25A50(0, 0, v1 & 1);

  v2 = *(v0 + 272);

  return _swift_task_switch(sub_23ED8, 0, 0);
}

uint64_t sub_23ED8()
{
  v5 = v0[42];
  v1 = v0[37];
  v0[34] = v0;
  memcpy(v0 + 10, v1, 0x40uLL);
  v0[44] = sub_51400();
  v6 = sub_513F0();
  v3 = v0[34];

  return _swift_task_switch(sub_23F84, v6, v2);
}

uint64_t sub_23F84()
{
  v4 = v0[44];
  v0[34] = v0;
  v0[45] = sub_184E0();

  v1 = async function pointer to ReactiveUIManager.unscheduleTargetedUpdate(delegate:)[1];
  v2 = swift_task_alloc();
  *(v5 + 368) = v2;
  *v2 = *(v5 + 272);
  v2[1] = sub_24058;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_24058(char a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = (v12 + 272);
  v4 = *(*v2 + 368);
  *(v12 + 272) = *v2;
  *(v12 + 386) = a1;
  *(v12 + 376) = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_24E14;
  }

  else
  {
    v5 = *(v10 + 344);

    v6 = *v11;
    v7 = sub_241E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_241E4()
{
  v44 = v0;
  v1 = *(v0 + 386);
  v18 = v1;
  v2 = *(v0 + 328);
  __src = *(v0 + 296);
  *(v0 + 272) = v0;
  *(v0 + 384) = v1 & 1;
  sub_50D90();
  sub_18F68(__src, v0 + 208);
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x40uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v37 = sub_50DA0();
  v38 = sub_51490();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3F0B0;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_3F198;
  *(v21 + 24) = v20;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_3F1E4;
  *(v29 + 24) = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_28CD8;
  *(v22 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_3F2E4;
  *(v32 + 24) = v22;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3F0E4;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_3F3E4;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_3F430;
  *(v26 + 24) = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_3F47C;
  *(v35 + 24) = v26;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v36 = v3;

  *v36 = sub_3F11C;
  v36[1] = v27;

  v36[2] = sub_3F150;
  v36[3] = v28;

  v36[4] = sub_3F230;
  v36[5] = v29;

  v36[6] = sub_3F268;
  v36[7] = v30;

  v36[8] = sub_3F29C;
  v36[9] = v31;

  v36[10] = sub_3F330;
  v36[11] = v32;

  v36[12] = sub_3F368;
  v36[13] = v33;

  v36[14] = sub_3F39C;
  v36[15] = v34;

  v36[16] = sub_3F4C8;
  v36[17] = v35;
  sub_1489C();

  if (os_log_type_enabled(v37, v38))
  {
    v4 = v16[47];
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(0);
    v15 = sub_121D4(2);
    v39 = buf;
    v40 = v14;
    v41 = v15;
    sub_12228(2, &v39);
    sub_12228(3, &v39);
    v42 = sub_3F11C;
    v43 = v27;
    sub_1223C(&v42, &v39, &v40, &v41);
    if (v4)
    {
    }

    v42 = sub_3F150;
    v43 = v28;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F230;
    v43 = v29;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F268;
    v43 = v30;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F29C;
    v43 = v31;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F330;
    v43 = v32;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F368;
    v43 = v33;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F39C;
    v43 = v34;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3F4C8;
    v43 = v35;
    sub_1223C(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_0, v37, v38, "%s.%s: unscheduleTargetedUpdate result: %{BOOL}d", buf, 0x1Cu);
    sub_12288(v14);
    sub_12288(v15);
    sub_514D0();
  }

  else
  {
  }

  v10 = v16[41];
  v11 = v16[38];
  v9 = v16[39];
  _objc_release(v37);
  (*(v9 + 8))(v10, v11);
  v6 = v16[41];
  v12 = v16[40];

  v7 = *(v16[34] + 8);
  v8 = v16[34];

  return v7();
}

uint64_t sub_24E14()
{
  v43 = v0;
  v18 = v0[47];
  v1 = v0[45];
  v2 = v0[40];
  __src = v0[37];
  v0[34] = v0;

  swift_errorRetain();
  v0[36] = v18;
  sub_50D90();
  sub_18F68(__src, (v0 + 18));
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x40uLL);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_28D78();

  v36 = sub_50DA0();
  v37 = sub_514A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3EC70;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_3ED68;
  *(v21 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_3EDB4;
  *(v28 + 24) = v21;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_28D20;
  *(v22 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_3EEB4;
  *(v31 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = 64;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3ECB8;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_3EFB4;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_3F000;
  *(v34 + 24) = v25;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v35 = v3;

  *v35 = sub_3ECEC;
  v35[1] = v26;

  v35[2] = sub_3ED20;
  v35[3] = v27;

  v35[4] = sub_3EE00;
  v35[5] = v28;

  v35[6] = sub_3EE38;
  v35[7] = v29;

  v35[8] = sub_3EE6C;
  v35[9] = v30;

  v35[10] = sub_3EF00;
  v35[11] = v31;

  v35[12] = sub_3EF38;
  v35[13] = v32;

  v35[14] = sub_3EF6C;
  v35[15] = v33;

  v35[16] = sub_3F04C;
  v35[17] = v34;
  sub_1489C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(1);
    v15 = sub_121D4(2);
    v38 = buf;
    v39 = v14;
    v40 = v15;
    sub_12228(2, &v38);
    sub_12228(3, &v38);
    v41 = sub_3ECEC;
    v42 = v26;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3ED20;
    v42 = v27;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3EE00;
    v42 = v28;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3EE38;
    v42 = v29;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3EE6C;
    v42 = v30;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3EF00;
    v42 = v31;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3EF38;
    v42 = v32;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3EF6C;
    v42 = v33;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3F04C;
    v42 = v34;
    sub_1223C(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "%s.%s: Failed to unschedule targeted update: %@", buf, 0x20u);
    sub_12288(v14);
    sub_12288(v15);
    sub_514D0();
  }

  else
  {
  }

  v11 = v16[47];
  v9 = v16[40];
  v10 = v16[38];
  v8 = v16[39];
  _objc_release(v36);
  (*(v8 + 8))(v9, v10);

  v4 = v16[41];
  v12 = v16[40];

  v5 = *(v16[34] + 8);
  v6 = v16[34];

  return v5();
}

uint64_t *sub_25A50(unsigned int a1, int a2, int a3)
{
  v504 = a3;
  v507 = a2;
  v506 = a1;
  v505 = a2;
  v500 = a3;
  v501 = a2;
  v502 = a1;
  v584 = 0;
  v583 = 0;
  v582 = 0;
  v503 = 0;
  v508 = sub_50DB0();
  v509 = *(v508 - 8);
  v510 = v509;
  v513 = *(v509 + 64);
  v4 = __chkstk_darwin(v506);
  v515 = (v513 + 15) & 0xFFFFFFFFFFFFFFF0;
  v511 = &v209 - v515;
  v5 = __chkstk_darwin(v4);
  v512 = &v209 - v515;
  v6 = __chkstk_darwin(v5);
  v514 = &v209 - v515;
  v7 = __chkstk_darwin(v6);
  v516 = &v209 - v515;
  v584 = v7;
  v583 = v8;
  v582 = v9;
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v588 = v3[3];
  v587 = v12;
  v586 = v11;
  v585 = v10;
  v13 = *v3;
  v14 = v3[1];
  v15 = v3[2];
  v592 = v3[3];
  v591 = v15;
  v590 = v14;
  v589 = v13;
  if (v16)
  {
    if (v501 == 1)
    {
      v544 = v588;
      v543 = v587;
      v542 = v586;
      v541 = v585;
      v65 = sub_187A0();
      v420 = v65;
      KeyPath = swift_getKeyPath();
      (*(*v65 + 192))(&v540);
      v422 = v540;

      if (v422 == 1)
      {
        sub_50D90();
        sub_18F68(&v585, &v534);
        v402 = 7;
        v66 = swift_allocObject();
        v386 = v66;
        v67 = v585;
        v68 = v586;
        v69 = v587;
        v66[4] = v588;
        v66[3] = v69;
        v66[2] = v68;
        v66[1] = v67;
        v396 = 17;
        v399 = swift_allocObject();
        *(v399 + 16) = v502 & 1;
        v419 = sub_50DA0();
        v382 = v419;
        v418 = sub_514A0();
        v383 = v418;
        v406 = swift_allocObject();
        v384 = v406;
        v390 = 32;
        *(v406 + 16) = 32;
        v70 = swift_allocObject();
        v71 = v390;
        v407 = v70;
        v385 = v70;
        v392 = 8;
        *(v70 + 16) = 8;
        v401 = v71;
        v72 = swift_allocObject();
        v73 = v386;
        v387 = v72;
        *(v72 + 16) = sub_398E4;
        *(v72 + 24) = v73;
        v74 = swift_allocObject();
        v75 = v387;
        v388 = v74;
        *(v74 + 16) = sub_399CC;
        *(v74 + 24) = v75;
        v76 = swift_allocObject();
        v77 = v388;
        v408 = v76;
        v389 = v76;
        *(v76 + 16) = sub_39A18;
        *(v76 + 24) = v77;
        v409 = swift_allocObject();
        v391 = v409;
        *(v409 + 16) = v390;
        v410 = swift_allocObject();
        v393 = v410;
        *(v410 + 16) = v392;
        v78 = swift_allocObject();
        v394 = v78;
        *(v78 + 16) = sub_34FE8;
        *(v78 + 24) = 0;
        v79 = swift_allocObject();
        v80 = v394;
        v411 = v79;
        v395 = v79;
        *(v79 + 16) = sub_39B18;
        *(v79 + 24) = v80;
        v412 = swift_allocObject();
        v397 = v412;
        *(v412 + 16) = 0;
        v413 = swift_allocObject();
        v398 = v413;
        *(v413 + 16) = 4;
        v81 = swift_allocObject();
        v82 = v399;
        v400 = v81;
        *(v81 + 16) = sub_39918;
        *(v81 + 24) = v82;
        v83 = swift_allocObject();
        v84 = v400;
        v403 = v83;
        *(v83 + 16) = sub_39C18;
        *(v83 + 24) = v84;
        v85 = swift_allocObject();
        v86 = v403;
        v404 = v85;
        *(v85 + 16) = sub_39C64;
        *(v85 + 24) = v86;
        v87 = swift_allocObject();
        v88 = v404;
        v416 = v87;
        v405 = v87;
        *(v87 + 16) = sub_39CB0;
        *(v87 + 24) = v88;
        v417 = sub_23FC(&qword_64648, &qword_51E60);
        v414 = sub_51650();
        v415 = v89;

        v90 = v406;
        v91 = v415;
        *v415 = sub_39950;
        v91[1] = v90;

        v92 = v407;
        v93 = v415;
        v415[2] = sub_39984;
        v93[3] = v92;

        v94 = v408;
        v95 = v415;
        v415[4] = sub_39A64;
        v95[5] = v94;

        v96 = v409;
        v97 = v415;
        v415[6] = sub_39A9C;
        v97[7] = v96;

        v98 = v410;
        v99 = v415;
        v415[8] = sub_39AD0;
        v99[9] = v98;

        v100 = v411;
        v101 = v415;
        v415[10] = sub_39B64;
        v101[11] = v100;

        v102 = v412;
        v103 = v415;
        v415[12] = sub_39B9C;
        v103[13] = v102;

        v104 = v413;
        v105 = v415;
        v415[14] = sub_39BD0;
        v105[15] = v104;

        v106 = v415;
        v107 = v416;
        v415[16] = sub_39CFC;
        v106[17] = v107;
        sub_1489C();

        if (os_log_type_enabled(v419, v418))
        {
          v108 = v503;
          v375 = sub_514F0();
          v372 = v375;
          v373 = sub_23FC(&qword_64650, &unk_53930);
          v376 = sub_121D4(0);
          v374 = v376;
          v377 = 2;
          v378 = sub_121D4(2);
          v533 = v375;
          v532 = v376;
          v531 = v378;
          v379 = &v533;
          sub_12228(v377, &v533);
          sub_12228(3, v379);
          v529 = sub_39950;
          v530 = v384;
          sub_1223C(&v529, v379, &v532, &v531);
          v380 = v108;
          v381 = v108;
          if (v108)
          {
            v370 = 0;

            __break(1u);
          }

          else
          {
            v529 = sub_39984;
            v530 = v385;
            sub_1223C(&v529, &v533, &v532, &v531);
            v368 = 0;
            v369 = 0;
            v529 = sub_39A64;
            v530 = v389;
            sub_1223C(&v529, &v533, &v532, &v531);
            v366 = 0;
            v367 = 0;
            v529 = sub_39A9C;
            v530 = v391;
            sub_1223C(&v529, &v533, &v532, &v531);
            v364 = 0;
            v365 = 0;
            v529 = sub_39AD0;
            v530 = v393;
            sub_1223C(&v529, &v533, &v532, &v531);
            v362 = 0;
            v363 = 0;
            v529 = sub_39B64;
            v530 = v395;
            sub_1223C(&v529, &v533, &v532, &v531);
            v360 = 0;
            v361 = 0;
            v529 = sub_39B9C;
            v530 = v397;
            sub_1223C(&v529, &v533, &v532, &v531);
            v358 = 0;
            v359 = 0;
            v529 = sub_39BD0;
            v530 = v398;
            sub_1223C(&v529, &v533, &v532, &v531);
            v356 = 0;
            v357 = 0;
            v529 = sub_39CFC;
            v530 = v405;
            sub_1223C(&v529, &v533, &v532, &v531);
            v354 = 0;
            v355 = 0;
            _os_log_impl(&dword_0, v382, v383, "%s.%s: Skipping on assignment of automatic download to %{BOOL}d because the automatic download toggle is disabled", v372, 0x1Cu);
            sub_12288(v374);
            sub_12288(v378);
            sub_514D0();

            v371 = v354;
          }
        }

        else
        {
          v109 = v503;

          v371 = v109;
        }

        v353 = v371;

        (*(v510 + 8))(v514, v508);
        return v353;
      }

      v539 = v588;
      v538 = v587;
      v537 = v586;
      v536 = v585;
      v110 = sub_187A0();
      v352 = v110;
      v111 = swift_getKeyPath();
      v535 = v502 & 1;
      (*(*v110 + 208))(&v535, v111);

      return v503;
    }

    else if (v501 == 2)
    {
      v565 = v588;
      v564 = v587;
      v563 = v586;
      v562 = v585;
      v112 = sub_187A0();
      v349 = v112;
      v350 = swift_getKeyPath();
      (*(*v112 + 192))(&v561);
      v351 = v561;

      if (v351 == 1)
      {
        sub_50D90();
        sub_18F68(&v585, &v550);
        v331 = 7;
        v113 = swift_allocObject();
        v315 = v113;
        v114 = v585;
        v115 = v586;
        v116 = v587;
        v113[4] = v588;
        v113[3] = v116;
        v113[2] = v115;
        v113[1] = v114;
        v325 = 17;
        v328 = swift_allocObject();
        *(v328 + 16) = v502 & 1;
        v348 = sub_50DA0();
        v311 = v348;
        v347 = sub_514A0();
        v312 = v347;
        v335 = swift_allocObject();
        v313 = v335;
        v319 = 32;
        *(v335 + 16) = 32;
        v117 = swift_allocObject();
        v118 = v319;
        v336 = v117;
        v314 = v117;
        v321 = 8;
        *(v117 + 16) = 8;
        v330 = v118;
        v119 = swift_allocObject();
        v120 = v315;
        v316 = v119;
        *(v119 + 16) = sub_393E8;
        *(v119 + 24) = v120;
        v121 = swift_allocObject();
        v122 = v316;
        v317 = v121;
        *(v121 + 16) = sub_394D0;
        *(v121 + 24) = v122;
        v123 = swift_allocObject();
        v124 = v317;
        v337 = v123;
        v318 = v123;
        *(v123 + 16) = sub_3951C;
        *(v123 + 24) = v124;
        v338 = swift_allocObject();
        v320 = v338;
        *(v338 + 16) = v319;
        v339 = swift_allocObject();
        v322 = v339;
        *(v339 + 16) = v321;
        v125 = swift_allocObject();
        v323 = v125;
        *(v125 + 16) = sub_35030;
        *(v125 + 24) = 0;
        v126 = swift_allocObject();
        v127 = v323;
        v340 = v126;
        v324 = v126;
        *(v126 + 16) = sub_3961C;
        *(v126 + 24) = v127;
        v341 = swift_allocObject();
        v326 = v341;
        *(v341 + 16) = 0;
        v342 = swift_allocObject();
        v327 = v342;
        *(v342 + 16) = 4;
        v128 = swift_allocObject();
        v129 = v328;
        v329 = v128;
        *(v128 + 16) = sub_3941C;
        *(v128 + 24) = v129;
        v130 = swift_allocObject();
        v131 = v329;
        v332 = v130;
        *(v130 + 16) = sub_3971C;
        *(v130 + 24) = v131;
        v132 = swift_allocObject();
        v133 = v332;
        v333 = v132;
        *(v132 + 16) = sub_39768;
        *(v132 + 24) = v133;
        v134 = swift_allocObject();
        v135 = v333;
        v345 = v134;
        v334 = v134;
        *(v134 + 16) = sub_397B4;
        *(v134 + 24) = v135;
        v346 = sub_23FC(&qword_64648, &qword_51E60);
        v343 = sub_51650();
        v344 = v136;

        v137 = v335;
        v138 = v344;
        *v344 = sub_39454;
        v138[1] = v137;

        v139 = v336;
        v140 = v344;
        v344[2] = sub_39488;
        v140[3] = v139;

        v141 = v337;
        v142 = v344;
        v344[4] = sub_39568;
        v142[5] = v141;

        v143 = v338;
        v144 = v344;
        v344[6] = sub_395A0;
        v144[7] = v143;

        v145 = v339;
        v146 = v344;
        v344[8] = sub_395D4;
        v146[9] = v145;

        v147 = v340;
        v148 = v344;
        v344[10] = sub_39668;
        v148[11] = v147;

        v149 = v341;
        v150 = v344;
        v344[12] = sub_396A0;
        v150[13] = v149;

        v151 = v342;
        v152 = v344;
        v344[14] = sub_396D4;
        v152[15] = v151;

        v153 = v344;
        v154 = v345;
        v344[16] = sub_39800;
        v153[17] = v154;
        sub_1489C();

        if (os_log_type_enabled(v348, v347))
        {
          v155 = v503;
          v304 = sub_514F0();
          v301 = v304;
          v302 = sub_23FC(&qword_64650, &unk_53930);
          v305 = sub_121D4(0);
          v303 = v305;
          v306 = 2;
          v307 = sub_121D4(2);
          v549 = v304;
          v548 = v305;
          v547 = v307;
          v308 = &v549;
          sub_12228(v306, &v549);
          sub_12228(3, v308);
          v545 = sub_39454;
          v546 = v313;
          sub_1223C(&v545, v308, &v548, &v547);
          v309 = v155;
          v310 = v155;
          if (v155)
          {
            v299 = 0;

            __break(1u);
          }

          else
          {
            v545 = sub_39488;
            v546 = v314;
            sub_1223C(&v545, &v549, &v548, &v547);
            v297 = 0;
            v298 = 0;
            v545 = sub_39568;
            v546 = v318;
            sub_1223C(&v545, &v549, &v548, &v547);
            v295 = 0;
            v296 = 0;
            v545 = sub_395A0;
            v546 = v320;
            sub_1223C(&v545, &v549, &v548, &v547);
            v293 = 0;
            v294 = 0;
            v545 = sub_395D4;
            v546 = v322;
            sub_1223C(&v545, &v549, &v548, &v547);
            v291 = 0;
            v292 = 0;
            v545 = sub_39668;
            v546 = v324;
            sub_1223C(&v545, &v549, &v548, &v547);
            v289 = 0;
            v290 = 0;
            v545 = sub_396A0;
            v546 = v326;
            sub_1223C(&v545, &v549, &v548, &v547);
            v287 = 0;
            v288 = 0;
            v545 = sub_396D4;
            v546 = v327;
            sub_1223C(&v545, &v549, &v548, &v547);
            v285 = 0;
            v286 = 0;
            v545 = sub_39800;
            v546 = v334;
            sub_1223C(&v545, &v549, &v548, &v547);
            v283 = 0;
            v284 = 0;
            _os_log_impl(&dword_0, v311, v312, "%s.%s: Skipping on assignment of automatic security responses to %{BOOL}d because the automatic security response toggle is disabled", v301, 0x1Cu);
            sub_12288(v303);
            sub_12288(v307);
            sub_514D0();

            v300 = v283;
          }
        }

        else
        {
          v156 = v503;

          v300 = v156;
        }

        v282 = v300;

        (*(v510 + 8))(v512, v508);
        return v282;
      }

      v560 = v588;
      v559 = v587;
      v558 = v586;
      v557 = v585;
      v157 = sub_187A0();
      v281 = v157;
      v158 = swift_getKeyPath();
      v556 = v502 & 1;
      (*(*v157 + 208))(&v556, v158);

      if (v500)
      {
        v555 = v588;
        v554 = v587;
        v553 = v586;
        v552 = v585;
        v159 = sub_187A0();
        v280 = v159;
        v160 = swift_getKeyPath();
        v551 = v502 & 1;
        (*(*v159 + 208))(&v551, v160);
      }

      return v503;
    }

    else
    {
      v581 = v588;
      v580 = v587;
      v579 = v586;
      v578 = v585;
      v161 = sub_187A0();
      v277 = v161;
      v278 = swift_getKeyPath();
      (*(*v161 + 192))(&v577);
      v279 = v577;

      if (v279 == 1)
      {
        sub_50D90();
        sub_18F68(&v585, &v571);
        v259 = 7;
        v162 = swift_allocObject();
        v243 = v162;
        v163 = v585;
        v164 = v586;
        v165 = v587;
        v162[4] = v588;
        v162[3] = v165;
        v162[2] = v164;
        v162[1] = v163;
        v253 = 17;
        v256 = swift_allocObject();
        *(v256 + 16) = v502 & 1;
        v276 = sub_50DA0();
        v239 = v276;
        v275 = sub_514A0();
        v240 = v275;
        v263 = swift_allocObject();
        v241 = v263;
        v247 = 32;
        *(v263 + 16) = 32;
        v166 = swift_allocObject();
        v167 = v247;
        v264 = v166;
        v242 = v166;
        v249 = 8;
        *(v166 + 16) = 8;
        v258 = v167;
        v168 = swift_allocObject();
        v169 = v243;
        v244 = v168;
        *(v168 + 16) = sub_38EEC;
        *(v168 + 24) = v169;
        v170 = swift_allocObject();
        v171 = v244;
        v245 = v170;
        *(v170 + 16) = sub_38FD4;
        *(v170 + 24) = v171;
        v172 = swift_allocObject();
        v173 = v245;
        v265 = v172;
        v246 = v172;
        *(v172 + 16) = sub_39020;
        *(v172 + 24) = v173;
        v266 = swift_allocObject();
        v248 = v266;
        *(v266 + 16) = v247;
        v267 = swift_allocObject();
        v250 = v267;
        *(v267 + 16) = v249;
        v174 = swift_allocObject();
        v251 = v174;
        *(v174 + 16) = sub_35150;
        *(v174 + 24) = 0;
        v175 = swift_allocObject();
        v176 = v251;
        v268 = v175;
        v252 = v175;
        *(v175 + 16) = sub_39120;
        *(v175 + 24) = v176;
        v269 = swift_allocObject();
        v254 = v269;
        *(v269 + 16) = 0;
        v270 = swift_allocObject();
        v255 = v270;
        *(v270 + 16) = 4;
        v177 = swift_allocObject();
        v178 = v256;
        v257 = v177;
        *(v177 + 16) = sub_38F20;
        *(v177 + 24) = v178;
        v179 = swift_allocObject();
        v180 = v257;
        v260 = v179;
        *(v179 + 16) = sub_39220;
        *(v179 + 24) = v180;
        v181 = swift_allocObject();
        v182 = v260;
        v261 = v181;
        *(v181 + 16) = sub_3926C;
        *(v181 + 24) = v182;
        v183 = swift_allocObject();
        v184 = v261;
        v273 = v183;
        v262 = v183;
        *(v183 + 16) = sub_392B8;
        *(v183 + 24) = v184;
        v274 = sub_23FC(&qword_64648, &qword_51E60);
        v271 = sub_51650();
        v272 = v185;

        v186 = v263;
        v187 = v272;
        *v272 = sub_38F58;
        v187[1] = v186;

        v188 = v264;
        v189 = v272;
        v272[2] = sub_38F8C;
        v189[3] = v188;

        v190 = v265;
        v191 = v272;
        v272[4] = sub_3906C;
        v191[5] = v190;

        v192 = v266;
        v193 = v272;
        v272[6] = sub_390A4;
        v193[7] = v192;

        v194 = v267;
        v195 = v272;
        v272[8] = sub_390D8;
        v195[9] = v194;

        v196 = v268;
        v197 = v272;
        v272[10] = sub_3916C;
        v197[11] = v196;

        v198 = v269;
        v199 = v272;
        v272[12] = sub_391A4;
        v199[13] = v198;

        v200 = v270;
        v201 = v272;
        v272[14] = sub_391D8;
        v201[15] = v200;

        v202 = v272;
        v203 = v273;
        v272[16] = sub_39304;
        v202[17] = v203;
        sub_1489C();

        if (os_log_type_enabled(v276, v275))
        {
          v204 = v503;
          v232 = sub_514F0();
          v229 = v232;
          v230 = sub_23FC(&qword_64650, &unk_53930);
          v233 = sub_121D4(0);
          v231 = v233;
          v234 = 2;
          v235 = sub_121D4(2);
          v570 = v232;
          v569 = v233;
          v568 = v235;
          v236 = &v570;
          sub_12228(v234, &v570);
          sub_12228(3, v236);
          v566 = sub_38F58;
          v567 = v241;
          sub_1223C(&v566, v236, &v569, &v568);
          v237 = v204;
          v238 = v204;
          if (v204)
          {
            v227 = 0;

            __break(1u);
          }

          else
          {
            v566 = sub_38F8C;
            v567 = v242;
            sub_1223C(&v566, &v570, &v569, &v568);
            v225 = 0;
            v226 = 0;
            v566 = sub_3906C;
            v567 = v246;
            sub_1223C(&v566, &v570, &v569, &v568);
            v223 = 0;
            v224 = 0;
            v566 = sub_390A4;
            v567 = v248;
            sub_1223C(&v566, &v570, &v569, &v568);
            v221 = 0;
            v222 = 0;
            v566 = sub_390D8;
            v567 = v250;
            sub_1223C(&v566, &v570, &v569, &v568);
            v219 = 0;
            v220 = 0;
            v566 = sub_3916C;
            v567 = v252;
            sub_1223C(&v566, &v570, &v569, &v568);
            v217 = 0;
            v218 = 0;
            v566 = sub_391A4;
            v567 = v254;
            sub_1223C(&v566, &v570, &v569, &v568);
            v215 = 0;
            v216 = 0;
            v566 = sub_391D8;
            v567 = v255;
            sub_1223C(&v566, &v570, &v569, &v568);
            v213 = 0;
            v214 = 0;
            v566 = sub_39304;
            v567 = v262;
            sub_1223C(&v566, &v570, &v569, &v568);
            v211 = 0;
            v212 = 0;
            _os_log_impl(&dword_0, v239, v240, "%s.%s: Skipping on assignment of automatic system files & data to %{BOOL}d because the automatic security response toggle is disabled", v229, 0x1Cu);
            sub_12288(v231);
            sub_12288(v235);
            sub_514D0();

            v228 = v211;
          }
        }

        else
        {
          v205 = v503;

          v228 = v205;
        }

        v210 = v228;

        (*(v510 + 8))(v511, v508);
        return v210;
      }

      v576 = v588;
      v575 = v587;
      v574 = v586;
      v573 = v585;
      v206 = sub_187A0();
      v209 = v206;
      v207 = swift_getKeyPath();
      v572 = v502 & 1;
      (*(*v206 + 208))(&v572, v207);

      return v503;
    }
  }

  v528 = v588;
  v527 = v587;
  v526 = v586;
  v525 = v585;
  v17 = sub_187A0();
  v497 = v17;
  v498 = swift_getKeyPath();
  (*(*v17 + 192))(&v524);
  v499 = v524;

  if (v499 == 1)
  {
    sub_50D90();
    sub_18F68(&v585, &v522);
    v479 = 7;
    v18 = swift_allocObject();
    v463 = v18;
    v19 = v585;
    v20 = v586;
    v21 = v587;
    v18[4] = v588;
    v18[3] = v21;
    v18[2] = v20;
    v18[1] = v19;
    v473 = 17;
    v476 = swift_allocObject();
    *(v476 + 16) = v502 & 1;
    v496 = sub_50DA0();
    v459 = v496;
    v495 = sub_514A0();
    v460 = v495;
    v483 = swift_allocObject();
    v461 = v483;
    v467 = 32;
    *(v483 + 16) = 32;
    v22 = swift_allocObject();
    v23 = v467;
    v484 = v22;
    v462 = v22;
    v469 = 8;
    *(v22 + 16) = 8;
    v478 = v23;
    v24 = swift_allocObject();
    v25 = v463;
    v464 = v24;
    *(v24 + 16) = sub_39E0C;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v464;
    v465 = v26;
    *(v26 + 16) = sub_39EF4;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v465;
    v485 = v28;
    v466 = v28;
    *(v28 + 16) = sub_39F40;
    *(v28 + 24) = v29;
    v486 = swift_allocObject();
    v468 = v486;
    *(v486 + 16) = v467;
    v487 = swift_allocObject();
    v470 = v487;
    *(v487 + 16) = v469;
    v30 = swift_allocObject();
    v471 = v30;
    *(v30 + 16) = sub_34E28;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v471;
    v488 = v31;
    v472 = v31;
    *(v31 + 16) = sub_3A040;
    *(v31 + 24) = v32;
    v489 = swift_allocObject();
    v474 = v489;
    *(v489 + 16) = 0;
    v490 = swift_allocObject();
    v475 = v490;
    *(v490 + 16) = 4;
    v33 = swift_allocObject();
    v34 = v476;
    v477 = v33;
    *(v33 + 16) = sub_39E40;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v477;
    v480 = v35;
    *(v35 + 16) = sub_3A140;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v480;
    v481 = v37;
    *(v37 + 16) = sub_3A18C;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v481;
    v493 = v39;
    v482 = v39;
    *(v39 + 16) = sub_3A1D8;
    *(v39 + 24) = v40;
    v494 = sub_23FC(&qword_64648, &qword_51E60);
    v491 = sub_51650();
    v492 = v41;

    v42 = v483;
    v43 = v492;
    *v492 = sub_39E78;
    v43[1] = v42;

    v44 = v484;
    v45 = v492;
    v492[2] = sub_39EAC;
    v45[3] = v44;

    v46 = v485;
    v47 = v492;
    v492[4] = sub_39F8C;
    v47[5] = v46;

    v48 = v486;
    v49 = v492;
    v492[6] = sub_39FC4;
    v49[7] = v48;

    v50 = v487;
    v51 = v492;
    v492[8] = sub_39FF8;
    v51[9] = v50;

    v52 = v488;
    v53 = v492;
    v492[10] = sub_3A08C;
    v53[11] = v52;

    v54 = v489;
    v55 = v492;
    v492[12] = sub_3A0C4;
    v55[13] = v54;

    v56 = v490;
    v57 = v492;
    v492[14] = sub_3A0F8;
    v57[15] = v56;

    v58 = v492;
    v59 = v493;
    v492[16] = sub_3A224;
    v58[17] = v59;
    sub_1489C();

    if (os_log_type_enabled(v496, v495))
    {
      v60 = v503;
      v452 = sub_514F0();
      v449 = v452;
      v450 = sub_23FC(&qword_64650, &unk_53930);
      v453 = sub_121D4(0);
      v451 = v453;
      v454 = 2;
      v455 = sub_121D4(2);
      v521 = v452;
      v520 = v453;
      v519 = v455;
      v456 = &v521;
      sub_12228(v454, &v521);
      sub_12228(3, v456);
      v517 = sub_39E78;
      v518 = v461;
      sub_1223C(&v517, v456, &v520, &v519);
      v457 = v60;
      v458 = v60;
      if (v60)
      {
        v447 = 0;

        __break(1u);
      }

      else
      {
        v517 = sub_39EAC;
        v518 = v462;
        sub_1223C(&v517, &v521, &v520, &v519);
        v445 = 0;
        v446 = 0;
        v517 = sub_39F8C;
        v518 = v466;
        sub_1223C(&v517, &v521, &v520, &v519);
        v443 = 0;
        v444 = 0;
        v517 = sub_39FC4;
        v518 = v468;
        sub_1223C(&v517, &v521, &v520, &v519);
        v441 = 0;
        v442 = 0;
        v517 = sub_39FF8;
        v518 = v470;
        sub_1223C(&v517, &v521, &v520, &v519);
        v439 = 0;
        v440 = 0;
        v517 = sub_3A08C;
        v518 = v472;
        sub_1223C(&v517, &v521, &v520, &v519);
        v437 = 0;
        v438 = 0;
        v517 = sub_3A0C4;
        v518 = v474;
        sub_1223C(&v517, &v521, &v520, &v519);
        v435 = 0;
        v436 = 0;
        v517 = sub_3A0F8;
        v518 = v475;
        sub_1223C(&v517, &v521, &v520, &v519);
        v433 = 0;
        v434 = 0;
        v517 = sub_3A224;
        v518 = v482;
        sub_1223C(&v517, &v521, &v520, &v519);
        v431 = 0;
        v432 = 0;
        _os_log_impl(&dword_0, v459, v460, "%s.%s: Skipping on assignment of automatic update to %{BOOL}d because the automatic updates toggle is disabled", v449, 0x1Cu);
        sub_12288(v451);
        sub_12288(v455);
        sub_514D0();

        v448 = v431;
      }
    }

    else
    {
      v61 = v503;

      v448 = v61;
    }

    v429 = v448;

    (*(v510 + 8))(v516, v508);
    return v429;
  }

  v62 = v503;
  v425 = sub_511D0();
  v424 = v425;
  v427 = &v585;
  sub_18F68(&v585, &v523);
  v426 = &v209;
  __chkstk_darwin(v425);
  v63 = v502;
  *(&v209 - 2) = v427;
  *(&v209 - 8) = v63 & 1;
  *(&v209 - 7) = v64 & 1;
  sub_50E20();
  v428 = v62;
  if (!v62)
  {
    sub_180B8(&v585);

    return v428;
  }

  result = sub_180B8(&v585);
  __break(1u);
  return result;
}

uint64_t *sub_28DA4(uint64_t *a1)
{
  v39 = a1;
  v46 = 0;
  v57 = 0;
  v36 = 0;
  v37 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v38 = v18 - v37;
  v40 = sub_50DB0();
  v41 = *(v40 - 8);
  v42 = v41;
  v1 = *(v41 + 64);
  v2 = __chkstk_darwin(v39);
  v43 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  sub_50D90();
  v48 = sub_50DA0();
  v44 = v48;
  v47 = sub_51480();
  v45 = v47;
  sub_23FC(&qword_64648, &qword_51E60);
  v49 = sub_51650();
  if (os_log_type_enabled(v48, v47))
  {
    v4 = v36;
    v27 = sub_514F0();
    v23 = v27;
    v24 = sub_23FC(&qword_64650, &unk_53930);
    v25 = 0;
    v28 = sub_121D4(0);
    v26 = v28;
    v29 = sub_121D4(v25);
    v53 = v27;
    v52 = v28;
    v51 = v29;
    v30 = 0;
    v31 = &v53;
    sub_12228(0, &v53);
    sub_12228(v30, v31);
    v50 = v49;
    v32 = v18;
    __chkstk_darwin(v18);
    v33 = &v18[-6];
    v18[-4] = v5;
    v18[-3] = &v52;
    v18[-2] = &v51;
    v34 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v35 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v44, v45, "User Action: Clicked 'Cancel Install Tonight' on the automaticUpdatesCancellation alert in AutomaticUpdatesView", v23, 2u);
      v21 = 0;
      sub_12288(v26);
      sub_12288(v29);
      sub_514D0();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v42 + 8))(v43, v40);
  sub_51430();
  v18[0] = 0;
  v6 = *(*(sub_51450() - 8) + 56);
  v19 = 0;
  v6(v38);
  sub_18F68(v39, v56);
  v7 = swift_allocObject();
  v8 = v18[0];
  v9 = v38;
  v10 = v39;
  *(v7 + 16) = v18[0];
  *(v7 + 24) = v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  *(v7 + 80) = *(v10 + 3);
  *(v7 + 64) = v13;
  *(v7 + 48) = v12;
  *(v7 + 32) = v11;
  v18[1] = sub_F350(v8, v8, v9, &unk_52E50, v7, &type metadata for () + 8);
  sub_14BA4(v38);

  sub_18F68(v39, v55);
  v14 = *v39;
  v15 = *(v39 + 1);
  v16 = *(v39 + 2);
  v54[3] = *(v39 + 3);
  v54[2] = v16;
  v54[1] = v15;
  v54[0] = v14;
  v20 = v54;
  sub_1E434(v19);
  return sub_180B8(v20);
}

uint64_t sub_293D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 232) = a4;
  *(v4 + 208) = v4;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 304) = 0;
  v5 = sub_50DB0();
  *(v4 + 240) = v5;
  v8 = *(v5 - 8);
  *(v4 + 248) = v8;
  v9 = *(v8 + 64);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 216) = a4;
  v6 = *(v4 + 208);

  return _swift_task_switch(sub_294E8, 0, 0);
}

uint64_t sub_294E8()
{
  v1 = v0[29];
  v0[26] = v0;
  memcpy(v0 + 2, v1, 0x40uLL);
  sub_51410();
  v0[34] = sub_51400();
  v5 = sub_513F0();
  v3 = v0[26];

  return _swift_task_switch(sub_2959C, v5, v2);
}

uint64_t sub_2959C()
{
  v4 = v0[34];
  v0[26] = v0;
  v0[35] = sub_184E0();

  v1 = async function pointer to ReactiveUIManager.unscheduleTargetedUpdate(delegate:)[1];
  v2 = swift_task_alloc();
  *(v5 + 288) = v2;
  *v2 = *(v5 + 208);
  v2[1] = sub_29670;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_29670(char a1)
{
  v10 = *v2;
  v4 = *(*v2 + 288);
  *(v10 + 208) = *v2;
  v11 = (v10 + 208);
  *(v10 + 305) = a1;
  *(v10 + 296) = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_2A428;
  }

  else
  {
    v5 = *(v10 + 280);

    v6 = *v11;
    v7 = sub_297F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_297F8()
{
  v44 = v0;
  v1 = *(v0 + 305);
  v18 = v1;
  v2 = *(v0 + 264);
  __src = *(v0 + 232);
  *(v0 + 208) = v0;
  *(v0 + 304) = v1 & 1;
  sub_50D90();
  sub_18F68(__src, v0 + 144);
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x40uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v37 = sub_50DA0();
  v38 = sub_51490();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3E504;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_3E5EC;
  *(v21 + 24) = v20;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_3E638;
  *(v29 + 24) = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2B068;
  *(v22 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_3E738;
  *(v32 + 24) = v22;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3E538;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_3E838;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_3E884;
  *(v26 + 24) = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_3E8D0;
  *(v35 + 24) = v26;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v36 = v3;

  *v36 = sub_3E570;
  v36[1] = v27;

  v36[2] = sub_3E5A4;
  v36[3] = v28;

  v36[4] = sub_3E684;
  v36[5] = v29;

  v36[6] = sub_3E6BC;
  v36[7] = v30;

  v36[8] = sub_3E6F0;
  v36[9] = v31;

  v36[10] = sub_3E784;
  v36[11] = v32;

  v36[12] = sub_3E7BC;
  v36[13] = v33;

  v36[14] = sub_3E7F0;
  v36[15] = v34;

  v36[16] = sub_3E91C;
  v36[17] = v35;
  sub_1489C();

  if (os_log_type_enabled(v37, v38))
  {
    v4 = v16[37];
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(0);
    v15 = sub_121D4(2);
    v39 = buf;
    v40 = v14;
    v41 = v15;
    sub_12228(2, &v39);
    sub_12228(3, &v39);
    v42 = sub_3E570;
    v43 = v27;
    sub_1223C(&v42, &v39, &v40, &v41);
    if (v4)
    {
    }

    v42 = sub_3E5A4;
    v43 = v28;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E684;
    v43 = v29;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E6BC;
    v43 = v30;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E6F0;
    v43 = v31;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E784;
    v43 = v32;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E7BC;
    v43 = v33;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E7F0;
    v43 = v34;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_3E91C;
    v43 = v35;
    sub_1223C(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_0, v37, v38, "%s.%s: unscheduleTargetedUpdate result: %{BOOL}d", buf, 0x1Cu);
    sub_12288(v14);
    sub_12288(v15);
    sub_514D0();
  }

  else
  {
  }

  v10 = v16[33];
  v11 = v16[30];
  v9 = v16[31];
  _objc_release(v37);
  (*(v9 + 8))(v10, v11);
  v6 = v16[33];
  v12 = v16[32];

  v7 = *(v16[26] + 8);
  v8 = v16[26];

  return v7();
}

uint64_t sub_2A428()
{
  v43 = v0;
  v18 = v0[37];
  v1 = v0[35];
  v2 = v0[32];
  __src = v0[29];
  v0[26] = v0;

  swift_errorRetain();
  v0[28] = v18;
  sub_50D90();
  sub_18F68(__src, (v0 + 10));
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x40uLL);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_28D78();

  v36 = sub_50DA0();
  v37 = sub_514A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3DF40;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_3E038;
  *(v21 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_3E084;
  *(v28 + 24) = v21;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2B0B0;
  *(v22 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_3E184;
  *(v31 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = 64;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3DF88;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_3E284;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_3E2D0;
  *(v34 + 24) = v25;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v35 = v3;

  *v35 = sub_3DFBC;
  v35[1] = v26;

  v35[2] = sub_3DFF0;
  v35[3] = v27;

  v35[4] = sub_3E0D0;
  v35[5] = v28;

  v35[6] = sub_3E108;
  v35[7] = v29;

  v35[8] = sub_3E13C;
  v35[9] = v30;

  v35[10] = sub_3E1D0;
  v35[11] = v31;

  v35[12] = sub_3E208;
  v35[13] = v32;

  v35[14] = sub_3E23C;
  v35[15] = v33;

  v35[16] = sub_3E4A0;
  v35[17] = v34;
  sub_1489C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(1);
    v15 = sub_121D4(2);
    v38 = buf;
    v39 = v14;
    v40 = v15;
    sub_12228(2, &v38);
    sub_12228(3, &v38);
    v41 = sub_3DFBC;
    v42 = v26;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3DFF0;
    v42 = v27;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E0D0;
    v42 = v28;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E108;
    v42 = v29;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E13C;
    v42 = v30;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E1D0;
    v42 = v31;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E208;
    v42 = v32;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E23C;
    v42 = v33;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_3E4A0;
    v42 = v34;
    sub_1223C(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "%s.%s: Failed to unschedule targeted update: %@", buf, 0x20u);
    sub_12288(v14);
    sub_12288(v15);
    sub_514D0();
  }

  else
  {
  }

  v11 = v16[37];
  v9 = v16[32];
  v10 = v16[30];
  v8 = v16[31];
  _objc_release(v36);
  (*(v8 + 8))(v9, v10);

  v4 = v16[33];
  v12 = v16[32];

  v5 = *(v16[26] + 8);
  v6 = v16[26];

  return v5();
}

uint64_t *sub_2B108(uint64_t *a1)
{
  v28 = a1;
  v35 = 0;
  v45 = 0;
  v27 = 0;
  v29 = sub_50DB0();
  v30 = *(v29 - 8);
  v31 = v30;
  v1 = *(v30 + 64);
  v2 = __chkstk_darwin(v28);
  v32 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  sub_50D90();
  v37 = sub_50DA0();
  v33 = v37;
  v36 = sub_51480();
  v34 = v36;
  sub_23FC(&qword_64648, &qword_51E60);
  v38 = sub_51650();
  if (os_log_type_enabled(v37, v36))
  {
    v4 = v27;
    v18 = sub_514F0();
    v14 = v18;
    v15 = sub_23FC(&qword_64650, &unk_53930);
    v16 = 0;
    v19 = sub_121D4(0);
    v17 = v19;
    v20 = sub_121D4(v16);
    v42 = v18;
    v41 = v19;
    v40 = v20;
    v21 = 0;
    v22 = &v42;
    sub_12228(0, &v42);
    sub_12228(v21, v22);
    v39 = v38;
    v23 = &v10;
    __chkstk_darwin(&v10);
    v24 = &v10 - 6;
    *(&v10 - 4) = v5;
    *(&v10 - 3) = &v41;
    *(&v10 - 2) = &v40;
    v25 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v26 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v33, v34, "User Action: Clicked 'Cancel' on the automaticUpdatesCancellation alert in AutomaticUpdatesView", v14, 2u);
      v12 = 0;
      sub_12288(v17);
      sub_12288(v20);
      sub_514D0();

      v13 = v26;
    }
  }

  else
  {

    v13 = v27;
  }

  (*(v31 + 8))(v32, v29);
  sub_18F68(v28, v44);
  v6 = *v28;
  v7 = *(v28 + 1);
  v8 = *(v28 + 2);
  v43[3] = *(v28 + 3);
  v43[2] = v8;
  v43[1] = v7;
  v43[0] = v6;
  v11 = v43;
  sub_1E434(0);
  return sub_180B8(v11);
}

uint64_t sub_2B570@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x22uLL);
  v116 = 0u;
  v117 = 0u;
  v104 = 0u;
  v105 = 0u;
  __b[5] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v56 = sub_1E3B0();
  if (v56)
  {
    if (v56 == 1)
    {
      HIBYTE(v26) = 1;
      sub_51350("Are you sure you want to turn off automatic updates, or cancel updates scheduled to be installed tonight?", 0x69uLL, 1);
      sub_50F60();
      v18 = *sub_411D0();
      v18;
      v113 = 0;
      v114 = 0;
      v115 = v26 & 0x100;
      v109 = sub_50FD0();
      v110 = v3;
      v111 = v4;
      v112 = v5;
      v106[0] = v109;
      v106[1] = v3;
      v107 = v4 & 1;
      v108 = v5;
      sub_6394(v106, &type metadata for Text, &v116);
      sub_3BE9C(v106);
      v19 = v116;
      v20 = v117;
      v21 = *(&v117 + 1);
      sub_3BF28(v116, *(&v116 + 1), v117 & 1);

      v101 = v19;
      v102 = v20 & 1;
      v103 = v21;
      sub_99E8(&v101, &type metadata for Text, &v104);
      sub_3BE9C(&v101);
      v22 = v104;
      v23 = v105;
      v24 = *(&v105 + 1);
      sub_3BF28(v104, *(&v104 + 1), v105 & 1);

      v90 = v22;
      v91 = v23 & 1;
      v92 = v24;
      sub_B418(&v90, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v93);
      sub_3BE9C(&v90);
      v88[0] = v93[0];
      v88[1] = v93[1];
      v88[2] = v93[2];
      v88[3] = v93[3];
      v89 = v94 & 1;
      v25 = sub_23FC(&qword_647A0, qword_53410);
      v6 = sub_382C4();
      sub_B2D4(v88, v25, &type metadata for EmptyView, v6, &protocol witness table for EmptyView, &v95);
      sub_3CDD4(v88);
      v28 = v95;
      v29 = v96;
      v30 = v97;
      v31 = v98;
      v32 = v99;
      v27 = v100;
      sub_3CBF4(v95, v96, v97, v98, v99, v100 & 1);
      __b[0] = v28;
      __b[1] = v29;
      __b[2] = v30;
      __b[3] = v31;
      LOBYTE(__b[4]) = v32;
      BYTE1(__b[4]) = v27 & 1;
      sub_3BE9C(&v104);
      sub_3BE9C(&v116);
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v27;
    }

    else
    {
      memcpy(v83, a1, sizeof(v83));
      sub_2BDB0(v80);
      v77[0] = v80[0];
      v77[1] = v80[1];
      v78 = v81 & 1;
      v79 = v82;
      sub_6394(v77, &type metadata for Text, &v84);
      sub_3BE9C(v77);
      v33 = v84;
      v34 = v85;
      v35 = v86;
      v36 = v87;
      sub_3BF28(v84, v85, v86 & 1);

      v70[0] = v33;
      v70[1] = v34;
      v71 = v35 & 1;
      v72 = v36;
      sub_99E8(v70, &type metadata for Text, &v73);
      sub_3BE9C(v70);
      v37 = v73;
      v38 = v74;
      v39 = v75;
      v40 = v76;
      sub_3BF28(v73, v74, v75 & 1);

      v59[0] = v37;
      v59[1] = v38;
      v60 = v39 & 1;
      v61 = v40;
      sub_B2D4(v59, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v62);
      sub_3BE9C(v59);
      v57[0] = v62[0];
      v57[1] = v62[1];
      v57[2] = v62[2];
      v57[3] = v62[3];
      v58 = v63 & 1;
      v41 = sub_23FC(&qword_647A0, qword_53410);
      v2 = sub_382C4();
      sub_B2D4(v57, v41, &type metadata for EmptyView, v2, &protocol witness table for EmptyView, &v64);
      sub_3CDD4(v57);
      v43 = v64;
      v44 = v65;
      v45 = v66;
      v46 = v67;
      v47 = v68;
      v42 = v69;
      sub_3CBF4(v64, v65, v66, v67, v68, v69 & 1);
      __b[0] = v43;
      __b[1] = v44;
      __b[2] = v45;
      __b[3] = v46;
      LOBYTE(__b[4]) = v47;
      BYTE1(__b[4]) = v42 & 1;
      sub_3BE9C(&v73);
      sub_3BE9C(&v84);
      v48 = v43;
      v49 = v44;
      v50 = v45;
      v51 = v46;
      v52 = v47;
      v53 = v42;
    }
  }

  else
  {
    sub_511E0();
    sub_6394(v11, &type metadata for EmptyView, v11);
    sub_99E8(v11, &type metadata for EmptyView, v11);
    v10 = sub_23FC(&qword_647A0, qword_53410);
    v7 = sub_382C4();
    sub_B418(v11, v10, &type metadata for EmptyView, v7, &protocol witness table for EmptyView, &v121);
    v13 = v121;
    v14 = v122;
    v15 = v123;
    v16 = v124;
    v17 = v125;
    v12 = v126;
    sub_3CBF4(v121, v122, v123, v124, v125, v126 & 1);
    __b[0] = v13;
    __b[1] = v14;
    __b[2] = v15;
    __b[3] = v16;
    LOBYTE(__b[4]) = v17;
    BYTE1(__b[4]) = v12 & 1;
    v48 = v13;
    v49 = v14;
    v50 = v15;
    v51 = v16;
    v52 = v17;
    v53 = v12;
  }

  v118[0] = v48;
  v118[1] = v49;
  v118[2] = v50;
  v118[3] = v51;
  v119 = v52;
  v120 = v53 & 1;
  v9 = sub_23FC(&qword_64750, &qword_52338);
  sub_38220();
  sub_99E8(v118, v9, a2);
  sub_3CCC0(v118);
  return sub_3CCC0(__b);
}

uint64_t sub_2BDB0@<X0>(uint64_t *a1@<X8>)
{
  v157 = a1;
  v158 = sub_3A2F0;
  v159 = sub_3A3A0;
  v160 = sub_3A3EC;
  v161 = sub_352B0;
  v162 = sub_3A4EC;
  v163 = sub_3A324;
  v164 = sub_3A358;
  v165 = sub_3A438;
  v166 = sub_3A470;
  v167 = sub_3A4A4;
  v168 = sub_3A538;
  v169 = sub_3A59C;
  v170 = sub_3A64C;
  v171 = sub_3A698;
  v172 = sub_35270;
  v173 = sub_3A798;
  v174 = sub_3A5D0;
  v175 = sub_3A604;
  v176 = sub_3A6E4;
  v177 = sub_3A71C;
  v178 = sub_3A750;
  v179 = sub_3A7E4;
  v224 = 0;
  v180 = 0;
  v204 = 0;
  v205 = 0;
  v183 = 0;
  v181 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v182 = v66 - v181;
  v184 = (*(*(sub_512F0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v183);
  v185 = v66 - v184;
  v186 = sub_50DB0();
  v187 = *(v186 - 8);
  v188 = v186 - 8;
  v189 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v186);
  v190 = v66 - v189;
  v191 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66 - v189);
  v192 = v66 - v191;
  v193 = __dst;
  v194 = 64;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v225, __dst, sizeof(v225));
  v195 = sub_184E0();
  v196 = sub_50B90();

  v197 = [v196 currentInstalledNeRDInfo];
  _objc_release(v196);
  if (v197)
  {
    v156 = v197;
    v153 = v197;
    v154 = sub_51290();
    _objc_release(v153);
    v155 = v154;
  }

  else
  {
    v155 = 0;
  }

  v152 = v155;
  v224 = v155;
  v223 = v155;
  v151 = v155 != 0;
  if (v155)
  {

    if (v152)
    {
      v150 = v152;
      v145 = v152;
      v146 = sub_512A0();
      v147 = v3;

      v148 = v146;
      v149 = v147;
    }

    else
    {
      v148 = 0;
      v149 = 0;
    }

    v143 = v149;
    v144 = v148;
    if (v149)
    {
      v141 = v144;
      v142 = v143;
      v137 = v143;
      v138 = v144;
      v204 = v144;
      v205 = v143;
      v203[2] = v144;
      v203[3] = v143;
      v4 = sub_51350("", 0, 1);
      v139 = v203;
      v203[0] = v4;
      v203[1] = v5;
      v140 = sub_51360();
      sub_37EA8(v139);
      if ((v140 & 1) == 0)
      {

        v136 = v202;
        v202[0] = v138;
        v202[1] = v137;
        sub_37E30();
        v6 = sub_50FE0();
        v7 = v157;
        v198 = v6;
        v199 = v8;
        v200 = v9;
        v201 = v10;
        *v157 = v6;
        v7[1] = v8;
        *(v7 + 16) = v9 & 1;
        v7[3] = v10;
      }
    }

    sub_50D90();
    v115 = __dst;
    sub_18F68(__dst, &v211);
    v123 = 7;
    v116 = swift_allocObject();
    memcpy((v116 + 16), v115, 0x40uLL);
    v134 = sub_50DA0();
    v135 = sub_514A0();
    v120 = 17;
    v125 = swift_allocObject();
    v119 = 32;
    *(v125 + 16) = 32;
    v126 = swift_allocObject();
    v121 = 8;
    *(v126 + 16) = 8;
    v122 = 32;
    v12 = swift_allocObject();
    v13 = v116;
    v117 = v12;
    *(v12 + 16) = v169;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v117;
    v118 = v14;
    *(v14 + 16) = v170;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v118;
    v127 = v16;
    *(v16 + 16) = v171;
    *(v16 + 24) = v17;
    v128 = swift_allocObject();
    *(v128 + 16) = v119;
    v129 = swift_allocObject();
    *(v129 + 16) = v121;
    v18 = swift_allocObject();
    v124 = v18;
    *(v18 + 16) = v172;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v124;
    v131 = v19;
    *(v19 + 16) = v173;
    *(v19 + 24) = v20;
    v133 = sub_23FC(&qword_64648, &qword_51E60);
    v130 = sub_51650();
    v132 = v21;

    v22 = v125;
    v23 = v132;
    *v132 = v174;
    v23[1] = v22;

    v24 = v126;
    v25 = v132;
    v132[2] = v175;
    v25[3] = v24;

    v26 = v127;
    v27 = v132;
    v132[4] = v176;
    v27[5] = v26;

    v28 = v128;
    v29 = v132;
    v132[6] = v177;
    v29[7] = v28;

    v30 = v129;
    v31 = v132;
    v132[8] = v178;
    v31[9] = v30;

    v32 = v131;
    v33 = v132;
    v132[10] = v179;
    v33[11] = v32;
    sub_1489C();

    if (os_log_type_enabled(v134, v135))
    {
      v34 = v180;
      v107 = sub_514F0();
      v106 = sub_23FC(&qword_64650, &unk_53930);
      v108 = sub_121D4(0);
      v109 = sub_121D4(2);
      v111 = &v210;
      v210 = v107;
      v112 = &v209;
      v209 = v108;
      v113 = &v208;
      v208 = v109;
      v110 = 2;
      sub_12228(2, &v210);
      sub_12228(v110, v111);
      v206 = v174;
      v207 = v125;
      sub_1223C(&v206, v111, v112, v113);
      v114 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v206 = v175;
        v207 = v126;
        sub_1223C(&v206, &v210, &v209, &v208);
        v105 = 0;
        v206 = v176;
        v207 = v127;
        sub_1223C(&v206, &v210, &v209, &v208);
        v104 = 0;
        v206 = v177;
        v207 = v128;
        sub_1223C(&v206, &v210, &v209, &v208);
        v103 = 0;
        v206 = v178;
        v207 = v129;
        sub_1223C(&v206, &v210, &v209, &v208);
        v102 = 0;
        v206 = v179;
        v207 = v131;
        sub_1223C(&v206, &v210, &v209, &v208);
        _os_log_impl(&dword_0, v134, v135, "%s.%s: Couldn't convert NeRD info to string", v107, 0x16u);
        sub_12288(v108);
        sub_12288(v109);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v134);
    (*(v187 + 8))(v192, v186);
  }

  else
  {
    sub_50D90();
    v81 = __dst;
    sub_18F68(__dst, v222);
    v89 = 7;
    v82 = swift_allocObject();
    memcpy((v82 + 16), v81, 0x40uLL);
    v100 = sub_50DA0();
    v101 = sub_514A0();
    v86 = 17;
    v91 = swift_allocObject();
    v85 = 32;
    *(v91 + 16) = 32;
    v92 = swift_allocObject();
    v87 = 8;
    *(v92 + 16) = 8;
    v88 = 32;
    v35 = swift_allocObject();
    v36 = v82;
    v83 = v35;
    *(v35 + 16) = v158;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v83;
    v84 = v37;
    *(v37 + 16) = v159;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v84;
    v93 = v39;
    *(v39 + 16) = v160;
    *(v39 + 24) = v40;
    v94 = swift_allocObject();
    *(v94 + 16) = v85;
    v95 = swift_allocObject();
    *(v95 + 16) = v87;
    v41 = swift_allocObject();
    v90 = v41;
    *(v41 + 16) = v161;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v90;
    v97 = v42;
    *(v42 + 16) = v162;
    *(v42 + 24) = v43;
    v99 = sub_23FC(&qword_64648, &qword_51E60);
    v96 = sub_51650();
    v98 = v44;

    v45 = v91;
    v46 = v98;
    *v98 = v163;
    v46[1] = v45;

    v47 = v92;
    v48 = v98;
    v98[2] = v164;
    v48[3] = v47;

    v49 = v93;
    v50 = v98;
    v98[4] = v165;
    v50[5] = v49;

    v51 = v94;
    v52 = v98;
    v98[6] = v166;
    v52[7] = v51;

    v53 = v95;
    v54 = v98;
    v98[8] = v167;
    v54[9] = v53;

    v55 = v97;
    v56 = v98;
    v98[10] = v168;
    v56[11] = v55;
    sub_1489C();

    if (os_log_type_enabled(v100, v101))
    {
      v57 = v180;
      v73 = sub_514F0();
      v72 = sub_23FC(&qword_64650, &unk_53930);
      v74 = sub_121D4(0);
      v75 = sub_121D4(2);
      v77 = v216;
      v216[0] = v73;
      v78 = &v215;
      v215 = v74;
      v79 = &v214;
      v214 = v75;
      v76 = 2;
      sub_12228(2, v216);
      sub_12228(v76, v77);
      v212 = v163;
      v213 = v91;
      sub_1223C(&v212, v77, v78, v79);
      v80 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v212 = v164;
        v213 = v92;
        sub_1223C(&v212, v216, &v215, &v214);
        v71 = 0;
        v212 = v165;
        v213 = v93;
        sub_1223C(&v212, v216, &v215, &v214);
        v70 = 0;
        v212 = v166;
        v213 = v94;
        sub_1223C(&v212, v216, &v215, &v214);
        v69 = 0;
        v212 = v167;
        v213 = v95;
        sub_1223C(&v212, v216, &v215, &v214);
        v68 = 0;
        v212 = v168;
        v213 = v97;
        sub_1223C(&v212, v216, &v215, &v214);
        _os_log_impl(&dword_0, v100, v101, "%s.%s: Couldn't fetch RecoveryOS info", v73, 0x16u);
        sub_12288(v74);
        sub_12288(v75);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v100);
    (*(v187 + 8))(v190, v186);
  }

  v67 = 1;
  sub_51350("No RecoveryOS information available.", 0x24uLL, 1);
  sub_512E0();
  v66[0] = *sub_411D0();
  v66[0];
  sub_20CD4();
  v219[2] = 0;
  v219[3] = 0;
  v220 = 0;
  v221 = v67 & 1;
  v58 = sub_51320();
  v66[1] = v219;
  v219[0] = v58;
  v219[1] = v59;
  sub_37E30();
  v60 = sub_50FE0();
  v61 = v67;
  v62 = v157;
  v216[1] = v60;
  v216[2] = v63;
  v217 = v64;
  v218 = v65;
  *v157 = v60;
  v62[1] = v63;
  *(v62 + 16) = v64 & 1 & v61;
  v62[3] = v65;
}

uint64_t sub_2D188(void *__src)
{
  v3 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  return sub_2D1D4();
}

uint64_t sub_2D1D4()
{
  v125 = sub_3A848;
  v127 = sub_3A8F8;
  v129 = sub_3A944;
  v134 = sub_352F0;
  v137 = sub_3AA44;
  v139 = sub_3A87C;
  v141 = sub_3A8B0;
  v143 = sub_3A990;
  v145 = sub_3A9C8;
  v147 = sub_3A9FC;
  v150 = sub_3AA90;
  v104 = sub_3AAF4;
  v105 = sub_3ABA4;
  v106 = sub_3ABF0;
  v107 = sub_35408;
  v108 = sub_3ACF0;
  v109 = sub_3AB28;
  v110 = sub_3AB5C;
  v111 = sub_3AC3C;
  v112 = sub_3AC74;
  v113 = sub_3ACA8;
  v114 = sub_3AD3C;
  v115 = 0;
  v116 = sub_50DB0();
  v117 = *(v116 - 8);
  v118 = v116 - 8;
  v119 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v120 = &v50 - v119;
  v121 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v50 - v119);
  v122 = &v50 - v121;
  v123 = __dst;
  v124 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  sub_50D90();
  sub_18F68(v123, v170);
  v136 = 7;
  v126 = swift_allocObject();
  memcpy((v126 + 16), v123, v124);
  v154 = sub_50DA0();
  v155 = sub_51490();
  v132 = 17;
  v140 = swift_allocObject();
  v131 = 32;
  *(v140 + 16) = 32;
  v142 = swift_allocObject();
  v133 = 8;
  *(v142 + 16) = 8;
  v135 = 32;
  v2 = swift_allocObject();
  v3 = v126;
  v128 = v2;
  *(v2 + 16) = v125;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v128;
  v130 = v4;
  *(v4 + 16) = v127;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v130;
  v144 = v6;
  *(v6 + 16) = v129;
  *(v6 + 24) = v7;
  v146 = swift_allocObject();
  *(v146 + 16) = v131;
  v148 = swift_allocObject();
  *(v148 + 16) = v133;
  v8 = swift_allocObject();
  v138 = v8;
  *(v8 + 16) = v134;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v138;
  v151 = v9;
  *(v9 + 16) = v137;
  *(v9 + 24) = v10;
  v153 = sub_23FC(&qword_64648, &qword_51E60);
  v149 = sub_51650();
  v152 = v11;

  v12 = v140;
  v13 = v152;
  *v152 = v139;
  v13[1] = v12;

  v14 = v142;
  v15 = v152;
  v152[2] = v141;
  v15[3] = v14;

  v16 = v144;
  v17 = v152;
  v152[4] = v143;
  v17[5] = v16;

  v18 = v146;
  v19 = v152;
  v152[6] = v145;
  v19[7] = v18;

  v20 = v148;
  v21 = v152;
  v152[8] = v147;
  v21[9] = v20;

  v22 = v151;
  v23 = v152;
  v152[10] = v150;
  v23[11] = v22;
  sub_1489C();

  if (os_log_type_enabled(v154, v155))
  {
    v24 = v115;
    v96 = sub_514F0();
    v95 = sub_23FC(&qword_64650, &unk_53930);
    v97 = sub_121D4(0);
    v98 = sub_121D4(2);
    v100 = &v160;
    v160 = v96;
    v101 = &v159;
    v159 = v97;
    v102 = &v158;
    v158 = v98;
    v99 = 2;
    sub_12228(2, &v160);
    sub_12228(v99, v100);
    v156 = v139;
    v157 = v140;
    sub_1223C(&v156, v100, v101, v102);
    v103 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v156 = v141;
      v157 = v142;
      sub_1223C(&v156, &v160, &v159, &v158);
      v93 = 0;
      v156 = v143;
      v157 = v144;
      sub_1223C(&v156, &v160, &v159, &v158);
      v92 = 0;
      v156 = v145;
      v157 = v146;
      sub_1223C(&v156, &v160, &v159, &v158);
      v91 = 0;
      v156 = v147;
      v157 = v148;
      sub_1223C(&v156, &v160, &v159, &v158);
      v90 = 0;
      v156 = v150;
      v157 = v151;
      sub_1223C(&v156, &v160, &v159, &v158);
      v89 = 0;
      _os_log_impl(&dword_0, v154, v155, "%s.%s: Automatic Updates: Shake gesture triggered", v96, 0x16u);
      sub_12288(v97);
      sub_12288(v98);
      sub_514D0();

      v94 = v89;
    }
  }

  else
  {
    v25 = v115;

    v94 = v25;
  }

  v86 = v94;
  _objc_release(v154);
  v87 = *(v117 + 8);
  v88 = v117 + 8;
  v87(v122, v116);
  memcpy(v169, __dst, sizeof(v169));
  result = sub_35320();
  if (result)
  {
    sub_50D90();
    v66 = __dst;
    sub_18F68(__dst, &v168);
    v74 = 7;
    v67 = swift_allocObject();
    memcpy((v67 + 16), v66, 0x40uLL);
    v84 = sub_50DA0();
    v85 = sub_51490();
    v71 = 17;
    v76 = swift_allocObject();
    v70 = 32;
    *(v76 + 16) = 32;
    v77 = swift_allocObject();
    v72 = 8;
    *(v77 + 16) = 8;
    v73 = 32;
    v27 = swift_allocObject();
    v28 = v67;
    v68 = v27;
    *(v27 + 16) = v104;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v68;
    v69 = v29;
    *(v29 + 16) = v105;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v69;
    v78 = v31;
    *(v31 + 16) = v106;
    *(v31 + 24) = v32;
    v79 = swift_allocObject();
    *(v79 + 16) = v70;
    v80 = swift_allocObject();
    *(v80 + 16) = v72;
    v33 = swift_allocObject();
    v75 = v33;
    *(v33 + 16) = v107;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v75;
    v82 = v34;
    *(v34 + 16) = v108;
    *(v34 + 24) = v35;
    v81 = sub_51650();
    v83 = v36;

    v37 = v76;
    v38 = v83;
    *v83 = v109;
    v38[1] = v37;

    v39 = v77;
    v40 = v83;
    v83[2] = v110;
    v40[3] = v39;

    v41 = v78;
    v42 = v83;
    v83[4] = v111;
    v42[5] = v41;

    v43 = v79;
    v44 = v83;
    v83[6] = v112;
    v44[7] = v43;

    v45 = v80;
    v46 = v83;
    v83[8] = v113;
    v46[9] = v45;

    v47 = v82;
    v48 = v83;
    v83[10] = v114;
    v48[11] = v47;
    sub_1489C();

    if (os_log_type_enabled(v84, v85))
    {
      v49 = v86;
      v58 = sub_514F0();
      v57 = sub_23FC(&qword_64650, &unk_53930);
      v59 = sub_121D4(0);
      v60 = sub_121D4(2);
      v62 = &v165;
      v165 = v58;
      v63 = &v164;
      v164 = v59;
      v64 = &v163;
      v163 = v60;
      v61 = 2;
      sub_12228(2, &v165);
      sub_12228(v61, v62);
      v161 = v109;
      v162 = v76;
      sub_1223C(&v161, v62, v63, v64);
      v65 = v49;
      if (v49)
      {

        __break(1u);
      }

      else
      {
        v161 = v110;
        v162 = v77;
        sub_1223C(&v161, &v165, &v164, &v163);
        v56 = 0;
        v161 = v111;
        v162 = v78;
        sub_1223C(&v161, &v165, &v164, &v163);
        v55 = 0;
        v161 = v112;
        v162 = v79;
        sub_1223C(&v161, &v165, &v164, &v163);
        v54 = 0;
        v161 = v113;
        v162 = v80;
        sub_1223C(&v161, &v165, &v164, &v163);
        v53 = 0;
        v161 = v114;
        v162 = v82;
        sub_1223C(&v161, &v165, &v164, &v163);
        _os_log_impl(&dword_0, v84, v85, "%s.%s: Automatic Updates: Presenting RecoveryOS Info Menu", v58, 0x16u);
        sub_12288(v59);
        sub_12288(v60);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v84);
    v87(v120, v116);
    v51 = __dst;
    sub_18F68(__dst, &v167);
    v52 = v166;
    memcpy(v166, v51, sizeof(v166));
    sub_1E434(2);
    return sub_180B8(v52);
  }

  return result;
}

uint64_t sub_2E15C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v56 = a1;
  v44 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v46 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v61 = 0;
  v20 = sub_50F50();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v24 = &v14 - v23;
  v25 = sub_23FC(&qword_64880, &qword_52E00);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v29 = &v14 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v28);
  v31 = &v14 - v30;
  v32 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v30);
  v33 = &v14 - v32;
  v79 = &v14 - v32;
  v34 = sub_23FC(&qword_64888, &qword_52E08);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v36 = &v14 - v35;
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v35);
  v38 = &v14 - v37;
  v39 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v37);
  v40 = &v14 - v39;
  v78 = &v14 - v39;
  v53 = sub_23FC(&qword_64830, &qword_523A8);
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v41 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v52 = &v14 - v41;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v41);
  v48 = &v14 - v42;
  v77 = &v14 - v42;
  v76 = v7;
  v57 = 64;
  memcpy(__dst, v7, sizeof(__dst));
  sub_2E8B4(v52);
  v45 = sub_6320(&qword_64838, &qword_523B0);
  v43 = sub_6320(&qword_64840, &qword_523B8);
  v8 = sub_388CC();
  v73 = v43;
  v74 = v8;
  v47 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v45;
  v72 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  sub_6394(v52, v53, v48);
  v54 = *(v50 + 8);
  v55 = v50 + 8;
  v54(v52, v53);
  memcpy(v70, v56, v57);
  v58 = sub_18D58();
  v59 = v10;
  v67 = v58;
  v68 = v10;
  v69 = v11 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v60 = v66;

  if (v60)
  {
    (*(v26 + 56))(v36, 1, 1, v25);
    sub_3C530();
    sub_B3CC(v36, v25, v38);
    sub_3C678(v36);
    sub_3C74C(v38, v40);
  }

  else
  {
    memcpy(v62, v56, sizeof(v62));
    sub_2EEE0(v52);
    sub_20B80();
    v12 = sub_3BF78();
    sub_20B98(v24, v53, v20, v49, v12, v31);
    (*(v21 + 8))(v24, v20);
    v54(v52, v53);
    v18 = sub_3C530();
    sub_6394(v31, v25, v33);
    sub_3CAB4(v31);
    v61 = v31;
    sub_3CB44(v33, v29);
    sub_99E8(v29, v25, v31);
    sub_3CAB4(v29);
    sub_3CB44(v31, v36);
    (*(v26 + 56))(v36, 0, 1, v25);
    sub_B3CC(v36, v25, v38);
    sub_3C678(v36);
    sub_3C74C(v38, v40);
    sub_3CAB4(v31);
    sub_3CAB4(v33);
  }

  (*(v50 + 16))(v52, v48, v53);
  v17 = v65;
  v65[0] = v52;
  sub_3C8A8(v40, v38);
  v65[1] = v38;
  v15 = v64;
  v64[0] = v53;
  v64[1] = v34;
  v16 = v63;
  v63[0] = v49;
  v63[1] = sub_3CA1C();
  sub_63F8(v17, 2uLL, v15, v19);
  sub_3C678(v38);
  v54(v52, v53);
  sub_3C678(v40);
  return (v54)(v48, v53);
}

uint64_t sub_2E8B4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v15 = 0;
  v14 = sub_31864;
  v32 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v42 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v61 = 0;
  v60 = 0;
  v34 = 0;
  v26 = sub_50C30();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v8 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v25 = &v7 - v8;
  v22 = sub_23FC(&qword_64858, &qword_523C0);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v21 = &v7 - v9;
  v30 = sub_23FC(&qword_64840, &qword_523B8);
  v10 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v27 = &v7 - v10;
  v40 = sub_23FC(&qword_64838, &qword_523B0);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v11 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v7 - v11;
  v50 = sub_23FC(&qword_64830, &qword_523A8);
  v44 = *(v50 - 8);
  v45 = v50 - 8;
  v12 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v48 = &v7 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v12);
  v49 = &v7 - v13;
  v61 = &v7 - v13;
  v28 = __dst;
  v29 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  v60 = v1;
  memcpy(v59, __dst, sizeof(v59));
  sub_18D58();
  sub_51190();
  memcpy(v58 + 1, v28, v29);
  v3 = sub_187A0();
  v16 = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 192))(v58);
  v17 = LOBYTE(v58[0]);

  sub_38974();
  sub_51100();

  (*(v19 + 8))(v21, v22);
  (*(v23 + 104))(v25, enum case for AccessibilityIdentifiers.automaticInstallSwitch(_:), v26);
  v31 = sub_388CC();
  sub_50FF0();
  (*(v23 + 8))(v25, v26);
  sub_3AD48(v27);
  memcpy(&v57, v28, v29);
  v35 = sub_18D58();
  v36 = v4;
  v33 = v5;
  v55 = v30;
  v56 = v31;
  v43 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_51010();

  (*(v37 + 8))(v39, v40);
  v53 = v40;
  v54 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  sub_6394(v48, v50, v49);
  v52 = *(v44 + 8);
  v51 = v44 + 8;
  v52(v48, v50);
  (*(v44 + 16))(v48, v49, v50);
  sub_99E8(v48, v50, v46);
  v52(v48, v50);
  return (v52)(v49, v50);
}

uint64_t sub_2EEE0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v14 = 0;
  v13 = sub_31AA0;
  v31 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v40 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v59 = 0;
  v58 = 0;
  v25 = sub_50C30();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v7 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v24 = &v7 - v7;
  v21 = sub_23FC(&qword_64858, &qword_523C0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = &v7 - v8;
  v29 = sub_23FC(&qword_64840, &qword_523B8);
  v9 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v26 = &v7 - v9;
  v38 = sub_23FC(&qword_64838, &qword_523B0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v7 - v10;
  v48 = sub_23FC(&qword_64830, &qword_523A8);
  v42 = *(v48 - 8);
  v43 = v48 - 8;
  v11 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v46 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v47 = &v7 - v12;
  v59 = &v7 - v12;
  v27 = __dst;
  v28 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  v58 = v1;
  memcpy(v57, __dst, sizeof(v57));
  sub_1B9A0();
  sub_51190();
  memcpy(v56 + 1, v27, v28);
  v3 = sub_187A0();
  v15 = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 192))(v56);
  v16 = LOBYTE(v56[0]);

  sub_38974();
  sub_51100();

  (*(v18 + 8))(v20, v21);
  (*(v22 + 104))(v24, enum case for AccessibilityIdentifiers.automaticDownloadSwitch(_:), v25);
  v30 = sub_388CC();
  sub_50FF0();
  (*(v22 + 8))(v24, v25);
  sub_3AD48(v26);
  memcpy(&v55, v27, v28);
  v33 = sub_1B9A0();
  v34 = v4;
  v32 = v5;
  v53 = v29;
  v54 = v30;
  v41 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_51010();

  (*(v35 + 8))(v37, v38);
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  sub_6394(v46, v48, v47);
  v50 = *(v42 + 8);
  v49 = v42 + 8;
  v50(v46, v48);
  (*(v42 + 16))(v46, v47, v48);
  sub_99E8(v46, v48, v44);
  v50(v46, v48);
  return (v50)(v47, v48);
}

uint64_t sub_2F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v123 = 0;
  v59 = sub_50F50();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v63 = &v13 - v62;
  v123 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  v64 = sub_18D58();
  v65 = v3;
  v114 = v64;
  v115 = v3;
  v116 = v4 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v66 = v113;

  if (v66)
  {
    v17 = v107;
    memset(v107, 0, sizeof(v107));
    v16 = sub_23FC(&qword_647D8, &qword_52380);
    sub_38470();
    sub_B3CC(v17, v16, &v108);
    v18 = v108;
    v19 = v109;
    v20 = v110;
    v21 = v111;
    v22 = v112;
    sub_3C464(v108, v109, v110, v111);
    v118 = v18;
    v119 = v19;
    v120 = v20;
    v121 = v21;
    v122 = v22;
    v52 = v18;
    v53 = v19;
    v54 = v20;
    v55 = v21;
    v56 = v22;
  }

  else
  {
    v33 = 1;
    sub_51350("OSName Updates", 0xEuLL, 1);
    v27 = sub_50F60();
    v23 = v5;
    v24 = v6;
    v25 = v7;
    v26 = *sub_411D0();
    v26;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = v33 & 1;
    v89 = sub_50FD0();
    v90 = v8;
    v91 = v9;
    v92 = v10;
    v28 = v86;
    v86[0] = v89;
    v86[1] = v8;
    v87 = v9 & 1 & v33;
    v88 = v10;
    sub_20B80();
    v11 = sub_3BF78();
    sub_20B98(v63, &type metadata for Text, v59, &protocol witness table for Text, v11, v97);
    (*(v60 + 8))(v63, v59);
    sub_3BE9C(v28);
    v29 = v82;
    v82[0] = v97[0];
    v82[1] = v97[1];
    v83 = v98 & 1 & v33;
    v84 = v99;
    v85 = v100;
    v42 = sub_23FC(&qword_647D8, &qword_52380);
    v43 = sub_38470();
    v46 = &v101;
    sub_6394(v29, v42, &v101);
    sub_3BFF8(v29);
    v30 = v101;
    v31 = v102;
    v32 = v103;
    v34 = v104;
    v35 = v105;
    sub_3BF28(v101, v102, v103 & 1);

    v36 = v73;
    v73[0] = v30;
    v73[1] = v31;
    v74 = v32 & 1 & v33;
    v75 = v34;
    v76 = v35;
    v45 = &v77;
    sub_99E8(v73, v42, &v77);
    sub_3BFF8(v36);
    v38 = v77;
    v39 = v78;
    v37 = v79;
    v40 = v80;
    v41 = v81;
    sub_3BF28(v77, v78, v79 & 1);

    v44 = v67;
    v67[0] = v38;
    v67[1] = v39;
    v67[2] = v37 & 1;
    v67[3] = v40;
    v67[4] = v41;
    sub_B3CC(v67, v42, &v68);
    sub_3C4CC(v44);
    v47 = v68;
    v48 = v69;
    v49 = v70;
    v50 = v71;
    v51 = v72;
    sub_3C464(v68, v69, v70, v71);
    v118 = v47;
    v119 = v48;
    v120 = v49;
    v121 = v50;
    v122 = v51;
    sub_3BFF8(v45);
    sub_3BFF8(v46);
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v55 = v50;
    v56 = v51;
  }

  v15 = v106;
  v106[0] = v52;
  v106[1] = v53;
  v106[2] = v54;
  v106[3] = v55;
  v106[4] = v56;
  v14 = sub_23FC(&qword_647B0, &qword_52368);
  sub_383D8();
  sub_99E8(v15, v14, v57);
  sub_3C4CC(v15);
  return sub_3C4CC(&v118);
}

uint64_t sub_2FAE0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v280 = v2;
  v283 = v1;
  v562 = 0;
  __c = 0;
  memset(__b, 0, 0x2BuLL);
  __len = 41;
  memset(v504, 0, 0x29uLL);
  memset(v459, 0, 0x29uLL);
  memset(v398, 0, 0x29uLL);
  memset(v353, 0, 0x29uLL);
  v284 = sub_50F50();
  v285 = *(v284 - 8);
  v286 = v284 - 8;
  v287 = (*(v285 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v284);
  v288 = &v47 - v287;
  v562 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  v290 = sub_18D58();
  v291 = v4;
  v557 = v290;
  v558 = v4;
  v559 = v5 & 1;
  v289 = sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v292 = v556[71];

  if (v292)
  {
    memcpy(v397, v283, sizeof(v397));
    v278 = sub_1892C();
    v279 = sub_50D60();

    if (v279)
    {
      v263 = 1;
      sub_51350("Automatically download and install OSName software updates and system files when this ProductFamilyName is connected to WLAN, charging, and locked. ProductFamilyName may reserve storage space to ensure updates can be installed.", 0xE3uLL, 1);
      v246 = sub_50F60();
      v242 = v6;
      v243 = v7;
      v244 = v8;
      v245 = *sub_411D0();
      v245;
      v323 = 0;
      v324 = 0;
      v325 = 0;
      v326 = v263 & 1;
      v319 = sub_50FD0();
      v320 = v9;
      v321 = v10;
      v322 = v11;
      v247 = v316;
      v316[0] = v319;
      v316[1] = v9;
      v317 = v10 & 1 & v263;
      v318 = v11;
      sub_20B80();
      v12 = sub_3BF78();
      sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v12, v327);
      (*(v285 + 8))(v288, v284);
      sub_3BE9C(v247);
      v248 = v312;
      v312[0] = v327[0];
      v312[1] = v327[1];
      v313 = v328 & 1 & v263;
      v314 = v329;
      v315 = v330;
      v260 = sub_23FC(&qword_647D8, &qword_52380);
      v261 = sub_38470();
      v265 = &v331;
      sub_6394(v248, v260, &v331);
      sub_3BFF8(v248);
      v249 = v331;
      v250 = v332;
      v251 = v333;
      v252 = v334;
      v253 = v335;
      sub_3BF28(v331, v332, v333 & 1);

      v254 = v303;
      v303[0] = v249;
      v303[1] = v250;
      v304 = v251 & 1 & v263;
      v305 = v252;
      v306 = v253;
      v264 = &v307;
      sub_99E8(v303, v260, &v307);
      sub_3BFF8(v254);
      v255 = v307;
      v256 = v308;
      v257 = v309;
      v258 = v310;
      v259 = v311;
      sub_3BF28(v307, v308, v309 & 1);

      v262 = v293;
      v293[0] = v255;
      v293[1] = v256;
      v294 = v257 & 1 & v263;
      v295 = v258;
      v296 = v259;
      sub_B2D4(v293, v260, v260, v261, v261, &v297);
      sub_3BFF8(v262);
      v267 = v297;
      v268 = v298;
      v269 = v299;
      v270 = v300;
      v271 = v301;
      v266 = v302;
      sub_3C160(v297, v298, v299);
      v398[0] = v267;
      v398[1] = v268;
      v398[2] = v269;
      v398[3] = v270;
      v398[4] = v271;
      LOBYTE(v398[5]) = v266 & 1 & v263;
      sub_3BFF8(v264);
      sub_3BFF8(v265);
      v272 = v267;
      v273 = v268;
      v274 = v269;
      v275 = v270;
      v276 = v271;
      v277 = v266;
    }

    else
    {
      v233 = 1;
      sub_51350("Automatically download and install OSName software updates and system files when this ProductFamilyName is connected to Wi-Fi, charging, and locked. ProductFamilyName may reserve storage space to ensure updates can be installed.", 0xE4uLL, 1);
      v216 = sub_50F60();
      v212 = v13;
      v213 = v14;
      v214 = v15;
      v215 = *sub_411D0();
      v215;
      v384 = 0;
      v385 = 0;
      v386 = 0;
      v387 = v233 & 1;
      v380 = sub_50FD0();
      v381 = v16;
      v382 = v17;
      v383 = v18;
      v217 = v377;
      v377[0] = v380;
      v377[1] = v16;
      v378 = v17 & 1 & v233;
      v379 = v18;
      sub_20B80();
      v19 = sub_3BF78();
      sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v19, v388);
      (*(v285 + 8))(v288, v284);
      sub_3BE9C(v217);
      v218 = v373;
      v373[0] = v388[0];
      v373[1] = v388[1];
      v374 = v389 & 1 & v233;
      v375 = v390;
      v376 = v391;
      v230 = sub_23FC(&qword_647D8, &qword_52380);
      v231 = sub_38470();
      v235 = &v392;
      sub_6394(v218, v230, &v392);
      sub_3BFF8(v218);
      v219 = v392;
      v220 = v393;
      v221 = v394;
      v222 = v395;
      v223 = v396;
      sub_3BF28(v392, v393, v394 & 1);

      v224 = v364;
      v364[0] = v219;
      v364[1] = v220;
      v365 = v221 & 1 & v233;
      v366 = v222;
      v367 = v223;
      v234 = &v368;
      sub_99E8(v364, v230, &v368);
      sub_3BFF8(v224);
      v225 = v368;
      v226 = v369;
      v227 = v370;
      v228 = v371;
      v229 = v372;
      sub_3BF28(v368, v369, v370 & 1);

      v232 = v354;
      v354[0] = v225;
      v354[1] = v226;
      v355 = v227 & 1 & v233;
      v356 = v228;
      v357 = v229;
      sub_B418(v354, v230, v230, v231, v231, &v358);
      sub_3BFF8(v232);
      v237 = v358;
      v238 = v359;
      v239 = v360;
      v240 = v361;
      v241 = v362;
      v236 = v363;
      sub_3C160(v358, v359, v360);
      v398[0] = v237;
      v398[1] = v238;
      v398[2] = v239;
      v398[3] = v240;
      v398[4] = v241;
      LOBYTE(v398[5]) = v236 & 1 & v233;
      sub_3BFF8(v234);
      sub_3BFF8(v235);
      v272 = v237;
      v273 = v238;
      v274 = v239;
      v275 = v240;
      v276 = v241;
      v277 = v236;
    }

    v182 = v351;
    v351[0] = v272;
    v351[1] = v273;
    v351[2] = v274;
    v351[3] = v275;
    v351[4] = v276;
    v196 = 1;
    v352 = v277 & 1;
    v189 = sub_23FC(&qword_64818, &qword_52398);
    v190 = sub_3876C();
    v197 = v353;
    sub_99E8(v182, v189, v353);
    sub_3C3D0(v182);
    v183 = v353[0];
    v184 = v353[1];
    v185 = v353[2];
    v186 = v353[3];
    v187 = v353[4];
    v188 = LOBYTE(v353[5]);
    sub_3C160(v353[0], v353[1], v353[2]);
    v191 = v339;
    v339[0] = v183;
    v339[1] = v184;
    v339[2] = v185;
    v339[3] = v186;
    v339[4] = v187;
    v340 = v188 & 1 & v196;
    sub_B2D4(v339, v189, v189, v190, v190, v341);
    sub_3C3D0(v191);
    v195 = v336;
    v336[0] = v341[0];
    v336[1] = v341[1];
    v336[2] = v341[2];
    v336[3] = v341[3];
    v336[4] = v341[4];
    v337 = v342;
    v338 = v343 & 1 & v196;
    v192 = sub_23FC(&qword_64808, &qword_52390);
    v193 = sub_23FC(&qword_647D8, &qword_52380);
    v194 = sub_386CC();
    v20 = sub_38470();
    sub_B2D4(v195, v192, v193, v194, v20, &v344);
    sub_3C418(v195);
    v199 = v344;
    v200 = v345;
    v201 = v346;
    v202 = v347;
    v203 = v348;
    v204 = v349;
    v198 = v350;
    sub_3C04C(v344, v345, v346, v347, v348, v349, v350 & 1);
    __b[0] = v199;
    __b[1] = v200;
    __b[2] = v201;
    __b[3] = v202;
    __b[4] = v203;
    LOWORD(__b[5]) = v204;
    BYTE2(__b[5]) = v198 & 1 & v196;
    sub_3C3D0(v197);
    sub_3C3D0(v398);
    v205 = v199;
    v206 = v200;
    v207 = v201;
    v208 = v202;
    v209 = v203;
    v210 = v204;
    v211 = v198;
  }

  else
  {
    memcpy(v556, v283, 0x40uLL);
    v179 = sub_1B9A0();
    v180 = v21;
    v553 = v179;
    v554 = v21;
    v555 = v22 & 1;
    sub_511A0();
    v181 = v552;

    if (v181)
    {
      memcpy(v503, v283, sizeof(v503));
      v177 = sub_1892C();
      v178 = sub_50D60();

      if (v178)
      {
        v162 = 1;
        sub_51350("Automatically download OSName software updates and system files when this ProductFamilyName is connected to WLAN, charging, and locked.", 0x87uLL, 1);
        v145 = sub_50F60();
        v141 = v23;
        v142 = v24;
        v143 = v25;
        v144 = *sub_411D0();
        v144;
        v429 = 0;
        v430 = 0;
        v431 = 0;
        v432 = v162 & 1;
        v425 = sub_50FD0();
        v426 = v26;
        v427 = v27;
        v428 = v28;
        v146 = v422;
        v422[0] = v425;
        v422[1] = v26;
        v423 = v27 & 1 & v162;
        v424 = v28;
        sub_20B80();
        v29 = sub_3BF78();
        sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v29, v433);
        (*(v285 + 8))(v288, v284);
        sub_3BE9C(v146);
        v147 = v418;
        v418[0] = v433[0];
        v418[1] = v433[1];
        v419 = v434 & 1 & v162;
        v420 = v435;
        v421 = v436;
        v159 = sub_23FC(&qword_647D8, &qword_52380);
        v160 = sub_38470();
        v164 = &v437;
        sub_6394(v147, v159, &v437);
        sub_3BFF8(v147);
        v148 = v437;
        v149 = v438;
        v150 = v439;
        v151 = v440;
        v152 = v441;
        sub_3BF28(v437, v438, v439 & 1);

        v153 = v409;
        v409[0] = v148;
        v409[1] = v149;
        v410 = v150 & 1 & v162;
        v411 = v151;
        v412 = v152;
        v163 = &v413;
        sub_99E8(v409, v159, &v413);
        sub_3BFF8(v153);
        v154 = v413;
        v155 = v414;
        v156 = v415;
        v157 = v416;
        v158 = v417;
        sub_3BF28(v413, v414, v415 & 1);

        v161 = v399;
        v399[0] = v154;
        v399[1] = v155;
        v400 = v156 & 1 & v162;
        v401 = v157;
        v402 = v158;
        sub_B2D4(v399, v159, v159, v160, v160, &v403);
        sub_3BFF8(v161);
        v166 = v403;
        v167 = v404;
        v168 = v405;
        v169 = v406;
        v170 = v407;
        v165 = v408;
        sub_3C160(v403, v404, v405);
        v504[0] = v166;
        v504[1] = v167;
        v504[2] = v168;
        v504[3] = v169;
        v504[4] = v170;
        LOBYTE(v504[5]) = v165 & 1 & v162;
        sub_3BFF8(v163);
        sub_3BFF8(v164);
        v171 = v166;
        v172 = v167;
        v173 = v168;
        v174 = v169;
        v175 = v170;
        v176 = v165;
      }

      else
      {
        v132 = 1;
        sub_51350("Automatically download OSName software updates and system files when this ProductFamilyName is connected to Wi-Fi, charging, and locked.", 0x88uLL, 1);
        v115 = sub_50F60();
        v111 = v30;
        v112 = v31;
        v113 = v32;
        v114 = *sub_411D0();
        v114;
        v490 = 0;
        v491 = 0;
        v492 = 0;
        v493 = v132 & 1;
        v486 = sub_50FD0();
        v487 = v33;
        v488 = v34;
        v489 = v35;
        v116 = v483;
        v483[0] = v486;
        v483[1] = v33;
        v484 = v34 & 1 & v132;
        v485 = v35;
        sub_20B80();
        v36 = sub_3BF78();
        sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v36, v494);
        (*(v285 + 8))(v288, v284);
        sub_3BE9C(v116);
        v117 = v479;
        v479[0] = v494[0];
        v479[1] = v494[1];
        v480 = v495 & 1 & v132;
        v481 = v496;
        v482 = v497;
        v129 = sub_23FC(&qword_647D8, &qword_52380);
        v130 = sub_38470();
        v134 = &v498;
        sub_6394(v117, v129, &v498);
        sub_3BFF8(v117);
        v118 = v498;
        v119 = v499;
        v120 = v500;
        v121 = v501;
        v122 = v502;
        sub_3BF28(v498, v499, v500 & 1);

        v123 = v470;
        v470[0] = v118;
        v470[1] = v119;
        v471 = v120 & 1 & v132;
        v472 = v121;
        v473 = v122;
        v133 = &v474;
        sub_99E8(v470, v129, &v474);
        sub_3BFF8(v123);
        v124 = v474;
        v125 = v475;
        v126 = v476;
        v127 = v477;
        v128 = v478;
        sub_3BF28(v474, v475, v476 & 1);

        v131 = v460;
        v460[0] = v124;
        v460[1] = v125;
        v461 = v126 & 1 & v132;
        v462 = v127;
        v463 = v128;
        sub_B418(v460, v129, v129, v130, v130, &v464);
        sub_3BFF8(v131);
        v136 = v464;
        v137 = v465;
        v138 = v466;
        v139 = v467;
        v140 = v468;
        v135 = v469;
        sub_3C160(v464, v465, v466);
        v504[0] = v136;
        v504[1] = v137;
        v504[2] = v138;
        v504[3] = v139;
        v504[4] = v140;
        LOBYTE(v504[5]) = v135 & 1 & v132;
        sub_3BFF8(v133);
        sub_3BFF8(v134);
        v171 = v136;
        v172 = v137;
        v173 = v138;
        v174 = v139;
        v175 = v140;
        v176 = v135;
      }

      v81 = v457;
      v457[0] = v171;
      v457[1] = v172;
      v457[2] = v173;
      v457[3] = v174;
      v457[4] = v175;
      v95 = 1;
      v458 = v176 & 1;
      v88 = sub_23FC(&qword_64818, &qword_52398);
      v89 = sub_3876C();
      v96 = v459;
      sub_99E8(v81, v88, v459);
      sub_3C3D0(v81);
      v82 = v459[0];
      v83 = v459[1];
      v84 = v459[2];
      v85 = v459[3];
      v86 = v459[4];
      v87 = LOBYTE(v459[5]);
      sub_3C160(v459[0], v459[1], v459[2]);
      v90 = v445;
      v445[0] = v82;
      v445[1] = v83;
      v445[2] = v84;
      v445[3] = v85;
      v445[4] = v86;
      v446 = v87 & 1 & v95;
      sub_B418(v445, v88, v88, v89, v89, v447);
      sub_3C3D0(v90);
      v94 = v442;
      v442[0] = v447[0];
      v442[1] = v447[1];
      v442[2] = v447[2];
      v442[3] = v447[3];
      v442[4] = v447[4];
      v443 = v448;
      v444 = v449 & 1 & v95;
      v91 = sub_23FC(&qword_64808, &qword_52390);
      v92 = sub_23FC(&qword_647D8, &qword_52380);
      v93 = sub_386CC();
      v37 = sub_38470();
      sub_B2D4(v94, v91, v92, v93, v37, &v450);
      sub_3C418(v94);
      v98 = v450;
      v99 = v451;
      v100 = v452;
      v101 = v453;
      v102 = v454;
      v103 = v455;
      v97 = v456;
      sub_3C04C(v450, v451, v452, v453, v454, v455, v456 & 1);
      __b[0] = v98;
      __b[1] = v99;
      __b[2] = v100;
      __b[3] = v101;
      __b[4] = v102;
      LOWORD(__b[5]) = v103;
      BYTE2(__b[5]) = v97 & 1 & v95;
      sub_3C3D0(v96);
      sub_3C3D0(v504);
      v104 = v98;
      v105 = v99;
      v106 = v100;
      v107 = v101;
      v108 = v102;
      v109 = v103;
      v110 = v97;
    }

    else
    {
      v71 = 1;
      sub_51350("You will be notified when software updates are ready to be downloaded.", 0x46uLL, 1);
      v53 = sub_50F60();
      v49 = v38;
      v50 = v39;
      v51 = v40;
      v52 = *sub_411D0();
      v52;
      v539 = 0;
      v540 = 0;
      v541 = 0;
      v542 = v71 & 1;
      v535 = sub_50FD0();
      v536 = v41;
      v537 = v42;
      v538 = v43;
      v54 = v532;
      v532[0] = v535;
      v532[1] = v41;
      v533 = v42 & 1 & v71;
      v534 = v43;
      sub_20B80();
      v44 = sub_3BF78();
      sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v44, v543);
      (*(v285 + 8))(v288, v284);
      sub_3BE9C(v54);
      v55 = v528;
      v528[0] = v543[0];
      v528[1] = v543[1];
      v529 = v544 & 1 & v71;
      v530 = v545;
      v531 = v546;
      v68 = sub_23FC(&qword_647D8, &qword_52380);
      v69 = sub_38470();
      v73 = &v547;
      sub_6394(v55, v68, &v547);
      sub_3BFF8(v55);
      v56 = v547;
      v57 = v548;
      v58 = v549;
      v59 = v550;
      v60 = v551;
      sub_3BF28(v547, v548, v549 & 1);

      v61 = v519;
      v519[0] = v56;
      v519[1] = v57;
      v520 = v58 & 1 & v71;
      v521 = v59;
      v522 = v60;
      v72 = &v523;
      sub_99E8(v519, v68, &v523);
      sub_3BFF8(v61);
      v62 = v523;
      v63 = v524;
      v64 = v525;
      v65 = v526;
      v66 = v527;
      sub_3BF28(v523, v524, v525 & 1);

      v70 = v508;
      v508[0] = v62;
      v508[1] = v63;
      v509 = v64 & 1 & v71;
      v510 = v65;
      v511 = v66;
      v67 = sub_23FC(&qword_64808, &qword_52390);
      v45 = sub_386CC();
      sub_B418(v70, v67, v68, v45, v69, &v512);
      sub_3BFF8(v70);
      v75 = v512;
      v76 = v513;
      v77 = v514;
      v78 = v515;
      v79 = v516;
      v80 = v517;
      v74 = v518;
      sub_3C04C(v512, v513, v514, v515, v516, v517, v518 & 1);
      __b[0] = v75;
      __b[1] = v76;
      __b[2] = v77;
      __b[3] = v78;
      __b[4] = v79;
      LOWORD(__b[5]) = v80;
      BYTE2(__b[5]) = v74 & 1 & v71;
      sub_3BFF8(v72);
      sub_3BFF8(v73);
      v104 = v75;
      v105 = v76;
      v106 = v77;
      v107 = v78;
      v108 = v79;
      v109 = v80;
      v110 = v74;
    }

    v205 = v104;
    v206 = v105;
    v207 = v106;
    v208 = v107;
    v209 = v108;
    v210 = v109;
    v211 = v110;
  }

  v48 = v505;
  v505[0] = v205;
  v505[1] = v206;
  v505[2] = v207;
  v505[3] = v208;
  v505[4] = v209;
  v506 = v210;
  v507 = v211 & 1;
  v47 = sub_23FC(&qword_647C0, &qword_52378);
  sub_38624();
  sub_99E8(v48, v47, v280);
  sub_3C1E8(v48);
  return sub_3C1E8(__b);
}

uint64_t sub_316F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_511C0();
}

uint64_t sub_31864@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatically Install", 0x15uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

void sub_31A34(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 shouldDisableAutoInstallUpdates];
  _objc_release(v2);
}

uint64_t sub_31AA0@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatically Download", 0x16uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

void sub_31C70(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 shouldDisableAutoDownloadUpdates];
  _objc_release(v2);
}

uint64_t sub_31CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v7[1] = a1;
  v11 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v13 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v30 = 0;
  v29 = 0;
  v21 = sub_23FC(&qword_64830, &qword_523A8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v19 = v7 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - v8);
  v20 = v7 - v9;
  v30 = v7 - v9;
  v29 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  sub_31F58(v19);
  v12 = sub_6320(&qword_64838, &qword_523B0);
  v10 = sub_6320(&qword_64840, &qword_523B8);
  v4 = sub_388CC();
  v26 = v10;
  v27 = v4;
  v14 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v12;
  v25 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  sub_6394(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_99E8(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_31F58@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v14 = 0;
  v13 = sub_32928;
  v31 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v40 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v59 = 0;
  v58 = 0;
  v25 = sub_50C30();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v7 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v24 = &v7 - v7;
  v21 = sub_23FC(&qword_64858, &qword_523C0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = &v7 - v8;
  v29 = sub_23FC(&qword_64840, &qword_523B8);
  v9 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v26 = &v7 - v9;
  v38 = sub_23FC(&qword_64838, &qword_523B0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v7 - v10;
  v48 = sub_23FC(&qword_64830, &qword_523A8);
  v42 = *(v48 - 8);
  v43 = v48 - 8;
  v11 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v46 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v47 = &v7 - v12;
  v59 = &v7 - v12;
  v27 = __dst;
  v28 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  v58 = v1;
  memcpy(v57, __dst, sizeof(v57));
  sub_1AEF8();
  sub_51190();
  memcpy(v56 + 1, v27, v28);
  v3 = sub_187A0();
  v15 = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 192))(v56);
  v16 = LOBYTE(v56[0]);

  sub_38974();
  sub_51100();

  (*(v18 + 8))(v20, v21);
  (*(v22 + 104))(v24, enum case for AccessibilityIdentifiers.automaticInstallSystemFiles(_:), v25);
  v30 = sub_388CC();
  sub_50FF0();
  (*(v22 + 8))(v24, v25);
  sub_3AD48(v26);
  memcpy(&v55, v27, v28);
  v33 = sub_1AEF8();
  v34 = v4;
  v32 = v5;
  v53 = v29;
  v54 = v30;
  v41 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_51010();

  (*(v35 + 8))(v37, v38);
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  sub_6394(v46, v48, v47);
  v50 = *(v42 + 8);
  v49 = v42 + 8;
  v50(v46, v48);
  (*(v42 + 16))(v46, v47, v48);
  sub_99E8(v46, v48, v44);
  v50(v46, v48);
  return (v50)(v47, v48);
}

uint64_t sub_32588@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("System Files", 0xCuLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

uint64_t sub_32758@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("System files improve ProductFamilyName functionality without changing the software version. ProductFamilyName may reserve storage space to ensure updates can be installed.", 0xABuLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

uint64_t sub_32928@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatically Install", 0x15uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

void sub_32AF8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 shouldDisableRSR];
  _objc_release(v2);
}

uint64_t *sub_32BAC(char a1)
{
  v11 = a1 & 1;
  memcpy(__dst, v1, sizeof(__dst));
  v10 = v1;
  if (a1)
  {
    memcpy(v7, __dst, sizeof(v7));
    sub_25A50(1u, 1, 0);
    memcpy(v6, __dst, sizeof(v6));
    sub_25A50(1u, 2, 0);
    memcpy(v5, __dst, sizeof(v5));
    v2 = sub_25A44();
    return sub_25A50(1u, 0, v2 & 1);
  }

  else
  {
    sub_18F68(__dst, v9);
    memcpy(v8, __dst, sizeof(v8));
    sub_1E434(1);
    return sub_180B8(v8);
  }
}

uint64_t sub_32CF8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t *sub_32DC8(char a1)
{
  v12 = a1 & 1;
  memcpy(__dst, v1, sizeof(__dst));
  v11 = v1;
  if (a1)
  {
    memcpy(v9, __dst, sizeof(v9));
    sub_25A50(1u, 1, 0);
    memcpy(v8, __dst, sizeof(v8));
    sub_25A50(1u, 2, 0);
    memcpy(v7, __dst, sizeof(v7));
    v4 = AutomaticUpdatesView.mobileStatefulManager.getter();
    v5 = [v4 client];
    _objc_release(v4);
    [v5 autoScanAndDownloadIfAvailable:0];
    _objc_release(v5);
  }

  memcpy(v10, __dst, sizeof(v10));
  v2 = sub_25A44();
  return sub_25A50(a1 & 1, 0, v2 & 1);
}

void sub_32F80(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 previousUserSpecifiedAutomaticUpdateEnabled];
  _objc_release(v2);
}

void sub_32FEC(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setPreviousUserSpecifiedAutomaticUpdateEnabled:v3 & 1];
  _objc_release(v2);
}

uint64_t sub_330E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 232) = a4;
  *(v4 + 208) = v4;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 304) = 0;
  v5 = sub_50DB0();
  *(v4 + 240) = v5;
  v8 = *(v5 - 8);
  *(v4 + 248) = v8;
  v9 = *(v8 + 64);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 216) = a4;
  v6 = *(v4 + 208);

  return _swift_task_switch(sub_331F8, 0, 0);
}

uint64_t sub_331F8()
{
  v1 = v0[29];
  v0[26] = v0;
  memcpy(v0 + 2, v1, 0x40uLL);
  sub_51410();
  v0[34] = sub_51400();
  v5 = sub_513F0();
  v3 = v0[26];

  return _swift_task_switch(sub_332AC, v5, v2);
}

uint64_t sub_332AC()
{
  v4 = v0[34];
  v0[26] = v0;
  v0[35] = sub_184E0();

  v1 = async function pointer to ReactiveUIManager.unscheduleTargetedUpdate(delegate:)[1];
  v2 = swift_task_alloc();
  *(v5 + 288) = v2;
  *v2 = *(v5 + 208);
  v2[1] = sub_33380;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_33380(char a1)
{
  v10 = *v2;
  v4 = *(*v2 + 288);
  *(v10 + 208) = *v2;
  v11 = (v10 + 208);
  *(v10 + 305) = a1;
  *(v10 + 296) = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = sub_34138;
  }

  else
  {
    v5 = *(v10 + 280);

    v6 = *v11;
    v7 = sub_33508;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_33508()
{
  v44 = v0;
  v1 = *(v0 + 305);
  v18 = v1;
  v2 = *(v0 + 264);
  __src = *(v0 + 232);
  *(v0 + 208) = v0;
  *(v0 + 304) = v1 & 1;
  sub_50D90();
  sub_18F68(__src, v0 + 144);
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x40uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v37 = sub_50DA0();
  v38 = sub_51490();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_403D8;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_404C0;
  *(v21 + 24) = v20;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_4050C;
  *(v29 + 24) = v21;
  v30 = swift_allocObject();
  *(v30 + 16) = 32;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_34D78;
  *(v22 + 24) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_4060C;
  *(v32 + 24) = v22;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_4040C;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_4070C;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_40758;
  *(v26 + 24) = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_407A4;
  *(v35 + 24) = v26;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v36 = v3;

  *v36 = sub_40444;
  v36[1] = v27;

  v36[2] = sub_40478;
  v36[3] = v28;

  v36[4] = sub_40558;
  v36[5] = v29;

  v36[6] = sub_40590;
  v36[7] = v30;

  v36[8] = sub_405C4;
  v36[9] = v31;

  v36[10] = sub_40658;
  v36[11] = v32;

  v36[12] = sub_40690;
  v36[13] = v33;

  v36[14] = sub_406C4;
  v36[15] = v34;

  v36[16] = sub_407F0;
  v36[17] = v35;
  sub_1489C();

  if (os_log_type_enabled(v37, v38))
  {
    v4 = v16[37];
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(0);
    v15 = sub_121D4(2);
    v39 = buf;
    v40 = v14;
    v41 = v15;
    sub_12228(2, &v39);
    sub_12228(3, &v39);
    v42 = sub_40444;
    v43 = v27;
    sub_1223C(&v42, &v39, &v40, &v41);
    if (v4)
    {
    }

    v42 = sub_40478;
    v43 = v28;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_40558;
    v43 = v29;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_40590;
    v43 = v30;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_405C4;
    v43 = v31;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_40658;
    v43 = v32;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_40690;
    v43 = v33;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_406C4;
    v43 = v34;
    sub_1223C(&v42, &v39, &v40, &v41);
    v42 = sub_407F0;
    v43 = v35;
    sub_1223C(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_0, v37, v38, "%s.%s: unscheduleTargetedUpdate result: %{BOOL}d", buf, 0x1Cu);
    sub_12288(v14);
    sub_12288(v15);
    sub_514D0();
  }

  else
  {
  }

  v10 = v16[33];
  v11 = v16[30];
  v9 = v16[31];
  _objc_release(v37);
  (*(v9 + 8))(v10, v11);
  v6 = v16[33];
  v12 = v16[32];

  v7 = *(v16[26] + 8);
  v8 = v16[26];

  return v7();
}

uint64_t sub_34138()
{
  v43 = v0;
  v18 = v0[37];
  v1 = v0[35];
  v2 = v0[32];
  __src = v0[29];
  v0[26] = v0;

  swift_errorRetain();
  v0[28] = v18;
  sub_50D90();
  sub_18F68(__src, (v0 + 10));
  v19 = swift_allocObject();
  memcpy((v19 + 16), __src, 0x40uLL);
  swift_errorRetain();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_28D78();

  v36 = sub_50DA0();
  v37 = sub_514A0();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3FF98;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_40090;
  *(v21 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_400DC;
  *(v28 + 24) = v21;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_34DC0;
  *(v22 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_401DC;
  *(v31 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = 64;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3FFE0;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_402DC;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_40328;
  *(v34 + 24) = v25;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v35 = v3;

  *v35 = sub_40014;
  v35[1] = v26;

  v35[2] = sub_40048;
  v35[3] = v27;

  v35[4] = sub_40128;
  v35[5] = v28;

  v35[6] = sub_40160;
  v35[7] = v29;

  v35[8] = sub_40194;
  v35[9] = v30;

  v35[10] = sub_40228;
  v35[11] = v31;

  v35[12] = sub_40260;
  v35[13] = v32;

  v35[14] = sub_40294;
  v35[15] = v33;

  v35[16] = sub_40374;
  v35[17] = v34;
  sub_1489C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v14 = sub_121D4(1);
    v15 = sub_121D4(2);
    v38 = buf;
    v39 = v14;
    v40 = v15;
    sub_12228(2, &v38);
    sub_12228(3, &v38);
    v41 = sub_40014;
    v42 = v26;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40048;
    v42 = v27;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40128;
    v42 = v28;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40160;
    v42 = v29;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40194;
    v42 = v30;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40228;
    v42 = v31;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40260;
    v42 = v32;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40294;
    v42 = v33;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_40374;
    v42 = v34;
    sub_1223C(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "%s.%s: Failed to unschedule targeted update: %@", buf, 0x20u);
    sub_12288(v14);
    sub_12288(v15);
    sub_514D0();
  }

  else
  {
  }

  v11 = v16[37];
  v9 = v16[32];
  v10 = v16[30];
  v8 = v16[31];
  _objc_release(v36);
  (*(v8 + 8))(v9, v10);

  v4 = v16[33];
  v12 = v16[32];

  v5 = *(v16[26] + 8);
  v6 = v16[26];

  return v5();
}

uint64_t sub_34E6C(const void *a1, char a2, char a3)
{
  v15 = a1;
  __dst[72] = a2 & 1;
  __dst[64] = a3 & 1;
  memcpy(__dst, a1, 0x40uLL);
  v9 = sub_187A0();
  KeyPath = swift_getKeyPath();
  v13 = a2;
  (*(*v9 + 208))(&v13, KeyPath);

  if (a3)
  {
    memcpy(v12, a1, sizeof(v12));
    v6 = sub_187A0();
    v5 = swift_getKeyPath();
    v11 = a2;
    (*(*v6 + 208))(&v11, v5);
  }

  return result;
}

void sub_35068(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 previousUserSpecifiedAutoInstallSecurityResponse];
  _objc_release(v2);
}

void sub_350D4(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setPreviousUserSpecifiedAutoInstallSecurityResponse:v3 & 1];
  _objc_release(v2);
}

void sub_35188(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 autoInstallSystemAndDataFiles];
  _objc_release(v2);
}

void sub_351F4(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutoInstallSystemAndDataFiles:v3 & 1];
  _objc_release(v2);
}

uint64_t sub_35320()
{
  memset(__b, 0, sizeof(__b));
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  __b[0] = *v0;
  LOBYTE(__b[1]) = v1 & 1;
  __b[2] = v2;
  LOBYTE(__b[3]) = v3 & 1;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5 & 1;
  LOBYTE(__b[6]) = v6;
  __b[7] = v7;
  v9 = [objc_opt_self() sharedDefaults];
  v10 = [v9 isNeRDProfileStatusInstalled];
  _objc_release(v9);
  return v10;
}

BOOL sub_35478(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

BOOL sub_35740(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void *sub_359C4@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_50E00();
  __b[0] = v8;
  LOBYTE(__b[1]) = v9 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[2] = v6;
  LOBYTE(__b[3]) = v7 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[4] = v4;
  LOBYTE(__b[5]) = v5 & 1;
  LOBYTE(__b[6]) = sub_1E364();
  __b[7] = v1;
  return memcpy(a1, __b, 0x40uLL);
}

uint64_t sub_35ACC()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_35B08@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_50E00();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  swift_getKeyPath();
  sub_50E00();
  result = sub_1E364();
  *(a3 + 48) = result;
  *(a3 + 56) = v4;
  return result;
}

uint64_t sub_35BF4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_35D20(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  v2;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_35E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_35E4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_35E98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_35F4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_35F98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3604C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  __chkstk_darwin(0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_51600() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_51630();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = __chkstk_darwin(v23);
    v16 = v29;
    v17 = v11;
    sub_36288(v10, sub_40CD4, v15, v12, &type metadata for Never, &type metadata for () + 8, v13, &type metadata for ());
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_36288@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_51630();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_364A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36564@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_365A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_365EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3662C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_366A0()
{
  v2 = qword_646D8;
  if (!qword_646D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_36718()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_36818()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36864()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_368B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_369B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36A64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36AFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36B88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_36BFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_36C6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_36CDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_36D4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_36DBC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_36EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36F08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_36F54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37008()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37154()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_371A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_371EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3722C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_372A0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_373A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_373EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37438()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_374EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37538()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_375EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_376D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37710(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_37784()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_377E4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_378B4;

  return sub_330E0(a1, v6, v7, v1 + 32);
}

uint64_t sub_378B4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_379DC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_37AA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37AF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37B3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37BF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37C3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_37C94(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_37CC0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

unint64_t sub_37D20()
{
  v2 = qword_64728;
  if (!qword_64728)
  {
    sub_6320(&qword_64720, &qword_52320);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37DA8()
{
  v2 = qword_64738;
  if (!qword_64738)
  {
    sub_6320(&qword_646E8, &qword_522E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37E30()
{
  v2 = qword_64740;
  if (!qword_64740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_37EA8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_37ED4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

BOOL sub_37F34@<W0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_20F80(v1 + 4, a1);
}

uint64_t sub_37F44()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

unint64_t sub_37FC4()
{
  v2 = qword_64758;
  if (!qword_64758)
  {
    sub_6320(&qword_64748, &qword_52330);
    sub_38068();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38068()
{
  v2 = qword_64760;
  if (!qword_64760)
  {
    sub_6320(&qword_64768, &qword_52340);
    sub_38110();
    sub_38198();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38110()
{
  v2 = qword_64770;
  if (!qword_64770)
  {
    sub_6320(&qword_64778, &qword_52348);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38198()
{
  v2 = qword_64780;
  if (!qword_64780)
  {
    sub_6320(&qword_64788, &unk_52350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38220()
{
  v2 = qword_64790;
  if (!qword_64790)
  {
    sub_6320(&qword_64750, &qword_52338);
    sub_382C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_382C4()
{
  v2 = qword_64798;
  if (!qword_64798)
  {
    sub_6320(&qword_647A0, qword_53410);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38360()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

unint64_t sub_383D8()
{
  v2 = qword_647C8;
  if (!qword_647C8)
  {
    sub_6320(&qword_647B0, &qword_52368);
    sub_38470();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38470()
{
  v2 = qword_647D0;
  if (!qword_647D0)
  {
    sub_6320(&qword_647D8, &qword_52380);
    sub_38514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38514()
{
  v2 = qword_647E0;
  if (!qword_647E0)
  {
    sub_6320(&qword_647E8, &qword_52388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3859C()
{
  v2 = qword_647F0;
  if (!qword_647F0)
  {
    sub_6320(&qword_647B8, &qword_52370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38624()
{
  v2 = qword_647F8;
  if (!qword_647F8)
  {
    sub_6320(&qword_647C0, &qword_52378);
    sub_386CC();
    sub_38470();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_386CC()
{
  v2 = qword_64800;
  if (!qword_64800)
  {
    sub_6320(&qword_64808, &qword_52390);
    sub_3876C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3876C()
{
  v2 = qword_64810;
  if (!qword_64810)
  {
    sub_6320(&qword_64818, &qword_52398);
    sub_38470();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3880C()
{
  v2 = qword_64820;
  if (!qword_64820)
  {
    sub_6320(&qword_647A8, &qword_52360);
    sub_383D8();
    sub_3859C();
    sub_38624();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_388CC()
{
  v2 = qword_64848;
  if (!qword_64848)
  {
    sub_6320(&qword_64840, &qword_523B8);
    sub_38974();
    sub_389FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38974()
{
  v2 = qword_64850;
  if (!qword_64850)
  {
    sub_6320(&qword_64858, &qword_523C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_389FC()
{
  v2 = qword_64860;
  if (!qword_64860)
  {
    sub_6320(&qword_64868, qword_523C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38A84()
{
  v2 = qword_64870;
  if (!qword_64870)
  {
    sub_6320(&qword_64828, &qword_523A0);
    sub_6320(&qword_64838, &qword_523B0);
    sub_6320(&qword_64840, &qword_523B8);
    sub_388CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64870);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38BD0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_38C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_38CE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_38D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_38DE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_38E30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_38E94()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_38F94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_38FE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3902C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_390E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3912C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_391E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3922C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39278()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_392C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39304(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_39390()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_39490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_394DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_395DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39628()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_396DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39728()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_397C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_3988C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3998C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_399D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39A24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39AD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39B24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39BD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39C24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39C70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39CFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_39DB4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_39EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_39F4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A04C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A14C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A198()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A1E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A224(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_3A298()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3A360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A3AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A3F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A4AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A4F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A544()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3A60C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A6A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A7A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A7F0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3A8B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3A950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3AA04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3AA50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3AA9C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3AB64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ABB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ABFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ACB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ACFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3AD48(uint64_t a1)
{
  v1 = sub_23FC(&qword_64858, &qword_523C0);
  (*(*(v1 - 8) + 8))(a1);
  v5 = (a1 + *(sub_23FC(&qword_64840, &qword_523B8) + 36));
  v2 = *v5;

  v3 = v5[2];

  return a1;
}

unint64_t sub_3ADEC()
{
  v2 = qword_64EF8;
  if (!qword_64EF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3AE68()
{
  v2 = qword_64F00[0];
  if (!qword_64F00[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_64F00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3AF6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 64))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 56) < 0x100000000uLL)
      {
        v4 = *(a1 + 56);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_3B0B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_3B2C0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_3B428(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_3B64C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_3B7B4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_3B9EC()
{
  sub_6320(&qword_64710, &qword_52310);
  sub_6320(&qword_64708, &qword_52308);
  sub_6320(&qword_64700, &qword_52300);
  sub_6320(&qword_646F8, &qword_522F8);
  sub_6320(&qword_64748, &qword_52330);
  sub_6320(&qword_64750, &qword_52338);
  sub_6320(&qword_646F0, &qword_522F0);
  sub_6320(&qword_646E8, &qword_522E8);
  sub_37DA8();
  swift_getOpaqueTypeConformance2();
  sub_37E30();
  swift_getOpaqueTypeConformance2();
  sub_37FC4();
  sub_38220();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3BC90()
{
  sub_6320(&qword_64838, &qword_523B0);
  sub_6320(&qword_64840, &qword_523B8);
  sub_388CC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3BD8C()
{
  v2 = qword_65090[0];
  if (!qword_65090[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_65090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3BE20()
{
  v2 = qword_65120[0];
  if (!qword_65120[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_65120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3BE9C(uint64_t a1)
{
  sub_3BEE4(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_3BEE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3BF28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_3BF78()
{
  v2 = qword_64878;
  if (!qword_64878)
  {
    sub_50F50();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64878);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3BFF8(uint64_t a1)
{
  sub_3BEE4(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  return a1;
}

uint64_t sub_3C04C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_3C0DC(a1, a2, a3);
  }

  sub_3BF28(a1, a2, a3 & 1);
}

uint64_t sub_3C160(uint64_t a1, uint64_t a2, char a3)
{
  sub_3BF28(a1, a2, a3 & 1);
}

uint64_t sub_3C234(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_3C2C4(a1, a2, a3);
  }

  sub_3BEE4(a1, a2, a3 & 1);
}

uint64_t sub_3C348(uint64_t a1, uint64_t a2, char a3)
{
  sub_3BEE4(a1, a2, a3 & 1);
}

uint64_t sub_3C3D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_3C348(*a1, *(a1 + 8), *(a1 + 16));
  return a1;
}

uint64_t sub_3C418(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  sub_3C2C4(*a1, *(a1 + 8), *(a1 + 16));
  return a1;
}

uint64_t sub_3C464(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_3BF28(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3C4CC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_3BEE4(*a1, *(a1 + 8), *(a1 + 16) & 1);
    v1 = *(a1 + 24);

    v2 = *(a1 + 32);
  }

  return a1;
}

unint64_t sub_3C530()
{
  v2 = qword_64890;
  if (!qword_64890)
  {
    sub_6320(&qword_64880, &qword_52E00);
    sub_6320(&qword_64838, &qword_523B0);
    sub_6320(&qword_64840, &qword_523B8);
    sub_388CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_38514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3C678(uint64_t a1)
{
  v5 = sub_23FC(&qword_64880, &qword_52E00);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v1 = sub_23FC(&qword_64830, &qword_523A8);
    (*(*(v1 - 8) + 8))(a1);
    v2 = *(a1 + *(v5 + 36));
  }

  return a1;
}

char *sub_3C74C(char *a1, char *a2)
{
  v7 = sub_23FC(&qword_64880, &qword_52E00);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = sub_23FC(&qword_64888, &qword_52E08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_23FC(&qword_64830, &qword_523A8);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

char *sub_3C8A8(char *a1, char *a2)
{
  v9 = sub_23FC(&qword_64880, &qword_52E00);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_23FC(&qword_64888, &qword_52E08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_23FC(&qword_64830, &qword_523A8);
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v9 + 36);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    (*(v10 + 56))();
  }

  return a2;
}

unint64_t sub_3CA1C()
{
  v2 = qword_64898;
  if (!qword_64898)
  {
    sub_6320(&qword_64888, &qword_52E08);
    sub_3C530();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3CAB4(uint64_t a1)
{
  v1 = sub_23FC(&qword_64830, &qword_523A8);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(sub_23FC(&qword_64880, &qword_52E00) + 36));

  return a1;
}

uint64_t sub_3CB44(uint64_t a1, uint64_t a2)
{
  v2 = sub_23FC(&qword_64830, &qword_523A8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_23FC(&qword_64880, &qword_52E00) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_3CBF4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CC4C(result, a2, a3);
  }

  return result;
}

uint64_t sub_3CD08(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CD60(result, a2, a3);
  }

  return result;
}

uint64_t sub_3CDD4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  sub_3CD60(*a1, *(a1 + 8), *(a1 + 16));
  return a1;
}

char *sub_3CE18(char *a1, char *a2)
{
  v11 = sub_23FC(&qword_648B0, &qword_52E20);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_648B8, &qword_52E28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_23FC(&qword_648A8, &qword_52E18);
      v6 = *(*(v5 - 8) + 32);
      v6(a2, a1);
      v4 = sub_23FC(&qword_648C8, &unk_52E38);
      (v6)(&a2[*(v4 + 48)], &a1[*(v4 + 48)], v5);
      (v6)(&a2[*(v4 + 64)], &a1[*(v4 + 64)], v5);
    }

    else
    {
      v7 = sub_23FC(&qword_648A8, &qword_52E18);
      v8 = *(*(v7 - 8) + 32);
      v8(a2, a1);
      v2 = sub_23FC(&qword_648C0, &qword_52E30);
      (v8)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v7);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

char *sub_3D074(char *a1, char *a2)
{
  v11 = sub_23FC(&qword_648B0, &qword_52E20);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_648B8, &qword_52E28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_23FC(&qword_648A8, &qword_52E18);
      v6 = *(*(v5 - 8) + 16);
      v6(a2, a1);
      v4 = sub_23FC(&qword_648C8, &unk_52E38);
      (v6)(&a2[*(v4 + 48)], &a1[*(v4 + 48)], v5);
      (v6)(&a2[*(v4 + 64)], &a1[*(v4 + 64)], v5);
    }

    else
    {
      v7 = sub_23FC(&qword_648A8, &qword_52E18);
      v8 = *(*(v7 - 8) + 16);
      v8(a2, a1);
      v2 = sub_23FC(&qword_648C0, &qword_52E30);
      (v8)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v7);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_3D2D0(uint64_t a1)
{
  sub_23FC(&qword_648B0, &qword_52E20);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23FC(&qword_648B8, &qword_52E28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_23FC(&qword_648A8, &qword_52E18);
      v5 = *(*(v4 - 8) + 8);
      v5(a1);
      v3 = sub_23FC(&qword_648C8, &unk_52E38);
      (v5)(a1 + *(v3 + 48), v4);
      (v5)(a1 + *(v3 + 64), v4);
    }

    else
    {
      v6 = sub_23FC(&qword_648A8, &qword_52E18);
      v7 = *(*(v6 - 8) + 8);
      v7(a1);
      v1 = sub_23FC(&qword_648C0, &qword_52E30);
      (v7)(a1 + *(v1 + 48), v6);
    }
  }

  return a1;
}

uint64_t sub_3D490()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

unint64_t sub_3D4F0()
{
  v2 = qword_648D0;
  if (!qword_648D0)
  {
    sub_6320(&qword_648A8, &qword_52E18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_648D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3D578()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3D5D8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3D638(uint64_t a1, uint64_t a2)
{
  v4 = sub_23FC(&qword_648A8, &qword_52E18);
  v5 = *(*(v4 - 8) + 16);
  v5(a2, a1);
  v6 = sub_23FC(&qword_648C8, &unk_52E38);
  (v5)(a2 + *(v6 + 48), a1 + *(v6 + 48), v4);
  (v5)(a2 + *(v6 + 64), a1 + *(v6 + 64), v4);
  return a2;
}

uint64_t sub_3D730(uint64_t a1)
{
  v3 = sub_23FC(&qword_648A8, &qword_52E18);
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v2 = sub_23FC(&qword_648C8, &unk_52E38);
  (v4)(a1 + *(v2 + 48), v3);
  (v4)(a1 + *(v2 + 64), v3);
  return a1;
}

uint64_t sub_3D80C(uint64_t a1)
{
  sub_23FC(&qword_648B8, &qword_52E28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23FC(&qword_648A8, &qword_52E18);
    v5 = *(*(v4 - 8) + 8);
    v5(a1);
    v3 = sub_23FC(&qword_648C8, &unk_52E38);
    (v5)(a1 + *(v3 + 48), v4);
    (v5)(a1 + *(v3 + 64), v4);
  }

  else
  {
    v6 = sub_23FC(&qword_648A8, &qword_52E18);
    v7 = *(*(v6 - 8) + 8);
    v7(a1);
    v1 = sub_23FC(&qword_648C0, &qword_52E30);
    (v7)(a1 + *(v1 + 48), v6);
  }

  return a1;
}

uint64_t sub_3D9A0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3DA00()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3DA60(uint64_t a1, uint64_t a2)
{
  v5 = sub_23FC(&qword_648A8, &qword_52E18);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = sub_23FC(&qword_648C0, &qword_52E30);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_3DB20(uint64_t a1)
{
  v3 = sub_23FC(&qword_648A8, &qword_52E18);
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v1 = sub_23FC(&qword_648C0, &qword_52E30);
  (v4)(a1 + *(v1 + 48), v3);
  return a1;
}

uint64_t sub_3DC60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_3DCC0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3DD90;

  return sub_293D0(a1, v6, v7, v1 + 32);
}

uint64_t sub_3DD90()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3DEE8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3DF48()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_3DF88()
{
  result = *(v0 + 16);
  sub_2B0E0();
  return result;
}

uint64_t sub_3DFF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E090()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E244()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E290()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_3E2DC(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  v8;
  sub_51510();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    v8;
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

uint64_t sub_3E460()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E4AC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3E5AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E5F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E644()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E6F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E744()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E7F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E8DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E91C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_3E990()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_3E9F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3EAC0;

  return sub_23C60(a1, v6, v7, v1 + 32);
}

uint64_t sub_3EAC0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3EC18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3EC78()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_3ECB8()
{
  result = *(v0 + 16);
  sub_28D50();
  return result;
}

uint64_t sub_3ED28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ED74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EDC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EE74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EEC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EF74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EFC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F00C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F058()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3F158()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F1A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F1F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F2A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F2F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F3A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F3F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F43C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_3F53C()
{
  v2 = qword_648F8;
  if (!qword_648F8)
  {
    sub_6320(&qword_648D8, &qword_52E68);
    sub_38A84();
    sub_38514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_648F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3F5E4(uint64_t a1)
{
  v3 = sub_23FC(&qword_648E0, &qword_52E70);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_3F698(const void *a1, void *a2)
{
  v6 = sub_23FC(&qword_648E0, &qword_52E70);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_648E8, &qword_52E78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_3F7CC(const void *a1, void *a2)
{
  v6 = sub_23FC(&qword_648E0, &qword_52E70);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_648E8, &qword_52E78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_3F900()
{
  v2 = qword_64900;
  if (!qword_64900)
  {
    sub_6320(&qword_648E8, &qword_52E78);
    sub_6320(&qword_648D8, &qword_52E68);
    sub_3F53C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3F9E8(uint64_t a1)
{
  v1 = sub_23FC(&qword_64828, &qword_523A0);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(sub_23FC(&qword_648D8, &qword_52E68) + 36));

  return a1;
}

uint64_t sub_3FA78()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_3FAC0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3FBB4;

  return sub_12634(a1, v6);
}

uint64_t sub_3FBB4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3FCDC()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_3FD24(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3FE18;

  return sub_12634(a1, v6);
}

uint64_t sub_3FE18()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_3FF40()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3FFA0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_3FFE0()
{
  result = *(v0 + 16);
  sub_34DF0();
  return result;
}

uint64_t sub_40050()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4009C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_400E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4019C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_401E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4029C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_402E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40380()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_40480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_404CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_405CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_406CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40718()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40764()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_407B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_407F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_40904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_4099C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_409E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40A28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_40B3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40C20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40C60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_40CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_36260();
}

uint64_t sub_40DD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40E24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40E70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40EBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40EFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

void *sub_40F70(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_40FA8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

id sub_410A4()
{
  sub_410EC();
  _s11LookupClassCMa();
  result = sub_41178();
  qword_651C0 = result;
  return result;
}

unint64_t sub_410EC()
{
  v2 = qword_64908;
  if (!qword_64908)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_64908);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_41178()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_411D0()
{
  if (qword_651B8 != -1)
  {
    swift_once();
  }

  return &qword_651C0;
}

void *static NSBundle.softwareUpdateUISettingsPlugin.getter()
{
  v1 = *sub_411D0();
  v1;
  return v1;
}

void *sub_41270()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v2;
  swift_endAccess();
  return v2;
}

void sub_412D4(void *a1)
{
  a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_41408(void *a1@<X0>, void *a2@<X8>)
{
  a1;
  *a2 = a1;
  _objc_release(a1);
}

void *sub_41460()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  return sub_41270();
}

uint64_t sub_414DC@<X0>(uint64_t *a1@<X0>, void **a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_41460();
}

uint64_t sub_41538(id *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1;
  v5 = *a2;

  sub_415B4(v3);
}

void sub_415B4(void *a1)
{
  v15 = a1;
  v14 = 0;
  v19 = 0;
  v12 = 0;
  v20 = a1;
  v17 = sub_41270();
  v16 = sub_4407C();
  sub_440E0();
  v18 = sub_44008();

  if (v18)
  {
    v1 = v13;
    v2 = v12;
    KeyPath = swift_getKeyPath();
    v8 = KeyPath;

    v3 = v15;
    v10 = &v6;
    v4 = __chkstk_darwin(KeyPath);
    (*(*v1 + 232))(v4, sub_44160);
    v11 = v2;

    v7 = v11;
  }

  else
  {
    v5 = v15;
    sub_412D4(v15);
    v7 = v12;
  }
}

void (*sub_417E4(void *a1))(uint64_t *a1, char a2)
{
  v7 = sub_4418C(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_509F0();
  v4 = *(v6 - 8);
  v5 = sub_4418C(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 224))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_441E0();
  sub_509D0();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_41364();
  return sub_419BC;
}

void sub_419BC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_41A78(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_41A78(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_41A78(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_509F0();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_441E0();
  sub_509C0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_41BCC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar;
  v2 = sub_509F0();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_41C40()
{
  sub_50900();
  sub_51650();
  sub_442D4();
  return sub_51460();
}

uint64_t sub_41C90()
{
  v2 = (v0 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_41CF8(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t ReactiveMobilePreferencesManager.__allocating_init(wrapping:)(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return ReactiveMobilePreferencesManager.init(wrapping:)(a1);
}

uint64_t ReactiveMobilePreferencesManager.init(wrapping:)(void *a1)
{
  v80 = a1;
  v101 = 0;
  v100 = 0;
  v65 = 0;
  v67 = sub_509F0();
  v29 = *(v67 - 8);
  v30 = v67 - 8;
  v24 = (v29[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = &v23 - v24;
  v101 = __chkstk_darwin(v80);
  v100 = v1;
  v62 = &unk_65000;
  sub_509E0();
  v74 = &unk_65000;
  v27 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations;
  v25 = sub_50900();
  v26 = sub_51650();
  sub_442D4();
  *(v1 + v27) = sub_51460();
  sub_509E0();
  v80;
  v2 = *v1;
  sub_41408(v80, v1 + 2);
  v99[1] = v81;
  v28 = &unk_52FB0;
  KeyPath = swift_getKeyPath();
  v60 = &unk_52FD8;
  v32 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v3 = v62[60];
  v64 = v29[2];
  v63 = v29 + 2;
  v64(v70, v81 + v3, v67);
  v66 = sub_441E0();
  v4 = sub_50A00();
  v5 = v81;
  v33 = v4;
  v69 = v29[1];
  v68 = v29 + 1;
  v69(v70, v67);

  v34 = v99;
  v99[0] = v33;
  v6 = v5 + v74[61];
  v35 = &v98;
  v75 = 33;
  v76 = 0;
  swift_beginAccess();
  v78 = sub_23FC(&qword_649C8, qword_53010);
  sub_51470();
  swift_endAccess();
  _objc_release(v99[2]);
  v97[1] = v81;
  v36 = &unk_53038;
  v86 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v64(v70, v81 + v62[60], v67);
  v7 = sub_50A00();
  v8 = v81;
  v39 = v7;
  v69(v70, v67);

  v40 = v97;
  v97[0] = v39;
  v9 = v8 + v74[61];
  v41 = &v96;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v97[2]);
  v95[1] = v81;
  v42 = &unk_53090;
  v85 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v64(v70, v81 + v62[60], v67);
  v10 = sub_50A00();
  v11 = v81;
  v45 = v10;
  v69(v70, v67);

  v46 = v95;
  v95[0] = v45;
  v12 = v11 + v74[61];
  v47 = &v94;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v95[2]);
  v93[1] = v81;
  v48 = &unk_530E0;
  v84 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v64(v70, v81 + v62[60], v67);
  v13 = sub_50A00();
  v14 = v81;
  v51 = v13;
  v69(v70, v67);

  v52 = v93;
  v93[0] = v51;
  v15 = v14 + v74[61];
  v53 = &v92;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v93[2]);
  v91[1] = v81;
  v54 = &unk_53148;
  v83 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v64(v70, v81 + v62[60], v67);
  v16 = sub_50A00();
  v17 = v81;
  v57 = v16;
  v69(v70, v67);

  v58 = v91;
  v91[0] = v57;
  v18 = v17 + v74[61];
  v59 = &v90;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v91[2]);
  v89[1] = v81;
  v61 = &unk_53190;
  v82 = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v64(v70, v81 + v62[60], v67);
  v19 = sub_50A00();
  v20 = v81;
  v73 = v19;
  v69(v70, v67);

  v77 = v89;
  v89[0] = v73;
  v21 = v20 + v74[61];
  v79 = &v88;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v89[2]);
  _objc_release(v80);
  return v81;
}

BOOL sub_42798(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  v5 = *a1;

  sub_23FC(&qword_64B20, &unk_532B8);
  v6 = sub_512D0();

  return (v6 & 1) != 0;
}

uint64_t sub_4286C(uint64_t *a1)
{
  v2 = *a1;
  sub_23FC(&qword_64B20, &unk_532B8);
  return sub_512B0();
}

uint64_t sub_428BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;

  v9 = v4;
  v7 = *a2;

  (*(*v4 + 200))(&v8, v7);
  *a3 = v8;
}

uint64_t sub_42960(char *a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *a3;

  v7 = *a1;
  v6 = *a2;

  v10 = v6;
  v9 = v7;
  (*(*v6 + 208))(&v9, v8);
}

uint64_t sub_42A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v17 = a1;
  v24 = 0;
  v22 = 0;
  v6 = *a1;
  v14 = sub_509F0();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v2 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v17);
  v13 = &v6 - v4;
  v24 = v3;
  v7 = *(v6 + class metadata base offset for KeyPath + 8);
  v23 = v7;
  v22 = v9;
  (*(v11 + 16))(&v6 - v4, v9 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar);
  v8 = &v21;
  v21 = v9;

  v18 = v7;
  v19 = v17;
  KeyPath = swift_getKeyPath();
  sub_441E0();
  sub_509B0();

  (*(v11 + 8))(v13, v14);
  v15 = sub_41460();

  v20 = v15;
  swift_getAtKeyPath();
  _objc_release(v20);
}

BOOL sub_42BF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *(a1 + a3 - 8);
  v5 = *a2;

  v6 = *a1;

  sub_4407C();
  sub_516A0();
  v7 = sub_512D0();

  return (v7 & 1) != 0;
}

uint64_t sub_42CE4(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + a2 - 8);
  v4 = *a1;
  sub_4407C();
  sub_516A0();
  return sub_512B0();
}

uint64_t sub_42D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v6 - v6;
  v7 = *__chkstk_darwin(a1);

  v16 = v7;
  v4 = v7;
  v15 = v7;
  v14 = *v8;

  (*(*v4 + 192))(v14);
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_42E80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v6 - v6;
  v7 = *__chkstk_darwin(a1);

  v16 = v7;
  v4 = v7;
  v15 = v7;
  v14 = *v8;

  (*(*v4 + 200))(v14);
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_42FB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v11 = a2;
  v10 = *(a3 + a4 - 8);
  v17 = v10;
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v12 = &v6 - v6;
  v14 = *v4;

  (*(v7 + 16))(v12, v9, v10);
  v13 = *v11;

  v16 = v13;
  v15 = v13;
  (*(*v13 + 208))(v12, v14);
}

uint64_t sub_430E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v19 = a1;
  v27 = 0;
  v25 = 0;
  v7 = *a1;
  v14 = sub_509F0();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v2 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v13 = &v6 - v4;
  v27 = v3;
  v15 = *(v7 + class metadata base offset for WritableKeyPath + 8);
  v26 = v15;
  v25 = v9;
  (*(v11 + 16))(&v6 - v4, v9 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar);
  v8 = &v24;
  v24 = v9;

  v20 = v15;
  v21 = v19;
  KeyPath = swift_getKeyPath();
  sub_441E0();
  sub_509B0();

  (*(v11 + 8))(v13, v14);

  v23 = sub_41460();
  v18 = &v22;
  v17 = swift_readAtKeyPath();
  (*(*(v15 - 8) + 16))(v16);
  v17();
  _objc_release(v23);
}

BOOL sub_43324(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = *(a1 + a3 - 8);
  v5 = *a2;

  v6 = *a1;

  sub_4407C();
  sub_515F0();
  v7 = sub_512D0();

  return (v7 & 1) != 0;
}

uint64_t sub_43410(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + a2 - 8);
  v4 = *a1;
  sub_4407C();
  sub_515F0();
  return sub_512B0();
}

uint64_t sub_43478(uint64_t a1, void *a2)
{
  v12 = a1;
  v14 = a2;
  v16 = sub_44560;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v8 = *a2;
  v7[0] = sub_509F0();
  v9 = *(v7[0] - 8);
  v7[1] = v7[0] - 8;
  v2 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v12);
  v10 = v7 - v4;
  v29 = v3;
  v11 = *(v8 + class metadata base offset for WritableKeyPath + 8);
  v28 = v11;
  v27 = v5;
  v26 = v13;
  (*(v9 + 16))(v7 - v4, v13 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar);
  v18 = &v25;
  v25 = v13;

  v23 = v11;
  v24 = v14;
  KeyPath = swift_getKeyPath();

  v17 = &v19;
  v20 = v13;
  v21 = v14;
  v22 = v12;
  sub_441E0();
  sub_509A0();

  (*(v9 + 8))(v10, v7[0]);

  return (*(*(v11 - 8) + 8))(v12);
}

uint64_t sub_43700(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v8 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v9 = *(*a2 + class metadata base offset for WritableKeyPath + 8);
  v18 = v9;
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v5 - v5;
  v17 = a1;
  v16 = __chkstk_darwin(a2);
  v15 = v3;

  (*(v6 + 16))(v10, v8, v9);
  v11 = v14;
  v12 = sub_417E4(v14);
  swift_setAtWritableKeyPath();
  v12();
}

void (*sub_43874(void *a1, void *a2))(void **a1, char a2)
{
  v7 = sub_4418C(0x30uLL);
  *a1 = v7;
  v7[1] = v2;
  *v7 = a2;
  v3 = *(*a2 + class metadata base offset for WritableKeyPath + 8);
  v7[2] = v3;
  v5 = *(v3 - 8);
  v7[3] = v5;
  v6 = *(v5 + 64);
  v7[4] = sub_4418C(v6);
  v10 = sub_4418C(v6);
  v7[5] = v10;

  sub_430E0(a2, v10);
  return sub_439E8;
}

void sub_439E8(void **a1, char a2)
{
  v11 = *a1;
  if (a2)
  {
    v7 = v11[5];
    v8 = v11[4];
    v5 = v11[2];
    v3 = v11[1];
    v6 = *v11;
    v4 = v11[3];
    (*(v4 + 16))();
    sub_43478(v8, v6);
    (*(v4 + 8))(v7, v5);

    free(v7);
    free(v8);
  }

  else
  {
    v9 = v11[5];
    v10 = v11[4];
    v2 = v11[1];
    sub_43478(v9, *v11);

    free(v9);
    free(v10);
  }

  free(v11);
}

uint64_t sub_43B08@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar;
  v2 = sub_509F0();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_43B7C(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_509F0();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v7);
  v11 = &v5 - v3;
  v16 = v2;
  v15 = *(v5 + class metadata base offset for KeyPath + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v3, v6 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar);
  v8 = &v13;
  v13 = v6;
  sub_441E0();
  sub_509B0();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_43CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_509F0();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v19);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + class metadata base offset for KeyPath + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_441E0();
  v9 = v23;
  sub_509A0();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_43F90()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_51680();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

unint64_t sub_4407C()
{
  v2 = qword_649A8;
  if (!qword_649A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_649A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_440E0()
{
  v2 = qword_649B0;
  if (!qword_649B0)
  {
    sub_4407C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_649B0);
    return WitnessTable;
  }

  return v2;
}

void *sub_4418C(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_441E0()
{
  v2 = qword_649B8;
  if (!qword_649B8)
  {
    type metadata accessor for ReactiveMobilePreferencesManager();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_649B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveMobilePreferencesManager()
{
  v1 = qword_652A0;
  if (!qword_652A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_442D4()
{
  v2 = qword_649C0;
  if (!qword_649C0)
  {
    sub_50900();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_649C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_44384(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_443EC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + a2 - 8);
  v2 = *a1;
}

void *sub_4441C(void *a1, void *a2, uint64_t a3)
{
  v7 = *(a1 + a3 - 8);
  v5 = *a1;

  result = a1;
  *a2 = v5;
  a2[1] = a1[1];
  return result;
}

uint64_t *sub_44470(uint64_t *result, void *a2)
{
  v2 = *result;
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

uint64_t sub_444B8(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + a2 - 8);
  v2 = *a1;
}

void *sub_444E8(void *a1, void *a2, uint64_t a3)
{
  v7 = *(a1 + a3 - 8);
  v5 = *a1;

  result = a1;
  *a2 = v5;
  a2[1] = a1[1];
  return result;
}

uint64_t *sub_4453C(uint64_t *result, void *a2)
{
  v2 = *result;
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

uint64_t ReactiveMobilePreferencesManager.deinit()
{
  _objc_release(*(v0 + 16));
  v2 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar;
  v3 = sub_509F0();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  sub_44660((v0 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations));
  (v4)(v0 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar, v3);
  return v5;
}

uint64_t *sub_44660(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t ReactiveMobilePreferencesManager.__deallocating_deinit()
{
  v0 = *ReactiveMobilePreferencesManager.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t *sub_44714(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  return result;
}

uint64_t sub_4474C()
{
  v2 = sub_509F0();
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

uint64_t dispatch thunk of ReactiveMobilePreferencesManager.subscript.getter()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t sub_44990()
{
  v3 = *v0;
  v2 = *(v0 + 8);

  sub_23FC(&qword_646D0, &qword_52220);
  sub_50DF0();

  return v4;
}

uint64_t sub_44A1C()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44A58()
{
  v2 = *v0;
  v3 = *(v0 + 8);

  return v2;
}

uint64_t sub_44A9C(uint64_t a1, char a2)
{

  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_44B1C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_23FC(&qword_646C0, &qword_53300);
  sub_50DF0();

  return v4;
}

uint64_t sub_44BA8()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44BE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_44C28(uint64_t a1, char a2)
{

  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_44CA8()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_23FC(&qword_646C8, &qword_53340);
  sub_50DF0();

  return v4;
}

uint64_t sub_44D34()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44D70()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_44DB4(uint64_t a1, char a2)
{

  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t sub_44E34()
{
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  sub_23FC(&qword_64B28, &qword_53378);
  sub_50DF0();

  return v4;
}