uint64_t sub_3870C()
{
  v1 = v0[109];
  v2 = v0[81];
  v3 = v0[77];
  v4 = v0[76];
  sub_9964(v0 + 17);
  v1(v2, v4);
  v5 = v0[82];
  sub_C14C(v0[83], v5, &qword_81B58, qword_70A90);
  v6 = sub_6CD2C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v0[82];
  if (v8 == 1)
  {
    sub_5E20(v9, &qword_81B58, qword_70A90);
LABEL_12:
    v30 = v0[106];
    v31 = sub_6D03C();
    v32 = sub_6D45C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Unable to contruct StatusNotification to update UI, maybe some fields are missing.", v33, 2u);
    }

    goto LABEL_15;
  }

  v10 = (*(v7 + 88))(v9, v6);
  v11 = v0[82];
  if (v10 != enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
  {
    (*(v7 + 8))(v0[82], v6);
    goto LABEL_12;
  }

  v12 = v0[62];
  v13 = v0[63];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[57];
  v166 = v0[59];
  v170 = v0[56];
  v17 = v0[54];
  v162 = v0[53];
  (*(v7 + 96))(v11, v6);
  (*(v12 + 32))(v13, v11, v14);
  v18 = v16;
  sub_6CCFC();
  (*(v17 + 56))(v166, 1, 1, v162);
  v19 = *(v170 + 48);
  sub_C14C(v15, v16, &qword_814F0, &qword_71350);
  sub_C14C(v166, v16 + v19, &qword_814F0, &qword_71350);
  v20 = *(v17 + 48);
  if (v20(v18, 1, v162) == 1)
  {
    v21 = v0[60];
    v22 = v0[53];
    sub_5E20(v0[59], &qword_814F0, &qword_71350);
    sub_5E20(v21, &qword_814F0, &qword_71350);
    if (v20(v18 + v19, 1, v22) == 1)
    {
      sub_5E20(v0[57], &qword_814F0, &qword_71350);
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v23 = v0[53];
  sub_C14C(v0[57], v0[58], &qword_814F0, &qword_71350);
  v24 = v20(v18 + v19, 1, v23);
  v25 = v0[59];
  v26 = v0[60];
  v27 = v0[58];
  if (v24 == 1)
  {
    v28 = v0[53];
    v29 = v0[54];
    sub_5E20(v0[59], &qword_814F0, &qword_71350);
    sub_5E20(v26, &qword_814F0, &qword_71350);
    (*(v29 + 8))(v27, v28);
LABEL_10:
    sub_5E20(v0[57], &qword_81D48, &unk_70D10);
LABEL_11:
    (*(v0[62] + 8))(v0[63], v0[61]);
    goto LABEL_12;
  }

  v172 = v0[57];
  v73 = v0[54];
  v74 = v0[55];
  v75 = v0[53];
  (*(v73 + 32))(v74, v18 + v19, v75);
  sub_4B434(&qword_81500, &type metadata accessor for RequestSummary.PrescribedGenAITool);
  v76 = sub_6D28C();
  v77 = *(v73 + 8);
  v77(v74, v75);
  sub_5E20(v25, &qword_814F0, &qword_71350);
  sub_5E20(v26, &qword_814F0, &qword_71350);
  v77(v27, v75);
  sub_5E20(v172, &qword_814F0, &qword_71350);
  if ((v76 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v78 = v0[36];
  sub_30BD4();
  v79 = sub_6CDBC();
  v81 = v80;

  if (v81)
  {
    v82 = v0[36];
    sub_30BD4();
    sub_6CE5C();
    v84 = v83;

    if (v84)
    {
      v85 = v0[70];
      v86 = v0[69];
      v87 = v0[67];
      sub_6AE5C();

      if ((*(v85 + 48))(v87, 1, v86) == 1)
      {
        v88 = v0[67];
        (*(v0[62] + 8))(v0[63], v0[61]);

        v89 = &unk_82030;
        v90 = &qword_70370;
      }

      else
      {
        v168 = v0[107];
        v173 = v0[108];
        v164 = v0[76];
        v91 = v0[74];
        v92 = v0[72];
        v93 = v0[36];
        (*(v0[70] + 32))(v92, v0[67], v0[69]);
        v94 = sub_3CC8C(&CurrentRequest.executionRequestId.getter);
        v96 = v95;
        sub_30BD4();
        v97 = sub_6CE4C();
        v99 = v98;

        sub_2EF18(v94, v96, v79, v81, v92, v97, v99, v91);

        if (v168(v91, 1, v164) != 1)
        {
          v103 = v0[106];
          v104 = v0[79];
          v105 = v0[78];
          v106 = v0[77];
          v107 = v0[76];
          (*(v106 + 32))(v104, v0[74], v107);
          v108 = *(v106 + 16);
          v108(v105, v104, v107);
          v109 = sub_6D03C();
          v110 = sub_6D45C();
          v111 = os_log_type_enabled(v109, v110);
          v112 = v0[78];
          v113 = v0[77];
          v114 = v0[76];
          if (v111)
          {
            v169 = v0[76];
            v174 = v108;
            v115 = v0[66];
            v116 = v0[65];
            v165 = v0[64];
            v157 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *v157 = 138412290;
            v159 = v110;
            sub_6B1BC();
            v117 = v0[16];
            sub_99FC(v0 + 12, v0[15]);
            sub_6CC1C();
            v118 = sub_6CBFC();
            v119 = v115;
            v108 = v174;
            (*(v116 + 8))(v119, v165);
            v120 = *(v113 + 8);
            v120(v112, v169);
            sub_9964(v0 + 12);
            *(v157 + 4) = v118;
            *v161 = v118;
            _os_log_impl(&dword_0, v109, v159, "Posting StatusNotification: %@", v157, 0xCu);
            sub_5E20(v161, &qword_81508, &unk_70260);
          }

          else
          {

            v120 = *(v113 + 8);
            v120(v112, v114);
          }

          v0[112] = v120;
          v121 = v0[79];
          v122 = v0[76];
          v123 = v0[36];
          v124 = v123[10];
          v125 = v123[11];
          sub_99FC(v123 + 7, v124);
          v0[10] = v122;
          v0[11] = &protocol witness table for FlowMessageTransportableOutput;
          v126 = sub_97B0(v0 + 7);
          v108(v126, v121, v122);
          v127 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
          v128 = swift_task_alloc();
          v0[113] = v128;
          *v128 = v0;
          v128[1] = sub_398A8;
          v70 = v0 + 7;
          v71 = v124;
          v72 = v125;
          goto LABEL_22;
        }

        v88 = v0[74];
        v101 = v0[62];
        v100 = v0[63];
        v102 = v0[61];
        (*(v0[70] + 8))(v0[72], v0[69]);
        (*(v101 + 8))(v100, v102);
        v89 = &unk_81D50;
        v90 = &unk_70D20;
      }

      sub_5E20(v88, v89, v90);
    }

    else
    {
      (*(v0[62] + 8))(v0[63], v0[61]);
    }
  }

  else
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
  }

LABEL_15:
  v34 = v0[50];
  v35 = v0[51];
  v36 = v0[49];
  v37 = v0[36];
  sub_30BD4();
  sub_6CDCC();
  v39 = v38;

  sub_2FAF0(v39, v36);

  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    sub_5E20(v0[49], &qword_81B08, &qword_708D8);
    v40 = v0[86];
    v41 = v0[85];
    v42 = v0[84];
    v43 = v0[83];
    v44 = v0[35];
    sub_6B44C();
    sub_5E20(v43, &qword_81B58, qword_70A90);
    (*(v41 + 8))(v40, v42);
    v45 = v0[105];
    v46 = v0[104];
    v47 = v0[99];
    v48 = v0[96];
    v49 = v0[95];
    v50 = v0[94];
    v51 = v0[93];
    v52 = v0[92];
    v53 = v0[91];
    v54 = v0[90];
    v129 = v0[89];
    v130 = v0[88];
    v131 = v0[86];
    v132 = v0[83];
    v133 = v0[82];
    v134 = v0[81];
    v135 = v0[80];
    v136 = v0[79];
    v137 = v0[78];
    v138 = v0[75];
    v139 = v0[74];
    v140 = v0[73];
    v141 = v0[72];
    v142 = v0[71];
    v143 = v0[68];
    v144 = v0[67];
    v145 = v0[66];
    v146 = v0[63];
    v147 = v0[60];
    v148 = v0[59];
    v149 = v0[58];
    v150 = v0[57];
    v151 = v0[55];
    v152 = v0[52];
    v153 = v0[49];
    v154 = v0[48];
    v155 = v0[47];
    v156 = v0[46];
    v158 = v0[45];
    v160 = v0[44];
    v163 = v0[43];
    v167 = v0[40];
    v171 = v0[38];

    v55 = v0[1];

    return v55();
  }

  v57 = v0[106];
  (*(v0[51] + 32))(v0[52], v0[49], v0[50]);
  v58 = sub_6D03C();
  v59 = sub_6D45C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "Posting SAUIShowRequestHandlingStatus message with execution source PLANNER", v60, 2u);
  }

  v62 = v0[51];
  v61 = v0[52];
  v63 = v0[50];
  v64 = v0[36];

  v65 = v64[10];
  v66 = v64[11];
  sub_99FC(v64 + 7, v65);
  v0[5] = v63;
  v0[6] = &protocol witness table for AceOutput;
  v67 = sub_97B0(v0 + 2);
  (*(v62 + 16))(v67, v61, v63);
  v68 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v69 = swift_task_alloc();
  v0[115] = v69;
  *v69 = v0;
  v69[1] = sub_3A2D4;
  v70 = v0 + 2;
  v71 = v65;
  v72 = v66;
LABEL_22:

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v70, v71, v72);
}

uint64_t sub_39524()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 696);
  v53 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 648);
  v7 = *(v0 + 616);
  v8 = *(v0 + 608);
  **(v0 + 296) = *(v0 + 888);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  v1(v6, v8);
  sub_5E20(v5, &qword_81B58, qword_70A90);
  (*(v3 + 8))(v53, v4);
  sub_9964((v0 + 136));
  v9 = *(v0 + 840);
  v10 = *(v0 + 832);
  v11 = *(v0 + 792);
  v12 = *(v0 + 768);
  v13 = *(v0 + 760);
  v14 = *(v0 + 752);
  v15 = *(v0 + 744);
  v16 = *(v0 + 736);
  v17 = *(v0 + 728);
  v18 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  v23 = *(v0 + 688);
  v24 = *(v0 + 664);
  v25 = *(v0 + 656);
  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v29 = *(v0 + 624);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 576);
  v34 = *(v0 + 568);
  v35 = *(v0 + 544);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 504);
  v39 = *(v0 + 480);
  v40 = *(v0 + 472);
  v41 = *(v0 + 464);
  v42 = *(v0 + 456);
  v43 = *(v0 + 440);
  v44 = *(v0 + 416);
  v45 = *(v0 + 392);
  v46 = *(v0 + 384);
  v47 = *(v0 + 376);
  v48 = *(v0 + 368);
  v49 = *(v0 + 360);
  v50 = *(v0 + 352);
  v51 = *(v0 + 344);
  v52 = *(v0 + 320);
  v54 = *(v0 + 304);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_398A8()
{
  v2 = *(*v1 + 904);
  v5 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = sub_39F04;
  }

  else
  {
    v3 = sub_399BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_399BC()
{
  v1 = v0[112];
  v2 = v0[79];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[72];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[62];
  v78 = v0[63];
  v9 = v0[61];
  sub_9964(v0 + 7);
  v1(v2, v4);
  (*(v6 + 8))(v5, v7);
  (*(v8 + 8))(v78, v9);
  v10 = v0[50];
  v11 = v0[51];
  v12 = v0[49];
  v13 = v0[36];
  sub_30BD4();
  sub_6CDCC();
  v15 = v14;

  sub_2FAF0(v15, v12);

  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_5E20(v0[49], &qword_81B08, &qword_708D8);
    v16 = v0[86];
    v17 = v0[85];
    v18 = v0[84];
    v19 = v0[83];
    v20 = v0[35];
    sub_6B44C();
    sub_5E20(v19, &qword_81B58, qword_70A90);
    (*(v17 + 8))(v16, v18);
    v21 = v0[105];
    v22 = v0[104];
    v23 = v0[99];
    v24 = v0[96];
    v25 = v0[95];
    v26 = v0[94];
    v27 = v0[93];
    v28 = v0[92];
    v29 = v0[91];
    v30 = v0[90];
    v46 = v0[89];
    v47 = v0[88];
    v48 = v0[86];
    v49 = v0[83];
    v50 = v0[82];
    v51 = v0[81];
    v52 = v0[80];
    v53 = v0[79];
    v54 = v0[78];
    v55 = v0[75];
    v56 = v0[74];
    v57 = v0[73];
    v58 = v0[72];
    v59 = v0[71];
    v60 = v0[68];
    v61 = v0[67];
    v62 = v0[66];
    v63 = v0[63];
    v64 = v0[60];
    v65 = v0[59];
    v66 = v0[58];
    v67 = v0[57];
    v68 = v0[55];
    v69 = v0[52];
    v70 = v0[49];
    v71 = v0[48];
    v72 = v0[47];
    v73 = v0[46];
    v74 = v0[45];
    v75 = v0[44];
    v76 = v0[43];
    v77 = v0[40];
    v79 = v0[38];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v0[106];
    (*(v0[51] + 32))(v0[52], v0[49], v0[50]);
    v34 = sub_6D03C();
    v35 = sub_6D45C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "Posting SAUIShowRequestHandlingStatus message with execution source PLANNER", v36, 2u);
    }

    v38 = v0[51];
    v37 = v0[52];
    v39 = v0[50];
    v40 = v0[36];

    v41 = v40[10];
    v42 = v40[11];
    sub_99FC(v40 + 7, v41);
    v0[5] = v39;
    v0[6] = &protocol witness table for AceOutput;
    v43 = sub_97B0(v0 + 2);
    (*(v38 + 16))(v43, v37, v39);
    v44 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v45 = swift_task_alloc();
    v0[115] = v45;
    *v45 = v0;
    v45[1] = sub_3A2D4;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v41, v42);
  }
}

uint64_t sub_39F04()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  v57 = *(v0 + 672);
  v59 = *(v0 + 688);
  v53 = *(v0 + 896);
  v55 = *(v0 + 664);
  v3 = *(v0 + 632);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 496);
  v51 = *(v0 + 504);
  v47 = *(v0 + 576);
  v49 = *(v0 + 488);
  **(v0 + 296) = *(v0 + 912);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  v53(v3, v5);
  (*(v6 + 8))(v47, v7);
  (*(v8 + 8))(v51, v49);
  sub_5E20(v55, &qword_81B58, qword_70A90);
  (*(v2 + 8))(v59, v57);
  sub_9964((v0 + 56));
  v9 = *(v0 + 840);
  v10 = *(v0 + 832);
  v11 = *(v0 + 792);
  v12 = *(v0 + 768);
  v13 = *(v0 + 760);
  v14 = *(v0 + 752);
  v15 = *(v0 + 744);
  v16 = *(v0 + 736);
  v17 = *(v0 + 728);
  v18 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  v23 = *(v0 + 688);
  v24 = *(v0 + 664);
  v25 = *(v0 + 656);
  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v29 = *(v0 + 624);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 576);
  v34 = *(v0 + 568);
  v35 = *(v0 + 544);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 504);
  v39 = *(v0 + 480);
  v40 = *(v0 + 472);
  v41 = *(v0 + 464);
  v42 = *(v0 + 456);
  v43 = *(v0 + 440);
  v44 = *(v0 + 416);
  v45 = *(v0 + 392);
  v46 = *(v0 + 384);
  v48 = *(v0 + 376);
  v50 = *(v0 + 368);
  v52 = *(v0 + 360);
  v54 = *(v0 + 352);
  v56 = *(v0 + 344);
  v58 = *(v0 + 320);
  v60 = *(v0 + 304);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_3A2D4()
{
  v2 = *(*v1 + 920);
  v5 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = sub_3A708;
  }

  else
  {
    v3 = sub_3A3E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3A3E8()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  sub_9964(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[35];
  sub_6B44C();
  sub_5E20(v7, &qword_81B58, qword_70A90);
  (*(v5 + 8))(v4, v6);
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[99];
  v12 = v0[96];
  v13 = v0[95];
  v14 = v0[94];
  v15 = v0[93];
  v16 = v0[92];
  v17 = v0[91];
  v18 = v0[90];
  v21 = v0[89];
  v22 = v0[88];
  v23 = v0[86];
  v24 = v0[83];
  v25 = v0[82];
  v26 = v0[81];
  v27 = v0[80];
  v28 = v0[79];
  v29 = v0[78];
  v30 = v0[75];
  v31 = v0[74];
  v32 = v0[73];
  v33 = v0[72];
  v34 = v0[71];
  v35 = v0[68];
  v36 = v0[67];
  v37 = v0[66];
  v38 = v0[63];
  v39 = v0[60];
  v40 = v0[59];
  v41 = v0[58];
  v42 = v0[57];
  v43 = v0[55];
  v44 = v0[52];
  v45 = v0[49];
  v46 = v0[48];
  v47 = v0[47];
  v48 = v0[46];
  v49 = v0[45];
  v50 = v0[44];
  v51 = v0[43];
  v52 = v0[40];
  v53 = v0[38];

  v19 = v0[1];

  return v19();
}

uint64_t sub_3A708()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v8 = *(v0 + 400);
  **(v0 + 296) = *(v0 + 928);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  (*(v7 + 8))(v6, v8);
  sub_5E20(v5, &qword_81B58, qword_70A90);
  (*(v3 + 8))(v2, v4);
  sub_9964((v0 + 16));
  v9 = *(v0 + 840);
  v10 = *(v0 + 832);
  v11 = *(v0 + 792);
  v12 = *(v0 + 768);
  v13 = *(v0 + 760);
  v14 = *(v0 + 752);
  v15 = *(v0 + 744);
  v16 = *(v0 + 736);
  v17 = *(v0 + 728);
  v18 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  v23 = *(v0 + 688);
  v24 = *(v0 + 664);
  v25 = *(v0 + 656);
  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v29 = *(v0 + 624);
  v30 = *(v0 + 600);
  v31 = *(v0 + 592);
  v32 = *(v0 + 584);
  v33 = *(v0 + 576);
  v34 = *(v0 + 568);
  v35 = *(v0 + 544);
  v36 = *(v0 + 536);
  v37 = *(v0 + 528);
  v38 = *(v0 + 504);
  v39 = *(v0 + 480);
  v40 = *(v0 + 472);
  v41 = *(v0 + 464);
  v42 = *(v0 + 456);
  v43 = *(v0 + 440);
  v44 = *(v0 + 416);
  v45 = *(v0 + 392);
  v46 = *(v0 + 384);
  v47 = *(v0 + 376);
  v48 = *(v0 + 368);
  v49 = *(v0 + 360);
  v50 = *(v0 + 352);
  v51 = *(v0 + 344);
  v52 = *(v0 + 320);
  v53 = *(v0 + 304);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_3AA80()
{
  v2 = *(*v1 + 936);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_3B934;
  }

  else
  {
    v3 = sub_3AB90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3AB90()
{
  v72 = v0;
  v1 = v0[106];
  v2 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[41];
  v7 = *(v0[42] + 16);
  v7(v0[47], v2, v6);
  v7(v3, v2, v6);
  v7(v4, v2, v6);
  v7(v5, v2, v6);
  v8 = sub_6D03C();
  v9 = sub_6D45C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[71];
    v11 = v0[70];
    v12 = v0[69];
    v61 = v0[47];
    v63 = v0[46];
    v64 = v0[45];
    v66 = v0[43];
    v67 = v0[44];
    v70 = v0[42];
    v69 = v0[41];
    v13 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v13 = 136315907;
    v68 = v9;
    sub_6C82C();
    sub_4B434(&qword_81D58, &type metadata accessor for UUID);
    v14 = sub_6D61C();
    v16 = v15;
    v62 = *(v11 + 8);
    v62(v10, v12);
    log = v8;
    v17 = *(v70 + 8);
    v17(v61, v69);
    v18 = sub_1076C(v14, v16, &v71);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    sub_6C80C();
    v19 = sub_6D61C();
    v21 = v20;
    v62(v10, v12);
    v17(v63, v69);
    v22 = sub_1076C(v19, v21, &v71);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    v23 = sub_6C7FC();
    v25 = v24;
    v17(v64, v69);
    v26 = sub_1076C(v23, v25, &v71);

    *(v13 + 24) = v26;
    *(v13 + 32) = 2081;
    v7(v66, v67, v69);
    v27 = sub_6D2EC();
    v29 = v28;
    v17(v67, v69);
    v30 = sub_1076C(v27, v29, &v71);

    *(v13 + 34) = v30;
    _os_log_impl(&dword_0, log, v68, "Event received from IntelligenceFlow with sessionId: %s, eventId: %s and clientRequestId: %s with message: %{private}s", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v32 = v0[46];
    v31 = v0[47];
    v34 = v0[44];
    v33 = v0[45];
    v35 = v0[41];
    v36 = v0[42];

    v17 = *(v36 + 8);
    v17(v34, v35);
    v17(v33, v35);
    v17(v32, v35);
    v17(v31, v35);
  }

  v0[118] = v17;
  v37 = v0[48];
  v39 = v0[39];
  v38 = v0[40];
  sub_6C81C();
  v0[33] = sub_6D2EC();
  v0[34] = v40;
  sub_1FE68();
  v41 = sub_6D50C();

  if (v41[2])
  {
    v42 = v0[106];
    v43 = v41[4];
    v44 = v41[5];
    v46 = v41[6];
    v45 = v41[7];
    swift_bridgeObjectRetain_n();

    v47 = sub_6D03C();
    v48 = sub_6D47C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v71 = v50;
      *v49 = 136446210;
      v51 = sub_6D30C();
      v53 = v52;

      v54 = sub_1076C(v51, v53, &v71);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_0, v47, v48, "Event received from IntelligenceFlow: %{public}s", v49, 0xCu);
      sub_9964(v50);

      goto LABEL_10;
    }
  }

LABEL_10:
  v55 = swift_task_alloc();
  v0[119] = v55;
  *v55 = v0;
  v55[1] = sub_3B198;
  v56 = v0[90];
  v57 = v0[48];
  v58 = v0[35];
  v59 = v0[36];

  return sub_3ED5C(v58, v57, v56);
}

uint64_t sub_3B198()
{
  v2 = *(*v1 + 952);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_3BC00;
  }

  else
  {
    v3 = sub_3B2A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3B2A8()
{
  v1 = *(v0 + 336) + 8;
  (*(v0 + 944))(*(v0 + 384), *(v0 + 328));
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  v14 = *(v0 + 712);
  v15 = *(v0 + 704);
  v16 = *(v0 + 688);
  v17 = *(v0 + 664);
  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 624);
  v23 = *(v0 + 600);
  v24 = *(v0 + 592);
  v25 = *(v0 + 584);
  v26 = *(v0 + 576);
  v27 = *(v0 + 568);
  v28 = *(v0 + 544);
  v29 = *(v0 + 536);
  v30 = *(v0 + 528);
  v31 = *(v0 + 504);
  v32 = *(v0 + 480);
  v33 = *(v0 + 472);
  v34 = *(v0 + 464);
  v35 = *(v0 + 456);
  v36 = *(v0 + 440);
  v37 = *(v0 + 416);
  v38 = *(v0 + 392);
  v39 = *(v0 + 384);
  v40 = *(v0 + 376);
  v41 = *(v0 + 368);
  v42 = *(v0 + 360);
  v43 = *(v0 + 352);
  v44 = *(v0 + 344);
  v45 = *(v0 + 320);
  v46 = *(v0 + 304);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_3B570()
{
  v1 = *(*v0 + 960);
  v3 = *v0;

  return _swift_task_switch(sub_3B66C, 0, 0);
}

uint64_t sub_3B66C()
{
  sub_4B36C(v0[88], type metadata accessor for IFFlowError);
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[99];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[86];
  v16 = v0[83];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[66];
  v30 = v0[63];
  v31 = v0[60];
  v32 = v0[59];
  v33 = v0[58];
  v34 = v0[57];
  v35 = v0[55];
  v36 = v0[52];
  v37 = v0[49];
  v38 = v0[48];
  v39 = v0[47];
  v40 = v0[46];
  v41 = v0[45];
  v42 = v0[44];
  v43 = v0[43];
  v44 = v0[40];
  v45 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_3B934()
{
  sub_4B304(v0[91], v0[37], type metadata accessor for IFFlowError);
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[99];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[86];
  v16 = v0[83];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[78];
  v22 = v0[75];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[66];
  v30 = v0[63];
  v31 = v0[60];
  v32 = v0[59];
  v33 = v0[58];
  v34 = v0[57];
  v35 = v0[55];
  v36 = v0[52];
  v37 = v0[49];
  v38 = v0[48];
  v39 = v0[47];
  v40 = v0[46];
  v41 = v0[45];
  v42 = v0[44];
  v43 = v0[43];
  v44 = v0[40];
  v45 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_3BC00()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 296);
  v3 = *(v0 + 336) + 8;
  (*(v0 + 944))(*(v0 + 384), *(v0 + 328));
  sub_4B304(v1, v2, type metadata accessor for IFFlowError);
  v4 = *(v0 + 840);
  v5 = *(v0 + 832);
  v6 = *(v0 + 792);
  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 744);
  v11 = *(v0 + 736);
  v12 = *(v0 + 728);
  v13 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 704);
  v18 = *(v0 + 688);
  v19 = *(v0 + 664);
  v20 = *(v0 + 656);
  v21 = *(v0 + 648);
  v22 = *(v0 + 640);
  v23 = *(v0 + 632);
  v24 = *(v0 + 624);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  v28 = *(v0 + 576);
  v29 = *(v0 + 568);
  v30 = *(v0 + 544);
  v31 = *(v0 + 536);
  v32 = *(v0 + 528);
  v33 = *(v0 + 504);
  v34 = *(v0 + 480);
  v35 = *(v0 + 472);
  v36 = *(v0 + 464);
  v37 = *(v0 + 456);
  v38 = *(v0 + 440);
  v39 = *(v0 + 416);
  v40 = *(v0 + 392);
  v41 = *(v0 + 384);
  v42 = *(v0 + 376);
  v43 = *(v0 + 368);
  v44 = *(v0 + 360);
  v45 = *(v0 + 352);
  v46 = *(v0 + 344);
  v47 = *(v0 + 320);
  v48 = *(v0 + 304);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_3BEF0()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = sub_6C35C();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_6AE9C();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_6C7EC();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = *(v2 + 80);
  v1[13] = v12;
  v13 = *(v12 - 8);
  v1[14] = v13;
  v14 = *(v13 + 64) + 15;
  v1[15] = swift_task_alloc();
  v15 = type metadata accessor for IFFlowError();
  v1[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v17 = sub_6C0EC();
  v1[21] = v17;
  v18 = *(v17 - 8);
  v1[22] = v18;
  v19 = *(v18 + 64) + 15;
  v1[23] = swift_task_alloc();
  v20 = sub_6C33C();
  v1[24] = v20;
  v21 = *(v20 - 8);
  v1[25] = v21;
  v22 = *(v21 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_3C208, 0, 0);
}

uint64_t sub_3C208()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v34 = v0[19];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[2];
  sub_6C0BC();
  (*(v3 + 104))(v2, enum case for MessagePayload.RequestContent.stop(_:), v4);
  sub_6C31C();
  (*(v5 + 16))(v6, v9 + *(*v9 + 184), v7);
  sub_30FBC(v34);
  v10 = v0[15];
  v11 = v0[12];
  v35 = v0[13];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[6];
  v33 = v0[7];
  v16 = v0[4];
  v15 = v0[5];
  v17 = v0[2];
  v18 = v0[3];
  (*(v0[25] + 16))(v14, v0[26], v0[24]);
  (*(v15 + 104))(v14, enum case for MessagePayload.request(_:), v16);
  sub_30BF8(v13, v14);
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v13, v33);
  v19 = *(v18 + 88);
  sub_6CF4C();
  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v21 + 8))(v20, v22);
  v23 = v0[23];
  v25 = v0[19];
  v24 = v0[20];
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[15];
  v29 = v0[12];
  v30 = v0[9];
  v36 = v0[6];
  (*(v0[25] + 8))(v0[26], v0[24]);

  v31 = v0[1];

  return v31();
}

uint64_t sub_3C798()
{
  result = sub_6D42C();
  if (result)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v1 = sub_6D04C();
    sub_5CE4(v1, qword_839A0);
    v2 = sub_6D03C();
    v3 = sub_6D46C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "[IFFlow] Task cancelled", v4, 2u);
    }

    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    return swift_willThrowTypedImpl();
  }

  return result;
}

void sub_3C8E8()
{
  sub_30BD4();
  v1 = sub_6CDBC();
  v3 = v2;

  sub_30BD4();
  v4 = sub_6CE2C();
  v6 = v5;

  if (v3)
  {
    sub_30BD4();
    v7 = sub_6CDCC();
    v9 = v8;

    if (v9)
    {
      v34 = *(v0 + 144);
      sub_30BD4();
      v10 = sub_6CDBC();
      v12 = v11;

      sub_4DDF8(v10, v12, v7, v9, v1, v3, v4, v6);

      sub_30BD4();
      v13 = sub_6CDBC();
      v15 = v14;

      sub_4E400(v7, v9, v13, v15);

      sub_30BD4();
      v16 = sub_6CDBC();
      v18 = v17;

      sub_52080(v16, v18);

      return;
    }
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v19 = sub_6D04C();
  sub_5CE4(v19, qword_839A0);

  oslog = sub_6D03C();
  v20 = sub_6D46C();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v21 = 136315394;
    sub_30BD4();
    v22 = sub_6CDBC();
    v24 = v23;

    if (v24)
    {
      v25 = v22;
    }

    else
    {
      v25 = 7104878;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_1076C(v25, v26, &v36);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    sub_30BD4();
    v28 = sub_6CDCC();
    v30 = v29;

    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = 7104878;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = sub_1076C(v31, v32, &v36);

    *(v21 + 14) = v33;
    _os_log_impl(&dword_0, oslog, v20, "[IFFlow] Attempted to log IntelligenceFlowQuerySent with rootRequestId: %s and currentRequestId: %s. This should not occur", v21, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_3CC8C(uint64_t (*a1)(void))
{
  sub_30BD4();
  v2 = a1();

  return v2;
}

void sub_3CCDC(uint64_t a1, uint64_t a2)
{
  v150 = a1;
  v151 = a2;
  v3 = sub_6C35C();
  v153 = *(v3 - 8);
  v154 = v3;
  v4 = *(v153 + 64);
  __chkstk_darwin(v3);
  v152 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_6BF6C();
  v138 = *(v140 - 8);
  v6 = *(v138 + 64);
  __chkstk_darwin(v140);
  v137 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAction.ExitValue(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v147 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v148 = &v133 - v12;
  v13 = sub_6C06C();
  v141 = *(v13 - 8);
  v14 = *(v141 + 64);
  __chkstk_darwin(v13);
  v16 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_6B0FC();
  v136 = *(v139 - 8);
  v17 = *(v136 + 64);
  __chkstk_darwin(v139);
  v135 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_5708(&qword_81E48, &qword_70E70);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v146 = &v133 - v21;
  v22 = sub_6B10C();
  v23 = *(v22 - 8);
  v142 = v22;
  v143 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_6B12C();
  v145 = *(v27 - 8);
  v28 = *(v145 + 64);
  __chkstk_darwin(v27);
  v149 = (&v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for FlowAction(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30BD4();
  v156 = sub_6CDBC();
  v35 = v34;

  v158 = v2;
  sub_30BD4();
  v155 = sub_6CE2C();
  v37 = v36;

  v157 = v35;
  if (v35)
  {
    sub_30BD4();
    v144 = sub_6CDCC();
    v39 = v38;

    if (v39)
    {
      sub_4B3CC(v150, v33, type metadata accessor for FlowAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v134 = v37;
      v133 = v39;
      switch(EnumCaseMultiPayload)
      {
        case 8:
          v86 = v141;
          (*(v141 + 32))(v16, v33, v13);
          v87 = v158;
          v88 = *(v158 + 144);
          sub_30BD4();
          v89 = sub_6CDBC();
          v91 = v90;

          v92 = v89;
          v93 = v157;
          sub_4F28C(v92, v91, v144, v39, v156, v157, v155, v37, v16);

          (*(v86 + 8))(v16, v13);
          v46 = v87;
          v57 = v93;
          break;
        case 9:
          v74 = v33;
          v75 = v148;
          sub_4B304(v74, v148, type metadata accessor for FlowAction.ExitValue);
          sub_4B3CC(v75, v147, type metadata accessor for FlowAction.ExitValue);
          v76 = swift_getEnumCaseMultiPayload();
          if (v76 > 1)
          {
            v57 = v157;
            v46 = v158;
            v77 = v153;
            v85 = v154;
            v78 = v152;
            if (v76 == 2)
            {
              v98 = sub_5708(&qword_81E50, &qword_70E78);
              v99 = v138;
              v100 = v137;
              (*(v138 + 32))(v137, &v147[*(v98 + 48)], v140);
              v150 = *(v46 + 144);
              sub_30BD4();
              v149 = sub_6CDBC();
              v102 = v101;

              v103 = v146;
              sub_6BF5C();
              v104 = sub_6BF0C();
              (*(*(v104 - 8) + 56))(v103, 0, 1, v104);
              sub_4FEAC(v149, v102, v144, v133, v156, v57, v155, v134, v103, 0);

              sub_5E20(v103, &qword_81E48, &qword_70E70);
              (*(v99 + 8))(v100, v140);
              sub_4B36C(v148, type metadata accessor for FlowAction.ExitValue);
              sub_9964(v147);
              goto LABEL_34;
            }
          }

          else
          {
            v57 = v157;
            v46 = v158;
            v78 = v152;
            v77 = v153;
            if (!v76)
            {
              v79 = *(v158 + 144);
              sub_30BD4();
              v80 = sub_6CDBC();
              v82 = v81;

              v83 = sub_6BF0C();
              v84 = v146;
              (*(*(v83 - 8) + 56))(v146, 1, 1, v83);
              sub_4FEAC(v80, v82, v144, v39, v156, v57, v155, v134, v84, 0);

              sub_5E20(v84, &qword_81E48, &qword_70E70);
              sub_4B36C(v148, type metadata accessor for FlowAction.ExitValue);
              sub_4B36C(v147, type metadata accessor for FlowAction.ExitValue);
              v85 = v154;
LABEL_34:
              sub_6C81C();
              if ((*(v77 + 88))(v78, v85) == enum case for MessagePayload.actionExecuted(_:))
              {
                v94 = *(v46 + 144);
                sub_30BD4();
                v95 = sub_6CDBC();
                v97 = v96;

                sub_4EC1C(v95, v97, v144, v133, v156, v57, v155, v134);
              }

              (*(v77 + 8))(v78, v85);
              return;
            }

            sub_4B36C(v147, type metadata accessor for FlowAction.ExitValue);
            v85 = v154;
          }

          v113 = *(v46 + 144);
          sub_30BD4();
          v114 = sub_6CDBC();
          v116 = v115;

          sub_4EC1C(v114, v116, v144, v133, v156, v57, v155, v134);

          sub_4B36C(v148, type metadata accessor for FlowAction.ExitValue);
          goto LABEL_34;
        case 10:
          v41 = v145;
          v42 = v27;
          (*(v145 + 32))(v149, v33, v27);
          sub_6B11C();
          v44 = v142;
          v43 = v143;
          v45 = (*(v143 + 88))(v26, v142);
          if (v45 == enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:))
          {
            (*(v43 + 8))(v26, v44);
            v46 = v158;
            v148 = *(v158 + 144);
            sub_30BD4();
            v47 = sub_6CDBC();
            v49 = v48;

            v50 = enum case for ActionFailure.Failure.noMatchingTool(_:);
            v51 = v39;
            v52 = sub_6BF0C();
            v53 = *(v52 - 8);
            v54 = *(v53 + 104);
            v150 = v42;
            v55 = v146;
            v54(v146, v50, v52);
            (*(v53 + 56))(v55, 0, 1, v52);
            v56 = v51;
            v57 = v157;
            sub_4FEAC(v47, v49, v144, v56, v156, v157, v155, v37, v55, 1u);

            sub_5E20(v55, &qword_81E48, &qword_70E70);
            (*(v41 + 8))(v149, v150);
          }

          else if (v45 == enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
          {
            (*(v43 + 96))(v26, v44);
            v105 = v136;
            v106 = v135;
            (*(v136 + 32))(v135, v26, v139);
            v46 = v158;
            v148 = *(v158 + 144);
            sub_30BD4();
            v147 = sub_6CDBC();
            v108 = v107;

            sub_6B0EC();
            v150 = v42;
            v109 = v146;
            sub_6BF1C();
            v110 = enum case for ActionFailure.Failure.unableToHandleRequest(_:);
            v111 = sub_6BF0C();
            v112 = *(v111 - 8);
            (*(v112 + 104))(v109, v110, v111);
            (*(v112 + 56))(v109, 0, 1, v111);
            v57 = v157;
            sub_4FEAC(v147, v108, v144, v39, v156, v157, v155, v37, v109, 1u);

            sub_5E20(v109, &qword_81E48, &qword_70E70);
            (*(v105 + 8))(v106, v139);
            (*(v145 + 8))(v149, v150);
          }

          else
          {
            v117 = enum case for SiriXRedirectContext.RedirectReason.valueSelectionRequired(_:);
            v118 = *(v158 + 144);
            v119 = v45;
            v120 = sub_3CC8C(&CurrentRequest.rootRequestId.getter);
            v122 = v121;
            if (v119 == v117)
            {
              v123 = enum case for ActionFailure.Failure.valueSelectionRequired(_:);
              v124 = sub_6BF0C();
              v125 = *(v124 - 8);
              v126 = v146;
              (*(v125 + 104))(v146, v123, v124);
              (*(v125 + 56))(v126, 0, 1, v124);
              v57 = v157;
              sub_4FEAC(v120, v122, v144, v39, v156, v157, v155, v134, v126, 1u);

              sub_5E20(v126, &qword_81E48, &qword_70E70);
              (*(v145 + 8))(v149, v42);
            }

            else
            {
              v150 = v42;
              v127 = v146;
              sub_6BF1C();
              v128 = enum case for ActionFailure.Failure.unableToHandleRequest(_:);
              v129 = sub_6BF0C();
              v130 = *(v129 - 8);
              (*(v130 + 104))(v127, v128, v129);
              (*(v130 + 56))(v127, 0, 1, v129);
              v131 = v157;
              sub_4FEAC(v120, v122, v144, v39, v156, v157, v155, v134, v127, 1u);

              sub_5E20(v127, &qword_81E48, &qword_70E70);
              (*(v145 + 8))(v149, v150);
              v132 = v44;
              v57 = v131;
              (*(v143 + 8))(v26, v132);
            }

            v46 = v158;
          }

          break;
        default:
          sub_4B36C(v33, type metadata accessor for FlowAction);
          v57 = v157;
          v46 = v158;
          break;
      }

      v77 = v153;
      v85 = v154;
      v78 = v152;
      goto LABEL_34;
    }
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v58 = sub_6D04C();
  sub_5CE4(v58, qword_839A0);

  v157 = sub_6D03C();
  v59 = sub_6D46C();

  if (os_log_type_enabled(v157, v59))
  {
    v60 = swift_slowAlloc();
    v159[0] = swift_slowAlloc();
    *v60 = 136315394;
    sub_30BD4();
    v61 = sub_6CDBC();
    v63 = v62;

    if (v63)
    {
      v64 = v61;
    }

    else
    {
      v64 = 7104878;
    }

    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE300000000000000;
    }

    v66 = sub_1076C(v64, v65, v159);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2080;
    sub_30BD4();
    v67 = sub_6CDCC();
    v69 = v68;

    if (v69)
    {
      v70 = v67;
    }

    else
    {
      v70 = 7104878;
    }

    if (v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = 0xE300000000000000;
    }

    v72 = sub_1076C(v70, v71, v159);

    *(v60 + 14) = v72;
    _os_log_impl(&dword_0, v157, v59, "[IFFlow] Attempted to log IntelligenceFlowQuerySent with rootRequestId: %s and currentRequestId: %s. This should not occur", v60, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v73 = v157;
  }
}

uint64_t sub_3DEF8(uint64_t a1, uint64_t a2)
{
  v3[10] = v2;
  v3[11] = a2;
  v3[9] = a1;
  v4 = *v2;
  v5 = sub_6CFDC();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = type metadata accessor for IFFlowError();
  v3[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = *(v4 + 88);
  v11 = *(v4 + 80);
  v3[20] = swift_getAssociatedTypeWitness();
  v3[21] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[22] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v3[23] = v13;
  v14 = *(v13 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v15 = *(*(sub_5708(&qword_81E60, &qword_70E90) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_3E160, 0, 0);
}

uint64_t sub_3E160()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[10];
  sub_321FC(v0[25]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_3E244;
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[22];

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v10, AssociatedConformanceWitness);
}

uint64_t sub_3E244()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_3E690;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_325C0(*(v2 + 200));
    v4 = sub_3E364;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_3E364()
{
  v1 = v0[30];
  v2 = v0[19];
  v3 = v0[10];
  sub_201AC(v0[27], v0[28], &qword_81E60, &qword_70E90);
  sub_3C798();
  v4 = v0[28];
  if (v1)
  {
    v5 = v0[19];
    v6 = v0[11];
    sub_5E20(v4, &qword_81E60, &qword_70E90);
    sub_4B304(v5, v6, type metadata accessor for IFFlowError);
LABEL_5:
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[24];
    v20 = v0[18];
    v19 = v0[19];
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];

    v24 = v0[1];
    goto LABEL_6;
  }

  v7 = v0[26];
  sub_C14C(v4, v7, &qword_81E60, &qword_70E90);
  v8 = sub_6C83C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = v0[28];
  if (v10 == 1)
  {
    v12 = v0[17];
    v13 = v0[11];
    sub_5E20(v0[26], &qword_81E60, &qword_70E90);
    *v13 = 0xD000000000000023;
    v13[1] = 0x800000000006F420;
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    swift_willThrowTypedImpl();
    sub_5E20(v11, &qword_81E60, &qword_70E90);
    goto LABEL_5;
  }

  v27 = v0[26];
  v26 = v0[27];
  v29 = v0[24];
  v28 = v0[25];
  v30 = v0[19];
  v32 = v0[18];
  v33 = v0[16];
  v34 = v0[15];
  v35 = v0[14];
  v31 = v0[9];
  sub_5E20(v11, &qword_81E60, &qword_70E90);
  (*(v9 + 32))(v31, v27, v8);

  v24 = v0[1];
LABEL_6:

  return v24();
}

uint64_t sub_3E690()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[10];
  (*(v0[23] + 32))(v2, v0[25], v0[22]);
  sub_325C0(v2);
  v0[8] = v1;
  swift_errorRetain();
  sub_5708(&qword_813D0, qword_6FC50);
  if (swift_dynamicCast())
  {
    v6 = v0[30];
    v7 = v0[18];
    v58 = v0[17];
    v9 = v0[15];
    v8 = v0[16];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];

    (*(v11 + 32))(v9, v8, v12);
    sub_4B434(&qword_81D40, &type metadata accessor for IFSessionServiceClient.RelayError);
    v13 = swift_allocError();
    v14 = *(v11 + 16);
    v14(v15, v9, v12);
    *v7 = v13;
    swift_storeEnumTagMultiPayload();
    v14(v10, v9, v12);
    v16 = (*(v11 + 88))(v10, v12);
    if (v16 == enum case for IFSessionServiceClient.RelayError.companionNotFound(_:) || v16 == enum case for IFSessionServiceClient.RelayError.companionAIIsOff(_:))
    {
      v17 = v0[17];
      sub_4B36C(v0[18], type metadata accessor for IFFlowError);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v30 = sub_6D04C();
    sub_5CE4(v30, qword_839A0);
    v31 = sub_6D03C();
    v32 = sub_6D46C();
    if (os_log_type_enabled(v31, v32))
    {
      v34 = v0[17];
      v33 = v0[18];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_beginAccess();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_allocError();
      sub_4B3CC(v33, v37, type metadata accessor for IFFlowError);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_0, v31, v32, "IFFlow Error error to return Intelligence Flow %@", v35, 0xCu);
      sub_5E20(v36, &qword_81508, &unk_70260);
    }

    v40 = v0[17];
    v39 = v0[18];
    v41 = v0[15];
    v42 = v0[12];
    v43 = v0[13];
    v44 = v0[11];

    swift_beginAccess();
    sub_4B3CC(v39, v44, type metadata accessor for IFFlowError);
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    swift_willThrowTypedImpl();
    (*(v43 + 8))(v41, v42);
    sub_4B36C(v39, type metadata accessor for IFFlowError);
    v45 = v0[8];
  }

  else
  {
    v18 = v0[8];

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v19 = v0[30];
    v20 = sub_6D04C();
    sub_5CE4(v20, qword_839A0);
    swift_errorRetain();
    v21 = sub_6D03C();
    v22 = sub_6D46C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[30];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&dword_0, v21, v22, "Error while receiving event from Intelligence Flow %@", v24, 0xCu);
      sub_5E20(v25, &qword_81508, &unk_70260);
    }

    v27 = v0[30];
    v28 = v0[17];
    v29 = v0[11];

    *v29 = v27;
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    swift_willThrowTypedImpl();
  }

  v47 = v0[27];
  v46 = v0[28];
  v49 = v0[25];
  v48 = v0[26];
  v50 = v0[24];
  v52 = v0[18];
  v51 = v0[19];
  v54 = v0[15];
  v53 = v0[16];
  v55 = v0[14];

  v56 = v0[1];

  return v56();
}

uint64_t sub_3ED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[93] = a3;
  v4[92] = v3;
  v4[91] = a2;
  v4[90] = a1;
  v5 = *v3;
  v6 = sub_6B60C();
  v4[94] = v6;
  v7 = *(v6 - 8);
  v4[95] = v7;
  v8 = *(v7 + 64) + 15;
  v4[96] = swift_task_alloc();
  v9 = sub_6C06C();
  v4[97] = v9;
  v10 = *(v9 - 8);
  v4[98] = v10;
  v11 = *(v10 + 64) + 15;
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v12 = sub_6B7FC();
  v4[101] = v12;
  v13 = *(v12 - 8);
  v4[102] = v13;
  v14 = *(v13 + 64) + 15;
  v4[103] = swift_task_alloc();
  v15 = *(*(sub_6B7AC() - 8) + 64) + 15;
  v4[104] = swift_task_alloc();
  v16 = sub_6B36C();
  v4[105] = v16;
  v17 = *(v16 - 8);
  v4[106] = v17;
  v18 = *(v17 + 64) + 15;
  v4[107] = swift_task_alloc();
  v19 = sub_6B7EC();
  v4[108] = v19;
  v20 = *(v19 - 8);
  v4[109] = v20;
  v21 = *(v20 + 64) + 15;
  v4[110] = swift_task_alloc();
  v22 = sub_6B1AC();
  v4[111] = v22;
  v23 = *(v22 - 8);
  v4[112] = v23;
  v24 = *(v23 + 64) + 15;
  v4[113] = swift_task_alloc();
  v25 = sub_6B10C();
  v4[114] = v25;
  v26 = *(v25 - 8);
  v4[115] = v26;
  v27 = *(v26 + 64) + 15;
  v4[116] = swift_task_alloc();
  v28 = sub_6B12C();
  v4[117] = v28;
  v29 = *(v28 - 8);
  v4[118] = v29;
  v30 = *(v29 + 64) + 15;
  v4[119] = swift_task_alloc();
  v31 = *(*(type metadata accessor for FlowAction.ExitValue(0) - 8) + 64) + 15;
  v4[120] = swift_task_alloc();
  v32 = sub_6B5DC();
  v4[121] = v32;
  v33 = *(v32 - 8);
  v4[122] = v33;
  v34 = *(v33 + 64) + 15;
  v4[123] = swift_task_alloc();
  v35 = sub_6D02C();
  v4[124] = v35;
  v36 = *(v35 - 8);
  v4[125] = v36;
  v37 = *(v36 + 64) + 15;
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v38 = sub_6C61C();
  v4[128] = v38;
  v39 = *(v38 - 8);
  v4[129] = v39;
  v40 = *(v39 + 64) + 15;
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v41 = sub_6C63C();
  v4[132] = v41;
  v42 = *(v41 - 8);
  v4[133] = v42;
  v43 = *(v42 + 64) + 15;
  v4[134] = swift_task_alloc();
  v44 = *(*(type metadata accessor for LocationRequest() - 8) + 64) + 15;
  v4[135] = swift_task_alloc();
  v45 = sub_6C83C();
  v4[136] = v45;
  v46 = *(v45 - 8);
  v4[137] = v46;
  v4[138] = *(v46 + 64);
  v4[139] = swift_task_alloc();
  v47 = sub_6BEEC();
  v4[140] = v47;
  v48 = *(v47 - 8);
  v4[141] = v48;
  v4[142] = *(v48 + 64);
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v49 = type metadata accessor for PromptValue(0);
  v4[150] = v49;
  v50 = *(*(v49 - 8) + 64) + 15;
  v4[151] = swift_task_alloc();
  v4[152] = swift_task_alloc();
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v51 = *(*(sub_5708(&qword_81D88, &qword_70DC0) - 8) + 64) + 15;
  v4[155] = swift_task_alloc();
  v52 = *(*(sub_5708(&unk_82030, &qword_70370) - 8) + 64) + 15;
  v4[156] = swift_task_alloc();
  v53 = sub_6C7EC();
  v4[157] = v53;
  v54 = *(v53 - 8);
  v4[158] = v54;
  v55 = *(v54 + 64) + 15;
  v4[159] = swift_task_alloc();
  v4[160] = *(v5 + 80);
  v4[161] = *(v5 + 88);
  v56 = type metadata accessor for IFFlow.State();
  v4[162] = v56;
  v57 = *(v56 - 8);
  v4[163] = v57;
  v58 = *(v57 + 64) + 15;
  v4[164] = swift_task_alloc();
  v59 = type metadata accessor for FlowAction(0);
  v4[165] = v59;
  v60 = *(v59 - 8);
  v4[166] = v60;
  v61 = *(v60 + 64) + 15;
  v4[167] = swift_task_alloc();
  v62 = *(*(sub_5708(&qword_81D90, &qword_70DC8) - 8) + 64) + 15;
  v4[168] = swift_task_alloc();
  v4[169] = swift_task_alloc();
  v4[170] = swift_task_alloc();
  v63 = sub_6C35C();
  v4[171] = v63;
  v64 = *(v63 - 8);
  v4[172] = v64;
  v65 = *(v64 + 64) + 15;
  v4[173] = swift_task_alloc();
  v4[174] = swift_task_alloc();
  v4[175] = swift_task_alloc();
  v66 = type metadata accessor for IFFlowError();
  v4[176] = v66;
  v67 = *(*(v66 - 8) + 64) + 15;
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v68 = sub_6AE9C();
  v4[183] = v68;
  v69 = *(v68 - 8);
  v4[184] = v69;
  v4[185] = *(v69 + 64);
  v4[186] = swift_task_alloc();
  v4[187] = swift_task_alloc();

  return _swift_task_switch(sub_3F788, 0, 0);
}

uint64_t sub_3F788()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 736);
  sub_30FBC(*(v0 + 1456));
  *(v0 + 1504) = 0;
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1376);
  v6 = *(v0 + 1368);
  v7 = *(v0 + 728);
  sub_6C81C();
  (*(v5 + 32))(v4, v3, v6);
  LODWORD(v7) = (*(v5 + 88))(v4, v6);
  LODWORD(v3) = enum case for MessagePayload.plannerReturnedRawPlan(_:);
  v8 = *(v5 + 8);
  *(v0 + 1512) = v8;
  v8(v4, v6);
  if (v7 == v3)
  {
    v9 = swift_task_alloc();
    *(v0 + 1520) = v9;
    *v9 = v0;
    v9[1] = sub_3FC9C;
    v10 = *(v0 + 736);

    return sub_576F4();
  }

  else
  {
    v12 = *(v0 + 736);
    v13 = sub_30BD4();
    *(v0 + 1528) = v13;
    v14 = *(v12 + 200);
    v15 = *(v12 + 208);
    *(v0 + 1536) = v15;
    v16 = *(v12 + 193);

    v17 = swift_task_alloc();
    *(v0 + 1544) = v17;
    *v17 = v0;
    v17[1] = sub_3FE80;
    v18 = *(v0 + 1360);
    v19 = *(v0 + 728);

    return sub_58694(v18, v19, v12 + 96, v13, v14, v15, v12 + 16, v16);
  }
}

uint64_t sub_3FC9C()
{
  v1 = *(*v0 + 1520);
  v3 = *v0;

  return _swift_task_switch(sub_3FD98, 0, 0);
}

uint64_t sub_3FD98()
{
  v1 = v0[92];
  v2 = sub_30BD4();
  v0[191] = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v0[192] = v4;
  v5 = *(v1 + 193);

  v6 = swift_task_alloc();
  v0[193] = v6;
  *v6 = v0;
  v6[1] = sub_3FE80;
  v7 = v0[170];
  v8 = v0[91];

  return sub_58694(v7, v8, v1 + 96, v2, v3, v4, v1 + 16, v5);
}

uint64_t sub_3FE80()
{
  v1 = *(*v0 + 1544);
  v2 = *(*v0 + 1536);
  v3 = *(*v0 + 1528);
  v5 = *v0;

  return _swift_task_switch(sub_3FFB4, 0, 0);
}

uint64_t sub_3FFB4()
{
  v656 = v0;
  v1 = v0;
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[166];
  v5 = v0[165];
  sub_C14C(v2, v3, &qword_81D90, &qword_70DC8);
  v6 = *(v4 + 48);
  v7 = v6(v3, 1, v5);
  v8 = v1[169];
  if (v7 == 1)
  {
    sub_5E20(v8, &qword_81D90, &qword_70DC8);
  }

  else
  {
    v9 = v1[167];
    v10 = v1[92];
    v11 = v1[91];
    sub_4B304(v8, v9, type metadata accessor for FlowAction);
    sub_3CCDC(v9, v11);
    sub_4B36C(v9, type metadata accessor for FlowAction);
  }

  v12 = v1[92];
  sub_30BD4();
  v13 = sub_6CDBC();
  v15 = v14;

  if (v15)
  {
    v644 = v1[189];
    v16 = v1[173];
    v17 = v1[172];
    v18 = v1[171];
    v19 = v1[91];
    v20 = *(v1[92] + 144);
    sub_6C81C();
    sub_51190(v16, v13, v15);

    v644(v16, v18);
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v21 = sub_6D04C();
    sub_5CE4(v21, qword_839A0);
    v22 = sub_6D03C();
    v23 = sub_6D45C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Cannot attempt to apply redaction tag for empty rootRequestId", v24, 2u);
    }
  }

  v25 = v1[168];
  v26 = v1[165];
  sub_C14C(v1[170], v25, &qword_81D90, &qword_70DC8);
  if (v6(v25, 1, v26) == 1)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v27 = sub_6D04C();
    sub_5CE4(v27, qword_839A0);
    v28 = sub_6D03C();
    v29 = sub_6D45C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v655[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
      _os_log_impl(&dword_0, v28, v29, "In %s - next flow action is none", v30, 0xCu);
      sub_9964(v31);
    }

    v32 = v1[187];
    v33 = v1[184];
    v34 = v1[183];
    v35 = v1[170];
    v36 = v1[164];
    v37 = v1[163];
    v38 = v1[162];
    v39 = v1[92];
    v40 = v1[90];
    swift_storeEnumTagMultiPayload();
    sub_4A280(v36);
    (*(v37 + 8))(v36, v38);
    sub_6B45C();
    sub_5E20(v35, &qword_81D90, &qword_70DC8);
    (*(v33 + 8))(v32, v34);
    goto LABEL_17;
  }

  v54 = v1[168];
  v55 = v1[165];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v135 = v1[143];
        v136 = v1[141];
        v137 = v1[140];
        v635 = *v54;
        v538 = *(v54 + 8);
        v138 = sub_5708(&qword_81DA8, &unk_71420);
        v598 = *(v136 + 32);
        v598(v135, v54 + *(v138 + 48), v137);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v139 = sub_6D04C();
        sub_5CE4(v139, qword_839A0);
        v140 = sub_6D03C();
        v141 = sub_6D45C();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v655[0] = v143;
          *v142 = 136315138;
          *(v142 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
          _os_log_impl(&dword_0, v140, v141, "In %s - next flow action is promptForProtectedAppApproval", v142, 0xCu);
          sub_9964(v143);
        }

        v577 = v1[183];
        v588 = v1[187];
        v557 = v1[170];
        v567 = v1[184];
        v144 = v1[164];
        v476 = v1[162];
        v145 = v1[160];
        v454 = v145;
        v461 = v1[161];
        v493 = v1[163];
        v502 = v1[148];
        v617 = v1[143];
        v520 = v1[142];
        v648 = v1[141];
        v146 = v1[140];
        v511 = v1[139];
        v529 = v1[138];
        v147 = v1[137];
        v148 = v1[136];
        v627 = v1[92];
        v468 = v1[91];
        v549 = v1[90];
        sub_6B05C();
        sub_5708(&qword_81DB0, &qword_70E20);
        v149 = *(sub_6B0BC() - 8);
        v150 = *(v149 + 72);
        v151 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        *(swift_allocObject() + 16) = xmmword_70000;
        sub_6B09C();

        v636 = sub_6B04C();
        type metadata accessor for IFFlow.PromptValue();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v153 = *(TupleTypeMetadata3 + 48);
        v154 = *(TupleTypeMetadata3 + 64);
        *v144 = 1;
        v539 = *(v147 + 16);
        v539(&v144[v153], v468, v148);
        v155 = *(v648 + 16);
        v155(&v144[v154], v617, v146);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v144);
        (*(v493 + 8))(v144, v476);
        v1[83] = v636;
        v155(v502, v617, v146);
        v539(v511, v468, v148);
        v156 = (*(v648 + 80) + 40) & ~*(v648 + 80);
        v157 = (v520 + *(v147 + 80) + v156) & ~*(v147 + 80);
        v158 = swift_allocObject();
        *(v158 + 2) = v454;
        *(v158 + 3) = v461;
        *(v158 + 4) = v627;
        v598(&v158[v156], v502, v146);
        (*(v147 + 32))(&v158[v157], v511, v148);

        sub_6B46C();

        (*(v648 + 8))(v617, v146);
        sub_5E20(v557, &qword_81D90, &qword_70DC8);
        (*(v567 + 8))(v588, v577);
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          v68 = *v54;
          v69 = *(v54 + 8);
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v70 = sub_6D04C();
          sub_5CE4(v70, qword_839A0);
          v71 = sub_6D03C();
          v72 = sub_6D45C();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v655[0] = v74;
            *v73 = 136315138;
            *(v73 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
            _os_log_impl(&dword_0, v71, v72, "In %s - next flow action is  redirectToEmergencyDomain", v73, 0xCu);
            sub_9964(v74);
          }

          v75 = sub_6D03C();
          v76 = sub_6D44C();

          v548 = v69;
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v655[0] = v78;
            *v77 = 136315138;
            *(v77 + 4) = sub_1076C(v68, v69, v655);
            _os_log_impl(&dword_0, v75, v76, "Redirecting to emergency domain with situation '%s'", v77, 0xCu);
            sub_9964(v78);
          }

          v79 = v68;
          v633 = v1[183];
          v646 = v1[187];
          v614 = v1[170];
          v625 = v1[184];
          v80 = v1[110];
          v81 = v1[109];
          v82 = v1[107];
          v83 = v1[106];
          v586 = v1[104];
          v84 = v1[103];
          v85 = v1[102];
          v565 = v1[108];
          v575 = v1[101];
          v596 = v1[90];
          v605 = v1[105];
          sub_5708(&qword_81DA0, &unk_70E00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_70000;
          *(inited + 32) = 0xD000000000000012;
          v87 = inited + 32;
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = 0x800000000006F3B0;
          *(inited + 48) = v79;
          *(inited + 56) = v548;
          sub_26118(inited);
          swift_setDeallocating();
          sub_5E20(v87, &qword_81A00, &qword_716C0);
          sub_6B7BC();
          (*(v81 + 16))(v84, v80, v565);
          (*(v85 + 104))(v84, enum case for Parse.directInvocation(_:), v575);
          sub_6B79C();
          sub_6B34C();
          sub_6B4AC();
          (*(v83 + 8))(v82, v605);
          (*(v81 + 8))(v80, v565);
        }

        else
        {
          (*(v1[98] + 32))(v1[100], v54, v1[97]);
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v210 = sub_6D04C();
          sub_5CE4(v210, qword_839A0);
          v211 = sub_6D03C();
          v212 = sub_6D45C();
          if (os_log_type_enabled(v211, v212))
          {
            v213 = swift_slowAlloc();
            v214 = swift_slowAlloc();
            v655[0] = v214;
            *v213 = 136315138;
            *(v213 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
            _os_log_impl(&dword_0, v211, v212, "In %s - next flow action is redirectToShim", v213, 0xCu);
            sub_9964(v214);
          }

          v215 = v1[96];
          v216 = v1[92];
          (*(v1[98] + 16))(v1[99], v1[100], v1[97]);
          sub_6B5FC();
          sub_9878(v216 + 16, (v1 + 12));
          sub_9878(v216 + 56, (v1 + 17));
          if (qword_812B0 != -1)
          {
            swift_once();
          }

          v633 = v1[183];
          v646 = v1[187];
          v614 = v1[170];
          v625 = v1[184];
          v217 = v1[164];
          v218 = v1[163];
          v599 = v1[97];
          v608 = v1[100];
          v219 = v1[95];
          v541 = v1[94];
          v550 = v1[96];
          v559 = v1[92];
          v569 = v1[162];
          v579 = v1[90];
          v590 = v1[98];
          v220 = qword_839C8;
          v221 = type metadata accessor for IFClientActionRoutingFlow();
          v222 = *(v221 + 48);
          v223 = *(v221 + 52);
          v224 = swift_allocObject();
          v225 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow__currentRequest;
          swift_getKeyPath();
          v226 = sub_5708(&qword_816B8, &qword_70210);
          v227 = *(v226 + 48);
          v228 = *(v226 + 52);
          swift_allocObject();

          *(v224 + v225) = sub_6BC8C();
          (*(v219 + 32))(v224 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse, v550, v541);
          sub_1FD68(v1 + 6, v224 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState);
          sub_1FD68((v1 + 17), v224 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher);
          *(v224 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_instrumentationUtil) = v220;
          v229 = (v224 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator);
          *v229 = &unk_70270;
          v229[1] = 0;
          *(v224 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = 0;
          *v217 = 0;
          *(v217 + 8) = 0;
          swift_storeEnumTagMultiPayload();
          sub_4A280(v217);
          (*(v218 + 8))(v217, v569);
          v1[82] = v224;
          sub_4B434(&qword_81D98, type metadata accessor for IFClientActionRoutingFlow);
          sub_6B13C();
          sub_6B48C();

          (*(v590 + 8))(v608, v599);
        }

        sub_5E20(v614, &qword_81D90, &qword_70DC8);
        (*(v625 + 8))(v646, v633);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 9)
    {
      sub_4B304(v54, v1[120], type metadata accessor for FlowAction.ExitValue);
      v179 = swift_task_alloc();
      v1[201] = v179;
      *v179 = v1;
      v179[1] = sub_45BC0;
      v180 = v1[177];
      v181 = v1[120];
      v182 = v1[92];
      v183 = v1[90];

      return sub_477B0(v183, v181, v180);
    }

    if (EnumCaseMultiPayload == 10)
    {
      (*(v1[118] + 32))(v1[119], v54, v1[117]);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v113 = sub_6D04C();
      sub_5CE4(v113, qword_839A0);
      v114 = sub_6D03C();
      v115 = sub_6D45C();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v655[0] = v117;
        *v116 = 136315138;
        *(v116 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
        _os_log_impl(&dword_0, v114, v115, "In %s - next flow action is redirectToSiriX", v116, 0xCu);
        sub_9964(v117);
      }

      v118 = v1[119];
      v119 = v1[116];
      v120 = v1[115];
      v121 = v1[114];
      sub_6B11C();
      v122 = (*(v120 + 88))(v119, v121);
      v123 = v122;
      v124 = enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:);
      if (v122 == enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:))
      {
        v125 = v1[176];
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
        v126 = swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (v122 != enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
        {
          v292 = v1[176];
          v293 = v1[164];
          v294 = v1[163];
          v295 = v1[162];
          v296 = v1[92];
          v297 = enum case for SiriXRedirectContext.RedirectReason.ifFlowError(_:);
          sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
          v298 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          *v293 = v298;
          *(v293 + 8) = 1;
          swift_storeEnumTagMultiPayload();
          sub_4A280(v293);
          (*(v294 + 8))(v293, v295);
          if (v123 == v297)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        v126 = 0;
      }

      v278 = v123 == v124;
      v279 = v1[164];
      v280 = v1[163];
      v281 = v1[162];
      v282 = v1[92];
      *v279 = v126;
      *(v279 + 8) = v278;
      swift_storeEnumTagMultiPayload();
      sub_4A280(v279);
      (*(v280 + 8))(v279, v281);
LABEL_105:
      (*(v1[115] + 8))(v1[116], v1[114]);
LABEL_106:
      v283 = v1[184];
      v639 = v1[183];
      v650 = v1[187];
      v284 = v1[170];
      v285 = v1[119];
      v286 = v1[118];
      v287 = v1[117];
      v288 = v1[113];
      v289 = v1[112];
      v290 = v1[111];
      v291 = v1[90];
      (*(v286 + 16))(v288, v285, v287);
      (*(v289 + 104))(v288, enum case for FlowUnhandledReason.needsSiriXRedirect(_:), v290);
      sub_6B4BC();
      (*(v289 + 8))(v288, v290);
      (*(v286 + 8))(v285, v287);
      sub_5E20(v284, &qword_81D90, &qword_70DC8);
      (*(v283 + 8))(v650, v639);
      goto LABEL_17;
    }

    v256 = v1[147];
    v257 = v1[141];
    v258 = v1[140];
    v259 = v1[134];
    v260 = v1[133];
    v261 = v1[132];
    v262 = *(sub_5708(&qword_81E00, &qword_70E50) + 48);
    (*(v260 + 32))(v259, v54, v261);
    v561 = *(v257 + 32);
    v561(v256, v54 + v262, v258);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v263 = sub_6D04C();
    sub_5CE4(v263, qword_839A0);
    v264 = sub_6D03C();
    v265 = sub_6D45C();
    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      v655[0] = v267;
      *v266 = 136315138;
      *(v266 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
      _os_log_impl(&dword_0, v264, v265, "In %s - next flow action is runAjaxEnablement", v266, 0xCu);
      sub_9964(v267);
    }

    v268 = v1[134];
    v269 = v1[131];
    v270 = v1[130];
    v271 = v1[129];
    v272 = v1[128];
    sub_6C62C();
    (*(v271 + 32))(v270, v269, v272);
    v273 = (*(v271 + 88))(v270, v272);
    if (v273 == enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.mediaQA(_:))
    {
      v274 = v1[126];
      v275 = v1[125];
      v276 = v1[124];
      v277 = &enum case for RequestType.mediaQA(_:);
    }

    else if (v273 == enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.knowledgeFallback(_:))
    {
      v274 = v1[126];
      v275 = v1[125];
      v276 = v1[124];
      v277 = &enum case for RequestType.knowledgeFallback(_:);
    }

    else
    {
      if (v273 != enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.composeViaSiri(_:))
      {
        v300 = *(v1[125] + 104);
        if (v273 != enum case for ActionConfirmation.SystemStyle.MontaraEnablement.Source.textAssistant(_:))
        {
          v387 = v1[130];
          v388 = v1[129];
          v389 = v1[128];
          v300(v1[126], enum case for RequestType.composeViaSiri(_:), v1[124]);
          (*(v388 + 8))(v387, v389);
          goto LABEL_115;
        }

        v274 = v1[126];
        v276 = v1[124];
        v299 = enum case for RequestType.textAssistant(_:);
LABEL_114:
        v300(v274, v299, v276);
LABEL_115:
        v651 = v1[187];
        v479 = v1[186];
        v496 = v1[185];
        v600 = v1[184];
        v463 = v1[183];
        v552 = v1[170];
        v301 = v1[164];
        v448 = v1[162];
        v457 = v1[163];
        v302 = v1[160];
        v440 = v1[161];
        v630 = v1[148];
        v581 = v1[147];
        v470 = v1[142];
        v303 = v1[141];
        v428 = v1[140];
        v640 = v1[139];
        v487 = v1[138];
        v304 = v1[137];
        v421 = v304;
        v305 = v1[136];
        v523 = v1[134];
        v532 = v1[133];
        v543 = v1[132];
        v620 = v1[92];
        v306 = v1[91];
        v514 = v1[90];
        (*(v1[125] + 32))(v1[127], v1[126], v1[124]);
        sub_6C60C();
        v505 = sub_6D0EC();
        v307 = *(v505 + 48);
        v308 = *(v505 + 52);
        swift_allocObject();
        v610 = sub_6D0DC();
        type metadata accessor for IFFlow.PromptValue();
        v309 = swift_getTupleTypeMetadata3();
        v310 = *(v309 + 48);
        v311 = *(v309 + 64);
        *v301 = 1;
        v409 = *(v304 + 16);
        v409(&v301[v310], v306, v305);
        v312 = *(v303 + 16);
        v312(&v301[v311], v581, v428);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v301);
        (*(v457 + 8))(v301, v448);
        v1[87] = v610;
        v312(v630, v581, v428);
        v409(v640, v306, v305);
        (*(v600 + 16))(v479, v651, v463);
        v313 = (*(v303 + 80) + 40) & ~*(v303 + 80);
        v314 = (v470 + *(v421 + 80) + v313) & ~*(v421 + 80);
        v315 = (v487 + *(v600 + 80) + v314) & ~*(v600 + 80);
        v316 = swift_allocObject();
        *(v316 + 2) = v302;
        *(v316 + 3) = v440;
        *(v316 + 4) = v620;
        v561(&v316[v313], v630, v428);
        (*(v421 + 32))(&v316[v314], v640, v305);
        (*(v600 + 32))(&v316[v315], v479, v463);
        sub_4B434(&qword_81E08, &type metadata accessor for GenerativeAssistantEnablementFlow);

        sub_6B46C();

        (*(v303 + 8))(v581, v428);
        (*(v532 + 8))(v523, v543);
        sub_5E20(v552, &qword_81D90, &qword_70DC8);
        (*(v600 + 8))(v651, v463);

        goto LABEL_17;
      }

      v274 = v1[126];
      v275 = v1[125];
      v276 = v1[124];
      v277 = &enum case for RequestType.composeViaSiri(_:);
    }

    v299 = *v277;
    v300 = *(v275 + 104);
    goto LABEL_114;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v88 = v1[145];
        v89 = v1[141];
        v90 = v1[140];
        v615 = *(v54 + 40);
        v91 = *(sub_5708(&qword_81DC0, &qword_70E30) + 64);
        sub_1FD68(v54, (v1 + 22));
        v537 = *(v89 + 32);
        v537(v88, v54 + v91, v90);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v92 = sub_6D04C();
        sub_5CE4(v92, qword_839A0);
        v93 = sub_6D03C();
        v94 = sub_6D45C();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v655[0] = v96;
          *v95 = 136315138;
          *(v95 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
          _os_log_impl(&dword_0, v93, v94, "In %s - next flow action is promptForDisambiguation", v95, 0xCu);
          sub_9964(v96);
        }

        v634 = v1[187];
        v484 = v1[186];
        v510 = v1[185];
        v606 = v1[184];
        v467 = v1[183];
        v528 = v1[170];
        v453 = v1[163];
        v437 = v1[164];
        v445 = v1[162];
        v97 = v1[160];
        v432 = v1[161];
        v626 = v1[148];
        v576 = v1[145];
        v475 = v1[142];
        v566 = v1[141];
        v647 = v1[140];
        v587 = v1[139];
        v492 = v1[138];
        v98 = v1[137];
        v99 = v1[136];
        v100 = v1[92];
        v597 = v100;
        v101 = v1[91];
        v519 = v1[90];
        sub_9878((v1 + 22), (v1 + 27));
        type metadata accessor for DisambiguationStrategy();
        v102 = swift_allocObject();
        sub_1FD68((v1 + 27), v102 + 16);
        *(v102 + 56) = v615;
        sub_9878(v100 + 56, (v1 + 32));
        v501 = sub_5708(&qword_81DC8, &qword_70E38);
        v103 = *(v501 + 48);
        v104 = *(v501 + 52);
        swift_allocObject();
        sub_4B434(&qword_81DD0, type metadata accessor for DisambiguationStrategy);

        v616 = sub_6B03C();
        type metadata accessor for IFFlow.PromptValue();
        v105 = swift_getTupleTypeMetadata3();
        v106 = *(v105 + 48);
        v107 = *(v105 + 64);
        *v437 = 1;
        v418 = *(v98 + 16);
        v418(&v437[v106], v101, v99);
        v108 = *(v566 + 16);
        v108(&v437[v107], v576, v647);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v437);
        (*(v453 + 8))(v437, v445);
        v1[85] = v616;
        v108(v626, v576, v647);
        v418(v587, v101, v99);
        (*(v606 + 16))(v484, v634, v467);
        v109 = (*(v566 + 80) + 40) & ~*(v566 + 80);
        v110 = (v475 + *(v98 + 80) + v109) & ~*(v98 + 80);
        v111 = (v492 + *(v606 + 80) + v110) & ~*(v606 + 80);
        v112 = swift_allocObject();
        *(v112 + 2) = v97;
        *(v112 + 3) = v432;
        *(v112 + 4) = v597;
        v537(&v112[v109], v626, v647);
        (*(v98 + 32))(&v112[v110], v587, v99);
        (*(v606 + 32))(&v112[v111], v484, v467);
        sub_4B0C8(&qword_81DD8, &qword_81DC8, &qword_70E38);

        sub_6B46C();

        (*(v566 + 8))(v576, v647);
        sub_9964(v1 + 22);
        sub_5E20(v528, &qword_81D90, &qword_70DC8);
        (*(v606 + 8))(v634, v467);
      }

      else
      {
        v230 = v1[144];
        v231 = v1[141];
        v232 = v1[140];
        v233 = v1[123];
        v234 = v1[122];
        v235 = v1[121];
        v236 = *(sub_5708(&qword_81DB8, &qword_70E28) + 48);
        (*(v234 + 32))(v233, v54, v235);
        v591 = *(v231 + 32);
        v591(v230, v54 + v236, v232);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v237 = sub_6D04C();
        sub_5CE4(v237, qword_839A0);
        v238 = sub_6D03C();
        v239 = sub_6D45C();
        if (os_log_type_enabled(v238, v239))
        {
          v240 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          v655[0] = v241;
          *v240 = 136315138;
          *(v240 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
          _os_log_impl(&dword_0, v238, v239, "In %s - next flow action is promptForAuthentication", v240, 0xCu);
          sub_9964(v241);
        }

        v570 = v1[183];
        v580 = v1[187];
        v551 = v1[170];
        v560 = v1[184];
        v242 = v1[164];
        v456 = v1[162];
        v462 = v1[163];
        v243 = v1[160];
        v433 = v243;
        v439 = v1[161];
        v478 = v1[148];
        v609 = v1[144];
        v447 = v1[141];
        v244 = v1[140];
        v486 = v1[139];
        v495 = v1[142];
        v504 = v1[138];
        v638 = v1[137];
        v245 = v1[136];
        v513 = v1[123];
        v531 = v1[122];
        v542 = v1[121];
        v619 = v1[92];
        v629 = v1[91];
        v522 = v1[90];
        sub_6B05C();
        sub_5708(&qword_81DB0, &qword_70E20);
        v246 = *(sub_6B0BC() - 8);
        v247 = *(v246 + 72);
        v248 = (*(v246 + 80) + 32) & ~*(v246 + 80);
        *(swift_allocObject() + 16) = xmmword_70000;
        sub_6B0AC();
        v649 = sub_6B04C();
        type metadata accessor for IFFlow.PromptValue();
        v249 = swift_getTupleTypeMetadata3();
        v250 = *(v249 + 48);
        v251 = *(v249 + 64);
        *v242 = 1;
        v427 = *(v638 + 16);
        v427(&v242[v250], v629, v245);
        v252 = *(v447 + 16);
        v252(&v242[v251], v609, v244);
        swift_storeEnumTagMultiPayload();
        sub_4A280(v242);
        (*(v462 + 8))(v242, v456);
        v1[84] = v649;
        v252(v478, v609, v244);
        v427(v486, v629, v245);
        v253 = (*(v447 + 80) + 40) & ~*(v447 + 80);
        v254 = (v495 + *(v638 + 80) + v253) & ~*(v638 + 80);
        v255 = swift_allocObject();
        *(v255 + 2) = v433;
        *(v255 + 3) = v439;
        *(v255 + 4) = v619;
        v591(&v255[v253], v478, v244);
        (*(v638 + 32))(&v255[v254], v486, v245);

        sub_6B46C();

        (*(v447 + 8))(v609, v244);
        (*(v531 + 8))(v513, v542);
        sub_5E20(v551, &qword_81D90, &qword_70DC8);
        (*(v560 + 8))(v580, v570);
      }

      goto LABEL_17;
    }

    v159 = v1[154];
    v160 = v1[149];
    v161 = v1[141];
    v162 = v1[140];
    v163 = *(sub_5708(&qword_81E10, &qword_70E58) + 48);
    sub_4B304(v54, v159, type metadata accessor for PromptValue);
    v164 = *(v161 + 32);
    v164(v160, v54 + v163, v162);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v165 = v1[154];
    v166 = v1[153];
    v167 = sub_6D04C();
    sub_5CE4(v167, qword_839A0);
    sub_4B3CC(v165, v166, type metadata accessor for PromptValue);
    v168 = sub_6D03C();
    v169 = sub_6D45C();
    v170 = os_log_type_enabled(v168, v169);
    v171 = v1[153];
    if (v170)
    {
      v172 = v1[152];
      v173 = v1[150];
      v174 = swift_slowAlloc();
      v655[0] = swift_slowAlloc();
      *v174 = 136315394;
      *(v174 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
      *(v174 + 12) = 2080;
      sub_4B3CC(v171, v172, type metadata accessor for PromptValue);
      v175 = swift_getEnumCaseMultiPayload();
      v176 = v1[152];
      if (v175)
      {
        if (v175 == 1)
        {
          sub_9964(v176);
          v177 = 0xEC0000006F666E49;
          v178 = 0x6C61636974697263;
        }

        else
        {
          sub_4B36C(v176, type metadata accessor for PromptValue);
          v177 = 0xE800000000000000;
          v178 = 0x6E6F697461636F6CLL;
        }
      }

      else
      {
        sub_4B36C(v176, type metadata accessor for PromptValue);
        v177 = 0xE500000000000000;
        v178 = 0x6F746F6870;
      }

      sub_4B36C(v1[153], type metadata accessor for PromptValue);
      v317 = sub_1076C(v178, v177, v655);

      *(v174 + 14) = v317;
      _os_log_impl(&dword_0, v168, v169, "In %s - next flow action is promptForValue with prompt type: %s", v174, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_4B36C(v171, type metadata accessor for PromptValue);
    }

    v318 = v1[150];
    sub_4B3CC(v1[154], v1[151], type metadata accessor for PromptValue);
    v319 = swift_getEnumCaseMultiPayload();
    if (!v319)
    {
      v611 = v1[187];
      v489 = v1[186];
      v498 = v1[185];
      v583 = v1[184];
      v481 = v1[183];
      v525 = v1[170];
      v642 = v164;
      v338 = v1[164];
      v442 = v1[162];
      v450 = v1[163];
      v339 = v1[160];
      v423 = v1[161];
      v516 = v1[154];
      v340 = v1[151];
      v554 = v1[149];
      v602 = v1[148];
      v464 = v1[142];
      v534 = v1[140];
      v545 = v1[141];
      v593 = v1[139];
      v472 = v1[138];
      v622 = v1[136];
      v341 = v1[92];
      v572 = v1[137];
      v429 = v1[91];
      v507 = v1[90];
      v342 = *v340;
      v343 = v340[1];
      v652 = v1;
      v344 = *(v340 + 16);
      type metadata accessor for ImagePickerPromptStrategy();
      v345 = swift_allocObject();
      *(v345 + 16) = v342;
      *(v345 + 24) = v343;
      *(v345 + 32) = v344;
      sub_9878(v341 + 56, (v652 + 67));
      v346 = sub_5708(&qword_81E30, &qword_70E68);
      v347 = *(v346 + 48);
      v348 = *(v346 + 52);
      swift_allocObject();
      sub_4B434(&qword_81E38, type metadata accessor for ImagePickerPromptStrategy);

      v652[89] = sub_6AF8C();
      sub_4B0C8(&qword_81E40, &qword_81E30, &qword_70E68);
      sub_6B14C();

      type metadata accessor for IFFlow.PromptValue();
      v349 = swift_getTupleTypeMetadata3();
      v350 = *(v349 + 48);
      v351 = *(v349 + 64);
      *v338 = 0;
      v415 = *(v572 + 16);
      v415(&v338[v350], v429, v622);
      v352 = *(v545 + 16);
      v352(&v338[v351], v554, v534);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v338);
      (*(v450 + 8))(v338, v442);
      v352(v602, v554, v534);
      v415(v593, v429, v622);
      v1 = v652;
      v332 = v481;
      (*(v583 + 16))(v489, v611, v481);
      v353 = (*(v545 + 80) + 40) & ~*(v545 + 80);
      v354 = (v464 + *(v572 + 80) + v353) & ~*(v572 + 80);
      v355 = (v472 + *(v583 + 80) + v354) & ~*(v583 + 80);
      v356 = swift_allocObject();
      *(v356 + 2) = v339;
      *(v356 + 3) = v423;
      *(v356 + 4) = v341;
      v642(&v356[v353], v602, v534);
      (*(v572 + 32))(&v356[v354], v593, v622);
      (*(v583 + 32))(&v356[v355], v489, v481);

      sub_6B47C();

      (*(v545 + 8))(v554, v534);
      sub_4B36C(v516, type metadata accessor for PromptValue);
      sub_5E20(v525, &qword_81D90, &qword_70DC8);
      v337 = v583;
      goto LABEL_123;
    }

    if (v319 == 1)
    {
      v611 = v1[187];
      v506 = v1[186];
      v515 = v1[185];
      v601 = v1[184];
      v497 = v1[183];
      v544 = v1[170];
      v641 = v164;
      v449 = v1[163];
      v434 = v1[164];
      v441 = v1[162];
      v320 = v1[160];
      v422 = v1[161];
      v533 = v1[154];
      v571 = v1[149];
      v458 = v1[148];
      v480 = v1[142];
      v553 = v1[140];
      v562 = v1[141];
      v471 = v1[139];
      v488 = v1[138];
      v592 = v1[137];
      v621 = v1[136];
      v321 = v1[92];
      v414 = v1[91];
      v524 = v1[90];
      sub_1FD68(v1[151], (v1 + 52));
      sub_9878((v1 + 52), (v1 + 57));
      v322 = *(v321 + 192);
      v323 = v321;
      v582 = v321;
      type metadata accessor for CriticalInfoPromptStrategy();
      v324 = swift_allocObject();
      sub_1FD68((v1 + 57), v324 + 16);
      *(v324 + 56) = v322;
      sub_9878(v323 + 56, (v1 + 62));
      v325 = sub_5708(&qword_81E18, &qword_70E60);
      v326 = *(v325 + 48);
      v327 = *(v325 + 52);
      swift_allocObject();
      sub_4B434(&qword_81E20, type metadata accessor for CriticalInfoPromptStrategy);

      v1[88] = sub_6AF8C();
      sub_4B0C8(&qword_81E28, &qword_81E18, &qword_70E60);
      sub_6B14C();

      type metadata accessor for IFFlow.PromptValue();
      v328 = swift_getTupleTypeMetadata3();
      v329 = *(v328 + 48);
      v330 = *(v328 + 64);
      *v434 = 1;
      v410 = *(v592 + 16);
      v410(&v434[v329], v414, v621);
      v331 = *(v562 + 16);
      v331(&v434[v330], v571, v553);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v434);
      (*(v449 + 8))(v434, v441);
      v331(v458, v571, v553);
      v410(v471, v414, v621);
      v332 = v497;
      (*(v601 + 16))(v506, v611, v497);
      v333 = (*(v562 + 80) + 40) & ~*(v562 + 80);
      v334 = (v480 + *(v592 + 80) + v333) & ~*(v592 + 80);
      v335 = (v488 + *(v601 + 80) + v334) & ~*(v601 + 80);
      v336 = swift_allocObject();
      *(v336 + 2) = v320;
      *(v336 + 3) = v422;
      *(v336 + 4) = v582;
      v641(&v336[v333], v458, v553);
      (*(v592 + 32))(&v336[v334], v471, v621);
      (*(v601 + 32))(&v336[v335], v506, v497);

      sub_6B47C();

      sub_9964(v1 + 52);
      (*(v562 + 8))(v571, v553);
      sub_4B36C(v533, type metadata accessor for PromptValue);
      sub_5E20(v544, &qword_81D90, &qword_70DC8);
      v337 = v601;
LABEL_123:
      (*(v337 + 8))(v611, v332);
      goto LABEL_17;
    }

    v357 = v1[188];
    v358 = v1[178];
    v359 = v1[135];
    v360 = v1[92];
    v361 = v1[90];
    sub_4B304(v1[151], v359, type metadata accessor for LocationRequest);
    sub_66CD0(v359, v361);
    v362 = v1[187];
    v363 = v1[184];
    v364 = v1[183];
    if (v357)
    {
      v653 = v1[178];
      v365 = v1[170];
      v366 = v1[154];
      v367 = v1[149];
      v368 = v1;
      v369 = v1[141];
      v370 = v368[140];
      v371 = v368[93];
      sub_4B36C(v368[135], type metadata accessor for LocationRequest);
      (*(v369 + 8))(v367, v370);
      sub_4B36C(v366, type metadata accessor for PromptValue);
      sub_5E20(v365, &qword_81D90, &qword_70DC8);
      (*(v363 + 8))(v362, v364);
      sub_4B304(v653, v371, type metadata accessor for IFFlowError);
      v372 = v368[187];
      v373 = v368[186];
      v374 = v368[182];
      v375 = v368[181];
      v376 = v368[180];
      v377 = v368[179];
      v378 = v368[178];
      v379 = v368[177];
      v380 = v368[175];
      v381 = v368[174];
      v391 = v368[173];
      v393 = v368[170];
      v395 = v368[169];
      v397 = v368[168];
      v399 = v368[167];
      v401 = v368[164];
      v403 = v368[159];
      v405 = v368[156];
      v407 = v368[155];
      v411 = v368[154];
      v416 = v368[153];
      v419 = v368[152];
      v424 = v368[151];
      v430 = v368[149];
      v435 = v368[148];
      v443 = v368[147];
      v451 = v368[146];
      v459 = v368[145];
      v465 = v368[144];
      v473 = v368[143];
      v482 = v368[139];
      v490 = v368[135];
      v499 = v368[134];
      v508 = v368[131];
      v517 = v368[130];
      v526 = v368[127];
      v535 = v368[126];
      v546 = v368[123];
      v555 = v368[120];
      v563 = v368[119];
      v573 = v368[116];
      v584 = v368[113];
      v594 = v368[110];
      v603 = v368[107];
      v612 = v368[104];
      v623 = v368[103];
      v631 = v368[100];
      v643 = v368[99];
      v654 = v368[96];

      v52 = v368[1];
      goto LABEL_18;
    }

    v382 = v1[170];
    v383 = v1[154];
    v384 = v1[149];
    v385 = v1[141];
    v386 = v1[140];
    sub_4B36C(v1[135], type metadata accessor for LocationRequest);
    (*(v385 + 8))(v384, v386);
    sub_4B36C(v383, type metadata accessor for PromptValue);
    sub_5E20(v382, &qword_81D90, &qword_70DC8);
    (*(v363 + 8))(v362, v364);
LABEL_17:
    v41 = v1[187];
    v42 = v1[186];
    v43 = v1[182];
    v44 = v1;
    v45 = v1[181];
    v46 = v44[180];
    v47 = v44[179];
    v48 = v44[178];
    v49 = v44[177];
    v50 = v44[175];
    v51 = v44[174];
    v390 = v44[173];
    v392 = v44[170];
    v394 = v44[169];
    v396 = v44[168];
    v398 = v44[167];
    v400 = v44[164];
    v402 = v44[159];
    v404 = v44[156];
    v406 = v44[155];
    v408 = v44[154];
    v412 = v44[153];
    v417 = v44[152];
    v420 = v44[151];
    v425 = v44[149];
    v431 = v44[148];
    v436 = v44[147];
    v444 = v44[146];
    v452 = v44[145];
    v460 = v44[144];
    v466 = v44[143];
    v474 = v44[139];
    v483 = v44[135];
    v491 = v44[134];
    v500 = v44[131];
    v509 = v44[130];
    v518 = v44[127];
    v527 = v44[126];
    v536 = v44[123];
    v547 = v44[120];
    v556 = v44[119];
    v564 = v44[116];
    v574 = v44[113];
    v585 = v44[110];
    v595 = v44[107];
    v604 = v44[104];
    v613 = v44[103];
    v624 = v44[100];
    v632 = v44[99];
    v645 = v44[96];

    v52 = v44[1];
LABEL_18:

    return v52();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v184 = v1[146];
      v185 = v1[141];
      v186 = v1[140];
      v187 = sub_5708(&qword_81DE0, &qword_70E40);
      v188 = *(v187 + 48);
      v189 = *(v54 + *(v187 + 64));
      sub_1FD68(v54, (v1 + 37));
      v540 = *(v185 + 32);
      v540(v184, v54 + v188, v186);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v190 = sub_6D04C();
      sub_5CE4(v190, qword_839A0);
      v191 = sub_6D03C();
      v192 = sub_6D45C();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v655[0] = v194;
        *v193 = 136315138;
        *(v193 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
        _os_log_impl(&dword_0, v191, v192, "In %s - next flow action is promptForConfirmation", v193, 0xCu);
        sub_9964(v194);
      }

      v637 = v1[187];
      v494 = v1[186];
      v512 = v1[185];
      v469 = v1[184];
      v477 = v1[183];
      v530 = v1[170];
      v455 = v1[163];
      v438 = v1[164];
      v446 = v1[162];
      v195 = v1[160];
      v426 = v1[161];
      v628 = v1[148];
      v589 = v1[146];
      v485 = v1[142];
      v568 = v1[140];
      v578 = v1[141];
      v618 = v1[139];
      v503 = v1[138];
      v196 = v1[136];
      v197 = v1[92];
      v607 = v1[137];
      v558 = v1[91];
      v521 = v1[90];
      sub_9878((v1 + 37), (v1 + 42));
      type metadata accessor for ExternalServiceConfirmationStrategy();
      v198 = swift_allocObject();
      sub_1FD68(v1 + 21, v198 + 16);
      *(v198 + 56) = v189;
      sub_9878(v197 + 56, (v1 + 47));
      v199 = sub_5708(&qword_81DE8, &qword_70E48);
      v200 = *(v199 + 48);
      v201 = *(v199 + 52);
      swift_allocObject();
      sub_4B434(&qword_81DF0, type metadata accessor for ExternalServiceConfirmationStrategy);

      v1[86] = sub_6AFDC();
      sub_4B0C8(&qword_81DF8, &qword_81DE8, &qword_70E48);
      sub_6B14C();

      type metadata accessor for IFFlow.PromptValue();
      v202 = swift_getTupleTypeMetadata3();
      v203 = *(v202 + 48);
      v204 = *(v202 + 64);
      *v438 = 1;
      v413 = *(v607 + 16);
      v413(&v438[v203], v558, v196);
      v205 = *(v578 + 16);
      v205(&v438[v204], v589, v568);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v438);
      (*(v455 + 8))(v438, v446);
      v205(v628, v589, v568);
      v413(v618, v558, v196);
      (*(v469 + 16))(v494, v637, v477);
      v206 = (*(v578 + 80) + 40) & ~*(v578 + 80);
      v207 = (v485 + *(v607 + 80) + v206) & ~*(v607 + 80);
      v208 = (v503 + *(v469 + 80) + v207) & ~*(v469 + 80);
      v209 = swift_allocObject();
      *(v209 + 2) = v195;
      *(v209 + 3) = v426;
      *(v209 + 4) = v197;
      v540(&v209[v206], v628, v568);
      (*(v607 + 32))(&v209[v207], v618, v196);
      (*(v469 + 32))(&v209[v208], v494, v477);

      sub_6B47C();

      (*(v578 + 8))(v589, v568);
      sub_9964(v1 + 37);
      sub_5E20(v530, &qword_81D90, &qword_70DC8);
      (*(v469 + 8))(v637, v477);
      goto LABEL_17;
    }

    v1[196] = *(v54 + 40);
    v1[197] = *(v54 + 48);
    sub_1FD68(v54, (v1 + 72));
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v57 = sub_6D04C();
    v1[198] = sub_5CE4(v57, qword_839A0);
    v58 = sub_6D03C();
    v59 = sub_6D45C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v655[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
      _os_log_impl(&dword_0, v58, v59, "%s publishIntermediateResponseOutput", v60, 0xCu);
      sub_9964(v61);
    }

    v62 = v1[92];
    v63 = v62[10];
    v64 = v62[11];
    sub_99FC(v62 + 7, v63);
    v65 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v66 = swift_task_alloc();
    v1[199] = v66;
    *v66 = v1;
    v66[1] = sub_44BD8;
    v67 = v1 + 72;
  }

  else
  {
    sub_1FD68(v54, (v1 + 77));
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v127 = sub_6D04C();
    sub_5CE4(v127, qword_839A0);
    v128 = sub_6D03C();
    v129 = sub_6D45C();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v655[0] = v131;
      *v130 = 136315138;
      *(v130 + 4) = sub_1076C(0xD00000000000001BLL, 0x800000000006F350, v655);
      _os_log_impl(&dword_0, v128, v129, "In %s - next flow action is publishOutput", v130, 0xCu);
      sub_9964(v131);
    }

    v132 = v1[92];
    v63 = v132[10];
    v64 = v132[11];
    sub_99FC(v132 + 7, v63);
    v133 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v134 = swift_task_alloc();
    v1[194] = v134;
    *v134 = v1;
    v134[1] = sub_44358;
    v67 = v1 + 77;
  }

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v67, v63, v64);
}

uint64_t sub_44358()
{
  v2 = *(*v1 + 1552);
  v5 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v3 = sub_44818;
  }

  else
  {
    v3 = sub_4446C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4446C()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[170];
  v5 = v0[164];
  v6 = v0[163];
  v7 = v0[162];
  v8 = v0[92];
  v9 = v0[90];
  swift_storeEnumTagMultiPayload();
  sub_4A280(v5);
  (*(v6 + 8))(v5, v7);
  sub_6B45C();
  sub_9964(v0 + 77);
  sub_5E20(v4, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);
  v10 = v0[187];
  v11 = v0[186];
  v12 = v0[182];
  v13 = v0[181];
  v14 = v0[180];
  v15 = v0[179];
  v16 = v0[178];
  v17 = v0[177];
  v18 = v0[175];
  v19 = v0[174];
  v22 = v0[173];
  v23 = v0[170];
  v24 = v0[169];
  v25 = v0[168];
  v26 = v0[167];
  v27 = v0[164];
  v28 = v0[159];
  v29 = v0[156];
  v30 = v0[155];
  v31 = v0[154];
  v32 = v0[153];
  v33 = v0[152];
  v34 = v0[151];
  v35 = v0[149];
  v36 = v0[148];
  v37 = v0[147];
  v38 = v0[146];
  v39 = v0[145];
  v40 = v0[144];
  v41 = v0[143];
  v42 = v0[139];
  v43 = v0[135];
  v44 = v0[134];
  v45 = v0[131];
  v46 = v0[130];
  v47 = v0[127];
  v48 = v0[126];
  v49 = v0[123];
  v50 = v0[120];
  v51 = v0[119];
  v52 = v0[116];
  v53 = v0[113];
  v54 = v0[110];
  v55 = v0[107];
  v56 = v0[104];
  v57 = v0[103];
  v58 = v0[100];
  v59 = v0[99];
  v60 = v0[96];

  v20 = v0[1];

  return v20();
}

uint64_t sub_44818()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1360);
  **(v0 + 744) = *(v0 + 1560);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  sub_9964((v0 + 616));
  sub_5E20(v5, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 1496);
  v7 = *(v0 + 1488);
  v8 = *(v0 + 1456);
  v9 = *(v0 + 1448);
  v10 = *(v0 + 1440);
  v11 = *(v0 + 1432);
  v12 = *(v0 + 1424);
  v13 = *(v0 + 1416);
  v14 = *(v0 + 1400);
  v15 = *(v0 + 1392);
  v18 = *(v0 + 1384);
  v19 = *(v0 + 1360);
  v20 = *(v0 + 1352);
  v21 = *(v0 + 1344);
  v22 = *(v0 + 1336);
  v23 = *(v0 + 1312);
  v24 = *(v0 + 1272);
  v25 = *(v0 + 1248);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1208);
  v31 = *(v0 + 1192);
  v32 = *(v0 + 1184);
  v33 = *(v0 + 1176);
  v34 = *(v0 + 1168);
  v35 = *(v0 + 1160);
  v36 = *(v0 + 1152);
  v37 = *(v0 + 1144);
  v38 = *(v0 + 1112);
  v39 = *(v0 + 1080);
  v40 = *(v0 + 1072);
  v41 = *(v0 + 1048);
  v42 = *(v0 + 1040);
  v43 = *(v0 + 1016);
  v44 = *(v0 + 1008);
  v45 = *(v0 + 984);
  v46 = *(v0 + 960);
  v47 = *(v0 + 952);
  v48 = *(v0 + 928);
  v49 = *(v0 + 904);
  v50 = *(v0 + 880);
  v51 = *(v0 + 856);
  v52 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 800);
  v55 = *(v0 + 792);
  v56 = *(v0 + 768);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_44BD8()
{
  v2 = *v1;
  v3 = *(*v1 + 1592);
  v7 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v4 = *(v2 + 1576);

    v5 = sub_45800;
  }

  else
  {
    v5 = sub_44CF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_44CF4()
{
  v164 = v0;
  v133 = v0[196];
  v136 = v0[197];
  v160 = v0[189];
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[173];
  v4 = v0[172];
  v151 = v0[200];
  v156 = v0[171];
  v142 = v0[160];
  v146 = v0[161];
  v139 = v0[159];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[141];
  v127 = v0[140];
  v130 = v0[186];
  v8 = v0[92];
  v9 = v0[91];
  sub_6C82C();
  (*(v1 + 56))(v5, 1, 1, v2);
  (*(v7 + 56))(v6, 1, 1, v127);
  sub_6C98C();
  (*(v4 + 104))(v3, enum case for MessagePayload.intermediateSystemResponseRendered(_:), v156);
  sub_30BF8(v130, v3);
  v160(v3, v156);
  v157 = *(v1 + 8);
  v157(v130, v2);
  v10 = v8 + *(*v8 + 184);
  sub_6CF4C();
  v11 = v0[198];
  if (v151)
  {
    v12 = v0[181];
    v13 = v0[180];
    v14 = v0[179];
    v15 = v0[176];
    *v12 = v151;
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
    swift_willThrowTypedImpl();
    sub_4B304(v12, v13, type metadata accessor for IFFlowError);
    sub_4B3CC(v13, v14, type metadata accessor for IFFlowError);
    v16 = sub_6D03C();
    v17 = sub_6D46C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[179];
    if (v18)
    {
      v20 = v0[176];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v163 = v22;
      *v21 = 136315138;
      v23 = sub_6D66C();
      v25 = v24;
      sub_4B36C(v19, type metadata accessor for IFFlowError);
      v26 = sub_1076C(v23, v25, &v163);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, v16, v17, "Error while sending message to Intelligence Flow %s", v21, 0xCu);
      sub_9964(v22);
    }

    else
    {

      sub_4B36C(v19, type metadata accessor for IFFlowError);
    }

    v149 = v0[183];
    v154 = v0[187];
    v49 = v0[180];
    v50 = v0[176];
    v51 = v0[170];
    v52 = v0[159];
    v53 = v0[158];
    v54 = v0[157];
    v55 = v0[93];
    v56 = swift_allocError();
    sub_4B3CC(v49, v57, type metadata accessor for IFFlowError);
    *v55 = v56;
    swift_storeEnumTagMultiPayload();
    swift_willThrowTypedImpl();
    sub_4B36C(v49, type metadata accessor for IFFlowError);
    (*(v53 + 8))(v52, v54);
    sub_9964(v0 + 72);
    sub_5E20(v51, &qword_81D90, &qword_70DC8);
    v157(v154, v149);
    v58 = v0[187];
    v59 = v0[186];
    v60 = v0[182];
    v61 = v0[181];
    v62 = v0[180];
    v63 = v0[179];
    v64 = v0[178];
    v65 = v0[177];
    v66 = v0[175];
    v67 = v0[174];
    v70 = v0[173];
    v72 = v0[170];
    v74 = v0[169];
    v76 = v0[168];
    v78 = v0[167];
    v80 = v0[164];
    v82 = v0[159];
    v84 = v0[156];
    v86 = v0[155];
    v88 = v0[154];
    v90 = v0[153];
    v92 = v0[152];
    v94 = v0[151];
    v96 = v0[149];
    v98 = v0[148];
    v100 = v0[147];
    v102 = v0[146];
    v104 = v0[145];
    v106 = v0[144];
    v108 = v0[143];
    v110 = v0[139];
    v112 = v0[135];
    v114 = v0[134];
    v116 = v0[131];
    v118 = v0[130];
    v120 = v0[127];
    v122 = v0[126];
    v124 = v0[123];
    v126 = v0[120];
    v129 = v0[119];
    v132 = v0[116];
    v135 = v0[113];
    v138 = v0[110];
    v141 = v0[107];
    v145 = v0[104];
    v150 = v0[103];
    v155 = v0[100];
    v159 = v0[99];
    v162 = v0[96];

    v48 = v0[1];
  }

  else
  {
    v27 = sub_6D03C();
    v28 = sub_6D47C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Sending IntermediateSystemResponseRendered back from IFFlow", v29, 2u);
    }

    v147 = v0[183];
    v152 = v0[187];
    v143 = v0[170];
    v30 = v0[164];
    v31 = v0[163];
    v32 = v0[162];
    v33 = v0[159];
    v34 = v0[158];
    v35 = v0[157];
    v36 = v0[92];
    v37 = v0[90];

    swift_storeEnumTagMultiPayload();
    sub_4A280(v30);
    (*(v31 + 8))(v30, v32);
    sub_6B45C();
    (*(v34 + 8))(v33, v35);
    sub_9964(v0 + 72);
    sub_5E20(v143, &qword_81D90, &qword_70DC8);
    v157(v152, v147);
    v38 = v0[187];
    v39 = v0[186];
    v40 = v0[182];
    v41 = v0[181];
    v42 = v0[180];
    v43 = v0[179];
    v44 = v0[178];
    v45 = v0[177];
    v46 = v0[175];
    v47 = v0[174];
    v69 = v0[173];
    v71 = v0[170];
    v73 = v0[169];
    v75 = v0[168];
    v77 = v0[167];
    v79 = v0[164];
    v81 = v0[159];
    v83 = v0[156];
    v85 = v0[155];
    v87 = v0[154];
    v89 = v0[153];
    v91 = v0[152];
    v93 = v0[151];
    v95 = v0[149];
    v97 = v0[148];
    v99 = v0[147];
    v101 = v0[146];
    v103 = v0[145];
    v105 = v0[144];
    v107 = v0[143];
    v109 = v0[139];
    v111 = v0[135];
    v113 = v0[134];
    v115 = v0[131];
    v117 = v0[130];
    v119 = v0[127];
    v121 = v0[126];
    v123 = v0[123];
    v125 = v0[120];
    v128 = v0[119];
    v131 = v0[116];
    v134 = v0[113];
    v137 = v0[110];
    v140 = v0[107];
    v144 = v0[104];
    v148 = v0[103];
    v153 = v0[100];
    v158 = v0[99];
    v161 = v0[96];

    v48 = v0[1];
  }

  return v48();
}

uint64_t sub_45800()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1360);
  **(v0 + 744) = *(v0 + 1600);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  sub_9964((v0 + 576));
  sub_5E20(v5, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 1496);
  v7 = *(v0 + 1488);
  v8 = *(v0 + 1456);
  v9 = *(v0 + 1448);
  v10 = *(v0 + 1440);
  v11 = *(v0 + 1432);
  v12 = *(v0 + 1424);
  v13 = *(v0 + 1416);
  v14 = *(v0 + 1400);
  v15 = *(v0 + 1392);
  v18 = *(v0 + 1384);
  v19 = *(v0 + 1360);
  v20 = *(v0 + 1352);
  v21 = *(v0 + 1344);
  v22 = *(v0 + 1336);
  v23 = *(v0 + 1312);
  v24 = *(v0 + 1272);
  v25 = *(v0 + 1248);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1208);
  v31 = *(v0 + 1192);
  v32 = *(v0 + 1184);
  v33 = *(v0 + 1176);
  v34 = *(v0 + 1168);
  v35 = *(v0 + 1160);
  v36 = *(v0 + 1152);
  v37 = *(v0 + 1144);
  v38 = *(v0 + 1112);
  v39 = *(v0 + 1080);
  v40 = *(v0 + 1072);
  v41 = *(v0 + 1048);
  v42 = *(v0 + 1040);
  v43 = *(v0 + 1016);
  v44 = *(v0 + 1008);
  v45 = *(v0 + 984);
  v46 = *(v0 + 960);
  v47 = *(v0 + 952);
  v48 = *(v0 + 928);
  v49 = *(v0 + 904);
  v50 = *(v0 + 880);
  v51 = *(v0 + 856);
  v52 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 800);
  v55 = *(v0 + 792);
  v56 = *(v0 + 768);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_45BC0()
{
  v2 = *(*v1 + 1608);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_46040;
  }

  else
  {
    v3 = sub_45CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_45CD0()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[170];
  sub_4B36C(v0[120], type metadata accessor for FlowAction.ExitValue);
  sub_5E20(v4, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);
  v5 = v0[187];
  v6 = v0[186];
  v7 = v0[182];
  v8 = v0[181];
  v9 = v0[180];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[177];
  v13 = v0[175];
  v14 = v0[174];
  v17 = v0[173];
  v18 = v0[170];
  v19 = v0[169];
  v20 = v0[168];
  v21 = v0[167];
  v22 = v0[164];
  v23 = v0[159];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[153];
  v28 = v0[152];
  v29 = v0[151];
  v30 = v0[149];
  v31 = v0[148];
  v32 = v0[147];
  v33 = v0[146];
  v34 = v0[145];
  v35 = v0[144];
  v36 = v0[143];
  v37 = v0[139];
  v38 = v0[135];
  v39 = v0[134];
  v40 = v0[131];
  v41 = v0[130];
  v42 = v0[127];
  v43 = v0[126];
  v44 = v0[123];
  v45 = v0[120];
  v46 = v0[119];
  v47 = v0[116];
  v48 = v0[113];
  v49 = v0[110];
  v50 = v0[107];
  v51 = v0[104];
  v52 = v0[103];
  v53 = v0[100];
  v54 = v0[99];
  v55 = v0[96];

  v15 = v0[1];

  return v15();
}

uint64_t sub_46040()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[183];
  v4 = v0[177];
  v5 = v0[170];
  v6 = v0[93];
  sub_4B36C(v0[120], type metadata accessor for FlowAction.ExitValue);
  sub_5E20(v5, &qword_81D90, &qword_70DC8);
  (*(v2 + 8))(v1, v3);
  sub_4B304(v4, v6, type metadata accessor for IFFlowError);
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[182];
  v10 = v0[181];
  v11 = v0[180];
  v12 = v0[179];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[175];
  v16 = v0[174];
  v19 = v0[173];
  v20 = v0[170];
  v21 = v0[169];
  v22 = v0[168];
  v23 = v0[167];
  v24 = v0[164];
  v25 = v0[159];
  v26 = v0[156];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[153];
  v30 = v0[152];
  v31 = v0[151];
  v32 = v0[149];
  v33 = v0[148];
  v34 = v0[147];
  v35 = v0[146];
  v36 = v0[145];
  v37 = v0[144];
  v38 = v0[143];
  v39 = v0[139];
  v40 = v0[135];
  v41 = v0[134];
  v42 = v0[131];
  v43 = v0[130];
  v44 = v0[127];
  v45 = v0[126];
  v46 = v0[123];
  v47 = v0[120];
  v48 = v0[119];
  v49 = v0[116];
  v50 = v0[113];
  v51 = v0[110];
  v52 = v0[107];
  v53 = v0[104];
  v54 = v0[103];
  v55 = v0[100];
  v56 = v0[99];
  v57 = v0[96];

  v17 = v0[1];

  return v17();
}

uint64_t sub_463D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v25 = a4;
  v26 = a6;
  v24 = a3;
  v8 = *a2;
  v9 = sub_6CFCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v8 + 80);
  v15 = *(v8 + 88);
  v16 = type metadata accessor for IFFlow.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v23 - v19;
  v21 = *(a2 + 192);
  sub_3556C(2, v13);
  v26(a1, v24, v25, v21, v13);
  (*(v10 + 8))(v13, v9);
  sub_4A280(v20);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_465B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v27 = a4;
  v5 = *a2;
  v26 = sub_6CFCC();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v26);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5708(&qword_81E58, &unk_70E80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = *(v5 + 80);
  v16 = *(v5 + 88);
  v17 = type metadata accessor for IFFlow.State();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v24 - v20;
  sub_69838(v14);
  sub_3556C(2, v9);
  v22 = sub_6B76C();
  sub_29260(v14, v25, v27, v9, v22, &protocol witness table for SimpleConfirmationResponseProvider, v21);
  (*(v6 + 8))(v9, v26);
  (*(v11 + 8))(v14, v10);
  sub_4A280(v21);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_46838(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v6 = *a2;
  v7 = sub_6CFCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v6 + 88);
  v14 = type metadata accessor for IFFlow.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  sub_3556C(2, v11);
  v19 = sub_6B76C();
  sub_29260(a1, a3, v22, v11, v19, &protocol witness table for SimpleConfirmationResponseProvider, v18);
  (*(v8 + 8))(v11, v7);
  sub_4A280(v18);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_46A1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = *a2;
  v7 = sub_6CFCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v6 + 88);
  v14 = type metadata accessor for IFFlow.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v20 - v17;
  sub_3556C(2, v11);
  sub_11FFC(a1, a3, v21, v11, v18);
  (*(v8 + 8))(v11, v7);
  sub_4A280(v18);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_46BEC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v103 = a4;
  v92 = a2;
  v88 = a1;
  v104 = *v4;
  v77 = sub_6C4EC();
  v76 = *(v77 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_81B58, qword_70A90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v96 = &v73 - v9;
  v10 = sub_6CFCC();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = *(v90 + 64);
  __chkstk_darwin(v10);
  v89 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_6C35C();
  v99 = *(v94 - 8);
  v13 = *(v99 + 64);
  v14 = __chkstk_darwin(v94);
  v93 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v87 = &v73 - v16;
  v17 = sub_6C7EC();
  v97 = *(v17 - 8);
  v98 = v17;
  v18 = *(v97 + 64);
  __chkstk_darwin(v17);
  v101 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5708(&qword_81770, &unk_70F70);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v84 = &v73 - v22;
  v82 = sub_6BEEC();
  v81 = *(v82 - 8);
  v23 = *(v81 + 64);
  __chkstk_darwin(v82);
  v83 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_6C86C();
  v79 = *(v80 - 8);
  v25 = *(v79 + 64);
  __chkstk_darwin(v80);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_5708(&unk_82030, &qword_70370);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v78 = &v73 - v30;
  v31 = sub_6C89C();
  v86 = *(v31 - 8);
  v32 = *(v86 + 64);
  __chkstk_darwin(v31);
  v85 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for IFFlowError();
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v38 = (&v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v39 = sub_6AE9C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v44 = &v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v42);
  v47 = &v73 - v46;
  __chkstk_darwin(v45);
  v100 = &v73 - v48;
  v95 = v4;
  sub_30FBC(v38);
  v74 = v31;
  v73 = v40;
  (*(v40 + 32))(v100, v47, v39);
  (*(v40 + 56))(v78, 1, 1, v39);
  sub_6C80C();
  sub_6B07C();
  sub_6C84C();
  (*(v79 + 104))(v27, enum case for SystemPromptResolution.UserAction.requirementAddressed(_:), v80);
  (*(v81 + 16))(v83, v92, v82);
  v49 = sub_6C85C();
  (*(*(v49 - 8) + 56))(v84, 1, 1, v49);
  v50 = v85;
  sub_6C87C();
  sub_6C82C();
  v51 = v89;
  sub_3556C(2, v89);
  v52 = v87;
  sub_A17C(v50, v51);
  (*(v90 + 8))(v51, v91);
  v53 = v99;
  v54 = v94;
  (*(v99 + 104))(v52, enum case for MessagePayload.request(_:), v94);
  sub_30BF8(v44, v52);
  v55 = *(v53 + 8);
  v56 = v52;
  v57 = v73;
  v55(v56, v54);
  v58 = *(v57 + 8);
  v95 = v39;
  v58(v44, v39);
  v59 = v93;
  sub_6C81C();
  if ((*(v53 + 88))(v59, v54) == enum case for MessagePayload.systemResponse(_:))
  {
    (*(v99 + 96))(v59, v54);
    v60 = v76;
    v61 = v75;
    v62 = v77;
    (*(v76 + 32))(v75, v59, v77);
    v63 = v96;
    sub_4458(v61, v96);
    (*(v60 + 8))(v61, v62);
    (*(v86 + 8))(v50, v74);
    v58(v100, v95);
    v64 = 0;
  }

  else
  {
    (*(v86 + 8))(v50, v74);
    v58(v100, v95);
    v55(v59, v54);
    v64 = 1;
    v63 = v96;
  }

  v66 = v97;
  v65 = v98;
  v67 = sub_6CD2C();
  (*(*(v67 - 8) + 56))(v63, v64, 1, v67);
  v68 = *(sub_5708(&qword_81788, &qword_70380) + 48);
  v69 = v103;
  (*(v66 + 32))(v103, v101, v65);
  sub_201AC(v63, v69 + v68, &qword_81B58, qword_70A90);
  v70 = *(v104 + 80);
  v71 = *(v104 + 88);
  type metadata accessor for IFFlow.State();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_47694(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(*a2 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for IFFlow.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  sub_46BEC(*a1, a3, a4, &v16 - v13);
  sub_4A280(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_477B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = v3;
  v4[15] = a3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *v3;
  v6 = sub_6BF6C();
  v4[16] = v6;
  v7 = *(v6 - 8);
  v4[17] = v7;
  v8 = *(v7 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for IFFlowError();
  v4[21] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  v13 = type metadata accessor for IFFlow.State();
  v4[24] = v13;
  v14 = *(v13 - 8);
  v4[25] = v14;
  v15 = *(v14 + 64) + 15;
  v4[26] = swift_task_alloc();
  v16 = type metadata accessor for FlowAction.ExitValue(0);
  v4[27] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_479B8, 0, 0);
}

uint64_t sub_479B8()
{
  v113 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[13];
  v4 = sub_6D04C();
  sub_5CE4(v4, qword_839A0);
  sub_4B3CC(v3, v1, type metadata accessor for FlowAction.ExitValue);
  sub_4B3CC(v3, v2, type metadata accessor for FlowAction.ExitValue);
  v5 = sub_6D03C();
  v6 = sub_6D45C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = v0[30];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v11 = 136446723;
    *(v11 + 4) = sub_1076C(0xD000000000000012, 0x800000000006F400, &v112);
    *(v11 + 12) = 2080;
    sub_4B3CC(v8, v9, type metadata accessor for FlowAction.ExitValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = v0[30];
        v18 = v0[16];
        v17 = v0[17];
        v19 = sub_5708(&qword_81E50, &qword_70E78);
        (*(v17 + 8))(v16 + *(v19 + 48), v18);
        sub_9964(v16);
        v13 = 0xEE006572756C6961;
        v14 = 0x466E6F697463612ELL;
      }

      else
      {
        v13 = 0xEA00000000006E61;
        v14 = 0x6C50664F646E652ELL;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_4B36C(v0[30], type metadata accessor for FlowAction.ExitValue);
      v13 = 0xE700000000000000;
      v14 = 0x74757074756F2ELL;
    }

    else
    {
      sub_4B36C(v0[30], type metadata accessor for FlowAction.ExitValue);
      v13 = 0xE600000000000000;
      v14 = 0x726F7272652ELL;
    }

    v20 = v0[31];
    v21 = v0[29];
    v22 = v0[27];
    sub_4B36C(v0[32], type metadata accessor for FlowAction.ExitValue);
    v23 = sub_1076C(v14, v13, &v112);

    *(v11 + 14) = v23;
    *(v11 + 22) = 2081;
    sub_4B3CC(v20, v21, type metadata accessor for FlowAction.ExitValue);
    v24 = sub_6D2EC();
    v26 = v25;
    sub_4B36C(v20, type metadata accessor for FlowAction.ExitValue);
    v27 = sub_1076C(v24, v26, &v112);

    *(v11 + 24) = v27;
    _os_log_impl(&dword_0, v5, v6, "%{public}s: next flow action is exit with type %s and value %{private}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[31];

    sub_4B36C(v15, type metadata accessor for FlowAction.ExitValue);
    sub_4B36C(v8, type metadata accessor for FlowAction.ExitValue);
  }

  v28 = v0[27];
  sub_4B3CC(v0[13], v0[28], type metadata accessor for FlowAction.ExitValue);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      v72 = sub_6D03C();
      v73 = sub_6D45C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "Session completed due to end of plan", v74, 2u);
      }

      v76 = v0[25];
      v75 = v0[26];
      v77 = v0[24];
      v78 = v0[14];

      *v75 = 0;
      *(v75 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_4A280(v75);
      (*(v76 + 8))(v75, v77);
      v79 = v0[31];
      v80 = v0[32];
      v82 = v0[29];
      v81 = v0[30];
      v83 = v0[28];
      v84 = v0[26];
      v86 = v0[22];
      v85 = v0[23];
      v87 = v0[20];
      v108 = v0[19];
      v110 = v0[18];
      v88 = v0[12];
      sub_6B49C();

      v89 = v0[1];
      goto LABEL_28;
    }

    v43 = v0[28];
    v45 = v0[19];
    v44 = v0[20];
    v46 = v0[16];
    v47 = v0[17];
    v48 = *(sub_5708(&qword_81E50, &qword_70E78) + 48);
    sub_1FD68(v43, (v0 + 2));
    (*(v47 + 32))(v44, v43 + v48, v46);
    v49 = *(v47 + 16);
    v0[35] = v49;
    v0[36] = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49(v45, v44, v46);
    v50 = sub_6D03C();
    v51 = sub_6D45C();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[19];
    if (v52)
    {
      v54 = v0[17];
      v55 = v0[18];
      v56 = v0[16];
      v57 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v112 = v109;
      *v57 = 136446210;
      v49(v55, v53, v56);
      v58 = sub_6D2EC();
      v60 = v59;
      v61 = *(v54 + 8);
      v61(v53, v56);
      v62 = sub_1076C(v58, v60, &v112);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_0, v50, v51, "Session completed with action failure: %{public}s", v57, 0xCu);
      sub_9964(v109);
    }

    else
    {
      v103 = v0[16];
      v104 = v0[17];

      v61 = *(v104 + 8);
      v61(v53, v103);
    }

    v0[37] = v61;
    v105 = v0[14];
    v67 = v105[10];
    v68 = v105[11];
    sub_99FC(v105 + 7, v67);
    v106 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v107 = swift_task_alloc();
    v0[38] = v107;
    *v107 = v0;
    v107[1] = sub_488B4;
    v71 = v0 + 2;
  }

  else
  {
    if (!v29)
    {
      v30 = v0[22];
      v31 = v0[23];
      sub_4B304(v0[28], v31, type metadata accessor for IFFlowError);
      sub_4B3CC(v31, v30, type metadata accessor for IFFlowError);
      v32 = sub_6D03C();
      v33 = sub_6D45C();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[22];
      if (v34)
      {
        v36 = v0[21];
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v112 = v38;
        *v37 = 136446210;
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
        v39 = sub_6D66C();
        v41 = v40;
        sub_4B36C(v35, type metadata accessor for IFFlowError);
        v42 = sub_1076C(v39, v41, &v112);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_0, v32, v33, "Session completed with error: %{public}s", v37, 0xCu);
        sub_9964(v38);
      }

      else
      {

        sub_4B36C(v35, type metadata accessor for IFFlowError);
      }

      v90 = v0[23];
      v91 = v0[21];
      sub_4B3CC(v90, v0[15], type metadata accessor for IFFlowError);
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
      swift_willThrowTypedImpl();
      sub_4B36C(v90, type metadata accessor for IFFlowError);
      v93 = v0[31];
      v92 = v0[32];
      v95 = v0[29];
      v94 = v0[30];
      v96 = v0[28];
      v97 = v0[26];
      v99 = v0[22];
      v98 = v0[23];
      v101 = v0[19];
      v100 = v0[20];
      v111 = v0[18];

      v89 = v0[1];
LABEL_28:

      return v89();
    }

    sub_1FD68(v0[28], (v0 + 7));
    v63 = sub_6D03C();
    v64 = sub_6D45C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "Session completed with some output", v65, 2u);
    }

    v66 = v0[14];

    v67 = v66[10];
    v68 = v66[11];
    sub_99FC(v66 + 7, v67);
    v69 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v70 = swift_task_alloc();
    v0[33] = v70;
    *v70 = v0;
    v70[1] = sub_484FC;
    v71 = v0 + 7;
  }

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v71, v67, v68);
}

uint64_t sub_484FC()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_48758;
  }

  else
  {
    v3 = sub_48610;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_48610()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[14];
  *v1 = 0;
  *(v1 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v1);
  (*(v2 + 8))(v1, v3);
  sub_9964(v0 + 7);
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[26];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v14 = v0[12];
  sub_6B49C();

  v15 = v0[1];

  return v15();
}

uint64_t sub_48758()
{
  v1 = *(v0 + 168);
  **(v0 + 120) = *(v0 + 272);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  sub_9964((v0 + 56));
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v14 = *(v0 + 144);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_488B4()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_48BC0;
  }

  else
  {
    v3 = sub_489C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_489C8()
{
  v1 = v0[35];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[16];
  v24 = v0[17];
  v26 = v0[37];
  v22 = v0[36];
  v23 = v0[14];
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  v8 = swift_allocError();
  v1(v9, v5, v7);
  swift_storeEnumTagMultiPayload();
  *v2 = v8;
  *(v2 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v2);
  (*(v3 + 8))(v2, v4);
  v26(v5, v7);
  sub_9964(v0 + 2);
  v10 = v0[31];
  v11 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v15 = v0[26];
  v17 = v0[22];
  v16 = v0[23];
  v18 = v0[20];
  v25 = v0[19];
  v27 = v0[18];
  v19 = v0[12];
  sub_6B49C();

  v20 = v0[1];

  return v20();
}

uint64_t sub_48BC0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  **(v0 + 120) = *(v0 + 312);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError);
  swift_willThrowTypedImpl();
  v1(v2, v4);
  sub_9964((v0 + 16));
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v10 = *(v0 + 224);
  v11 = *(v0 + 208);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v18 = *(v0 + 144);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_48D3C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_6B15C();
}

Swift::Int sub_48E08(unsigned __int8 a1)
{
  sub_6D6BC();
  sub_6D6CC(a1);
  return sub_6D6DC();
}

Swift::Int sub_48E6C()
{
  sub_6D6BC();
  sub_48DE0(v2, *v0);
  return sub_6D6DC();
}

uint64_t sub_48EAC(uint64_t a1)
{
  v3 = type metadata accessor for IFFlowError();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6CD2C();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5708(&qword_81B58, qword_70A90);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v52 = &v50 - v16;
  v53 = sub_6C7EC();
  v51 = *(v53 - 8);
  v17 = *(v51 + 64);
  v18 = __chkstk_darwin(v53);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - v22;
  v24 = *(a1 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v1, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x6C616974696E692ELL;
      }

      else
      {
        return 0x6E6974696177612ELL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_4B304(v27, v6, type metadata accessor for IFFlowError);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_6D57C(21);

      v56 = 0xD000000000000012;
      v57 = 0x800000000006F2B0;
      v58._countAndFlagsBits = sub_2B20();
      sub_6D33C(v58);

      v59._countAndFlagsBits = 41;
      v59._object = 0xE100000000000000;
      sub_6D33C(v59);
      v30 = v56;
      sub_4B36C(v6, type metadata accessor for IFFlowError);
    }

    else
    {
      v45 = *v27;
      v46 = v27[8];
      v56 = 0x74656C706D6F632ELL;
      v57 = 0xEB00000000286465;
      v54 = v45;
      v55 = v46;
      sub_4A3C4(v45, v46);
      sub_5708(&qword_81D60, &unk_70D40);
      v61._countAndFlagsBits = sub_6D2EC();
      sub_6D33C(v61);

      v62._countAndFlagsBits = 41;
      v62._object = 0xE100000000000000;
      sub_6D33C(v62);
      sub_4A3D0(v45, v46);
      return v56;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v31 = *v27;
      v32 = *(a1 + 16);
      v33 = *(a1 + 24);
      type metadata accessor for IFFlow.PromptValue();
      v34 = sub_6C83C();
      v35 = sub_6BEEC();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v37 = *(TupleTypeMetadata3 + 48);
      v38 = *(TupleTypeMetadata3 + 64);
      v56 = 0;
      v57 = 0xE000000000000000;
      v60._countAndFlagsBits = 0x6974706D6F72702ELL;
      v60._object = 0xEB0000000028676ELL;
      sub_6D33C(v60);
      LOBYTE(v54) = v31;
      sub_6D62C();
      v30 = v56;
      (*(*(v35 - 8) + 8))(&v27[v38], v35);
      (*(*(v34 - 8) + 8))(&v27[v37], v34);
    }

    else
    {
      v30 = 0xD000000000000011;
      (*(v24 + 8))(v27, a1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    (*(v51 + 32))(v23, v27, v53);
    v40 = &v27[v39];
    v41 = v52;
    sub_201AC(v40, v52, &qword_81B58, qword_70A90);
    sub_C14C(v41, v15, &qword_81B58, qword_70A90);
    v42 = v50;
    if ((*(v50 + 48))(v15, 1, v7) == 1)
    {
      v43 = 0x800000000006F2F0;
      v44 = 0xD000000000000014;
    }

    else
    {
      (*(v42 + 32))(v10, v15, v7);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_6D5AC();
      v44 = v56;
      v43 = v57;
      (*(v42 + 8))(v10, v7);
    }

    v56 = 0;
    v57 = 0xE000000000000000;
    sub_6D57C(28);

    v56 = 0xD000000000000011;
    v57 = 0x800000000006F310;
    v47 = v51;
    v48 = v53;
    (*(v51 + 16))(v20, v23, v53);
    v63._countAndFlagsBits = sub_6D2EC();
    sub_6D33C(v63);

    v64._countAndFlagsBits = 0x206D6F72662029;
    v64._object = 0xE700000000000000;
    sub_6D33C(v64);
    v65._countAndFlagsBits = v44;
    v65._object = v43;
    sub_6D33C(v65);

    v30 = v56;
    sub_5E20(v52, &qword_81B58, qword_70A90);
    (*(v47 + 8))(v23, v48);
  }

  else
  {
    v29 = sub_6B7AC();
    (*(*(v29 - 8) + 8))(v27, v29);
    return 0xD000000000000014;
  }

  return v30;
}

uint64_t *sub_49680()
{
  v1 = *v0;
  sub_9964(v0 + 2);
  sub_9964(v0 + 7);
  sub_9964(v0 + 12);

  v2 = v0[18];

  sub_9964(v0 + 19);
  v3 = v0[26];

  v4 = v0[27];

  v5 = v0[28];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 184), *(v1 + 80));
  v6 = *(*v0 + 192);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v8 = sub_6D4DC();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  v9 = *(*v0 + 200);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_6D4DC();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 208);
  v12 = type metadata accessor for IFFlow.State();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t sub_498C0()
{
  sub_49680();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ValueResolutionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValueResolutionMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_49AC0(uint64_t a1)
{
  sub_49BC4();
  if (v2 <= 0x3F)
  {
    sub_49C0C();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      type metadata accessor for IFFlow.PromptValue();
      sub_6C83C();
      sub_6BEEC();
      swift_getTupleTypeMetadata3();
      if (v6 <= 0x3F)
      {
        type metadata accessor for LocationRequest();
        if (v7 <= 0x3F)
        {
          type metadata accessor for IFFlowError();
          if (v8 <= 0x3F)
          {
            sub_49CA0();
            if (v9 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_49BC4()
{
  if (!qword_81CA0)
  {
    v0 = sub_6B7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_81CA0);
    }
  }
}

void sub_49C0C()
{
  if (!qword_81CA8)
  {
    sub_6C7EC();
    sub_29F8(&qword_81B58, qword_70A90);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_81CA8);
    }
  }
}

void sub_49CA0()
{
  if (!qword_81CB0[0])
  {
    sub_29F8(&qword_813D0, qword_6FC50);
    v0 = sub_6D6EC();
    if (!v1)
    {
      atomic_store(v0, qword_81CB0);
    }
  }
}

uint64_t sub_49D20(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_49DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_49E88()
{
  result = qword_81D38;
  if (!qword_81D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D38);
  }

  return result;
}

void (*sub_49EDC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_6BC9C();
  return sub_223D0;
}

uint64_t sub_49F68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_102E0;

  return sub_32C6C(a1);
}

uint64_t sub_4A024(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E728;

  return sub_355F4(a1);
}

uint64_t sub_4A0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_31A24();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

Swift::Int sub_4A10C()
{
  v1 = *v0;
  sub_6D6BC();
  sub_6D6CC(v1);
  return sub_6D6DC();
}

Swift::Int sub_4A180()
{
  v1 = *v0;
  sub_6D6BC();
  sub_6D6CC(v1);
  return sub_6D6DC();
}

uint64_t sub_4A1FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_6BC3C();
  *a2 = result;
  return result;
}

uint64_t sub_4A228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_6BC4C();
}

void sub_4A280(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for IFFlow.State();
  (*(*(v7 - 8) + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_327C0();
}

uint64_t sub_4A34C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_30BD4();
  *a2 = result;
  return result;
}

__n128 sub_4A384(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_4A3C4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_4A3D0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_4A3DC(uint64_t a1)
{
  v2 = sub_5708(&qword_81D78, &qword_70DA8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = &v53 - v4;
  v5 = sub_5708(&qword_819D0, &qword_70DB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_6B8DC();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  v16 = sub_6B7FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_6B3DC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16);
  if ((*(v17 + 88))(v20, v16) == enum case for Parse.nlRouter(_:))
  {
    (*(v17 + 96))(v20, v16);
    (*(v22 + 32))(v25, v20, v21);
    sub_6B39C();
    v26 = sub_6B82C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v8, 1, v26) != 1)
    {
      sub_6B81C();
      (*(v27 + 8))(v8, v26);
      v33 = v53;
      v34 = v13;
      v35 = v54;
      (*(v53 + 32))(v15, v34, v54);
      sub_5708(&qword_81D80, &qword_70DB8);
      v36 = *(v33 + 72);
      v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_70000;
      (*(v33 + 16))(v38 + v37, v15, v35);
      v39 = sub_6BA8C();
      v40 = v55;
      (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
      v41 = sub_6CE7C();

      sub_5E20(v40, &qword_81D78, &qword_70DA8);
      (*(v33 + 8))(v15, v35);
      (*(v22 + 8))(v25, v21);
      v31 = v41 & 1;
      goto LABEL_11;
    }

    (*(v22 + 8))(v25, v21);
    sub_5E20(v8, &qword_819D0, &qword_70DB0);
  }

  else
  {
    (*(v17 + 8))(v20, v16);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v28 = sub_6D04C();
    sub_5CE4(v28, qword_839A0);
    v29 = sub_6D03C();
    v30 = sub_6D45C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = 2;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v29, v30, "Input parse is not of type nlrouter", v32, 2u);

      goto LABEL_11;
    }
  }

  v31 = 2;
LABEL_11:
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v42 = sub_6D04C();
  sub_5CE4(v42, qword_839A0);
  v43 = sub_6D03C();
  v44 = sub_6D45C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v45 = 136315138;
    v47 = 1702195828;
    if ((v31 & 1) == 0)
    {
      v47 = 0x65736C6166;
    }

    v48 = 0xE500000000000000;
    if (v31)
    {
      v48 = 0xE400000000000000;
    }

    if (v31 == 2)
    {
      v49 = 0;
    }

    else
    {
      v49 = v47;
    }

    if (v31 == 2)
    {
      v50 = 0xE000000000000000;
    }

    else
    {
      v50 = v48;
    }

    v51 = sub_1076C(v49, v50, &v56);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_0, v43, v44, "Parsed input parse to isPSC: %s", v45, 0xCu);
    sub_9964(v46);
  }

  return v31;
}

unint64_t sub_4AADC()
{
  result = qword_81D68;
  if (!qword_81D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81D68);
  }

  return result;
}

uint64_t sub_4AB28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_30DC8();
  *a2 = result;
  return result;
}

uint64_t sub_4AB60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_6BC3C();
  *a2 = result;
  return result;
}

uint64_t sub_4AB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_6BC4C();
}

uint64_t sub_4ABBC()
{
  v1 = sub_6BEEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_6C83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_4AD10(unsigned __int8 *a1)
{
  v3 = *(sub_6BEEC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_6C83C() - 8);
  return sub_47694(a1, *(v1 + 32), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_4AE10(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_6BEEC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_6C83C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_6AE9C() - 8);
  v11 = *(v2 + 32);
  v12 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a2(a1, v11, v2 + v5, v2 + v8, v12);
}

uint64_t sub_4AF90(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v5 = *(sub_6BEEC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_6C83C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_6AE9C() - 8);
  return sub_463D8(a1, *(v2 + 32), v2 + v6, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_4B0C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4B110()
{
  v18 = sub_6BEEC();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v17 = sub_6C83C();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_6AE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v16 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = *(v0 + 32);

  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v16, v13 | 7);
}

uint64_t sub_4B304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B36C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4B3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B434(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4B4CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6BF0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6C95C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = sub_6C4DC();
  if (*(v15 + 16))
  {
    (*(v8 + 16))(v12, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    (*(v8 + 32))(v14, v12, v7);
    sub_6C94C();
    return (*(v8 + 8))(v14, v7);
  }

  else
  {

    (*(v3 + 104))(v6, enum case for ActionFailure.Failure.actionCanceled(_:), v2);
    sub_6BF4C();
    v17 = enum case for StatementOutcome.failure(_:);
    v18 = sub_6C54C();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }
}

unint64_t sub_4B728()
{
  v0 = sub_6C95C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6C4DC();
  if (*(v5 + 16))
  {
    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v6 = sub_6C93C();
    v8 = v7;
    (*(v1 + 8))(v4, v0);
    if (v8)
    {
      return v6;
    }
  }

  else
  {
  }

  return 0xD000000000000012;
}

uint64_t sub_4B870()
{
  v0 = sub_6C95C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = sub_6C4DC();
  if (*(v8 + 16))
  {
    (*(v1 + 16))(v5, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v7, v5, v0);
    sub_6C92C();
    return (*(v1 + 8))(v7, v0);
  }

  else
  {

    return StatementID.init(index:name:)(1, 0, 0);
  }
}

uint64_t sub_4BA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v149 = a5;
  v147 = a4;
  v154 = a3;
  v143 = a2;
  v161 = *v6;
  v162 = a6;
  v8 = sub_6C4EC();
  v145 = *(v8 - 8);
  v146 = v8;
  v9 = *(v145 + 64);
  __chkstk_darwin(v8);
  v144 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_6C35C();
  v151 = *(v153 - 8);
  v11 = *(v151 + 64);
  v12 = __chkstk_darwin(v153);
  v152 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v150 = &v129 - v14;
  v15 = sub_5708(&qword_81770, &unk_70F70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v142 = &v129 - v17;
  v140 = sub_6BEEC();
  v138 = *(v140 - 8);
  v18 = *(v138 + 64);
  __chkstk_darwin(v140);
  v141 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_6C86C();
  v136 = *(v137 - 8);
  v20 = *(v136 + 64);
  __chkstk_darwin(v137);
  v139 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6AE9C();
  v156 = *(v22 - 8);
  v157 = v22;
  v23 = *(v156 + 64);
  __chkstk_darwin(v22);
  v155 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_5708(&unk_82030, &qword_70370);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v148 = &v129 - v27;
  v135 = sub_6C89C();
  v134 = *(v135 - 8);
  v28 = *(v134 + 64);
  __chkstk_darwin(v135);
  v132 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_6D1EC();
  v131 = *(v133 - 8);
  v30 = *(v131 + 64);
  __chkstk_darwin(v133);
  v130 = (&v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_6C0EC();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_5708(&qword_81580, &unk_70F80);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v129 - v38;
  v40 = sub_5708(&qword_81588, &qword_700C0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v129 - v42;
  v44 = sub_6C33C();
  v159 = *(v44 - 8);
  v160 = v44;
  v45 = *(v159 + 64);
  v46 = __chkstk_darwin(v44);
  v48 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v158 = &v129 - v49;
  v50 = sub_5708(&qword_81F10, &unk_70F90);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v54 = (&v129 - v53);
  (*(v51 + 16))(&v129 - v53, a1, v50);
  v55 = (*(v51 + 88))(v54, v50);
  if (v55 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v51 + 96))(v54, v50);
    v57 = *v54;
    v56 = v54[1];
    v129 = v6;
    if (v147)
    {
      v77 = v156;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v78 = sub_6D04C();
      sub_5CE4(v78, qword_839A0);
      v79 = sub_6D03C();
      v80 = sub_6D45C();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v157;
      if (v81)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v79, v80, "IFFlow.valueResolutionMode == .stringValue; passing prompt response to IF as a resolved parameter value", v83, 2u);
      }

      v84 = sub_6D1DC();
      v85 = swift_allocBox();
      *v86 = v57;
      v86[1] = v56;
      (*(*(v84 - 8) + 104))(v86, enum case for TypedValue.PrimitiveValue.string(_:), v84);
      v87 = v130;
      *v130 = v85;
      v88 = v131;
      v89 = v133;
      (*(v131 + 104))(v87, enum case for TypedValue.primitive(_:), v133);
      (*(v77 + 56))(v148, 1, 1, v82);
      sub_6C80C();
      v90 = v139;
      (*(v88 + 16))(v139, v87, v89);
      (*(v136 + 104))(v90, enum case for SystemPromptResolution.UserAction.parameterValueSelected(_:), v137);
      (*(v138 + 16))(v141, v143, v140);
      v91 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
      v92 = sub_6C85C();
      v93 = *(v92 - 8);
      v94 = v142;
      (*(v93 + 104))(v142, v91, v92);
      (*(v93 + 56))(v94, 0, 1, v92);
      v95 = v132;
      v96 = v155;
      sub_6C87C();
      v66 = v158;
      sub_A17C(v95, v149);
      (*(v134 + 8))(v95, v135);
      (*(v88 + 8))(v87, v89);
      v71 = v153;
      v70 = v156;
      v69 = v96;
      v65 = v159;
      v68 = v160;
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v58 = sub_6D04C();
      sub_5CE4(v58, qword_839A0);
      v59 = sub_6D03C();
      v60 = sub_6D45C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_0, v59, v60, "IFFlow.valueResolutionMode == .passthrough; passing prompt response back to planner unresolved", v61, 2u);
      }

      v62 = sub_6C04C();
      (*(*(v62 - 8) + 56))(v43, 1, 1, v62);
      v63 = sub_6C29C();
      (*(*(v63 - 8) + 56))(v39, 1, 1, v63);
      sub_9B78(v57, v43, v35);
      sub_6C31C();
      sub_9E14(v48, v149, v39);
      v64 = v153;

      sub_5E20(v39, &qword_81580, &unk_70F80);
      sub_5E20(v43, &qword_81588, &qword_700C0);
      v66 = v158;
      v65 = v159;
      v67 = v48;
      v68 = v160;
      (*(v159 + 32))(v158, v67, v160);
      v69 = v155;
      v70 = v156;
      v71 = v64;
    }

    v155 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v97 = v150;
    (*(v65 + 16))(v150, v66, v68);
    v98 = v151;
    (*(v151 + 104))(v97, enum case for MessagePayload.request(_:), v71);
    sub_30BF8(v69, v97);
    v99 = *(v98 + 8);
    v99(v97, v71);
    (*(v70 + 8))(v69, v157);
    v100 = v152;
    sub_6C81C();
    if ((*(v98 + 88))(v100, v71) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v98 + 96))(v100, v71);
      v102 = v145;
      v101 = v146;
      v103 = v144;
      (*(v145 + 32))(v144, v100, v146);
      v104 = v162;
      v105 = v155;
      sub_4458(v103, v162 + v155);
      (*(v102 + 8))(v103, v101);
      (*(v159 + 8))(v158, v160);
      v106 = 0;
      v107 = v104;
      v108 = v105;
    }

    else
    {
      (*(v159 + 8))(v158, v160);
      v99(v100, v71);
      v106 = 1;
      v107 = v162;
      v108 = v155;
    }

    v116 = sub_6CD2C();
    (*(*(v116 - 8) + 56))(v107 + v108, v106, 1, v116);
    v117 = *(v161 + 80);
    v118 = *(v161 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  if (v55 == enum case for PromptResult.error<A>(_:))
  {
    (*(v51 + 96))(v54, v50);
    v72 = *v54;
    v73 = *(v54 + 8);
    v74 = v162;
    *v162 = v72;
    *(v74 + 8) = v73;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v75 = *(v161 + 80);
    v76 = *(v161 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  v109 = v162;
  if (v55 == enum case for PromptResult.cancelled<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v110 = sub_6D04C();
    sub_5CE4(v110, qword_839A0);
    v111 = sub_6D03C();
    v112 = sub_6D45C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_0, v111, v112, "Exiting IFFlow, received userCancelled", v113, 2u);
    }

    *v109 = 0;
    *(v109 + 8) = 0;
    v114 = *(v161 + 80);
    v115 = *(v161 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  if (v55 == enum case for PromptResult.unanswered<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v120 = sub_6D04C();
    sub_5CE4(v120, qword_839A0);
    v121 = sub_6D03C();
    v122 = sub_6D45C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_0, v121, v122, "Exiting IFFlow, received .unaswered from PromptForValueFlow", v123, 2u);
    }

    *v109 = 0;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v124 = *(v161 + 80);
    v125 = *(v161 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  v163 = 0;
  v164 = 0xE000000000000000;
  sub_6D57C(35);

  v163 = 0xD000000000000021;
  v164 = 0x800000000006EDA0;
  sub_4D49C();
  v165._countAndFlagsBits = sub_6D61C();
  sub_6D33C(v165);

  v126 = v164;
  *v109 = v163;
  v109[1] = v126;
  type metadata accessor for IFFlowError();
  swift_storeEnumTagMultiPayload();
  v127 = *(v161 + 80);
  v128 = *(v161 + 88);
  type metadata accessor for IFFlow.State();
  swift_storeEnumTagMultiPayload();
  return (*(v51 + 8))(v54, v50);
}

uint64_t sub_4CBC4()
{
  v1 = sub_6B7FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56) == 1 && (sub_22C60() & 1) != 0)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v6 = sub_6D04C();
    sub_5CE4(v6, qword_839A0);
    v7 = sub_6D03C();
    v8 = sub_6D44C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1076C(0xD000000000000012, 0x800000000006F4A0, &v20);
      _os_log_impl(&dword_0, v7, v8, "%s Cancelling input due to user cancel signal", v9, 0xCu);
      sub_9964(v10);
    }

    return static ActionForInput.cancel()();
  }

  else
  {
    sub_6B78C();
    v11 = (*(v2 + 88))(v5, v1);
    v12 = enum case for Parse.nlRouter(_:);
    (*(v2 + 8))(v5, v1);
    if (v11 == v12)
    {
      return sub_6B3FC();
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v13 = sub_6D04C();
      sub_5CE4(v13, qword_839A0);
      v14 = sub_6D03C();
      v15 = sub_6D44C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1076C(0xD000000000000012, 0x800000000006F4A0, &v20);
        _os_log_impl(&dword_0, v14, v15, "%s Ignoring input as it does not contain NLRouter info", v16, 0xCu);
        sub_9964(v17);
      }

      return sub_6B40C();
    }
  }
}

uint64_t sub_4CF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_4D010;

  return sub_4DA08(a2);
}

uint64_t sub_4D010(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_4D12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12CEC;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, v7, a3);
}

uint64_t sub_4D204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_12CEC;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, v7, a3);
}

uint64_t sub_4D2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = async function pointer to PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_E728;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t sub_4D3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to PromptForValueFlowStrategyAsync.makeErrorResponse(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12CEC;

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

unint64_t sub_4D49C()
{
  result = qword_81F18;
  if (!qword_81F18)
  {
    sub_29F8(&qword_81F10, &unk_70F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81F18);
  }

  return result;
}

uint64_t sub_4D500(uint64_t a1)
{
  v2 = sub_6B7AC();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_6B3AC();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_6B3DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6B7FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_6B78C();
  if ((*(v15 + 88))(v19, v14) == enum case for Parse.nlRouter(_:))
  {
    (*(v15 + 96))(v19, v14);
    (*(v10 + 32))(v13, v19, v9);
    sub_6B3CC();
    (*(v10 + 8))(v13, v9);
    v20 = v38;
    if ((*(v5 + 88))(v8, v38) == enum case for NLRouterParse.InputCandidate.text(_:))
    {
      (*(v5 + 96))(v8, v20);
      result = *v8;
      v22 = v8[1];
      return result;
    }

    (*(v5 + 8))(v8, v20);
  }

  else
  {
    v23 = v14;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v24 = sub_6D04C();
    sub_5CE4(v24, qword_839A0);
    v26 = v39;
    v25 = v40;
    v27 = v41;
    (*(v40 + 16))(v39, a1, v41);
    v28 = sub_6D03C();
    v29 = sub_6D46C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v38 = v23;
      v31 = v30;
      v32 = v26;
      v37 = swift_slowAlloc();
      v42 = v37;
      *v31 = 136315138;
      sub_6B78C();
      v33 = sub_6D2EC();
      v35 = v34;
      (*(v25 + 8))(v32, v27);
      v36 = sub_1076C(v33, v35, &v42);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v28, v29, "Unexpected parse received: %s", v31, 0xCu);
      sub_9964(v37);

      v23 = v38;
    }

    else
    {

      (*(v25 + 8))(v26, v27);
    }

    (*(v15 + 8))(v19, v23);
  }

  return 0;
}

uint64_t sub_4DA08(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_6B7AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_4DAC8, 0, 0);
}

uint64_t sub_4DAC8()
{
  v26 = v0;
  v1 = sub_4D500(v0[2]);
  v3 = v2;
  if (!v2)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = sub_6D04C();
    sub_5CE4(v8, qword_839A0);
    (*(v5 + 16))(v4, v7, v6);
    v9 = sub_6D03C();
    v10 = sub_6D46C();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v24 = v10;
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v15 = 136315138;
      sub_4DCFC();
      v16 = sub_6D61C();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_1076C(v16, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v9, v24, "Unexpectedly found nil criticalInfoValueResponse in %s (why didn't actionForInput ignore?)", v15, 0xCu);
      sub_9964(v23);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  v20 = v0[5];

  v21 = v0[1];

  return v21(v1, v3);
}

unint64_t sub_4DCFC()
{
  result = qword_81768;
  if (!qword_81768)
  {
    sub_6B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81768);
  }

  return result;
}

id sub_4DD54()
{
  type metadata accessor for IFFlowInstrumentationUtil();
  v0 = swift_allocObject();
  v1 = objc_opt_self();
  v0[2] = [v1 sharedStream];
  v2 = sub_6CF2C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[3] = sub_6CF1C();
  result = [v1 sharedAnalytics];
  v0[4] = result;
  qword_839C8 = v0;
  return result;
}

void sub_4DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || (v9 = v8, v11 = *(v8 + 24), (v12 = sub_6CF0C()) == 0))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v22 = sub_6D04C();
    sub_5CE4(v22, qword_839A0);
    v42 = sub_6D03C();
    v23 = sub_6D46C();
    if (!os_log_type_enabled(v42, v23))
    {
      goto LABEL_22;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v43);
    _os_log_impl(&dword_0, v42, v23, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v24, 0xCu);
    sub_9964(v25);

    goto LABEL_20;
  }

  v42 = v12;
  v13 = sub_6CEFC();
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 eventMetadata];
  if (!v15)
  {

LABEL_16:
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v26 = sub_6D04C();
    sub_5CE4(v26, qword_839A0);
    v27 = sub_6D03C();
    v28 = sub_6D46C();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_22;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v43);
    _os_log_impl(&dword_0, v27, v28, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata when logging %s", v29, 0xCu);
    sub_9964(v30);

LABEL_20:
    return;
  }

  v16 = sub_6CF0C();
  if (!v16)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v31 = sub_6D04C();
    sub_5CE4(v31, qword_839A0);
    v32 = sub_6D03C();
    v33 = sub_6D46C();
    if (!os_log_type_enabled(v32, v33))
    {

      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v43);
    _os_log_impl(&dword_0, v32, v33, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v34, 0xCu);
    sub_9964(v35);

    goto LABEL_20;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowQuerySent) init];
  if (v18)
  {
    v41 = v18;
    if (a8)
    {
      v19 = sub_6CF0C();
      if (v19)
      {
        v20 = v19;
        [v41 setTrpId:v19];
      }
    }

    [v41 setTraceId:v42];
    [v41 setSubRequestId:v17];
    [v14 setIntelligenceFlowQuerySent:v41];
    [*(v9 + 16) emitMessage:v14];

    v21 = v41;
    goto LABEL_23;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v36 = sub_6D04C();
  sub_5CE4(v36, qword_839A0);
  v37 = sub_6D03C();
  v38 = sub_6D46C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1076C(0xD00000000000004BLL, 0x800000000006F780, &v43);
    _os_log_impl(&dword_0, v37, v38, "[IFFlowInstrumentationUtil] Could not build schema event for %s", v39, 0xCu);
    sub_9964(v40);

    goto LABEL_20;
  }

LABEL_22:
  v21 = v42;
LABEL_23:
}

void sub_4E400(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v12 = sub_6D04C();
    sub_5CE4(v12, qword_839A0);
    oslog = sub_6D03C();
    v13 = sub_6D46C();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1076C(0xD000000000000031, 0x800000000006F740, &v20);
    _os_log_impl(&dword_0, oslog, v13, "[IFFlowInstrumentationUtil] The plannerTraceId nil, stopping %s", v14, 0xCu);
    sub_9964(v15);

    goto LABEL_12;
  }

  v5 = v4;
  v10 = *(v4 + 24);
  v11 = sub_6CEEC();
  if (!v11)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v16 = sub_6D04C();
    sub_5CE4(v16, qword_839A0);

    oslog = sub_6D03C();
    v17 = sub_6D46C();

    if (!os_log_type_enabled(oslog, v17))
    {
      goto LABEL_13;
    }

    v18 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1076C(a1, a2, &v20);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1076C(a3, a4, &v20);
    _os_log_impl(&dword_0, oslog, v17, "[IFFlowInstrumentationUtil] Unable to logSubRequestTraceLink for subRequestId=%s and plannerTraceId=%s", v18, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    return;
  }

  oslog = v11;
  [*(v5 + 16) emitMessage:?];
LABEL_13:
}

void sub_4E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for IFFlowError();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v20 = sub_6D04C();
    sub_5CE4(v20, qword_839A0);
    v31 = sub_6D03C();
    v21 = sub_6D46C();
    if (os_log_type_enabled(v31, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1076C(0xD00000000000002ALL, 0x800000000006F6E0, v33);
      _os_log_impl(&dword_0, v31, v21, "[IFFlowInstrumentationUtil] could not build wrapper for %s because rootRequest is nil", v22, 0xCu);
      sub_9964(v23);

      return;
    }

    goto LABEL_27;
  }

  v11 = *(v4 + 24);
  v12 = sub_6CEFC();
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 eventMetadata];
  if (!v14)
  {

LABEL_18:
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v24 = sub_6D04C();
    sub_5CE4(v24, qword_839A0);
    v31 = sub_6D03C();
    v25 = sub_6D46C();
    if (os_log_type_enabled(v31, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v31, v25, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata when logging logIFRequestFailed", v26, 2u);
    }

    goto LABEL_27;
  }

  v15 = [objc_allocWithZone(ORCHSchemaORCHRequestFailed) init];
  if (v15)
  {
    v16 = v15;
    [v15 setErrorDomain:15];
    [v16 setOrchErrorCode:sub_37B8()];
    sub_4394(a3, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0x16)
    {
      goto LABEL_8;
    }

    if (((1 << EnumCaseMultiPayload) & 0x580000) != 0)
    {
LABEL_10:
      v18 = [objc_allocWithZone(ORCHSchemaORCHRequestContext) init];
      v19 = v18;
      if (v18)
      {
        [v18 setFailed:v16];
      }

      [v13 setRequestContext:v19];
      [*(v4 + 16) emitMessage:v13];

      return;
    }

    if (((1 << EnumCaseMultiPayload) & 0x81) == 0)
    {
LABEL_8:
      strcpy(v33, "IFFlowError.");
      BYTE5(v33[1]) = 0;
      HIWORD(v33[1]) = -5120;
      v32 = sub_37B8();
      v35._countAndFlagsBits = sub_6D61C();
      sub_6D33C(v35);

      sub_6CE9C();
    }

    sub_43F8(v10);
    goto LABEL_10;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v27 = sub_6D04C();
  sub_5CE4(v27, qword_839A0);
  v31 = sub_6D03C();
  v28 = sub_6D46C();
  if (os_log_type_enabled(v31, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v31, v28, "[IFFlowInstrumentationUtil] Could not build schema event for logIFRequestFailed", v29, 2u);
  }

LABEL_27:
  v30 = v31;
}

void sub_4EC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v12 = sub_6D04C();
  sub_5CE4(v12, qword_839A0);
  v13 = sub_6D03C();
  v14 = sub_6D44C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a8;
    v16 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v47);
    _os_log_impl(&dword_0, v13, v14, "[IFFlowInstrumentationUtil] Logging Request Ended in %s", v17, 0xCu);
    sub_9964(v18);

    v9 = v16;
    a8 = v15;
  }

  if (a2)
  {
    v19 = *(v9 + 24);
    v20 = sub_6CF0C();
    if (v20)
    {
      v46 = v20;
      v21 = sub_6CF0C();
      if (!v21)
      {
        v22 = sub_6D03C();
        v35 = sub_6D46C();
        if (os_log_type_enabled(v22, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v47 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v47);
          _os_log_impl(&dword_0, v22, v35, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v36, 0xCu);
          sub_9964(v37);

LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_31;
      }

      v22 = v21;
      v23 = sub_6CEFC();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 eventMetadata];
        if (v25)
        {

          v26 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestEnded) init];
          if (v26)
          {
            v27 = v26;
            v28 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
            if (v28)
            {
              v45 = v28;
              if (a8)
              {
                v29 = sub_6CF0C();
                if (v29)
                {
                  v30 = v29;
                  [v45 setTrpId:v29];
                }
              }

              [v45 setEnded:v27];
              [v45 setTraceId:v46];
              [v45 setSubRequestId:v22];
              [v24 setIntelligenceFlowRequestContext:v45];
              [*(v9 + 16) emitMessage:v24];

              v31 = v45;
              goto LABEL_33;
            }
          }

          v38 = sub_6D03C();
          v42 = sub_6D46C();
          if (os_log_type_enabled(v38, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v47 = v44;
            *v43 = 136315138;
            *(v43 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v47);
            _os_log_impl(&dword_0, v38, v42, "[IFFlowInstrumentationUtil] Could not create schema events in %s. This should never occur", v43, 0xCu);
            sub_9964(v44);

            goto LABEL_26;
          }

LABEL_30:
LABEL_31:

          goto LABEL_32;
        }
      }

      v38 = sub_6D03C();
      v39 = sub_6D46C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v47 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v47);
        _os_log_impl(&dword_0, v38, v39, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v40, 0xCu);
        sub_9964(v41);

LABEL_26:

        goto LABEL_27;
      }

      goto LABEL_30;
    }
  }

  v46 = sub_6D03C();
  v32 = sub_6D46C();
  if (os_log_type_enabled(v46, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_1076C(0xD00000000000004ELL, 0x800000000006F690, &v47);
    _os_log_impl(&dword_0, v46, v32, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v33, 0xCu);
    sub_9964(v34);

LABEL_28:

    return;
  }

LABEL_32:
  v31 = v46;
LABEL_33:
}

void sub_4F28C(void *a1, NSObject *a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void (*a5)(char *, uint64_t), void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v116 = a8;
  v114 = a7;
  v119 = a5;
  v120 = a1;
  v121 = a2;
  v118 = a9;
  v13 = sub_6C06C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v117 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v115 = &v105 - v19;
  __chkstk_darwin(v18);
  v21 = &v105 - v20;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v22 = sub_6D04C();
  sub_5CE4(v22, qword_839A0);
  v23 = sub_6D03C();
  v24 = sub_6D44C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v113 = a6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v112 = a3;
    v28 = v21;
    v29 = v14;
    v30 = v13;
    v31 = v10;
    v32 = v27;
    v122 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v122);
    _os_log_impl(&dword_0, v23, v24, "[IFFlowInstrumentationUtil] Logging Request redirected to shim in %s", v26, 0xCu);
    sub_9964(v32);
    v10 = v31;
    v13 = v30;
    v14 = v29;
    v21 = v28;
  }

  if (v121 && (v33 = *(v10 + 24), (v34 = sub_6CF0C()) != 0))
  {
    v121 = v34;
    v35 = sub_6CF0C();
    if (v35)
    {
      v36 = v35;
      v37 = sub_6CEFC();
      if (v37)
      {
        v38 = v37;
        v39 = [v37 eventMetadata];
        if (v39)
        {

          v40 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestEnded) init];
          if (v40)
          {
            v41 = v40;
            v42 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
            if (v42)
            {
              v120 = v42;
              v110 = v10;
              v112 = v14[2];
              v113 = v14 + 2;
              v112(v21, v118, v13);
              v43 = sub_6D03C();
              v44 = v21;
              v45 = sub_6D44C();
              v46 = os_log_type_enabled(v43, v45);
              v111 = v14;
              if (v46)
              {
                v47 = swift_slowAlloc();
                v109 = v41;
                v48 = v47;
                v49 = swift_slowAlloc();
                v107 = v38;
                v50 = v49;
                v122 = v49;
                *v48 = 136315138;
                v106 = sub_6C05C();
                v108 = v36;
                v52 = v51;
                v119 = v14[1];
                v119(v44, v13);
                v53 = sub_1076C(v106, v52, &v122);
                v36 = v108;

                *(v48 + 4) = v53;
                _os_log_impl(&dword_0, v43, v45, "[IFFlowInstrumentationUtil] Finding shim with id: %s", v48, 0xCu);
                sub_9964(v50);
                v38 = v107;

                v41 = v109;
              }

              else
              {

                v119 = v14[1];
                v119(v44, v13);
              }

              v69 = sub_6BE7C();
              v70 = sub_6C05C();
              if (*(v69 + 16))
              {
                v72 = sub_10DDC(v70, v71);
                v74 = v73;

                if (v74)
                {
                  v75 = (*(v69 + 56) + 16 * v72);
                  v76 = *v75;
                  v77 = v75[1];

                  v78 = sub_6BE8C();
                  v79 = v115;
                  v112(v115, v118, v13);
                  v80 = sub_6D03C();
                  v81 = sub_6D44C();
                  if (os_log_type_enabled(v80, v81))
                  {
                    v82 = swift_slowAlloc();
                    LODWORD(v118) = v78;
                    v83 = v82;
                    v84 = swift_slowAlloc();
                    v85 = v79;
                    v117 = v13;
                    v86 = v84;
                    v122 = v84;
                    *v83 = 67109378;
                    *(v83 + 4) = v118;
                    *(v83 + 8) = 2080;
                    v87 = sub_6C05C();
                    v109 = v41;
                    v88 = v38;
                    v90 = v89;
                    v119(v85, v117);
                    v91 = sub_1076C(v87, v90, &v122);
                    v38 = v88;
                    v41 = v109;

                    *(v83 + 10) = v91;
                    _os_log_impl(&dword_0, v80, v81, "[IFFlowInstrumentationUtil] Found schema shim action %d for shim id %s", v83, 0x12u);
                    sub_9964(v86);

                    v78 = v118;
                  }

                  else
                  {

                    v119(v79, v13);
                  }

                  v102 = v120;
                  [v41 setShimAction:v78];
                  if (v116)
                  {
                    v103 = sub_6CF0C();
                    if (v103)
                    {
                      v104 = v103;
                      [v102 setTrpId:v103];
                    }
                  }

                  [v102 setEnded:v41];
                  [v102 setTraceId:v121];
                  [v102 setSubRequestId:v36];
                  [v38 setIntelligenceFlowRequestContext:v102];
                  [*(v110 + 16) emitMessage:v38];

                  return;
                }
              }

              else
              {
              }

              v92 = v117;
              v112(v117, v118, v13);
              v93 = sub_6D03C();
              v94 = sub_6D46C();
              if (os_log_type_enabled(v93, v94))
              {
                v95 = swift_slowAlloc();
                v96 = swift_slowAlloc();
                v122 = v96;
                *v95 = 136315138;
                v97 = sub_6C05C();
                v98 = v13;
                v100 = v99;
                v119(v92, v98);
                v101 = sub_1076C(v97, v100, &v122);

                *(v95 + 4) = v101;
                _os_log_impl(&dword_0, v93, v94, "[IFFlowInstrumentationUtil] Could not find shim with id: %s", v95, 0xCu);
                sub_9964(v96);
              }

              else
              {

                v119(v92, v13);
              }

              return;
            }
          }

          v61 = sub_6D03C();
          v65 = sub_6D46C();
          if (os_log_type_enabled(v61, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v122 = v67;
            *v66 = 136315138;
            *(v66 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v122);
            _os_log_impl(&dword_0, v61, v65, "[IFFlowInstrumentationUtil] Could not build schema events for %s. This should never occur", v66, 0xCu);
            sub_9964(v67);

            goto LABEL_25;
          }

LABEL_28:
          goto LABEL_29;
        }
      }

      v61 = sub_6D03C();
      v62 = sub_6D46C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v122 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v122);
        _os_log_impl(&dword_0, v61, v62, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v63, 0xCu);
        sub_9964(v64);

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v57 = sub_6D03C();
    v58 = sub_6D46C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v122 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v122);
      _os_log_impl(&dword_0, v57, v58, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v59, 0xCu);
      sub_9964(v60);

      goto LABEL_26;
    }
  }

  else
  {
    v121 = sub_6D03C();
    v54 = sub_6D46C();
    if (os_log_type_enabled(v121, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v122 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_1076C(0xD000000000000066, 0x800000000006F620, &v122);
      _os_log_impl(&dword_0, v121, v54, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v55, 0xCu);
      sub_9964(v56);

LABEL_26:

      return;
    }
  }

LABEL_29:
  v68 = v121;
}

void sub_4FEAC(NSObject *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v92 = a5;
  v93 = a6;
  v94 = a3;
  v95 = a4;
  v96 = a1;
  v91 = a10;
  v87 = a9;
  v15 = sub_5708(&qword_81E48, &qword_70E70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v82[-v17];
  v19 = sub_6BF0C();
  v89 = *(v19 - 8);
  v20 = *(v89 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v82[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v90 = &v82[-v24];
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v25 = sub_6D04C();
  sub_5CE4(v25, qword_839A0);
  v26 = sub_6D03C();
  v27 = sub_6D44C();
  v28 = os_log_type_enabled(v26, v27);
  v86 = v23;
  v88 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v19;
    v31 = a7;
    v32 = a8;
    v33 = v11;
    v34 = swift_slowAlloc();
    v97 = v34;
    *v29 = 136315138;
    *(v29 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v97);
    _os_log_impl(&dword_0, v26, v27, "[IFFlowInstrumentationUtil] Logging Request fall back to SiriX in %s", v29, 0xCu);
    sub_9964(v34);
    v11 = v33;
    a8 = v32;
    a7 = v31;
    v19 = v30;
  }

  if (a2 && (v35 = *(v11 + 24), (v36 = sub_6CF0C()) != 0))
  {
    v96 = v36;
    v37 = sub_6CF0C();
    if (v37)
    {
      v38 = v37;
      v39 = sub_6CEFC();
      if (v39)
      {
        v40 = v39;
        v41 = [v39 eventMetadata];
        if (v41)
        {

          v95 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestFailed) init];
          if (v95)
          {
            v94 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
            if (v94)
            {
              v42 = v88;
              sub_526E4(v87, v88);
              v43 = v89;
              if ((*(v89 + 48))(v42, 1, v19) == 1)
              {
                sub_5E20(v42, &qword_81E48, &qword_70E70);
                v44 = sub_6D03C();
                v45 = sub_6D44C();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  *v46 = 0;
                  _os_log_impl(&dword_0, v44, v45, "[IFFlowInstrumentationUtil] Logging failure with unknown reason", v46, 2u);
                }

                [v95 setReason:0];
                v47 = v94;
              }

              else
              {
                v87 = v35;
                v92 = v40;
                v93 = v11;
                v63 = *(v43 + 32);
                v64 = v43;
                v65 = v90;
                v63(v90, v42, v19);
                v66 = sub_508F8();
                v67 = v86;
                (*(v64 + 16))(v86, v65, v19);
                v68 = sub_6D03C();
                v69 = sub_6D44C();
                if (os_log_type_enabled(v68, v69))
                {
                  v70 = swift_slowAlloc();
                  LODWORD(v88) = v66;
                  v71 = v70;
                  v72 = swift_slowAlloc();
                  v85 = a8;
                  v73 = v72;
                  v97 = v72;
                  *v71 = 67109378;
                  *(v71 + 4) = v88;
                  *(v71 + 8) = 2080;
                  sub_52754();
                  v83 = v69;
                  v74 = sub_6D24C();
                  v84 = a7;
                  v76 = v75;
                  v77 = *(v64 + 8);
                  v77(v67, v19);
                  v78 = sub_1076C(v74, v76, &v97);

                  *(v71 + 10) = v78;
                  _os_log_impl(&dword_0, v68, v83, "[IFFlowInstrumentationUtil] Found schema failure reason %d for failure %s", v71, 0x12u);
                  sub_9964(v73);
                  a8 = v85;

                  v66 = v88;
                }

                else
                {

                  v77 = *(v64 + 8);
                  v77(v67, v19);
                }

                v47 = v94;
                [v95 setReason:v66];
                v77(v90, v19);
                v40 = v92;
                v11 = v93;
              }

              [v95 setIsSiriXFallback:v91 & 1];
              if (a8)
              {
                v79 = sub_6CF0C();
                if (v79)
                {
                  v80 = v79;
                  [v47 setTrpId:v79];
                }
              }

              v81 = v95;
              [v47 setFailed:v95];
              [v47 setTraceId:v96];
              [v47 setSubRequestId:v38];
              [v40 setIntelligenceFlowRequestContext:v47];
              [*(v11 + 16) emitMessage:v40];

              return;
            }
          }

          v55 = sub_6D03C();
          v59 = sub_6D46C();
          if (os_log_type_enabled(v55, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v97 = v61;
            *v60 = 136315138;
            *(v60 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v97);
            _os_log_impl(&dword_0, v55, v59, "[IFFlowInstrumentationUtil] Could not build schema events for %s. This should never occur", v60, 0xCu);
            sub_9964(v61);

            goto LABEL_27;
          }

LABEL_30:
          goto LABEL_31;
        }
      }

      v55 = sub_6D03C();
      v56 = sub_6D46C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v97 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v97);
        _os_log_impl(&dword_0, v55, v56, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v57, 0xCu);
        sub_9964(v58);

LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_30;
    }

    v51 = sub_6D03C();
    v52 = sub_6D46C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v97 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v97);
      _os_log_impl(&dword_0, v51, v52, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v53, 0xCu);
      sub_9964(v54);

      goto LABEL_28;
    }
  }

  else
  {
    v96 = sub_6D03C();
    v48 = sub_6D46C();
    if (os_log_type_enabled(v96, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v97 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1076C(0xD000000000000068, 0x800000000006F5B0, &v97);
      _os_log_impl(&dword_0, v96, v48, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v49, 0xCu);
      sub_9964(v50);

LABEL_28:

      return;
    }
  }

LABEL_31:
  v62 = v96;
}

uint64_t sub_508F8()
{
  v1 = v0;
  v2 = sub_6BF0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ActionFailure.Failure.developerDefinedError(_:))
  {
    v8 = 16;
  }

  else if (v7 == enum case for ActionFailure.Failure.unableToHandleRequest(_:))
  {
    v8 = 20;
  }

  else
  {
    if (v7 == enum case for ActionFailure.Failure.preflightCheckFailure(_:))
    {
      return 1;
    }

    if (v7 == enum case for ActionFailure.Failure.preciseLocationDisabled(_:))
    {
      return 2;
    }

    if (v7 == enum case for ActionFailure.Failure.locationDisabled(_:))
    {
      return 3;
    }

    if (v7 == enum case for ActionFailure.Failure.wifiDisabled(_:))
    {
      return 4;
    }

    if (v7 == enum case for ActionFailure.Failure.bluetoothDisabled(_:))
    {
      return 5;
    }

    if (v7 == enum case for ActionFailure.Failure.networkFailure(_:))
    {
      return 6;
    }

    if (v7 == enum case for ActionFailure.Failure.partialFailure(_:))
    {
      return 7;
    }

    if (v7 == enum case for ActionFailure.Failure.unsupportedOnDevice(_:))
    {
      return 8;
    }

    if (v7 == enum case for ActionFailure.Failure.featureCurrentlyRestricted(_:))
    {
      return 9;
    }

    if (v7 == enum case for ActionFailure.Failure.entityNotFound(_:))
    {
      return 10;
    }

    if (v7 == enum case for ActionFailure.Failure.actionNotAllowed(_:))
    {
      return 11;
    }

    if (v7 == enum case for ActionFailure.Failure.valueDisambiguationRejected(_:))
    {
      return 12;
    }

    if (v7 == enum case for ActionFailure.Failure.noMatchingTool(_:))
    {
      return 13;
    }

    if (v7 == enum case for ActionFailure.Failure.unableToUndo(_:))
    {
      return 14;
    }

    if (v7 == enum case for ActionFailure.Failure.actionCanceled(_:))
    {
      return 15;
    }

    if (v7 == enum case for ActionFailure.Failure.unableToCancel(_:))
    {
      return 17;
    }

    if (v7 == enum case for ActionFailure.Failure.searchSucceededNoMatchingTool(_:))
    {
      return 18;
    }

    if (v7 == enum case for ActionFailure.Failure.valueSelectionRequired(_:))
    {
      return 19;
    }

    v8 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

void sub_50C28(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_5708(&unk_82030, &qword_70370);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_6AE9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6AE5C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_5E20(v11, &unk_82030, &qword_70370);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v17 = sub_6D04C();
    sub_5CE4(v17, qword_839A0);

    v18 = sub_6D03C();
    v19 = sub_6D46C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1076C(a2, a3, aBlock);
      _os_log_impl(&dword_0, v18, v19, "[IFFlowInstrumentationUtil] Unable to apply log redaction due to invalid requestId %s", v20, 0xCu);
      sub_9964(v21);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v22 = sub_6D04C();
    sub_5CE4(v22, qword_839A0);

    v23 = sub_6D03C();
    v24 = sub_6D45C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = a2;
      v42 = v26;
      aBlock[0] = v26;
      *v25 = 136315394;
      v27 = sub_6D48C();
      v29 = sub_1076C(v27, v28, aBlock);
      v40 = v23;
      v30 = v16;
      v31 = a1;
      v32 = v29;

      *(v25 + 4) = v32;
      a1 = v31;
      v16 = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1076C(v41, a3, aBlock);
      v33 = v40;
      _os_log_impl(&dword_0, v40, v24, "[IFFlowInstrumentationUtil] Apply redaction tag with sensitive state %s for requestId %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v34 = objc_allocWithZone(SiriAnalyticsTag);
    isa = sub_6AE7C().super.isa;
    v36 = [v34 initWithConditionType:a1 requestId:isa joined:1];

    v37 = *(v4 + 32);
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_51118;
    aBlock[3] = &unk_7F4B8;
    v38 = _Block_copy(aBlock);
    [v37 createTag:v36 completion:v38];
    _Block_release(v38);

    (*(v13 + 8))(v16, v12);
  }
}

void sub_51118(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_51190(char *a1, uint64_t a2, unint64_t a3)
{
  v131 = a3;
  v130 = a2;
  v135 = a1;
  v3 = sub_5708(&qword_814F0, &qword_71350);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v129 = &v122 - v5;
  v6 = sub_6CD0C();
  v133 = *(v6 - 8);
  v134 = v6;
  v7 = *(v133 + 64);
  __chkstk_darwin(v6);
  v132 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6CD2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v122 - v15;
  v17 = sub_6C35C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_6C4EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v124 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v128 = &v122 - v28;
  v29 = __chkstk_darwin(v27);
  v125 = &v122 - v30;
  v31 = __chkstk_darwin(v29);
  v127 = &v122 - v32;
  v33 = __chkstk_darwin(v31);
  v126 = &v122 - v34;
  __chkstk_darwin(v33);
  v36 = &v122 - v35;
  (*(v18 + 16))(v21, v135, v17);
  if ((*(v18 + 88))(v21, v17) != enum case for MessagePayload.systemResponse(_:))
  {
    return (*(v18 + 8))(v21, v17);
  }

  (*(v18 + 96))(v21, v17);
  (*(v23 + 32))(v36, v21, v22);
  sub_4458(v36, v16);
  (*(v10 + 16))(v14, v16, v9);
  v37 = (*(v10 + 88))(v14, v9);
  v38 = v10;
  if (v37 == enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
  {
    (*(v10 + 96))(v14, v9);
    (*(v133 + 32))(v132, v14, v134);
    v39 = v129;
    sub_6CCFC();
    v40 = sub_6CD3C();
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    sub_5E20(v39, &qword_814F0, &qword_71350);
    v122 = v38;
    v123 = v16;
    if (v41 == 1)
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v42 = sub_6D04C();
      sub_5CE4(v42, qword_839A0);
      v43 = v127;
      (*(v23 + 16))(v127, v36, v22);
      v44 = sub_6D03C();
      v45 = v23;
      v46 = sub_6D45C();
      if (os_log_type_enabled(v44, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v129 = v9;
        v49 = v36;
        v50 = v48;
        v136 = v48;
        *v47 = 136315138;
        v51 = sub_4B728();
        v52 = v43;
        v53 = v22;
        v55 = v54;
        v56 = *(v45 + 8);
        v56(v52, v53);
        v57 = sub_1076C(v51, v55, &v136);
        v22 = v53;

        *(v47 + 4) = v57;
        _os_log_impl(&dword_0, v44, v46, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is not a Montara use-case but tagging it with PQA to ensure redaction", v47, 0xCu);
        sub_9964(v50);
        v36 = v49;
        v9 = v129;
      }

      else
      {

        v56 = *(v45 + 8);
        v56(v43, v22);
      }

      v104 = 10;
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v73 = sub_6D04C();
      sub_5CE4(v73, qword_839A0);
      v74 = *(v23 + 16);
      v75 = v126;
      v135 = v36;
      v74(v126, v36, v22);
      v76 = sub_6D03C();
      v77 = sub_6D45C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v23;
        v79 = swift_slowAlloc();
        v80 = v22;
        v81 = swift_slowAlloc();
        v136 = v81;
        *v79 = 136315138;
        v82 = sub_4B728();
        v83 = v75;
        v84 = v9;
        v86 = v85;
        v56 = *(v78 + 8);
        v56(v83, v80);
        v87 = sub_1076C(v82, v86, &v136);
        v9 = v84;

        *(v79 + 4) = v87;
        _os_log_impl(&dword_0, v76, v77, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is a Montara use-case", v79, 0xCu);
        sub_9964(v81);
        v22 = v80;
      }

      else
      {

        v56 = *(v23 + 8);
        v56(v75, v22);
      }

      v104 = 9;
      v36 = v135;
    }

    sub_50C28(v104, v130, v131);
    (*(v133 + 8))(v132, v134);
    (*(v122 + 8))(v123, v9);
    return (v56)(v36, v22);
  }

  v59 = v128;
  if (v37 == enum case for RequestSummary.ExecutionSource.siriX(_:))
  {
    goto LABEL_10;
  }

  if (v37 == enum case for RequestSummary.ExecutionSource.searchTool(_:))
  {
    v123 = v16;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v122 = v38;
    v129 = v9;
    v88 = sub_6D04C();
    sub_5CE4(v88, qword_839A0);
    v89 = *(v23 + 16);
    v90 = v125;
    v135 = v36;
    v89(v125, v36, v22);
    v91 = sub_6D03C();
    v92 = v23;
    v93 = sub_6D45C();
    if (os_log_type_enabled(v91, v93))
    {
      v94 = v22;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v136 = v96;
      *v95 = 136315138;
      v97 = sub_4B728();
      v98 = v90;
      v100 = v99;
      v101 = *(v92 + 8);
      v101(v98, v94);
      v102 = sub_1076C(v97, v100, &v136);

      *(v95 + 4) = v102;
      _os_log_impl(&dword_0, v91, v93, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is a PQA use-case", v95, 0xCu);
      sub_9964(v96);

      v22 = v94;
    }

    else
    {

      v101 = *(v92 + 8);
      v101(v90, v22);
    }

    sub_50C28(10, v130, v131);
    (*(v122 + 8))(v123, v129);
    return (v101)(v135, v22);
  }

  else
  {
    if (v37 == enum case for RequestSummary.ExecutionSource.unknown(_:))
    {
LABEL_10:
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v60 = sub_6D04C();
      sub_5CE4(v60, qword_839A0);
      (*(v23 + 16))(v59, v36, v22);
      v61 = sub_6D03C();
      v62 = v36;
      v63 = sub_6D45C();
      if (os_log_type_enabled(v61, v63))
      {
        v64 = swift_slowAlloc();
        v135 = v62;
        v65 = v59;
        v66 = v64;
        v67 = v22;
        v68 = swift_slowAlloc();
        v136 = v68;
        *v66 = 136315138;
        v134 = sub_4B728();
        v129 = v9;
        v70 = v69;
        v123 = v16;
        v71 = *(v23 + 8);
        v71(v65, v67);
        v72 = sub_1076C(v134, v70, &v136);

        *(v66 + 4) = v72;
        _os_log_impl(&dword_0, v61, v63, "[IFFlowInstrumentationUtil] Not attempting to apply redaction tag for inferred toolId = %s", v66, 0xCu);
        sub_9964(v68);

        (*(v38 + 8))(v123, v129);
        return (v71)(v135, v67);
      }

      else
      {

        v103 = *(v23 + 8);
        v103(v59, v22);
        (*(v38 + 8))(v16, v9);
        return (v103)(v62, v22);
      }
    }

    v134 = v14;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v129 = v9;
    v122 = v38;
    v123 = v16;
    v105 = sub_6D04C();
    sub_5CE4(v105, qword_839A0);
    v106 = v124;
    (*(v23 + 16))(v124, v36, v22);
    v107 = sub_6D03C();
    v108 = v23;
    v109 = sub_6D45C();
    if (os_log_type_enabled(v107, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v135 = v36;
      v136 = v111;
      v112 = v111;
      *v110 = 136315138;
      v113 = sub_4B728();
      v114 = v106;
      v115 = v22;
      v117 = v116;
      v118 = *(v108 + 8);
      v118(v114, v115);
      v119 = sub_1076C(v113, v117, &v136);
      v22 = v115;

      *(v110 + 4) = v119;
      _os_log_impl(&dword_0, v107, v109, "[IFFlowInstrumentationUtil] Attempting to apply redaction tag for inferred toolId = %s which is an unknown use-case but tagging it with PQA to ensure redaction", v110, 0xCu);
      sub_9964(v112);
      v36 = v135;
    }

    else
    {

      v118 = *(v108 + 8);
      v118(v106, v22);
    }

    sub_50C28(10, v130, v131);
    v120 = *(v122 + 8);
    v121 = v129;
    v120(v123, v129);
    v118(v36, v22);
    return (v120)(v134, v121);
  }
}

uint64_t sub_52014()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_52080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  v6 = sub_6D03C();
  v7 = sub_6D44C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v37);
    _os_log_impl(&dword_0, v6, v7, "[IFFlowInstrumentationUtil] Logging Request started in %s", v9, 0xCu);
    sub_9964(v10);

    v3 = v8;
  }

  if (!a2 || (v11 = *(v3 + 24), (v12 = sub_6CF0C()) == 0))
  {
    v36 = sub_6D03C();
    v22 = sub_6D46C();
    if (os_log_type_enabled(v36, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v37);
      _os_log_impl(&dword_0, v36, v22, "[IFFlowInstrumentationUtil] The plannerTraceId is nil or not a valid UUID, stopping %s", v23, 0xCu);
      sub_9964(v24);

LABEL_25:

      return;
    }

LABEL_29:
    v21 = v36;
    goto LABEL_30;
  }

  v36 = v12;
  v13 = sub_6CF0C();
  if (!v13)
  {
    v14 = sub_6D03C();
    v25 = sub_6D46C();
    if (os_log_type_enabled(v14, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v37);
      _os_log_impl(&dword_0, v14, v25, "[IFFlowInstrumentationUtil] The requestId is not a valid UUID, stop %s", v26, 0xCu);
      sub_9964(v27);

LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v14 = v13;
  v15 = sub_6CEFC();
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 eventMetadata];
  if (!v17)
  {

LABEL_18:
    v28 = sub_6D03C();
    v29 = sub_6D46C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v37);
      _os_log_impl(&dword_0, v28, v29, "[IFFlowInstrumentationUtil] Could not build wrapper or eventMetadata in %s", v30, 0xCu);
      sub_9964(v31);

LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v18 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestStarted) init];
  if (!v18)
  {
LABEL_21:
    v28 = sub_6D03C();
    v32 = sub_6D46C();
    if (os_log_type_enabled(v28, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1076C(0xD000000000000050, 0x800000000006F530, &v37);
      _os_log_impl(&dword_0, v28, v32, "[IFFlowInstrumentationUtil] Could not create schema events in %s. This should never occur", v33, 0xCu);
      sub_9964(v34);

      goto LABEL_23;
    }

LABEL_27:
LABEL_28:

    goto LABEL_29;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(ORCHSchemaORCHIntelligenceFlowRequestContext) init];
  if (!v20)
  {

    goto LABEL_21;
  }

  v35 = v20;
  [v19 setExists:1];
  [v35 setStartedOrChanged:v19];
  [v35 setTraceId:v36];
  [v35 setSubRequestId:v14];
  [v16 setIntelligenceFlowRequestContext:v35];
  [*(v3 + 16) emitMessage:v16];

  v21 = v35;
LABEL_30:
}

uint64_t sub_526CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_526E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81E48, &qword_70E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_52754()
{
  result = qword_82040;
  if (!qword_82040)
  {
    sub_6BF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82040);
  }

  return result;
}

uint64_t sub_527AC()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = sub_6D2BC();
    v3 = [v1 initWithSuiteName:v2];

    if (v3)
    {
      v4 = sub_6D2BC();
      v5 = [v3 objectForKey:v4];

      if (v5)
      {
        sub_6D51C();
        swift_unknownObjectRelease();
        sub_5E20(v8, &qword_819D8, &qword_70768);
        v6 = sub_6D2BC();
        v7 = [v3 BOOLForKey:v6];

        return v7;
      }

      else
      {

        memset(v8, 0, sizeof(v8));
        sub_5E20(v8, &qword_819D8, &qword_70768);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_52924(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_6C83C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_529E4, 0, 0);
}

uint64_t sub_529E4()
{
  v46 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v14 = sub_6D04C();
    sub_5CE4(v14, qword_839A0);
    v15 = sub_6D03C();
    v16 = sub_6D45C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "IFFlow scope has ended, no IF server messages are passed thru", v17, 2u);
    }

    goto LABEL_22;
  }

  v3 = Strong;
  sub_5708(&qword_816B8, &qword_70210);
  v4 = swift_task_alloc();
  v5 = sub_6CFFC();
  *v4 = v5;
  v6 = sub_5471C(&qword_82128, 255, &type metadata accessor for IFSessionServiceClient);
  v4[1] = v6;
  swift_getKeyPath();

  v7 = swift_task_alloc();
  *v7 = v5;
  v7[1] = v6;
  swift_getKeyPath();

  v0[6] = v3;

  sub_6BC7C();

  v8 = v0[5];
  v9 = sub_6CDBC();
  v11 = v10;

  if (v11)
  {
    v12 = v0[7];
    if (sub_6C7FC() == v9 && v11 == v13)
    {

LABEL_15:

      v22 = 1;
      goto LABEL_24;
    }

    v21 = sub_6D63C();

    if (v21)
    {
      goto LABEL_15;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    v26 = v0[7];
    v27 = sub_6D04C();
    sub_5CE4(v27, qword_839A0);
    (*(v24 + 16))(v23, v26, v25);

    v28 = sub_6D03C();
    v29 = sub_6D45C();

    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[9];
    if (!v30)
    {

      (*(v32 + 8))(v31, v33);
      goto LABEL_23;
    }

    v44 = v29;
    v34 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = sub_6C7FC();
    log = v28;
    v37 = v36;
    (*(v32 + 8))(v31, v33);
    v38 = sub_1076C(v35, v37, &v45);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = sub_1076C(v9, v11, &v45);

    *(v34 + 14) = v39;
    v15 = log;
    _os_log_impl(&dword_0, log, v44, "IFFlow received a message with foreign clientRequestId of %s. IntelligenceFlowTraceId: %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v18 = sub_6D04C();
    sub_5CE4(v18, qword_839A0);
    v15 = sub_6D03C();
    v19 = sub_6D45C();
    if (!os_log_type_enabled(v15, v19))
    {
      goto LABEL_21;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v15, v19, "IFFlow does not have intelligenceFlowTraceId, waiting for another message", v20, 2u);
  }

LABEL_21:

LABEL_22:

LABEL_23:
  v22 = 0;
LABEL_24:
  v40 = v0[11];

  v41 = v0[1];

  return v41(v22);
}

uint64_t sub_52F58@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v135 = a2;
  v124 = sub_6B60C();
  v123 = *(v124 - 8);
  v3 = *(v123 + 64);
  v4 = __chkstk_darwin(v124);
  v122 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v129 = &v122 - v6;
  v132 = sub_6B7EC();
  v131 = *(v132 - 8);
  v7 = *(v131 + 64);
  v8 = __chkstk_darwin(v132);
  v128 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v130 = &v122 - v11;
  __chkstk_darwin(v10);
  v133 = &v122 - v12;
  v127 = sub_6C9FC();
  v126 = *(v127 - 8);
  v13 = *(v126 + 64);
  __chkstk_darwin(v127);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6B3DC();
  v125 = *(v16 - 8);
  v17 = *(v125 + 64);
  __chkstk_darwin(v16);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6B7FC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[16];
  sub_99FC(v2 + 12, v2[15]);
  if (sub_6CEDC() & 1) != 0 && (v26 = v2[16], sub_99FC(v2 + 12, v2[15]), (sub_6CECC()))
  {
    v27 = v2;
    (*(v21 + 16))(v24, v134, v20);
    v28 = (*(v21 + 88))(v24, v20);
    if (v28 == enum case for Parse.directInvocation(_:))
    {
      (*(v21 + 96))(v24, v20);
      v29 = v131;
      v30 = v133;
      v31 = v132;
      (*(v131 + 32))(v133, v24, v132);
      v32 = *(v29 + 16);
      v33 = v130;
      v32(v130, v30, v31);
      v34 = sub_54430(v33);
      if (v34 == 2)
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v35 = sub_6D04C();
        sub_5CE4(v35, qword_839A0);
        v36 = v128;
        v32(v128, v30, v31);
        v37 = sub_6D03C();
        v38 = sub_6D45C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v141 = v40;
          *v39 = 136315138;
          v32(v33, v36, v31);
          v41 = sub_6D2EC();
          v43 = v42;
          v44 = *(v29 + 8);
          v44(v36, v31);
          v45 = sub_1076C(v41, v43, &v141);

          *(v39 + 4) = v45;
          _os_log_impl(&dword_0, v37, v38, "IFFlowPlugin does not support direct invocation %s. Returning .noFlow.", v39, 0xCu);
          sub_9964(v40);
          v30 = v133;
        }

        else
        {

          v44 = *(v29 + 8);
          v44(v36, v31);
        }

        sub_6B18C();
        return (v44)(v30, v31);
      }

      v54 = v34;
      (*(v29 + 8))(v30, v31);
      goto LABEL_19;
    }

    if (v28 == enum case for Parse.nlRouter(_:))
    {
      (*(v21 + 96))(v24, v20);
      v51 = v125;
      (*(v125 + 32))(v19, v24, v16);
      sub_6B3BC();
      (*(v51 + 8))(v19, v16);
      v52 = v126;
      v53 = v127;
      v54 = (*(v126 + 88))(v15, v127) == enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:);
      (*(v52 + 8))(v15, v53);
LABEL_19:
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v55 = sub_6D04C();
      sub_5CE4(v55, qword_839A0);
      v56 = sub_6D03C();
      v57 = sub_6D45C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v141 = v59;
        *v58 = 136315138;
        LOBYTE(v140[0]) = v54;
        v60 = sub_6D2EC();
        v62 = sub_1076C(v60, v61, &v141);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_0, v56, v57, "IFFlowPlugin building IFFlow with routing mode %s", v58, 0xCu);
        sub_9964(v59);
      }

      v63 = sub_6CFFC();
      v64 = sub_6CFEC();
      v134 = v63;
      sub_9878((v27 + 7), &v141);
      sub_9878((v27 + 2), v140);
      type metadata accessor for IFFlowInstrumentationUtil();
      v65 = swift_allocObject();
      v66 = objc_opt_self();
      v65[2] = [v66 sharedStream];
      v67 = sub_6CF2C();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      v65[3] = sub_6CF1C();
      v65[4] = [v66 sharedAnalytics];
      v70 = sub_6B53C();
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_6B52C();
      v139[3] = v70;
      v139[4] = &protocol witness table for ResponseFactory;
      v139[0] = v73;
      v74 = [BiomeLibrary() Siri];
      swift_unknownObjectRelease();
      v75 = [v74 Orchestration];
      swift_unknownObjectRelease();
      v76 = [v75 RequestContext];
      swift_unknownObjectRelease();
      v77 = [v76 source];

      v138[3] = &type metadata for FeatureEnablementProvider;
      v138[4] = &off_7F140;
      v78 = sub_527AC();
      v79 = sub_5708(&qword_82110, &qword_710E0);
      v80 = *(v79 + 48);
      v81 = *(v79 + 52);
      v133 = v79;
      v82 = swift_allocObject();
      v137 = v64;
      *(v82 + 200) = 0;
      *(v82 + 208) = 0;
      swift_getKeyPath();
      v83 = sub_5708(&qword_816B8, &qword_70210);
      v84 = *(v83 + 48);
      v85 = *(v83 + 52);
      swift_allocObject();

      *(v82 + 216) = sub_6BC8C();
      swift_getKeyPath();
      v86 = sub_5708(&qword_81D70, &qword_70D50);
      v87 = *(v86 + 48);
      v88 = *(v86 + 52);
      swift_allocObject();
      *(v82 + 224) = sub_6BC8C();
      *(v82 + 240) = 0;
      v89 = *(*v82 + 200);
      v90 = sub_5708(&qword_82118, &qword_71118);
      (*(*(v90 - 8) + 56))(v82 + v89, 1, 1, v90);
      v91 = *(*v82 + 208);
      sub_5708(&qword_82120, &qword_71120);
      swift_storeEnumTagMultiPayload();
      *(v82 + 232) = v64;
      *(v82 + 192) = v54;
      sub_9878(&v141, v82 + 16);
      sub_9878(v140, v82 + 56);
      sub_9878(v139, v82 + 96);
      *(v82 + 136) = v77;
      *(v82 + 144) = v65;
      sub_9878(v138, v82 + 152);
      v92 = v78 & 1;
      *(v82 + 193) = v92;

      v93 = v77;
      v94 = sub_6D03C();
      v95 = sub_6D45C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 67109120;
        *(v96 + 4) = v92;
        _os_log_impl(&dword_0, v94, v95, "IFFlow is created with diagnostic errors visibility set to %{BOOL}d", v96, 8u);
      }

      swift_allocObject();
      swift_weakInit();
      sub_5471C(&qword_82128, 255, &type metadata accessor for IFSessionServiceClient);

      sub_6CF5C();

      sub_9964(v140);
      sub_9964(&v141);
      sub_9964(v138);
      sub_9964(v139);

      v121 = *(v82 + 240);
      *(v82 + 240) = v136;

      *&v141 = v82;
      sub_54764();
      sub_6B13C();
      sub_6B19C();
    }

    if (v28 == enum case for Parse.ifClientAction(_:))
    {
      (*(v21 + 96))(v24, v20);
      v97 = v123;
      v98 = v129;
      v99 = v124;
      v134 = *(v123 + 32);
      v134(v129, v24, v124);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v100 = sub_6D04C();
      sub_5CE4(v100, qword_839A0);
      v101 = sub_6D03C();
      v102 = sub_6D45C();
      v103 = os_log_type_enabled(v101, v102);
      v104 = v122;
      if (v103)
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v101, v102, "IFFlowPlugin returning ClientActionRoutingFlow", v105, 2u);
      }

      (*(v97 + 16))(v104, v98, v99);
      sub_9878((v27 + 7), &v141);
      sub_9878((v27 + 2), v140);
      v106 = v97;
      if (qword_812B0 != -1)
      {
        swift_once();
      }

      v107 = qword_839C8;
      v108 = type metadata accessor for IFClientActionRoutingFlow();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      v111 = swift_allocObject();
      v112 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow__currentRequest;
      swift_getKeyPath();
      v113 = sub_5708(&qword_816B8, &qword_70210);
      v114 = *(v113 + 48);
      v115 = *(v113 + 52);
      swift_allocObject();

      *(v111 + v112) = sub_6BC8C();
      v134((v111 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse), v104, v99);
      sub_1FD68(&v141, v111 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState);
      sub_1FD68(v140, v111 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher);
      *(v111 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_instrumentationUtil) = v107;
      v116 = (v111 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator);
      *v116 = &unk_70270;
      v116[1] = 0;
      *(v111 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = 0;
      *&v141 = v111;
      sub_5471C(&qword_81D98, 255, type metadata accessor for IFClientActionRoutingFlow);
      sub_6B13C();
      sub_6B19C();

      return (*(v106 + 8))(v129, v99);
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v117 = sub_6D04C();
      sub_5CE4(v117, qword_839A0);
      v118 = sub_6D03C();
      v119 = sub_6D45C();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_0, v118, v119, "IFFlowPlugin returning .noFlow", v120, 2u);
      }

      sub_6B18C();
      return (*(v21 + 8))(v24, v20);
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v46 = sub_6D04C();
    sub_5CE4(v46, qword_839A0);
    v47 = sub_6D03C();
    v48 = sub_6D46C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "IFFlowPlugin was invoked on a device/locale where it is not supported/enabled.", v49, 2u);
    }

    return sub_6B18C();
  }
}

uint64_t sub_542BC()
{
  sub_9964(v0 + 2);
  sub_9964(v0 + 7);
  sub_9964(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_5434C@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  sub_6B66C();
  sub_6B80C();
  v3 = sub_6CEBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_6CEAC();
  v2[15] = v3;
  v2[16] = &protocol witness table for FeatureChecker;
  v2[12] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_54430(uint64_t a1)
{
  v3 = sub_6B7CC();
  v4 = v2;
  if (v3 == 0xD00000000000001FLL && 0x800000000006DF40 == v2 || (sub_6D63C() & 1) != 0 || v3 == 0xD000000000000035 && 0x800000000006DF60 == v4 || (sub_6D63C() & 1) != 0)
  {
    v5 = sub_6B7EC();
    (*(*(v5 - 8) + 8))(a1, v5);

    return 1;
  }

  if (v3 == 0xD00000000000001FLL && 0x800000000006DFA0 == v4)
  {

    v7 = sub_6B7EC();
    (*(*(v7 - 8) + 8))(a1, v7);
    return 1;
  }

  v8 = sub_6D63C();

  v9 = sub_6B7EC();
  (*(*(v9 - 8) + 8))(a1, v9);
  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_545F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_6BC5C();
  *a2 = result;
  return result;
}

uint64_t sub_54620(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_6BC6C();
}

uint64_t sub_5464C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_54684(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_102E0;

  return sub_52924(a1, v1);
}

uint64_t sub_5471C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_54764()
{
  result = qword_82130;
  if (!qword_82130)
  {
    sub_29F8(&qword_82110, &qword_710E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_82130);
  }

  return result;
}

__n128 sub_547D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_547E4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_6D1EC();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_27ED4(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_27ED4(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    v11[2] = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_549B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t **a5@<X8>)
{
  v187 = a4;
  v190 = a3;
  v184 = a2;
  v203 = a5;
  v196 = *v5;
  v171 = sub_6C4EC();
  v7 = *(v171 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v171);
  v166 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v169 = &v164 - v11;
  v191 = sub_6C35C();
  v189 = *(v191 - 8);
  v12 = *(v189 + 64);
  v13 = __chkstk_darwin(v191);
  v167 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v172 = &v164 - v16;
  __chkstk_darwin(v15);
  v188 = &v164 - v17;
  v18 = sub_5708(&qword_81770, &unk_70F70);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v183 = &v164 - v20;
  v178 = sub_6BEEC();
  v177 = *(v178 - 8);
  v21 = *(v177 + 64);
  __chkstk_darwin(v178);
  v182 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_6C86C();
  v173 = *(v174 - 8);
  v23 = *(v173 + 64);
  __chkstk_darwin(v174);
  v181 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_6AE9C();
  v25 = *(v197 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v197);
  v185 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_5708(&unk_82030, &qword_70370);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v175 = &v164 - v30;
  v180 = sub_6C89C();
  v179 = *(v180 - 8);
  v31 = *(v179 + 64);
  __chkstk_darwin(v180);
  v176 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_6C33C();
  v186 = *(v198 - 8);
  v33 = *(v186 + 64);
  v34 = __chkstk_darwin(v198);
  v168 = &v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v193 = &v164 - v36;
  v37 = sub_6D1EC();
  v200 = *(v37 - 8);
  v201 = v37;
  v38 = *(v200 + 64);
  __chkstk_darwin(v37);
  v199 = &v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_6D20C();
  v194 = *(v40 - 8);
  v195 = v40;
  v41 = *(v194 + 64);
  v42 = __chkstk_darwin(v40);
  v192 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v202 = (&v164 - v44);
  v45 = sub_5708(&qword_821D8, &qword_71260);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v50 = &v164 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v52 = &v164 - v51;
  v53 = *(v46 + 16);
  v53(&v164 - v51, a1, v45);
  v54 = (*(v46 + 88))(v52, v45);
  if (v54 == enum case for PromptResult.answered<A>(_:))
  {
    v170 = v25;
    v165 = v7;
    (*(v46 + 96))(v52, v45);
    v55 = *v52;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v56 = sub_6D04C();
    sub_5CE4(v56, qword_839A0);
    v57 = sub_6D03C();
    v58 = sub_6D45C();
    v59 = os_log_type_enabled(v57, v58);
    v61 = v200;
    v60 = v201;
    v62 = v199;
    if (v59)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v57, v58, "IFFlow prompt for image picker returning with answer. Returning to IF", v63, 2u);
    }

    v64 = swift_allocObject();
    v64[2] = 0xD000000000000019;
    v64[3] = 0x800000000006F8A0;
    v64[4] = 0x746E457465737341;
    v64[5] = 0xEB00000000797469;
    v65 = v202;
    *v202 = v64;
    v67 = v194;
    v66 = v195;
    (*(v194 + 104))(v65, enum case for TypeIdentifier.custom(_:), v195);
    (*(v67 + 16))(v192, v65, v66);
    v68 = *(v55 + 2);
    if (v68)
    {
      v208 = &_swiftEmptyArrayStorage;
      sub_27D80(0, v68, 0);
      v69 = v208;
      v70 = sub_1FE68();
      v168 = v55;
      v71 = (v55 + 40);
      do
      {
        v72 = *v71;
        v209 = *(v71 - 1);
        v210 = v72;
        v206 = 0x3130302F304C2FLL;
        v207 = 0xE700000000000000;
        v204 = 0;
        v205 = 0xE000000000000000;
        v162 = v70;
        v163 = v70;
        v161[0] = &type metadata for String;
        v161[1] = v70;
        v73 = sub_6D4EC();
        v75 = v74;
        v208 = v69;
        v77 = v69[2];
        v76 = v69[3];
        if (v77 >= v76 >> 1)
        {
          sub_27D80((v76 > 1), v77 + 1, 1);
          v69 = v208;
        }

        v69[2] = v77 + 1;
        v78 = &v69[2 * v77];
        v78[4] = v73;
        v78[5] = v75;
        v71 += 2;
        --v68;
      }

      while (v68);

      v61 = v200;
      v60 = v201;
      v62 = v199;
    }

    else
    {

      v69 = &_swiftEmptyArrayStorage;
    }

    sub_6D15C();
    v95 = swift_allocBox();
    __chkstk_darwin(v95);
    v162 = v202;
    sub_547E4(sub_56E84, v161, v69);

    sub_6D13C();
    *v62 = v95;
    (*(v61 + 104))(v62, enum case for TypedValue.collection(_:), v60);
    v96 = v61;
    v97 = v170;
    (*(v170 + 56))(v175, 1, 1, v197);
    v98 = v62;
    v99 = v185;
    sub_6C80C();
    v100 = v181;
    (*(v96 + 16))(v181, v98, v60);
    (*(v173 + 104))(v100, enum case for SystemPromptResolution.UserAction.parameterValueSelected(_:), v174);
    (*(v177 + 16))(v182, v184, v178);
    v101 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
    v102 = sub_6C85C();
    v103 = *(v102 - 8);
    v104 = v183;
    (*(v103 + 104))(v183, v101, v102);
    (*(v103 + 56))(v104, 0, 1, v102);
    v105 = v176;
    sub_6C87C();
    v106 = v193;
    sub_A17C(v105, v187);
    (*(v179 + 8))(v105, v180);
    v192 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v107 = v186;
    v108 = v188;
    (*(v186 + 16))(v188, v106, v198);
    v109 = v189;
    v110 = v191;
    (*(v189 + 104))(v108, enum case for MessagePayload.request(_:), v191);
    sub_30BF8(v99, v108);
    v111 = *(v109 + 8);
    v111(v108, v110);
    (*(v97 + 8))(v99, v197);
    v112 = v172;
    sub_6C81C();
    if ((*(v109 + 88))(v112, v110) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v109 + 96))(v112, v110);
      v113 = v165;
      v114 = v169;
      v115 = v171;
      (*(v165 + 32))(v169, v112, v171);
      v116 = v203;
      v117 = v192;
      sub_4458(v114, &v192[v203]);
      (*(v113 + 8))(v114, v115);
      (*(v107 + 8))(v193, v198);
      (*(v200 + 8))(v199, v201);
      v118 = 0;
      v119 = v196;
      v120 = v116;
      v121 = v117;
    }

    else
    {
      (*(v107 + 8))(v193, v198);
      (*(v200 + 8))(v199, v201);
      v111(v112, v110);
      v118 = 1;
      v119 = v196;
      v120 = v203;
      v121 = v192;
    }

    v122 = sub_6CD2C();
    (*(*(v122 - 8) + 56))(&v121[v120], v118, 1, v122);
    v123 = *(v119 + 80);
    v124 = *(v119 + 88);
    type metadata accessor for IFFlow.State();
    swift_storeEnumTagMultiPayload();
    return (*(v194 + 8))(v202, v195);
  }

  else if (v54 == enum case for PromptResult.error<A>(_:))
  {
    (*(v46 + 96))(v52, v45);
    v79 = *v52;
    v80 = v52[8];
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v81 = sub_6D04C();
    sub_5CE4(v81, qword_839A0);
    swift_errorRetain();
    v82 = sub_6D03C();
    v83 = sub_6D46C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      swift_errorRetain();
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v86;
      *v85 = v86;
      _os_log_impl(&dword_0, v82, v83, "Error occurred during PromptForPhotoPicker with error %@", v84, 0xCu);
      sub_56DDC(v85);
    }

    v87 = v203;
    *v203 = v79;
    *(v87 + 8) = v80;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v88 = *(v196 + 80);
    v89 = *(v196 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  else if (v54 == enum case for PromptResult.cancelled<A>(_:) || v54 == enum case for PromptResult.unanswered<A>(_:))
  {
    v165 = v7;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v125 = sub_6D04C();
    sub_5CE4(v125, qword_839A0);
    v53(v50, a1, v45);
    v126 = sub_6D03C();
    v127 = sub_6D45C();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v209 = v129;
      *v128 = 136315138;
      sub_56B78();
      v130 = sub_6D61C();
      v131 = v25;
      v133 = v132;
      (*(v46 + 8))(v50, v45);
      v134 = sub_1076C(v130, v133, &v209);
      v25 = v131;

      *(v128 + 4) = v134;
      _os_log_impl(&dword_0, v126, v127, "Received %s during PromptForPhotoPicker, returning actionCanceled to IF", v128, 0xCu);
      sub_9964(v129);
    }

    else
    {

      (*(v46 + 8))(v50, v45);
    }

    v135 = v198;
    v170 = v25;
    (*(v25 + 56))(v175, 1, 1, v197);
    v136 = v185;
    sub_6C80C();
    v137 = v181;
    sub_6C88C();
    (*(v173 + 104))(v137, enum case for SystemPromptResolution.UserAction.actionCanceled(_:), v174);
    (*(v177 + 16))(v182, v184, v178);
    v138 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
    v139 = sub_6C85C();
    v140 = *(v139 - 8);
    v141 = v183;
    (*(v140 + 104))(v183, v138, v139);
    (*(v140 + 56))(v141, 0, 1, v139);
    v142 = v176;
    sub_6C87C();
    v143 = v168;
    sub_A17C(v142, v187);
    (*(v179 + 8))(v142, v180);
    v202 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v144 = v186;
    v145 = v188;
    (*(v186 + 16))(v188, v143, v135);
    v146 = v189;
    v147 = v191;
    (*(v189 + 104))(v145, enum case for MessagePayload.request(_:), v191);
    v148 = v203;
    sub_30BF8(v136, v145);
    v149 = *(v146 + 8);
    v149(v145, v147);
    (*(v170 + 8))(v136, v197);
    v150 = v167;
    sub_6C81C();
    if ((*(v146 + 88))(v150, v147) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v146 + 96))(v150, v147);
      v151 = v165;
      v152 = v166;
      v153 = v171;
      (*(v165 + 32))(v166, v150, v171);
      v154 = v202;
      sub_4458(v152, v202 + v148);
      (*(v151 + 8))(v152, v153);
      (*(v144 + 8))(v168, v198);
      v155 = 0;
      v156 = v196;
      v157 = v154;
    }

    else
    {
      (*(v144 + 8))(v168, v198);
      v149(v150, v147);
      v155 = 1;
      v156 = v196;
      v157 = v202;
    }

    v158 = sub_6CD2C();
    (*(*(v158 - 8) + 56))(&v157[v148], v155, 1, v158);
    v159 = *(v156 + 80);
    v160 = *(v156 + 88);
    type metadata accessor for IFFlow.State();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v209 = 0;
    v210 = 0xE000000000000000;
    sub_6D57C(63);
    v211._countAndFlagsBits = 0xD000000000000021;
    v211._object = 0x800000000006EDA0;
    sub_6D33C(v211);
    sub_56B78();
    v212._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v212);

    v213._countAndFlagsBits = 0xD00000000000001CLL;
    v213._object = 0x800000000006F880;
    sub_6D33C(v213);
    v91 = v210;
    v92 = v203;
    *v203 = v209;
    v92[1] = v91;
    type metadata accessor for IFFlowError();
    swift_storeEnumTagMultiPayload();
    v93 = *(v196 + 80);
    v94 = *(v196 + 88);
    type metadata accessor for IFFlow.State();
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 8))(v52, v45);
  }
}