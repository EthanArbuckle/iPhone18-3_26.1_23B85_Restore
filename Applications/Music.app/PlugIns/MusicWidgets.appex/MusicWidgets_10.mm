uint64_t sub_10010CF40()
{

  sub_1001CAB6C(0, v0 + 208);

  return _swift_task_switch(sub_10010CFB4, 0, 0);
}

uint64_t sub_10010CFB4()
{
  *(v0 + 904) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_10010D040, v2, v1);
}

uint64_t sub_10010D040()
{
  v1 = *(v0 + 544);

  v2 = sub_10017F500(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 544);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_1002EC584;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_1002ED584;
    *(v0 + 376) = &unk_100688F68;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_100112A60, v15);
    sub_1000F3E14(v5);

    sub_100109250(v0 + 208);
    v18 = sub_10010D328;
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 240), 1, 0, 0);

    sub_100109250(v0 + 208);
    v18 = sub_100112B98;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_10010D328()
{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10010D47C()
{

  return _swift_task_switch(sub_100112B98, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_100572208();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DA8);
  v3[10] = swift_task_alloc();
  v6 = sub_100572298();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DB0);
  v3[15] = swift_task_alloc();
  v7 = sub_100571C48();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DB8);
  v3[19] = swift_task_alloc();
  v8 = sub_1005713A8();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DC0);
  v3[24] = swift_task_alloc();
  v9 = sub_100571A68();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E6D30);
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D28);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_100009DCC(&qword_1006E8BE0);
  v3[36] = swift_task_alloc();
  v11 = sub_1005722D8();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6D78);
  v3[42] = swift_task_alloc();
  v3[43] = *(a2 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = sub_100571B78();
  v3[52] = v12;
  v3[53] = *(v12 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_10010DB74, 0, 0);
}

uint64_t sub_10010DB74()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    sub_100009DCC(&qword_1006E8B80);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_10057B4F0;
    sub_100009DCC(&qword_1006E6DE8);
    *(v13 + 32) = sub_100570D28();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = sub_100112A64(&qword_1006E6DF0, &type metadata accessor for Album);
    *v14 = v0;
    v14[1] = sub_10010EB84;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  sub_10001036C(v19, &qword_1006E6D78);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = sub_100009DCC(&qword_1006E8B80);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_10057B4F0;
    v0[63] = sub_100009DCC(&qword_1006E6DD8);
    *(v29 + 32) = sub_100570D38();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = sub_10010EEE4;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  sub_10001036C(v34, &qword_1006E8BE0);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    sub_100009DCC(&qword_1006E6DD0);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10057B510;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    sub_100570E28();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  sub_10001036C(v51, &qword_1006E6DC0);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    sub_100009DCC(&qword_1006E6DD0);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10057B510;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    sub_100570E28();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  sub_10001036C(v67, &qword_1006E6DB8);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    sub_100009DCC(&qword_1006E6DD0);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10057B510;
    (*(v76 + 16))(v81 + v80, v75, v77);
    sub_100570E28();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    sub_10001036C(v83, &qword_1006E6DB0);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      sub_100572218();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        sub_100009DCC(&qword_1006E6DD0);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_10057B510;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (qword_1006E4C68 != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = sub_10056DF88();
          sub_10000C49C(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = sub_10056DF68();
          v119 = sub_100573438();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            sub_100572218();
            sub_100112A64(&qword_1006E6DC8, &type metadata accessor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = sub_100574408();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = sub_1000C9784(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            sub_100010474(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        sub_100009DCC(&qword_1006E6DD0);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_10057B510;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      sub_100570E28();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      sub_10001036C(v110, &qword_1006E6DA8);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

uint64_t sub_10010EB84()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1001106C0;
  }

  else
  {
    v2 = sub_10010ECB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010ECB4()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  sub_100571B58();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10010EEE4()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_10010F3C4;
  }

  else
  {
    v2 = sub_10010F014;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010F014()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  sub_1005722A8();
  v4 = *(v3 + 48);
  v0[66] = v4;
  v0[67] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[35];
  if (v5 == 1)
  {
    sub_10001036C(v0[35], &qword_1006E6D28);
LABEL_7:
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    sub_1005722A8();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = sub_100570E38();
  v10 = *(v8 + 8);
  v0[68] = v10;
  v0[69] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  v0[70] = v11;
  *(v11 + 16) = xmmword_10057B4F0;
  sub_100570D38();
  v12 = sub_100571038();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = sub_10010F820;
  v14 = v0[39];
  v15 = v0[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

uint64_t sub_10010F3C4()
{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_10056DF88();
  sub_10000C49C(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_100572978();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_1000C9784(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v19 = sub_100572978();
    v21 = sub_1000C9784(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10010F820()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_10010FD68;
  }

  else
  {
    v2 = sub_10010F950;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010F950()
{
  v1 = v0[66];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[29];
  sub_1005722A8();
  v7 = *(v3 + 8);
  v0[73] = v7;
  v0[74] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = v1(v5, 1, v6);
  v9 = v0[29];
  if (v8 == 1)
  {
    v10 = v0[66];
    v11 = v0[34];
    sub_100570E28();
    if (v10(v11, 1, v9) != 1)
    {
      sub_10001036C(v0[34], &qword_1006E6D28);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[32], v0[34], v0[29]);
  }

  if (sub_100570E38())
  {
    v12 = swift_task_alloc();
    v0[75] = v12;
    v13 = sub_100112A64(&qword_1006E6DE0, &type metadata accessor for Track);
    *v12 = v0;
    v12[1] = sub_1001101DC;
    v14 = v0[33];
    v15 = v0[29];

    return MusicItemCollection.nextBatch<>(limit:)(v14, 10000, 0, v15, v13);
  }

  else
  {
    v16 = v0[73];
    v17 = v0[41];
    v18 = v0[37];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[30];
    v22 = v0[3];
    v16(v0[40], v18);
    v16(v17, v18);
    (*(v21 + 32))(v22, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10010FD68()
{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_10056DF88();
  sub_10000C49C(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = sub_10056DF68();
  v11 = sub_100573428();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = sub_100572978();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_1000C9784(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v22 = sub_100572978();
    v24 = sub_1000C9784(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1001101DC()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_100110B1C;
  }

  else
  {
    v2 = sub_1001102F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001102F0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    sub_10001036C(v1, &qword_1006E6D28);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    sub_100570E48();
    v3(v4, v2);
  }

  if (sub_100570E38())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = sub_100112A64(&qword_1006E6DE0, &type metadata accessor for Track);
    *v5 = v0;
    v5[1] = sub_1001101DC;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1001106C0()
{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_10056DF88();
  sub_10000C49C(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_100572978();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_1000C9784(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v19 = sub_100572978();
    v21 = sub_1000C9784(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100110B1C()
{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = sub_10056DF88();
  sub_10000C49C(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = sub_10056DF68();
  v12 = sub_100573428();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = sub_100572978();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_1000C9784(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v23 = sub_100572978();
    v25 = sub_1000C9784(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100110F9C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_100009DCC(&qword_1006E6428);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001111AC, 0, 0);
}

uint64_t sub_1001111AC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000CC8C(*(v0 + 96), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 224), &qword_1006E6B80);
LABEL_8:

    v20 = *(v0 + 8);

    return v20();
  }

  v4 = *(v0 + 104);
  sub_10010911C(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    sub_1001129E4(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = *(v6 + 56);
  sub_10000C8CC((v6 + 32), v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
  *(v0 + 264) = v8;
  v9 = sub_10056C8A8();
  *(v0 + 272) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 280) = v11;
  *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  sub_100009DCC(&qword_1006E6D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  v13 = *(v6 + 56);
  sub_10000C8CC((v6 + 32), v13);
  *(inited + 32) = MusicItem.metricsContentType.getter(v13);
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_100582430;
  *(inited + 72) = 1;
  *(v0 + 296) = sub_1000E0568(inited);
  *(v0 + 304) = v15;
  *(v0 + 312) = v16;
  *(v0 + 328) = v17;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100572F08();
  *(v0 + 320) = sub_100572EF8();
  v19 = sub_100572E78();

  return _swift_task_switch(sub_100111514, v19, v18);
}

uint64_t sub_100111514()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 773;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_1001129E4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001129E4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_10000CC8C(v36 + v14[6], *(v0 + 200), &qword_1006E5D10);
    sub_1001129E4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_100019B40(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001129E4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 120), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001129E4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001129E4(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_100111CCC, 0, 0);
}

uint64_t sub_100111CCC()
{
  sub_1001129E4(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13AddToPlaylistO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

double sub_100111FE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v33 = a10;
  v16 = sub_100009DCC(&qword_1006E6B80);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = *(a6 - 8);
  __chkstk_darwin(v17);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E6E30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10057B510;
  *(v23 + 56) = a5;
  *(v23 + 64) = a7;
  *(v23 + 72) = a8;
  v24 = sub_10002AB7C((v23 + 32));
  (*(*(a5 - 8) + 16))(v24, a1, a5);
  v25 = v30;
  sub_1000FEAFC(v30, v34);
  (*(v20 + 16))(v22, v31, a6);
  v26 = v32;
  sub_10000CC8C(v32, v19, &qword_1006E6B80);
  sub_100571898();
  sub_100571888();
  Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v23, v34, v22, v19, a6, v33, v35);
  sub_10001036C(v26, &qword_1006E6B80);
  sub_100112B40(v25);
  v27 = v35[1];
  *a9 = v35[0];
  a9[1] = v27;
  result = v36[0];
  a9[2] = *v36;
  return result;
}

uint64_t sub_100112234()
{

  return swift_deallocObject();
}

uint64_t sub_10011226C()
{
  v1 = sub_100009DCC(&qword_1006E6D18);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_100112300()
{
  v1 = *(sub_100009DCC(&qword_1006E6D18) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10010A1E4(v2);
}

uint64_t sub_10011236C()
{
  v1 = *(v0 + 16);
  v2 = sub_100009DCC(&qword_1006E6D18);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  v8 = v0 + v5;
  swift_unknownObjectWeakDestroy();
  v9 = *(v0 + v5 + 48);
  if (v9 != 255)
  {
    sub_1000FF9AC(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), v9);
  }

  if (*(v8 + 64))
  {
  }

  if (*(v8 + 80))
  {
  }

  (*(v6 + 8))(v0 + ((v7 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t sub_1001124E8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6D18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v8 = (*(*(v3 - 8) + 80) + v7 + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000CB98;

  return sub_10010AB50(v0 + v5, v0 + v6, v9, v0 + v8, v3, v2);
}

uint64_t sub_100112658()
{
  v1 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_10056C8A8();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001128B4()
{
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000116F0;

  return sub_100110F9C(v0 + v3, v4);
}

uint64_t sub_1001129E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100112A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100112A64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100112AAC()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v12 = sub_1005722D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(a7, a1, v12);
  v16 = type metadata accessor for Actions.Collaborate.Context();
  v17 = (a7 + v16[5]);
  *v17 = a2;
  v17[1] = a3;
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  v20 = (a7 + v16[6]);
  *v20 = &unk_100587238;
  v20[1] = v18;
  v21 = *(v13 + 32);
  v21(v15, a1, v12);
  v22 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = (v23 + *(v22 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  v25 = swift_allocObject();
  sub_100019B40(v29, v25 + v23, &qword_1006E6B80);
  result = v21(v25 + v24, v15, v12);
  v27 = (a7 + v16[7]);
  *v27 = &unk_100587248;
  v27[1] = v25;
  return result;
}

uint64_t type metadata accessor for Actions.Collaborate.Context()
{
  result = qword_1006E6EB8;
  if (!qword_1006E6EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100112E40(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100112EA8()
{

  return swift_deallocObject();
}

uint64_t sub_100112EE0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_100112E40(v2);
}

uint64_t sub_100112F8C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_100009DCC(&qword_1006E6428);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10011319C, 0, 0);
}

uint64_t sub_10011319C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000CC8C(*(v0 + 112), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 240), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_10010911C(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = sub_100572158();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = sub_10056C8A8();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(v0 + 104) = sub_1005722D8();
    sub_100009DCC(&qword_1006E6548);
    v13 = sub_100572978();
    v15 = v14;
    sub_1000E095C(1);
    v16 = sub_100573C38();
    v18 = v17;

    v19 = sub_1000E09F8(1uLL, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_1000E0AA8();
    sub_100572A78();

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_1000E0568(inited);
    *(v0 + 320) = v26;
    *(v0 + 328) = v27;
    *(v0 + 344) = v28;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 336) = sub_100572EF8();
    v30 = sub_100572E78();

    return _swift_task_switch(sub_100113534, v30, v29);
  }
}

uint64_t sub_100113534()
{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  sub_10000CC8C(v6, v5, &qword_1006E5D10);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_10000CC8C(v3 + v4[5], v9, &qword_1006E6428);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 2565;
  sub_100019B40(v79, v8 + v7[7], &qword_1006E5D10);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_10000CC8C(v9, v77, &qword_1006E6428);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    sub_1000DC030(v13, v81);
    v24 = v82;

    sub_1000DCFE4(v22, v20, v21, v19, SBYTE1(v19));
    sub_10001036C(v23, &qword_1006E6428);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_1000DC030(v13, v81);
    v24 = v82;

    sub_1000DCFE4(v22, v20, v21, v19, SBYTE1(v19));

    sub_1001129E4(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_10000CC8C(v27, v28, &qword_1006E6428);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_10001036C(*(v0 + 168), &qword_1006E6428);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_1001129E4(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_10000CC8C(v34, v35, &qword_1006E6428);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_10001036C(*(v0 + 160), &qword_1006E6428);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_10000CC8C(v41 + v17[6], *(v0 + 216), &qword_1006E5D10);
    sub_1001129E4(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_100019B40(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1006E5D10);
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_10001036C(v50, &qword_1006E6428);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_10000CC8C(v52, v53, &qword_1006E6428);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_1001129E4(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_100019B40(v59, v60, &qword_1006E6428);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_10001036C(v63, &qword_1006E6428);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_1001129E4(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_10010911C(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  sub_100109184(v70, v69, v68, v75, SBYTE1(v75));
  sub_1001129E4(v74, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v73, &qword_1006E5D10);

  return _swift_task_switch(sub_100113D24, 0, 0);
}

uint64_t sub_100113D24()
{
  sub_1001129E4(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100113E5C()
{
  v1 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_10056C8A8();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100114124()
{
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1005722D8() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000CB98;

  return sub_100112F8C(v0 + v3, v0 + v6);
}

int *static Actions.Collaborate.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100114670(a1, a2);
  result = sub_100009DCC(&qword_1006E6E38);
  *(a2 + result[9]) = 13;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_100114308;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100587250;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100587258;
  v6[1] = 0;
  return result;
}

uint64_t sub_100114364()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114460;

  return v5();
}

uint64_t sub_100114460()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100114574()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114BFC;

  return v5();
}

uint64_t sub_100114670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.Collaborate.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.Collaborate.Context.menuItemTitle.getter()
{
  Playlist.hasActiveCollaboration.getter();

  return _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0();
}

uint64_t (*Actions.Collaborate.Context.menuItemImage.getter())()
{
  v0 = sub_100009DCC(&qword_1006E8B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  active = Playlist.hasActiveCollaboration.getter();
  sub_100572058();
  v4 = sub_100572048();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_10001036C(v2, &qword_1006E8B20);
    if ((active & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v6 = Playlist.Collaboration.hasPendingCollaborators.getter();
  (*(v5 + 8))(v2, v4);
  if (active)
  {
    if (v6)
    {
      v7 = 0xEE0065676461622ELL;
LABEL_9:
      v8 = 0x322E6E6F73726570;
      goto LABEL_10;
    }

LABEL_8:
    v7 = 0xE800000000000000;
    goto LABEL_9;
  }

LABEL_7:
  v7 = 0x80000001005ACE30;
  v8 = 0xD000000000000011;
LABEL_10:
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;

  return sub_100114928;
}

uint64_t sub_100114930()
{

  return swift_deallocObject();
}

uint64_t sub_100114994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005722D8();
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

uint64_t sub_100114A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005722D8();
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

unint64_t sub_100114B1C()
{
  result = sub_1005722D8();
  if (v1 <= 0x3F)
  {
    result = sub_1000D81FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t NSUserDefaults.ValueTransformer.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.presentCreatePlaylistView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return a1;
}

uint64_t sub_100114D00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100572F08();
  v2[4] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_100114D98, v4, v3);
}

uint64_t sub_100114D98()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100114E04()
{

  return swift_deallocObject();
}

uint64_t sub_100114E3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000CB98;

  return sub_100114D00(v2, v3);
}

uint64_t static Actions.CreatePlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 9;
  *(a5 + 40) = sub_1001024FC;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_1005872B0;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_1005872B8;
  *(a5 + 88) = 0;
}

uint64_t sub_100114F78(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10000C5F8;

  return v5();
}

uint64_t sub_100115060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 9;
  *(a2 + 40) = sub_1001024FC;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_1005872B0;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_1005872B8;
  *(a2 + 88) = 0;
}

uint64_t (*Actions.CreatePlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100108BF8;
}

uint64_t (*sub_100115194())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_100109428;
}

uint64_t _s9MusicCore7ActionsO14CreatePlaylistO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100115428()
{

  return swift_deallocObject();
}

uint64_t Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v52 = a7;
  v53 = a6;
  v49 = a4;
  v50 = a8;
  v47 = a3;
  v55 = a2;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44 = &v42 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = &v42 - v17;
  v43 = *(v10 + 16);
  v43(&v42 - v17);
  v19 = *(v10 + 80);
  v20 = (v19 + 40) & ~v19;
  v54 = v19 | 7;
  v16 += 7;
  v21 = (v16 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v23 = v52;
  v22[4] = v52;
  v42 = *(v10 + 32);
  v24 = v22 + v20;
  v25 = v22;
  v48 = v22;
  v42(v24, v18, a5);
  *(v25 + v21) = v55;
  v26 = v44;
  (v43)(v44, v51, a5);
  v27 = (v19 + 136) & ~v19;
  v28 = swift_allocObject();
  v29 = v53;
  *(v28 + 2) = a5;
  *(v28 + 3) = v29;
  *(v28 + 4) = v23;
  sub_1000FF9D0(v47, v28 + 40);
  v30 = v26;
  v31 = v42;
  v42(v28 + v27, v30, a5);
  *(v28 + ((v16 + v27) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v32 = v45;
  v31(v45, v51, a5);
  v33 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v34 = (*(v33 + 80) + 40) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v19 + v34) & ~v19;
  v36 = swift_allocObject();
  v37 = v52;
  v38 = v53;
  *(v36 + 2) = a5;
  *(v36 + 3) = v38;
  *(v36 + 4) = v37;
  sub_100019B40(v49, v36 + v34, &qword_1006E6B80);
  v31(v36 + v35, v32, a5);

  v40 = v50;
  v41 = v48;
  *v50 = sub_100115F64;
  v40[1] = v41;
  v40[2] = &unk_100587338;
  v40[3] = v28;
  v40[4] = &unk_100587350;
  v40[5] = v36;
  return result;
}

uint64_t static Actions.DeleteFromLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 49;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587358;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587360;
  *(a2 + 104) = 0;
}

uint64_t sub_100115878()
{
  v0 = sub_100571518();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E6F38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10056D508();
  sub_100571658();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100115A34();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100115A34()
{
  v1 = v0;
  v2 = sub_100571508();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_100009DCC(&qword_1006E6F38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, v1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v8, v12, v2);
    (*(v3 + 16))(v6, v8, v2);
    v14 = sub_100572978();
    (*(v3 + 8))(v8, v2);
    return v14;
  }

  else if (v13 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

uint64_t sub_100115CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 49;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587358;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587360;
  *(a2 + 104) = 0;
}

uint64_t (*Actions.DeleteFromLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100108BF8;
}

uint64_t (*sub_100115E38())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100109428;
}

uint64_t sub_100115ED0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_100115FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(sub_100115FF8, 0, 0);
}

uint64_t sub_100115FF8()
{
  *(v0 + 224) = sub_100572F08();
  *(v0 + 232) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_100116090, v2, v1);
}

uint64_t sub_100116090()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  sub_1001C3B14(v4, v3, v1, v2, (v0 + 14));

  return _swift_task_switch(sub_100116120, 0, 0);
}

uint64_t sub_100116120()
{
  *(v0 + 240) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_1001161AC, v2, v1);
}

uint64_t sub_1001161AC()
{
  v1 = *(v0 + 184);

  v2 = sub_10017F500(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 184);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 48) = sub_1002EC584;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1002ED584;
    *(v0 + 40) = &unk_1006894B0;
    v13 = _Block_copy((v0 + 16));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_100109350, v15);
    sub_1000F3E14(v5);
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 144), 1, 0, 0);
  }

  sub_100109250(v0 + 112);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100116478()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    sub_1000FF9AC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v4);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_100116584()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 136) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000CB98;

  return sub_100115FD0(v0 + 40, v0 + v4, v5, v2, v3);
}

uint64_t sub_1001166A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100009DCC(&qword_1006E6428);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001168B4, 0, 0);
}

uint64_t sub_1001168B4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000CC8C(*(v0 + 96), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 240), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_10010911C(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B500;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 2;
    *(v0 + 312) = sub_1000E0568(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_100572F08();
    *(v0 + 336) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_100116BBC, v18, v17);
  }
}

uint64_t sub_100116BBC()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 4101;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_1001129E4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 168), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001129E4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_10001036C(*(v0 + 160), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_10000CC8C(v36 + v14[6], *(v0 + 216), &qword_1006E5D10);
    sub_1001129E4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_100019B40(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001129E4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001129E4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001129E4(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_100113D24, 0, 0);
}

uint64_t sub_100117374()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_10056C8A8();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_100117634()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_1001166A0(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO17DeleteFromLibraryO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100117964()
{

  return swift_deallocObject();
}

uint64_t sub_1001179BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001179D4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100117A74(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v29 = _swiftEmptyArrayStorage;
  sub_1000CC634(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v23 = v8;
    a1(v24, &v23);
    if (v3)
    {
      break;
    }

    v10 = v24[0];
    v9 = v24[1];
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v29 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v25;
      v21 = v28;
      v18 = v27;
      sub_1000CC634((v15 > 1), v16 + 1, 1);
      v13 = v18;
      v11 = v20;
      v14 = v21;
      v5 = v29;
    }

    v5[2] = v16 + 1;
    v17 = &v5[7 * v16];
    v17[4] = v10;
    v17[5] = v9;
    v17[6] = v11;
    v17[7] = v12;
    *(v17 + 64) = v13;
    *(v17 + 9) = v14;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100117BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v6 = sub_100009DCC(&qword_1006E6F80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_100572F48();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_10000CC8C(a4, v21, &qword_1006E6F88);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 304) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v20;
  *(v15 + 4) = v19;
  *(v15 + 5) = v16;
  sub_100019B40(v21, (v15 + 48), &qword_1006E6F88);
  (*(v7 + 32))(&v15[v14], v9, v6);

  sub_1002B0D90(0, 0, v12, &unk_1005876E8, v15);
}

uint64_t sub_100117DE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_10000CB98;

  return v12(a6, a7);
}

uint64_t sub_100117EEC()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Actions.DeleteOrRemoveDownload.Choice.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4465766F6D6572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C65636E6163;
}

uint64_t sub_100118190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001005AB900;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001005AB900;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F4465766F6D6572;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0064616F6C6E77;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F4465766F6D6572;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0064616F6C6E77;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100574498();
  }

  return v11 & 1;
}

Swift::Int sub_10011828C()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10011833C()
{
  sub_1005729F8();
}

Swift::Int sub_1001183D8()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100118484@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001184B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064616F6C6E77;
  v4 = 0x80000001005AB900;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10011CDAC(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &unk_1005873F0;
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = sub_1001185CC;
  *(a2 + 224) = &unk_100587408;
  *(a2 + 232) = result;
  *(a2 + 240) = &unk_1005873F8;
  *(a2 + 248) = 0;
  return result;
}

unint64_t sub_1001185CC(uint64_t (**a1)(void))
{
  sub_100009DCC(&qword_1006E6F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  *(inited + 32) = (*a1)();
  *(inited + 40) = v3;
  *(inited + 48) = a1[4]();
  *(inited + 56) = v4;
  v5 = static ActionSupportedStatus.allSupported(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_100118684(uint64_t a1, uint64_t a2)
{
  v2[47] = a1;
  v2[48] = a2;
  sub_100572F08();
  v2[49] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_10011871C, v4, v3);
}

uint64_t sub_10011871C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);

  sub_10011CDAC(v2, v0 + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  *(v5 + 24) = v1;

  v6 = sub_100117A74(sub_10011DB48, v5, &off_100683128);

  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = v4;
  *(v0 + 328) = v3;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  *(v0 + 360) = v6;
  *(v0 + 368) = 0;
  v7 = sub_10017F500(v0 + 304, 0, 1);
  v8 = v7;
  v9 = *(v0 + 336);
  v10 = *(v0 + 176);
  if (v10)
  {
    v11 = qword_1006E4FE8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_10056DF88();
    sub_10000C49C(v12, qword_1006ECA00);
    v13 = sub_10056DF68();
    v14 = sub_100573448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Deferring presentation…", v15, 2u);
    }

    v16 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 240) = sub_1002EC584;
    *(v0 + 248) = 0;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1002ED584;
    *(v0 + 232) = &unk_100689868;
    v17 = _Block_copy((v0 + 208));
    v18 = [v16 initWithTimeout:v17 interruptionHandler:10.0];
    _Block_release(v17);

    sub_1000FEAFC(v0 + 96, v0 + 208);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_1000FF9D0(v0 + 208, v19 + 24);
    *(v19 + 120) = v8;
    *(v19 + 128) = v9;
    *(v19 + 129) = 1;
    *(v19 + 136) = 0;
    *(v19 + 144) = 0;
    v20 = v18;
    v8 = v8;
    v10(v0 + 96, v8, sub_100109350, v19);
    sub_1000F3E14(v10);
  }

  else
  {
    sub_1002EAA64(v7, *(v0 + 336), 1, 0, 0);
  }

  sub_100109250(v0 + 304);
  sub_10011DB68(v0 + 16);
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100118A70@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100009DCC(&qword_1006E6F80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *a1;
  v26 = a2;
  if (!v12)
  {
    v25 = 2;
    v23 = 0x6F4465766F6D6572;
    v13 = 0xEE0064616F6C6E77;
LABEL_6:
    v14 = &v29;
    goto LABEL_7;
  }

  if (v12 != 1)
  {
    v25 = 0;
    v23 = 0x6C65636E6163;
    v13 = 0xE600000000000000;
    goto LABEL_6;
  }

  v24 = 0x80000001005AB900;
  v25 = 1;
  v13 = 0xD000000000000011;
  v14 = &v28;
LABEL_7:
  *(v14 - 32) = v13;
  v15 = sub_100117EEC();
  v22 = v16;
  sub_10011CDAC(v26, v27);
  (*(v9 + 16))(v11, a3, v8);
  v17 = (*(v9 + 80) + 216) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  sub_10011DD80(v27, v18 + 24);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  v20 = v24;
  *a4 = v23;
  *(a4 + 8) = v20;
  v21 = v22;
  *(a4 + 16) = v15;
  *(a4 + 24) = v21;
  *(a4 + 32) = v25;
  *(a4 + 40) = &unk_100587700;
  *(a4 + 48) = v18;
  return result;
}

uint64_t sub_100118CD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 264) = a3;
  v6 = sub_100009DCC(&qword_1006E6F80);
  *(v5 + 224) = v6;
  v7 = *(v6 - 8);
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 + 64);
  *(v5 + 248) = swift_task_alloc();
  sub_100009DCC(&qword_1006E6420);
  *(v5 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_100118DE4, 0, 0);
}

uint64_t sub_100118DE4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 264);
  v8 = sub_100572F48();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  sub_10011CDAC(v6, v0 + 16);
  (*(v3 + 16))(v2, v5, v4);
  v9 = (*(v3 + 80) + 232) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  sub_10011DD80(v0 + 16, v10 + 40);
  (*(v3 + 32))(v10 + v9, v2, v4);
  sub_1002B0D90(0, 0, v1, &unk_100587710, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100118F64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 49) = a4;
  return _swift_task_switch(sub_100118F88, 0, 0);
}

uint64_t sub_100118F88()
{
  if (!*(v0 + 49))
  {
    v5 = (*(*(v0 + 16) + 48) + **(*(v0 + 16) + 48));
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v2 = sub_100119188;
    goto LABEL_5;
  }

  if (*(v0 + 49) == 1)
  {
    v5 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v2 = sub_100119344;
LABEL_5:
    v1[1] = v2;

    return v5();
  }

  *(v0 + 48) = 2;
  sub_100009DCC(&qword_1006E6F80);
  sub_100572E98();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100119188()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1001192B8, 0, 0);
  }
}

uint64_t sub_1001192B8()
{
  *(v0 + 48) = *(v0 + 49);
  sub_100009DCC(&qword_1006E6F80);
  sub_100572E98();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100119344()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10011E120, 0, 0);
  }
}

uint64_t sub_100119474(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C5F8;

  return sub_100118684(a1, a2);
}

uint64_t sub_100119530()
{
  v3 = (*(*(v0 + 16) + 64) + **(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100114460;

  return v3();
}

uint64_t sub_10011961C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10011CDAC(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &unk_1005873F0;
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = sub_1001185CC;
  *(a2 + 224) = &unk_1005876A8;
  *(a2 + 232) = result;
  *(a2 + 240) = &unk_1005873F8;
  *(a2 + 248) = 0;
  return result;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v86 = a4;
  v87 = a1;
  v77 = a8;
  v78 = a3;
  v13 = sub_100009DCC(&qword_1006E6B80);
  v76 = *(v13 - 8);
  v75 = *(v76 + 64);
  v14 = __chkstk_darwin(v13 - 8);
  v72 = &v64 - v15;
  v16 = *(a5 - 8);
  v17 = __chkstk_darwin(v14);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v67 = &v64 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v64 - v22;
  v23 = __chkstk_darwin(v21);
  v68 = &v64 - v24;
  v88 = v25;
  __chkstk_darwin(v23);
  v27 = &v64 - v26;
  v28 = *(v16 + 16);
  v80 = v16 + 16;
  v28(&v64 - v26, a1, a5);
  v29 = v28;
  v69 = *(v16 + 80);
  v73 = v16;
  v30 = (v69 + 48) & ~v69;
  v79 = v69 | 7;
  v31 = swift_allocObject();
  v74 = v31;
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  v32 = a7;
  v81 = a7;
  *(v31 + 4) = a7;
  *(v31 + 5) = a2;
  v85 = a2;
  v33 = v16 + 32;
  v34 = *(v16 + 32);
  v82 = v33;
  v83 = a6;
  v34(v31 + v30, v27, a5);
  v35 = v68;
  v84 = v29;
  v29(v68, v87, a5);
  v36 = swift_allocObject();
  v70 = v36;
  *(v36 + 2) = a5;
  *(v36 + 3) = a6;
  *(v36 + 4) = v32;
  *(v36 + 5) = a2;
  v34(v36 + v30, v35, a5);
  v37 = v66;
  v38 = v87;
  v29(v66, v87, a5);
  v39 = swift_allocObject();
  v68 = v39;
  v40 = v83;
  *(v39 + 2) = a5;
  *(v39 + 3) = v40;
  v41 = v81;
  v42 = v85;
  *(v39 + 4) = v81;
  *(v39 + 5) = v42;
  v34(&v39[v30], v37, a5);
  v43 = v34;
  v65 = v34;
  v44 = v67;
  v84(v67, v38, a5);
  v45 = swift_allocObject();
  v66 = v45;
  v46 = v83;
  *(v45 + 2) = a5;
  *(v45 + 3) = v46;
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  v43(&v45[v30], v44, a5);
  v47 = v72;
  sub_10000CC8C(v86, v72, &qword_1006E6B80);
  v48 = v71;
  v49 = v87;
  v84(v71, v87, a5);
  v50 = (*(v76 + 80) + 40) & ~*(v76 + 80);
  v51 = (v75 + v69 + v50) & ~v69;
  v52 = swift_allocObject();
  *(v52 + 2) = a5;
  *(v52 + 3) = v46;
  *(v52 + 4) = v81;
  sub_100019B40(v47, v52 + v50, &qword_1006E6B80);
  v65(v52 + v51, v48, a5);
  v53 = v77;
  v54 = v78;
  sub_1000FEAFC(v78, (v77 + 10));
  swift_retain_n();
  v55 = v49;
  v56 = sub_10011B0E0(v49, a5);
  v58 = v57;
  sub_10001036C(v86, &qword_1006E6B80);
  sub_100112B40(v54);
  result = (*(v73 + 8))(v55, a5);
  v60 = v74;
  *v53 = sub_10011CEE4;
  v53[1] = v60;
  v61 = v70;
  v53[2] = &unk_100587420;
  v53[3] = v61;
  v62 = v68;
  v53[4] = sub_10011CFE8;
  v53[5] = v62;
  v63 = v66;
  v53[6] = &unk_100587430;
  v53[7] = v63;
  v53[8] = &unk_100587440;
  v53[9] = v52;
  v53[22] = v56;
  v53[23] = v58;
  return result;
}

uint64_t sub_100119C48()
{
  v0 = sub_100571518();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E6F38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10056D508();
  sub_100571658();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100115A34();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100119E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000116F0;

  return MusicLibrary.remove<A>(_:)(a2, a3, a4);
}

uint64_t sub_100119EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a1;
  v23[3] = a5;
  v23[1] = a3;
  v23[0] = sub_1005716B8();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005716C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E6F78);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  sub_10056D4B8();
  sub_100571658();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v16, v18, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v20 = v23[0];
    (*(v5 + 32))(v7, v16, v23[0]);
    v21 = sub_1001318CC(v7);
    (*(v5 + 8))(v7, v20);
LABEL_5:
    (*(v13 + 8))(v18, v12);
    return v21;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v21 = 0;
    goto LABEL_5;
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t sub_10011A238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000116F0;

  return MusicLibrary.removeDownload<A>(_:)(a2, a3, a4);
}

uint64_t sub_10011A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100009DCC(&qword_1006E6428);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_10011A504, 0, 0);
}

uint64_t sub_10011A504()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 216), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_10010911C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1000E0568(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 312) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_10011A7F4, v18, v17);
  }
}

uint64_t sub_10011A7F4()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9733;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_1001129E4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001129E4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000CC8C(v36 + v14[6], *(v0 + 192), &qword_1006E5D10);
    sub_1001129E4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100019B40(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001129E4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001129E4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001129E4(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_10011AFA8, 0, 0);
}

uint64_t sub_10011AFA8()
{
  sub_1001129E4(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011B0E0(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v108 = sub_100571BA8();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10056DB18();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100571CF8();
  v110 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10056DBC8();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10056DB68();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10056DB08();
  v119 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10056D8D8();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100571A68();
  v125 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1005722D8();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1005713A8();
  v131 = *(v135 - 8);
  __chkstk_darwin(v135);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10056CC38();
  __chkstk_darwin(v14 - 8);
  v136 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100572888();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v102 - v21;
  v23 = sub_100571B78();
  v134 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 - 8);
  v28 = __chkstk_darwin(v24);
  v103 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v105 = &v102 - v31;
  __chkstk_darwin(v30);
  v33 = &v102 - v32;
  v138 = v27;
  v104 = *(v27 + 16);
  v104(&v102 - v32, v137, a2);
  if (swift_dynamicCast())
  {
    v137 = a2;
    sub_100572818();
    v17[2](v20, v22, v16);
    v34 = v17;
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v35 = qword_1006FC3B8;
    sub_10056CBC8();
    v36 = sub_100572948();
    (v34[1])(v22, v16);
    (*(v134 + 8))(v26, v23);
    (*(v138 + 8))(v33, v137);
    return v36;
  }

  v102 = v20;
  v134 = v16;
  v37 = v17;
  v38 = v135;
  if (swift_dynamicCast())
  {
    v133 = v33;
    v39 = v13;
    sub_100572818();
    v40 = v37;
    v41 = v37[2];
    v42 = v134;
    (v41)(v102, v22, v134);
    v43 = v138;
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v44 = qword_1006FC3B8;
    sub_10056CBC8();
    v45 = sub_100572948();
    v40[1](v22, v42);
    (*(v131 + 8))(v39, v38);
    v36 = v45;
    (*(v43 + 8))(v133, a2);
    return v36;
  }

  v46 = a2;
  if (swift_dynamicCast())
  {
    sub_100572818();
    v47 = v37;
    v48 = v37[2];
    v49 = v134;
    (v48)(v102, v22, v134);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v50 = qword_1006FC3B8;
    sub_10056CBC8();
    v51 = sub_100572948();
    v47[1](v22, v49);
    (*(v128 + 8))(v132, v133);
LABEL_17:
    v56 = *(v138 + 8);
    v57 = v33;
    v58 = a2;
    v36 = v51;
LABEL_18:
    v56(v57, v58);
    return v36;
  }

  if (swift_dynamicCast())
  {
    sub_100572818();
    v52 = v37;
    v53 = v37[2];
    v54 = v134;
    (v53)(v102, v22, v134);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v55 = qword_1006FC3B8;
    sub_10056CBC8();
    v51 = sub_100572948();
    v52[1](v22, v54);
    (*(v125 + 8))(v129, v130);
    goto LABEL_17;
  }

  v60 = swift_dynamicCast();
  v61 = v33;
  v62 = v37;
  v63 = v134;
  if (v60)
  {
    sub_100572818();
    (v37[2])(v102, v22, v63);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v64 = qword_1006FC3B8;
    sub_10056CBC8();
    v65 = sub_100572948();
    v37[1](v22, v63);
    (*(v124 + 8))(v126, v127);
    v66 = v46;
    v36 = v65;
    (*(v138 + 8))(v33, v66);
    return v36;
  }

  v135 = v22;
  v67 = v122;
  v68 = v123;
  if (swift_dynamicCast())
  {
    (*(v119 + 8))(v67, v68);
LABEL_28:
    v71 = v135;
    (*(v138 + 8))(v61, v46);
    sub_100572818();
    (*(v62 + 2))(v102, v71, v63);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v72 = qword_1006FC3B8;
    sub_10056CBC8();
    v36 = sub_100572948();
    (*(v62 + 1))(v71, v63);
    return v36;
  }

  v132 = v37;
  v69 = v120;
  v70 = v121;
  if (swift_dynamicCast())
  {
    (*(v116 + 8))(v69, v70);
    v63 = v134;
    v62 = v132;
    goto LABEL_28;
  }

  v73 = swift_dynamicCast();
  v74 = v135;
  if (v73)
  {
    sub_100572818();
    v75 = v132;
    v76 = v134;
    (*(v132 + 2))(v102, v74, v134);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v77 = qword_1006FC3B8;
    sub_10056CBC8();
    v78 = sub_100572948();
    (*(v75 + 1))(v74, v76);
    (*(v113 + 8))(v117, v118);
LABEL_43:
    v56 = *(v138 + 8);
    v57 = v61;
LABEL_44:
    v58 = v46;
    v36 = v78;
    goto LABEL_18;
  }

  v79 = swift_dynamicCast();
  v80 = v134;
  v81 = v132;
  if (v79)
  {
    sub_100572818();
    (*(v81 + 2))(v102, v74, v80);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v82 = qword_1006FC3B8;
    sub_10056CBC8();
    v78 = sub_100572948();
    (*(v81 + 1))(v74, v80);
    (*(v110 + 8))(v114, v115);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    sub_100572818();
    (*(v81 + 2))(v102, v74, v80);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v83 = qword_1006FC3B8;
    sub_10056CBC8();
    v78 = sub_100572948();
    (*(v81 + 1))(v74, v80);
    (*(v107 + 8))(v111, v112);
    goto LABEL_43;
  }

  v133 = v61;
  v84 = v108;
  if (swift_dynamicCast())
  {
    sub_100572818();
    (*(v81 + 2))(v102, v74, v80);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v85 = qword_1006FC3B8;
    sub_10056CBC8();
    v78 = sub_100572948();
    (*(v81 + 1))(v74, v80);
    (*(v106 + 8))(v109, v84);
    v56 = *(v138 + 8);
    v57 = v133;
    goto LABEL_44;
  }

  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v86 = sub_10056DF88();
  sub_10000C49C(v86, static Logger.actions);
  v87 = v105;
  v88 = v104;
  v104(v105, v137, v46);
  v89 = sub_10056DF68();
  v90 = sub_100573438();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v139 = v137;
    *v91 = 136315138;
    v88(v103, v87, v46);
    v92 = sub_100572978();
    v93 = v46;
    v95 = v94;
    v96 = *(v138 + 8);
    v96(v87, v93);
    v97 = sub_1000C9784(v92, v95, &v139);
    v46 = v93;
    v74 = v22;

    *(v91 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v89, v90, "DeleteOrRemoveDownload: unhandled item type=%s", v91, 0xCu);
    sub_100010474(v137);

    v81 = v37;
  }

  else
  {

    v96 = *(v138 + 8);
    v96(v87, v46);
  }

  sub_100572818();
  v98 = v134;
  (*(v81 + 2))(v102, v74, v134);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v99 = qword_1006FC3B8;
  sub_10056CBC8();
  v100 = sub_100572948();
  (*(v81 + 1))(v74, v98);
  v101 = v46;
  v36 = v100;
  v96(v133, v101);
  return v36;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.DeleteOrRemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100108BF8;
}

uint64_t (*sub_10011C9F4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100109428;
}

uint64_t sub_10011CA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10011CAB0, 0, 0);
}

uint64_t sub_10011CAB0()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_10011CBB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0xD00000000000003ALL, 0x80000001005ACA20, sub_10011D8C4, v2, &type metadata for Actions.DeleteOrRemoveDownload.Choice);
}

uint64_t sub_10011CBB0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10011CCFC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    *v3 = *(v2 + 72);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10011CCFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100683070;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10011CDE4()
{

  return swift_deallocObject();
}

uint64_t sub_10011CE1C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000116F0;

  return sub_10011CA8C(a1, a2, v7, v6);
}

uint64_t sub_10011CEFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000116F0;

  return sub_100119E04(v4, v0 + v5, v2, v3);
}

uint64_t sub_10011D048()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10011D104()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000116F0;

  return sub_10011A238(v4, v0 + v5, v2, v3);
}

uint64_t sub_10011D1EC()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_10056C8A8();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_10011D4AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_10011A2F0(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10011D5FC()
{

  return swift_deallocObject();
}

unint64_t sub_10011D638()
{
  result = qword_1006E6F40;
  if (!qword_1006E6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6F40);
  }

  return result;
}

unint64_t sub_10011D690()
{
  result = qword_1006E6F48;
  if (!qword_1006E6F48)
  {
    sub_100010324(&qword_1006E6F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6F48);
  }

  return result;
}

uint64_t sub_10011D710(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011D724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_10011D76C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10011D7FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CB98;

  return sub_10011CA8C(a1, a2, v7, v6);
}

uint64_t sub_10011D8D0()
{
  v1 = sub_100009DCC(&qword_1006E6F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 176);
  if (v4 != 255)
  {
    sub_1000FF9AC(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), v4);
  }

  if (*(v0 + 192))
  {
  }

  if (*(v0 + 208))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 304) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_10011DA34(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6F80) - 8);
  v5 = (*(v4 + 80) + 304) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_100117DE8(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t sub_10011DB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10011DBB0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10011DC44()
{
  v1 = sub_100009DCC(&qword_1006E6F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    sub_1000FF9AC(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v4);
  }

  if (*(v0 + 168))
  {
  }

  if (*(v0 + 184))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 216) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_10011DDB8(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_100009DCC(&qword_1006E6F80) - 8);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CB98;

  return sub_100118CD4(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_10011DEB8()
{
  v1 = sub_100009DCC(&qword_1006E6F80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 168);
  if (v4 != 255)
  {
    sub_1000FF9AC(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), v4);
  }

  if (*(v0 + 184))
  {
  }

  if (*(v0 + 200))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 232) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_10011DFFC(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6F80) - 8);
  v5 = (*(v4 + 80) + 232) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_100118F64(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v67 = a8;
  v68 = a7;
  v72 = a6;
  v65 = a3;
  v66 = a4;
  v74 = a2;
  v9 = *(a5 - 8);
  v76 = a5;
  v77 = v9;
  v78 = *(v9 + 64);
  v10 = __chkstk_darwin(a1);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v58 - v13;
  __chkstk_darwin(v12);
  v69 = &v58 - v14;
  v15 = sub_100571588();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100009DCC(&qword_1006E6F98);
  v19 = *(v75 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v75);
  v71 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v58 - v23;
  v59 = &v58 - v23;
  __chkstk_darwin(v22);
  v26 = &v58 - v25;
  sub_10056D528();
  v70 = a1;
  v27 = v76;
  sub_100571658();
  (*(v16 + 8))(v18, v15);
  v28 = v77;
  v61 = *(v77 + 16);
  v61(v69, a1, v27);
  v58 = v19;
  v29 = v26;
  (*(v19 + 16))(v24, v26, v75);
  v30 = *(v28 + 80);
  v31 = v28;
  v32 = (v30 + 40) & ~v30;
  v33 = *(v19 + 80);
  v34 = (v78 + v32 + v33) & ~v33;
  v60 = v30 | v33;
  v35 = swift_allocObject();
  v36 = v72;
  *(v35 + 2) = v76;
  *(v35 + 3) = v36;
  v37 = v69;
  *(v35 + 4) = v68;
  v38 = *(v31 + 32);
  v77 = v31 + 32;
  v62 = v38;
  v63 = v35;
  (v38)(v35 + v32, v37);
  v39 = *(v58 + 32);
  v40 = v35 + v34;
  v41 = v75;
  v39(v40, v59, v75);
  v39(v71, v29, v41);
  v42 = v76;
  v61(v73, v70, v76);
  v43 = (v33 + 136) & ~v33;
  v44 = (v20 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 2) = v42;
  *(v45 + 3) = v36;
  v46 = v68;
  *(v45 + 4) = v68;
  sub_1000FF9D0(v65, v45 + 40);
  v39(v45 + v43, v71, v75);
  v47 = v73;
  *(v45 + v44) = v74;
  v48 = v62;
  v62(v45 + ((v30 + v44 + 8) & ~v30), v47, v42);
  v49 = v64;
  v48(v64, v70, v42);
  v50 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v51 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v52 = (*(v50 + 64) + v30 + v51) & ~v30;
  v53 = swift_allocObject();
  v54 = v72;
  *(v53 + 2) = v42;
  *(v53 + 3) = v54;
  *(v53 + 4) = v46;
  sub_100019B40(v66, v53 + v51, &qword_1006E6B80);
  result = (v48)(v53 + v52, v49, v42);
  v56 = v67;
  v57 = v63;
  *v67 = sub_10011EDB0;
  v56[1] = v57;
  v56[2] = &unk_100587730;
  v56[3] = v45;
  v56[4] = &unk_100587740;
  v56[5] = v53;
  return result;
}

uint64_t static Actions.Download.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 1;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587748;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587750;
  *(a2 + 104) = 0;
}

uint64_t sub_10011E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 1;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587748;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587750;
  *(a2 + 104) = 0;
}

unint64_t sub_10011E820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a1;
  v4 = sub_100009DCC(&qword_1006E6FD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_100009DCC(&qword_1006E8BD0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_100009DCC(&qword_1006E8BE0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin(v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005722D8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v30, a3);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v13, 1, 1, v17);
    v24 = &qword_1006E8BE0;
    v25 = v13;
    goto LABEL_5;
  }

  v22(v13, 0, 1, v17);
  (*(v18 + 32))(v20, v13, v17);
  sub_1005722C8();
  v23 = v28;
  if ((*(v28 + 48))(v6, 1, v7) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v24 = &qword_1006E6FD8;
    v25 = v6;
LABEL_5:
    sub_10001036C(v25, v24);
    return sub_10011EE9C();
  }

  (*(v23 + 32))(v9, v6, v7);
  sub_100123AD4();
  sub_1005731B8();
  sub_100573208();
  if (v32 == v31)
  {
    (*(v23 + 8))(v9, v7);
    (*(v18 + 8))(v20, v17);
    return 0xD000000000000011;
  }

  (*(v23 + 8))(v9, v7);
  (*(v18 + 8))(v20, v17);
  return sub_10011EE9C();
}

uint64_t sub_10011EC64()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_100009DCC(&qword_1006E6F98);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t sub_10011EDB0()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_100009DCC(&qword_1006E6F98) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10011E820(v0 + v2, v5, v1);
}

uint64_t sub_10011EE9C()
{
  v1 = sub_100571578();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - v6;
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_100009DCC(&qword_1006E6F98);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v37 - v15;
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = *(v11 + 16);
  v40 = v0;
  v18(&v37 - v16, v0, v10);
  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v11 + 96))(v17, v10);
    (*(v2 + 32))(v9, v17, v1);
    v20 = *(v2 + 16);
    v20(v7, v9, v1);
    if ((*(v2 + 88))(v7, v1) != enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v20(v38, v9, v1);
      v21 = sub_100572978();
      v22 = *(v2 + 8);
      v22(v9, v1);
      v22(v7, v1);
      return v21;
    }

    (*(v2 + 8))(v9, v1);
    return 0;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v23 = sub_10056DF88();
  sub_10000C49C(v23, static Logger.actions);
  v24 = v39;
  v18(v39, v40, v10);
  v25 = sub_10056DF68();
  v26 = sub_100573438();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v27 = 136315138;
    v18(v37, v24, v10);
    v28 = sub_100572978();
    v29 = v24;
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v29, v10);
    v33 = v32;
    v34 = sub_1000C9784(v28, v31, v41);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unknown status=%s", v27, 0xCu);
    sub_100010474(v38);

    v35 = v33;
  }

  else
  {

    v35 = *(v11 + 8);
    v35(v24, v10);
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_100574098();
  v21 = v41[0];
  v35(v17, v10);
  return v21;
}

uint64_t sub_10011F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[44] = a6;
  v7[45] = a7;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  sub_10056CC38();
  v7[46] = swift_task_alloc();
  v9 = sub_100572888();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v10 = *(a5 - 8);
  v7[51] = v10;
  v7[52] = *(v10 + 64);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v11 = sub_100571578();
  v7[55] = v11;
  v7[56] = *(v11 - 8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E6F98);
  v7[61] = v12;
  v7[62] = *(v12 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return _swift_task_switch(sub_10011F630, 0, 0);
}

uint64_t sub_10011F630()
{
  v90 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 320), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v6 = *(v0 + 520);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);
    (*(*(v0 + 496) + 96))(v6, *(v0 + 488));
    (*(v10 + 32))(v7, v6, v9);
    v11 = *(v10 + 16);
    v11(v8, v7, v9);
    if ((*(v10 + 88))(v8, v9) == enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v12 = *(v0 + 312);
      v13 = swift_task_alloc();
      *(v0 + 528) = v13;
      *(v13 + 16) = v12;
      v14 = swift_task_alloc();
      *(v0 + 536) = v14;
      *v14 = v0;
      v14[1] = sub_100120024;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 600, 0, 0, 0xD00000000000001DLL, 0x80000001005AD460, sub_100123574, v13, &type metadata for Bool);
    }

    if (qword_1006E4C68 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 480);
    v33 = *(v0 + 464);
    v34 = *(v0 + 440);
    v35 = sub_10056DF88();
    sub_10000C49C(v35, static Logger.actions);
    v11(v33, v32, v34);
    v36 = sub_10056DF68();
    v37 = sub_100573428();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 480);
    v40 = *(v0 + 464);
    if (v38)
    {
      v41 = *(v0 + 448);
      v42 = *(v0 + 456);
      v43 = *(v0 + 440);
      v87 = *(v0 + 480);
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89 = v84;
      *v44 = 136315138;
      v11(v42, v40, v43);
      v45 = sub_100572978();
      v47 = v46;
      v48 = *(v41 + 8);
      v48(v40, v43);
      v49 = sub_1000C9784(v45, v47, &v89);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Couldn't download for reason: %s", v44, 0xCu);
      sub_100010474(v84);

      v50 = v87;
    }

    else
    {
      v43 = *(v0 + 440);
      v63 = *(v0 + 448);

      v48 = *(v63 + 8);
      v48(v40, v43);
      v50 = v39;
    }

    v48(v50, v43);
    v48(*(v0 + 472), *(v0 + 440));
    goto LABEL_25;
  }

  if (v5 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    if (qword_1006E4C68 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 320);
    v18 = sub_10056DF88();
    sub_10000C49C(v18, static Logger.actions);
    v4(v15, v17, v16);
    v19 = sub_10056DF68();
    v20 = sub_100573438();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 512);
    if (v21)
    {
      v86 = v20;
      v23 = *(v0 + 496);
      v24 = *(v0 + 504);
      v25 = *(v0 + 488);
      v26 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v26 = 136315138;
      v4(v24, v22, v25);
      v27 = sub_100572978();
      v29 = v28;
      v30 = *(v23 + 8);
      v30(v22, v25);
      v31 = sub_1000C9784(v27, v29, &v89);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v86, "Unknown status=%s", v26, 0xCu);
      sub_100010474(v83);

      v30(*(v0 + 520), *(v0 + 488));
    }

    else
    {
      v51 = *(v0 + 488);
      v52 = *(v0 + 496);

      v53 = *(v52 + 8);
      v53(v22, v51);
      v53(*(v0 + 520), *(v0 + 488));
    }
  }

  v54 = *(*(v0 + 408) + 16);
  v54(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  sub_100009DCC(&qword_1006E6FC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_10001036C(v0 + 272, &qword_1006E6FC8);
    goto LABEL_22;
  }

  sub_10002EA74((v0 + 272), v0 + 232);
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  sub_10000C8CC((v0 + 232), v56);
  if (!sub_1001DB8A8(v56, v55) || (v57 = [objc_opt_self() standardUserDefaults], v58 = objc_msgSend(v57, "prefersSpatialDownloads"), v57, (v58 & 1) != 0) || (v59 = objc_opt_self(), *(v0 + 544) = v59, v60 = objc_msgSend(v59, "standardUserDefaults"), v61 = sub_100572898(), v62 = objc_msgSend(v60, "BOOLForKey:", v61), v61, v60, (v62 & 1) != 0))
  {
    sub_100010474(v0 + 232);
LABEL_22:
    sub_100121660(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_25:

    v64 = *(v0 + 8);

    return v64();
  }

  v65 = *(v0 + 392);
  v66 = *(v0 + 400);
  v67 = *(v0 + 376);
  v68 = *(v0 + 384);
  sub_100572818();
  (*(v68 + 16))(v65, v66, v67);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 400);
  v69 = *(v0 + 408);
  v71 = *(v0 + 384);
  v72 = *(v0 + 376);
  v85 = *(v0 + 360);
  v80 = *(v0 + 336);
  v81 = *(v0 + 424);
  v82 = *(v0 + 328);
  v73 = qword_1006FC3B8;
  v88 = *(v0 + 344);
  sub_10056CBC8();
  *(v0 + 552) = sub_100572948();
  *(v0 + 560) = v74;
  (*(v71 + 8))(v70, v72);
  v54(v81, v80, v88);
  v75 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v76 = swift_allocObject();
  *(v0 + 568) = v76;
  *(v76 + 16) = v88;
  *(v76 + 32) = v85;
  *(v76 + 40) = v82;
  (*(v69 + 32))(v76 + v75, v81, v88);
  *(v0 + 576) = sub_100572F08();

  *(v0 + 584) = sub_100572EF8();
  v78 = sub_100572E78();

  return _swift_task_switch(sub_100120690, v78, v77);
}

uint64_t sub_100120024()
{

  return _swift_task_switch(sub_10012013C, 0, 0);
}

uint64_t sub_10012013C()
{
  v1 = *(v0 + 600);
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.actions);
  v3 = sub_10056DF68();
  v4 = sub_100573448();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cellular data enablement: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 480);
  v7 = *(v0 + 440);
  v8 = *(v0 + 448);

  (*(v8 + 8))(v6, v7);
  if (!v1)
  {
    goto LABEL_13;
  }

  v9 = *(*(v0 + 408) + 16);
  v9(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  sub_100009DCC(&qword_1006E6FC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_10001036C(v0 + 272, &qword_1006E6FC8);
    goto LABEL_12;
  }

  sub_10002EA74((v0 + 272), v0 + 232);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  sub_10000C8CC((v0 + 232), v11);
  if (!sub_1001DB8A8(v11, v10) || (v12 = [objc_opt_self() standardUserDefaults], v13 = objc_msgSend(v12, "prefersSpatialDownloads"), v12, (v13 & 1) != 0) || (v14 = objc_opt_self(), *(v0 + 544) = v14, v15 = objc_msgSend(v14, "standardUserDefaults"), v16 = sub_100572898(), v17 = objc_msgSend(v15, "BOOLForKey:", v16), v16, v15, (v17 & 1) != 0))
  {
    sub_100010474(v0 + 232);
LABEL_12:
    sub_100121660(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_13:

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 392);
  v21 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  sub_100572818();
  (*(v23 + 16))(v20, v21, v22);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v26 = *(v0 + 384);
  v27 = *(v0 + 376);
  v37 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 424);
  v36 = *(v0 + 328);
  v28 = qword_1006FC3B8;
  v38 = *(v0 + 344);
  sub_10056CBC8();
  *(v0 + 552) = sub_100572948();
  *(v0 + 560) = v29;
  (*(v26 + 8))(v25, v27);
  v9(v35, v34, v38);
  v30 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v31 = swift_allocObject();
  *(v0 + 568) = v31;
  *(v31 + 16) = v38;
  *(v31 + 32) = v37;
  *(v31 + 40) = v36;
  (*(v24 + 32))(v31 + v30, v35, v38);
  *(v0 + 576) = sub_100572F08();

  *(v0 + 584) = sub_100572EF8();
  v33 = sub_100572E78();

  return _swift_task_switch(sub_100120690, v33, v32);
}

uint64_t sub_100120690()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];

  sub_1001CB944(v3, v2, &unk_1005877D8, v1, (v0 + 14));

  return _swift_task_switch(sub_100120744, 0, 0);
}

uint64_t sub_100120744()
{
  *(v0 + 592) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_1001207D0, v2, v1);
}

uint64_t sub_1001207D0()
{
  v1 = *(v0 + 312);

  v2 = sub_10017F500(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 312);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = sub_1002EC584;
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_1002ED584;
    *(v0 + 208) = &unk_100689BD0;
    v13 = _Block_copy((v0 + 184));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_100112A60, v15);
    sub_1000F3E14(v5);
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 144), 1, 0, 0);
  }

  return _swift_task_switch(sub_100120A98, 0, 0);
}

uint64_t sub_100120A98()
{
  v1 = [*(v0 + 544) standardUserDefaults];
  isa = sub_100572E68().super.super.isa;
  v3 = sub_100572898();
  [v1 setValue:isa forKey:v3];

  sub_100109250(v0 + 112);
  sub_100010474(v0 + 232);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100120C0C()
{
  v1 = *(v0 + 16);
  v2 = sub_100009DCC(&qword_1006E6F98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + 88);
  if (v8 != 255)
  {
    sub_1000FF9AC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v8);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  v9 = (v4 + 136) & ~v4;
  v10 = (((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  (*(v3 + 8))(v0 + v9, v2);

  (*(v6 + 8))(v0 + v10, v1);

  return swift_deallocObject();
}

uint64_t sub_100120DB0()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(sub_100009DCC(&qword_1006E6F98) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000CB98;

  return sub_10011F3C4((v0 + 5), v0 + v6, v9, v0 + v8, v3, v2, v4);
}

uint64_t sub_100120F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6FD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  v9 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  sub_1000FEAFC(a2, v18);
  sub_100572F08();
  v13 = sub_100572EF8();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v16 + v14, v8, v4);
  sub_1000FF9D0(v18, v16 + v15);
  sub_1001B3FAC(0, 0, v11, &unk_1005877F0, v16);
}

uint64_t sub_100121144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = sub_100009DCC(&qword_1006E6FD0);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v5[33] = *(v7 + 64);
  v5[34] = swift_task_alloc();
  sub_100572F08();
  v5[35] = sub_100572EF8();
  v9 = sub_100572E78();

  return _swift_task_switch(sub_10012124C, v9, v8);
}

uint64_t sub_10012124C()
{

  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.actions);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will present cellular data enablement alert", v4, 2u);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v7 + 16))(v5, v8, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v5, v6);
  sub_1001CBE78(sub_10012385C, v11, (v0 + 112));

  v12 = sub_10017F500(v0 + 112, 0, 1);
  v13 = v12;
  v14 = *(v0 + 144);
  v15 = *(v9 + 80);
  if (v15)
  {
    v16 = qword_1006E4FE8;

    if (v16 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v1, qword_1006ECA00);
    v17 = sub_10056DF68();
    v18 = sub_100573448();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Deferring presentation…", v19, 2u);
    }

    v20 = *(v0 + 240);

    v21 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = sub_1002EC584;
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_1002ED584;
    *(v0 + 208) = &unk_100689C70;
    v22 = _Block_copy((v0 + 184));
    v23 = [v21 initWithTimeout:v22 interruptionHandler:10.0];
    _Block_release(v22);

    sub_1000FEAFC(v20, v0 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_1000FF9D0(v0 + 16, v24 + 24);
    *(v24 + 120) = v13;
    *(v24 + 128) = v14;
    *(v24 + 129) = 1;
    *(v24 + 136) = 0;
    *(v24 + 144) = 0;
    v25 = v23;
    v13 = v13;
    v15(v20, v13, sub_100112BB0, v24);
    sub_1000F3E14(v15);
  }

  else
  {
    sub_1002EAA64(v12, *(v0 + 144), 1, 0, 0);
  }

  sub_100109250(v0 + 112);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100121660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  sub_100572F18();
  v16 = sub_100572F48();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v10 + 16))(v12, a2, a3);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a5;
  *(v18 + 7) = a1;
  (*(v10 + 32))(&v18[v17], v12, a3);

  sub_1000D6938(0, 0, v15, &unk_100587800, v18);

  return sub_10001036C(v15, &qword_1006E6420);
}

uint64_t sub_10012186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = *(a6 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_100121990;

  return MusicLibrary.download<A>(_:)(a5, a6, a7);
}

uint64_t sub_100121990()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100121AD4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100121AD4()
{
  v29 = v0;
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_10056DF88();
  sub_10000C49C(v5, static Logger.actions);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[7];
  if (v9)
  {
    v27 = v8;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    v6(v13, v11, v14);
    v16 = sub_100572978();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = sub_1000C9784(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v20 = sub_100572978();
    v22 = sub_1000C9784(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v7, v27, "Download failed to item=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[4];
    v24 = v0[5];

    (*(v24 + 8))(v11, v23);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100121D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return _swift_task_switch(sub_100121DC0, 0, 0);
}

uint64_t sub_100121DC0()
{
  sub_100121660(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100121E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_100009DCC(&qword_1006E6428);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_10012203C, 0, 0);
}

uint64_t sub_10012203C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10000CC8C(*(v0 + 72), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 216), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_10010911C(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_10056C8A8();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1000E0568(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 312) = sub_100572EF8();
    v18 = sub_100572E78();

    return _swift_task_switch(sub_10012232C, v18, v17);
  }
}

uint64_t sub_10012232C()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_10000CC8C(v3, v4, &qword_1006E5D10);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_10000CC8C(v1 + v2[5], v7, &qword_1006E6428);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3589;
  sub_100019B40(v4, v6 + v5[7], &qword_1006E5D10);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_10000CC8C(v7, v72, &qword_1006E6428);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001036C(v20, &qword_1006E6428);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_1000DC030(v75, v77);

    sub_1000DCFE4(v19, v17, v18, v16, SBYTE1(v16));

    sub_1001129E4(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_10000CC8C(v23, v24, &qword_1006E6428);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_10001036C(*(v0 + 144), &qword_1006E6428);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1001129E4(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_10000CC8C(v30, v31, &qword_1006E6428);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_10000CC8C(v36 + v14[6], *(v0 + 192), &qword_1006E5D10);
    sub_1001129E4(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_100019B40(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1006E5D10);
  sub_10000CC8C(v37, v38, &qword_1006E6428);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_10001036C(*(v0 + 128), &qword_1006E6428);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1001129E4(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_10001036C(v45, &qword_1006E6428);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6428);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100019B40(v54, v55, &qword_1006E6428);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_10001036C(v58, &qword_1006E6428);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1001129E4(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_10010911C(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100109184(v65, v64, v63, v70, SBYTE1(v70));
  sub_1001129E4(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v68, &qword_1006E5D10);

  return _swift_task_switch(sub_10011AFA8, 0, 0);
}

uint64_t sub_100122AE0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_10056C8A8();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_100122DA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000116F0;

  return sub_100121E28(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.Download.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.Download.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001005AD350;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001005AD350;
  return sub_100108BF8;
}

uint64_t sub_10012316C()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Download.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001005AD370;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001005AD370;
  return sub_100109428;
}

uint64_t (*sub_100123244())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001005AD350;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001005AD350;
  return sub_100109428;
}

uint64_t (*sub_1001232E4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001005AD370;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001005AD370;
  return sub_100109428;
}

uint64_t sub_1001233A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100123460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_100121D98(a1, v7, v1 + v8, v4, v5, v6);
}

uint64_t sub_100123558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012357C()
{
  v1 = sub_100009DCC(&qword_1006E6FD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001236A0(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6FD0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_100121144(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1001237C8()
{
  v1 = sub_100009DCC(&qword_1006E6FD0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10012385C()
{
  sub_100009DCC(&qword_1006E6FD0);
  sub_100009DCC(&qword_1006E6FD0);
  return sub_100572E98();
}

uint64_t sub_100123900()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1001239C4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000CB98;

  return sub_10012186C(a1, v8, v9, v6, v1 + v7, v4, v5);
}

unint64_t sub_100123AD4()
{
  result = qword_1006E8C00;
  if (!qword_1006E8C00)
  {
    sub_100010324(&qword_1006E8BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8C00);
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005722D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Actions.EditPlaylist.Context.playlist.setter(uint64_t a1)
{
  v3 = sub_1005722D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));

  return v1;
}

uint64_t type metadata accessor for Actions.EditPlaylist.Context()
{
  result = qword_1006E7060;
  if (!qword_1006E7060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.finish.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));

  return v1;
}

uint64_t Actions.EditPlaylist.Context.finish.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = sub_1005722D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(a5, a1, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = type metadata accessor for Actions.EditPlaylist.Context();
  v15 = (a5 + *(v14 + 20));
  *v15 = &unk_1005872A8;
  v15[1] = v13;
  v16 = *(v10 + 32);
  v16(v12, a1, v9);
  v17 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (v18 + *(v17 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_100019B40(v24, v20 + v18, &qword_1006E6B80);
  result = v16(v20 + v19, v12, v9);
  v22 = (a5 + *(v14 + 24));
  *v22 = &unk_100587818;
  v22[1] = v20;
  return result;
}

uint64_t sub_100124048()
{

  return swift_deallocObject();
}

uint64_t sub_100124080(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_100009DCC(&qword_1006E6428);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_100124290, 0, 0);
}

uint64_t sub_100124290()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_10000CC8C(*(v0 + 112), v3, &qword_1006E6B80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 240), &qword_1006E6B80);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_10010911C(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = sub_100572158();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = sub_10056C8A8();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_100009DCC(&qword_1006E6D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(v0 + 104) = sub_1005722D8();
    sub_100009DCC(&qword_1006E6548);
    v13 = sub_100572978();
    v15 = v14;
    sub_1000E095C(1);
    v16 = sub_100573C38();
    v18 = v17;

    v19 = sub_1000E09F8(1uLL, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_1000E0AA8();
    sub_100572A78();

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_1000E0568(inited);
    *(v0 + 320) = v26;
    *(v0 + 328) = v27;
    *(v0 + 344) = v28;
    swift_setDeallocating();
    sub_100114BA8(inited + 32);
    sub_100572F08();
    *(v0 + 336) = sub_100572EF8();
    v30 = sub_100572E78();

    return _swift_task_switch(sub_100124628, v30, v29);
  }
}

uint64_t sub_100124628()
{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  sub_10000CC8C(v6, v5, &qword_1006E5D10);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_10000CC8C(v3 + v4[5], v9, &qword_1006E6428);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 5125;
  sub_100019B40(v79, v8 + v7[7], &qword_1006E5D10);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_10000CC8C(v9, v77, &qword_1006E6428);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    sub_1000DC030(v13, v81);
    v24 = v82;

    sub_1000DCFE4(v22, v20, v21, v19, SBYTE1(v19));
    sub_10001036C(v23, &qword_1006E6428);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_1000DC030(v13, v81);
    v24 = v82;

    sub_1000DCFE4(v22, v20, v21, v19, SBYTE1(v19));

    sub_1001129E4(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_10000CC8C(v27, v28, &qword_1006E6428);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_10001036C(*(v0 + 168), &qword_1006E6428);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_1001129E4(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_10000CC8C(v34, v35, &qword_1006E6428);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_10001036C(*(v0 + 160), &qword_1006E6428);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_10000CC8C(v41 + v17[6], *(v0 + 216), &qword_1006E5D10);
    sub_1001129E4(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_100019B40(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1006E5D10);
  sub_10000CC8C(v42, v43, &qword_1006E6428);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_10001036C(*(v0 + 152), &qword_1006E6428);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_1001129E4(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_10000CC8C(v47, v48, &qword_1006E6428);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_10001036C(v50, &qword_1006E6428);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_1001129E4(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_10000CC8C(v52, v53, &qword_1006E6428);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6428);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_1001129E4(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_100019B40(v59, v60, &qword_1006E6428);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_10001036C(v63, &qword_1006E6428);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_1001129E4(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_10010911C(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_1006E4D30 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  sub_100109184(v70, v69, v68, v75, SBYTE1(v75));
  sub_1001129E4(v74, type metadata accessor for MetricsEvent.Click);
  sub_10001036C(v73, &qword_1006E5D10);

  return _swift_task_switch(sub_100113D24, 0, 0);
}

uint64_t sub_100124E18()
{
  v1 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_10056C8A8();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1001250E0()
{
  v2 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1005722D8() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000CB98;

  return sub_100124080(v0 + v3, v0 + v6);
}

int *static Actions.EditPlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100125814(a1, a2);
  result = sub_100009DCC(&qword_1006E6FE0);
  *(a2 + result[9]) = 12;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1001252C4;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100587820;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100587828;
  v6[1] = 0;
  return result;
}

unint64_t sub_1001252C4()
{
  v0 = sub_1005720A8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&unk_1006E8E70);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1005720B8();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_10001036C(v6, &unk_1006E8E70);
  }

  else
  {
    sub_100125DE4(&qword_1006E70A0);
    sub_100573D98();
    sub_100125DE4(&qword_1006E70A8);
    v7 = sub_1005727E8();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if ((v7 & 1) == 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD000000000000013;
}

uint64_t sub_100125504()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100125600;

  return v5();
}

uint64_t sub_100125600()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100125718()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114460;

  return v5();
}

uint64_t sub_100125814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.EditPlaylist.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.EditPlaylist.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.EditPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_100108BF8;
}

uint64_t sub_100125AE4()
{

  return swift_deallocObject();
}

uint64_t (*sub_100125B1C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_100109428;
}

uint64_t sub_100125BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005722D8();
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

uint64_t sub_100125CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005722D8();
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

unint64_t sub_100125D60()
{
  result = sub_1005722D8();
  if (v1 <= 0x3F)
  {
    result = sub_1000D81FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100125DE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005720A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t (**a6)()@<X8>)
{
  v27 = a5;
  v28 = a3;
  v29 = a4;
  v25[0] = a1;
  v9 = sub_1005720F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v26 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  (*(v10 + 16))(v25 - v13, a1, v9);
  v15 = *(v10 + 80);
  v25[1] = v15 | 7;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(v10 + 32);
  v17(v16 + ((v15 + 24) & ~v15), v14, v9);
  v17(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25[0], v9);
  v18 = *(v29 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v15 + v19) & ~v15;
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v27;
  *(v21 + 16) = v29;
  *(v21 + 24) = v23;
  (*(v18 + 32))(v21 + v19, v22);
  result = (v17)(v21 + v20, v26, v9);
  *a6 = sub_100129D44;
  a6[1] = v16;
  a6[2] = &unk_100587880;
  a6[3] = v21;
  a6[4] = &unk_100587888;
  a6[5] = 0;
  return result;
}

uint64_t Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v12 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_10012A170(a1, v16 + v13);
  *(v16 + v14) = a2;
  v17 = (v16 + v15);
  *v17 = a5;
  v17[1] = a6;
  result = sub_1000FF9D0(a4, v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *a7 = sub_10012A154;
  a7[1] = a3;
  a7[2] = &unk_100586CD8;
  a7[3] = v16;
  a7[4] = &unk_1005878A8;
  a7[5] = 0;
  return result;
}

uint64_t Actions.RenameFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = sub_100572118();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, a1, v8);
  result = sub_1000FF9D0(a3, v12 + v11);
  *a4 = sub_10012D67C;
  a4[1] = a2;
  a4[2] = &unk_100586CF8;
  a4[3] = v12;
  a4[4] = &unk_1005878C8;
  a4[5] = 0;
  return result;
}

uint64_t Actions.DeleteFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = sub_100572118();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v9 + 32))(v12 + v10, a1, v8);
  sub_1000FF9D0(a3, v12 + v11);
  *a4 = sub_1000FFEEC;
  a4[1] = a2;
  a4[2] = &unk_100586D18;
  a4[3] = v12;
  a4[4] = &unk_1005878E8;
  a4[5] = 0;
}

uint64_t sub_100126574@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = a1[2];
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.CreateFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001005AD4C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001005AD4C0;
  return sub_100108BF8;
}

uint64_t (*sub_1001266D0())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001005AD4C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001005AD4C0;
  return sub_100109428;
}

uint64_t sub_100126774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  sub_100009DCC(&qword_1006E6420);
  v5[41] = swift_task_alloc();
  v6 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_100126884, 0, 0);
}

uint64_t sub_100126884()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  sub_10012C210((v0 + 26));
  sub_10012CCF0(v8, v1);
  sub_1000FEAFC(v5, (v0 + 2));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[45] = v12;
  sub_10012A170(v1, v12 + v9);
  *(v12 + v10) = v7;
  v13 = (v12 + v11);
  *v13 = v6;
  v13[1] = v4;
  sub_1000FF9D0((v0 + 2), v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v0[46] = sub_100572F08();

  sub_100102130(v6);
  v0[47] = sub_100572EF8();
  v15 = sub_100572E78();

  return _swift_task_switch(sub_1001269EC, v15, v14);
}

uint64_t sub_1001269EC()
{
  v1 = *(v0 + 360);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 384) = sub_10018004C(v0 + 208, sub_10012CF04, v1);

  return _swift_task_switch(sub_100126A90, 0, 0);
}

uint64_t sub_100126A90()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = sub_100572F48();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1000FEAFC(v3, (v0 + 14));
  v5 = v1;
  v6 = sub_100572EF8();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  sub_1000FF9D0((v0 + 14), (v7 + 4));
  v7[16] = v5;
  sub_1001B3FAC(0, 0, v2, &unk_100587A60, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100126BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a1;
  v29 = a6;
  v12 = sub_100009DCC(&qword_1006E6BF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v28 - v15;
  v17 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_100572F48();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_10012CCF0(a3, v16);
  sub_1000FEAFC(a7, v30);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v28;
  v24[5] = a2;
  sub_10012A170(v16, v24 + v21);
  *(v24 + v22) = a4;
  v25 = (v24 + v23);
  v26 = v29;
  *v25 = a5;
  v25[1] = v26;
  sub_1000FF9D0(v30, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_100102130(a5);
  sub_1001B3FAC(0, 0, v19, &unk_100587A70, v24);
}

uint64_t sub_100126E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v14;
  v8[22] = v15;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  sub_100009DCC(&qword_1006E6420);
  v8[23] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v8[24] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E71D0);
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = sub_100572118();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = sub_100009DCC(&qword_1006E71D8);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return _swift_task_switch(sub_100127024, 0, 0);
}

uint64_t sub_100127024()
{
  v0[14] = v0[19];
  sub_100009DCC(&qword_1006E71E8);
  sub_10012D440();
  sub_10056D798();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_100127134;
  v2 = v0[27];

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_100127134()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100127658;
  }

  else
  {
    v2 = sub_100127248;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100127248()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  sub_10056D7F8();
  (*(v2 + 8))(v1, v3);
  v5 = v0[29];
  v6 = v0[28];
  if (v4)
  {
    v7 = v0[24];
    v8 = v0[20];
    (*(v5 + 16))(v7, v0[30], v0[28]);
    (*(v5 + 56))(v7, 0, 1, v6);
    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[36] = v9;
    *v9 = v0;
    v9[1] = sub_100127460;
    v10 = v0[24];

    return v13(v10);
  }

  else
  {
    (*(v5 + 8))(v0[30], v0[28]);
    (*(v0[32] + 8))(v0[33], v0[31]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100127460()
{
  v1 = *(*v0 + 192);

  sub_10012D5D0(v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);

  return _swift_task_switch(sub_10012758C, 0, 0);
}

uint64_t sub_10012758C()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100127658()
{
  v18 = v0;
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[35];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[15] = v4;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create folder with error=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v10 = v0[22];
  v11 = v0[23];
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000FEAFC(v10, (v0 + 2));
  sub_100572F08();
  v13 = sub_100572EF8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_1000FF9D0((v0 + 2), v14 + 32);
  sub_1001B3FAC(0, 0, v11, &unk_100587A88, v14);

  (*(v0[32] + 8))(v0[33], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100127928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  sub_100572F08();
  v4[11] = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_100127A1C, v6, v5);
}

uint64_t sub_100127A1C()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x80000001005AD610;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_10012D5D0(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002EECF0((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      sub_10000C8CC(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      sub_10012D5D0(v6, type metadata accessor for Notice);
      sub_100010474((v0 + 2));
    }

    else
    {
      sub_10012D5D0(v0[10], type metadata accessor for Notice);
      sub_10012C1A8((v0 + 2));
    }
  }

  else
  {
    sub_10012D5D0(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100127BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  sub_100572F08();
  v5[16] = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_100127C54, v7, v6);
}

uint64_t sub_100127C54()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = qword_1006E4FE8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_10056DF88();
    sub_10000C49C(v4, qword_1006ECA00);
    v5 = sub_10056DF68();
    v6 = sub_100573448();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Deferring presentation…", v7, 2u);
    }

    v8 = v0[14];
    v9 = v0[15];

    v10 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = sub_1002EC584;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1002ED584;
    v0[5] = &unk_10068A6D8;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    sub_1000FEAFC(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_1000FF9D0((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, sub_100112BB0, v13);
    sub_1000F3E14(v2);
  }

  else
  {
    sub_1002EAA64(v0[15], 1, 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100127EEC(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000116F0;

  return v5();
}

uint64_t (*Actions.RenameFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_100109428;
}

uint64_t (*sub_1001280D8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_100109428;
}

unint64_t sub_100128170()
{
  sub_100571898();
  sub_100571888();
  v0 = sub_1005716D8();

  if (v0)
  {
    return 0;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1001281E8(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  sub_100009DCC(&qword_1006E6420);
  v2[26] = swift_task_alloc();
  v3 = sub_100572118();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v2[29] = *(v4 + 64);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001282E8, 0, 0);
}

uint64_t sub_1001282E8()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = sub_100572108();
  sub_10012C5A4(v5, v6, v0 + 14);

  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[31] = v8;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[32] = sub_100572F08();
  v0[33] = sub_100572EF8();
  v10 = sub_100572E78();

  return _swift_task_switch(sub_100128414, v10, v9);
}

uint64_t sub_100128414()
{
  v1 = *(v0 + 248);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 272) = sub_10018004C(v0 + 112, sub_10012C948, v1);

  return _swift_task_switch(sub_1001284B8, 0, 0);
}

uint64_t sub_1001284B8()
{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = sub_100572F48();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1000FEAFC(v3, (v0 + 2));
  v5 = v1;
  v6 = sub_100572EF8();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  sub_1000FF9D0((v0 + 2), (v7 + 4));
  v7[16] = v5;
  sub_1001B3FAC(0, 0, v2, &unk_100587A30, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100572118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_1001B3FAC(0, 0, v11, &unk_100587A40, v14);
}

uint64_t sub_100128808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_100572118();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E71D0);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E71D8);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10012899C, 0, 0);
}

uint64_t sub_10012899C()
{
  sub_10056D7C8();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100128A54;
  v2 = *(v0 + 88);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_100128A54()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100128C10;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_100128B80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100128B80()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100128C10()
{
  v29 = v0;
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_10056DF88();
  sub_10000C49C(v5, static Logger.actions);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v8)
  {
    v25 = v0[16];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    sub_10012CC98();
    v26 = v11;
    v27 = v9;
    v16 = sub_100574408();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000C9784(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v25;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v20 = sub_100572978();
    v22 = sub_1000C9784(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to rename folder=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v27, v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_100128EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  sub_100572F08();
  v5[16] = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_100128F8C, v7, v6);
}

uint64_t sub_100128F8C()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = qword_1006E4FE8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_10056DF88();
    sub_10000C49C(v4, qword_1006ECA00);
    v5 = sub_10056DF68();
    v6 = sub_100573448();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Deferring presentation…", v7, 2u);
    }

    v8 = v0[14];
    v9 = v0[15];

    v10 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = sub_1002EC584;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1002ED584;
    v0[5] = &unk_10068A610;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    sub_1000FEAFC(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_1000FF9D0((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, sub_100112BB0, v13);
    sub_1000F3E14(v2);
  }

  else
  {
    sub_1002EAA64(v0[15], 1, 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10012928C()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.MoveToFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return sub_100109428;
}

uint64_t sub_100129528()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_100129708())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return sub_100109428;
}

unint64_t sub_1001297A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005717A8();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100009DCC(&qword_1006E6D18);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v23 - v6;
  v7 = sub_1005722D8();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005720F8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100571898();
  sub_100571888();
  v14 = sub_1005716D8();

  if ((v14 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for Playlist.Folder.Item.folder(_:) || v15 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v11 + 96))(v13, v10);
    v16 = v24;
    v17 = v13;
    v18 = v25;
    (*(v24 + 32))(v9, v17, v25);
    sub_100571888();
    sub_10056D4C8();
    v19 = v27;
    sub_100571658();

    (*(v23 + 8))(v5, v3);
    v20 = v26;
    v21 = v28;
    if ((*(v26 + 88))(v19, v28) != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:) || ((*(v20 + 96))(v19, v21), v21 = sub_100571798(), v20 = *(v21 - 8), (*(v20 + 88))(v19, v21) != enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:)))
    {
      (*(v20 + 8))(v19, v21);
      (*(v16 + 8))(v9, v18);
      return 0xD00000000000001ALL;
    }

    (*(v16 + 8))(v9, v18);
    (*(v20 + 8))(v19, v21);
  }

  return 0;
}

uint64_t sub_100129C80()
{
  v1 = sub_1005720F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_100129D44()
{
  v1 = *(sub_1005720F8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1001297A0(v2, v3);
}

uint64_t sub_100129DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000C5F8;

  return v10(a2, a3, a4);
}

uint64_t sub_100129ED8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1005720F8();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10012A018()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = *(sub_1005720F8() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000116F0;

  return sub_100129DA8(v0 + v4, v0 + v7, v2, v3);
}

uint64_t sub_10012A170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012A1E0()
{
  v2 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000CB98;

  return sub_100126774(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_10012A31C()
{
  v1 = sub_100572118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012A43C@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 40);
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = v6;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.DeleteFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100109428;
}

uint64_t (*sub_10012A560())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_100109428;
}

unint64_t sub_10012A5F8()
{
  sub_100571898();
  sub_100571888();
  v0 = sub_1005716D8();

  if ((v0 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  if (sub_1005716A8())
  {
    return 0xD000000000000019;
  }

  return 0;
}

uint64_t sub_10012A694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[49] = a2;
  v3[50] = a3;
  v3[48] = a1;
  sub_100572868();
  v3[51] = swift_task_alloc();
  v4 = sub_10056CAE8();
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v5 = sub_100572118();
  v3[55] = v5;
  v6 = *(v5 - 8);
  v3[56] = v6;
  v3[57] = *(v6 + 64);
  v3[58] = swift_task_alloc();
  sub_10056CC38();
  v3[59] = swift_task_alloc();
  v7 = sub_100572888();
  v3[60] = v7;
  v3[61] = *(v7 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return _swift_task_switch(sub_10012A87C, 0, 0);
}

uint64_t sub_10012A87C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  sub_100572818();
  v46 = *(v4 + 16);
  v46(v1, v2, v3);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v31 = *(v0 + 496);
  v7 = *(v0 + 448);
  v42 = *(v0 + 456);
  v8 = *(v0 + 432);
  v29 = *(v0 + 440);
  v30 = *(v0 + 464);
  v32 = *(v0 + 424);
  v33 = *(v0 + 416);
  v36 = *(v0 + 400);
  v28 = *(v0 + 392);
  v38 = *(v0 + 384);
  v9 = qword_1006FC3B8;
  sub_10056CBC8();
  v40 = v9;
  v10 = sub_100572948();
  v44 = v11;
  v45 = v10;
  *(v0 + 512) = v11;
  v35 = *(v6 + 8);
  v35(v47, v5);
  (*(v7 + 16))(v30, v28, v29);
  sub_1000FEAFC(v36, v0 + 16);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v42 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 520) = v14;
  *(v14 + 16) = v38;
  v15 = v14 + v12;
  v16 = v14;
  v43 = v14;
  (*(v7 + 32))(v15, v30, v29);
  sub_1000FF9D0(v0 + 16, v16 + v13);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v39 = sub_10056CAB8();
  v37 = v17;
  *(v0 + 528) = v17;
  (*(v32 + 8))(v8, v33);
  sub_100572858();
  v49._object = 0x80000001005AD520;
  v49._countAndFlagsBits = 0x100000000000002ELL;
  sub_100572848(v49);
  v50._countAndFlagsBits = sub_100572108();
  sub_100572838(v50);

  v51._countAndFlagsBits = 1067286754;
  v51._object = 0xA400000000000000;
  sub_100572848(v51);
  sub_100572878();
  v46(v31, v47, v5);
  sub_10056CBC8();
  v18 = v40;
  v41 = sub_100572948();
  v34 = v19;
  v35(v47, v5);
  sub_100572818();
  v46(v31, v47, v5);
  sub_10056CBC8();
  v20 = sub_100572948();
  v22 = v21;
  v35(v47, v5);
  sub_100009DCC(&qword_1006E6120);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10057B500;
  *(v23 + 32) = v39;
  *(v23 + 40) = v37;
  *(v23 + 48) = v45;
  *(v23 + 56) = v44;
  *(v23 + 64) = 1;
  *(v23 + 72) = &unk_100587A10;
  *(v23 + 80) = v43;

  sub_1001CB6AC(v0 + 280);
  v24 = *(v0 + 296);
  *(v23 + 88) = *(v0 + 280);
  *(v23 + 104) = v24;
  *(v23 + 120) = *(v0 + 312);
  *(v23 + 136) = *(v0 + 328);
  *(v0 + 208) = v41;
  *(v0 + 216) = v34;
  *(v0 + 224) = v20;
  *(v0 + 232) = v22;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = v23;
  *(v0 + 272) = 0;
  sub_100572F08();
  *(v0 + 536) = sub_100572EF8();
  v26 = sub_100572E78();

  return _swift_task_switch(sub_10012AD78, v26, v25);
}

uint64_t sub_10012AD78()
{
  v1 = *(v0 + 400);

  v2 = sub_10017F500(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1006E4FE8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006ECA00);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 400);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 368) = sub_1002EC584;
    *(v0 + 376) = 0;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1002ED584;
    *(v0 + 360) = &unk_10068A548;
    v13 = _Block_copy((v0 + 336));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_100112A60, v15);
    sub_1000F3E14(v5);
  }

  else
  {
    sub_1002EAA64(v2, *(v0 + 240), 1, 0, 0);
  }

  return _swift_task_switch(sub_10012B040, 0, 0);
}

uint64_t sub_10012B040()
{
  sub_100109250(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  sub_100009DCC(&qword_1006E6420);
  v5[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = sub_10012B204;

  return MusicLibrary.remove(_:)(a4);
}

uint64_t sub_10012B204()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10012B340, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10012B340()
{
  v18 = v0;
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete folder with error=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000FEAFC(v10, (v0 + 2));
  sub_100572F08();
  v13 = sub_100572EF8();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_1000FF9D0((v0 + 2), v14 + 32);
  sub_1001B3FAC(0, 0, v11, &unk_100587A20, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10012B5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  sub_100572F08();
  v4[11] = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_10012B6C8, v6, v5);
}

uint64_t sub_10012B6C8()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x80000001005AD5A0;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_10012D5D0(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002EECF0((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      sub_10000C8CC(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      sub_10012D5D0(v6, type metadata accessor for Notice);
      sub_100010474((v0 + 2));
    }

    else
    {
      sub_10012D5D0(v0[10], type metadata accessor for Notice);
      sub_10012C1A8((v0 + 2));
    }
  }

  else
  {
    sub_10012D5D0(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t _s9MusicCore7ActionsO12CreateFolderO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO12DeleteFolderO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_10012BC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100572118();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012BCE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100572118();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for Actions.CreateFolder.Context.FlowResult()
{
  result = qword_1006E71A0;
  if (!qword_1006E71A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012BDB0()
{
  v0 = sub_100572118();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_10012BE68()
{

  return swift_deallocObject();
}

uint64_t sub_10012BEA4()
{
  v1 = sub_100572118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_1000FF9AC(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012BFBC(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_100572118() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_10012B128(a1, a2, v9, v2 + v7, v2 + v8);
}

uint64_t sub_10012C0D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012C0F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_10012B5D4(a1, v4, v5, v1 + 32);
}

uint64_t sub_10012C1A8(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E6C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10012C210@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10056CC38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  sub_100572818();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v11 = qword_1006FC3B8;
  sub_10056CBC8();
  v12 = v11;
  v13 = sub_100572948();
  v32 = v14;
  v33 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  sub_100572818();
  v10(v7, v9, v3);
  sub_10056CBC8();
  v16 = sub_100572948();
  v30 = v17;
  v31 = v16;
  v15(v9, v3);
  sub_100572818();
  v10(v7, v9, v3);
  sub_10056CBC8();
  v18 = sub_100572948();
  v28 = v19;
  v29 = v18;
  v15(v9, v3);
  sub_100572818();
  v10(v7, v9, v3);
  sub_10056CBC8();
  v20 = sub_100572948();
  v22 = v21;
  v15(v9, v3);
  result = 0.0;
  *a1 = xmmword_100582400;
  v24 = v32;
  *(a1 + 16) = v33;
  *(a1 + 24) = v24;
  v25 = v30;
  *(a1 + 32) = v31;
  *(a1 + 40) = v25;
  v26 = v28;
  *(a1 + 48) = v29;
  *(a1 + 56) = v26;
  *(a1 + 64) = v20;
  *(a1 + 72) = v22;
  return result;
}

uint64_t sub_10012C5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v4 = sub_10056CC38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  sub_100572818();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v13 = qword_1006FC3B8;
  sub_10056CBC8();
  v14 = v13;
  v15 = sub_100572948();
  v31 = v16;
  v32 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_100572818();
  v12(v9, v11, v5);
  sub_10056CBC8();
  v18 = sub_100572948();
  v29 = v19;
  v30 = v18;
  v17(v11, v5);
  sub_100572818();
  v12(v9, v11, v5);
  sub_10056CBC8();
  v20 = sub_100572948();
  v22 = v21;
  v17(v11, v5);

  v24 = v32;
  *a3 = v33;
  a3[1] = result;
  v26 = v30;
  v25 = v31;
  a3[2] = v24;
  a3[3] = v25;
  a3[4] = 0;
  a3[5] = 0;
  v27 = v29;
  a3[6] = v26;
  a3[7] = v27;
  a3[8] = v20;
  a3[9] = v22;
  return result;
}

uint64_t sub_10012C8C0()
{
  v1 = sub_100572118();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10012C948(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100572118() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10012860C(a1, a2, v6);
}

uint64_t sub_10012C9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_100128EF4(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10012CA8C()
{
  v1 = sub_100572118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10012CB68(uint64_t a1)
{
  v4 = *(sub_100572118() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100128808(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_10012CC98()
{
  result = qword_1006E71E0;
  if (!qword_1006E71E0)
  {
    sub_100572118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E71E0);
  }

  return result;
}

uint64_t sub_10012CCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012CD64()
{
  v1 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_100572118();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_1000FF9AC(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012CF04(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);

  return sub_100126BE4(a1, a2, v2 + v6, v9, v10, v11, v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_10012CFD8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012D05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_100127BBC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_10012D11C()
{
  v1 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = sub_100572118();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_1000FF9AC(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012D2CC(uint64_t a1)
{
  v3 = *(sub_100009DCC(&qword_1006E6BF0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v13 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000CB98;

  return sub_100126E1C(a1, v13, v6, v7, v8, v1 + v4, v9, v10);
}

unint64_t sub_10012D440()
{
  result = qword_1006E71F0;
  if (!qword_1006E71F0)
  {
    sub_100010324(&qword_1006E71E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E71F0);
  }

  return result;
}

uint64_t sub_10012D4A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10012D520(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_100127928(a1, v4, v5, v1 + 32);
}

uint64_t sub_10012D5D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a3;
  v56 = a2;
  v57 = a1;
  v55 = a9;
  v59 = *(a6 - 8);
  v12 = v59;
  v13 = __chkstk_darwin(a1);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v47 = &v44 - v16;
  v18 = v17;
  v50 = v17;
  __chkstk_darwin(v15);
  v20 = &v44 - v19;
  v46 = *(v12 + 16);
  v46(&v44 - v19);
  v21 = *(v12 + 80);
  v22 = (v21 + 40) & ~v21;
  v58 = v21 | 7;
  v44 = v18 + 7;
  v23 = (v18 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v25 = a8;
  v48 = a8;
  v24[4] = a8;
  v45 = *(v59 + 32);
  v59 += 32;
  v26 = v24;
  v52 = v24;
  v45(v24 + v22, v20, a6);
  v28 = v56;
  v27 = v57;
  *(v26 + v23) = v56;
  v29 = v47;
  (v46)(v47, v27, a6);
  v30 = (v21 + 41) & ~v21;
  v31 = (v44 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  *(v32 + 32) = v25;
  *(v32 + 40) = v51;
  v33 = v32 + v30;
  v34 = v45;
  v45(v33, v29, a6);
  *(v32 + v31) = v28;
  sub_1000FF9D0(v53, v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v49;
  v34(v49, v57, a6);
  v36 = v34;
  v37 = *(sub_100009DCC(&qword_1006E6B80) - 8);
  v38 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v39 = (*(v37 + 64) + v21 + v38) & ~v21;
  v40 = swift_allocObject();
  *(v40 + 2) = a6;
  *(v40 + 3) = a7;
  *(v40 + 4) = v48;
  sub_100019B40(v54, v40 + v38, &qword_1006E6B80);
  v36(v40 + v39, v35, a6);

  v42 = v55;
  v43 = v52;
  *v55 = sub_10012E300;
  v42[1] = v43;
  v42[2] = &unk_100587A98;
  v42[3] = v32;
  v42[4] = &unk_100587AA8;
  v42[5] = v40;
  return result;
}

uint64_t static Actions.RemoveDownload.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 48;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587AB0;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587AB8;
  *(a2 + 104) = 0;
}

uint64_t sub_10012DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a3;
  v23[2] = a5;
  v23[3] = a2;
  v23[0] = sub_1005716B8();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005716C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E6F78);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  sub_10056D4B8();
  sub_100571658();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v16, v18, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v20 = v23[0];
    (*(v5 + 32))(v7, v16, v23[0]);
    v21 = sub_1001318CC(v7);
    (*(v5 + 8))(v7, v20);
LABEL_5:
    (*(v13 + 8))(v18, v12);
    return v21;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v21 = 0;
    goto LABEL_5;
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t sub_10012DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000CB98;

  return MusicLibrary.removeDownload<A>(_:)(a1, a3, a4);
}

uint64_t sub_10012DF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 48;
  *(a2 + 56) = sub_1001024FC;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100587AB0;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100587AB8;
  *(a2 + 104) = 0;
}

uint64_t Actions.RemoveDownload.Context.menuItemTitle.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}