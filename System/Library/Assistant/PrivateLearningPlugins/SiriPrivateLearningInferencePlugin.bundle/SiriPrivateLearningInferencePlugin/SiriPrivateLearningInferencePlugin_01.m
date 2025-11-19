uint64_t sub_17868(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = *(v4 + 144);

    v8 = sub_17DE8;
  }

  else
  {
    *(v4 + 168) = a1;
    v8 = sub_17998;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_17998()
{
  v14 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v13 = v0[18];
  sub_27D14(v1);

  sub_1E724(&v13);
  if (v2)
  {
  }

  else
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[8];

    v9 = v13;
    v0[22] = v13;
    (*(v7 + 16))(v5, v4, v6);
    sub_2F2A8();
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_17AF4;
    v11 = v0[8];
    v12 = v0[4];

    return sub_192B4(v9, v11);
  }
}

uint64_t sub_17AF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *(*v2 + 176);
  v7 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v8 = sub_17ED4;
  }

  else
  {
    *(v4 + 200) = a1;
    v8 = sub_17C40;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_17C40()
{
  v1 = v0[25];
  v2 = v0[16];
  v21 = v0[15];
  v22 = v0[17];
  v3 = v0[11];
  v19 = v0[10];
  v20 = v0[13];
  v4 = v0[7];
  v18 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  sub_2ECE8();
  sub_30208();

  sub_2EF58();
  sub_2F148();
  v8 = sub_2F1E8();

  v9 = sub_1AB58(v8);

  (*(v4 + 8))(v18, v5);
  (*(v3 + 8))(v20, v19);
  (*(v2 + 8))(v22, v21);
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  v15 = v0[8];
  v14 = v0[9];

  v16 = v0[1];

  return v16(v9);
}

uint64_t sub_17DE8()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_17ED4()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_17FD8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B98(&qword_3D620, &unk_30F70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v10 = sub_2EBD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v61 = &v58 - v16;
  v17 = __chkstk_darwin(v15);
  v59 = &v58 - v18;
  v19 = __chkstk_darwin(v17);
  v58 = &v58 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v58 - v25;
  v27 = __chkstk_darwin(v24);
  v64 = &v58 - v28;
  __chkstk_darwin(v27);
  v30 = &v58 - v29;
  v63 = a1;
  sub_2EBA8();
  sub_5AD0(a2, v9, &qword_3D620, &unk_30F70);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_5B38(v9, &qword_3D620, &unk_30F70);
    (*(v11 + 16))(v26, v30, v10);
    v31 = *(v11 + 32);
  }

  else
  {
    v60 = a3;
    v31 = *(v11 + 32);
    v31(v23, v9, v10);
    sub_23F00(&qword_3D660, &type metadata accessor for Date);
    if (sub_2FF68())
    {
      (*(v11 + 8))(v23, v10);
      (*(v11 + 16))(v26, v30, v10);
    }

    else
    {
      v31(v26, v23, v10);
    }

    a3 = v60;
  }

  v32 = v64;
  v31(v64, v26, v10);
  sub_23F00(&qword_3D660, &type metadata accessor for Date);
  v33 = v63;
  if (sub_2FF68())
  {
    if (qword_3CC30 != -1)
    {
      swift_once();
    }

    v34 = sub_2FF48();
    sub_4FD8(v34, qword_3D460);
    v35 = *(v11 + 16);
    v36 = v61;
    v35(v61, v33, v10);
    v37 = v62;
    v35(v62, v32, v10);
    v38 = sub_2FF28();
    v39 = sub_300E8();
    if (os_log_type_enabled(v38, v39))
    {
      LODWORD(v59) = v39;
      v63 = v30;
      v60 = a3;
      v40 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v40 = 136315650;
      if (qword_3CC28 != -1)
      {
        swift_once();
      }

      *(v40 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v65);
      *(v40 + 12) = 2080;
      sub_23F00(&qword_3D6B0, &type metadata accessor for Date);
      v41 = v61;
      v42 = sub_30298();
      v44 = v43;
      v45 = *(v11 + 8);
      v45(v41, v10);
      v46 = sub_29C64(v42, v44, &v65);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2080;
      v47 = v62;
      v48 = sub_30298();
      v50 = v49;
      v45(v47, v10);
      v51 = sub_29C64(v48, v50, &v65);

      *(v40 + 24) = v51;
      _os_log_impl(&dword_0, v38, v59, "%s Conversation timestamps out of order (conversationTimestamp: %s, nextTimestamp: %s)", v40, 0x20u);
      swift_arrayDestroy();

      v45(v64, v10);
      v45(v63, v10);
      v52 = 1;
      a3 = v60;
    }

    else
    {

      v55 = *(v11 + 8);
      v55(v37, v10);
      v55(v36, v10);
      v55(v32, v10);
      v55(v30, v10);
      v52 = 1;
    }
  }

  else
  {
    v53 = *(v11 + 16);
    v53(v58, v33, v10);
    v53(v59, v32, v10);
    sub_2EB68();
    v54 = *(v11 + 8);
    v54(v32, v10);
    v54(v30, v10);
    v52 = 0;
  }

  v56 = sub_2EB88();
  return (*(*(v56 - 8) + 56))(a3, v52, 1, v56);
}

uint64_t sub_18790(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v2 = sub_1B98(&qword_3D620, &unk_30F70);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  v9 = sub_2EBD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  sub_2F108();
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_2EB98();
    if (v17(v8, 1, v9) != 1)
    {
      sub_5B38(v8, &qword_3D620, &unk_30F70);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
  }

  sub_2F108();
  if (v17(v6, 1, v9) == 1)
  {
    sub_2EB98();
    if (v17(v6, 1, v9) != 1)
    {
      sub_5B38(v6, &qword_3D620, &unk_30F70);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v6, v9);
  }

  v18 = sub_2EBB8();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v19(v16, v9);
  return v18 & 1;
}

uint64_t sub_18A50(uint64_t (*a1)(char *, uint64_t, uint64_t))
{
  v84 = a1;
  v2 = sub_1B98(&qword_3D630, &qword_30F80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v80 = &v73 - v4;
  v90 = sub_2F148();
  v79 = *(v90 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v90);
  v87 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2ED08();
  v75 = *(v7 - 8);
  v8 = *(v75 + 64);
  __chkstk_darwin(v7);
  v86 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B98(&qword_3D688, &qword_30FB8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v73 - v12;
  v82 = sub_2EBD8();
  v78 = *(v82 - 1);
  v14 = *(v78 + 64);
  v15 = __chkstk_darwin(v82);
  v76 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v73 - v17;
  v83 = v1;
  result = sub_1BB54();
  v20 = *(result + 16);
  v89 = result;
  v77 = v18;
  if (!v20)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_19:
    v88 = v13;
    v81 = v7;
    v32 = 0;
    v93[7] = &_swiftEmptySetSingleton;
    v33 = *(v22 + 2);
    v85 = &_swiftEmptyArrayStorage;
    while (v33 != v32)
    {
      if (v32 >= v33)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_45;
      }

      v35 = *&v22[8 * v32 + 32];
      v93[0] = v35;
      sub_1B98(&qword_3D690, &qword_30FC0);
      v36 = sub_2FF98();
      v38 = sub_1C6C8(v93, v36, v37);

      ++v32;
      if (v38)
      {
        v39 = v85;
        result = swift_isUniquelyReferenced_nonNull_native();
        v92 = v39;
        if ((result & 1) == 0)
        {
          result = sub_2BC24(0, v39[2] + 1, 1);
          v39 = v92;
        }

        v41 = v39[2];
        v40 = v39[3];
        if (v41 >= v40 >> 1)
        {
          result = sub_2BC24((v40 > 1), v41 + 1, 1);
          v39 = v92;
        }

        v39[2] = v41 + 1;
        v85 = v39;
        v39[v41 + 4] = v35;
        v32 = v34;
      }
    }

    v42 = objc_autoreleasePoolPush();
    v43 = *(v83 + 136);
    sub_5550((v83 + 104), *(v83 + 128));
    v44 = v77;
    sub_2EB78();
    v45 = v76;
    sub_2EB58();
    v46 = v91;
    v47 = sub_2EDA8();
    v48 = v81;
    if (v46)
    {

      v49 = *(v78 + 8);
      v50 = v82;
      v49(v45, v82);
      v49(v44, v50);
      objc_autoreleasePoolPop(v42);
    }

    else
    {
      v91 = 0;
      v74 = v42;
      v51 = v47;

      v52 = *(v78 + 8);
      v53 = v82;
      v52(v45, v82);
      v52(v44, v53);
      v78 = v51;
      sub_301F8();
      v54 = v88;
      sub_30278();
      v55 = v75;
      v56 = v54;
      v84 = *(v75 + 48);
      v85 = (v75 + 48);
      if (v84(v54, 1, v48) == 1)
      {
        v44 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v58 = *(v55 + 32);
        v57 = v55 + 32;
        v59 = (v57 - 24);
        v60 = v80;
        v61 = (v79 + 48);
        v82 = (v79 + 32);
        v83 = v58;
        v44 = &_swiftEmptyArrayStorage;
        v62 = v56;
        do
        {
          v65 = v86;
          v66 = v57;
          v67 = (v83)(v86, v62, v48);
          __chkstk_darwin(v67);
          *(&v73 - 2) = v65;
          v68 = v91;
          sub_E818(sub_211A0, (&v73 - 4), v89);
          v91 = v68;
          sub_2F128();
          (*v59)(v65, v48);
          v69 = v90;
          if ((*v61)(v60, 1, v90) == 1)
          {
            sub_5B38(v60, &qword_3D630, &qword_30F80);
          }

          else
          {
            v70 = *v82;
            (*v82)(v87, v60, v69);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_296FC(0, *(v44 + 2) + 1, 1, v44);
            }

            v72 = *(v44 + 2);
            v71 = *(v44 + 3);
            if (v72 >= v71 >> 1)
            {
              v44 = sub_296FC(v71 > 1, v72 + 1, 1, v44);
            }

            *(v44 + 2) = v72 + 1;
            v70(&v44[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72], v87, v90);
            v60 = v80;
            v48 = v81;
          }

          v63 = v88;
          sub_30278();
          v64 = v84(v63, 1, v48);
          v57 = v66;
          v62 = v63;
        }

        while (v64 != 1);
      }

      objc_autoreleasePoolPop(v74);
    }

    return v44;
  }

  v21 = result + 32;
  v22 = &_swiftEmptyArrayStorage;
  while (1)
  {
    sub_54EC(v21, v93);
    sub_5550(v93, v93[3]);
    v23 = sub_2EED8();
    result = sub_5448(v93);
    v24 = *(v23 + 16);
    v25 = *(v22 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= *(v22 + 3) >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_295C8(result, v27, 1, v22);
      v22 = result;
      if (*(v23 + 16))
      {
LABEL_14:
        v28 = *(v22 + 2);
        if ((*(v22 + 3) >> 1) - v28 < v24)
        {
          goto LABEL_48;
        }

        memcpy(&v22[8 * v28 + 32], (v23 + 32), 8 * v24);

        if (v24)
        {
          v29 = *(v22 + 2);
          v30 = __OFADD__(v29, v24);
          v31 = v29 + v24;
          if (v30)
          {
            goto LABEL_49;
          }

          *(v22 + 2) = v31;
        }

        goto LABEL_4;
      }
    }

    if (v24)
    {
      goto LABEL_47;
    }

LABEL_4:
    v21 += 40;
    if (!--v20)
    {
      goto LABEL_19;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_192B4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_192D8, 0, 0);
}

uint64_t sub_192D8()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[9] + 224);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;

  v5 = sub_E99C(sub_2113C, v4, v3);
  v0[10] = v5;

  v9 = v5[2];
  v0[11] = v9;
  v10 = v0[7];
  if (v9)
  {
    v0[12] = 0;
    v0[13] = v10;
    v11 = v0[10];
    if (*(v11 + 16))
    {
      sub_54EC(v11 + 32, (v0 + 2));
      v12 = v0[5];
      v13 = v0[6];
      sub_5550(v0 + 2, v12);
      v14 = async function pointer to dispatch thunk of EventStreamProcessing.process(_:)[1];
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = sub_1946C;
      v6 = v10;
      v7 = v12;
      v8 = v13;
    }

    else
    {
      __break(1u);
    }

    return dispatch thunk of EventStreamProcessing.process(_:)(v6, v7, v8);
  }

  else
  {
    v16 = v0[10];

    v17 = v0[1];

    return v17(v10);
  }
}

uint64_t sub_1946C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[14];
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[13];
  if (v1)
  {
    v8 = v4[10];
    sub_5448(v4 + 2);

    v9 = sub_19718;
  }

  else
  {
    v4[16] = a1;
    sub_5448(v4 + 2);

    v9 = sub_195D8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_195D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[12] + 1;
  v5 = v3[16];
  if (v4 == v3[11])
  {
    v6 = v3[10];

    v7 = v3[1];

    return v7(v5);
  }

  else
  {
    v3[12] = v4;
    v3[13] = v5;
    v9 = v3[10];
    if (v4 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_54EC(v9 + 40 * v4 + 32, (v3 + 2));
      v10 = v3[5];
      v11 = v3[6];
      sub_5550(v3 + 2, v10);
      v12 = async function pointer to dispatch thunk of EventStreamProcessing.process(_:)[1];
      v13 = swift_task_alloc();
      v3[14] = v13;
      *v13 = v3;
      v13[1] = sub_1946C;
      a1 = v5;
      a2 = v10;
      a3 = v11;
    }

    return dispatch thunk of EventStreamProcessing.process(_:)(a1, a2, a3);
  }
}

uint64_t sub_19730(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(sub_1B98(&qword_3D620, &unk_30F70) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = sub_2F148();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = *(*(sub_1B98(&qword_3D630, &qword_30F80) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = sub_1B98(&qword_3D648, &qword_30F90);
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();
  v11 = sub_2EBD8();
  v2[29] = v11;
  v12 = *(v11 - 8);
  v2[30] = v12;
  v13 = *(v12 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v14 = sub_1B98(&qword_3D650, &qword_30F98);
  v2[34] = v14;
  v15 = *(v14 - 8);
  v2[35] = v15;
  v16 = *(v15 + 64) + 15;
  v2[36] = swift_task_alloc();
  v17 = sub_2F1F8();
  v2[37] = v17;
  v18 = *(v17 - 8);
  v2[38] = v18;
  v19 = *(v18 + 64) + 15;
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_19A0C, 0, 0);
}

uint64_t sub_19A0C()
{
  v1 = *(*(v0 + 152) + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = *(v0 + 304);
    v5 = &_swiftEmptyArrayStorage;
    v62 = i;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_301C8();
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v8 = (*(*v6 + 152))();

      v9 = *(v8 + 16);
      v10 = v5[2];
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= v5[3] >> 1)
      {
        if (*(v8 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v5 = sub_2976C(isUniquelyReferenced_nonNull_native, v13, 1, v5);
        if (*(v8 + 16))
        {
LABEL_18:
          if ((v5[3] >> 1) - v5[2] < v9)
          {
            goto LABEL_28;
          }

          v14 = *(v0 + 296);
          v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v16 = *(v4 + 72);
          swift_arrayInitWithCopy();

          if (v9)
          {
            v17 = v5[2];
            v18 = __OFADD__(v17, v9);
            v19 = v17 + v9;
            if (v18)
            {
              goto LABEL_29;
            }

            v5[2] = v19;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v7 == v62)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v6 = *(v1 + 8 * v3 + 32);

    v7 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_32:
  v20 = *(v0 + 304);
  v61 = *(v0 + 152);
  v21 = sub_20FA0(v5);

  v22 = v21 + 56;
  v23 = -1;
  v24 = -1 << *(v21 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v25 = v23 & *(v21 + 56);
  v26 = (63 - v24) >> 6;
  v63 = v20;
  v64 = v21;

  v31 = 0;
  v32 = &_swiftEmptyArrayStorage;
  *(v0 + 320) = &_swiftEmptyArrayStorage;
  if (v25)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v33 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v33);
    ++v31;
    if (v25)
    {
      v65 = v32;
      v31 = v33;
      while (1)
      {
        v34 = *(v0 + 312);
        v35 = *(v0 + 296);
        v36 = *(v0 + 168);
        v37 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        (*(v63 + 16))(v34, *(v64 + 48) + *(v63 + 72) * (v37 | (v31 << 6)), v35);
        v38 = *(v61 + 232);
        sub_2F1A8();
        v27 = (*(v63 + 8))(v34, v35);
        if (*(v0 + 80))
        {
          sub_1978((v0 + 56), v0 + 16);
          v32 = v65;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_29748(0, v65[2] + 1, 1, v65);
          }

          v40 = v32[2];
          v39 = v32[3];
          if (v40 >= v39 >> 1)
          {
            v32 = sub_29748((v39 > 1), v40 + 1, 1, v32);
          }

          v32[2] = v40 + 1;
          v27 = sub_1978((v0 + 16), &v32[5 * v40 + 4]);
          *(v0 + 320) = v32;
          if (!v25)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v32 = v65;
          *(v0 + 320) = v65;
          if (!v25)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v65 = v32;
      }
    }
  }

  v41 = v32[2];
  *(v0 + 328) = v41;
  if (v41)
  {
    *(v0 + 344) = 0;
    *(v0 + 336) = &_swiftEmptyArrayStorage;
    v42 = *(v0 + 320);
    if (*(v42 + 16))
    {
      v43 = *(v0 + 264);
      v44 = *(v0 + 144);
      sub_54EC(v42 + 32, v0 + 96);
      v45 = *(v0 + 120);
      v46 = *(v0 + 128);
      sub_5550((v0 + 96), v45);
      sub_2EB78();
      v47 = async function pointer to dispatch thunk of EventStreamDefinition.events(since:)[1];
      v48 = swift_task_alloc();
      *(v0 + 352) = v48;
      *v48 = v0;
      v48[1] = sub_19F9C;
      v27 = *(v0 + 288);
      v28 = *(v0 + 264);
      v29 = v45;
      v30 = v46;

      return dispatch thunk of EventStreamDefinition.events(since:)(v27, v28, v29, v30);
    }

LABEL_58:
    __break(1u);
    return dispatch thunk of EventStreamDefinition.events(since:)(v27, v28, v29, v30);
  }

  v50 = *(v0 + 312);
  v49 = *(v0 + 320);
  v51 = *(v0 + 288);
  v53 = *(v0 + 256);
  v52 = *(v0 + 264);
  v54 = *(v0 + 248);
  v55 = *(v0 + 224);
  v57 = *(v0 + 192);
  v56 = *(v0 + 200);
  v58 = *(v0 + 184);
  v66 = *(v0 + 160);

  v59 = *(v0 + 8);

  return v59(&_swiftEmptyArrayStorage);
}

uint64_t sub_19F9C()
{
  v2 = *v1;
  v3 = (*v1)[44];
  v15 = *v1;
  (*v1)[45] = v0;

  if (v0)
  {
    v4 = v2[42];
    v5 = v2[40];
    v6 = v2[33];
    v7 = v2[29];
    v8 = v2[30];

    sub_5448(v2 + 12);
    (*(v8 + 8))(v6, v7);

    v9 = sub_1AA68;
  }

  else
  {
    v10 = v2[33];
    v11 = v2[29];
    v12 = v2[30];
    sub_5448(v2 + 12);
    v13 = *(v12 + 8);
    v2[46] = v13;
    v2[47] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);
    v9 = sub_1A130;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1A130()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[28];
  sub_2F218();
  v0[48] = v0[42];
  v4 = sub_21430(&qword_3D658, &qword_3D648, &qword_30F90);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  v6[1] = sub_1A21C;
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v4);
}

uint64_t sub_1A21C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);

    v5 = sub_1A8A0;
  }

  else
  {
    v5 = sub_1A338;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A338()
{
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    goto LABEL_8;
  }

  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[20];
  v1 = *(v4 + 32);
  v1(v0[24], v2, v3);
  sub_2F108();
  v8 = *(v6 + 48);
  if (v8(v7, 1, v5) == 1)
  {
    v9 = v0[29];
    v10 = v0[20];
    v11 = v0[32];
    sub_2EB98();
    if (v8(v10, 1, v9) != 1)
    {
      sub_5B38(v0[20], &qword_3D620, &unk_30F70);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[32], v0[20], v0[29]);
  }

  v13 = v0[46];
  v12 = v0[47];
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[29];
  v17 = v0[18];
  sub_2EB58();
  sub_23F00(&qword_3D660, &type metadata accessor for Date);
  LOBYTE(v14) = sub_2FF68();
  v13(v15, v16);
  v18 = v0[21];
  v19 = v0[22];
  if (v14)
  {
    v20 = v0[47];
    v21 = v0[24];
    (v0[46])(v0[32], v0[29]);
    (*(v19 + 8))(v21, v18);
LABEL_8:
    v22 = v0[41];
    v24 = v0[35];
    v23 = v0[36];
    v25 = v0[34];
    v26 = v0[43] + 1;
    (*(v0[27] + 8))(v0[28], v0[26]);
    (*(v24 + 8))(v23, v25);
    v27 = v0[48];
    if (v26 == v22)
    {
      v29 = v0[39];
      v28 = v0[40];
      v30 = v0[36];
      v32 = v0[32];
      v31 = v0[33];
      v33 = v0[31];
      v34 = v0[28];
      v36 = v0[24];
      v35 = v0[25];
      v64 = v0[23];
      v65 = v0[20];

      v37 = v0[1];

      return v37(v27);
    }

    v39 = v0[43] + 1;
    v0[42] = v27;
    v0[43] = v39;
    v40 = v0[40];
    if (v39 < *(v40 + 16))
    {
      v41 = v0[33];
      v42 = v0[18];
      sub_54EC(v40 + 40 * v39 + 32, (v0 + 12));
      v43 = v0[15];
      v44 = v0[16];
      sub_5550(v0 + 12, v43);
      sub_2EB78();
      v45 = async function pointer to dispatch thunk of EventStreamDefinition.events(since:)[1];
      v46 = swift_task_alloc();
      v0[44] = v46;
      *v46 = v0;
      v46[1] = sub_19F9C;
      v47 = v0[36];
      v48 = v0[33];

      return dispatch thunk of EventStreamDefinition.events(since:)(v47, v48, v43, v44);
    }

    __break(1u);
    goto LABEL_23;
  }

  v49 = v0[48];
  (*(v19 + 16))(v0[23], v0[24], v0[21]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v0[48];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_23:
    v27 = sub_296FC(0, *(v27 + 2) + 1, 1, v27);
  }

  v52 = *(v27 + 2);
  v51 = *(v27 + 3);
  if (v52 >= v51 >> 1)
  {
    v27 = sub_296FC(v51 > 1, v52 + 1, 1, v27);
  }

  v53 = v0[47];
  v55 = v0[23];
  v54 = v0[24];
  v56 = v0[21];
  v57 = v0[22];
  (v0[46])(v0[32], v0[29]);
  (*(v57 + 8))(v54, v56);
  *(v27 + 2) = v52 + 1;
  v1(&v27[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v52], v55, v56);
  v0[48] = v27;
  v58 = sub_21430(&qword_3D658, &qword_3D648, &qword_30F90);
  v59 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v60 = swift_task_alloc();
  v0[49] = v60;
  *v60 = v0;
  v60[1] = sub_1A21C;
  v61 = v0[28];
  v62 = v0[25];
  v63 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v62, v63, v58);
}

uint64_t sub_1A8A0()
{
  v1 = v0[48];
  v0[17] = v0[50];
  sub_1B98(&qword_3CDE8, &qword_30FA0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1A940, 0, 0);
}

uint64_t sub_1A940()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v2 + 8))(v1, v3);
  v16 = v0[50];
  v4 = v0[39];
  v5 = v0[36];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v13 = v0[20];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1AA68()
{
  v13 = v0[45];
  v1 = v0[39];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

void *sub_1AB58(uint64_t a1)
{
  v3 = sub_1B98(&qword_3D620, &unk_30F70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v39 - v5;
  v6 = sub_2EC08();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2F198();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v47);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B95C();
  v13 = *(a1 + 16);
  if (!v13)
  {

    return &_swiftEmptyArrayStorage;
  }

  v56 = &_swiftEmptyArrayStorage;
  sub_2BC44(0, v13, 0);
  v14 = 0;
  v15 = 0;
  v16 = a1 + 32;
  v17 = v56;
  v45 = v12[2];
  v46 = v16;
  v39 = v12;
  v40 = v12 + 4;
  v41 = v9 + 32;
  v42 = v13;
  v18 = *(v1 + 224);
  v43 = v9;
  v44 = v18;
  while (1)
  {
    v54 = v17;
    v19 = (v46 + 16 * v14);
    v21 = *v19;
    v20 = v19[1];

    v22 = sub_EBF4(v44);
    v52 = v20;
    v53 = v15;
    v51 = sub_1AFB8(v20, v22);

    v23 = v45;
    if (v45)
    {
      break;
    }

LABEL_20:
    sub_2EF48();
    sub_2EF38();
    v36 = v50;
    sub_2F178();

    v17 = v54;
    v56 = v54;
    v38 = v54[2];
    v37 = v54[3];
    if (v38 >= v37 >> 1)
    {
      sub_2BC44(v37 > 1, v38 + 1, 1);
      v36 = v50;
      v17 = v56;
    }

    ++v14;
    v17[2] = v38 + 1;
    (*(v43 + 32))(v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, v36, v47);
    v15 = v53;
    if (v14 == v42)
    {

      return v17;
    }
  }

  v24 = v40;
  v25 = &_swiftEmptyArrayStorage;
  while (1)
  {
    sub_54EC(v24, v55);
    v27 = objc_autoreleasePoolPush();
    sub_5550(v55, v55[3]);
    v28 = sub_2EE18();
    objc_autoreleasePoolPop(v27);
    result = sub_5448(v55);
    v29 = *(v28 + 16);
    v30 = v25[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v31 <= v25[3] >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v32 = v30 + v29;
      }

      else
      {
        v32 = v30;
      }

      result = sub_29724(result, v32, 1, v25);
      v25 = result;
      if (*(v28 + 16))
      {
LABEL_16:
        if ((v25[3] >> 1) - v25[2] < v29)
        {
          goto LABEL_28;
        }

        sub_1B98(&qword_3D628, &qword_316D0);
        swift_arrayInitWithCopy();

        if (v29)
        {
          v33 = v25[2];
          v34 = __OFADD__(v33, v29);
          v35 = v33 + v29;
          if (v34)
          {
            goto LABEL_29;
          }

          v25[2] = v35;
        }

        goto LABEL_6;
      }
    }

    if (v29)
    {
      goto LABEL_27;
    }

LABEL_6:
    v24 += 40;
    if (!--v23)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

char *sub_1AFB8(uint64_t *a1, unint64_t a2)
{
  v4 = sub_1B98(&qword_3D630, &qword_30F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v62 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v71 = &v46 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = __chkstk_darwin(v10);
  v76 = &v46 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v46 - v16;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = sub_2F148();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v51 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  __chkstk_darwin(v25);
  v50 = &v46 - v27;
  v57 = a1[2];
  if (!v57)
  {
    return &_swiftEmptyArrayStorage;
  }

  v48 = v19;
  v67 = v26;
  v28 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  v64 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
  v29 = 0;
  v31 = v21[2];
  v30 = (v21 + 2);
  v58 = v31;
  v47 = (v30[64] + 32) & ~v30[64];
  v53 = a1 + v47;
  v54 = *(v30 + 7);
  v69 = a2;
  v70 = a2 & 0xC000000000000001;
  v74 = (v30 + 32);
  v75 = (v30 + 40);
  v66 = (v30 + 16);
  v61 = v57 - 1;
  v59 = v30;
  v63 = (v30 - 8);
  v52 = &_swiftEmptyArrayStorage;
  v21 = &qword_3D630;
  a1 = &qword_30F80;
  v72 = v12;
  v32 = v64;
  v33 = v71;
  v68 = v20;
  v49 = v17;
  do
  {
    v60 = v29 + 1;
    v34 = __OFADD__(v29, 1);
    v56 = v34;
    v65 = v29;
    v58(v17, &v53[v54 * v29], v20);
    v73 = *v75;
    v73(v17, 0, 1, v20);
    sub_5AD0(v17, v76, &qword_3D630, &qword_30F80);
    if (v32)
    {
      v17 = 0;
      v55 = &v53[v60 * v54];
      do
      {
        if (v70)
        {
          a2 = sub_301C8();
          v37 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v17 >= *(v28 + 16))
          {
            goto LABEL_36;
          }

          a2 = *(v69 + 8 * v17 + 32);

          v37 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v64 = sub_30238();
            goto LABEL_4;
          }
        }

        v21 = &qword_3D630;
        sub_5AD0(v76, v33, &qword_3D630, &qword_30F80);
        if ((*v74)(v33, 1, v20) == 1)
        {
          sub_5B38(v33, &qword_3D630, &qword_30F80);
          v35 = v12;
          v73(v12, 1, 1, v20);
        }

        else
        {
          v12 = v67;
          (*v66)(v67, v33, v20);
          if (v65 == v61)
          {
            v38 = v62;
            v73(v62, 1, 1, v20);
          }

          else
          {
            if (v56)
            {
              goto LABEL_37;
            }

            if (v60 >= v57)
            {
              goto LABEL_38;
            }

            v38 = v62;
            v58(v62, v55, v20);
            v73(v38, 0, 1, v20);
            v12 = v67;
          }

          sub_2F638();
          v39 = v38;
          v35 = v72;
          v21 = &qword_3D630;
          sub_5B38(v39, &qword_3D630, &qword_30F80);
          (*v63)(v12, v20);
          v32 = v64;
        }

        v36 = v76;
        sub_5B38(v76, &qword_3D630, &qword_30F80);

        v12 = v35;
        sub_C610(v35, v36, &qword_3D630, &qword_30F80);
        ++v17;
        v33 = v71;
        v20 = v68;
      }

      while (v37 != v32);
    }

    v17 = v49;
    v21 = &qword_3D630;
    sub_5B38(v49, &qword_3D630, &qword_30F80);
    a2 = v48;
    sub_C610(v76, v48, &qword_3D630, &qword_30F80);
    if ((*v74)(a2, 1, v20) == 1)
    {
      sub_5B38(a2, &qword_3D630, &qword_30F80);
    }

    else
    {
      v40 = *v66;
      v41 = v50;
      (*v66)(v50, a2, v20);
      v58(v51, v41, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_296FC(0, v52[2] + 1, 1, v52);
      }

      v43 = v52[2];
      v42 = v52[3];
      a2 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v52 = sub_296FC(v42 > 1, v43 + 1, 1, v52);
      }

      (*v63)(v50, v20);
      v44 = v52;
      v52[2] = a2;
      v40(&v44[v47 + v43 * v54], v51, v20);
      v12 = v72;
      v21 = &qword_3D630;
      v32 = v64;
    }

    v29 = v60;
  }

  while (v60 != v57);
  return v52;
}

void *sub_1B764()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 160))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_29580(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D618, &qword_316B0);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1B95C()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 112))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_29538(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D610, &unk_30F60);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1BB54()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 128))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2955C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D608, &qword_316C0);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1BD4C()
{
  v1 = *(v0 + 224);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30238())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_301C8();
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 168))();

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_295A4(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((v4[3] >> 1) - v4[2] < v8)
          {
            goto LABEL_28;
          }

          sub_1B98(&qword_3D600, &unk_30F50);
          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = v4[2];
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            v4[2] = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_25;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
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
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_1BF44(uint64_t a1)
{
  v21 = a1;
  v2 = *(v1 + 224);
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      v22 = v2 & 0xC000000000000001;
      v5 = &_swiftEmptyArrayStorage;
      while (v22)
      {
        v6 = sub_301C8();
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_24;
        }

LABEL_9:
        v8 = (*(*v6 + 120))();

        v9 = *(v8 + 16);
        v10 = *(v5 + 2);
        v11 = v10 + v9;
        if (__OFADD__(v10, v9))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v11 <= *(v5 + 3) >> 1)
        {
          if (*(v8 + 16))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10 <= v11)
          {
            v13 = v10 + v9;
          }

          else
          {
            v13 = v10;
          }

          v5 = sub_29378(isUniquelyReferenced_nonNull_native, v13, 1, v5);
          if (*(v8 + 16))
          {
LABEL_18:
            v14 = *(v5 + 2);
            if ((*(v5 + 3) >> 1) - v14 < v9)
            {
              goto LABEL_28;
            }

            memcpy(&v5[16 * v14 + 32], (v8 + 32), 16 * v9);

            if (v9)
            {
              v15 = *(v5 + 2);
              v16 = __OFADD__(v15, v9);
              v17 = v15 + v9;
              if (v16)
              {
                goto LABEL_29;
              }

              *(v5 + 2) = v17;
            }

            goto LABEL_5;
          }
        }

        if (v9)
        {
          goto LABEL_27;
        }

LABEL_5:
        ++v4;
        if (v7 == v3)
        {
          goto LABEL_32;
        }
      }

      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v6 = *(v2 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_9;
      }

LABEL_24:
      __break(1u);
LABEL_25:
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
      a1 = sub_30238();
      v3 = a1;
    }

    while (a1);
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_32:
  __chkstk_darwin(a1);
  v20[2] = v21;
  v18 = sub_E3C0(sub_1C37C, v20, v5);

  return v18;
}

uint64_t sub_1C17C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[4];
  sub_5550(a2, a2[3]);
  sub_2EE58();
  sub_1B98(&qword_3CF70, &unk_315C0);
  v7 = sub_30218();

  *a3 = v7;
  return result;
}

uint64_t sub_1C220()
{
  sub_5448(v0 + 2);
  sub_5448(v0 + 7);
  sub_5448(v0 + 13);
  sub_5448(v0 + 18);
  sub_5448(v0 + 23);
  v1 = v0[28];

  v2 = v0[29];

  v3 = v0[30];

  return swift_deallocClassInstance();
}

uint64_t sub_1C2B4()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D460);
  v1 = sub_4FD8(v0, qword_3D460);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1C398(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1C3B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C3E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23F00(&qword_3CFB0, &type metadata accessor for UUID);
  v36 = a2;
  v13 = sub_2FF58();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23F00(&qword_3CFB8, &type metadata accessor for UUID);
      v23 = sub_2FF78();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D410(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1C6C8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_30318();
  sub_2FFB8();
  v9 = sub_30338();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_302A8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D6D8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C818(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2F1F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType);
  v36 = a2;
  v13 = sub_2FF58();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23F00(&qword_3D670, &type metadata accessor for EventStreamType);
      v23 = sub_2FF78();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1D858(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1CAF8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2EC08();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1B98(&qword_3D788, &unk_310C0);
  result = sub_30198();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23F00(&qword_3CFB0, &type metadata accessor for UUID);
      result = sub_2FF58();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1CE54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B98(&qword_3D698, &qword_30FC8);
  result = sub_30198();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_30318();
      sub_2FFB8();
      result = sub_30338();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D0B4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2F1F8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1B98(&qword_3D678, &qword_30FA8);
  result = sub_30198();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType);
      result = sub_2FF58();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1D410(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CAF8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DC7C(&type metadata accessor for UUID, &qword_3D788, &unk_310C0);
      goto LABEL_12;
    }

    sub_1DEB4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23F00(&qword_3CFB0, &type metadata accessor for UUID);
  v15 = sub_2FF58();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23F00(&qword_3CFB8, &type metadata accessor for UUID);
      v23 = sub_2FF78();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_302B8();
  __break(1u);
  return result;
}

Swift::Int sub_1D6D8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CE54(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB20();
      goto LABEL_16;
    }

    sub_1E1D0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_30318();
  sub_2FFB8();
  result = sub_30338();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_302A8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_302B8();
  __break(1u);
  return result;
}

uint64_t sub_1D858(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2F1F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D0B4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DC7C(&type metadata accessor for EventStreamType, &qword_3D678, &qword_30FA8);
      goto LABEL_12;
    }

    sub_1E408(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType);
  v15 = sub_2FF58();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23F00(&qword_3D670, &type metadata accessor for EventStreamType);
      v23 = sub_2FF78();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_302B8();
  __break(1u);
  return result;
}

void *sub_1DB20()
{
  v1 = v0;
  sub_1B98(&qword_3D698, &qword_30FC8);
  v2 = *v0;
  v3 = sub_30188();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DC7C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_1B98(a2, a3);
  v12 = *v3;
  v13 = sub_30188();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_1DEB4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2EC08();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1B98(&qword_3D788, &unk_310C0);
  v10 = sub_30198();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23F00(&qword_3CFB0, &type metadata accessor for UUID);
      result = sub_2FF58();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1E1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B98(&qword_3D698, &qword_30FC8);
  result = sub_30198();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_30318();

      sub_2FFB8();
      result = sub_30338();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1E408(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2F1F8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1B98(&qword_3D678, &qword_30FA8);
  v10 = sub_30198();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType);
      result = sub_2FF58();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

Swift::Int sub_1E724(void **a1)
{
  v2 = *(sub_2F148() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20F78(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E7CC(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1E7CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_30288(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_2F148();
        v6 = sub_30038();
        v6[2] = v5;
      }

      v7 = *(sub_2F148() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1EE30(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E8F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B98(&qword_3D620, &unk_30F70);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v71 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v68 = &v50[-v12];
  v13 = sub_2EBD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v67 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v70 = &v50[-v18];
  v19 = sub_2F148();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v60 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v72 = &v50[-v24];
  result = __chkstk_darwin(v23);
  v69 = &v50[-v27];
  v52 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v30 = *(v26 + 16);
    v29 = v26 + 16;
    v31 = *(v29 + 56);
    v32 = (v14 + 48);
    v64 = (v14 + 32);
    v65 = v30;
    v62 = (v14 + 48);
    v63 = (v14 + 8);
    v61 = (v29 - 8);
    v66 = v29;
    v33 = v28 + v31 * (a3 - 1);
    v57 = -v31;
    v58 = (v29 + 16);
    v34 = a1 - a3;
    v59 = v28;
    v51 = v31;
    v35 = v28 + v31 * a3;
LABEL_5:
    v55 = v33;
    v56 = a3;
    v53 = v35;
    v54 = v34;
    v36 = v34;
    while (1)
    {
      v37 = v65;
      v65(v69, v35, v19);
      v37(v72, v33, v19);
      v38 = v68;
      sub_2F108();
      v39 = *v32;
      if ((*v32)(v38, 1, v13) == 1)
      {
        sub_2EB98();
        if (v39(v38, 1, v13) != 1)
        {
          sub_5B38(v68, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        (*v64)(v70, v38, v13);
      }

      sub_2F108();
      v40 = v71;
      if (v39(v71, 1, v13) == 1)
      {
        v41 = v67;
        sub_2EB98();
        if (v39(v40, 1, v13) != 1)
        {
          sub_5B38(v40, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        v41 = v67;
        (*v64)(v67, v40, v13);
      }

      v42 = v70;
      v43 = sub_2EBB8();
      v44 = v41;
      v45 = *v63;
      (*v63)(v44, v13);
      v45(v42, v13);
      v46 = *v61;
      (*v61)(v72, v19);
      result = v46(v69, v19);
      v32 = v62;
      if ((v43 & 1) == 0)
      {
LABEL_4:
        a3 = v56 + 1;
        v33 = v55 + v51;
        v34 = v54 - 1;
        v35 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v47 = *v58;
      v48 = v60;
      (*v58)(v60, v35, v19);
      swift_arrayInitWithTakeFrontToBack();
      result = v47(v33, v48, v19);
      v33 += v57;
      v35 += v57;
      if (__CFADD__(v36++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1EE30(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v171 = a1;
  v8 = sub_1B98(&qword_3D620, &unk_30F70);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v202 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v166 - v13;
  v15 = __chkstk_darwin(v12);
  v185 = &v166 - v16;
  __chkstk_darwin(v15);
  v18 = &v166 - v17;
  v204 = sub_2EBD8();
  v19 = *(v204 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v204);
  v23 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v201 = &v166 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v166 - v27;
  __chkstk_darwin(v26);
  v184 = &v166 - v29;
  v199 = sub_2F148();
  v182 = *(v199 - 8);
  v30 = v182[8];
  v31 = __chkstk_darwin(v199);
  v175 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v190 = &v166 - v34;
  v35 = __chkstk_darwin(v33);
  v203 = &v166 - v36;
  v37 = __chkstk_darwin(v35);
  v200 = &v166 - v38;
  v39 = __chkstk_darwin(v37);
  v187 = &v166 - v40;
  v41 = __chkstk_darwin(v39);
  v183 = &v166 - v42;
  v43 = __chkstk_darwin(v41);
  v166 = &v166 - v44;
  result = __chkstk_darwin(v43);
  v169 = &v166 - v46;
  v47 = a3;
  v48 = a3[1];
  if (v48 < 1)
  {
    v50 = &_swiftEmptyArrayStorage;
    v52 = a3;
LABEL_115:
    a4 = *v171;
    if (!*v171)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_117;
  }

  v179 = v28;
  v49 = 0;
  v196 = v182 + 2;
  v197 = (v182 + 1);
  v195 = (v19 + 48);
  v194 = (v19 + 32);
  v193 = (v19 + 8);
  v192 = (v182 + 4);
  v50 = &_swiftEmptyArrayStorage;
  v170 = a4;
  v198 = v14;
  v181 = v18;
  v51 = v199;
  v52 = v47;
  v172 = v47;
LABEL_4:
  v53 = v49;
  v173 = v50;
  if (v49 + 1 >= v48)
  {
    v79 = v49 + 1;
  }

  else
  {
    v186 = v48;
    v54 = *v52;
    v55 = v182[9];
    v56 = v49;
    v57 = &(*v52)[v55 * (v49 + 1)];
    v58 = v182[2];
    v58(v169, v57, v51);
    v191 = v54;
    v59 = &v54[v55 * v56];
    v60 = v166;
    v188 = v58;
    v58(v166, v59, v51);
    v61 = v169;
    LODWORD(v189) = sub_18790(v169, v60);
    if (v5)
    {
      v165 = *v197;
      (*v197)(v60, v51);
      (v165)(v61, v51);
    }

    v168 = 0;
    v62 = *v197;
    (*v197)(v60, v51);
    v180 = v62;
    result = (v62)(v61, v51);
    v167 = v56;
    v63 = v56 + 2;
    v64 = &v191[v55 * (v56 + 2)];
    v65 = v195;
    v66 = v55;
    v191 = v55;
    do
    {
      if (v186 == v63)
      {
        v50 = v173;
        v79 = v186;
        goto LABEL_20;
      }

      v74 = v188;
      (v188)(v183, v64, v51);
      v74(v187, v57, v51);
      v75 = v204;
      v76 = v181;
      sub_2F108();
      v77 = *v65;
      if ((*v65)(v76, 1, v75) == 1)
      {
        sub_2EB98();
        if (v77(v76, 1, v75) != 1)
        {
          sub_5B38(v181, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        (*v194)(v184, v76, v75);
      }

      sub_2F108();
      v78 = v185;
      if (v77(v185, 1, v204) == 1)
      {
        v67 = v179;
        sub_2EB98();
        if (v77(v78, 1, v204) != 1)
        {
          sub_5B38(v78, &qword_3D620, &unk_30F70);
        }
      }

      else
      {
        v67 = v179;
        (*v194)(v179, v78, v204);
      }

      v68 = v184;
      v69 = sub_2EBB8();
      v70 = *v193;
      v71 = v67;
      v72 = v204;
      (*v193)(v71, v204);
      v70(v68, v72);
      v51 = v199;
      v73 = v180;
      (v180)(v187, v199);
      result = v73(v183, v51);
      ++v63;
      v66 = v191;
      v64 = &v191[v64];
      v57 += v191;
      v65 = v195;
    }

    while (((v189 ^ v69) & 1) == 0);
    v79 = v63 - 1;
    v50 = v173;
LABEL_20:
    v5 = v168;
    a4 = v170;
    v52 = v172;
    v53 = v167;
    if (v189)
    {
      if (v79 < v167)
      {
        goto LABEL_148;
      }

      if (v167 < v79)
      {
        v80 = v66 * (v79 - 1);
        v81 = v79 * v66;
        v186 = v79;
        v82 = v79;
        v83 = v167;
        v84 = v167 * v66;
        while (2)
        {
          if (v83 == --v82)
          {
            goto LABEL_27;
          }

          v87 = *v52;
          if (!v87)
          {
            goto LABEL_152;
          }

          v88 = *v192;
          (*v192)(v175, &v87[v84], v199);
          if (v84 >= v80 && &v87[v84] < &v87[v81])
          {
            v86 = v199;
            if (v84 != v80)
            {
              v85 = v199;
              swift_arrayInitWithTakeBackToFront();
LABEL_25:
              v86 = v85;
            }

            result = (v88)(&v87[v80], v175, v86);
            v52 = v172;
            v50 = v173;
            v66 = v191;
LABEL_27:
            ++v83;
            v80 -= v66;
            v81 -= v66;
            v84 += v66;
            if (v83 >= v82)
            {
              v5 = v168;
              a4 = v170;
              v51 = v199;
              v53 = v167;
              v79 = v186;
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        v85 = v199;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v89 = v52[1];
  if (v79 >= v89)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v79, v53))
  {
    goto LABEL_145;
  }

  if (v79 - v53 >= a4)
  {
LABEL_44:
    a4 = v79;
    if (v79 < v53)
    {
      goto LABEL_144;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v53, a4))
  {
    goto LABEL_146;
  }

  if ((v53 + a4) >= v89)
  {
    a4 = v52[1];
  }

  else
  {
    a4 += v53;
  }

  if (a4 < v53)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    result = sub_20A2C(v50);
    v50 = result;
LABEL_117:
    v205 = v50;
    v160 = *(v50 + 16);
    if (v160 >= 2)
    {
      while (*v52)
      {
        v161 = *(v50 + 16 * v160);
        v162 = v50;
        v163 = *(v50 + 16 * (v160 - 1) + 32);
        v50 = *(v50 + 16 * (v160 - 1) + 40);
        sub_1FEC4(&(*v52)[v182[9] * v161], &(*v52)[v182[9] * v163], &(*v52)[v182[9] * v50], a4);
        if (v5)
        {
        }

        if (v50 < v161)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = sub_20A2C(v162);
        }

        if (v160 - 2 >= *(v162 + 2))
        {
          goto LABEL_143;
        }

        v164 = &v162[16 * v160];
        *v164 = v161;
        *(v164 + 1) = v50;
        v205 = v162;
        result = sub_209A0(v160 - 1);
        v50 = v205;
        v160 = *(v205 + 16);
        if (v160 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  if (v79 == a4)
  {
    goto LABEL_44;
  }

  v168 = v5;
  v136 = *v52;
  v137 = v182[9];
  v191 = v182[2];
  v138 = &v136[v137 * (v79 - 1)];
  v188 = -v137;
  v167 = v53;
  v139 = v53 - v79;
  v189 = v136;
  v174 = v137;
  v140 = &v136[v79 * v137];
  v176 = a4;
LABEL_98:
  v186 = v79;
  v177 = v140;
  v178 = v139;
  v141 = v139;
  v180 = v138;
  while (1)
  {
    v142 = v51;
    v143 = v23;
    v144 = v191;
    (v191)(v200, v140, v142);
    v144(v203, v138, v142);
    v145 = v204;
    v146 = v198;
    sub_2F108();
    v147 = *v195;
    if ((*v195)(v146, 1, v145) == 1)
    {
      sub_2EB98();
      if (v147(v146, 1, v145) != 1)
      {
        sub_5B38(v198, &qword_3D620, &unk_30F70);
      }
    }

    else
    {
      (*v194)(v201, v146, v145);
    }

    sub_2F108();
    v148 = v202;
    v149 = v143;
    if (v147(v202, 1, v204) == 1)
    {
      sub_2EB98();
      if (v147(v148, 1, v204) != 1)
      {
        sub_5B38(v148, &qword_3D620, &unk_30F70);
      }
    }

    else
    {
      (*v194)(v143, v148, v204);
    }

    v150 = v201;
    v151 = sub_2EBB8();
    v152 = *v193;
    v153 = v149;
    v154 = v149;
    v155 = v204;
    (*v193)(v154, v204);
    v152(v150, v155);
    v156 = *v197;
    v51 = v199;
    (*v197)(v203, v199);
    result = (v156)(v200, v51);
    if ((v151 & 1) == 0)
    {
      v23 = v153;
LABEL_97:
      v79 = v186 + 1;
      v138 = &v180[v174];
      v139 = v178 - 1;
      v140 = &v177[v174];
      a4 = v176;
      if (v186 + 1 != v176)
      {
        goto LABEL_98;
      }

      v5 = v168;
      v52 = v172;
      v50 = v173;
      v53 = v167;
      if (v176 < v167)
      {
        goto LABEL_144;
      }

LABEL_45:
      result = swift_isUniquelyReferenced_nonNull_native();
      v176 = a4;
      if ((result & 1) == 0)
      {
        result = sub_20B28(0, *(v50 + 16) + 1, 1, v50);
        v50 = result;
      }

      a4 = *(v50 + 16);
      v90 = *(v50 + 24);
      v91 = a4 + 1;
      if (a4 >= v90 >> 1)
      {
        result = sub_20B28((v90 > 1), a4 + 1, 1, v50);
        v50 = result;
      }

      *(v50 + 16) = v91;
      v92 = v50 + 16 * a4;
      v93 = v176;
      *(v92 + 32) = v53;
      *(v92 + 40) = v93;
      if (!*v171)
      {
        goto LABEL_154;
      }

      if (a4)
      {
        v94 = *v171;
        while (1)
        {
          v95 = v91 - 1;
          if (v91 >= 4)
          {
            break;
          }

          if (v91 == 3)
          {
            v96 = *(v50 + 32);
            v97 = *(v50 + 40);
            v106 = __OFSUB__(v97, v96);
            v98 = v97 - v96;
            v99 = v106;
LABEL_65:
            if (v99)
            {
              goto LABEL_133;
            }

            v112 = (v50 + 16 * v91);
            v114 = *v112;
            v113 = v112[1];
            v115 = __OFSUB__(v113, v114);
            v116 = v113 - v114;
            v117 = v115;
            if (v115)
            {
              goto LABEL_136;
            }

            v118 = (v50 + 32 + 16 * v95);
            v120 = *v118;
            v119 = v118[1];
            v106 = __OFSUB__(v119, v120);
            v121 = v119 - v120;
            if (v106)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v116, v121))
            {
              goto LABEL_140;
            }

            if (v116 + v121 >= v98)
            {
              if (v98 < v121)
              {
                v95 = v91 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v122 = (v50 + 16 * v91);
          v124 = *v122;
          v123 = v122[1];
          v106 = __OFSUB__(v123, v124);
          v116 = v123 - v124;
          v117 = v106;
LABEL_79:
          if (v117)
          {
            goto LABEL_135;
          }

          v125 = v50 + 16 * v95;
          v127 = *(v125 + 32);
          v126 = *(v125 + 40);
          v106 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v106)
          {
            goto LABEL_138;
          }

          if (v128 < v116)
          {
            goto LABEL_3;
          }

LABEL_86:
          a4 = v95 - 1;
          if (v95 - 1 >= v91)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*v52)
          {
            goto LABEL_151;
          }

          v133 = *(v50 + 32 + 16 * a4);
          v134 = *(v50 + 32 + 16 * v95 + 8);
          sub_1FEC4(&(*v52)[v182[9] * v133], &(*v52)[v182[9] * *(v50 + 32 + 16 * v95)], &(*v52)[v182[9] * v134], v94);
          if (v5)
          {
          }

          if (v134 < v133)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_20A2C(v50);
          }

          if (a4 >= *(v50 + 16))
          {
            goto LABEL_130;
          }

          v135 = v50 + 16 * a4;
          *(v135 + 32) = v133;
          *(v135 + 40) = v134;
          v205 = v50;
          result = sub_209A0(v95);
          v50 = v205;
          v91 = *(v205 + 16);
          v51 = v199;
          if (v91 <= 1)
          {
            goto LABEL_3;
          }
        }

        v100 = v50 + 32 + 16 * v91;
        v101 = *(v100 - 64);
        v102 = *(v100 - 56);
        v106 = __OFSUB__(v102, v101);
        v103 = v102 - v101;
        if (v106)
        {
          goto LABEL_131;
        }

        v105 = *(v100 - 48);
        v104 = *(v100 - 40);
        v106 = __OFSUB__(v104, v105);
        v98 = v104 - v105;
        v99 = v106;
        if (v106)
        {
          goto LABEL_132;
        }

        v107 = (v50 + 16 * v91);
        v109 = *v107;
        v108 = v107[1];
        v106 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v106)
        {
          goto LABEL_134;
        }

        v106 = __OFADD__(v98, v110);
        v111 = v98 + v110;
        if (v106)
        {
          goto LABEL_137;
        }

        if (v111 >= v103)
        {
          v129 = (v50 + 32 + 16 * v95);
          v131 = *v129;
          v130 = v129[1];
          v106 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v106)
          {
            goto LABEL_141;
          }

          if (v98 < v132)
          {
            v95 = v91 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v48 = v52[1];
      v49 = v176;
      a4 = v170;
      if (v176 >= v48)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    if (!v189)
    {
      break;
    }

    v157 = *v192;
    v158 = v190;
    (*v192)(v190, v140, v51);
    swift_arrayInitWithTakeFrontToBack();
    v157(v138, v158, v51);
    v138 += v188;
    v140 += v188;
    v159 = __CFADD__(v141++, 1);
    v23 = v153;
    if (v159)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_1FEC4(unint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v96 = a4;
  v98 = a3;
  v6 = sub_1B98(&qword_3D620, &unk_30F70);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v89 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v77 - v11;
  v13 = __chkstk_darwin(v10);
  v95 = &v77 - v14;
  __chkstk_darwin(v13);
  v90 = &v77 - v15;
  v16 = sub_2EBD8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v85 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v88 = (&v77 - v22);
  v23 = __chkstk_darwin(v21);
  v86 = &v77 - v24;
  __chkstk_darwin(v23);
  v94 = &v77 - v25;
  v26 = sub_2F148();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v92 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v87 = (&v77 - v32);
  v33 = __chkstk_darwin(v31);
  v97 = &v77 - v34;
  result = __chkstk_darwin(v33);
  v93 = &v77 - v36;
  v91 = *(v37 + 72);
  if (!v91)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v91 == -1)
  {
    goto LABEL_79;
  }

  v38 = v98 - a2;
  if (v98 - a2 != 0x8000000000000000 || v91 != -1)
  {
    v39 = &a2[-a1] / v91;
    v101 = a1;
    v40 = v96;
    v100 = v96;
    if (v39 < v38 / v91)
    {
      v41 = v39 * v91;
      if (v96 < a1 || a1 + v41 <= v96)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v96 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v40 = v96;
LABEL_17:
      v92 = (v40 + v41);
      v99 = v40 + v41;
      if (v41 >= 1 && a2 < v98)
      {
        v44 = *(v27 + 16);
        v45 = (v17 + 48);
        v87 = (v17 + 32);
        v88 = v44;
        v89 = (v27 + 16);
        v84 = (v27 + 8);
        v85 = (v17 + 8);
        do
        {
          v46 = a2;
          v47 = v40;
          v48 = v88;
          v88(v93, a2, v26);
          v96 = v47;
          v48(v97, v47, v26);
          v49 = v90;
          sub_2F108();
          v50 = *v45;
          if ((*v45)(v49, 1, v16) == 1)
          {
            sub_2EB98();
            if (v50(v49, 1, v16) != 1)
            {
              sub_5B38(v90, &qword_3D620, &unk_30F70);
            }
          }

          else
          {
            (*v87)(v94, v49, v16);
          }

          sub_2F108();
          v51 = v95;
          if (v50(v95, 1, v16) == 1)
          {
            v52 = v86;
            sub_2EB98();
            if (v50(v51, 1, v16) != 1)
            {
              sub_5B38(v51, &qword_3D620, &unk_30F70);
            }
          }

          else
          {
            v52 = v86;
            (*v87)(v86, v51, v16);
          }

          v53 = v94;
          v54 = sub_2EBB8();
          v55 = v52;
          v56 = *v85;
          (*v85)(v55, v16);
          v56(v53, v16);
          v57 = *v84;
          (*v84)(v97, v26);
          v57(v93, v26);
          if (v54)
          {
            v58 = v91;
            a2 = (v46 + v91);
            if (a1 < v46 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v96;
          }

          else
          {
            v58 = v91;
            v59 = v96 + v91;
            a2 = v46;
            if (a1 < v96 || a1 >= v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v96)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v100 = v59;
            v40 = v59;
          }

          a1 += v58;
          v101 = a1;
        }

        while (v40 < v92 && a2 < v98);
      }

LABEL_77:
      sub_20A40(&v101, &v100, &v99, &type metadata accessor for CoreDuetEvent);
      return 1;
    }

    v42 = v38 / v91 * v91;
    if (v96 < a2 || &a2[v42] <= v96)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v96 == a2)
      {
LABEL_48:
        v94 = a2;
        v60 = v40 + v42;
        if (v42 >= 1)
        {
          v93 = v12;
          v61 = -v91;
          v83 = (v17 + 48);
          v84 = (v27 + 16);
          v81 = (v17 + 8);
          v82 = (v17 + 32);
          v80 = (v27 + 8);
          v62 = v60;
          v86 = v26;
          v90 = a1;
          v97 = -v91;
          do
          {
            v78 = v60;
            v63 = v94;
            v94 += v61;
            v91 = v63;
            while (1)
            {
              v64 = v98;
              if (v63 <= a1)
              {
                v101 = v63;
                v99 = v78;
                goto LABEL_77;
              }

              v79 = v60;
              v65 = (v62 + v61);
              v66 = *v84;
              (*v84)(v87, v65, v26);
              (v66)(v92, v94, v26);
              v67 = v93;
              sub_2F108();
              v68 = *v83;
              if ((*v83)(v67, 1, v16) == 1)
              {
                sub_2EB98();
                if (v68(v67, 1, v16) != 1)
                {
                  sub_5B38(v93, &qword_3D620, &unk_30F70);
                }
              }

              else
              {
                (*v82)(v88, v67, v16);
              }

              sub_2F108();
              v69 = v89;
              v70 = v68(v89, 1, v16);
              v71 = v85;
              v95 = v65;
              if (v70 == 1)
              {
                sub_2EB98();
                if (v68(v69, 1, v16) != 1)
                {
                  sub_5B38(v69, &qword_3D620, &unk_30F70);
                }
              }

              else
              {
                (*v82)(v85, v69, v16);
              }

              v98 = (v64 + v97);
              v72 = v88;
              v73 = sub_2EBB8();
              v74 = *v81;
              (*v81)(v71, v16);
              v74(v72, v16);
              v75 = *v80;
              v26 = v86;
              (*v80)(v92, v86);
              v75(v87, v26);
              if (v73)
              {
                break;
              }

              v76 = v95;
              v60 = v95;
              v63 = v91;
              if (v64 < v62 || v98 >= v62)
              {
                swift_arrayInitWithTakeFrontToBack();
                v61 = v97;
              }

              else
              {
                v61 = v97;
                if (v64 != v62)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v62 = v60;
              a1 = v90;
              if (v76 <= v96)
              {
                v94 = v63;
                goto LABEL_76;
              }
            }

            if (v64 < v91 || v98 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
              v60 = v79;
              v61 = v97;
            }

            else
            {
              v60 = v79;
              v61 = v97;
              if (v64 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v90;
          }

          while (v62 > v96);
        }

LABEL_76:
        v101 = v94;
        v99 = v60;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v40 = v96;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_209A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20A2C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20A40(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_20B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B98(&qword_3D6A8, &unk_31750);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_20C2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2EC08();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2A2F4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2B810();
      goto LABEL_9;
    }

    sub_2AD3C(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_2A2F4(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_302C8();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_2B244(v14, v11, a1, v23);
  }
}

uint64_t (*sub_20E10(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_301C8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_20E90;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20EE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_C678(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1978(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_20FA0(uint64_t a1)
{
  v2 = sub_2F1F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_23F00(&qword_3D668, &type metadata accessor for EventStreamType);
  result = sub_300A8();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1C818(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_2113C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))(*(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_211A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[4];
  sub_5550(a1, a1[3]);
  result = sub_2EEE8();
  *a2 = result;
  return result;
}

uint64_t sub_21204()
{
  v1 = *(v0 + 24);

  sub_5448((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_21244()
{
  sub_5448((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_5BA0;

  return sub_165A4(a1, a2, a3, v3);
}

uint64_t sub_21330()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21368(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5834;

  return sub_166A0(a1, a2, v7);
}

uint64_t sub_21430(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20E98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21478(uint64_t a1)
{
  v2 = sub_2EC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2F3B8();
  v7 = *(v56 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v56);
  v53 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v41 - v11;
  v12 = &_swiftEmptyDictionarySingleton;
  v57 = &_swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v16 = *(v14 + 64);
  v17 = *(v14 + 56);
  v51 = (v16 + 32) & ~v16;
  v52 = v15;
  v18 = a1 + v51;
  v54 = (v14 + 16);
  v44 = v3 + 32;
  v45 = v16;
  v43 = (v3 + 8);
  v42 = xmmword_30830;
  v47 = v3;
  v48 = v2;
  v19 = v2;
  v49 = v6;
  v50 = v17;
  v46 = v14;
  v15(v55, a1 + v51, v56);
  while (1)
  {
    sub_2F398();
    v22 = sub_2A2F4(v6);
    v23 = v12[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v12[3] < v25)
    {
      sub_2A948(v25, 1);
      v12 = v57;
      v27 = sub_2A2F4(v6);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    if (v26)
    {
      (*v43)(v6, v19);
      v29 = v12[7];
      v30 = *v54;
      (*v54)(v53, v55, v56);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_297B8(0, *(v31 + 2) + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_297B8(v33 > 1, v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      *(v31 + 2) = v34 + 1;
      v6 = v49;
      v20 = v50;
      v30(&v31[v51 + v34 * v50], v53, v56);
      v19 = v48;
    }

    else
    {
      sub_1B98(&qword_3D760, &qword_31090);
      v35 = v51;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      (*v54)((v36 + v35), v55, v56);
      v12[(v22 >> 6) + 8] |= 1 << v22;
      (*(v47 + 32))(v12[6] + *(v47 + 72) * v22, v6, v19);
      *(v12[7] + 8 * v22) = v36;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v12[2] = v39;
      v20 = v50;
    }

    v18 += v20;
    if (!--v13)
    {
      return v12;
    }

    v52(v55, v18, v56);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_302C8();
  __break(1u);
  return result;
}

unint64_t sub_21888(void (*a1)(char *, char *, uint64_t), char a2, uint64_t *a3)
{
  v60 = a3;
  LOBYTE(v4) = a2;
  v59 = sub_2EC08();
  v56 = *(v59 - 8);
  v6 = v56[8];
  __chkstk_darwin(v59);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B98(&qword_3D6C8, &qword_31770);
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = *(result + 48);
    v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v58 = *(v12 + 72);
    sub_5AD0(a1 + v17, &v51 - v13, &qword_3D6C8, &qword_31770);
    v18 = (v56 + 4);
    v54 = v56[4];
    v54(v8, v14, v59);
    v57 = v16;
    v53 = *&v14[v16];
    v19 = *v60;
    result = sub_2A2F4(v8);
    v21 = *(v19 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    LOBYTE(v3) = v20;
    v25 = *(v19 + 24);
    v52 = v17;
    if (v25 < v24)
    {
      v26 = v60;
      sub_2A584(v24, v4 & 1);
      v27 = *v26;
      result = sub_2A2F4(v8);
      if ((v3 & 1) == (v28 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_302C8();
      __break(1u);
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v29 = a1;
      v30 = *v60;
      v55 = (v18 - 3);
      if (v3)
      {
        v31 = *(v30[7] + 8 * result);
        v32 = result;
        result = (*(v18 - 3))(v8, v59);
        *(v30[7] + 8 * v32) = v31;
        if (!--v15)
        {
          return result;
        }
      }

      else
      {
        v30[(result >> 6) + 8] |= 1 << result;
        v33 = result;
        result = (v54)(v30[6] + v56[9] * result, v8, v59);
        *(v30[7] + 8 * v33) = v53;
        v34 = v30[2];
        v23 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v23)
        {
          goto LABEL_23;
        }

        v30[2] = v35;
        if (!--v15)
        {
          return result;
        }
      }

      v4 = v29 + v58 + v52;
      while (1)
      {
        sub_5AD0(v4, v14, &qword_3D6C8, &qword_31770);
        a1 = *v18;
        (*v18)(v8, v14, v59);
        v38 = *&v14[v57];
        v39 = *v60;
        result = sub_2A2F4(v8);
        v41 = *(v39 + 16);
        v42 = (v40 & 1) == 0;
        v23 = __OFADD__(v41, v42);
        v43 = v41 + v42;
        if (v23)
        {
          break;
        }

        LOBYTE(v3) = v40;
        if (*(v39 + 24) < v43)
        {
          v44 = v60;
          sub_2A584(v43, 1);
          v45 = *v44;
          result = sub_2A2F4(v8);
          if ((v3 & 1) != (v46 & 1))
          {
            goto LABEL_5;
          }
        }

        v47 = *v60;
        if (v3)
        {
          v36 = *(v47[7] + 8 * result);
          v37 = result;
          result = (*v55)(v8, v59);
          *(v47[7] + 8 * v37) = v36;
        }

        else
        {
          v47[(result >> 6) + 8] |= 1 << result;
          v3 = result;
          result = (a1)(v47[6] + v56[9] * result, v8, v59);
          *(v47[7] + 8 * v3) = v38;
          v48 = v47[2];
          v23 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v47[2] = v49;
        }

        v4 += v58;
        if (!--v15)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v50 = result;
      sub_2B5A0();
      result = v50;
    }
  }

  return result;
}

uint64_t sub_21CF4(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v93 = a4;
  v96 = sub_2EC08();
  v9 = *(v96 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v96);
  v84 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v88 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v86 = &v79 - v18;
  v19 = sub_2F3B8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v90 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v87 = (&v79 - v25);
  v26 = __chkstk_darwin(v24);
  v94 = &v79 - v27;
  result = __chkstk_darwin(v26);
  v92 = &v79 - v29;
  v89 = *(v30 + 72);
  if (!v89)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v91 = v17;
  v31 = a2;
  if (a2 - a1 == 0x8000000000000000 && v89 == -1)
  {
    goto LABEL_84;
  }

  v32 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v89 != -1)
  {
    v33 = (a2 - a1) / v89;
    v99 = a1;
    v34 = v93;
    v98 = v93;
    if (v33 < v32 / v89)
    {
      v35 = v33 * v89;
      if (v93 < a1 || a1 + v35 <= v93)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v93 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v34 = v93;
LABEL_17:
      v90 = (v34 + v35);
      v97 = v34 + v35;
      if (v35 >= 1 && a2 < a3)
      {
        v38 = a2;
        v87 = *(v20 + 16);
        v88 = (v20 + 16);
        v39 = (v9 + 8);
        v84 = (v20 + 8);
        v85 = a3;
        v95 = a5;
        while (1)
        {
          v40 = v38;
          v41 = v34;
          v42 = v87;
          v87(v92, v38, v19);
          v93 = v41;
          v42(v94, v41, v19);
          v43 = v86;
          sub_2F398();
          if (*(a5 + 16))
          {
            v44 = sub_2A2F4(v43);
            v45 = *v39;
            if (v46)
            {
              v47 = *(*(a5 + 56) + 8 * v44);
              goto LABEL_27;
            }
          }

          else
          {
            v45 = *v39;
          }

          v47 = 0x8000000000000000;
LABEL_27:
          v45(v43, v96);
          v48 = v91;
          sub_2F398();
          v49 = v95;
          if (*(v95 + 16) && (v50 = sub_2A2F4(v48), (v51 & 1) != 0))
          {
            v52 = *(*(v49 + 56) + 8 * v50);
          }

          else
          {
            v52 = 0x8000000000000000;
          }

          v53 = v89;
          v45(v91, v96);
          v54 = *v84;
          (*v84)(v94, v19);
          v54(v92, v19);
          if (v47 >= v52)
          {
            v57 = v93 + v53;
            a5 = v95;
            v38 = v40;
            if (a1 < v93 || a1 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v85;
            }

            else
            {
              v56 = v85;
              if (a1 != v93)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v98 = v57;
            v34 = v57;
          }

          else
          {
            v55 = v40;
            v38 = v40 + v53;
            a5 = v95;
            if (a1 < v40 || a1 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v93;
              v56 = v85;
            }

            else
            {
              v56 = v85;
              if (a1 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v34 = v93;
            }
          }

          a1 += v53;
          v99 = a1;
          if (v34 >= v90 || v38 >= v56)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_82;
    }

    v36 = v32 / v89 * v89;
    if (v93 < v31 || v31 + v36 <= v93)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v93 == v31)
      {
LABEL_50:
        v58 = v34 + v36;
        if (v36 < 1)
        {
          v62 = v31;
        }

        else
        {
          v59 = -v89;
          v82 = a1;
          v83 = (v20 + 16);
          v81 = (v20 + 8);
          v60 = (v9 + 8);
          v61 = (v34 + v36);
          v62 = v31;
          v94 = -v89;
          v95 = a5;
          do
          {
            v80 = v58;
            v63 = v62;
            v64 = v62 + v59;
            v89 = v64;
            v86 = v63;
            while (1)
            {
              if (v63 <= a1)
              {
                v99 = v63;
                v97 = v80;
                goto LABEL_82;
              }

              v65 = a3;
              v85 = v58;
              v66 = *v83;
              v91 = &v61[v59];
              v92 = v61;
              v66(v87);
              (v66)(v90, v64, v19);
              v67 = v88;
              sub_2F398();
              if (*(a5 + 16))
              {
                v68 = sub_2A2F4(v67);
                v69 = *v60;
                v70 = v84;
                v72 = (v71 & 1) != 0 ? *(*(a5 + 56) + 8 * v68) : 0x8000000000000000;
                v69(v88, v96);
              }

              else
              {
                v69 = *v60;
                v72 = 0x8000000000000000;
                v70 = v84;
                (*v60)(v88, v96);
              }

              sub_2F398();
              v73 = v95;
              a1 = v82;
              if (*(v95 + 16) && (v74 = sub_2A2F4(v70), (v75 & 1) != 0))
              {
                v76 = *(*(v73 + 56) + 8 * v74);
              }

              else
              {
                v76 = 0x8000000000000000;
              }

              v69(v70, v96);
              a3 = (v65 + v94);
              v77 = *v81;
              (*v81)(v90, v19);
              v77(v87, v19);
              if (v72 < v76)
              {
                break;
              }

              v78 = v91;
              v58 = v91;
              v64 = v89;
              a5 = v95;
              if (v65 < v92 || a3 >= v92)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v65 != v92)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v61 = v58;
              v59 = v94;
              v63 = v86;
              if (v78 <= v93)
              {
                v62 = v86;
                goto LABEL_81;
              }
            }

            v62 = v89;
            a5 = v95;
            if (v65 < v86 || a3 >= v86)
            {
              swift_arrayInitWithTakeFrontToBack();
              v58 = v85;
            }

            else
            {
              v58 = v85;
              if (v65 != v86)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v61 = v92;
            v59 = v94;
          }

          while (v92 > v93);
        }

LABEL_81:
        v99 = v62;
        v97 = v58;
LABEL_82:
        sub_20A40(&v99, &v98, &v97, &type metadata accessor for SessionGroundTruths);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v34 = v93;
    goto LABEL_50;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_22554(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_20A2C(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2F3B8() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = (v10 + v15 * v14);

      sub_21CF4(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_22714(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v174 = a4;
  v172 = a1;
  v202 = sub_2EC08();
  v7 = *(v202 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v202);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v201 = &v170 - v13;
  v14 = __chkstk_darwin(v12);
  v185 = &v170 - v15;
  __chkstk_darwin(v14);
  v17 = &v170 - v16;
  v203 = sub_2F3B8();
  v18 = *(v203 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v203);
  v176 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v192 = &v170 - v23;
  v24 = __chkstk_darwin(v22);
  v194 = &v170 - v25;
  v26 = __chkstk_darwin(v24);
  v200 = &v170 - v27;
  v28 = __chkstk_darwin(v26);
  v188 = &v170 - v29;
  v30 = __chkstk_darwin(v28);
  v184 = &v170 - v31;
  v32 = __chkstk_darwin(v30);
  v170 = &v170 - v33;
  __chkstk_darwin(v32);
  v171 = &v170 - v34;
  v205 = &_swiftEmptyArrayStorage;
  v182 = a3;
  v35 = a3[1];
  v204 = a5;
  if (v35 >= 1)
  {
    v196 = v18 + 2;
    v197 = (v18 + 1);
    v199 = (v7 + 8);
    v195 = (v18 + 4);
    swift_bridgeObjectRetain_n();
    v36 = 0;
    v189 = &_swiftEmptyArrayStorage;
    v198 = v11;
    v37 = v201;
    v183 = v17;
    v181 = v18;
    v38 = v11;
    v39 = v17;
    while (1)
    {
      if (v36 + 1 >= v35)
      {
        v68 = v36 + 1;
        v69 = v174;
        v70 = v203;
      }

      else
      {
        v186 = v35;
        v40 = *v182;
        v41 = v18[9];
        v42 = *v182 + v41 * (v36 + 1);
        v43 = v18[2];
        v173 = v36;
        v44 = v171;
        v45 = v203;
        v43(v171, v42, v203);
        v179 = v40;
        v193 = v41;
        v46 = v40 + v41 * v173;
        v47 = v170;
        v190 = v43;
        v43(v170, v46, v45);
        v48 = v187;
        LODWORD(v191) = sub_1699C(v44, v47, v204);
        v187 = v48;
        if (v48)
        {
          v169 = *v197;
          (*v197)(v47, v45);
          v169(v171, v45);
          goto LABEL_122;
        }

        v49 = *v197;
        (*v197)(v47, v45);
        v180 = v49;
        (v49)(v171, v45);
        v50 = v173 + 2;
        v51 = v193;
        v52 = v179 + v193 * (v173 + 2);
        do
        {
          if (v186 == v50)
          {
            v68 = v186;
            goto LABEL_25;
          }

          v56 = v203;
          v57 = v190;
          (v190)(v184, v52, v203);
          v57(v188, v42, v56);
          sub_2F398();
          v58 = v204;
          if (*(v204 + 16))
          {
            v59 = sub_2A2F4(v39);
            v60 = *v199;
            if (v61)
            {
              v62 = *(*(v58 + 56) + 8 * v59);
            }

            else
            {
              v62 = 0x8000000000000000;
            }

            v63 = v185;
            v60(v39, v202);
          }

          else
          {
            v60 = *v199;
            v62 = 0x8000000000000000;
            v63 = v185;
            (*v199)(v39, v202);
          }

          v64 = v63;
          sub_2F398();
          v65 = v204;
          if (*(v204 + 16))
          {
            v66 = sub_2A2F4(v64);
            if (v67)
            {
              v53 = *(*(v65 + 56) + 8 * v66);
            }

            else
            {
              v53 = 0x8000000000000000;
            }

            v37 = v201;
          }

          else
          {
            v53 = 0x8000000000000000;
          }

          v60(v185, v202);
          v54 = v203;
          v55 = v180;
          (v180)(v188, v203);
          v55(v184, v54);
          ++v50;
          v51 = v193;
          v52 += v193;
          v42 += v193;
          v39 = v183;
        }

        while (((v191 ^ (v62 >= v53)) & 1) != 0);
        v68 = v50 - 1;
LABEL_25:
        v69 = v174;
        v38 = v198;
        v18 = v181;
        v36 = v173;
        if ((v191 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v68 < v173)
        {
          goto LABEL_143;
        }

        if (v173 < v68)
        {
          v71 = v51 * (v68 - 1);
          v72 = v68 * v51;
          v186 = v68;
          v73 = v173;
          v74 = v173 * v51;
          v70 = v203;
          do
          {
            if (v73 != --v68)
            {
              v75 = *v182;
              if (!*v182)
              {
                goto LABEL_146;
              }

              v76 = *v195;
              (*v195)(v176, v75 + v74, v203);
              if (v74 < v71 || v75 + v74 >= v75 + v72)
              {
                v70 = v203;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v70 = v203;
                if (v74 != v71)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v76((v75 + v71), v176, v70);
              v69 = v174;
              v51 = v193;
            }

            ++v73;
            v71 -= v51;
            v72 -= v51;
            v74 += v51;
          }

          while (v73 < v68);
          v38 = v198;
          v37 = v201;
          v39 = v183;
          v18 = v181;
          v36 = v173;
          v68 = v186;
        }

        else
        {
LABEL_38:
          v70 = v203;
        }
      }

      v77 = v182[1];
      if (v68 >= v77)
      {
        goto LABEL_69;
      }

      if (__OFSUB__(v68, v36))
      {
        goto LABEL_140;
      }

      if (v68 - v36 >= v69)
      {
        goto LABEL_69;
      }

      if (__OFADD__(v36, v69))
      {
        goto LABEL_141;
      }

      if (v36 + v69 < v77)
      {
        v77 = v36 + v69;
      }

      if (v77 < v36)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_145:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_146:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_147:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_148:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      v177 = v77;
      if (v68 == v77)
      {
        goto LABEL_69;
      }

      v78 = *v182;
      v79 = v18[9];
      v193 = v18[2];
      v80 = (v78 + v79 * (v68 - 1));
      v190 = -v79;
      v173 = v36;
      v81 = v36 - v68;
      v191 = v78;
      v175 = v79;
      v82 = v78 + v68 * v79;
      v83 = v194;
      while (2)
      {
        v186 = v68;
        v178 = v82;
        v84 = v82;
        v179 = v81;
        v180 = v80;
        while (1)
        {
          v85 = v37;
          v86 = v193;
          (v193)(v200, v84, v70);
          v86(v83, v80, v70);
          sub_2F398();
          v87 = v204;
          if (*(v204 + 16))
          {
            v88 = sub_2A2F4(v85);
            v89 = *v199;
            if (v90)
            {
              v91 = *(*(v87 + 56) + 8 * v88);
              goto LABEL_57;
            }
          }

          else
          {
            v89 = *v199;
          }

          v91 = 0x8000000000000000;
LABEL_57:
          v89(v201, v202);
          v92 = v198;
          sub_2F398();
          v93 = v204;
          if (*(v204 + 16))
          {
            v94 = sub_2A2F4(v92);
            v96 = (v95 & 1) != 0 ? *(*(v93 + 56) + 8 * v94) : 0x8000000000000000;
            v97 = v198;
          }

          else
          {
            v96 = 0x8000000000000000;
            v97 = v92;
          }

          v89(v97, v202);
          v98 = *v197;
          v99 = v83;
          v100 = v203;
          (*v197)(v99, v203);
          v98(v200, v100);
          if (v91 >= v96)
          {
            break;
          }

          if (!v191)
          {
            goto LABEL_144;
          }

          v101 = *v195;
          v102 = v192;
          v70 = v203;
          (*v195)(v192, v84, v203);
          swift_arrayInitWithTakeFrontToBack();
          v101(v80, v102, v70);
          v80 += v190;
          v84 += v190;
          v103 = __CFADD__(v81++, 1);
          v37 = v201;
          v83 = v194;
          if (v103)
          {
            goto LABEL_50;
          }
        }

        v37 = v201;
        v70 = v203;
        v83 = v194;
LABEL_50:
        v68 = v186 + 1;
        v80 = &v180[v175];
        v81 = v179 - 1;
        v82 = v178 + v175;
        if (v186 + 1 != v177)
        {
          continue;
        }

        break;
      }

      v39 = v183;
      v18 = v181;
      v36 = v173;
      v38 = v198;
      v68 = v177;
LABEL_69:
      if (v68 < v36)
      {
        goto LABEL_139;
      }

      v104 = v39;
      v105 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v189 = sub_20B28(0, *(v189 + 2) + 1, 1, v189);
      }

      v108 = *(v189 + 2);
      v107 = *(v189 + 3);
      v109 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        v189 = sub_20B28((v107 > 1), v108 + 1, 1, v189);
      }

      v38 = v105;
      v39 = v104;
      v110 = v189;
      *(v189 + 2) = v109;
      v111 = v110 + 32;
      v112 = &v110[16 * v108 + 32];
      v113 = v177;
      *v112 = v36;
      *(v112 + 1) = v113;
      v205 = v110;
      v193 = *v172;
      if (!v193)
      {
        goto LABEL_147;
      }

      if (v108)
      {
        while (1)
        {
          v114 = v109 - 1;
          if (v109 >= 4)
          {
            break;
          }

          if (v109 == 3)
          {
            v115 = *(v189 + 4);
            v116 = *(v189 + 5);
            v125 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            v118 = v125;
LABEL_89:
            if (v118)
            {
              goto LABEL_130;
            }

            v131 = &v189[16 * v109];
            v133 = *v131;
            v132 = *(v131 + 1);
            v134 = __OFSUB__(v132, v133);
            v135 = v132 - v133;
            v136 = v134;
            if (v134)
            {
              goto LABEL_133;
            }

            v137 = &v111[16 * v114];
            v139 = *v137;
            v138 = *(v137 + 1);
            v125 = __OFSUB__(v138, v139);
            v140 = v138 - v139;
            if (v125)
            {
              goto LABEL_136;
            }

            if (__OFADD__(v135, v140))
            {
              goto LABEL_137;
            }

            if (v135 + v140 >= v117)
            {
              if (v117 < v140)
              {
                v114 = v109 - 2;
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          v141 = &v189[16 * v109];
          v143 = *v141;
          v142 = *(v141 + 1);
          v125 = __OFSUB__(v142, v143);
          v135 = v142 - v143;
          v136 = v125;
LABEL_103:
          if (v136)
          {
            goto LABEL_132;
          }

          v144 = &v111[16 * v114];
          v146 = *v144;
          v145 = *(v144 + 1);
          v125 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v125)
          {
            goto LABEL_135;
          }

          if (v147 < v135)
          {
            goto LABEL_3;
          }

LABEL_110:
          if (v114 - 1 >= v109)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          v152 = *v182;
          if (!*v182)
          {
            goto LABEL_145;
          }

          v153 = &v111[16 * v114 - 16];
          v154 = *v153;
          v155 = v111;
          v156 = &v111[16 * v114];
          v157 = *(v156 + 1);
          v158 = v18[9];
          v159 = v152 + v158 * *v153;
          v160 = v152 + v158 * *v156;
          v161 = (v152 + v158 * v157);
          v162 = v204;

          v163 = v159;
          v164 = v187;
          sub_21CF4(v163, v160, v161, v193, v162);

          v187 = v164;
          if (v164)
          {
            v205 = v189;
            goto LABEL_122;
          }

          if (v157 < v154)
          {
            goto LABEL_125;
          }

          v165 = *(v189 + 2);
          if (v114 > v165)
          {
            goto LABEL_126;
          }

          *v153 = v154;
          *(v153 + 1) = v157;
          if (v114 >= v165)
          {
            goto LABEL_127;
          }

          v109 = v165 - 1;
          memmove(v156, v156 + 16, 16 * (v165 - 1 - v114));
          *(v189 + 2) = v165 - 1;
          v38 = v198;
          v39 = v183;
          v18 = v181;
          v111 = v155;
          if (v165 <= 2)
          {
LABEL_3:
            v205 = v189;
            goto LABEL_4;
          }
        }

        v119 = &v111[16 * v109];
        v120 = *(v119 - 8);
        v121 = *(v119 - 7);
        v125 = __OFSUB__(v121, v120);
        v122 = v121 - v120;
        if (v125)
        {
          goto LABEL_128;
        }

        v124 = *(v119 - 6);
        v123 = *(v119 - 5);
        v125 = __OFSUB__(v123, v124);
        v117 = v123 - v124;
        v118 = v125;
        if (v125)
        {
          goto LABEL_129;
        }

        v126 = &v189[16 * v109];
        v128 = *v126;
        v127 = *(v126 + 1);
        v125 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v125)
        {
          goto LABEL_131;
        }

        v125 = __OFADD__(v117, v129);
        v130 = v117 + v129;
        if (v125)
        {
          goto LABEL_134;
        }

        if (v130 >= v122)
        {
          v148 = &v111[16 * v114];
          v150 = *v148;
          v149 = *(v148 + 1);
          v125 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v125)
          {
            goto LABEL_138;
          }

          if (v117 < v151)
          {
            v114 = v109 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_89;
      }

LABEL_4:
      v35 = v182[1];
      v36 = v177;
      v37 = v201;
      if (v177 >= v35)
      {
        goto LABEL_120;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_120:
  v166 = *v172;
  if (!*v172)
  {
    goto LABEL_148;
  }

  v167 = v204;

  sub_22554(&v205, v166, v182, v167);

LABEL_122:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_23554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v69 = a5;
  v68 = sub_2EC08();
  v9 = *(v68 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v68);
  v67 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = sub_2F3B8();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v70 = &v49 - v20;
  result = __chkstk_darwin(v19);
  v24 = &v49 - v22;
  v51 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v66 = (v9 + 8);
    v61 = (v26 - 8);
    v62 = v27;
    v63 = &v49 - v22;
    v64 = v26;
    v57 = (v26 + 16);
    v58 = v25;
    v29 = v25 + v28 * (a3 - 1);
    v56 = -v28;
    v30 = a1 - a3;
    v50 = v28;
    v31 = v25 + v28 * a3;
    v60 = v15;
LABEL_5:
    v54 = v29;
    v55 = a3;
    v52 = v31;
    v53 = v30;
    v32 = v29;
    while (1)
    {
      v33 = v62;
      v62(v24, v31, v15);
      v33(v70, v32, v15);
      sub_2F398();
      v34 = v69;
      if (!*(v69 + 16))
      {
        break;
      }

      v35 = sub_2A2F4(v14);
      v36 = *v66;
      if ((v37 & 1) == 0)
      {
        goto LABEL_10;
      }

      v38 = *(*(v34 + 56) + 8 * v35);
LABEL_11:
      v65 = v38;
      v39 = v14;
      v36(v14, v68);
      v40 = v67;
      sub_2F398();
      v41 = v69;
      if (*(v69 + 16) && (v42 = sub_2A2F4(v40), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);
      }

      else
      {
        v44 = 0x8000000000000000;
      }

      v36(v67, v68);
      v15 = v60;
      v45 = *v61;
      (*v61)(v70, v60);
      v24 = v63;
      result = v45(v63, v15);
      v14 = v39;
      if (v65 >= v44)
      {
LABEL_4:
        a3 = v55 + 1;
        v29 = v54 + v50;
        v30 = v53 - 1;
        v31 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        __break(1u);
        return result;
      }

      v46 = *v57;
      v47 = v59;
      (*v57)(v59, v31, v15);
      swift_arrayInitWithTakeFrontToBack();
      result = (v46)(v32, v47, v15);
      v32 += v56;
      v31 += v56;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_4;
      }
    }

    v36 = *v66;
LABEL_10:
    v38 = 0x8000000000000000;
    goto LABEL_11;
  }

  return result;
}

Swift::Int sub_23934(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_30288(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_2F3B8();
        v8 = sub_30038();
        v8[2] = v7;
      }

      v9 = *(sub_2F3B8() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_22714(v10, v11, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_23554(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_23AB8(void **a1, uint64_t a2)
{
  v4 = *(sub_2F3B8() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_20F8C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_23934(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

void sub_23BA0()
{
  if (qword_3CC30 != -1)
  {
    swift_once();
  }

  v0 = sub_2FF48();
  sub_4FD8(v0, qword_3D460);
  oslog = sub_2FF28();
  v1 = sub_300C8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    if (qword_3CC28 != -1)
    {
      swift_once();
    }

    *(v2 + 4) = sub_29C64(qword_3D450, *algn_3D458, &v5);
    _os_log_impl(&dword_0, oslog, v1, "%s run() finished", v2, 0xCu);
    sub_5448(v3);
  }
}

uint64_t sub_23D64(uint64_t a1)
{
  v2 = sub_2EC08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_23F00(&qword_3CFB0, &type metadata accessor for UUID);
  result = sub_300A8();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1C3E8(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_23F00(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_23F4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24000()
{
  sub_1B98(&qword_3D7C8, &qword_31168);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3D790 = 91;
  *algn_3D798 = 0xE100000000000000;
}

uint64_t sub_24090(__objc2_class_ro *a1)
{
  v122 = a1;
  v114 = sub_2EC08();
  v99 = *(v114 - 8);
  v1 = *(v99 + 64);
  __chkstk_darwin(v114);
  v113 = v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B98(&qword_3D7B8, &qword_31158);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v108 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  *&v119 = v96 - v7;
  v102 = sub_2F578();
  v105 = *(v102 - 8);
  v8 = *(v105 + 64);
  v9 = __chkstk_darwin(v102);
  v109 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v103 = v96 - v12;
  v13 = __chkstk_darwin(v11);
  v100 = v96 - v14;
  v15 = __chkstk_darwin(v13);
  v107 = v96 - v16;
  v17 = __chkstk_darwin(v15);
  v101 = v96 - v18;
  __chkstk_darwin(v17);
  v124 = v96 - v19;
  sub_2F988();
  v20 = sub_2F978();
  v125 = sub_1B98(&qword_3D7C0, &qword_31160);
  v21 = sub_2F3C8();
  v22 = *(v21 - 8);
  v123 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v121 = xmmword_30830;
  *(v24 + 16) = xmmword_30830;
  v25 = *(v22 + 104);
  v25(v24 + v23, enum case for ContactSuggestionTag.domainPhoneCall(_:), v21);
  sub_2C780(v24);
  swift_setDeallocating();
  v118 = *(v22 + 8);
  (v118)(v24 + v23, v21);
  swift_deallocClassInstance();
  v120 = sub_2F968();

  v26 = swift_allocObject();
  *(v26 + 16) = v121;
  v25(v26 + v23, enum case for ContactSuggestionTag.domainMessages(_:), v21);
  sub_2C780(v26);
  swift_setDeallocating();
  (v118)(v26 + v23, v21);
  v27 = v104;
  swift_deallocClassInstance();
  v98 = v20;
  v28 = sub_2F968();

  v126 = v120;
  sub_27CD8(v28);
  v29 = v126;
  v30 = *(v27 + 4);
  sub_5550(v27, *(v27 + 3));
  sub_2F0E8();
  sub_5550(&v126, v127);
  v31 = sub_2F7C8();
  sub_5448(&v126);
  if (qword_3CC40 != -1)
  {
LABEL_46:
    swift_once();
  }

  v32 = sub_2FF48();
  v112 = sub_4FD8(v32, qword_3D7A0);
  v33 = sub_2FF28();
  LOBYTE(v34) = sub_300D8();
  v35 = os_log_type_enabled(v33, v34);
  v36 = &SiriPrivateLearningInferencePlugin;
  v120 = v31;
  if (!v35)
  {

    v38 = v102;
    v39 = v103;
    goto LABEL_6;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v126 = v38;
  *v37 = 136315138;
  v39 = v103;
  if (qword_3CC38 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *(v37 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v126);
    _os_log_impl(&dword_0, v33, v34, "%s Generated Suggestions:", v37, 0xCu);
    sub_5448(v38);

    v38 = v102;
    v31 = v120;
LABEL_6:
    sub_EF84(8224, 0xE200000000000000, v29);

    v40 = sub_2FF28();
    v41 = sub_300D8();
    v42 = &loc_30000;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v126 = v44;
      *v43 = 136315394;
      if (v36[43].base_meths != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v126);
      *(v43 + 12) = 2048;
      v31 = v120;
      *(v43 + 14) = v120[2];

      _os_log_impl(&dword_0, v40, v41, "%s Combining with %ld existing PLUS suggestions from disk:", v43, 0x16u);
      sub_5448(v44);

      v38 = v102;
    }

    else
    {
    }

    sub_EF84(8224, 0xE200000000000000, v31);
    v45 = *(v27 + 4);
    sub_5550(v27, *(v27 + 3));
    sub_2F0D8();
    v46 = sub_2F508();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v111 = sub_2F4F8();
    v49 = *(v29 + 16);
    v97 = v49;
    if (v49)
    {
      v126 = _swiftEmptyArrayStorage;
      sub_2BB1C(0, v49, 0);
      v110 = 0;
      v125 = v126;
      *&v121 = *(v105 + 16);
      v50 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v51 = v49;
      v96[1] = v29;
      v117 = v50;
      v52 = v29 + v50;
      v53 = (v105 + 48);
      v115 = *(v105 + 72);
      v122 = (v105 + 16);
      v123 = (v105 + 32);
      v106 = (v99 + 8);
      v54 = v101;
      v116 = (v105 + 48);
      v118 = (v105 + 8);
      while (1)
      {
        v55 = (v121)(v54, v52, v38);
        __chkstk_darwin(v55);
        v96[-2] = v54;
        v56 = v119;
        v57 = v120;
        sub_25640(sub_259EC, v120, v119);
        v58 = *v53;
        if ((*v53)(v56, 1, v38) == 1)
        {
          v59 = sub_25A0C(v56);
          __chkstk_darwin(v59);
          v96[-2] = v54;
          v60 = v108;
          sub_25640(sub_25A74, v57, v108);
          if (v58(v60, 1, v38) == 1)
          {
            sub_25A0C(v60);
            v61 = v113;
            sub_2EBF8();
            sub_2F4D8();
            (*v106)(v61, v114);
            (v121)(v124, v54, v38);
            (*v118)(v54, v38);
          }

          else
          {
            v27 = v100;
            (*v123)(v100, v60, v38);
            sub_2F518();
            v31 = v113;
            sub_2EBF8();
            sub_2F4D8();
            (*v106)(v31, v114);
            v29 = v118;
            v64 = *v118;
            (*v118)(v27, v38);
            if (__OFADD__(v110, 1))
            {
              __break(1u);
              goto LABEL_46;
            }

            ++v110;
            v54 = v101;
            v64(v101, v38);
          }
        }

        else
        {
          v62 = v107;
          (*v123)(v107, v56, v38);
          sub_2F518();
          v63 = *v118;
          (*v118)(v62, v38);
          v63(v54, v38);
        }

        v65 = v125;
        v126 = v125;
        v67 = v125[2];
        v66 = v125[3];
        if (v67 >= v66 >> 1)
        {
          sub_2BB1C(v66 > 1, v67 + 1, 1);
          v65 = v126;
        }

        v65[2] = v67 + 1;
        v125 = v65;
        v68 = v115;
        (*v123)(v65 + v117 + v67 * v115, v124, v38);
        v52 += v68;
        --v51;
        v53 = v116;
        if (!v51)
        {

          v27 = v104;
          v39 = v103;
          v36 = &SiriPrivateLearningInferencePlugin;
          v42 = &loc_30000;
          goto LABEL_24;
        }
      }
    }

    v110 = 0;
    v125 = _swiftEmptyArrayStorage;
LABEL_24:
    v69 = sub_2FF28();
    v70 = sub_300D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v126 = v72;
      *v71 = 136315138;
      if (v36[43].base_meths != -1)
      {
        swift_once();
      }

      v36 = v42;
      *(v71 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v126);
      _os_log_impl(&dword_0, v69, v70, "%s Writing combined suggestions to disk:", v71, 0xCu);
      sub_5448(v72);
    }

    else
    {
      v36 = v42;
    }

    v29 = v105;
    v73 = v125;
    sub_EF84(8224, 0xE200000000000000, v125);
    v74 = *(v27 + 4);
    sub_5550(v27, *(v27 + 3));
    sub_2F0E8();
    v33 = v127;
    v37 = v128;
    LOBYTE(v34) = sub_5550(&v126, v127);
    sub_2F798();
    sub_5448(&v126);
    v76 = v73[2];
    if (v76)
    {
      v77 = *(v29 + 16);
      v29 += 16;
      v33 = (v125 + ((*(v29 + 64) + 32) & ~*(v29 + 64)));
      v78 = *(v29 + 56);
      v123 = (v29 - 8);
      v124 = v78;
      v120 = (v99 + 8);
      *&v75 = v36[29].name;
      v119 = v75;
      v36 = v77;
      v105 = v29;
      v122 = v77;
      (v77)(v39, v33, v38);
      while (1)
      {
        v79 = *(v27 + 4);
        sub_5550(v27, *(v27 + 3));
        sub_2F0E8();
        v37 = v127;
        sub_5550(&v126, v127);
        LOBYTE(v34) = sub_2F7B8();
        sub_5448(&v126);
        if (v34)
        {
          (*v123)(v39, v38);
        }

        else
        {
          v80 = v39;
          v81 = v27;
          v82 = v109;
          (v36)(v109, v80, v38);
          v83 = v80;
          v84 = sub_2FF28();
          v37 = sub_300D8();
          if (os_log_type_enabled(v84, v37))
          {
            v85 = swift_slowAlloc();
            *&v121 = swift_slowAlloc();
            v126 = v121;
            *v85 = v119;
            if (qword_3CC38 != -1)
            {
              swift_once();
            }

            *(v85 + 4) = sub_29C64(qword_3D790, *algn_3D798, &v126);
            *(v85 + 12) = 2080;
            v86 = v113;
            sub_2F558();
            sub_25A94(&qword_3D758, &type metadata accessor for UUID);
            v87 = v114;
            v88 = sub_30298();
            v90 = v89;
            (*v120)(v86, v87);
            v91 = v82;
            v92 = *v123;
            v38 = v102;
            (*v123)(v91, v102);
            v34 = sub_29C64(v88, v90, &v126);

            *(v85 + 14) = v34;
            _os_log_impl(&dword_0, v84, v37, "%s Unable to save PICS with id = %s to storage", v85, 0x16u);
            LOBYTE(v34) = v121;
            swift_arrayDestroy();

            v39 = v103;
            v92(v103, v38);
            v27 = v104;
            v29 = v105;
            v36 = v122;
          }

          else
          {

            v37 = v123;
            v34 = *v123;
            (*v123)(v82, v38);
            (v34)(v83, v38);
            v93 = v83;
            v36 = v122;
            v27 = v81;
            v39 = v93;
          }
        }

        v33 = &v124[v33];
        if (!--v76)
        {
          break;
        }

        (v36)(v39, v33, v38);
      }
    }

    v94 = v97 - v110;
    if (__OFSUB__(v97, v110))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v94 > 0xFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    if ((v94 | v110) < 0)
    {
      goto LABEL_49;
    }

    if (v110 <= 0xFFFFFFFFLL)
    {
      return 0;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }
}

uint64_t sub_25210()
{
  if ((sub_2F528() & 1) == 0)
  {
    return 0;
  }

  v0 = sub_2F568();
  v1 = sub_2F568();
  v2 = sub_25290(v0, v1);

  return v2 & 1;
}

uint64_t sub_25290(uint64_t a1, uint64_t a2)
{
  v4 = sub_2F3C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_25A94(&qword_3D7D0, &type metadata accessor for ContactSuggestionTag);
      v28 = sub_2FF58();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_25A94(&qword_3D7D8, &type metadata accessor for ContactSuggestionTag);
        v33 = sub_2FF78();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25640@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_2F578();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_25814()
{
  if ((sub_2F538() & 1) == 0)
  {
    return 0;
  }

  sub_2F568();
  sub_2F568();
  sub_2F3C8();
  sub_25A94(&qword_3D7D0, &type metadata accessor for ContactSuggestionTag);
  v0 = sub_2FE68();

  return v0 & 1;
}

uint64_t sub_25924()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D7A0);
  v1 = sub_4FD8(v0, qword_3D7A0);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25A0C(uint64_t a1)
{
  v2 = sub_1B98(&qword_3D7B8, &qword_31158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FF && *(a1 + 9))
  {
    return (*a1 + 511);
  }

  v3 = ((*(a1 + 8) >> 7) | (2 * ((*a1 >> 60) & 0xF | (16 * ((*(a1 + 8) >> 3) & 0xF))))) ^ 0x1FF;
  if (v3 >= 0x1FE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FE)
  {
    *(result + 8) = 0;
    *result = a2 - 511;
    if (a3 >= 0x1FF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1);
      *result = v3 << 60;
      *(result + 8) = ((v3 - (a2 << 8)) >> 1) & 0xF8;
    }
  }

  return result;
}

uint64_t sub_25BC8(uint64_t result, char a2)
{
  v2 = *(result + 8) & 7 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFFFuLL;
  *(result + 8) = v2;
  return result;
}

Swift::Int sub_25BF8()
{
  v1 = *v0;
  sub_30318();
  sub_30328(v1);
  return sub_30338();
}

Swift::Int sub_25C6C()
{
  v1 = *v0;
  sub_30318();
  sub_30328(v1);
  return sub_30338();
}

uint64_t sub_25CB0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25ED8(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InferencePluginErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InferencePluginErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E84()
{
  result = qword_3D7E0;
  if (!qword_3D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7E0);
  }

  return result;
}

uint64_t sub_25ED8(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t *sub_25EE8(uint64_t *a1)
{
  v3 = *v1;
  sub_54EC(a1, (v1 + 4));
  v4 = sub_2F098();
  v6 = v5;
  sub_5448(a1);
  v1[2] = v4;
  v1[3] = v6;
  return v1;
}

double sub_25F70@<D0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1)
  {
    if (qword_3CC48 != -1)
    {
      swift_once();
    }

    v9 = sub_2FF48();
    sub_4FD8(v9, qword_3D7E8);

    v10 = sub_2FF28();
    v11 = sub_300D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_29C64(*(a4 + 16), *(a4 + 24), &v21);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29C64(a2, a3, &v21);
      _os_log_impl(&dword_0, v10, v11, "%s %s enabled", v12, 0x16u);
      swift_arrayDestroy();
    }

    v13 = sub_2FD88();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v21 = sub_2FD78();
    sub_263C0();
    sub_2F838();
  }

  else
  {
    if (qword_3CC48 != -1)
    {
      swift_once();
    }

    v17 = sub_2FF48();
    sub_4FD8(v17, qword_3D7E8);

    v18 = sub_2FF28();
    v19 = sub_300D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_29C64(*(a4 + 16), *(a4 + 24), &v21);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_29C64(a2, a3, &v21);
      _os_log_impl(&dword_0, v18, v19, "%s %s disabled", v20, 0x16u);
      swift_arrayDestroy();
    }

    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26294(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_25EE8(a1);
  return v2;
}

uint64_t sub_262F8()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D7E8);
  v1 = sub_4FD8(v0, qword_3D7E8);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_263C0()
{
  result = qword_3D900;
  if (!qword_3D900)
  {
    sub_2FD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D900);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PluginRunSummary(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginRunSummary(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginRunSummary(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2647C()
{
  v0 = sub_2F258();
  v2 = v1;
  sub_2F238();
  sub_272FC(&qword_3DA70, &type metadata accessor for MediaGroundTruth);
  if (v0 == sub_2F268() && v2 == v3)
  {
    goto LABEL_9;
  }

  v5 = sub_302A8();

  if ((v5 & 1) == 0)
  {
    v7 = sub_2F258();
    v9 = v8;
    sub_2F6C8();
    sub_272FC(&qword_3D258, &type metadata accessor for MediaFeedbackGroundTruth);
    if (v7 != sub_2F268() || v9 != v10)
    {
      v6 = sub_302A8();
      goto LABEL_10;
    }

LABEL_9:
    v6 = 1;
LABEL_10:

    return v6 & 1;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_26604(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_26644(a1);
  return v2;
}

void *sub_26644(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = a1[4];
  sub_5550(a1, a1[3]);
  sub_2F0D8();
  v6 = sub_2FDC8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v1[9] = sub_2FDB8();
  sub_54EC(a1, v13);
  sub_54EC(v13, (v1 + 4));
  v9 = sub_2F098();
  v11 = v10;
  sub_5448(v13);
  v2[2] = v9;
  v2[3] = v11;
  sub_5448(a1);
  return v2;
}

uint64_t sub_26730()
{
  v1 = v0[8];
  sub_5550(v0 + 4, v0[7]);
  sub_2F0A8();
  sub_5550(v6, v6[3]);
  v2 = sub_2F038();
  v5[3] = sub_2ECB8();
  v5[4] = &protocol witness table for AnyFeature;
  v5[0] = v2;
  v3 = sub_2ED48();
  sub_5448(v5);
  sub_5448(v6);
  return v3 & 1;
}

uint64_t sub_267DC()
{
  sub_1B98(&qword_3D0F8, &unk_30C20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_30830;
  v1 = sub_2F478();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_2F468();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_272FC(&qword_3DA68, &type metadata accessor for MediaFeatureExtractor);
  *(v0 + 32) = v4;
  return v0;
}

void *sub_26898()
{
  v1 = v0;
  v2 = sub_2EE28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[8];
  sub_5550(v0 + 4, v0[7]);
  sub_2F0A8();
  sub_5550(&v48, *(&v49 + 1));
  v8 = sub_2F028();
  v46 = sub_2ECB8();
  v47 = &protocol witness table for AnyFeature;
  v38 = v46;
  *&v45 = v8;
  v39 = sub_2ED48();
  sub_5448(&v45);
  sub_5448(&v48);
  if (qword_3CC50 != -1)
  {
    swift_once();
  }

  v9 = sub_2FF48();
  sub_4FD8(v9, qword_3D908);
  v10 = sub_2FF28();
  v11 = sub_300D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v48 = v13;
    *v12 = 136315138;
    if (v39)
    {
      v14 = 0x44454C42414E45;
    }

    else
    {
      v14 = 0x44454C4241534944;
    }

    v15 = v2;
    v16 = v3;
    if (v39)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    v18 = sub_29C64(v14, v17, &v48);
    v3 = v16;
    v2 = v15;

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Media In App Followup is %s", v12, 0xCu);
    sub_5448(v13);
  }

  v19 = v1[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  sub_5550(&v48, *(&v49 + 1));
  sub_2F088();
  sub_2ED38();
  (*(v3 + 8))(v6, v2);
  sub_5448(&v48);
  v20 = v1[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  sub_5550(&v48, *(&v49 + 1));
  v21 = sub_2F058();
  v22 = v38;
  v46 = v38;
  v47 = &protocol witness table for AnyFeature;
  *&v45 = v21;
  sub_2ED48();
  sub_5448(&v45);
  sub_5448(&v48);
  v23 = v1[8];
  sub_5550(v1 + 4, v1[7]);
  sub_2F0A8();
  sub_5550(&v48, *(&v49 + 1));
  v24 = sub_2F078();
  v46 = v22;
  v47 = &protocol witness table for AnyFeature;
  *&v45 = v24;
  sub_2ED48();
  sub_5448(&v45);
  sub_5448(&v48);
  v25 = sub_2FCE8();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v48 = sub_2FCD8();
  sub_272FC(&qword_3DA58, &type metadata accessor for MediaEntityPartialRepetitionDefinition);
  sub_2F838();

  v28 = v1[9];
  v29 = type metadata accessor for MusicEntityGroundTruthGenerator();
  v30 = swift_allocObject();

  v31 = sub_48EC(_swiftEmptyArrayStorage);
  *(v30 + 32) = v39 & 1;
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  v44[3] = v29;
  v44[4] = sub_272FC(&qword_3DA60, type metadata accessor for MusicEntityGroundTruthGenerator);
  v44[0] = v30;
  sub_27224(&v43, &v48);
  v41 = v49;
  v40 = v48;
  v42 = v50;
  if (*(&v49 + 1))
  {
    sub_5BA4(&v40, &v45);
    v32 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_29580(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_29580((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    sub_5BA4(&v45, &v32[5 * v34 + 4]);
  }

  else
  {
    sub_27294(&v40);
    v32 = _swiftEmptyArrayStorage;
  }

  sub_27224(v44, &v48);
  v41 = v49;
  v40 = v48;
  v42 = v50;
  if (*(&v49 + 1))
  {
    sub_5BA4(&v40, &v45);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_29580(0, v32[2] + 1, 1, v32);
    }

    v36 = v32[2];
    v35 = v32[3];
    if (v36 >= v35 >> 1)
    {
      v32 = sub_29580((v35 > 1), v36 + 1, 1, v32);
    }

    v32[2] = v36 + 1;
    sub_5BA4(&v45, &v32[5 * v36 + 4]);
  }

  else
  {
    sub_27294(&v40);
  }

  sub_1B98(&qword_3D3E8, &qword_30E48);
  swift_arrayDestroy();
  return v32;
}

uint64_t sub_26F8C()
{
  sub_1B98(&qword_3DA50, qword_31450);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_30830;
  sub_54EC(v0 + 32, v7);
  v2 = sub_2F688();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_2F698();
  *(v1 + 56) = v2;
  *(v1 + 64) = &protocol witness table for MediaEvaluationFramework;
  *(v1 + 32) = v5;
  return v1;
}

uint64_t sub_2702C()
{
  sub_1B98(&qword_3DA48, &unk_31730);
  v0 = sub_2F1F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_30820;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for EventStreamType.nowPlayingStream(_:), v0);
  v6(v5 + v2, enum case for EventStreamType.playMediaIntentStreamWithAttachedNowPlayingEvents(_:), v0);
  return v4;
}

uint64_t sub_2715C()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3D908);
  v1 = sub_4FD8(v0, qword_3D908);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_27224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B98(&qword_3D3E8, &qword_30E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27294(uint64_t a1)
{
  v2 = sub_1B98(&qword_3D3E8, &qword_30E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27344()
{
  sub_5448(v0 + 2);
  sub_5448(v0 + 7);
  sub_5448(v0 + 12);
  sub_5448(v0 + 17);
  sub_5448(v0 + 22);
  v1 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin41SiriPrivateLearningInferencePluginContext_uflCoreAnalyticsLogLevel;
  v2 = sub_2EC58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriPrivateLearningInferencePluginContext()
{
  result = qword_3DAA0;
  if (!qword_3DAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2745C()
{
  result = sub_2EC58();
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

uint64_t sub_275B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC34SiriPrivateLearningInferencePlugin41SiriPrivateLearningInferencePluginContext_uflCoreAnalyticsLogLevel;
  v5 = sub_2EC58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t *sub_27670(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v20 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v24 = &_swiftEmptyArrayStorage;
    sub_2BBA0(0, v9, 0);
    v10 = v24;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v19 = *(v11 + 56);
    do
    {
      v12(v8, v14, v4);
      v24 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_2BBA0((v15 > 1), v16 + 1, 1);
      }

      v22 = v4;
      v23 = v20;
      v17 = sub_C678(&v21);
      v12(v17, v8, v4);
      v10 = v24;
      v24[2] = v16 + 1;
      sub_1978(&v21, &v10[5 * v16 + 4]);
      (*(v11 - 8))(v8, v4);
      v14 += v19;
      --v9;
    }

    while (v9);
  }

  return v10;
}

unint64_t *sub_278C8(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v6 = a2(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v28 = &_swiftEmptyArrayStorage;
    sub_2BB60(0, v11, 0);
    v12 = v28;
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v21 = *(v14 + 56);
    do
    {
      v13(v10, v16, v6);
      v28 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_2BB60((v17 > 1), v18 + 1, 1);
      }

      v26 = v6;
      v27 = sub_2CDD0(v22, 255, v23);
      v19 = sub_C678(&v25);
      v13(v19, v10, v6);
      v12 = v28;
      v28[2] = v18 + 1;
      sub_1978(&v25, &v12[5 * v18 + 4]);
      (*(v14 - 8))(v10, v6);
      v16 += v21;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_27AA4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_295EC(result, v12, 1, v3, &qword_3D780, &qword_310B8, &qword_3DD08, &qword_317B0);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_27BB0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29804(result, v11, 1, v3, &qword_3DC98, &qword_316B8, &qword_3CF70, &unk_315C0);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B98(&qword_3CF70, &unk_315C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27D50(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_29974(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_27EAC()
{
  type metadata accessor for MessagesContactGroundTruthGenerator();
  sub_1B98(&qword_3DD18, &unk_317C0);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3DB50 = 91;
  *algn_3DB58 = 0xE100000000000000;
}

Swift::Void __swiftcall MessagesContactGroundTruthGenerator.reviewSession(session:)(Swift::OpaquePointer session)
{
  v2 = sub_1B98(&qword_3CF40, &unk_315B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v88 - v4;
  v6 = sub_2EC08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v88 - v12;
  sub_30018();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_5B38(v5, &qword_3CF40, &unk_315B0);
    return;
  }

  v91 = v13;
  v92 = v1;
  v90 = v7;
  (*(v7 + 32))(v13, v5, v6);
  v14 = &v98;
  v15 = sub_2F2E8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2F2D8();
  v99[3] = v15;
  v99[4] = &protocol witness table for MessagesClassifier;
  v99[0] = v18;
  v19 = sub_2F608();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_2F5F8();
  v100[3] = v19;
  v100[4] = &protocol witness table for EntityPromptClassifier;
  v100[0] = v22;
  sub_2F828();
  sub_1B98(&qword_3CF48, &unk_30AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_30830;
  *(inited + 32) = sub_2EFA8();
  *(inited + 40) = v24;
  isUniquelyReferenced_nonNull_native = sub_2C32C(inited);
  swift_setDeallocating();
  sub_7480(inited + 32);
  v26 = sub_2F3E8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_2F3D8();
  v96 = v26;
  v97 = &protocol witness table for EntityNodeComparator;
  v95[0] = v29;
  v95[0] = sub_2F818();
  sub_2F808();

  sub_54EC(v99, v95);
  sub_5550(v95, v96);
  v30 = sub_2F298();
  sub_5448(v95);
  v31 = *(v30 + 16);
  v32 = sub_29804(0, v31, 1, _swiftEmptyArrayStorage, &qword_3DD20, &unk_317D0, &qword_3CF50, &unk_30D70);
  v33 = v32;
  if (*(v30 + 16))
  {
    if ((v32[3] >> 1) - v32[2] < v31)
    {
      goto LABEL_59;
    }

    sub_1B98(&qword_3CF50, &unk_30D70);
    swift_arrayInitWithCopy();

    if (v31)
    {
      v34 = v33[2];
      v35 = __OFADD__(v34, v31);
      v36 = v31 + v34;
      if (v35)
      {
        __break(1u);
        goto LABEL_64;
      }

      v33[2] = v36;
    }
  }

  else
  {

    if (v31)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_54EC(v100, v95);
  sub_5550(v95, v96);
  v30 = sub_2F298();
  sub_5448(v95);
  v31 = *(v30 + 16);
  v37 = v33[2];
  v38 = v31 + v37;
  if (__OFADD__(v37, v31))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v38 <= v33[3] >> 1)
  {
    v39 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_12;
    }

LABEL_22:

    if (v31)
    {
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_23;
  }

LABEL_18:
  if (v37 <= v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v37;
  }

  v33 = sub_29804((&dword_0 + 1), v42, 1, v33, &qword_3DD20, &unk_317D0, &qword_3CF50, &unk_30D70);
  v37 = v33[2];
  if (!*(v30 + 16))
  {
    goto LABEL_22;
  }

LABEL_12:
  if (((v33[3] >> 1) - v37) < v31)
  {
    goto LABEL_60;
  }

  sub_1B98(&qword_3CF50, &unk_30D70);
  swift_arrayInitWithCopy();

  if (v31)
  {
    v40 = v33[2];
    v35 = __OFADD__(v40, v31);
    v41 = v31 + v40;
    if (!v35)
    {
      v33[2] = v41;
      goto LABEL_23;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_23:
  sub_54EC(&v101, v95);
  sub_5550(v95, v96);
  v30 = sub_2F298();
  sub_5448(v95);
  v31 = *(v30 + 16);
  v43 = v33[2];
  v44 = v31 + v43;
  if (__OFADD__(v43, v31))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v44 <= v33[3] >> 1)
  {
    v45 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_32:
  if (v43 <= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v43;
  }

  v33 = sub_29804((&dword_0 + 1), v48, 1, v33, &qword_3DD20, &unk_317D0, &qword_3CF50, &unk_30D70);
  v43 = v33[2];
  if (*(v30 + 16))
  {
LABEL_26:
    if (((v33[3] >> 1) - v43) < v31)
    {
      goto LABEL_61;
    }

    sub_1B98(&qword_3CF50, &unk_30D70);
    swift_arrayInitWithCopy();

    if (v31)
    {
      v46 = v33[2];
      v35 = __OFADD__(v46, v31);
      v47 = v31 + v46;
      if (!v35)
      {
        v33[2] = v47;
        goto LABEL_37;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_37:
    v88 = v11;
    sub_1B98(&qword_3CF58, &unk_30AE0);
    swift_arrayDestroy();
    if (qword_3CC60 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_36:

  if (!v31)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_57:
  swift_once();
LABEL_38:
  v49 = sub_2FF48();
  v50 = sub_4FD8(v49, qword_3DB60);

  v31 = sub_2FF28();
  LOBYTE(v11) = sub_300D8();

  v51 = os_log_type_enabled(v31, v11);
  v89 = v50;
  if (!v51)
  {

    goto LABEL_42;
  }

  v14 = v6;
  isUniquelyReferenced_nonNull_native = swift_slowAlloc();
  v95[0] = swift_slowAlloc();
  *isUniquelyReferenced_nonNull_native = 136315394;
  if (qword_3CC58 != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    *(isUniquelyReferenced_nonNull_native + 4) = sub_29C64(qword_3DB50, *algn_3DB58, v95);
    *(isUniquelyReferenced_nonNull_native + 12) = 2080;
    sub_1B98(&qword_3CF50, &unk_30D70);
    v52 = sub_2FFF8();
    v54 = sub_29C64(v52, v53, v95);

    *(isUniquelyReferenced_nonNull_native + 14) = v54;
    _os_log_impl(&dword_0, v31, v11, "[%s] Classification Results: %s", isUniquelyReferenced_nonNull_native, 0x16u);
    swift_arrayDestroy();

    v6 = v14;
LABEL_42:
    v14 = v92;
    v55 = sub_2FD28();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v95[0] = sub_2FD18();
    sub_2CDD0(&qword_3DB78, 255, &type metadata accessor for MessagesInAppFollowupGroundTruthGenerator);
    v58 = sub_2EF98();

    v59 = sub_278C8(v58, &type metadata accessor for MessagesGroundTruth, &qword_3D420, &type metadata accessor for MessagesGroundTruth, &protocol conformance descriptor for MessagesGroundTruth);

    v60 = sub_2F878();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v94 = sub_2F868();
    sub_2CDD0(&qword_3DB80, 255, &type metadata accessor for SuccessfulMessageDefinition);
    sub_2F6F8();

    sub_5550(v95, v96);
    sub_2EF98();
    swift_getAssociatedTypeWitness();
    sub_1B98(&qword_3CF70, &unk_315C0);
    v63 = sub_30218();

    v93 = v59;
    sub_27BB0(v63);
    sub_5448(v95);
    sub_54EC((v14 + 2), v95);
    v64 = sub_2FDF8();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    sub_2FDD8();
    v67 = sub_2FDE8();

    v68 = sub_278C8(v67, &type metadata accessor for ContactSuggestionOutcomeGroundTruth, &qword_3D428, &type metadata accessor for ContactSuggestionOutcomeGroundTruth, &protocol conformance descriptor for ContactSuggestionOutcomeGroundTruth);

    sub_27BB0(v68);
    v11 = v93;

    v69 = sub_2FF28();
    v70 = sub_300D8();

    if (os_log_type_enabled(v69, v70))
    {
      v89 = v6;
      v71 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v71 = 136315394;
      if (qword_3CC58 != -1)
      {
        swift_once();
      }

      *(v71 + 4) = sub_29C64(qword_3DB50, *algn_3DB58, v95);
      *(v71 + 12) = 2080;
      v72 = sub_2FFF8();
      v74 = sub_29C64(v72, v73, v95);

      *(v71 + 14) = v74;
      _os_log_impl(&dword_0, v69, v70, "[%s] Generated Messages Ground Truth: %s", v71, 0x16u);
      swift_arrayDestroy();

      v6 = v89;
      v14 = v92;
    }

    else
    {
    }

    v75 = v91;
    sub_2C494();

    swift_beginAccess();
    v76 = v14[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v14[8];
    v31 = v94;
    v14[8] = 0x8000000000000000;
    v78 = sub_2A2F4(v75);
    isa = v31[2].isa;
    v80 = (v77 & 1) == 0;
    v81 = isa + v80;
    if (!__OFADD__(isa, v80))
    {
      break;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  v82 = v77;
  if (v31[3].isa >= v81)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2B320();
      v31 = v94;
    }

    goto LABEL_53;
  }

  sub_2A95C(v81, isUniquelyReferenced_nonNull_native, &qword_3CE18, &qword_309C8);
  v31 = v94;
  v83 = sub_2A2F4(v75);
  if ((v82 & 1) != (v84 & 1))
  {
LABEL_66:
    sub_302C8();
    __break(1u);
    return;
  }

  v78 = v83;
LABEL_53:
  v85 = v90;
  v92[8] = v31;
  if ((v82 & 1) == 0)
  {
    v86 = v88;
    (*(v85 + 16))(v88, v75, v6);
    sub_2B18C(v78, v86, _swiftEmptyArrayStorage, v31);
  }

  v87 = v31[7].isa + 8 * v78;
  sub_27BB0(v11);
  swift_endAccess();
  (*(v85 + 8))(v75, v6);
}

void *MessagesContactGroundTruthGenerator.reviewedSessionGroundTruth()()
{
  v59 = sub_1B98(&qword_3CF38, &unk_30AC0);
  v1 = *(*(v59 - 8) + 64);
  v2 = __chkstk_darwin(v59);
  v58 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v57 = &v46 - v5;
  v6 = __chkstk_darwin(v4);
  v56 = &v46 - v7;
  __chkstk_darwin(v6);
  v55 = &v46 - v8;
  v54 = sub_2F3B8();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v54);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v0 + 64);
  v13 = *(v12 + 16);
  result = _swiftEmptyArrayStorage;
  if (v13)
  {
    v63 = _swiftEmptyArrayStorage;

    sub_2BBE0(0, v13, 0);
    v62 = v63;
    v15 = v12 + 64;
    v16 = -1 << *(v12 + 32);
    result = sub_30148();
    v17 = result;
    v18 = 0;
    v19 = *(v12 + 36);
    v52 = v9 + 32;
    v53 = v9;
    v47 = v12 + 72;
    v48 = v13;
    v49 = v19;
    v50 = v12 + 64;
    v51 = v12;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v12 + 32))
    {
      v21 = v17 >> 6;
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_23;
      }

      if (v19 != *(v12 + 36))
      {
        goto LABEL_24;
      }

      v61 = v18;
      v22 = *(v12 + 48);
      v23 = sub_2EC08();
      v24 = *(v23 - 8);
      v25 = v55;
      (*(v24 + 16))(v55, v22 + *(v24 + 72) * v17, v23);
      v26 = *(*(v12 + 56) + 8 * v17);
      v27 = v56;
      (*(v24 + 32))(v56, v25, v23);
      v28 = v59;
      *(v27 + *(v59 + 48)) = v26;
      v29 = v57;
      sub_7404(v27, v57);
      v30 = *(v29 + *(v28 + 48));

      v31 = v58;
      sub_7404(v27, v58);
      v32 = *(v28 + 48);
      v33 = v60;
      v34 = *(v31 + v32);
      sub_2F3A8();
      sub_5B38(v27, &qword_3CF38, &unk_30AC0);
      (*(v24 + 8))(v31, v23);
      v35 = v62;
      v63 = v62;
      v37 = v62[2];
      v36 = v62[3];
      if (v37 >= v36 >> 1)
      {
        sub_2BBE0(v36 > 1, v37 + 1, 1);
        v33 = v60;
        v35 = v63;
      }

      v35[2] = v37 + 1;
      v38 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v62 = v35;
      result = (*(v53 + 32))(v35 + v38 + *(v53 + 72) * v37, v33, v54);
      v12 = v51;
      v20 = 1 << *(v51 + 32);
      if (v17 >= v20)
      {
        goto LABEL_25;
      }

      v15 = v50;
      v39 = *(v50 + 8 * v21);
      if ((v39 & (1 << v17)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v19) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v17 & 0x3F));
      if (v40)
      {
        v20 = __clz(__rbit64(v40)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v21 << 6;
        v42 = v21 + 1;
        v43 = (v47 + 8 * v21);
        while (v42 < (v20 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_7474(v17, v49, 0);
            v20 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_7474(v17, v49, 0);
      }

LABEL_4:
      v18 = v61 + 1;
      v17 = v20;
      if (v61 + 1 == v48)
      {

        return v62;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}