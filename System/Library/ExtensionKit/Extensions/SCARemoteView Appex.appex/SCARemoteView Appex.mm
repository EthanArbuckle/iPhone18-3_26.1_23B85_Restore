uint64_t sub_1000015B8@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v134) = a3;
  v139 = a5;
  v140 = sub_1000041F4(&qword_10000C0C0, &qword_100006730);
  v124 = *(v140 - 8);
  v8 = (*(v124 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v123 = &v111 - v9;
  v132 = sub_1000041F4(&qword_10000C0C8, &qword_100006738);
  v10 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v127 = &v111 - v11;
  v136 = sub_1000041F4(&qword_10000C0D0, &qword_100006740);
  v12 = (*(*(v136 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v138 = &v111 - v13;
  v128 = sub_1000041F4(&qword_10000C0D8, &qword_100006748);
  v14 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v130 = &v111 - v15;
  v137 = sub_1000041F4(&qword_10000C0E0, &qword_100006750);
  v16 = (*(*(v137 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v133 = &v111 - v17;
  v18 = (*(*(sub_1000041F4(&qword_10000C0E8, &qword_100006758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v118 = &v111 - v19;
  v115 = sub_1000041F4(&qword_10000C0F0, &qword_100006760);
  v20 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v116 = &v111 - v21;
  v126 = sub_1000041F4(&qword_10000C0F8, &qword_100006768);
  v22 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v117 = &v111 - v23;
  v129 = sub_1000041F4(&qword_10000C100, &qword_100006770);
  v121 = *(v129 - 8);
  v24 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v120 = &v111 - v25;
  v131 = sub_100006038();
  v135 = *(v131 - 8);
  v26 = *(v135 + 64);
  (__chkstk_darwin)();
  v125 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100006028();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = (__chkstk_darwin)();
  v122 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v32;
  __chkstk_darwin(v31);
  v34 = &v111 - v33;
  v35 = sub_1000041F4(&qword_10000C108, &qword_100006778);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35 - 8);
  v141 = &v111 - v37;
  v38 = sub_1000041F4(&qword_10000C110, &qword_100006780);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v142 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v111 - v42;
  v44 = sub_1000060C8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v111 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  if (a2)
  {
    v49 = a1;
  }

  else
  {

    sub_1000061C8();
    v50 = sub_1000060E8();
    v113 = a1;
    v51 = a4;
    v52 = v34;
    v53 = v29;
    v54 = v28;
    v55 = v50;
    sub_100006048();

    v28 = v54;
    v29 = v53;
    v34 = v52;
    a4 = v51;
    a1 = v113;
    sub_1000060B8();
    swift_getAtKeyPath();
    sub_100004410(a1, 0);
    (*(v45 + 8))(v48, v44);
    v49 = v144;
  }

  sub_100005FB8();

  v56 = v134 & 1;
  LOBYTE(v144) = v134 & 1;
  v145 = a4;
  sub_1000041F4(&qword_10000C118, &qword_100006788);
  sub_100006168();
  v57 = v143;
  v58 = v141;
  sub_10000441C(v43, v141);
  v59 = sub_100005FA8();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v61 = v142;
  if (v60 == 1)
  {
    v62 = v123;
    sub_100006068();
    v63 = v124;
    v64 = v140;
    (*(v124 + 2))(v138, v62, v140);
    swift_storeEnumTagMultiPayload();
    sub_10000448C();
    sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730);
    sub_1000060D8();
    (*(v63 + 1))(v62, v64);
  }

  else
  {
    v134 = a4;
    sub_100004D1C(v58, v142, &qword_10000C110, &qword_100006780);
    v65 = *(sub_1000041F4(&qword_10000C180, &qword_1000067A0) + 48);
    v66 = v61;
    v67 = *(v29 + 32);
    v67(v34, v66, v28);
    v112 = v28;
    if (v57)
    {
      v68 = v131;
      (*(v135 + 32))(v125, &v65[v142], v131);
      (*(v29 + 16))(v122, v34, v28);
      v69 = v116;
      sub_100005FE8();
      v70 = sub_100006088();
      v142 = v29;
      v71 = v70;
      v72 = sub_1000060F8();
      v73 = v69 + *(v115 + 36);
      *v73 = v71;
      *(v73 + 8) = v72;
      sub_100005F58();
      sub_100005F48();
      sub_100004698();
      v74 = v34;
      sub_100004E54(&qword_10000C140, &type metadata accessor for AnalysisHistoryCache);
      v75 = v117;
      sub_100006138();

      sub_100004DF4(v69, &qword_10000C0F0, &qword_100006760);
      KeyPath = swift_getKeyPath();
      v77 = v126;
      v78 = (v75 + *(v126 + 36));
      v79 = sub_1000041F4(&qword_10000C150, &qword_100006790);
      v80 = v125;
      (*(v135 + 16))(v78 + *(v79 + 28), v125, v68);
      *v78 = KeyPath;
      v81 = v118;
      sub_100006018();
      v82 = sub_100005F68();
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
      v83 = sub_100004554();
      v84 = v120;
      sub_100006108();
      sub_100004DF4(v81, &qword_10000C0E8, &qword_100006758);
      sub_100004DF4(v75, &qword_10000C0F8, &qword_100006768);
      v85 = v121;
      v86 = v129;
      (*(v121 + 16))(v130, v84, v129);
      swift_storeEnumTagMultiPayload();
      v144 = v77;
      v145 = v83;
      swift_getOpaqueTypeConformance2();
      sub_100004754();
      v87 = v133;
      sub_1000060D8();
      sub_100004D84(v87, v138);
      swift_storeEnumTagMultiPayload();
      sub_10000448C();
      sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730);
      sub_1000060D8();
      sub_100004DF4(v87, &qword_10000C0E0, &qword_100006750);
      (*(v85 + 8))(v84, v86);
      (*(v135 + 8))(v80, v68);
      (*(v142 + 8))(v74, v112);
    }

    else
    {
      sub_100006068();
      v88 = *(v29 + 16);
      v125 = v65;
      v89 = v122;
      v88(v122, v34, v28);
      v90 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v91 = a1;
      v92 = (v114 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v28;
      v95 = v93;
      v67((v93 + v90), v89, v94);
      v96 = v95 + v92;
      *v96 = v91;
      LOBYTE(v90) = v119 & 1;
      *(v96 + 8) = v119 & 1;
      *(v96 + 16) = v56;
      v97 = v134;
      *(v96 + 24) = v134;
      v98 = sub_1000041F4(&qword_10000C168, &qword_100006798);
      v99 = v127;
      v100 = &v127[*(v98 + 36)];
      v101 = sub_100006078();
      v124 = v34;
      v102 = v101;
      v103 = *(v101 + 20);
      sub_100004B1C(v91, v90);

      sub_1000061B8();
      *v100 = &unk_1000067B0;
      *(v100 + 1) = v95;
      v104 = swift_allocObject();
      *(v104 + 16) = v91;
      *(v104 + 24) = v90;
      *(v104 + 32) = v56;
      *(v104 + 40) = v97;
      v105 = (v99 + *(v132 + 36));
      v106 = *(v102 + 20);
      v107 = v91;
      v58 = v141;
      sub_100004B1C(v107, v90);

      sub_1000061B8();
      *v105 = &unk_1000067C0;
      v105[1] = v104;
      sub_100004D1C(v99, v130, &qword_10000C0C8, &qword_100006738);
      swift_storeEnumTagMultiPayload();
      v108 = sub_100004554();
      v144 = v126;
      v145 = v108;
      swift_getOpaqueTypeConformance2();
      sub_100004754();
      v109 = v133;
      sub_1000060D8();
      sub_100004D84(v109, v138);
      swift_storeEnumTagMultiPayload();
      sub_10000448C();
      sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730);
      sub_1000060D8();
      sub_100004DF4(v109, &qword_10000C0E0, &qword_100006750);
      sub_100004DF4(v99, &qword_10000C0C8, &qword_100006738);
      (*(v29 + 8))(v124, v112);
      (*(v135 + 8))(&v125[v142], v131);
    }
  }

  return sub_100004DF4(v58, &qword_10000C110, &qword_100006780);
}

uint64_t sub_100002530(uint64_t a1)
{
  v2 = *(*(sub_100006038() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000060A8();
}

uint64_t sub_1000025F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 97) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a5;
  sub_1000061A8();
  *(v5 + 48) = sub_100006198();
  v7 = sub_100006188();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_100002694, v7, v6);
}

uint64_t sub_100002694()
{
  v1 = v0[4];
  sub_100005F98();
  v0[9] = sub_100005F88();
  v2 = sub_100002974();
  v0[10] = v2;
  v3 = *(&async function pointer to dispatch thunk of ParticipantContactCache.prefetchContacts(for:) + 1);
  v6 = (&async function pointer to dispatch thunk of ParticipantContactCache.prefetchContacts(for:) + async function pointer to dispatch thunk of ParticipantContactCache.prefetchContacts(for:));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100002770;

  return v6(v2);
}

uint64_t sub_100002770()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_1000028D0, v6, v5);
}

uint64_t sub_1000028D0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 97);

  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 96) = 1;
  sub_1000041F4(&qword_10000C118, &qword_100006788);
  sub_100006178();
  v4 = *(v0 + 8);

  return v4();
}

unint64_t *sub_100002974()
{
  v0 = sub_100005F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005FF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100005F38();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v35 - v15;
  sub_100006008();
  v17 = (*(v6 + 88))(v9, v5);
  if (v17 == enum case for InterventionConfig.Layout.sending(_:) || v17 == enum case for InterventionConfig.Layout.receiving(_:) || v17 == enum case for InterventionConfig.Layout.addingToSharedAlbum(_:) || v17 == enum case for InterventionConfig.Layout.viewingSharedAlbumAsset(_:))
  {
    goto LABEL_5;
  }

  v19 = v17 == enum case for InterventionConfig.Layout.duringVideoCall(_:) || v17 == enum case for InterventionConfig.Layout.joinedCall(_:);
  if (v19)
  {
    (*(v6 + 96))(v9, v5);
    v20 = *(v9 + *(sub_1000041F4(&qword_10000C198, &qword_100006800) + 48));
    v21 = v42;
    (*(v42 + 32))(v16, v9, v10);
    sub_1000041F4(&qword_10000C1A0, &qword_100006808);
    v22 = *(v1 + 72);
    v23 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000065A0;
    sub_100005F28();
    (*(v21 + 8))(v16, v10);
    v43 = v24;
    v25 = v20;
LABEL_12:
    sub_100003C84(v25);
    return v43;
  }

  if (v17 == enum case for InterventionConfig.Layout.userSharedDuringVideoCall(_:))
  {
    (*(v6 + 96))(v9, v5);
    return *v9;
  }

  if (v17 == enum case for InterventionConfig.Layout.tryingToCall(_:))
  {
    (*(v6 + 96))(v9, v5);
    v27 = *v9;
    v26 = v9[1];
    v28 = *(v27 + 16);
    if (v28)
    {
      v36 = v26;
      v43 = &_swiftEmptyArrayStorage;
      sub_100003F88(0, v28, 0);
      v29 = v43;
      v30 = *(v42 + 16);
      v31 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v35[1] = v27;
      v32 = v27 + v31;
      v39 = *(v42 + 72);
      v40 = v30;
      v41 = v1;
      v42 += 16;
      v37 = v1 + 32;
      v38 = (v42 - 8);
      do
      {
        v40(v14, v32, v10);
        sub_100005F28();
        (*v38)(v14, v10);
        v43 = v29;
        v34 = v29[2];
        v33 = v29[3];
        if (v34 >= v33 >> 1)
        {
          sub_100003F88(v33 > 1, v34 + 1, 1);
          v29 = v43;
        }

        v29[2] = v34 + 1;
        (*(v41 + 32))(v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34, v4, v0);
        v32 += v39;
        --v28;
      }

      while (v28);

      v26 = v36;
    }

    else
    {

      v29 = &_swiftEmptyArrayStorage;
    }

    v43 = v29;
    v25 = v26;
    goto LABEL_12;
  }

  if (v17 == enum case for InterventionConfig.Layout.noAnalysisSending(_:))
  {
    return &_swiftEmptyArrayStorage;
  }

  v19 = v17 == enum case for InterventionConfig.Layout.noAnalysisReceiving(_:);
  result = &_swiftEmptyArrayStorage;
  if (!v19)
  {
LABEL_5:
    (*(v6 + 8))(v9, v5);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100002ECC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 97) = a3;
  v5 = sub_1000061E8();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  sub_1000061A8();
  *(v4 + 64) = sub_100006198();
  v9 = sub_100006188();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return _swift_task_switch(sub_100002FC4, v9, v8);
}

uint64_t sub_100002FC4()
{
  v1 = *(v0 + 56);
  sub_100006228();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100003090;
  v3 = *(v0 + 56);

  return sub_1000037CC(600000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100003090()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_100004F5C;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_100003224;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100003224()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 97);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 96) = 1;
  sub_1000041F4(&qword_10000C118, &qword_100006788);
  sub_100006178();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100003314@<X0>(uint64_t a1@<X8>)
{
  sub_100005FD8();
  sub_100004E54(&qword_10000C0B0, &type metadata accessor for RemoteViewModel);
  v2 = sub_100006058();
  v4 = v3;
  result = sub_100006158();
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1000033D0@<X0>(uint64_t a1@<X8>)
{
  [objc_allocWithZone(sub_100005FD8()) init];
  result = sub_100006158();
  strcpy(a1, "EXDefaultScene");
  *(a1 + 15) = -18;
  *(a1 + 16) = sub_100003314;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

uint64_t sub_100003468()
{
  v0 = sub_1000041F4(&qword_10000C080, &qword_100006648);
  v2.receiver = objc_allocWithZone(v0);
  v2.super_class = v0;
  objc_msgSendSuper2(&v2, "init");
  sub_1000041F4(&qword_10000C088, &qword_100006650);
  sub_1000041F4(&qword_10000C090, &qword_100006658);
  sub_1000048F8(&qword_10000C098, &qword_10000C088, &qword_100006650);
  sub_1000048F8(&qword_10000C0A0, &qword_10000C090, &qword_100006658);
  return sub_100005EF8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003604();
  sub_100005F18();
  return 0;
}

unint64_t sub_100003604()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

id variable initialization expression of SCARemoteViewScene._model()
{
  v0 = objc_allocWithZone(sub_100005FD8());

  return [v0 init];
}

unint64_t sub_1000036C4(uint64_t a1)
{
  result = sub_100003604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003708(uint64_t a1)
{
  result = sub_100003730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003730()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_1000037CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1000061D8();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000038CC, 0, 0);
}

uint64_t sub_1000038CC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1000061E8();
  v7 = sub_100004E54(&qword_10000C188, &type metadata accessor for ContinuousClock);
  sub_100006208();
  sub_100004E54(&qword_10000C190, &type metadata accessor for ContinuousClock.Instant);
  sub_1000061F8();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100003A5C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100003A5C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100003C18, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100003C18()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100003C84(uint64_t result)
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

  v3 = sub_100003DB0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_100005F78();
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

size_t sub_100003DB0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000041F4(&qword_10000C1A0, &qword_100006808);
  v10 = *(sub_100005F78() - 8);
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
  v15 = *(sub_100005F78() - 8);
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

size_t sub_100003F88(size_t a1, int64_t a2, char a3)
{
  result = sub_100003FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100003FA8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000041F4(&qword_10000C1A0, &qword_100006808);
  v10 = *(sub_100005F78() - 8);
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
  v15 = *(sub_100005F78() - 8);
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

__n128 sub_100004180@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100004284();
  (*(v2 + 32))(&v6, &type metadata for Appex, v2);
  v3 = v9;
  result = v7;
  v5 = v8;
  *a1 = v6;
  *(a1 + 8) = result;
  *(a1 + 24) = v5;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1000041F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000423C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004284()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

__n128 sub_1000042E4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000042F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000434C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_100004410(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10000441C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000041F4(&qword_10000C110, &qword_100006780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000448C()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    sub_10000423C(&qword_10000C0E0, &qword_100006750);
    sub_10000423C(&qword_10000C0F8, &qword_100006768);
    sub_100004554();
    swift_getOpaqueTypeConformance2();
    sub_100004754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

unint64_t sub_100004554()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    sub_10000423C(&qword_10000C0F8, &qword_100006768);
    sub_10000423C(&qword_10000C0F0, &qword_100006760);
    sub_100005F58();
    sub_100004698();
    sub_100004E54(&qword_10000C140, &type metadata accessor for AnalysisHistoryCache);
    swift_getOpaqueTypeConformance2();
    sub_1000048F8(&qword_10000C148, &qword_10000C150, &qword_100006790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

unint64_t sub_100004698()
{
  result = qword_10000C130;
  if (!qword_10000C130)
  {
    sub_10000423C(&qword_10000C0F0, &qword_100006760);
    sub_100004E54(&qword_10000C138, &type metadata accessor for InterventionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C130);
  }

  return result;
}

unint64_t sub_100004754()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    sub_10000423C(&qword_10000C0C8, &qword_100006738);
    sub_100004810();
    sub_100004E54(&qword_10000C178, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_100004810()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    sub_10000423C(&qword_10000C168, &qword_100006798);
    sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730);
    sub_100004E54(&qword_10000C178, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_1000048F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000423C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004940()
{
  v1 = sub_100006028();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100004410(*(v0 + v5), *(v0 + v5 + 8));
  v6 = *(v0 + v5 + 24);

  return _swift_deallocObject(v0, v5 + 32, v3 | 7);
}

uint64_t sub_1000049EC()
{
  v2 = *(sub_100006028() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100004F60;

  return sub_1000025F8(v0 + v3, v5, v6, v7, v8);
}

id sub_100004B1C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_100004B28()
{
  sub_100004410(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004B6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004C28;

  return sub_100002ECC(v2, v3, v4, v5);
}

uint64_t sub_100004C28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000041F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000041F4(&qword_10000C0E0, &qword_100006750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004DF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000041F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004E54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100004EA4()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    sub_10000423C(qword_10000C1B0, &unk_100006810);
    sub_10000448C();
    sub_1000048F8(&qword_10000C170, &qword_10000C0C0, &qword_100006730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

id SCARemoteViewExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for ConcreteConfiguration.ExportedObject();
  result = sub_100005190(v1);
  *a1 = result;
  return result;
}

void sub_100004FA8(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_100005394();
}

id sub_100004FE8()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConcreteConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000050C4(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  (*(*(*((swift_isaMask & *v1) + 0x50) - 8) + 16))(&v1[*((swift_isaMask & *v1) + 0x60)], a1, *((swift_isaMask & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ConcreteConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100005190(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for ConcreteConfiguration.ExportedObject());
  return sub_1000050C4(a1);
}

uint64_t sub_100005204(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000052B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ConcreteConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_100005310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100005358(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SCARemoteViewScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  [objc_allocWithZone(sub_100005FD8()) init];
  swift_getObjectType();
  result = sub_100006158();
  strcpy(a3, "EXDefaultScene");
  *(a3 + 15) = -18;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  return result;
}

uint64_t SCARemoteViewSceneExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v6 + 32))(v9 + v8, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = *(a2 + 8);
  v13[1] = sub_1000051CC(v3);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConcreteConfiguration();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  return sub_100005EF8();
}

uint64_t property wrapper backing initializer of SCARemoteViewScene.model()
{
  swift_getObjectType();
  sub_100006158();
  return v1;
}

uint64_t sub_1000056AC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000572C()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t SCARemoteViewScene.body.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  v22 = v1[5];
  v7 = swift_allocObject();
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v7 + 16) = v9;
  *(v7 + 24) = v8;
  v10 = *(v1 + 1);
  *(v7 + 32) = *v1;
  *(v7 + 48) = v10;
  *(v7 + 64) = *(v1 + 2);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v12 = *(v1 + 1);
  *(v11 + 32) = *v1;
  *(v11 + 48) = v12;
  *(v11 + 64) = *(v1 + 2);
  swift_bridgeObjectRetain_n();

  v13 = v6;
  sub_100005C94(&v22, &v18);

  v14 = v13;
  sub_100005C94(&v22, &v18);
  v15 = sub_100005FD8();
  v16 = sub_100005D04();
  v18 = v9;
  v19 = v15;
  v20 = v8;
  v21 = v16;
  swift_getOpaqueTypeMetadata2();
  v18 = v9;
  v19 = v15;
  v20 = v8;
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  return sub_100005EE8();
}

uint64_t sub_10000593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v29 = a4;
  v7 = *(a2 - 8);
  v27[1] = a3;
  v28 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005FD8();
  v12 = sub_100005D04();
  *&v30 = a2;
  *(&v30 + 1) = v11;
  v31 = a3;
  v32 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v27 - v20;
  v22 = *(a1 + 24);
  (*(a1 + 16))(v19);
  v30 = *(a1 + 32);
  sub_1000041F4(&unk_10000C340, &qword_100006A90);
  sub_100006168();
  v23 = v33;
  swift_checkMetadataState();
  sub_100006138();

  (*(v28 + 8))(v10, a2);
  v24 = v14[2];
  v24(v21, v18, OpaqueTypeMetadata2);
  v25 = v14[1];
  v25(v18, OpaqueTypeMetadata2);
  v24(v29, v21, OpaqueTypeMetadata2);
  return (v25)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_100005BB8(objc_class *a1, uint64_t a2)
{
  v6 = *(a2 + 32);
  sub_1000041F4(&unk_10000C340, &qword_100006A90);
  sub_100006168();
  v3.super.isa = a1;
  LOBYTE(a1) = sub_100005FC8(v3);

  return a1 & 1;
}

uint64_t sub_100005C38()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100005C88(objc_class *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100005BB8(a1, v1 + 32);
}

uint64_t sub_100005C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000041F4(qword_10000C2B8, &qword_100006950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005D04()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    sub_100005FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100005D5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100005DDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100005E18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100005E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100005E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}