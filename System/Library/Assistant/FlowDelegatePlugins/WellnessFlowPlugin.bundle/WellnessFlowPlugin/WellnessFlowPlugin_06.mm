unint64_t sub_8D1C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v130 = a4;
  v131 = a2;
  v132 = a3;
  v133 = a5;
  v7 = sub_16D63C();
  v8 = sub_4348(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_4304();
  v129[1] = v12 - v11;
  v134 = sub_16DBEC();
  v13 = sub_42F0(v134);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v20 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v129 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v129 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v129 - v28;
  __chkstk_darwin(v27);
  sub_76B1C();
  v31 = __chkstk_darwin(v30);
  v33 = v129 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = v129 - v35;
  __chkstk_darwin(v34);
  v38 = v129 - v37;
  sub_8E5BC(a1, &v136);
  v39 = v136;
  switch(v141)
  {
    case 1:
      v77 = sub_16DBBC();
      sub_8B48();
      sub_92FE8();
      v78 = v134;
      v79(v5, v77, v134);
      v80 = sub_16DBDC();
      v81 = sub_16E36C();
      if (sub_38670(v81))
      {
        v82 = sub_1BA38();
        *v82 = 0;
        _os_log_impl(&def_259DC, v80, v33, "Meds checks passed, getting flow.", v82, 2u);
        sub_92FCC();
      }

      (*(v15 + 8))(v5, v78);
      v83 = sub_90F80(v39, v131, v132);
      v84 = sub_16C28C();
      v85 = v133;
      v133[3] = v84;
      v85[4] = &protocol witness table for AnyFlow;

      *v85 = v83;
      break;
    case 2:
      sub_93130();
      sub_92FAC();
      sub_92FE8();
      sub_930B4();
      v59();
      v60 = sub_16DBDC();
      v61 = sub_16E36C();
      if (sub_387B0(v61))
      {
        v62 = sub_1BA38();
        sub_1BA50(v62);
        sub_4593C(&def_259DC, v63, v64, "Parse has moodLogging identifier, returning MoodLoggingPunchoutFlow.");
        sub_1BA00();
      }

      (*(v15 + 8))(v29, v20);
      sub_930C4(&type metadata for MoodPunchoutFlow);
      *(v29 + 4) = sub_9218C();
      sub_93118();
      v65 = swift_allocObject();
      v66 = sub_930D0(v65);
      sub_8388(v130, v66 + 56);
      sub_8284(v132, v60 + 96);
      sub_8388(v131, v60 + 256);
      result = sub_17464(v135, v60 + 16);
      break;
    case 3:
      sub_93130();
      sub_92FAC();
      sub_92FE8();
      sub_930B4();
      v67();
      v68 = sub_16DBDC();
      v69 = sub_16E36C();
      if (sub_387B0(v69))
      {
        v70 = sub_1BA38();
        sub_1BA50(v70);
        sub_4593C(&def_259DC, v71, v72, "Healthkit-related utterance, getting flow.");
        sub_1BA00();
      }

      (*(v15 + 8))(v26, v20);
      v73 = sub_2D20(v130, v130[3]);
      v74 = sub_915E4(v135, v131, *v73, v73[1], v73[2], v73[3], v132);
      v75 = sub_16C28C();
      v76 = v133;
      v133[3] = v75;
      v76[4] = &protocol witness table for AnyFlow;
      *v76 = v74;
      goto LABEL_14;
    case 4:
      sub_93130();
      sub_92FAC();
      sub_92FE8();
      sub_930B4();
      v52();
      v53 = sub_16DBDC();
      v54 = sub_16E36C();
      if (sub_387B0(v54))
      {
        v55 = sub_1BA38();
        sub_1BA50(v55);
        sub_4593C(&def_259DC, v56, v57, "Executing Legacy behavior");
        sub_1BA00();
      }

      (*(v15 + 8))(v23, v20);
      sub_930C4(&type metadata for LegacyFlow);
      *(v23 + 4) = sub_3BD14();
      v58 = swift_allocObject();
      sub_930D0(v58);
      sub_8388(v135, (v53 + 2));
      sub_8388(v131, (v53 + 7));
      sub_8388(v130, (v53 + 12));
      sub_8284(v132, (v53 + 17));
      v53[37] = &off_1B8558;
LABEL_14:
      result = sub_2D64(v135);
      break;
    case 5:
      if (v139 | v140 | v136 | v138 | v137)
      {
        v86 = v139 | v140 | v138 | v137;
        if (v136 != 1 || v86)
        {
          if (v136 != 2 || v86)
          {
            sub_16DBBC();
            sub_8B48();
            sub_92FE8();
            sub_930A4();
            v112();
            v113 = sub_16DBDC();
            v114 = sub_16E36C();
            if (sub_387B0(v114))
            {
              v115 = sub_1BA38();
              sub_1BA50(v115);
              sub_4593C(&def_259DC, v116, v117, "Meds checks didn't pass, returning UnavailableDataFlow.");
              sub_1BA00();
            }

            (*(v15 + 8))(v20, v5);
            v118 = type metadata accessor for UnavailableDataFlow();
            v119 = v133;
            v133[3] = v118;
            v119[4] = sub_92CD0(&qword_1C57C8, type metadata accessor for UnavailableDataFlow);
            v120 = sub_9910(v119);
            v121 = v118[5];
            v122 = sub_16BD9C();
            sub_214C(v120 + v121, 1, 1, v122);
            sub_8388(v131, v120 + v118[6]);
            sub_8284(v132, v120 + v118[7]);
            v123 = sub_16C58C();
            v124 = *(v123 + 48);
            v125 = *(v123 + 52);
            swift_allocObject();
            v126 = sub_16C57C();
            v127 = (v120 + v118[8]);
            v127[3] = v123;
            v127[4] = &protocol witness table for ResponseFactory;
            *v127 = v126;
            type metadata accessor for WellnessCATsSimple();
            sub_16D62C();
            v128 = sub_16D5FC();
            type metadata accessor for WellnessCATs();
            sub_16D62C();
            result = sub_16D58C();
            *v120 = 88;
            *(v120 + v118[9]) = v128;
            *(v120 + v118[10]) = result;
          }

          else
          {
            v111 = v133;
            v133[3] = &type metadata for ServerFallbackFlow;
            result = sub_923B8();
            v111[4] = result;
          }
        }

        else
        {
          v87 = sub_16DBBC();
          sub_8B48();
          sub_92FE8();
          v88(v36, v87, v134);
          v89 = sub_16DBDC();
          v90 = sub_16E37C();
          if (sub_387B0(v90))
          {
            v91 = sub_1BA38();
            sub_1BA50(v91);
            sub_4593C(&def_259DC, v92, v93, "This is an unsupported Siri locale or Device Region for Meds");
            sub_1BA00();
          }

          (*(v15 + 8))(v36, v134);
          sub_930C4(&type metadata for RegionNotSupportedForMedsFlow);
          *(v36 + 4) = sub_92270();
          v94 = swift_allocObject();
          v95 = sub_930D0(v94);
          sub_8388(v131, v95 + 16);
          sub_8284(v132, (v89 + 7));
          v96 = sub_16C58C();
          v97 = *(v96 + 48);
          v98 = *(v96 + 52);
          swift_allocObject();
          v99 = sub_16C57C();
          v89[30] = v96;
          v89[31] = &protocol witness table for ResponseFactory;
          v89[27] = v99;
          type metadata accessor for WellnessCATs();
          sub_16D62C();
          sub_93198();
          v100 = sub_16D58C();
          type metadata accessor for WellnessCATsSimple();
          sub_16D62C();
          sub_93198();
          result = sub_16D5FC();
          v89[32] = v100;
          v89[33] = result;
        }
      }

      else
      {
        sub_16DBBC();
        sub_8B48();
        sub_92FE8();
        sub_930A4();
        v101();
        v102 = sub_16DBDC();
        v103 = sub_16E37C();
        if (sub_387B0(v103))
        {
          v104 = sub_1BA38();
          *v104 = 0;
          sub_92F38();
          _os_log_impl(v105, v106, v107, v108, v104, 2u);
          sub_92FCC();
        }

        (*(v15 + 8))(v33, v5);
        sub_930C4(&type metadata for GenericNotSupportedFlow);
        *(v33 + 4) = sub_17358();
        v109 = swift_allocObject();
        v110 = sub_930D0(v109);
        result = sub_8284(v132, v110 + 16);
        v102[176] = 0;
      }

      break;
    default:
      sub_93130();
      sub_92FAC();
      sub_92FE8();
      sub_930A4();
      v40();
      v41 = sub_16DBDC();
      v42 = sub_16E37C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = sub_1BA38();
        *v43 = 0;
        _os_log_impl(&def_259DC, v41, v42, "This is an unsupported Siri locale", v43, 2u);
        sub_92FCC();
      }

      (*(v15 + 8))(v38, v5);
      sub_930C4(&type metadata for RegionNotSupportedFlow);
      *(v38 + 4) = sub_92310();
      v44 = swift_allocObject();
      sub_930D0(v44);
      sub_8388(v135, &v41[2]);
      sub_8388(v131, &v41[7]);
      sub_8284(v132, &v41[12]);
      v45 = sub_16C58C();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      v48 = sub_16C57C();
      v41[35].isa = v45;
      v41[36].isa = &protocol witness table for ResponseFactory;
      v41[32].isa = v48;
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      sub_93198();
      v49 = sub_16D58C();
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      sub_93198();
      v50 = sub_16D5FC();
      result = sub_2D64(v135);
      v41[37].isa = v49;
      v41[38].isa = v50;
      break;
  }

  return result;
}

uint64_t sub_8DC90@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  sub_93118();
  *a1 = swift_allocObject();
  return sub_16D7BC();
}

uint64_t sub_8DD40@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16D63C();
  v3 = sub_4348(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  sub_C1F30(a1);
  v6 = type metadata accessor for WellnessCATPatternsExecutor(0);
  sub_16D62C();
  v7 = sub_16D58C();
  a1[8] = v6;
  a1[9] = &off_1BA5B0;
  a1[5] = v7;
  v8 = type metadata accessor for WellnessLoggingCATPatternsExecutor(0);
  sub_16D62C();
  v9 = sub_16D58C();
  a1[13] = v8;
  a1[14] = &off_1BC5D0;
  a1[10] = v9;
  v10 = type metadata accessor for WellnessQueryingCATPatternsExecutor(0);
  sub_16D62C();
  result = sub_16D58C();
  a1[18] = v10;
  a1[19] = &off_1BA360;
  a1[15] = result;
  return result;
}

uint64_t sub_8DE3C()
{
  if (v0[5])
  {
    sub_2D64(v0 + 2);
  }

  if (v0[10])
  {
    sub_2D64(v0 + 7);
  }

  if (v0[15])
  {
    sub_2D64(v0 + 12);
  }

  if (v0[20])
  {
    sub_2D64(v0 + 17);
  }

  if (v0[25])
  {
    sub_2D64(v0 + 22);
  }

  if (v0[30])
  {
    sub_2D64(v0 + 27);
  }

  if (v0[35])
  {
    sub_2D64(v0 + 32);
  }

  sub_93118();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_8DEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16C80C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_369C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_8DFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_16C80C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_214C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MainFlow()
{
  result = qword_1C8A58;
  if (!qword_1C8A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8E0A8()
{
  result = sub_16C80C();
  if (v1 <= 0x3F)
  {
    result = sub_8E16C(319, &qword_1C8A68);
    if (v2 <= 0x3F)
    {
      result = sub_8E16C(319, &unk_1C8A70);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_8E16C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_8E1C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_89FF4();
}

uint64_t sub_8E25C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8E354;

  return v7(a1);
}

uint64_t sub_8E354()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_C9BC();

  return v5();
}

uint64_t sub_8E438()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8E470(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_384A8(v6);
  *v7 = v8;
  v7[1] = sub_C6F0;

  return sub_8B448(a1, v3, v4, v5);
}

uint64_t sub_8E53C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8E5F4()
{
  sub_92E78();
  sub_2D64(v0 + 27);
  sub_2D64(v0 + 32);
  v1 = v0[37];

  return _swift_deallocObject(v0, 304, 7);
}

uint64_t sub_8E640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v30 = sub_16D6BC();
  v9 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440(&qword_1C6850, &unk_172440);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v32[3] = &type metadata for WellnessCATProvider;
  v32[4] = &off_1BD5D8;
  v18 = swift_allocObject();
  v32[0] = v18;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v19 = sub_2D20(v32, &type metadata for WellnessCATProvider);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];

  sub_1508BC(v20, v21, v22, v23);
  sub_6276C();

  sub_74678(v17, v15, &qword_1C6850, &unk_172440);
  sub_8388(v29, v31);
  v24 = v28;
  sub_16D6AC();
  sub_92CD0(&qword_1C6860, &type metadata accessor for OutputFlow);
  v25 = sub_16C32C();
  sub_92AE0(v24);
  sub_8748(v17, &qword_1C6850, &unk_172440);
  sub_2D64(v32);
  return v25;
}

uint64_t sub_8E8A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v86 = a7;
  v88 = a2;
  v12 = sub_16D63C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v85 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_16DBEC();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  v17 = __chkstk_darwin(v15);
  v81 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v19;
  v107 = &type metadata for WellnessCATProvider;
  v108 = &off_1BD5D8;
  v20 = swift_allocObject();
  v106[0] = v20;
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v21 = a1;
  v87 = a1;
  v22 = a1[3];
  v23 = v21[4];
  sub_2D20(v21, v22);
  v24 = *(v23 + 24);

  v25 = v24(v22, v23);
  v26 = v87;
  LOWORD(a3) = v25;
  v27 = v87[3];
  v28 = v87[4];
  sub_2D20(v87, v27);
  v29 = (*(v28 + 16))(v27, v28);
  switch(sub_2C74(a3 | (v29 << 16) | 0x2000000))
  {
    case 1u:
      sub_8388(v26, v98);
      sub_8388(v88, &v98[5]);
      sub_8284(v86, &v98[10]);
      v62 = sub_16D99C();
      memset(v96, 0, sizeof(v96));
      v97 = 0;
      v63 = objc_allocWithZone(v62);
      v99 = sub_16D98C();
      strcpy(v100, "* ");
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_16D62C();
      v101 = sub_16D5FC();
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v96[0] = sub_16C1AC();
      sub_16C29C();
      sub_926BC();
      v64 = sub_16C35C();
      sub_92710(v98);

      v98[0] = v64;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v48 = sub_16C32C();
      goto LABEL_22;
    case 2u:
      sub_8388(v26, v96);
      sub_8388(v88, v95);
      sub_8284(v86, v98);
      v49 = sub_16DAAC();
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
      v50 = objc_allocWithZone(v49);
      v51 = sub_16DA9C();
      type metadata accessor for LogBloodPressureFlow();
      v52 = swift_allocObject();
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_16D62C();
      *(v52 + 280) = sub_16D5FC();
      *(v52 + 288) = 82;
      sub_8388(v96, v52 + 16);
      sub_8388(v95, v52 + 56);
      sub_8284(v98, v52 + 96);
      *(v52 + 256) = v51;
      v53 = [objc_allocWithZone(sub_16D97C()) init];
      sub_C938(v98);
      sub_2D64(v95);
      sub_2D64(v96);
      *(v52 + 264) = v53;
      *(v52 + 272) = 0;
      v98[0] = v52;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v96[0] = sub_16C1AC();
      sub_16C29C();
      v54 = &qword_1C8800;
      v55 = type metadata accessor for LogBloodPressureFlow;
      goto LABEL_21;
    case 3u:
      sub_8388(v26, v98);
      sub_8388(v88, &v98[5]);
      sub_8284(v86, &v98[10]);
      v56 = sub_16C58C();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      v59 = sub_16C57C();
      v102 = v56;
      v103 = &protocol witness table for ResponseFactory;
      v99 = v59;
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_16D62C();
      v60 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v61 = sub_16D58C();
      v104 = v60;
      v105 = v61;
      sub_17858();
      v48 = sub_16C32C();
      sub_83B2C(v98);
      goto LABEL_23;
    case 4u:
      v40 = sub_16DBBC();
      swift_beginAccess();
      v42 = v82;
      v41 = v83;
      v43 = v84;
      (*(v83 + 16))(v82, v40, v84);
      v44 = sub_16DBDC();
      v45 = sub_16E37C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&def_259DC, v44, v45, "Intent has nil dataType, aborting loggingFlowFor.", v46, 2u);
      }

      (*(v41 + 8))(v42, v43);
      v47 = sub_2D20(v106, v107);
      v48 = sub_8E640(v88, *v47, v47[1], v47[2], v47[3]);
      goto LABEL_23;
    default:
      v30 = v26[3];
      v31 = v26[4];
      sub_2D20(v26, v30);
      v32 = (*(v31 + 24))(v30, v31);
      if (v32 == 270 || (v33 = v32, sub_16D74(), v34 = sub_16E14C(), v35 = sub_1730C(v33, v34), , v35 == 205))
      {
        v68 = sub_16DBBC();
        swift_beginAccess();
        (*(v83 + 16))(v81, v68, v84);
        sub_8388(v26, v98);
        v69 = sub_16DBDC();
        v70 = sub_16E37C();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v95[0] = v72;
          *v71 = 136315138;
          v73 = v98[3];
          v74 = v98[4];
          sub_2D20(v98, v98[3]);
          LOWORD(v92) = (*(v74 + 24))(v73, v74);
          sub_2440(&qword_1C5790, &unk_16F3B0);
          v75 = sub_16E3DC();
          v77 = v76;
          sub_2D64(v98);
          v78 = sub_3AB7C(v75, v77, v95);

          *(v71 + 4) = v78;
          _os_log_impl(&def_259DC, v69, v70, "%s does not have a HealthKitIdentifier to create a GetHealthQuantityFlow", v71, 0xCu);
          sub_2D64(v72);

          (*(v83 + 8))(v81, v84);
        }

        else
        {

          (*(v83 + 8))(v81, v84);
          sub_2D64(v98);
        }

        *&v95[0] = 0;
        *(&v95[0] + 1) = 0xE000000000000000;
        sub_16E47C(72);
        v79 = v26[3];
        v80 = v26[4];
        sub_2D20(v26, v79);
        LOWORD(v92) = (*(v80 + 24))(v79, v80);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v109._countAndFlagsBits = sub_16E3DC();
        sub_16E26C(v109);

        v110._object = 0x800000000017EBB0;
        v110._countAndFlagsBits = 0xD000000000000046;
        sub_16E26C(v110);
        sub_16E53C();
        __break(1u);
        JUMPOUT(0x8F4E8);
      }

      sub_8388(v26, v96);
      sub_8388(v88, v95);
      sub_8284(v86, v98);
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      v36 = sub_16D9FC();
      v89 = 0u;
      v90 = 0u;
      v91 = 0;
      v37 = objc_allocWithZone(v36);
      v38 = sub_16D9EC();
      type metadata accessor for LogHealthKitQuantityFlow();
      v39 = swift_allocObject();
      *(v39 + 336) = 3;
      *(v39 + 16) = v35;
      sub_17464(v96, v39 + 24);
      sub_8388(v95, v39 + 64);
      sub_8284(v98, v39 + 104);
      *(v39 + 264) = v38;
      if (*(&v93 + 1))
      {
        sub_C938(v98);
        sub_2D64(v95);
        sub_17464(&v92, &v89);
      }

      else
      {
        *(&v90 + 1) = &type metadata for CorrectionsFlowProvider;
        v91 = &off_1BB308;
        v65 = swift_allocObject();
        *&v89 = v65;
        sub_17464(v95, v65 + 16);
        memcpy((v65 + 56), v98, 0xA0uLL);
        if (*(&v93 + 1))
        {
          sub_8748(&v92, &qword_1C6C18, &unk_1744C0);
        }
      }

      sub_17464(&v89, v39 + 272);
      *(v39 + 312) = 0;
      *(v39 + 320) = 0;
      *(v39 + 328) = 1;
      v98[0] = v39;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v96[0] = sub_16C1AC();
      sub_16C29C();
      v54 = &qword_1C6C20;
      v55 = type metadata accessor for LogHealthKitQuantityFlow;
LABEL_21:
      sub_92CD0(v54, v55);
      v66 = sub_16C35C();

      v98[0] = v66;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v48 = sub_16C32C();
LABEL_22:

LABEL_23:
      sub_2D64(v106);
      return v48;
  }
}

uint64_t sub_8F4FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v215 = a7;
  v216 = a2;
  v12 = sub_16D63C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v214 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_16DBEC();
  v217 = *(v15 - 8);
  v218 = v15;
  v16 = *(v217 + 64);
  v17 = __chkstk_darwin(v15);
  v213 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v212 = &v206 - v20;
  v21 = __chkstk_darwin(v19);
  v206 = &v206 - v22;
  v23 = __chkstk_darwin(v21);
  v211 = &v206 - v24;
  v25 = __chkstk_darwin(v23);
  v210 = &v206 - v26;
  v27 = __chkstk_darwin(v25);
  v209 = &v206 - v28;
  v29 = __chkstk_darwin(v27);
  v207 = &v206 - v30;
  __chkstk_darwin(v29);
  v208 = &v206 - v31;
  v244 = &type metadata for WellnessCATProvider;
  v245 = &off_1BD5D8;
  v32 = swift_allocObject();
  v243[0] = v32;
  v32[2] = a3;
  v32[3] = a4;
  v32[4] = a5;
  v32[5] = a6;
  v33 = a1;
  v219 = a1;
  v35 = a1[3];
  v34 = a1[4];
  sub_2D20(v33, v35);
  v36 = *(v34 + 24);

  v37 = v36(v35, v34);
  v38 = v219;
  LOWORD(a4) = v37;
  v39 = v219[3];
  v40 = v219[4];
  sub_2D20(v219, v39);
  (*(v40 + 2))(v39, v40);
  switch(sub_27C4(a4))
  {
    case 1u:
      v104 = sub_16DBBC();
      swift_beginAccess();
      v105 = v217;
      v106 = v218;
      v107 = v207;
      (*(v217 + 16))(v207, v104, v218);
      sub_8388(v38, &v220);
      v108 = sub_16DBDC();
      v109 = sub_16E36C();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v238 = v111;
        *v110 = 136315138;
        v112 = v222;
        v113 = v223;
        sub_2D20(&v220, v222);
        v242 = (*(v113 + 24))(v112, v113);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v114 = sub_16E3DC();
        v116 = v115;
        sub_2D64(&v220);
        v117 = sub_3AB7C(v114, v116, &v238);

        *(v110 + 4) = v117;
        _os_log_impl(&def_259DC, v108, v109, "%s gets GetBloodPressureFlow", v110, 0xCu);
        sub_2D64(v111);
        v38 = v219;

        (*(v105 + 8))(v207, v106);
      }

      else
      {

        (*(v105 + 8))(v107, v106);
        sub_2D64(&v220);
      }

      v177 = v215;
      v176 = v216;
      sub_8388(v38, &v220);
      sub_8388(v176, &v224);
      sub_8284(v177, &v226);
      v178 = sub_16D90C();
      sub_16D8FC();

      v179 = objc_allocWithZone(sub_16DA6C());
      v228 = sub_16DA5C();
      LOBYTE(v229) = 0;
      v180 = sub_16C58C();
      v181 = *(v180 + 48);
      v182 = *(v180 + 52);
      swift_allocObject();
      v183 = sub_16C57C();
      v233 = v180;
      v234 = &protocol witness table for ResponseFactory;
      v230 = v183;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v235 = sub_16D5FC();
      type metadata accessor for WellnessQueryingCATsSimple();
      sub_16D62C();
      v236 = sub_16D5FC();
      LOBYTE(v237) = 82;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v238 = sub_16C1AC();
      sub_16C29C();
      sub_92990();
      v159 = sub_16C35C();

      sub_929E4(&v220);
      goto LABEL_47;
    case 2u:
      v72 = v38[3];
      v73 = v38[4];
      sub_2D20(v38, v72);
      v74 = (*(v73 + 3))(v72, v73);
      v75 = v217;
      if (v74 == 270)
      {
        goto LABEL_51;
      }

      v76 = v74;
      v77 = sub_16DBBC();
      swift_beginAccess();
      v78 = v212;
      v79 = v218;
      (*(v75 + 16))(v212, v77, v218);
      sub_8388(v38, &v220);
      v80 = sub_16DBDC();
      v81 = sub_16E36C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v238 = v83;
        *v82 = 136315138;
        v84 = v222;
        v85 = v223;
        sub_2D20(&v220, v222);
        v242 = (*(v85 + 24))(v84, v85);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v86 = sub_16E3DC();
        v88 = v87;
        sub_2D64(&v220);
        v89 = sub_3AB7C(v86, v88, &v238);

        *(v82 + 4) = v89;
        _os_log_impl(&def_259DC, v80, v81, "%s gets GetActivitySummaryFlow", v82, 0xCu);
        sub_2D64(v83);
        v38 = v219;

        (*(v75 + 8))(v212, v218);
      }

      else
      {

        (*(v75 + 8))(v78, v79);
        sub_2D64(&v220);
      }

      v161 = v215;
      v160 = v216;
      sub_8388(v38, v221);
      sub_8388(v160, v225);
      sub_8284(v161, v227);
      v162 = sub_16DB1C();
      v238 = 0u;
      v239 = 0u;
      v240 = 0;
      v163 = objc_allocWithZone(v162);
      v164 = sub_16DB0C();
      v165 = sub_16C58C();
      v166 = *(v165 + 48);
      v167 = *(v165 + 52);
      swift_allocObject();
      v168 = sub_16C57C();
      v233 = v165;
      v234 = &protocol witness table for ResponseFactory;
      v230 = v168;
      type metadata accessor for WellnessQueryingCATsSimple();
      sub_16D62C();
      v169 = sub_16D5FC();
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v170 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v171 = sub_16D58C();
      LOWORD(v220) = v76;
      v229 = v164;
      v235 = v169;
      v236 = v170;
      v237 = v171;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v238 = sub_16C1AC();
      sub_16C29C();
      sub_928E8();
      v159 = sub_16C35C();

      sub_9293C(&v220);
      goto LABEL_47;
    case 3u:
      v90 = sub_16DBBC();
      swift_beginAccess();
      v91 = v217;
      v92 = v218;
      v93 = v209;
      (*(v217 + 16))(v209, v90, v218);
      sub_8388(v38, &v220);
      v94 = sub_16DBDC();
      v95 = sub_16E36C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v238 = v97;
        *v96 = 136315138;
        v98 = v222;
        v99 = v223;
        sub_2D20(&v220, v222);
        v242 = (*(v99 + 24))(v98, v99);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v100 = sub_16E3DC();
        v102 = v101;
        sub_2D64(&v220);
        v103 = sub_3AB7C(v100, v102, &v238);

        *(v96 + 4) = v103;
        _os_log_impl(&def_259DC, v94, v95, "%s gets GetSleepAnalysisFlow", v96, 0xCu);
        sub_2D64(v97);

        (*(v91 + 8))(v209, v92);
      }

      else
      {

        (*(v91 + 8))(v93, v92);
        sub_2D64(&v220);
      }

      v173 = v215;
      v172 = v216;
      sub_8388(v219, &v220);
      sub_8388(v172, &v224);
      sub_8284(v173, &v226);
      v174 = sub_16DA8C();
      v238 = 0u;
      v239 = 0u;
      v240 = 0;
      v175 = objc_allocWithZone(v174);
      v228 = sub_16DA7C();
      LOBYTE(v229) = 0;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v230 = sub_16D5FC();
      type metadata accessor for WellnessQueryingCATsSimple();
      sub_16D62C();
      v231 = sub_16D5FC();
      v232 = 60;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v238 = sub_16C1AC();
      sub_16C29C();
      sub_92840();
      v159 = sub_16C35C();
      sub_92894(&v220);
      goto LABEL_46;
    case 4u:
      v58 = sub_16DBBC();
      swift_beginAccess();
      v59 = v217;
      v60 = v218;
      v61 = v210;
      (*(v217 + 16))(v210, v58, v218);
      sub_8388(v38, &v220);
      v62 = sub_16DBDC();
      v63 = sub_16E36C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v238 = v65;
        *v64 = 136315138;
        v66 = v222;
        v67 = v223;
        sub_2D20(&v220, v222);
        v242 = (*(v67 + 24))(v66, v67);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v68 = sub_16E3DC();
        v70 = v69;
        sub_2D64(&v220);
        v71 = sub_3AB7C(v68, v70, &v238);
        v38 = v219;

        *(v64 + 4) = v71;
        _os_log_impl(&def_259DC, v62, v63, "%s gets GetCycleTrackingFlow", v64, 0xCu);
        sub_2D64(v65);

        (*(v59 + 8))(v210, v60);
      }

      else
      {

        (*(v59 + 8))(v61, v60);
        sub_2D64(&v220);
      }

      v156 = v215;
      v155 = v216;
      sub_8388(v38, &v220);
      sub_8388(v155, &v224);
      sub_8284(v156, &v226);
      v157 = sub_16DB8C();
      v238 = 0u;
      v239 = 0u;
      v240 = 0;
      v158 = objc_allocWithZone(v157);
      v228 = sub_16DB7C();
      LOWORD(v229) = 42;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      *&v238 = sub_16C1AC();
      sub_16C29C();
      sub_87A0();
      v159 = sub_16C35C();
      sub_927EC(&v220);
      goto LABEL_46;
    case 5u:
      v118 = v38[3];
      v119 = v38[4];
      sub_2D20(v38, v118);
      v120 = (*(v119 + 3))(v118, v119);
      v121 = v217;
      if (v120 == 270)
      {
LABEL_51:
        v220 = 0;
        v221[0] = 0xE000000000000000;
        sub_16E47C(39);
        v202 = v38[4];
        sub_2D20(v38, v38[3]);
        v203 = *(v202 + 1);
        sub_16E6AC();
        v246._object = 0x800000000017EC00;
        v246._countAndFlagsBits = 0xD000000000000025;
        sub_16E26C(v246);
LABEL_55:
        sub_16E53C();
        __break(1u);
        JUMPOUT(0x90F64);
      }

      LODWORD(v122) = v120;
      v123 = sub_16DBBC();
      swift_beginAccess();
      v124 = v213;
      v125 = v218;
      (*(v121 + 16))(v213, v123, v218);
      sub_8388(v38, &v220);
      v126 = sub_16DBDC();
      v127 = sub_16E36C();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        LODWORD(v219) = v122;
        v122 = v129;
        v241[0] = v129;
        *v128 = 136315138;
        v130 = v222;
        v131 = v223;
        sub_2D20(&v220, v222);
        v242 = (*(v131 + 24))(v130, v131);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v132 = sub_16E3DC();
        v134 = v133;
        sub_2D64(&v220);
        v135 = sub_3AB7C(v132, v134, v241);

        *(v128 + 4) = v135;
        _os_log_impl(&def_259DC, v126, v127, "%s gets Punchout", v128, 0xCu);
        sub_2D64(v122);
        LOWORD(v122) = v219;

        (*(v121 + 8))(v213, v125);
      }

      else
      {

        (*(v121 + 8))(v124, v125);
        sub_2D64(&v220);
      }

      sub_8388(v216, v221);
      sub_8388(v243, v225);
      sub_8284(v215, v227);
      LOWORD(v220) = v122;
      LOBYTE(v229) = 0;
      if (qword_1C55F0 != -1)
      {
        swift_once();
      }

      v241[0] = sub_16C1AC();
      sub_16C29C();
      sub_3DF60();
      v159 = sub_16C35C();
      sub_92798(&v220);
LABEL_46:

LABEL_47:
      v220 = v159;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v185 = sub_16C32C();

LABEL_48:
      sub_2D64(v243);
      return v185;
    case 6u:
      v136 = sub_16DBBC();
      swift_beginAccess();
      v138 = v217;
      v137 = v218;
      v139 = v208;
      (*(v217 + 16))(v208, v136, v218);
      sub_8388(v38, &v220);
      v140 = sub_16DBDC();
      v141 = sub_16E36C();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v241[0] = v143;
        *v142 = 136315138;
        v144 = v222;
        v145 = v223;
        v146 = sub_2D20(&v220, v222);
        v219 = &v206;
        v147 = *(*(v144 - 8) + 64);
        __chkstk_darwin(v146);
        (*(v149 + 16))(&v206 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0));
        v150 = *(v145 + 8);
        v151 = sub_16E1FC();
        v153 = v152;
        sub_2D64(&v220);
        v154 = sub_3AB7C(v151, v153, v241);

        *(v142 + 4) = v154;
        _os_log_impl(&def_259DC, v140, v141, "Unsupported Intent: %s", v142, 0xCu);
        sub_2D64(v143);

        (*(v138 + 8))(v208, v137);
      }

      else
      {

        (*(v138 + 8))(v139, v137);
        sub_2D64(&v220);
      }

      v184 = sub_2D20(v243, v244);
      v185 = sub_8E640(v216, *v184, v184[1], v184[2], v184[3]);
      goto LABEL_48;
    default:
      v41 = v38[3];
      v42 = v38[4];
      sub_2D20(v38, v41);
      v43 = (*(v42 + 3))(v41, v42);
      v44 = v217;
      if (v43 != 270)
      {
        v45 = v43;
        sub_16D74();
        v46 = sub_16E14C();
        v47 = sub_1730C(v45, v46);

        if (v47 != 205)
        {
          v48 = sub_16DBBC();
          swift_beginAccess();
          v49 = v211;
          v50 = v218;
          (*(v44 + 16))(v211, v48, v218);
          v51 = sub_16DBDC();
          v52 = sub_16E36C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v220 = v54;
            *v53 = 136315138;
            sub_140650(v45);
            v57 = sub_3AB7C(v55, v56, &v220);

            *(v53 + 4) = v57;
            _os_log_impl(&def_259DC, v51, v52, "%s gets GetHealthQuantityFlow", v53, 0xCu);
            sub_2D64(v54);

            v38 = v219;

            (*(v44 + 8))(v211, v50);
          }

          else
          {

            (*(v44 + 8))(v49, v50);
          }

          sub_8388(v38, v221);
          sub_8388(v216, v225);
          sub_8284(v215, v227);
          v186 = sub_16DACC();
          v238 = 0u;
          v239 = 0u;
          v240 = 0;
          v187 = objc_allocWithZone(v186);
          v188 = sub_16DABC();
          LOBYTE(v220) = v47;
          v229 = v188;
          LOBYTE(v230) = 4;
          if (qword_1C55F0 != -1)
          {
            swift_once();
          }

          *&v238 = sub_16C1AC();
          sub_16C29C();
          sub_92A38();
          v159 = sub_16C35C();
          sub_92A8C(&v220);
          goto LABEL_46;
        }
      }

      v190 = sub_16DBBC();
      swift_beginAccess();
      (*(v44 + 16))(v206, v190, v218);
      v191 = v38;
      sub_8388(v38, &v220);
      v192 = sub_16DBDC();
      v193 = sub_16E37C();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v241[0] = v195;
        *v194 = 136315138;
        v196 = v222;
        v197 = v223;
        sub_2D20(&v220, v222);
        v242 = (*(v197 + 24))(v196, v197);
        sub_2440(&qword_1C5790, &unk_16F3B0);
        v198 = sub_16E3DC();
        v200 = v199;
        sub_2D64(&v220);
        v201 = sub_3AB7C(v198, v200, v241);

        *(v194 + 4) = v201;
        _os_log_impl(&def_259DC, v192, v193, "%s does not have a HealthKitIdentifier to create a GetHealthQuantityFlow", v194, 0xCu);
        sub_2D64(v195);

        (*(v217 + 8))(v206, v218);
      }

      else
      {

        (*(v217 + 8))(v206, v218);
        sub_2D64(&v220);
      }

      v241[0] = 0;
      v241[1] = 0xE000000000000000;
      sub_16E47C(72);
      v204 = v191[4];
      sub_2D20(v191, v191[3]);
      v205 = *(v204 + 1);
      sub_16E6AC();
      v247._countAndFlagsBits = 0xD000000000000046;
      v247._object = 0x800000000017EBB0;
      sub_16E26C(v247);
      goto LABEL_55;
  }
}

uint64_t sub_90F80(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_16D63C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = a2[3];
  v9 = a2[4];
  sub_2D20(a2, v8);
  (*(v9 + 8))(&v43, v8, v9);
  sub_2D20(&v43, v45);
  if (sub_16C40C())
  {
    sub_2D64(&v43);
  }

  else
  {
    v10 = a2[3];
    v11 = a2[4];
    sub_2D20(a2, v10);
    (*(v11 + 8))(&v53, v10, v11);
    sub_2D20(&v53, *(&v54 + 1));
    v12 = sub_16C3FC();
    sub_2D64(&v53);
    sub_2D64(&v43);
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if ((sub_16D67C() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_16D68C())
  {
    sub_8284(a3, &v43);
    sub_1C45C();
    v13 = sub_16C32C();
    sub_925C0(&v43);
    return v13;
  }

LABEL_7:
  v14 = a2[3];
  v15 = a2[4];
  sub_2D20(a2, v14);
  (*(v15 + 8))(&v43, v14, v15);
  sub_2D20(&v43, v45);
  if (sub_16C40C())
  {
    sub_2D64(&v43);
    goto LABEL_10;
  }

  v16 = a2[3];
  v17 = a2[4];
  sub_2D20(a2, v16);
  (*(v17 + 8))(&v53, v16, v17);
  sub_2D20(&v53, *(&v54 + 1));
  v18 = sub_16C3FC();
  sub_2D64(&v53);
  sub_2D64(&v43);
  if (v18)
  {
LABEL_10:
    if (sub_16D67C())
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_8388(a2, &v43);
    v25 = sub_16C58C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_16C57C();
    v47[2] = v25;
    v47[3] = &protocol witness table for ResponseFactory;
    v46 = v28;
    type metadata accessor for WellnessCATsSimple();
    sub_16D62C();
    v29 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v30 = sub_16D58C();
    v47[4] = v29;
    v47[5] = v30;
    sub_89600();
    v13 = sub_16C32C();
    sub_9256C(&v43);
    return v13;
  }

LABEL_11:
  v19 = a2[3];
  v20 = a2[4];
  sub_2D20(a2, v19);
  (*(v20 + 8))(&v43, v19, v20);
  sub_2D20(&v43, v45);
  if (sub_16C41C())
  {
    v21 = sub_16D67C();
    sub_2D64(&v43);
    if ((v21 & 1) == 0)
    {
      sub_8388(a2, v44);
      sub_8284(a3, v47);
      v22 = sub_16D8AC();
      v53 = 0u;
      v54 = 0u;
      v55 = 0;
      v23 = objc_allocWithZone(v22);
      v24 = sub_16D89C();
      v50 = v22;
      v51 = &protocol witness table for MedStorageHelper;
      v48 = v24;
      v43 = a1;
      LOBYTE(v52) = 0;
      sub_92460();

      v13 = sub_16C32C();
      sub_924B4(&v43);
      return v13;
    }
  }

  else
  {
    sub_2D64(&v43);
  }

  if (isLoggingTask(from:)())
  {
    return sub_A90E4(a1, a2, a3);
  }

  if (isQueryingTask(from:)())
  {
    sub_8388(a2, v44);
    sub_8284(a3, v47);
    v32 = sub_16D8AC();
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v33 = objc_allocWithZone(v32);
    v34 = sub_16D89C();
    v50 = v32;
    v51 = &protocol witness table for MedStorageHelper;
    v48 = v34;
    v43 = a1;
    LOBYTE(v52) = 1;
    v35 = qword_1C55F0;

    if (v35 != -1)
    {
      swift_once();
    }

    *&v53 = sub_16C1AC();
    sub_16C29C();
    sub_92460();
    v36 = sub_16C35C();

    sub_924B4(&v43);
    v43 = v36;
    sub_2440(&qword_1C8AF0, &qword_1744A8);
    sub_92508();
    v13 = sub_16C32C();
  }

  else
  {
    sub_8388(a2, &v43);
    sub_8284(a3, &v46);
    v37 = sub_16C58C();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_16C57C();
    v49 = v37;
    v50 = &protocol witness table for ResponseFactory;
    v47[19] = v40;
    type metadata accessor for WellnessLoggingCATsSimple();
    sub_16D62C();
    v41 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v42 = sub_16D58C();
    v51 = v41;
    v52 = v42;
    sub_78880();
    v13 = sub_16C32C();
    sub_9240C(&v43);
  }

  return v13;
}

uint64_t sub_915E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v122 = a7;
  v123 = a2;
  v12 = sub_16D63C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v116 = v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_16DBEC();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v115 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v113 = v111 - v21;
  v22 = __chkstk_darwin(v20);
  v112 = v111 - v23;
  v24 = __chkstk_darwin(v22);
  v114 = v111 - v25;
  __chkstk_darwin(v24);
  v27 = v111 - v26;
  v136 = &type metadata for WellnessCATProvider;
  v137 = &off_1BD5D8;
  v28 = swift_allocObject();
  v135[0] = v28;
  v28[2] = a3;
  v28[3] = a4;
  v28[4] = a5;
  v28[5] = a6;

  v29 = v15;

  v30 = sub_16DBBC();
  swift_beginAccess();
  v31 = v16[2];
  v120 = v16 + 2;
  v121 = v30;
  v119 = v31;
  v31(v27, v30, v29);
  sub_8388(a1, v126);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v118 = v16;
    v36 = v35;
    v124[0] = v35;
    *v34 = 136315138;
    v117 = v29;
    v37 = v127;
    v38 = v128;
    v39 = sub_2D20(v126, v127);
    v111[1] = v111;
    v40 = *(*(v37 - 8) + 64);
    __chkstk_darwin(v39);
    (*(v42 + 16))(v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = *(v38 + 8);
    v29 = v117;
    v44 = sub_16E1FC();
    v46 = v45;
    sub_2D64(v126);
    v47 = sub_3AB7C(v44, v46, v124);

    *(v34 + 4) = v47;
    _os_log_impl(&def_259DC, v32, v33, "Getting flow for: %s", v34, 0xCu);
    sub_2D64(v36);

    v48 = v118;
    v49 = v118[1];
    v49(v27, v29);
  }

  else
  {

    v49 = v16[1];
    v49(v27, v29);
    sub_2D64(v126);
    v48 = v16;
  }

  v50 = v123[3];
  v51 = v123[4];
  sub_2D20(v123, v50);
  (*(v51 + 8))(v126, v50, v51);
  v52 = sub_16D67C();
  v53 = sub_16D68C();
  v54 = sub_25A0(v126, v52 & 1, v53 & 1);
  v55 = a1[3];
  v56 = a1[4];
  sub_2D20(a1, v55);
  LOWORD(v55) = (*(v56 + 24))(v55, v56);
  v57 = a1[3];
  v58 = a1[4];
  sub_2D20(a1, v57);
  v59 = (*(v58 + 16))(v57, v58);
  switch(sub_2730((v54 << 24) & 0x101010101010101 | (v59 << 16) | v55))
  {
    case 1u:
      v93 = sub_2D20(v135, v136);
      v61 = sub_8E8A4(a1, v123, *v93, v93[1], v93[2], v93[3], v122);
      goto LABEL_21;
    case 2u:
      v68 = v121;
      swift_beginAccess();
      v69 = v115;
      v119(v115, v68, v29);
      sub_8388(v123, v126);
      v70 = sub_16DBDC();
      v71 = sub_16E36C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v118 = v48;
        v74 = v73;
        v125 = v73;
        *v72 = 136315138;
        v75 = v69;
        v117 = v29;
        v76 = v127;
        v77 = v128;
        sub_2D20(v126, v127);
        (*(v77 + 8))(v124, v76, v77);
        sub_2440(&qword_1C8B08, &unk_1744B0);
        v78 = sub_16E1EC();
        v80 = v79;
        sub_2D64(v126);
        v81 = sub_3AB7C(v78, v80, &v125);

        *(v72 + 4) = v81;
        _os_log_impl(&def_259DC, v70, v71, "Device state is %s - launching UnsupportedDeviceFlow", v72, 0xCu);
        sub_2D64(v74);

        v49(v75, v117);
      }

      else
      {

        v49(v69, v29);
        sub_2D64(v126);
      }

      sub_8284(v122, v126);
      sub_92614();
      v67 = sub_16C32C();
      sub_92668(v126);
      goto LABEL_22;
    case 3u:
      v82 = v121;
      swift_beginAccess();
      v83 = v112;
      v119(v112, v82, v29);
      v84 = sub_16DBDC();
      v85 = sub_16E36C();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&def_259DC, v84, v85, "Device is iPhone/iPad, but relevant app not installed; launching InstallAppFlow", v86, 2u);
      }

      v49(v83, v29);
      sub_8388(v123, v126);
      v87 = sub_16C58C();
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      swift_allocObject();
      v90 = sub_16C57C();
      v130 = v87;
      v131 = &protocol witness table for ResponseFactory;
      v129 = v90;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v91 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v92 = sub_16D58C();
      v132 = v91;
      v133 = v92;
      sub_89600();
      v67 = sub_16C32C();
      sub_9256C(v126);
      goto LABEL_22;
    case 4u:
      v62 = v121;
      swift_beginAccess();
      v63 = v113;
      v119(v113, v62, v29);
      v64 = sub_16DBDC();
      v65 = sub_16E36C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&def_259DC, v64, v65, "Health app is restrcited in Screen Time, showing error dialog", v66, 2u);
      }

      v49(v63, v29);
      sub_8284(v122, v126);
      sub_1C45C();
      v67 = sub_16C32C();
      sub_925C0(v126);
      goto LABEL_22;
    case 5u:
      v118 = v48;
      v94 = v121;
      swift_beginAccess();
      v95 = v114;
      v119(v114, v94, v29);
      sub_8388(a1, v126);
      v96 = sub_16DBDC();
      v97 = sub_16E37C();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v100 = v95;
        v117 = v29;
        v101 = v99;
        v134[0] = v99;
        *v98 = 136315138;
        v102 = v127;
        v103 = v128;
        sub_2D20(v126, v127);
        v104 = (*(v103 + 16))(v102, v103);
        v105 = sub_158B28(v104);
        v107 = v106;
        sub_2D64(v126);
        v108 = sub_3AB7C(v105, v107, v134);

        *(v98 + 4) = v108;
        _os_log_impl(&def_259DC, v96, v97, "Unsupported verb for getFlowFor (%s). Returning genericNotSupported.", v98, 0xCu);
        sub_2D64(v101);

        v49(v100, v117);
      }

      else
      {

        v49(v95, v29);
        sub_2D64(v126);
      }

      v109 = sub_2D20(v135, v136);
      v61 = sub_8E640(v123, *v109, v109[1], v109[2], v109[3]);
      goto LABEL_21;
    default:
      v60 = sub_2D20(v135, v136);
      v61 = sub_8F4FC(a1, v123, *v60, v60[1], v60[2], v60[3], v122);
LABEL_21:
      v67 = v61;
LABEL_22:
      sub_2D64(v135);
      return v67;
  }
}

unint64_t sub_9218C()
{
  result = qword_1C8AC8;
  if (!qword_1C8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AC8);
  }

  return result;
}

uint64_t sub_921E0()
{
  sub_92E78();
  sub_2D64((v0 + 216));
  sub_2D64((v0 + 256));
  sub_93118();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_92220()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);

  return _swift_deallocObject(v0, 177, 7);
}

unint64_t sub_92270()
{
  result = qword_1C8AD0;
  if (!qword_1C8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AD0);
  }

  return result;
}

uint64_t sub_922C4()
{
  sub_92E78();
  sub_2D64(v0 + 27);
  v1 = v0[32];

  v2 = v0[33];

  return _swift_deallocObject(v0, 272, 7);
}

unint64_t sub_92310()
{
  result = qword_1C8AD8;
  if (!qword_1C8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AD8);
  }

  return result;
}

uint64_t sub_92364()
{
  sub_92E78();
  sub_2D64(v0 + 27);
  sub_2D64(v0 + 32);
  v1 = v0[37];

  v2 = v0[38];

  return _swift_deallocObject(v0, 312, 7);
}

unint64_t sub_923B8()
{
  result = qword_1C8AE0;
  if (!qword_1C8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AE0);
  }

  return result;
}

unint64_t sub_92460()
{
  result = qword_1C8AE8;
  if (!qword_1C8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AE8);
  }

  return result;
}

unint64_t sub_92508()
{
  result = qword_1C8AF8;
  if (!qword_1C8AF8)
  {
    sub_9790(&qword_1C8AF0, &qword_1744A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8AF8);
  }

  return result;
}

unint64_t sub_92614()
{
  result = qword_1C8B00;
  if (!qword_1C8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B00);
  }

  return result;
}

unint64_t sub_926BC()
{
  result = qword_1C8B10;
  if (!qword_1C8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B10);
  }

  return result;
}

uint64_t sub_92764()
{
  sub_92E78();

  return _swift_deallocObject(v0, 216, 7);
}

unint64_t sub_92840()
{
  result = qword_1C8B18;
  if (!qword_1C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B18);
  }

  return result;
}

unint64_t sub_928E8()
{
  result = qword_1C8B20;
  if (!qword_1C8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B20);
  }

  return result;
}

unint64_t sub_92990()
{
  result = qword_1C8B28;
  if (!qword_1C8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B28);
  }

  return result;
}

unint64_t sub_92A38()
{
  result = qword_1C8B30;
  if (!qword_1C8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B30);
  }

  return result;
}

uint64_t sub_92AE0(uint64_t a1)
{
  v2 = sub_16D6BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_92B3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_92B74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_384A8(v3);
  *v4 = v5;
  v6 = sub_9301C(v4);

  return v7(v6);
}

uint64_t sub_92C0C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_384A8(v3);
  *v4 = v5;
  v6 = sub_9301C(v4);

  return v7(v6);
}

uint64_t sub_92CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_92D18(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_92D34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_92D48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_92D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_92DD0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_92E5C()
{
  result = *(v0 - 376);
  v2 = *(v0 - 296);
  return result;
}

uint64_t sub_92E78()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);

  return sub_2D64(v0 + 22);
}

uint64_t sub_92EBC()
{
  v2 = *(v0 - 272);
}

uint64_t sub_92EE0()
{

  return swift_beginAccess();
}

BOOL sub_92F00(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_60F18(sub_8E51C, a1, v1);
}

BOOL sub_92F44(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_60F18(sub_92E14, a1, v1);
}

uint64_t sub_92F78()
{
  result = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[114];
  v8 = v0[113];
  v9 = v0[112];
  v10 = v0[111];
  v11 = v0[110];
  v12 = v0[109];
  return result;
}

uint64_t sub_92FAC()
{

  return swift_beginAccess();
}

uint64_t sub_92FCC()
{
}

uint64_t sub_92FF4()
{

  return swift_beginAccess();
}

uint64_t sub_9301C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

unint64_t sub_9303C(uint64_t a1)
{
  v1[68] = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;

  return sub_8D1C8((v1 + 42), v1 + 63, (v1 + 22), v1 + 68, v1 + 58);
}

void sub_9306C()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
}

void sub_930DC(void *a1@<X8>)
{

  sub_8BB44(v4, v1 & 1, v2, v3, v5, a1);
}

uint64_t sub_93100@<X0>(char a1@<W8>)
{
  *(v1 - 200) = a1;

  return sub_16C86C();
}

uint64_t sub_93130()
{
  sub_17464((v0 - 136), v0 - 176);

  return sub_16DBBC();
}

void sub_93184()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[125];
}

double sub_931A4@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

void *sub_931CC()
{
  sub_2D64(v0 + 63);
  sub_2D64(v0 + 68);
  v1 = v0[62];
  v2 = v0[61];

  return sub_2D20(v0 + 58, v2);
}

uint64_t sub_93208()
{
  v2 = *(v0 + 377);
  v3 = *(v0 + 992);
  v4 = *(v0 + 896);

  return swift_task_alloc();
}

uint64_t sub_93228()
{

  return swift_slowAlloc();
}

uint64_t type metadata accessor for BloodPressureQueryModel()
{
  result = qword_1C8BD8;
  if (!qword_1C8BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureQueryModel.systolicString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 44));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 48));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMinString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 52));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicMinString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMaxString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 56));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicMaxString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMinString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 60));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicMinString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMaxString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 64));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicMaxString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.unitLabelString.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 68));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.unitLabelString.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 68));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.systolicLabel.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 72));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.systolicLabel.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 72));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicLabel.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 76));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.diastolicLabel.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 76));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.dateLabel.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 84));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.dateLabel.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 84));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.unitLabel.getter()
{
  Model = type metadata accessor for BloodPressureQueryModel();
  sub_20658(*(Model + 88));
  return sub_8B9C();
}

uint64_t BloodPressureQueryModel.unitLabel.setter()
{
  v3 = sub_9630C();
  result = sub_66A6C(*(v3 + 88));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureQueryModel.init(systolic:diastolic:systolicMin:systolicMax:diastolicMin:diastolicMax:unitLabel:systolicLabel:diastolicLabel:dateLabel:url:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v24);
  v26 = *(v25 + 64);
  sub_433C();
  __chkstk_darwin(v27);
  sub_13088();
  v86 = v28;
  v29 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v29);
  v31 = *(v30 + 64);
  sub_433C();
  __chkstk_darwin(v32);
  sub_963CC();
  sub_16C11C();
  sub_8AB4();
  v85 = v33;
  sub_214C(v34, v35, v36, v33);
  Model = type metadata accessor for BloodPressureQueryModel();
  v38 = (a9 + Model[17]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (a9 + Model[18]);
  v40 = (a9 + Model[19]);
  v41 = Model[20];
  sub_16BE9C();
  sub_8AB4();
  sub_214C(v42, v43, v44, v45);
  v46 = (a9 + Model[22]);
  v47 = a9 + Model[23];
  type metadata accessor for SnippetHeaderModel();
  v77 = v47;
  sub_8AB4();
  sub_214C(v48, v49, v50, v51);
  *v46 = a14;
  v46[1] = a15;
  *v39 = a16;
  v39[1] = a17;
  *v40 = a18;
  v40[1] = a19;
  sub_86B0(a20, v22, &qword_1C5800, &unk_16F510);
  v52 = sub_16D5CC();
  if (sub_369C(v22, 1, v52) == 1)
  {
    sub_8748(v22, &qword_1C5800, &unk_16F510);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v53 = sub_16D5BC();
    v56 = v55;
    (*(*(v52 - 8) + 8))(v22, v52);
    v54 = v56;
  }

  v57 = a9 + Model[5];
  v58 = a9 + Model[6];
  v59 = a9 + Model[7];
  v60 = a9 + Model[8];
  v61 = a9 + Model[9];
  v62 = a9 + Model[10];
  v71 = (a9 + Model[11]);
  v72 = (a9 + Model[12]);
  v73 = (a9 + Model[13]);
  v74 = (a9 + Model[14]);
  v75 = (a9 + Model[15]);
  v76 = (a9 + Model[16]);
  v63 = (a9 + Model[21]);
  *v63 = v53;
  v63[1] = v54;
  sub_5FF8C(a22, v77);
  *v57 = a1;
  *(v57 + 8) = a2 & 1;
  *v58 = a5;
  *(v58 + 8) = a6 & 1;
  *v59 = a7;
  *(v59 + 8) = a8 & 1;
  *v60 = a3;
  *(v60 + 8) = a4 & 1;
  *v61 = a10;
  *(v61 + 8) = a11 & 1;
  *v62 = a12;
  *(v62 + 8) = a13 & 1;
  *v71 = sub_94294(a1, a2 & 1);
  v71[1] = v64;
  *v72 = sub_94294(a3, a4 & 1);
  v72[1] = v65;
  *v73 = sub_94294(a5, a6 & 1);
  v73[1] = v66;
  *v74 = sub_94294(a7, a8 & 1);
  v74[1] = v67;
  *v75 = sub_94294(a10, a11 & 1);
  v75[1] = v68;
  *v76 = sub_94294(a12, a13 & 1);
  v76[1] = v69;
  sub_943A8(a21);
  sub_8748(a22, &dword_1C63F8, &qword_171800);
  sub_8748(a21, &qword_1C57F8, &unk_172510);
  sub_8748(a20, &qword_1C5800, &unk_16F510);
  sub_214C(v86, 0, 1, v85);
  return sub_1E634(v86, a9, &qword_1C63F0, &unk_1717F0);
}

uint64_t sub_94294(uint64_t result, char a2)
{
  if (a2)
  {
    goto LABEL_12;
  }

  v2 = result;
  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    sub_16E1CC();

LABEL_12:
    *&result = COERCE_DOUBLE(sub_8B9C());
    return result;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    sub_16E68C();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_943A8(uint64_t a1)
{
  v3 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v3);
  v5 = *(v4 + 64);
  sub_433C();
  __chkstk_darwin(v6);
  sub_963CC();
  v7 = sub_16BE9C();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v1, &qword_1C57F8, &unk_172510);
  if (sub_369C(v1, 1, v7) == 1)
  {
    sub_8748(v1, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v10 + 32))(v14, v1, v7);
    v16 = sub_16BE5C();
    sub_2068C(v16, v17);
    return (*(v10 + 8))(v14, v7);
  }
}

uint64_t sub_94544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63696C6F74737973 && a2 == 0xE800000000000000;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63696C6F74737973 && a2 == 0xEB000000006E694DLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x63696C6F74737973 && a2 == 0xEB0000000078614DLL;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696C6F7473616964 && a2 == 0xE900000000000063;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C6F7473616964 && a2 == 0xEC0000006E694D63;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696C6F7473616964 && a2 == 0xEC00000078614D63;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x63696C6F74737973 && a2 == 0xEE00676E69727453;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696C6F7473616964 && a2 == 0xEF676E6972745363;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x800000000017EC50 == a2;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x800000000017EC70 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x800000000017EC90 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x800000000017ECB0 == a2;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6562614C74696E75 && a2 == 0xEF676E697274536CLL;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x63696C6F74737973 && a2 == 0xED00006C6562614CLL;
                              if (v19 || (sub_16E6BC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x696C6F7473616964 && a2 == 0xEE006C6562614C63;
                                if (v20 || (sub_16E6BC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 7107189 && a2 == 0xE300000000000000;
                                  if (v21 || (sub_16E6BC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
                                    if (v22 || (sub_16E6BC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL;
                                      if (v23 || (sub_16E6BC() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_16E6BC();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_94B28(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 7:
    case 14:
      result = 0x63696C6F74737973;
      break;
    case 4:
      result = 0x696C6F7473616964;
      break;
    case 5:
    case 6:
    case 15:
      result = 0x696C6F7473616964;
      break;
    case 8:
      result = 0x696C6F7473616964;
      break;
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6562614C74696E75;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      v3 = 1702125924;
      goto LABEL_11;
    case 18:
      v3 = 1953066613;
LABEL_11:
      result = v3 | 0x6562614C00000000;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_94D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_94544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_94D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_94B20();
  *a1 = result;
  return result;
}

uint64_t sub_94DC4(uint64_t a1)
{
  v2 = sub_9521C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_94E00(uint64_t a1)
{
  v2 = sub_9521C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BloodPressureQueryModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1C8B58, &qword_1745D0);
  sub_42F0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_9521C();
  sub_16E77C();
  v23 = 0;
  sub_16C11C();
  sub_96340();
  sub_95B34(v12, v13);
  sub_963E0();
  sub_96394();
  if (!v1)
  {
    Model = type metadata accessor for BloodPressureQueryModel();
    sub_669D0(Model[5]);
    sub_153FC(1);
    sub_16E62C();
    sub_669D0(Model[6]);
    sub_153FC(2);
    sub_16E62C();
    sub_669D0(Model[7]);
    sub_153FC(3);
    sub_16E62C();
    sub_669D0(Model[8]);
    sub_153FC(4);
    sub_16E62C();
    sub_669D0(Model[9]);
    sub_153FC(5);
    sub_16E62C();
    sub_669D0(Model[10]);
    sub_153FC(6);
    sub_16E62C();
    sub_66A40(Model[11]);
    sub_153FC(7);
    sub_16E61C();
    sub_66A40(Model[12]);
    sub_153FC(8);
    sub_16E61C();
    sub_66A40(Model[13]);
    sub_153FC(9);
    sub_16E61C();
    sub_66A40(Model[14]);
    sub_153FC(10);
    sub_16E61C();
    sub_66A40(Model[15]);
    sub_153FC(11);
    sub_16E61C();
    sub_66A40(Model[16]);
    sub_153FC(12);
    sub_16E61C();
    sub_66A40(Model[17]);
    sub_153FC(13);
    sub_16E61C();
    sub_66A40(Model[18]);
    sub_153FC(14);
    sub_16E61C();
    sub_66A40(Model[19]);
    sub_153FC(15);
    sub_16E61C();
    v15 = Model[20];
    v23 = 16;
    sub_16BE9C();
    sub_96358();
    sub_95B34(v16, v17);
    sub_96394();
    sub_66A40(Model[21]);
    sub_153FC(17);
    sub_16E61C();
    sub_66A40(Model[22]);
    sub_153FC(18);
    sub_16E61C();
    v18 = Model[23];
    v23 = 19;
    type metadata accessor for SnippetHeaderModel();
    sub_96328();
    sub_95B34(v19, v20);
    sub_96394();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_9521C()
{
  result = qword_1C8B60;
  if (!qword_1C8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B60);
  }

  return result;
}

uint64_t BloodPressureQueryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v117 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  sub_13088();
  v116 = v6;
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v7);
  v9 = *(v8 + 64);
  sub_433C();
  __chkstk_darwin(v10);
  sub_13088();
  v135 = v11;
  v12 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v136 = v16;
  v137 = sub_2440(&qword_1C8B70, &qword_1745D8);
  sub_42F0(v137);
  v134 = v17;
  v19 = *(v18 + 64);
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v140 = v21;
  Model = type metadata accessor for BloodPressureQueryModel();
  v23 = (Model - 8);
  v24 = *(*(Model - 8) + 64);
  __chkstk_darwin(Model);
  v26 = v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v133 = v27;
  sub_214C(v28, v29, v30, v27);
  sub_963B4(v23[7]);
  v130 = v31;
  *(v31 + 8) = 1;
  sub_963B4(v23[8]);
  v129 = v32;
  *(v32 + 8) = 1;
  sub_963B4(v23[9]);
  v128 = v33;
  *(v33 + 8) = 1;
  sub_963B4(v23[10]);
  v127 = v34;
  *(v34 + 8) = 1;
  sub_963B4(v23[11]);
  v126 = v35;
  *(v35 + 8) = 1;
  sub_963B4(v23[12]);
  v125 = v36;
  *(v36 + 8) = 1;
  sub_96370(v23[13]);
  v124 = v37;
  sub_96370(v23[14]);
  v123 = v38;
  sub_96370(v23[15]);
  v122 = v39;
  sub_96370(v23[16]);
  v121 = v40;
  sub_96370(v23[17]);
  v120 = v41;
  sub_96370(v23[18]);
  v119 = v42;
  sub_96370(v23[19]);
  v118 = v43;
  v44 = &v26[v23[20]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v26[v23[21]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = v23[22];
  v131 = sub_16BE9C();
  v132 = v46;
  sub_8AB4();
  sub_214C(v47, v48, v49, v50);
  v51 = &v26[v23[23]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = &v26[v23[24]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = v23[25];
  v54 = type metadata accessor for SnippetHeaderModel();
  v139 = v26;
  sub_8AB4();
  sub_214C(v55, v56, v57, v54);
  v58 = v141[4];
  sub_2D20(v141, v141[3]);
  sub_9521C();
  v59 = v138;
  sub_16E76C();
  if (v59)
  {
    v112 = v139;
  }

  else
  {
    v138 = v44;
    v115 = v45;
    v60 = v132;
    v113[1] = v51;
    v113[2] = v52;
    v114 = v53;
    v61 = v134;
    v62 = v135;
    v143 = 0;
    sub_96340();
    sub_95B34(v63, v64);
    sub_963E0();
    v65 = v136;
    sub_16E5AC();
    sub_1E634(v65, v139, &qword_1C63F0, &unk_1717F0);
    sub_962C4(1);
    v67 = sub_16E59C();
    sub_962FC(v67, v68);
    sub_962C4(2);
    v69 = sub_16E59C();
    sub_962FC(v69, v70);
    sub_962C4(3);
    v71 = sub_16E59C();
    sub_962FC(v71, v72);
    sub_962C4(4);
    v73 = sub_16E59C();
    sub_962FC(v73, v74);
    sub_962C4(5);
    v75 = sub_16E59C();
    sub_962FC(v75, v76);
    sub_962C4(6);
    v77 = sub_16E59C();
    sub_962FC(v77, v78);
    sub_962C4(7);
    v79 = sub_16E58C();
    v80 = v124;
    *v124 = v79;
    v80[1] = v81;
    sub_962C4(8);
    v82 = sub_16E58C();
    v83 = v123;
    *v123 = v82;
    v83[1] = v84;
    sub_962C4(9);
    v85 = sub_16E58C();
    v86 = v122;
    *v122 = v85;
    v86[1] = v87;
    v88 = sub_962D8(10);
    v89 = v121;
    *v121 = v88;
    v89[1] = v90;
    v91 = sub_962D8(11);
    sub_963C0(v91, v92, &v148);
    v93 = sub_962D8(12);
    sub_963C0(v93, v94, &v147);
    v95 = sub_962D8(13);
    sub_963C0(v95, v96, &v146);
    v97 = sub_962D8(14);
    v98 = v138;
    *v138 = v97;
    v98[1] = v99;
    v100 = sub_962D8(15);
    sub_963C0(v100, v101, &v145);
    v143 = 16;
    sub_96358();
    sub_95B34(v102, v103);
    sub_963E0();
    sub_16E5AC();
    sub_1E634(v62, &v139[v60], &qword_1C57F8, &unk_172510);
    v104 = sub_962D8(17);
    sub_963C0(v104, v105, v142);
    v106 = sub_962D8(18);
    sub_963C0(v106, v107, &v144);
    v143 = 19;
    sub_96328();
    sub_95B34(v108, v109);
    sub_963E0();
    v110 = v137;
    v111 = v140;
    sub_16E5AC();
    (*(v61 + 8))(v111, v110);
    v112 = v139;
    sub_1E634(v116, &v139[v114], &dword_1C63F8, &qword_171800);
    sub_95A40(v112, v117);
  }

  sub_2D64(v141);
  return sub_959E4(v112);
}

uint64_t sub_959E4(uint64_t a1)
{
  Model = type metadata accessor for BloodPressureQueryModel();
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t sub_95A40(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BloodPressureQueryModel();
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_95B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_95BC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  v7 = sub_436C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_369C(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v14 = sub_2440(&qword_1C57F8, &unk_172510);
    v15 = sub_436C(v14);
    if (*(v16 + 84) == a2)
    {
      v9 = v15;
      v17 = a3[20];
    }

    else
    {
      v9 = sub_2440(&dword_1C63F8, &qword_171800);
      v17 = a3[23];
    }

    v10 = a1 + v17;
    goto LABEL_13;
  }

  v11 = *(a1 + a3[11] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_95D14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  result = sub_436C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + a4[11] + 8) = a2;
      return result;
    }

    v13 = sub_2440(&qword_1C57F8, &unk_172510);
    v14 = sub_436C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[20];
    }

    else
    {
      v11 = sub_2440(&dword_1C63F8, &qword_171800);
      v16 = a4[23];
    }

    v12 = a1 + v16;
  }

  return sub_214C(v12, a2, a2, v11);
}

uint64_t sub_95E44()
{
  sub_95FDC(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_3A10(319, &qword_1C64C8);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_95FDC(319, &unk_1C8BE8, &type metadata accessor for URL);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_95FDC(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_95FDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for BloodPressureQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BloodPressureQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x96184);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_961C0()
{
  result = qword_1C8C60;
  if (!qword_1C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C60);
  }

  return result;
}

unint64_t sub_96218()
{
  result = qword_1C8C68;
  if (!qword_1C8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C68);
  }

  return result;
}

unint64_t sub_96270()
{
  result = qword_1C8C70;
  if (!qword_1C8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C70);
  }

  return result;
}

uint64_t sub_962D8@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 128);
  v4 = *(v1 - 104);

  return sub_16E58C();
}

uint64_t sub_962FC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_9630C()
{

  return type metadata accessor for BloodPressureQueryModel();
}

void sub_96370(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_9637C()
{

  return type metadata accessor for BloodPressureQueryModel();
}

uint64_t sub_96394()
{

  return sub_16E63C();
}

uint64_t sub_963C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a3 - 256);
  *v3 = result;
  v3[1] = a2;
  return result;
}

uint64_t getMedScheduleDateTime(from:)(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (sub_16CDAC())
  {
    v1 = sub_16CD7C();

    if (v1)
    {
      if (sub_3B35C(v1))
      {
        sub_3B360(0, (v1 & 0xC000000000000001) == 0, v1);
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_16E48C();
        }

        else
        {
          v2 = *(v1 + 32);
        }

        sub_16C9EC();
      }

      else
      {
      }
    }
  }

  if (!sub_16CDAC() || (v3 = sub_16CD7C(), , !v3))
  {

    return 0;
  }

  if (!sub_3B35C(v3))
  {

    return 0;
  }

  sub_3B360(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  sub_16C9EC();

  return v5;
}

uint64_t medScheduleHasOneMed(from:)(uint64_t result)
{
  if (result)
  {
    result = sub_16CD8C();
    if (result)
    {
      v1 = sub_3B35C(result);

      return v1 == 1;
    }
  }

  return result;
}

uint64_t getMedEntity(from:)(uint64_t result)
{
  if (result)
  {
    result = sub_16CD8C();
    if (result)
    {
      v1 = result;
      if (sub_3B35C(result))
      {
        sub_3B360(0, (v1 & 0xC000000000000001) == 0, v1);
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_16E48C();
        }

        else
        {
          v2 = *(v1 + 32);
        }

        sub_16C9EC();

        return v3;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t getLocalizedScheduleName(from:)(uint64_t result)
{
  if (result)
  {
    return sub_16CD9C();
  }

  return result;
}

uint64_t sub_96698()
{
  sub_8A88();
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = *v0;
  v3 = *(*(sub_2440(&qword_1C6FF0, &unk_1730A0) - 8) + 64);
  v1[11] = sub_8BC0();
  v4 = sub_16C89C();
  v1[12] = v4;
  sub_888C(v4);
  v1[13] = v5;
  v7 = *(v6 + 64);
  v1[14] = sub_8BC0();
  v8 = sub_16C8FC();
  v1[15] = v8;
  sub_888C(v8);
  v1[16] = v9;
  v11 = *(v10 + 64);
  v1[17] = sub_8BC0();
  v12 = sub_16C80C();
  v1[18] = v12;
  sub_888C(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = sub_8BC0();
  v16 = sub_16C83C();
  v1[21] = v16;
  sub_888C(v16);
  v1[22] = v17;
  v19 = *(v18 + 64);
  v1[23] = sub_8BC0();
  v20 = sub_16C7DC();
  v1[24] = v20;
  sub_888C(v20);
  v1[25] = v21;
  v23 = *(v22 + 64);
  v1[26] = sub_8BC0();
  v24 = sub_16DBEC();
  v1[27] = v24;
  sub_888C(v24);
  v1[28] = v25;
  v27 = *(v26 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_96928()
{
  v101 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[8];
  v8 = sub_16DBAC();
  sub_8B48();
  v99 = v8;
  v98 = *(v3 + 16);
  v98(v1, v8, v2);
  (*(v4 + 16))(v5, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  if (v11)
  {
    v96 = v0[30];
    v17 = v0[10];
    v18 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = sub_16E7AC();
    v95 = v13;
    v21 = sub_3AB7C(v19, v20, &v100);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_C8E0();
    sub_16E68C();
    (*(v15 + 8))(v14, v16);
    v22 = sub_C9E0();
    v25 = sub_3AB7C(v22, v23, v24);

    *(v18 + 14) = v25;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v18, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v26 = *(v12 + 8);
    v26(v96, v95);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v26 = *(v12 + 8);
    v27 = sub_C9E0();
    v26(v27, v28);
  }

  v29 = v0[19];
  v30 = v0[20];
  v31 = v0[18];
  v32 = v0[8];
  sub_16C7CC();
  v33 = *(v29 + 88);
  v34 = sub_C9E0();
  if (v35(v34) == enum case for Parse.uso(_:))
  {
    v97 = v26;
    v36 = v0[22];
    v37 = v0[23];
    v38 = v0[21];
    v40 = v0[14];
    v39 = v0[15];
    v41 = v0[12];
    v42 = v0[13];
    v43 = v0[11];
    (*(v0[19] + 96))(v0[20], v0[18]);
    v44 = *(v36 + 32);
    v45 = sub_389C0();
    v46(v45);
    sub_16C82C();
    v47 = sub_16C88C();
    (*(v42 + 8))(v40, v41);
    sub_9AD9C(v47, v43);

    if (sub_369C(v43, 1, v39) != 1)
    {
      (*(v0[16] + 32))(v0[17], v0[11], v0[15]);
      if (sub_16C8CC())
      {
        v71 = v0[22];
        v70 = v0[23];
        v72 = v0[21];
        v73 = v0[9];
        (*(v0[16] + 8))(v0[17], v0[15]);
        v74 = sub_98BE8();
        v75(v74);
        v59 = *(v73 + 40);

        v58 = 1;
        goto LABEL_11;
      }

      v76 = v0[17];
      v77 = sub_16C8DC();
      v79 = v0[22];
      v78 = v0[23];
      v80 = v0[21];
      v82 = v0[16];
      v81 = v0[17];
      v83 = v0[15];
      if (v77)
      {
        v84 = *(v82 + 8);
        v85 = sub_389C0();
        v86(v85);
        v87 = sub_98BD8();
        v88(v87);
      }

      else
      {
        v89 = sub_16C8EC();
        v90 = *(v82 + 8);
        v91 = sub_389C0();
        v92(v91);
        v93 = sub_98BD8();
        v94(v93);
        if ((v89 & 1) == 0)
        {
          v59 = *(v0[9] + 40);

          v58 = 2;
          goto LABEL_11;
        }
      }

      v59 = *(v0[9] + 40);

      v58 = 0;
      goto LABEL_11;
    }

    v48 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_C878(v48, &qword_1C6FF0, &unk_1730A0);
    v26 = v97;
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v49 = v0[29];
  v50 = v0[27];
  sub_8B48();
  v98(v49, v99, v50);
  v51 = sub_16DBDC();
  v52 = sub_16E37C();
  v53 = os_log_type_enabled(v51, v52);
  v55 = v0[28];
  v54 = v0[29];
  v56 = v0[27];
  if (v53)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&def_259DC, v51, v52, "Received unsupported type of input", v57, 2u);
    sub_8A2C();
  }

  v26(v54, v56);
  v58 = 0;
  v59 = 1;
LABEL_11:
  v61 = v0[29];
  v60 = v0[30];
  v62 = v0[26];
  v63 = v0[23];
  v64 = v0[20];
  v65 = v0[17];
  v66 = v0[14];
  v67 = v0[11];

  v68 = v0[1];

  return v68(v58, v59);
}

uint64_t sub_96EE8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_16C7DC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_4304();
  v21 = v20 - v19;
  v22 = sub_16DBAC();
  sub_8B48();
  v34 = v13;
  (*(v16 + 16))(v21, v22, v13);
  (*(v7 + 16))(v12, a1, v4);
  v23 = sub_16DBDC();
  v24 = sub_16E36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_16E7AC();
    v28 = sub_3AB7C(v26, v27, &v35);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_C8E0();
    v29 = sub_16E68C();
    v31 = v30;
    (*(v7 + 8))(v12, v4);
    v32 = sub_3AB7C(v29, v31, &v35);

    *(v25 + 14) = v32;
    _os_log_impl(&def_259DC, v23, v24, "%s Handling Input: %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  (*(v16 + 8))(v21, v34);
  return sub_16C47C();
}

uint64_t sub_971EC()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_9736C()
{
  v29 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  sub_16DBBC();
  sub_8B48();
  v5 = *(v2 + 16);
  v6 = sub_389C0();
  v7(v6);
  swift_errorRetain();
  v8 = sub_16DBDC();
  v9 = sub_16E36C();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  if (v10)
  {
    v14 = v0[13];
    v15 = v0[11];
    v27 = v0[21];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v16 = 136315394;
    v19 = sub_16E7AC();
    v26 = v11;
    v21 = sub_3AB7C(v19, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v17 = v22;
    _os_log_impl(&def_259DC, v8, v9, "%s makeErrorResponse called with error: %@", v16, 0x16u);
    sub_C878(v17, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v18);
    sub_8A2C();
    sub_8A2C();

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v23 = *sub_2D20((v0[12] + 88), *(v0[12] + 112));
  v24 = swift_task_alloc();
  v0[24] = v24;
  *v24 = v0;
  v24[1] = sub_975B8;

  return sub_7AA38();
}

uint64_t sub_975B8()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_9770C()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v7 + 224, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_978A0;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_978A0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_8A60();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_979A0()
{
  sub_C9EC();
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);

  v7 = sub_98BD8();
  v8(v7);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v9();
}

uint64_t sub_97A54()
{
  sub_386A8();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = sub_98BE8();
  v5(v4);
  sub_2D64((v0 + 16));
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);

  sub_C9BC();

  return v11();
}

uint64_t sub_97B00()
{
  sub_8A88();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(sub_2440(&qword_1C5990, &unk_16F760) - 8) + 64);
  v1[14] = sub_8BC0();
  v4 = *(*(sub_16C46C() - 8) + 64);
  v1[15] = sub_8BC0();
  v5 = sub_16C7BC();
  v1[16] = v5;
  sub_888C(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_97BFC()
{
  sub_C9EC();
  v1 = v0[13];
  sub_8388(v1 + 128, (v0 + 2));
  v2 = sub_2D20(v0 + 2, v0[5]);
  v3 = *(v1 + 32);
  v4 = *v2;

  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_97CE0;
  v6 = v0[13];

  return (sub_10B1F0)(v3, v4, v6);
}

uint64_t sub_97CE0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  *(v2 + 160) = v6;
  *(v2 + 168) = v0;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_97DE4()
{
  sub_C9EC();
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_16C75C();
  sub_16C79C();
  sub_98244();
  v6 = sub_16C55C();
  sub_214C(v4, 0, 1, v6);
  sub_16C78C();
  sub_16C77C();
  sub_16C7AC();
  v7 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v5 + 224, (v0 + 7));
  v8 = v0[10];
  v9 = v0[11];
  sub_2D20(v0 + 7, v8);
  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_97F74;
  v12 = v0[20];
  v13 = v0[18];
  v14 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v8, v9);
}

uint64_t sub_97F74()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_8A60();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_98074()
{
  sub_386A8();
  sub_2D64(v0 + 2);
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];

  sub_C9BC();

  return v5();
}

uint64_t sub_980F4()
{
  sub_C9EC();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 56));

  sub_C9BC();

  return v6();
}

uint64_t sub_981A4()
{
  sub_386A8();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  v4 = sub_98BE8();
  v5(v4);
  sub_2D64((v0 + 56));
  v6 = *(v0 + 184);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  sub_C9BC();

  return v10();
}

uint64_t sub_98244()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_4304();
  v6 = v5 - v4;
  v7 = sub_16C8BC();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_16C8AC();
  sub_16C95C();
  (*(v10 + 16))(v15, v17, v7);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v18 = *(v1 + 72);
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_16F530;
  (*(v2 + 16))(v20 + v19, v6, v0);
  sub_16C53C();
  (*(v2 + 8))(v6, v0);
  return (*(v10 + 8))(v17, v7);
}

void *sub_98474()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_C938((v0 + 6));
  v3 = v0[26];

  v4 = v0[27];

  sub_2D64(v0 + 28);
  return v0;
}

uint64_t sub_984BC()
{
  sub_98474();

  return _swift_deallocClassInstance(v0, 264, 7);
}

uint64_t sub_98518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_985B0;

  return sub_96698();
}

uint64_t sub_985B0()
{
  sub_C9EC();
  v3 = v2;
  v5 = v4;
  sub_C9D4();
  v7 = v6;
  sub_8A60();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  sub_8A60();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_986BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_98BD4;

  return sub_97B00();
}

uint64_t sub_98754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_98BD4;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t sub_98808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_98BD4;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t sub_988BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_98970;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_98970()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_8A60();
  *v4 = v3;

  sub_C9BC();

  return v5();
}

uint64_t sub_98A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_98BD4;

  return sub_971EC();
}

uint64_t sub_98AFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a10;
  v23 = a11;
  v19 = sub_9910(&v21);
  (*(*(a10 - 8) + 32))(v19, a8, a10);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  memcpy((a9 + 48), a5, 0xA0uLL);
  *(a9 + 208) = a6;
  *(a9 + 216) = a7;
  sub_1E1A8(&v21, a9 + 224);
  return a9;
}

uint64_t sub_98C08()
{
  sub_92310();

  return sub_16C33C();
}

uint64_t sub_98C5C()
{
  sub_8A88();
  v1[52] = v2;
  v1[53] = v0;
  v3 = sub_16DBEC();
  v1[54] = v3;
  sub_888C(v3);
  v1[55] = v4;
  v6 = *(v5 + 64);
  v1[56] = sub_8BC0();
  v7 = type metadata accessor for GenericButtonModel();
  v1[57] = v7;
  v8 = *(*(v7 - 8) + 64);
  v1[58] = sub_8BC0();
  v9 = sub_16BE9C();
  v1[59] = v9;
  sub_888C(v9);
  v1[60] = v10;
  v12 = *(v11 + 64);
  v1[61] = sub_8BC0();
  v13 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v14 = sub_16C46C();
  v1[64] = v14;
  sub_888C(v14);
  v1[65] = v15;
  v17 = *(v16 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v18 = sub_16C7BC();
  v1[68] = v18;
  sub_888C(v18);
  v1[69] = v19;
  v21 = *(v20 + 64);
  v1[70] = sub_8BC0();
  v22 = sub_17960();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_98E64()
{
  sub_8A88();
  v1 = *(*(v0 + 424) + 288);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  v2[1] = sub_98EF4;

  return sub_3F070();
}

uint64_t sub_98EF4()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  v4 = *(v2 + 568);
  v8 = *v1;
  *(v3 + 576) = v5;
  *(v3 + 584) = v0;

  if (v0)
  {
    v6 = sub_99978;
  }

  else
  {
    v6 = sub_99004;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_99004()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[63];
  v7 = v0[64];
  v8 = v0[62];
  v9 = v0[59];
  sub_16C45C();
  (*(v5 + 16))(v4, v3, v7);
  sub_16C75C();
  (*(v5 + 8))(v3, v7);
  sub_16C7AC();
  v10 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16BE8C();
  sub_372FC(v6, v8);
  if (sub_369C(v8, 1, v9) == 1)
  {
    v11 = v0[72];
    v12 = v0[53];
    sub_C878(v0[62], &qword_1C57F8, &unk_172510);
    v13 = v12[33];
    v14 = v12[34];
    sub_2D20(v12 + 30, v13);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v15 = swift_allocObject();
    v0[76] = v15;
    *(v15 + 16) = xmmword_170F70;
    *(v15 + 32) = v11;
    v16 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v17 = v11;
    swift_task_alloc();
    sub_179E8();
    v0[77] = v18;
    *v18 = v19;
    v18[1] = sub_996D4;
    v20 = v0[70];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 22, v15, v20, v13, v14);
  }

  else
  {
    v21 = v0[72];
    v22 = v0[61];
    v23 = v0[59];
    v24 = v0[60];
    v26 = v0[57];
    v25 = v0[58];
    v27 = v0[53];
    (*(v24 + 32))(v22, v0[62], v23);
    v28 = v27[35];
    v29 = sub_9A820(0xD000000000000012, 0x800000000017ED40, 0xD000000000000010, 0x800000000017ED60);
    v31 = v30;
    (*(v24 + 16))(v25 + *(v26 + 20), v22, v23);
    *v25 = v29;
    v25[1] = v31;
    v32 = v27[33];
    v33 = v27[34];
    sub_2D20(v27 + 30, v32);
    v0[40] = type metadata accessor for WellnessSnippets();
    v0[41] = sub_17548();
    v34 = sub_9910(v0 + 37);
    sub_175A0(v25, v34);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v35 = swift_allocObject();
    v0[74] = v35;
    *(v35 + 16) = xmmword_170F70;
    *(v35 + 32) = v21;
    v36 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v37 = v21;
    swift_task_alloc();
    sub_179E8();
    v0[75] = v38;
    *v38 = v39;
    v38[1] = sub_993FC;
    v40 = v0[70];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v0 + 32, v0 + 37, v35, v40, v32, v33);
  }
}

uint64_t sub_993FC()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 296));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_99504()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 560);
  v14 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = *(v0 + 416);
  sub_8388(v0 + 256, v0 + 336);
  v8 = swift_allocObject();
  sub_17464((v0 + 336), v8 + 16);
  sub_16C73C();
  v9 = sub_16C1DC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 408) = sub_16C1CC();
  sub_16C4EC();

  sub_2D64((v0 + 256));
  sub_17604(v6);
  (*(v3 + 8))(v4, v5);
  sub_C878(v14, &qword_1C57F8, &unk_172510);
  (*(v2 + 8))(v16, v15);
  sub_99D84();

  sub_C9BC();

  return v12();
}

uint64_t sub_996D4()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 616);
  v3 = *(v1 + 608);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_997D4()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 504);
  v6 = *(v0 + 416);
  sub_8388(v0 + 176, v0 + 216);
  v7 = swift_allocObject();
  sub_17464((v0 + 216), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + 400) = sub_16C1CC();
  sub_16C4EC();

  sub_2D64((v0 + 176));
  sub_C878(v5, &qword_1C57F8, &unk_172510);
  (*(v3 + 8))(v2, v4);
  sub_99D84();

  sub_C9BC();

  return v11();
}

uint64_t sub_99978()
{
  v1 = v0[73];
  v3 = v0[55];
  v2 = v0[56];
  v4 = v0[54];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[73];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&def_259DC, v6, v7, "Couldn't execute wellness#regionNotSupported pattern. Error: %@", v10, 0xCu);
    sub_C878(v11, &qword_1C57B8, &qword_1715A0);
  }

  else
  {
    v13 = v0[73];
  }

  v14 = v0[53];
  v15 = v0[52];
  (*(v0[55] + 8))(v0[56], v0[54]);
  sub_8284(v14 + 80, (v0 + 2));
  sub_82E0();
  sub_16C4EC();
  sub_8334((v0 + 2));
  sub_99D84();

  sub_C9BC();

  return v16();
}

uint64_t sub_99BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_98C5C();
}

uint64_t sub_99C38()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_99C70()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_99CF8()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_99D84()
{
  v2 = v0[70];
  v3 = v0[67];
  v4 = v0[66];
  v6 = v0[62];
  v5 = v0[63];
  v7 = v0[61];
  v8 = v0[58];
  v9 = v0[56];
}

_BYTE *storeEnumTagSinglePayload for WellnessIntentTemporalDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x99E7CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_99EB8()
{
  result = qword_1C8E28;
  if (!qword_1C8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8E28);
  }

  return result;
}

double sub_99F0C(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4)
{
  v8 = sub_16DBEC();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_16E69C();
  v17 = sub_42F0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v23 = __chkstk_darwin(v22);
  v24 = __chkstk_darwin(v23);
  v26 = &v71 - v25;
  __chkstk_darwin(v24);
  v30 = &v71 - v29;
  if (a2)
  {
    v31 = sub_9A56C(a1, a2, a3);
    v32 = __exp10(v31);
    v33 = a3;
    if ((a3 - 89 > 0x3E || (sub_9A7F0(), v34)) && ((v33 - 155) > 0x2B || (sub_9A7D4(), v34)) && v33 && v33 != 4)
    {
      v36 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
      sub_9A814();
      v54(v30, v36, v16);
    }

    else
    {
      sub_9A814();
      v35(v30);
      LODWORD(v36) = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
    }

    v37 = v32 * a4;
    v74 = v37;
    (*(v19 + 16))(v26, v30, v16);
    v38 = (*(v19 + 88))(v26, v16);
    if (v38 == v36)
    {
      v39 = round(v37);
    }

    else if (v38 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
    {
      v39 = rint(v37);
    }

    else if (v38 == enum case for FloatingPointRoundingRule.up(_:))
    {
      v39 = ceil(v37);
    }

    else if (v38 == enum case for FloatingPointRoundingRule.down(_:))
    {
      v39 = floor(v37);
    }

    else
    {
      if (v38 != enum case for FloatingPointRoundingRule.towardZero(_:))
      {
        if (v38 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
        {
          v60 = sub_16E35C();
          v61 = *(v19 + 8);
          v62 = sub_9A808();
          v63(v62);
          v64 = floor(v37);
          v65 = ceil(v37);
          if (v60)
          {
            v39 = v64;
          }

          else
          {
            v39 = v65;
          }
        }

        else
        {
          sub_16E34C();
          v67 = *(v19 + 8);
          v68 = sub_9A808();
          v67(v68);
          (v67)(v26, v16);
          v39 = v74;
        }

        return v39 / v32;
      }

      v39 = trunc(v37);
    }

    v56 = *(v19 + 8);
    v57 = sub_9A808();
    v58(v57);
    return v39 / v32;
  }

  v72 = v28;
  v40 = v27;
  v41 = sub_16DBBC();
  swift_beginAccess();
  (*(v11 + 16))(v15, v41, v8);
  v42 = sub_16DBDC();
  v43 = sub_16E37C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&def_259DC, v42, v43, "Missing unit for decimalPlaces lookup. Rounding to 0 places.", v44, 2u);
  }

  (*(v11 + 8))(v15, v8);
  v45 = a3;
  if ((a3 - 89 > 0x3E || (sub_9A7F0(), v34)) && ((v45 - 155) > 0x2B || (sub_9A7D4(), v34)) && v45 && v45 != 4)
  {
    v48 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
    sub_9A814();
    v46 = v40;
    v55(v40, v48, v16);
  }

  else
  {
    sub_9A814();
    v46 = v40;
    v47(v40);
    LODWORD(v48) = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  }

  v73 = a4;
  (*(v19 + 16))(v72, v46, v16);
  v49 = *(v19 + 88);
  v50 = sub_9A808();
  v52 = v51(v50);
  if (v52 == v48)
  {
    v53 = round(a4);
LABEL_44:
    (*(v19 + 8))(v46, v16);
    return v53;
  }

  if (v52 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v53 = rint(a4);
    goto LABEL_44;
  }

  if (v52 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v53 = ceil(a4);
    goto LABEL_44;
  }

  if (v52 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v53 = floor(a4);
    goto LABEL_44;
  }

  if (v52 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v53 = trunc(a4);
    goto LABEL_44;
  }

  if (v52 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    v66 = sub_16E35C();
    (*(v19 + 8))(v46, v16);
    if (v66)
    {
      return floor(a4);
    }

    else
    {
      return ceil(a4);
    }
  }

  else
  {
    sub_16E34C();
    v69 = *(v19 + 8);
    v69(v46, v16);
    v70 = sub_9A808();
    (v69)(v70);
    return v73;
  }
}

uint64_t sub_9A56C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 147 <= 0x1B)
  {
    if (((1 << (a3 + 109)) & 0x8800019) != 0)
    {
      return 1;
    }

    if (a3 == 162)
    {
      v6 = a1 == 109 && a2 == 0xE100000000000000;
      if (!v6 && (sub_9A7B8() & 1) == 0)
      {
        v7 = a1 == 28003 && a2 == 0xE200000000000000;
        if (!v7 && (sub_9A7B8() & 1) == 0)
        {
          if (a1 == 29798 && a2 == 0xE200000000000000)
          {
            return 1;
          }

          return (sub_9A7B8() & 1) != 0;
        }
      }

      return 2;
    }
  }

  if (a3 == 89)
  {
    v11 = a1 == 7102787 && a2 == 0xE300000000000000;
    if (v11 || (sub_9A7B8() & 1) != 0)
    {
      return 1;
    }

    v12 = a1 == 1818321771 && a2 == 0xE400000000000000;
    if (v12 || (sub_9A7B8() & 1) != 0)
    {
      return 1;
    }

    if (a1 == 19051 && a2 == 0xE200000000000000)
    {
      return 0;
    }

    goto LABEL_49;
  }

  result = 2;
  if (a3 != 96 && a3 != 107)
  {
    if (a3 != 105)
    {
      if (a3 != 103)
      {
        return 0;
      }

      v9 = a1 == 0x2FA081E26C6F6D6DLL && a2 == 0xAC0000004CA081E2;
      if (v9 || (sub_9A7B8() & 1) != 0)
      {
        return 2;
      }

      if (a1 == 0x4C642F676DLL && a2 == 0xE500000000000000)
      {
        return 0;
      }

LABEL_49:
      sub_9A7B8();
      return 0;
    }

    if (a1 == 26475 && a2 == 0xE200000000000000)
    {
      return 2;
    }

    v15 = sub_9A7B8();
    v17 = a1 == 29811 && a2 == 0xE200000000000000;
    result = 2;
    if ((v15 & 1) == 0 && !v17)
    {
      if ((sub_9A7B8() & 1) == 0)
      {
        if (a1 == 7561836 && a2 == 0xE300000000000000)
        {
          return 1;
        }

        return (sub_9A7B8() & 1) != 0;
      }

      return 2;
    }
  }

  return result;
}

uint64_t sub_9A7B8()
{

  return sub_16E6BC();
}

uint64_t sub_9A820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v79._countAndFlagsBits = a3;
  v79._object = a4;
  v71 = a1;
  v6 = sub_16C4AC();
  v7 = sub_42F0(v6);
  v66 = v8;
  v67 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_4304();
  v65 = v12 - v11;
  v13 = sub_16C5DC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v73 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v70 = &v63 - v21;
  v22 = sub_2440(&qword_1C8E30, &qword_174AF8);
  v23 = sub_4348(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v69 = &v63 - v26;
  v27 = sub_2440(&qword_1C6850, &unk_172440);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  sub_9C214();
  v29 = sub_16C5AC();
  v30 = sub_42F0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_4304();
  v37 = v36 - v35;
  sub_19320();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_C878(v4, &qword_1C6850, &unk_172440);
LABEL_15:

    return v71;
  }

  else
  {
    v63 = a2;
    (*(v32 + 32))(v37, v4, v29);
    result = sub_16C59C();
    v39 = result;
    v40 = 0;
    v78 = *(result + 16);
    v74 = v16 + 8;
    v75 = v16 + 16;
    v68 = (v16 + 32);
    v72 = &_swiftEmptyArrayStorage;
    v41 = v16;
    v42 = v70;
    v76 = v32;
    v77 = v37;
    while (v78 != v40)
    {
      if (v40 >= *(v39 + 16))
      {
        __break(1u);
        return result;
      }

      v43 = v29;
      v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v45 = v39;
      v46 = *(v41 + 72);
      v47 = v41;
      (*(v41 + 16))(v42, v39 + v44 + v46 * v40, v13);
      sub_16C5BC();
      v48 = sub_16E28C(v79);

      if (v48)
      {
        v64 = *v68;
        v64(v73, v42, v13);
        v51 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v51;
        v80 = v51;
        v54 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3B15C(0, v51[2] + 1, 1);
          v42 = v70;
          v53 = v80;
        }

        v39 = v45;
        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          sub_3B15C(v55 > 1, v56 + 1, 1);
          v42 = v70;
          v53 = v80;
        }

        ++v40;
        v53[2] = v56 + 1;
        v72 = v53;
        v57 = v53 + v44 + v56 * v46;
        v13 = v54;
        result = (v64)(v57, v73, v54);
        v29 = v43;
        v32 = v76;
        v37 = v77;
        v41 = v47;
      }

      else
      {
        v49 = sub_9C228();
        result = v50(v49);
        ++v40;
        v29 = v43;
        v32 = v76;
        v37 = v77;
        v41 = v47;
      }
    }

    v58 = v69;
    sub_9ADB4(v72, &type metadata accessor for TemplatingSection, v69);

    if (sub_369C(v58, 1, v13) == 1)
    {
      (*(v32 + 8))(v37, v29);
      sub_C878(v58, &qword_1C8E30, &qword_174AF8);
      goto LABEL_15;
    }

    v60 = v65;
    sub_16C5CC();
    v61 = sub_9C228();
    v62(v61);
    v59 = sub_16C49C();
    (*(v66 + 8))(v60, v67);
    (*(v32 + 8))(v37, v29);
  }

  return v59;
}

uint64_t sub_9ADB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_214C(a3, v8, 1, v7);
}

id sub_9AE60(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_16E54C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  sub_3B360(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_16E48C();
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_9AEDC()
{
  sub_8A88();
  *(v0 + 488) = v30;
  *(v0 + 296) = v1;
  *(v0 + 304) = v2;
  *(v0 + 280) = v3;
  *(v0 + 288) = v4;
  *(v0 + 264) = v5;
  *(v0 + 272) = v6;
  v7 = sub_16DBEC();
  *(v0 + 312) = v7;
  sub_888C(v7);
  *(v0 + 320) = v8;
  v10 = *(v9 + 64);
  *(v0 + 328) = sub_8C38();
  *(v0 + 336) = swift_task_alloc();
  v11 = type metadata accessor for GenericButtonModel();
  *(v0 + 344) = v11;
  sub_4348(v11);
  v13 = *(v12 + 64) + 15;
  *(v0 + 352) = swift_task_alloc();
  v14 = sub_16C7BC();
  *(v0 + 360) = v14;
  sub_888C(v14);
  *(v0 + 368) = v15;
  v17 = *(v16 + 64);
  *(v0 + 376) = sub_8C38();
  *(v0 + 384) = swift_task_alloc();
  v18 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v18);
  v20 = *(v19 + 64);
  *(v0 + 392) = sub_8C38();
  *(v0 + 400) = swift_task_alloc();
  v21 = sub_16BE9C();
  *(v0 + 408) = v21;
  sub_888C(v21);
  *(v0 + 416) = v22;
  v24 = *(v23 + 64);
  *(v0 + 424) = sub_8C38();
  *(v0 + 432) = swift_task_alloc();
  v25 = sub_17960();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_9B0B4()
{
  v1 = *(v0 + 288);
  v2 = v1[4];
  sub_2D20(v1, v1[3]);
  v3 = *(v2 + 8);
  v4 = sub_C9F8();
  v3(v4);
  v5 = *(v0 + 48);
  sub_2D20((v0 + 16), *(v0 + 40));
  if (sub_16C40C())
  {
    sub_2D64((v0 + 16));
LABEL_4:
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    v11 = *(v0 + 304);
    v12 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    v14 = v13;
    sub_16BE8C();
    if (sub_369C(v9, 1, v10) == 1)
    {
      v15 = *(v0 + 400);
      v16 = *(v0 + 336);
      v18 = *(v0 + 312);
      v17 = *(v0 + 320);

      sub_C878(v15, &qword_1C57F8, &unk_172510);
      v19 = sub_16DBBC();
      swift_beginAccess();
      (*(v17 + 16))(v16, v19, v18);
      v20 = sub_16DBDC();
      v21 = sub_16E36C();
      if (os_log_type_enabled(v20, v21))
      {
        *swift_slowAlloc() = 0;
        sub_1B9D0(&def_259DC, v22, v23, "Couldn't create URL for phoneMedications, returning GenericErrorFlow");
      }

      v24 = *(v0 + 336);
      v25 = *(v0 + 312);
      v26 = *(v0 + 320);
      v27 = *(v0 + 264);

      v28 = *(v26 + 8);
      v29 = sub_C9F8();
      v30(v29);
      goto LABEL_8;
    }

    v33 = *(v0 + 432);
    v121 = v14;
    v122 = v12;
    v35 = *(v0 + 408);
    v34 = *(v0 + 416);
    v36 = *(v0 + 400);
    v37 = *(v0 + 384);
    v39 = *(v0 + 360);
    v38 = *(v0 + 368);
    v40 = *(v0 + 352);
    v119 = v33;
    v120 = *(v0 + 344);
    v41 = *(v0 + 296);
    v43 = *(v0 + 272);
    v42 = *(v0 + 280);
    (*(v34 + 32))();
    (*(v38 + 16))(v37, v42, v39);
    v44 = [v43 catId];
    sub_16E1BC();

    sub_16C76C();
    (*(v34 + 16))(v40 + *(v120 + 20), v119, v35);
    *v40 = v122;
    v40[1] = v121;
    v45 = v41[4];
    sub_2D20(v41, v41[3]);
    *(v0 + 200) = type metadata accessor for WellnessSnippets();
    *(v0 + 208) = sub_17548();
    v46 = sub_9910((v0 + 176));
    sub_175A0(v40, v46);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v47 = swift_allocObject();
    *(v0 + 440) = v47;
    *(v47 + 16) = xmmword_170F70;
    *(v47 + 32) = v43;
    v48 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v49 = v43;
    v50 = swift_task_alloc();
    *(v0 + 448) = v50;
    *v50 = v0;
    v50[1] = sub_9B9CC;
    v51 = *(v0 + 384);
LABEL_12:
    sub_4B510();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v52, v53, v54, v55, v56, v57);
  }

  v6 = sub_C9F8();
  v3(v6);
  v7 = *(v0 + 88);
  sub_2D20((v0 + 56), *(v0 + 80));
  sub_C9F8();
  v8 = sub_16C3FC();
  sub_2D64((v0 + 56));
  sub_2D64((v0 + 16));
  if (v8)
  {
    goto LABEL_4;
  }

  v59 = *(v0 + 488);
  (*(*(v0 + 368) + 16))(*(v0 + 376), *(v0 + 280), *(v0 + 360));
  if (v59 == 1)
  {
    v60 = *(v0 + 408);
    v61 = *(v0 + 392);
    v62 = *(v0 + 304);
    v63 = sub_9A820(0xD000000000000010, 0x800000000017E960, 0xD000000000000012, 0x800000000017E980);
    v65 = v64;
    sub_16BE8C();
    if (sub_369C(v61, 1, v60) == 1)
    {
      v66 = *(v0 + 392);
      v68 = *(v0 + 320);
      v67 = *(v0 + 328);
      v69 = *(v0 + 312);

      sub_C878(v66, &qword_1C57F8, &unk_172510);
      v70 = sub_16DBBC();
      swift_beginAccess();
      (*(v68 + 16))(v67, v70, v69);
      v71 = sub_16DBDC();
      v72 = sub_16E36C();
      if (os_log_type_enabled(v71, v72))
      {
        *swift_slowAlloc() = 0;
        sub_1B9D0(&def_259DC, v73, v74, "Couldn't create URL for watchMedications, returning GenericErrorFlow");
      }

      v76 = *(v0 + 368);
      v75 = *(v0 + 376);
      v77 = *(v0 + 360);
      v79 = *(v0 + 320);
      v78 = *(v0 + 328);
      v80 = *(v0 + 312);
      v27 = *(v0 + 264);

      (*(v79 + 8))(v78, v80);
      v81 = *(v76 + 8);
      v82 = sub_C9F8();
      v83(v82);
LABEL_8:
      *(v27 + 32) = 0;
      *v27 = 0u;
      *(v27 + 16) = 0u;
      sub_9C1F0();

      sub_C9BC();
      sub_4B510();

      __asm { BRAA            X1, X16 }
    }

    v102 = *(v0 + 416);
    v101 = *(v0 + 424);
    v103 = *(v0 + 408);
    v123 = *(v0 + 376);
    v104 = v63;
    v105 = *(v0 + 344);
    v106 = *(v0 + 352);
    v107 = *(v0 + 296);
    v108 = *(v0 + 272);
    (*(v102 + 32))(v101, *(v0 + 392), v103);
    (*(v102 + 16))(v106 + *(v105 + 20), v101, v103);
    *v106 = v104;
    v106[1] = v65;
    v109 = [v108 catId];
    sub_16E1BC();

    sub_16C76C();
    v110 = v107[4];
    sub_2D20(v107, v107[3]);
    *(v0 + 120) = type metadata accessor for WellnessSnippets();
    *(v0 + 128) = sub_17548();
    v111 = sub_9910((v0 + 96));
    sub_175A0(v106, v111);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v112 = swift_allocObject();
    *(v0 + 456) = v112;
    *(v112 + 16) = xmmword_170F70;
    *(v112 + 32) = v108;
    v113 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v114 = v108;
    v115 = swift_task_alloc();
    *(v0 + 464) = v115;
    *v115 = v0;
    v115[1] = sub_9BBE0;
    v116 = *(v0 + 376);
    v117 = *(v0 + 264);
    goto LABEL_12;
  }

  v84 = *(v0 + 376);
  v85 = *(v0 + 296);
  v86 = *(v0 + 272);
  v87 = [v86 catId];
  sub_16E1BC();

  sub_16C76C();
  v88 = v85[4];
  sub_2D20(v85, v85[3]);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v89 = swift_allocObject();
  *(v0 + 472) = v89;
  *(v89 + 16) = xmmword_170F70;
  *(v89 + 32) = v86;
  v90 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v91 = v86;
  v92 = swift_task_alloc();
  *(v0 + 480) = v92;
  *v92 = v0;
  v92[1] = sub_9BDE0;
  v93 = *(v0 + 376);
  v94 = *(v0 + 264);
  sub_4B510();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v95, v96, v97, v98, v99);
}

uint64_t sub_9B9CC()
{
  sub_8A88();
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v8 = *v0;
  sub_C990();
  *v3 = v8;

  sub_2D64((v8 + 176));
  v4 = sub_17960();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9BAD8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 264);
  sub_17604(*(v0 + 352));
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  sub_17464((v0 + 136), v7);
  sub_9C1F0();

  sub_C9BC();

  return v8();
}

uint64_t sub_9BBE0()
{
  sub_8A88();
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v8 = *v0;
  sub_C990();
  *v3 = v8;

  sub_2D64((v8 + 96));
  v4 = sub_17960();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_9BCEC()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  sub_17604(v0[44]);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);
  sub_9C1F0();

  sub_C9BC();

  return v7();
}

uint64_t sub_9BDE0()
{
  sub_8A88();
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9BEE4()
{
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_9C1F0();

  sub_C9BC();

  return v1();
}

uint64_t sub_9BFAC(uint64_t a1)
{
  v3 = sub_2440(&qword_1C57E0, &unk_171C60);
  v4 = sub_4348(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_9C214();
  v7 = sub_16BF5C();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_4304();
  v15 = v14 - v13;
  sub_9C180(a1, v1);
  if (sub_369C(v1, 1, v7) == 1)
  {
    sub_C878(v1, &qword_1C57E0, &unk_171C60);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v15, v1, v7);
    v17 = [objc_allocWithZone(NSDateFormatter) init];
    [v17 setTimeStyle:1];
    isa = sub_16BEEC().super.isa;
    v19 = [v17 stringFromDate:isa];

    v16 = sub_16E1BC();
    (*(v10 + 8))(v15, v7);
  }

  return v16;
}

uint64_t sub_9C180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C1F0()
{
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
}

id sub_9C23C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_8427C();
  v1 = sub_16E1AC();

  v2 = [v0 initWithSymbol:v1];

  return v2;
}

uint64_t sub_9C2AC()
{
  v0 = sub_16D63C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for WellnessQueryingCATsSimple();
  sub_16D62C();
  result = sub_16D5FC();
  qword_1D7258 = result;
  return result;
}

uint64_t sub_9C338()
{
  sub_8A88();
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  *(v0 + 208) = v3;
  *(v0 + 120) = v4;
  v5 = sub_16DBEC();
  *(v0 + 144) = v5;
  sub_888C(v5);
  *(v0 + 152) = v6;
  v8 = *(v7 + 64);
  *(v0 + 160) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_9C3E4()
{
  sub_C9EC();
  v2 = *(v1 + 208);
  v3 = (v2 - 89);
  if (v3 <= 0x3E)
  {
    if (((1 << (v2 - 89)) & 0x6400000000004113) != 0)
    {
LABEL_13:
      swift_task_alloc();
      sub_179E8();
      *(v1 + 168) = v16;
      *v16 = v17;
      sub_A780C(v16);
      sub_38F74();

      return sub_A24E0();
    }

    if (((1 << (v2 - 89)) & 0x40080) != 0)
    {
      swift_task_alloc();
      sub_179E8();
      *(v1 + 176) = v4;
      *v4 = v5;
      sub_A780C(v4);
      sub_38F74();

      return sub_A45FC();
    }

    if (v3 == 16)
    {
      swift_task_alloc();
      sub_179E8();
      *(v1 + 200) = v8;
      *v8 = v9;
      sub_A7678(v8);
      sub_38F74();

      return sub_A0410(v10, v11, v12, v13);
    }
  }

  v15 = (v2 - 155);
  if (v15 > 0x26)
  {
    goto LABEL_24;
  }

  if (((1 << v15) & 0x40200C0011) != 0)
  {
    goto LABEL_13;
  }

  if (v15 != 7)
  {
    if (v15 == 15)
    {
      swift_task_alloc();
      sub_179E8();
      *(v1 + 192) = v19;
      *v19 = v20;
      sub_A7678(v19);
      sub_38F74();

      return sub_9E850(v21, v22, v23, v24);
    }

LABEL_24:
    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    sub_A796C();
    sub_A792C();
    if (v0)
    {
      sub_60248();
    }

    else
    {
      v30 = *(v1 + 152);
      v29 = *(v1 + 160);
      v31 = *(v1 + 144);
      sub_16DBBC();
      sub_8B48();
      v32 = sub_3BD68();
      v33(v32);
      v34 = sub_16DBDC();
      v35 = sub_16E37C();
      if (sub_1BA1C(v35))
      {
        v36 = sub_1BA38();
        sub_1BA50(v36);
        sub_1B9D0(&def_259DC, v37, v38, "#GenerateQueryResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
        sub_1BA00();
      }

      v40 = *(v1 + 152);
      v39 = *(v1 + 160);
      v41 = *(v1 + 144);
      v42 = *(v1 + 120);

      (*(v40 + 8))(v39, v41);
      sub_8748(v1 + 16, &qword_1C5ED0, &qword_171090);
      sub_A7658();
    }

    v43 = *(v1 + 160);

    sub_C9BC();
    sub_38F74();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  sub_179E8();
  *(v1 + 184) = v26;
  *v26 = v27;
  sub_A7678(v26);
  sub_38F74();

  return sub_9CD34();
}

uint64_t sub_9C798()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 168);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9C87C()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9C960()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 184);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9CA44()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 192);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_9CB28()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 200);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

void sub_9CC0C()
{
  sub_C9EC();
  sub_A796C();
  sub_A792C();
  if (v0)
  {
    sub_60248();
  }

  else
  {
    v3 = v1[19];
    v2 = v1[20];
    v4 = v1[18];
    sub_16DBBC();
    sub_8B48();
    v5 = sub_3BD68();
    v6(v5);
    v7 = sub_16DBDC();
    v8 = sub_16E37C();
    if (sub_1BA1C(v8))
    {
      v9 = sub_1BA38();
      sub_1BA50(v9);
      sub_1B9D0(&def_259DC, v10, v11, "#GenerateQueryResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
      sub_1BA00();
    }

    v13 = v1[19];
    v12 = v1[20];
    v14 = v1[18];
    v15 = v1[15];

    (*(v13 + 8))(v12, v14);
    sub_8748((v1 + 2), &qword_1C5ED0, &qword_171090);
    sub_A7658();
  }

  v16 = v1[20];

  sub_C9BC();
  sub_38F74();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_9CD34()
{
  sub_8A88();
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 600) = v3;
  *(v0 + 176) = v4;
  v5 = sub_16DBEC();
  *(v0 + 200) = v5;
  sub_888C(v5);
  *(v0 + 208) = v6;
  v8 = *(v7 + 64);
  *(v0 + 216) = sub_8C38();
  *(v0 + 224) = swift_task_alloc();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 256) = sub_8BC0();
  v12 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v12);
  v14 = *(v13 + 64);
  *(v0 + 264) = sub_8BC0();
  v15 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v15);
  v17 = *(v16 + 64);
  *(v0 + 272) = sub_8C38();
  *(v0 + 280) = swift_task_alloc();
  *(v0 + 288) = swift_task_alloc();
  Model = type metadata accessor for HeightQueryModel();
  *(v0 + 296) = Model;
  sub_4348(Model);
  v20 = *(v19 + 64);
  *(v0 + 304) = sub_8C38();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  v21 = type metadata accessor for SnippetHeaderModel();
  *(v0 + 336) = v21;
  sub_4348(v21);
  v23 = *(v22 + 64);
  *(v0 + 344) = sub_8C38();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  v24 = sub_16BE9C();
  *(v0 + 368) = v24;
  sub_888C(v24);
  *(v0 + 376) = v25;
  v27 = *(v26 + 64);
  *(v0 + 384) = sub_8BC0();
  v28 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v28);
  v30 = *(v29 + 64);
  *(v0 + 392) = sub_8BC0();
  v31 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v31);
  v33 = *(v32 + 64);
  *(v0 + 400) = sub_8C38();
  *(v0 + 408) = swift_task_alloc();
  *(v0 + 416) = swift_task_alloc();
  v34 = sub_17960();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_9CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = v24[52];
  v26 = v24[24];
  sub_A79E8(v26);
  v24[53] = v27;
  sub_A7C24(v26, v25);
  v28 = sub_A6F70(v26);
  v30 = sub_13A5C4(v28, v29);
  v32 = v31;
  v24[54] = v30;
  v24[55] = v31;

  if (v32)
  {
    v33 = v24[23];
    v24[56] = sub_A84A0(v26);
    v34 = [v33 start];
    if (v34)
    {
      v35 = v24[49];
      sub_16BF3C();
    }

    v61 = v24[49];
    v62 = sub_16BF5C();
    sub_A7740(v62);
    sub_8748(v61, &qword_1C57E0, &unk_171C60);
    v63 = swift_task_alloc();
    v24[57] = v63;
    *v63 = v24;
    sub_A73D4(v63);
    sub_A755C();

    return sub_6789C(v64, v65, v66);
  }

  else
  {
    v37 = v24[26];
    v36 = v24[27];
    v38 = v24[25];
    sub_16DBBC();
    sub_A7704();
    v39 = sub_A7894();
    v40(v39);
    v41 = sub_16DBDC();
    v42 = sub_16E37C();
    if (sub_4B3A8(v42))
    {
      *sub_1BA38() = 0;
      sub_3851C(&def_259DC, v43, v44, "Failed to execute height pattern: no unit found in intent response.");
      sub_8A2C();
    }

    v45 = v24[52];
    v47 = v24[26];
    v46 = v24[27];
    v48 = v24[25];
    v49 = v24[22];

    v50 = sub_A77A4();
    v51(v50);
    sub_8748(v45, &qword_1C57F8, &unk_172510);
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *(v49 + 32) = 0;
    sub_A7314();
    sub_A7374();

    sub_C9BC();
    sub_A755C();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

uint64_t sub_9D2E0()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 456);
  *v2 = *v0;
  *(v1 + 464) = v5;
  *(v1 + 472) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_9D3C8()
{
  sub_8A88();
  sub_208C0(*(v0 + 600));
  sub_680F8();
  *(v0 + 480) = v1;
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_9D460()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 488);
  v5 = *(v3 + 480);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v10 + 496) = v8;
  *(v10 + 504) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9D560()
{
  v218 = v0;
  if (!*(v0 + 504))
  {
    v8 = *(v0 + 440);

LABEL_7:

LABEL_8:
    v11 = *(v0 + 224);
    v12 = *(v0 + 200);
    v13 = *(v0 + 208);
    sub_16DBBC();
    sub_A7598();
    v14 = sub_3BD68();
    v15(v14);
    v16 = sub_16DBDC();
    v17 = sub_16E37C();
    if (sub_1BA1C(v17))
    {
      v18 = sub_1BA38();
      sub_1BA50(v18);
      sub_1B9D0(&def_259DC, v19, v20, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v21 = *(v0 + 448);
    v23 = *(v0 + 416);
    v22 = *(v0 + 424);
    v24 = *(v0 + 224);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    v27 = *(v0 + 176);

    v28 = sub_A7610();
    v29(v28);
    sub_8748(v23, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A7314();
    v188 = *(v0 + 288);
    v190 = *(v0 + 280);
    v192 = *(v0 + 272);
    v194 = *(v0 + 264);
    v197 = *(v0 + 256);
    v200 = *(v0 + 248);
    v203 = *(v0 + 240);
    v206 = *(v0 + 232);
    v210 = *(v0 + 224);
    v213 = *(v0 + 216);

    sub_C9BC();
    sub_A78E8();

    __asm { BRAA            X1, X16 }
  }

  if (!*(v0 + 472))
  {
    v9 = *(v0 + 440);
    v10 = *(v0 + 504);

    goto LABEL_7;
  }

  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 368);
  sub_A7028();
  v4 = sub_A76DC();
  if (sub_369C(v4, v5, v3) == 1)
  {
    v6 = *(v0 + 440);
    v7 = *(v0 + 408);

    sub_8748(v7, &qword_1C57F8, &unk_172510);
    goto LABEL_8;
  }

  v32 = *(v0 + 496);
  v179 = *(v0 + 464);
  v195 = *(v0 + 432);
  v198 = *(v0 + 440);
  v33 = *(v0 + 408);
  v183 = *(v0 + 384);
  v184 = *(v0 + 376);
  v34 = *(v0 + 360);
  v181 = *(v0 + 368);
  v35 = *(v0 + 336);
  v36 = *(v0 + 320);
  v193 = *(v0 + 312);
  v37 = *(v0 + 296);
  v211 = *(v0 + 288);
  v201 = *(v0 + 280);
  v204 = *(v0 + 400);
  v207 = *(v0 + 264);
  v186 = *(v0 + 256);
  v187 = *(v0 + 328);
  v189 = *(v0 + 248);
  v214 = *(v0 + 208);
  v191 = *(v0 + 200);
  v38 = *(v0 + 192);
  v39 = *(v0 + 600);
  (*(v184 + 32))();
  sub_16E23C();

  v40 = sub_25948(v39);
  v42 = v41;
  v43 = sub_208C0(v39);
  v44 = (v34 + *(v35 + 20));
  *v44 = v40;
  v44[1] = v42;
  v45 = (v34 + *(v35 + 24));
  *v45 = v43;
  v45[1] = v46;
  sub_5840C(v38);
  v48 = v47;
  v49 = sub_A6F70(v38);
  v51 = sub_99F0C(v49, v50, v39, v48);

  [v38 maximum];
  v53 = v52;
  v54 = sub_A6F70(v38);
  v56 = sub_99F0C(v54, v55, v39, v53);

  [v38 minimum];
  v58 = v57;
  v59 = sub_A6F70(v38);
  v61 = sub_99F0C(v59, v60, v39, v58);

  sub_16E23C();

  v62 = sub_16D5CC();
  v63 = sub_38744();
  sub_214C(v63, v64, v65, v62);
  [v38 minimum];
  [v38 maximum];
  sub_A6F70(v38);
  v66 = *&v56;
  sub_5845C();
  v180 = v67;

  sub_16E23C();
  v68 = sub_38744();
  sub_214C(v68, v69, v70, v62);
  (*(v184 + 16))(v204, v183, v181);
  v71 = sub_38744();
  sub_214C(v71, v72, v73, v181);
  sub_A71E8();
  sub_A70D8();
  v74 = sub_38744();
  sub_214C(v74, v75, v76, v35);
  v178 = sub_16C11C();
  sub_8AB4();
  sub_214C(v77, v78, v79, v80);
  v81 = v37[8];
  sub_8AB4();
  v196 = v62;
  sub_214C(v82, v83, v84, v62);
  v85 = v37[10];
  sub_8AB4();
  sub_214C(v86, v87, v88, v35);
  if (v51 == 0.0)
  {
    v89 = 0;
  }

  else
  {
    v89 = *&v51;
  }

  v182 = v89;
  sub_A7364(v37[5]);
  if (v56 == 0.0)
  {
    v66 = 0;
  }

  v90 = v36 + v37[6];
  *v90 = v66;
  *(v90 + 8) = v56 == 0.0;
  if (v61 == 0.0)
  {
    v91 = 0;
  }

  else
  {
    v91 = *&v61;
  }

  v92 = v36 + v37[7];
  v93 = (v36 + v37[11]);
  v94 = (v36 + v37[12]);
  v185 = (v36 + v37[13]);
  *v92 = v91;
  *(v92 + 8) = v61 == 0.0;
  v199 = v37;
  *(v36 + v37[9]) = v180 & 1;
  sub_A6FD0();
  sub_1E8C0(v204);
  sub_388E4();
  sub_214C(v95, v96, v97, v178);
  sub_5FFFC(v186, v36);
  sub_A6FD0();
  *v93 = sub_1EA54(v91, v61 == 0.0, v201);
  v93[1] = v98;
  *v94 = sub_1EA54(v66, v56 == 0.0, v201);
  v94[1] = v99;
  v100 = sub_1EA54(v182, v51 == 0.0, v201);
  v102 = v101;
  sub_8748(v207, &dword_1C63F8, &qword_171800);
  sub_8748(v204, &qword_1C57F8, &unk_172510);
  sub_8748(v201, &qword_1C5800, &unk_16F510);
  sub_8748(v211, &qword_1C5800, &unk_16F510);
  *v185 = v100;
  v185[1] = v102;
  sub_A7458();
  sub_A7080();
  *(v0 + 512) = sub_16DBBC();
  sub_8B48();
  v103 = *(v214 + 16);
  *(v0 + 520) = v103;
  sub_A7864();
  *(v0 + 528) = v104;
  v105 = sub_8427C();
  v103(v105);
  sub_A734C();
  sub_A70D8();
  v106 = sub_16DBDC();
  v107 = sub_16E36C();
  v108 = sub_4B3A8(v107);
  v109 = *(v0 + 312);
  if (v108)
  {
    v110 = *(v0 + 296);
    v111 = *(v0 + 304);
    v202 = *(v0 + 208);
    v205 = *(v0 + 200);
    v208 = *(v0 + 248);
    sub_8BD8();
    v217 = sub_A75B8();
    *v91 = 136315138;
    sub_A734C();
    sub_A70D8();
    v112 = sub_16E1EC();
    v114 = v113;
    sub_A7260();
    sub_A7130(v109, v115);
    v116 = sub_3AB7C(v112, v114, &v217);

    *(v91 + 4) = v116;
    sub_A7720(&def_259DC, v117, v118, "Query snippet model is: %s");
    sub_A7540();
    sub_8A2C();
    sub_A76C0();

    v119 = *(v202 + 8);
    v119(v208, v205);
  }

  else
  {
    v120 = *(v0 + 248);
    v121 = *(v0 + 200);
    v122 = *(v0 + 208);

    sub_A7260();
    sub_A7130(v109, v123);
    v119 = *(v122 + 8);
    v124 = sub_C9E0();
    (v119)(v124);
  }

  *(v0 + 536) = v119;
  v126 = *(v0 + 352);
  v125 = *(v0 + 360);
  v127 = *(v0 + 240);
  v128 = *(v0 + 200);
  sub_8B48();
  v129 = sub_A77B4();
  v103(v129);
  sub_A71E8();
  sub_38B40();
  sub_A70D8();
  v130 = sub_16DBDC();
  v131 = sub_16E36C();
  v132 = sub_A763C(v131);
  v133 = *(v0 + 352);
  if (v132)
  {
    v135 = *(v0 + 336);
    v134 = *(v0 + 344);
    v215 = *(v0 + 240);
    v136 = *(v0 + 208);
    v212 = *(v0 + 200);
    sub_8BD8();
    v217 = sub_A7620();
    *v128 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v133, v137);
    v138 = sub_A76B4();
    v141 = sub_3AB7C(v138, v139, v140);

    *(v128 + 4) = v141;
    sub_A7438(&def_259DC, v142, v143, "Query snippet header model is: %s");
    sub_A74B4();
    sub_8A2C();

    v119(v215, v212);
  }

  else
  {
    v144 = *(v0 + 240);
    v145 = *(v0 + 200);
    v146 = *(v0 + 208);

    sub_A71D0();
    sub_A7130(v133, v147);
    v148 = sub_A7464();
    (v119)(v148);
  }

  if (qword_1C55D8 != -1)
  {
    sub_A73B4();
  }

  v149 = *(v0 + 448);
  v150 = *(v0 + 432);
  v209 = *(v0 + 424);
  v151 = *(v0 + 328);
  v152 = *(v0 + 272);
  *(v0 + 544) = qword_1D7258;
  v216 = *(v151 + v199[9]);
  v153 = v151 + v199[5];
  v154 = *v153;
  v155 = *(v153 + 8);

  sub_A7830();
  sub_388E4();
  sub_214C(v156, v157, v158, v196);
  *(v0 + 552) = sub_A6BC4(v154, v155);
  sub_8748(v152, &qword_1C5800, &unk_16F510);
  v159 = v151 + v199[7];
  v160 = *v159;
  LOBYTE(v149) = *(v159 + 8);
  sub_A7830();
  sub_388E4();
  sub_214C(v161, v162, v163, v196);
  *(v0 + 560) = sub_A6BC4(v160, v149);
  sub_8748(v152, &qword_1C5800, &unk_16F510);
  v164 = v151 + v199[6];
  v165 = *v164;
  LOBYTE(v160) = *(v164 + 8);
  sub_A7830();

  sub_388E4();
  sub_214C(v166, v167, v168, v196);
  *(v0 + 568) = sub_A6BC4(v165, v160);
  sub_8748(v152, &qword_1C5800, &unk_16F510);
  v169 = swift_task_alloc();
  *(v0 + 576) = v169;
  *v169 = v0;
  v169[1] = sub_9E10C;
  sub_A78E8();

  return sub_AF7CC(v170, v171, v172, v173, v174, v175);
}

uint64_t sub_9E10C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  v6 = v3[72];
  v7 = v3[71];
  v8 = v3[70];
  v9 = v3[69];
  *v5 = *v2;

  v10 = v3[68];
  v11 = v3[56];
  v12 = v3[53];
  if (v1)
  {
  }

  else
  {
    v13 = v3[56];

    v4[73] = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_9E31C()
{
  sub_386A8();
  v1 = v0[41];
  v2 = type metadata accessor for WellnessSnippets();
  v3 = sub_A79AC(v2);
  sub_A784C(v3);
  sub_A734C();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[74] = v4;
  *v4 = v5;
  v4[1] = sub_9E3E4;
  v6 = v0[73];
  v7 = v0[22];
  sub_A7824();

  return sub_672C0();
}

uint64_t sub_9E3E4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 16));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_9E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = *(v24 + 448);
  v27 = *(v24 + 416);
  v26 = *(v24 + 424);
  v29 = *(v24 + 376);
  v28 = *(v24 + 384);
  v31 = *(v24 + 360);
  v30 = *(v24 + 368);
  v32 = *(v24 + 328);

  sub_A7260();
  sub_A7130(v32, v33);
  sub_A71D0();
  sub_A7130(v31, v34);
  (*(v29 + 8))(v28, v30);
  sub_8748(v27, &qword_1C57F8, &unk_172510);
  sub_A7314();
  sub_A7374();

  sub_C9BC();
  sub_A755C();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_9E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = v24[66];
  v26 = v24[65];
  v27 = v24[64];
  v28 = v24[29];
  v29 = v24[25];
  sub_A7578();
  v30 = sub_38408();
  v26(v30);
  v31 = sub_16DBDC();
  v32 = sub_16E37C();
  if (sub_1BA1C(v32))
  {
    v33 = sub_1BA38();
    sub_1BA50(v33);
    sub_1B9D0(&def_259DC, v34, v35, "Couldn't create dialog for height");
    sub_1BA00();
  }

  v55 = v24[67];
  v36 = v24[56];
  v37 = v24[53];
  v59 = v24[52];
  v38 = v24[47];
  v57 = v24[46];
  v58 = v24[48];
  v56 = v24[45];
  v39 = v24[41];
  v40 = v24[29];
  v41 = v24[25];
  v42 = v24[26];
  v43 = v24[22];

  v55(v40, v41);
  sub_A7260();
  sub_A7130(v39, v44);
  sub_A71D0();
  sub_A7130(v56, v45);
  (*(v38 + 8))(v58, v57);
  sub_8748(v59, &qword_1C57F8, &unk_172510);
  sub_A7658();
  sub_A7314();
  sub_A7374();

  sub_C9BC();
  sub_A755C();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, v55, v56, v57, v58, v59, a22, a23, a24);
}

uint64_t sub_9E850(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 584) = a2;
  *(v4 + 176) = a1;
  v5 = sub_16DBEC();
  *(v4 + 200) = v5;
  v6 = *(v5 - 8);
  *(v4 + 208) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v8 = *(*(sub_2440(&qword_1C63F0, &unk_1717F0) - 8) + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v9 = *(*(sub_2440(&dword_1C63F8, &qword_171800) - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  v10 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  Model = type metadata accessor for OxygenSaturationQueryModel();
  *(v4 + 280) = Model;
  v12 = *(*(Model - 8) + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  v13 = type metadata accessor for SnippetHeaderModel();
  *(v4 + 320) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  v15 = sub_16BE9C();
  *(v4 + 352) = v15;
  v16 = *(v15 - 8);
  *(v4 + 360) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 368) = swift_task_alloc();
  v18 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  v19 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();

  return _swift_task_switch(sub_9EB70, 0, 0);
}

uint64_t sub_9EB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = v22[50];
  v24 = v22[24];
  sub_A79E8(v24);
  v22[51] = v25;
  sub_A7C24(v24, v23);
  v26 = sub_A6F70(v24);
  v28 = sub_13A5C4(v26, v27);
  v30 = v29;
  v22[52] = v28;
  v22[53] = v29;

  if (v30)
  {
    v31 = v22[23];
    v22[54] = sub_A84A0(v24);
    v32 = [v31 start];
    if (v32)
    {
      v33 = v22[47];
      sub_16BF3C();
    }

    v59 = v22[47];
    v60 = sub_16BF5C();
    sub_A7740(v60);
    sub_8748(v59, &qword_1C57E0, &unk_171C60);
    v61 = swift_task_alloc();
    v22[55] = v61;
    *v61 = v22;
    sub_A73D4(v61);
    sub_A77E4();

    return sub_6789C(v62, v63, v64);
  }

  else
  {
    v35 = v22[26];
    v34 = v22[27];
    v36 = v22[25];
    sub_16DBBC();
    sub_A7704();
    v37 = sub_A7894();
    v38(v37);
    v39 = sub_16DBDC();
    v40 = sub_16E37C();
    if (sub_4B3A8(v40))
    {
      *sub_1BA38() = 0;
      sub_3851C(&def_259DC, v41, v42, "Failed to execute height pattern: no unit found in intent response.");
      sub_8A2C();
    }

    v43 = v22[50];
    v45 = v22[26];
    v44 = v22[27];
    v46 = v22[25];
    v47 = v22[22];

    v48 = sub_A77A4();
    v49(v48);
    sub_8748(v43, &qword_1C57F8, &unk_172510);
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0;
    sub_A72F4();
    sub_A7404();

    sub_C9BC();
    sub_A77E4();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_9EE58()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 440);
  *v2 = *v0;
  *(v1 + 448) = v5;
  *(v1 + 456) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_9EF40()
{
  sub_8A88();
  sub_208C0(*(v0 + 584));
  sub_680F8();
  *(v0 + 464) = v1;
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_9EFD8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 464);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  v2[60] = v9;
  v2[61] = v10;

  v11 = swift_task_alloc();
  v2[62] = v11;
  *v11 = v7;
  v12 = sub_A7290(v11);

  return sub_66A84(v12, v13);
}

uint64_t sub_9F108()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 496);
  *v2 = *v0;
  *(v1 + 504) = v5;
  *(v1 + 512) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_9F1F0()
{
  v221 = v0;
  v1 = *(v0 + 488);
  if (!v1)
  {
    v8 = *(v0 + 512);
    v9 = *(v0 + 424);

LABEL_7:

    goto LABEL_8;
  }

  if (!*(v0 + 456))
  {
    v10 = *(v0 + 512);
    v11 = *(v0 + 424);
    v12 = *(v0 + 488);

    goto LABEL_7;
  }

  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 352);
  sub_A7028();
  if (sub_369C(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 424);
    v7 = *(v0 + 392);

    sub_8748(v7, &qword_1C57F8, &unk_172510);
LABEL_8:
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    v15 = *(v0 + 208);
    sub_16DBBC();
    sub_A7598();
    v16 = sub_3BD68();
    v17(v16);
    v18 = sub_16DBDC();
    v19 = sub_16E37C();
    if (sub_1BA1C(v19))
    {
      v20 = sub_1BA38();
      sub_1BA50(v20);
      sub_1B9D0(&def_259DC, v21, v22, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v23 = *(v0 + 432);
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 176);

    v30 = sub_A7610();
    v31(v30);
    sub_8748(v25, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A72F4();
    v195 = *(v0 + 272);
    v197 = *(v0 + 264);
    v199 = *(v0 + 256);
    v202 = *(v0 + 248);
    v205 = *(v0 + 240);
    v208 = *(v0 + 232);
    v212 = *(v0 + 224);
    v216 = *(v0 + 216);

    sub_C9BC();

    return v32();
  }

  v34 = *(v0 + 480);
  v35 = *(v0 + 344);
  v36 = *(v0 + 320);
  v37 = *(v0 + 192);
  v38 = *(v0 + 584);
  (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 392), *(v0 + 352));
  sub_8B9C();
  sub_16E23C();

  sub_25948(v38);
  sub_680F8();
  v39 = sub_208C0(v38);
  v40 = (v35 + *(v36 + 20));
  *v40 = v1;
  v40[1] = v34;
  v41 = (v35 + *(v36 + 24));
  *v41 = v39;
  v41[1] = v42;
  [v37 minimum];
  v44 = v43;
  [v37 maximum];
  v46 = v45;
  if (v44 == v45)
  {
    v47 = 0.0;
  }

  else
  {
    v48 = *(v0 + 192);
    v49 = *(v0 + 584);
    [v48 average];
    v51 = v50 * 100.0;
    v52 = sub_A6F70(v48);
    v54 = sub_99F0C(v52, v53, v49, v51);

    v47 = v54;
  }

  if ((*&v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v55 = *&v47;
  }

  else
  {
    v55 = 0;
  }

  v192 = *(v0 + 504);
  v193 = *(v0 + 512);
  if (v44 == v46)
  {
    v55 = *&v47;
  }

  v188 = v55;
  v183 = *(v0 + 448);
  v190 = *(v0 + 416);
  v191 = *(v0 + 424);
  v56 = *(v0 + 360);
  v57 = *(v0 + 352);
  v184 = *(v0 + 368);
  v186 = *(v0 + 344);
  v58 = *(v0 + 320);
  v200 = v58;
  v203 = *(v0 + 384);
  v59 = *(v0 + 304);
  v198 = *(v0 + 296);
  v60 = *(v0 + 272);
  v61 = *(v0 + 280);
  v206 = *(v0 + 264);
  v189 = *(v0 + 256);
  v194 = *(v0 + 248);
  v217 = *(v0 + 208);
  v196 = *(v0 + 200);
  v62 = *(v0 + 192);
  v63 = *(v0 + 584);
  v64 = (*&v47 & 0x7FFFFFFFFFFFFFFFLL) == 0 || v44 == v46;
  v213 = v64;
  [v62 maximum];
  v66 = v65 * 100.0;
  v67 = sub_A6F70(v62);
  v69 = sub_99F0C(v67, v68, v63, v66);

  [v62 minimum];
  v71 = v70 * 100.0;
  v72 = sub_A6F70(v62);
  v74 = sub_99F0C(v72, v73, v63, v71);

  [v62 mostRecent];
  v76 = v75 * 100.0;
  v77 = sub_A6F70(v62);
  v79 = sub_99F0C(v77, v78, v63, v76);

  v209 = v60;
  sub_16E23C();

  v80 = sub_16D5CC();
  v81 = sub_38744();
  sub_214C(v81, v82, v83, v80);
  (*(v56 + 16))(v203, v184, v57);
  v84 = sub_38744();
  sub_214C(v84, v85, v86, v57);
  sub_A71E8();
  sub_A70D8();
  v87 = sub_38744();
  sub_214C(v87, v88, v89, v200);
  v181 = sub_16C11C();
  sub_8AB4();
  sub_214C(v90, v91, v92, v93);
  v94 = v61[9];
  sub_8AB4();
  sub_214C(v95, v96, v97, v80);
  v98 = v61[16];
  sub_8AB4();
  sub_214C(v99, v100, v101, v200);
  v102 = v59 + v61[5];
  *v102 = v188;
  *(v102 + 8) = v213;
  if (v69 == 0.0)
  {
    v103 = 0;
  }

  else
  {
    v103 = *&v69;
  }

  v182 = v103;
  sub_A7364(v61[6]);
  if (v74 == 0.0)
  {
    v104 = 0;
  }

  else
  {
    v104 = *&v74;
  }

  v185 = v104;
  sub_A7364(v61[7]);
  if (v79 == 0.0)
  {
    v105 = 0;
  }

  else
  {
    v105 = *&v79;
  }

  v180 = v105;
  v106 = v59 + v61[8];
  v107 = (v59 + v61[10]);
  v108 = (v59 + v61[11]);
  v109 = (v59 + v61[12]);
  v187 = (v59 + v61[13]);
  v201 = v61;
  v110 = (v59 + v61[14]);
  v111 = (v59 + v61[15]);
  *v106 = v105;
  *(v106 + 8) = v79 == 0.0;
  *v110 = v190;
  v110[1] = v191;
  sub_A6FD0();
  sub_161FAC(v203);
  sub_388E4();
  sub_214C(v112, v113, v114, v181);
  sub_5FFFC(v189, v59);
  *v111 = v192;
  v111[1] = v193;
  sub_A6FD0();
  *v107 = sub_162144(v188, v213);
  v107[1] = v115;
  *v108 = sub_162144(v182, v69 == 0.0);
  v108[1] = v116;
  *v109 = sub_162144(v185, v74 == 0.0);
  v109[1] = v117;
  v118 = sub_162144(v180, v79 == 0.0);
  v120 = v119;
  sub_8748(v206, &dword_1C63F8, &qword_171800);
  sub_8748(v203, &qword_1C57F8, &unk_172510);
  sub_8748(v209, &qword_1C5800, &unk_16F510);
  *v187 = v118;
  v187[1] = v120;
  sub_A7458();
  sub_A7080();
  *(v0 + 520) = sub_16DBBC();
  sub_8B48();
  v121 = *(v217 + 16);
  *(v0 + 528) = v121;
  sub_A7864();
  *(v0 + 536) = v122;
  v123 = sub_8427C();
  v121(v123);
  sub_A7334();
  sub_A70D8();
  v124 = sub_16DBDC();
  v125 = sub_16E36C();
  v126 = sub_4B3A8(v125);
  v127 = *(v0 + 296);
  if (v126)
  {
    v128 = *(v0 + 280);
    v129 = *(v0 + 288);
    v210 = *(v0 + 248);
    v204 = *(v0 + 208);
    v207 = *(v0 + 200);
    sub_8BD8();
    v220 = sub_A75B8();
    dword_1C63F8 = 136315138;
    sub_A7334();
    sub_A70D8();
    v130 = sub_16E1EC();
    v132 = v131;
    sub_A7248();
    sub_A7130(v127, v133);
    v134 = sub_3AB7C(v130, v132, &v220);

    *algn_1C63FC = v134;
    sub_A7720(&def_259DC, v135, v136, "Query snippet model is: %s");
    sub_A7540();
    sub_8A2C();
    sub_A76C0();

    v137 = *(v204 + 8);
    v137(v210, v207);
  }

  else
  {
    v138 = *(v0 + 248);
    v139 = *(v0 + 200);
    v140 = *(v0 + 208);

    sub_A7248();
    sub_A7130(v127, v141);
    v137 = *(v140 + 8);
    v142 = sub_C9E0();
    (v137)(v142);
  }

  *(v0 + 544) = v137;
  v144 = *(v0 + 336);
  v143 = *(v0 + 344);
  v145 = *(v0 + 240);
  v146 = *(v0 + 200);
  sub_8B48();
  v147 = sub_A77B4();
  v121(v147);
  sub_A71E8();
  sub_38B40();
  sub_A70D8();
  v148 = sub_16DBDC();
  v149 = sub_16E36C();
  v150 = sub_A763C(v149);
  v151 = *(v0 + 336);
  if (v150)
  {
    v153 = *(v0 + 320);
    v152 = *(v0 + 328);
    v154 = *(v0 + 208);
    v214 = *(v0 + 200);
    v218 = *(v0 + 240);
    sub_8BD8();
    v220 = sub_A7620();
    *v146 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v151, v155);
    v156 = sub_A76B4();
    v159 = sub_3AB7C(v156, v157, v158);

    *(v146 + 4) = v159;
    sub_A7438(&def_259DC, v160, v161, "Query snippet header model is: %s");
    sub_A74B4();
    sub_8A2C();

    v137(v218, v214);
  }

  else
  {
    v162 = *(v0 + 240);
    v163 = *(v0 + 200);
    v164 = *(v0 + 208);

    sub_A71D0();
    sub_A7130(v151, v165);
    v166 = sub_A7464();
    (v137)(v166);
  }

  if (qword_1C55D8 != -1)
  {
    sub_A73B4();
  }

  v167 = *(v0 + 432);
  v168 = *(v0 + 408);
  v169 = *(v0 + 312);
  *(v0 + 552) = qword_1D7258;
  v170 = v201[7];
  v171 = (v169 + v201[8]);
  v219 = *v171;
  v215 = *(v171 + 8);
  v211 = *(v169 + v170);
  v172 = *(v169 + v170 + 8);
  v173 = (v169 + v201[6]);
  v174 = *v173;
  v175 = *(v173 + 8);
  v176 = (v169 + v201[5]);
  v177 = *v176;
  v178 = *(v176 + 8);

  v179 = swift_task_alloc();
  *(v0 + 560) = v179;
  *v179 = v0;
  v179[1] = sub_9FD60;
  v224 = v167;
  v223 = v178;

  return sub_AD924(v168, v219, v215, v211, v172, v174, v175, v177);
}

uint64_t sub_9FD60(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = v4[70];
  *v6 = *v2;

  v8 = v4[69];
  v9 = v4[54];
  v10 = v4[51];
  if (v1)
  {
  }

  else
  {

    v5[71] = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_9FEF8()
{
  sub_386A8();
  v1 = v0[39];
  v2 = type metadata accessor for WellnessSnippets();
  v3 = sub_A79AC(v2);
  sub_A784C(v3);
  sub_A7334();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[72] = v4;
  *v4 = v5;
  v4[1] = sub_9FFC0;
  v6 = v0[71];
  v7 = v0[22];
  sub_A7824();

  return sub_672C0();
}

uint64_t sub_9FFC0()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 16));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A00A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = *(v22 + 432);
  v25 = *(v22 + 400);
  v24 = *(v22 + 408);
  v27 = *(v22 + 360);
  v26 = *(v22 + 368);
  v29 = *(v22 + 344);
  v28 = *(v22 + 352);
  v30 = *(v22 + 312);

  sub_A7248();
  sub_A7130(v30, v31);
  sub_A71D0();
  sub_A7130(v29, v32);
  (*(v27 + 8))(v26, v28);
  sub_8748(v25, &qword_1C57F8, &unk_172510);
  sub_A72F4();
  sub_A7404();

  sub_C9BC();
  sub_A77E4();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_A0214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_A7910();
  v23 = v22[67];
  v24 = v22[66];
  v25 = v22[65];
  v26 = v22[29];
  v27 = v22[25];
  sub_A7578();
  v28 = sub_38408();
  v24(v28);
  v29 = sub_16DBDC();
  v30 = sub_16E37C();
  if (sub_1BA1C(v30))
  {
    v31 = sub_1BA38();
    sub_1BA50(v31);
    sub_1B9D0(&def_259DC, v32, v33, "Couldn't create dialog for blood oxygen");
    sub_1BA00();
  }

  v34 = v22[54];
  v35 = v22[51];
  v36 = v22[45];
  v56 = v22[46];
  v57 = v22[50];
  v55 = v22[44];
  v53 = v22[68];
  v54 = v22[43];
  v37 = v22[39];
  v38 = v22[29];
  v39 = v22[25];
  v40 = v22[26];
  v41 = v22[22];

  v53(v38, v39);
  sub_A7248();
  sub_A7130(v37, v42);
  sub_A71D0();
  sub_A7130(v54, v43);
  (*(v36 + 8))(v56, v55);
  sub_8748(v57, &qword_1C57F8, &unk_172510);
  sub_A7658();
  sub_A72F4();
  sub_A7404();

  sub_C9BC();
  sub_A77E4();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, v53, v54, v55, v56, v57, a20, a21, a22);
}

uint64_t sub_A0410(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = a4;
  *(v4 + 632) = a2;
  *(v4 + 152) = a1;
  v5 = sub_16DBEC();
  *(v4 + 176) = v5;
  v6 = *(v5 - 8);
  *(v4 + 184) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v8 = *(*(sub_2440(&qword_1C63F0, &unk_1717F0) - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v9 = *(*(sub_2440(&dword_1C63F8, &qword_171800) - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v10 = *(*(sub_2440(&qword_1C5800, &unk_16F510) - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  Model = type metadata accessor for GenericQueryModel();
  *(v4 + 256) = Model;
  v12 = *(*(Model - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v13 = type metadata accessor for SnippetHeaderModel();
  *(v4 + 296) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v15 = sub_2440(&qword_1C6C68, &qword_172958);
  *(v4 + 328) = v15;
  v16 = *(v15 - 8);
  *(v4 + 336) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v18 = sub_16BE9C();
  *(v4 + 384) = v18;
  v19 = *(v18 - 8);
  *(v4 + 392) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  v21 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 64) + 15;
  *(v4 + 408) = swift_task_alloc();
  v22 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_A07C8, 0, 0);
}

uint64_t sub_A07C8()
{
  sub_C9EC();
  v1 = v0[54];
  v2 = v0[20];
  v3 = v0[21];
  sub_A79E8(v3);
  v0[55] = v4;
  sub_A7C24(v3, v1);
  v0[56] = sub_A84A0(v3);
  v5 = [v2 start];
  if (v5)
  {
    v6 = v0[51];
    sub_16BF3C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[51];
  v9 = sub_16BF5C();
  sub_214C(v8, v7, 1, v9);
  sub_8748(v8, &qword_1C57E0, &unk_171C60);
  v10 = swift_task_alloc();
  v0[57] = v10;
  *v10 = v0;
  v10[1] = sub_A0918;
  sub_38F74();

  return sub_6789C(v11, v12, v13);
}

uint64_t sub_A0918()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 456);
  *v2 = *v0;
  *(v1 + 464) = v5;
  *(v1 + 472) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A0A00()
{
  sub_8A88();
  sub_208C0(*(v0 + 632));
  sub_680F8();
  *(v0 + 480) = v1;
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_A0A98()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 488);
  v5 = *(v3 + 480);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v10 + 496) = v8;
  *(v10 + 504) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_A0B98()
{
  sub_386A8();
  v1 = *(v0 + 168);
  v2 = *(v0 + 632);
  sub_5840C(v1);
  v4 = v3;
  v5 = sub_A6F70(v1);
  *(v0 + 512) = sub_99F0C(v5, v6, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 520) = v7;
  *v7 = v0;
  v8 = sub_A7290(v7);

  return sub_66A84(v8, v9);
}

uint64_t sub_A0C5C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 520);
  *v2 = *v0;
  *(v1 + 528) = v5;
  *(v1 + 536) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A0D48()
{
  v245 = v0;
  if (!*(v0 + 504))
  {
    v8 = *(v0 + 536);

LABEL_15:

    goto LABEL_16;
  }

  if (!*(v0 + 472))
  {
    v9 = *(v0 + 536);
    v10 = *(v0 + 504);
LABEL_14:

    goto LABEL_15;
  }

  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 384);
  sub_A7028();
  v4 = sub_A76DC();
  if (sub_369C(v4, v5, v3) == 1)
  {
    v6 = *(v0 + 536);
    v7 = *(v0 + 424);

    sub_8748(v7, &qword_1C57F8, &unk_172510);
LABEL_16:
    v50 = *(v0 + 184);
    v49 = *(v0 + 192);
    v51 = *(v0 + 176);
    sub_16DBBC();
    sub_A7704();
    v52 = sub_3BD68();
    v53(v52);
    v54 = sub_16DBDC();
    v55 = sub_16E37C();
    if (sub_1BA1C(v55))
    {
      v56 = sub_1BA38();
      sub_1BA50(v56);
      sub_1B9D0(&def_259DC, v57, v58, "Couldn't create data or date dialog labels or deeplink or invalid unit");
      sub_1BA00();
    }

    v60 = *(v0 + 440);
    v59 = *(v0 + 448);
    v61 = *(v0 + 432);
    v63 = *(v0 + 184);
    v62 = *(v0 + 192);
    v64 = *(v0 + 176);
    v65 = *(v0 + 152);

    v66 = sub_A7610();
    v67(v66);
    sub_8748(v61, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A73E4();
    v202 = *(v0 + 304);
    v204 = *(v0 + 288);
    v207 = *(v0 + 280);
    v210 = *(v0 + 272);
    v213 = *(v0 + 264);
    v217 = *(v0 + 248);
    v220 = *(v0 + 240);
    v222 = *(v0 + 232);
    v225 = *(v0 + 224);
    v229 = *(v0 + 216);
    v233 = *(v0 + 208);
    v237 = *(v0 + 200);
    v241 = *(v0 + 192);

    sub_C9BC();
    sub_A79C4();

    return v68();
  }

  v11 = *(v0 + 168);
  (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 424), *(v0 + 384));
  v12 = sub_A6F70(v11);
  if (!v13)
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

    goto LABEL_14;
  }

  v14 = v13;
  if (!*(v0 + 536))
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

    goto LABEL_15;
  }

  v15 = v12;
  v232 = *(v0 + 496);
  v16 = *(v0 + 376);
  v206 = *(v0 + 352);
  v209 = *(v0 + 344);
  v212 = *(v0 + 336);
  v216 = *(v0 + 360);
  v17 = *(v0 + 328);
  v224 = *(v0 + 320);
  v236 = *(v0 + 296);
  v18 = *(v0 + 168);
  v228 = *(v0 + 632);
  sub_A7188();

  v201 = v15;
  v240 = v14;
  v19 = sub_9C23C();
  *(v0 + 544) = v19;
  v221 = v18;
  [v18 minimum];
  v20 = v19;
  sub_16BCEC();
  [v18 maximum];
  v219 = v20;
  sub_16BCEC();
  v21 = objc_opt_self();
  v22 = [v21 poundsMass];
  sub_16BD1C();

  v23 = [v21 poundsMass];
  sub_16BD1C();

  sub_16BD0C();
  v24 = *(v212 + 8);
  *(v0 + 552) = v24;
  *(v0 + 560) = (v212 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v209, v17);
  v24(v206, v17);
  sub_16BCFC();
  v26 = v25;
  v24(v216, v17);
  sub_16E23C();

  v27 = sub_25948(v228);
  v29 = v28;
  v30 = sub_208C0(v228);
  v31 = (v224 + *(v236 + 20));
  *v31 = v27;
  v31[1] = v29;
  v32 = (v224 + *(v236 + 24));
  *v32 = v30;
  v32[1] = v33;
  [v221 minimum];
  v35 = v34;
  [v221 maximum];
  v37 = v36;
  v38 = 0.0;
  if (v35 != v36)
  {
    v39 = *(v0 + 632);
    [*(v0 + 168) minimum];
    v41 = v40;

    v42 = sub_99F0C(v201, v240, v39, v41);

    v38 = v42;
  }

  v43 = *(v0 + 168);
  [v43 minimum];
  v45 = v44;
  [v43 maximum];
  v47 = v46;
  if (v45 == v46)
  {

    v48 = 0.0;
  }

  else
  {
    v71 = *(v0 + 632);
    [*(v0 + 168) maximum];
    v73 = sub_99F0C(v201, v240, v71, v72);

    v48 = v73;
  }

  if ((*&v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v74 = *&v48;
  }

  else
  {
    v74 = 0;
  }

  v199 = *(v0 + 528);
  v200 = *(v0 + 536);
  v75 = v45 == v47;
  if (v45 == v47)
  {
    v74 = *&v48;
  }

  v198 = v74;
  v76 = *(v0 + 512);
  v77 = (*&v48 & 0x7FFFFFFFFFFFFFFFLL) == 0 || v75;
  v247 = v77;
  v78 = *(v0 + 464);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v79 = *&v38;
  }

  else
  {
    v79 = 0;
  }

  v238 = *(v0 + 416);
  v80 = *(v0 + 392);
  v191 = *(v0 + 400);
  if (v35 == v37)
  {
    v79 = *&v38;
  }

  v234 = v79;
  v81 = (*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v82 = *(v0 + 384);
  v193 = *(v0 + 296);
  v203 = *(v0 + 288);
  v83 = *(v0 + 280);
  v211 = *(v0 + 272);
  v214 = *(v0 + 320);
  v84 = *(v0 + 248);
  v85 = *(v0 + 256);
  v223 = *(v0 + 232);
  v197 = *(v0 + 224);
  v205 = *(v0 + 216);
  v242 = *(v0 + 184);
  v208 = *(v0 + 176);
  v86 = v81 || v35 == v37;
  v230 = v86;
  v218 = v219;
  v87 = [v218 symbol];
  v88 = sub_16E1BC();
  v195 = v89;
  v196 = v88;

  v226 = v84;
  sub_16E23C();

  v90 = sub_16D5CC();
  sub_388E4();
  sub_214C(v91, v92, v93, v90);
  (*(v80 + 16))(v238, v191, v82);
  v94 = sub_38744();
  sub_214C(v94, v95, v96, v82);
  sub_A71E8();
  sub_A70D8();
  v97 = sub_38744();
  sub_214C(v97, v98, v99, v193);
  v100 = sub_16C11C();
  sub_8AB4();
  sub_214C(v101, v102, v103, v100);
  v104 = v85[10];
  sub_8AB4();
  v215 = v90;
  sub_214C(v105, v106, v107, v90);
  v108 = v85[18];
  sub_8AB4();
  sub_214C(v109, v110, v111, v193);
  if (v76 == 0.0)
  {
    v112 = 0;
  }

  else
  {
    v112 = *&v76;
  }

  v190 = v112;
  sub_A7364(v85[5]);
  v113 = v83 + v85[6];
  *v113 = v234;
  *(v113 + 8) = v230;
  v114 = v83 + v85[7];
  v115 = v83 + v85[8];
  v116 = v83 + v85[9];
  v117 = (v83 + v85[11]);
  v189 = (v83 + v85[12]);
  v192 = (v83 + v85[13]);
  v194 = (v83 + v85[14]);
  v118 = (v83 + v85[15]);
  v119 = (v83 + v85[16]);
  v120 = (v83 + v85[17]);
  *v114 = v198;
  v121 = v247;
  *(v114 + 8) = v247;
  *v115 = 0;
  *(v115 + 8) = 1;
  *v116 = 0;
  *(v116 + 8) = 1;
  *v119 = v196;
  v119[1] = v195;
  sub_A6FD0();
  sub_12A600(v238);
  v122 = sub_38744();
  sub_214C(v122, v123, v124, v100);
  v125 = sub_8B9C();
  sub_5FFFC(v125, v126);
  *v120 = v199;
  v120[1] = v200;
  sub_A6FD0();
  *v118 = sub_12A7A4(0, 1);
  v118[1] = v127;
  *v117 = sub_12A7A4(v190, v76 == 0.0);
  v117[1] = v128;
  *v189 = sub_12A7A4(v234, v230);
  v189[1] = v129;
  *v192 = sub_12A7A4(v198, v121);
  v192[1] = v130;
  v131 = sub_12A7A4(0, 1);
  v133 = v132;
  sub_8748(v223, &dword_1C63F8, &qword_171800);
  sub_8748(v238, &qword_1C57F8, &unk_172510);
  sub_8748(v226, &qword_1C5800, &unk_16F510);
  *v194 = v131;
  v194[1] = v133;
  sub_A7458();
  sub_A7080();
  *(v0 + 568) = sub_16DBBC();
  sub_8B48();
  v134 = *(v242 + 16);
  *(v0 + 576) = v134;
  sub_A7864();
  *(v0 + 584) = v135;
  v136 = sub_8427C();
  v134(v136);
  sub_A7230();
  sub_A70D8();
  v137 = sub_16DBDC();
  v138 = sub_16E36C();
  v139 = sub_A763C(v138);
  v140 = *(v0 + 272);
  if (v139)
  {
    v141 = *(v0 + 256);
    v142 = *(v0 + 264);
    v235 = *(v0 + 216);
    v227 = *(v0 + 184);
    v231 = *(v0 + 176);
    sub_8BD8();
    v244 = sub_A75B8();
    *v223 = 136315138;
    sub_A7230();
    sub_A70D8();
    v143 = sub_16E1EC();
    v145 = v144;
    sub_A7200();
    sub_A7130(v140, v146);
    v147 = sub_3AB7C(v143, v145, &v244);

    *(v223 + 4) = v147;
    _os_log_impl(&def_259DC, v137, v118, "Query snippet model is: %s", v223, 0xCu);
    sub_A7540();
    sub_8A2C();
    sub_A76C0();

    v148 = *(v227 + 8);
    v148(v235, v231);
  }

  else
  {
    v149 = *(v0 + 216);
    v150 = *(v0 + 176);
    v151 = *(v0 + 184);

    sub_A7200();
    sub_A7130(v140, v152);
    v148 = *(v151 + 8);
    v153 = sub_C9E0();
    (v148)(v153);
  }

  *(v0 + 592) = v148;
  v155 = *(v0 + 312);
  v154 = *(v0 + 320);
  v156 = *(v0 + 208);
  v157 = *(v0 + 176);
  sub_8B48();
  v158 = sub_A77B4();
  v134(v158);
  sub_A71E8();
  sub_38B40();
  sub_A70D8();
  v159 = sub_16DBDC();
  v160 = sub_16E36C();
  v161 = sub_A763C(v160);
  v162 = *(v0 + 312);
  if (v161)
  {
    v164 = *(v0 + 296);
    v163 = *(v0 + 304);
    v165 = *(v0 + 184);
    v239 = *(v0 + 176);
    v243 = *(v0 + 208);
    sub_8BD8();
    v244 = sub_A7620();
    *v157 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v162, v166);
    v167 = sub_A76B4();
    v170 = sub_3AB7C(v167, v168, v169);

    *(v157 + 4) = v170;
    sub_A7438(&def_259DC, v171, v172, "Query snippet header model is: %s");
    sub_A74B4();
    sub_8A2C();

    v148(v243, v239);
  }

  else
  {
    v173 = *(v0 + 208);
    v174 = *(v0 + 176);
    v175 = *(v0 + 184);

    sub_A71D0();
    sub_A7130(v162, v176);
    v177 = sub_A7464();
    (v148)(v177);
  }

  if (qword_1C55D8 != -1)
  {
    sub_A73B4();
  }

  v178 = *(v0 + 440);
  v179 = *(v0 + 448);
  v180 = *(v0 + 240);
  v181 = *(v0 + 168);
  *(v0 + 600) = qword_1D7258;

  [v181 minimum];
  [v181 maximum];
  v182 = [v218 symbol];

  sub_16E1BC();
  sub_A7800();

  sub_A76B4();
  sub_16E23C();

  sub_388E4();
  sub_214C(v183, v184, v185, v215);

  v186 = swift_task_alloc();
  *(v0 + 608) = v186;
  *v186 = v0;
  v186[1] = sub_A1B54;
  v187 = *(v0 + 240);
  v248 = v179;
  v246 = v26 < 0.5;
  sub_A79C4();

  return sub_B1D24();
}

uint64_t sub_A1B54(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = v4[76];
  *v6 = *v2;

  v8 = v4[75];
  v9 = v4[56];
  v10 = v4[55];
  v11 = v4[30];
  if (v1)
  {

    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  else
  {
    v5[77] = a1;
    sub_8748(v11, &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_A1D30()
{
  sub_386A8();
  v1 = v0[36];
  v2 = type metadata accessor for WellnessSnippets();
  v3 = sub_A79AC(v2);
  sub_A784C(v3);
  sub_A7230();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v0[78] = v4;
  *v4 = v5;
  v4[1] = sub_A1DF8;
  v6 = v0[77];
  v7 = v0[19];
  sub_A7824();

  return sub_672C0();
}

uint64_t sub_A1DF8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 624);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 16));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A1EDC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 392);
  v28 = *(v0 + 400);
  v30 = *(v0 + 432);
  v24 = *(v0 + 376);
  v26 = *(v0 + 384);
  v22 = *(v0 + 368);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 288);

  sub_A7200();
  sub_A7130(v9, v10);
  sub_A71D0();
  sub_A7130(v8, v11);
  v2(v22, v7);
  v2(v24, v7);
  (*(v6 + 8))(v28, v26);
  sub_8748(v30, &qword_1C57F8, &unk_172510);
  sub_A73E4();
  v14 = *(v0 + 304);
  v15 = *(v0 + 288);
  v16 = *(v0 + 280);
  v17 = *(v0 + 272);
  v18 = *(v0 + 264);
  v19 = *(v0 + 248);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  v23 = *(v0 + 224);
  v25 = *(v0 + 216);
  v27 = *(v0 + 208);
  v29 = *(v0 + 200);
  v31 = *(v0 + 192);

  sub_C9BC();

  return v12();
}

uint64_t sub_A2104()
{
  v58 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  sub_8B48();
  v6 = sub_38408();
  v2(v6);
  v7 = sub_16DBDC();
  v8 = sub_16E37C();
  v9 = os_log_type_enabled(v7, v8);
  v47 = *(v0 + 592);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v35 = *(v0 + 448);
  v41 = *(v0 + 440);
  v43 = *(v0 + 544);
  v12 = *(v0 + 432);
  v13 = *(v0 + 392);
  v14 = *(v0 + 400);
  v53 = *(v0 + 376);
  v55 = *(v0 + 384);
  v15 = *(v0 + 328);
  v49 = *(v0 + 320);
  v51 = *(v0 + 368);
  v45 = *(v0 + 288);
  v16 = *(v0 + 176);
  v37 = v16;
  v39 = *(v0 + 200);
  if (v9)
  {
    v33 = *(v0 + 400);
    v17 = *(v0 + 632);
    v30 = *(v0 + 552);
    v18 = sub_8BD8();
    v31 = v12;
    v19 = sub_CA30();
    v57 = v19;
    *v18 = 136315138;
    v20 = sub_208C0(v17);
    v22 = sub_3AB7C(v20, v21, &v57);

    *(v18 + 4) = v22;
    _os_log_impl(&def_259DC, v7, v8, "Couldn't create dialog for %s", v18, 0xCu);
    sub_2D64(v19);
    sub_8A2C();
    sub_8A2C();

    v47(v39, v37);
    sub_A7200();
    sub_A7130(v45, v23);
    sub_A71D0();
    sub_A7130(v49, v24);
    v30(v51, v15);
    v30(v53, v15);
    (*(v13 + 8))(v33, v55);
    v25 = v31;
  }

  else
  {

    v47(v39, v37);
    sub_A7200();
    sub_A7130(v45, v26);
    sub_A71D0();
    sub_A7130(v49, v27);
    v11(v51, v15);
    v11(v53, v15);
    (*(v13 + 8))(v14, v55);
    v25 = v12;
  }

  sub_8748(v25, &qword_1C57F8, &unk_172510);
  sub_A77D4(*(v0 + 152));
  sub_A73E4();
  v32 = *(v0 + 304);
  v34 = *(v0 + 288);
  v36 = *(v0 + 280);
  v38 = *(v0 + 272);
  v40 = *(v0 + 264);
  v42 = *(v0 + 248);
  v44 = *(v0 + 240);
  v46 = *(v0 + 232);
  v48 = *(v0 + 224);
  v50 = *(v0 + 216);
  v52 = *(v0 + 208);
  v54 = *(v0 + 200);
  v56 = *(v0 + 192);

  sub_C9BC();

  return v28();
}

uint64_t sub_A24E0()
{
  sub_8A88();
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  *(v0 + 616) = v3;
  *(v0 + 184) = v4;
  v5 = sub_16DBEC();
  *(v0 + 208) = v5;
  sub_888C(v5);
  *(v0 + 216) = v6;
  v8 = *(v7 + 64);
  *(v0 + 224) = sub_8C38();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  *(v0 + 256) = swift_task_alloc();
  v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 264) = sub_8BC0();
  v12 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v12);
  v14 = *(v13 + 64);
  *(v0 + 272) = sub_8BC0();
  v15 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v15);
  v17 = *(v16 + 64);
  *(v0 + 280) = sub_8C38();
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = swift_task_alloc();
  Model = type metadata accessor for GenericQueryModel();
  *(v0 + 304) = Model;
  sub_4348(Model);
  v20 = *(v19 + 64);
  *(v0 + 312) = sub_8C38();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  v21 = type metadata accessor for SnippetHeaderModel();
  *(v0 + 344) = v21;
  sub_4348(v21);
  v23 = *(v22 + 64);
  *(v0 + 352) = sub_8C38();
  *(v0 + 360) = swift_task_alloc();
  *(v0 + 368) = swift_task_alloc();
  v24 = sub_16BE9C();
  *(v0 + 376) = v24;
  sub_888C(v24);
  *(v0 + 384) = v25;
  v27 = *(v26 + 64);
  *(v0 + 392) = sub_8BC0();
  v28 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v28);
  v30 = *(v29 + 64);
  *(v0 + 400) = sub_8BC0();
  v31 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v31);
  v33 = *(v32 + 64);
  *(v0 + 408) = sub_8C38();
  *(v0 + 416) = swift_task_alloc();
  *(v0 + 424) = swift_task_alloc();
  v34 = sub_17960();

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_A2798()
{
  sub_386A8();
  v1 = *(v0 + 424);
  v2 = *(v0 + 200);
  sub_A79E8(v2);
  *(v0 + 432) = v3;
  sub_A7C24(v2, v1);
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = sub_A2854;
  v5 = *(v0 + 200);
  v6 = *(v0 + 616);

  return sub_A8154(v6);
}

uint64_t sub_A2854()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 440);
  *v2 = *v0;
  *(v1 + 448) = v5;
  *(v1 + 456) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A293C()
{
  sub_C9EC();
  v1 = *(v0 + 192);
  v2 = *(v0 + 616);
  *(v0 + 464) = sub_A84A0(*(v0 + 200));
  *(v0 + 472) = sub_A8C8C(v2);
  *(v0 + 617) = v3;
  v4 = [v1 start];
  if (v4)
  {
    v5 = *(v0 + 400);
    sub_16BF3C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v0 + 400);
  v8 = sub_16BF5C();
  sub_214C(v7, v6, 1, v8);
  sub_8748(v7, &qword_1C57E0, &unk_171C60);
  v9 = swift_task_alloc();
  *(v0 + 480) = v9;
  *v9 = v0;
  v9[1] = sub_A2A88;
  v10 = *(v0 + 432);
  sub_38F74();

  return sub_6789C(v11, v12, v13);
}

uint64_t sub_A2A88()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 480);
  *v2 = *v0;
  *(v1 + 488) = v5;
  *(v1 + 496) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A2B70()
{
  sub_8A88();
  sub_208C0(*(v0 + 616));
  sub_680F8();
  *(v0 + 504) = v1;
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_A2C08()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 504);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  v2[65] = v9;
  v2[66] = v10;

  v11 = swift_task_alloc();
  v2[67] = v11;
  *v11 = v7;
  v12 = sub_A7290(v11);

  return sub_66A84(v12, v13);
}

uint64_t sub_A2D3C()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 536);
  *v2 = *v0;
  *(v1 + 544) = v5;
  *(v1 + 552) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A2E28()
{
  if (!*(v0 + 528) || !*(v0 + 496))
  {
    v9 = *(v0 + 552);
    v10 = *(v0 + 456);

    goto LABEL_6;
  }

  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 376);
  sub_A7028();
  v4 = sub_A76DC();
  if (sub_369C(v4, v5, v3) == 1)
  {
    v6 = *(v0 + 552);
    v7 = *(v0 + 456);
    v8 = *(v0 + 416);

    sub_8748(v8, &qword_1C57F8, &unk_172510);
LABEL_6:
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 208);
    sub_16DBBC();
    sub_A7704();
    v14 = sub_3BD68();
    v15(v14);
    v16 = sub_16DBDC();
    v17 = sub_16E37C();
    if (sub_1BA1C(v17))
    {
      v18 = sub_1BA38();
      sub_1BA50(v18);
      sub_1B9D0(&def_259DC, v19, v20, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v21 = *(v0 + 464);
    v23 = *(v0 + 424);
    v22 = *(v0 + 432);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = *(v0 + 208);
    v27 = *(v0 + 184);

    v28 = sub_A7610();
    v29(v28);
    sub_8748(v23, &qword_1C57F8, &unk_172510);
    sub_A7668();
    sub_A72D4();
    v222 = *(v0 + 296);
    v224 = *(v0 + 288);
    v227 = *(v0 + 280);
    v230 = *(v0 + 272);
    v235 = *(v0 + 264);
    v238 = *(v0 + 256);
    v241 = *(v0 + 248);
    v246 = *(v0 + 240);
    v251 = *(v0 + 232);
    v254 = *(v0 + 224);

    sub_C9BC();

    return v30();
  }

  v220 = *(v0 + 544);
  v221 = *(v0 + 552);
  v32 = *(v0 + 520);
  v236 = *(v0 + 488);
  v239 = *(v0 + 617);
  v218 = *(v0 + 456);
  v215 = *(v0 + 472);
  v217 = *(v0 + 448);
  v33 = *(v0 + 416);
  v242 = *(v0 + 408);
  v212 = *(v0 + 392);
  v214 = *(v0 + 384);
  v34 = *(v0 + 368);
  v211 = *(v0 + 376);
  v35 = *(v0 + 344);
  v223 = *(v0 + 336);
  v36 = *(v0 + 328);
  v231 = *(v0 + 320);
  v37 = *(v0 + 304);
  v247 = *(v0 + 272);
  v252 = *(v0 + 296);
  v219 = *(v0 + 264);
  v225 = *(v0 + 256);
  v255 = *(v0 + 216);
  v228 = *(v0 + 208);
  v38 = *(v0 + 200);
  v39 = *(v0 + 616);
  (*(v214 + 32))();
  sub_16E23C();

  v40 = sub_25948(v39);
  v42 = v41;
  v43 = sub_208C0(v39);
  v44 = (v34 + *(v35 + 20));
  *v44 = v40;
  v44[1] = v42;
  v45 = (v34 + *(v35 + 24));
  *v45 = v43;
  v45[1] = v46;
  [v38 maximum];
  v48 = v47;
  sub_A6F70(v38);
  sub_A78C0();
  v52 = sub_99F0C(v49, v50, v51, v48);

  [v38 minimum];
  v54 = v53;
  sub_A6F70(v38);
  sub_A78C0();
  v58 = sub_99F0C(v55, v56, v57, v54);

  [v38 mostRecent];
  v60 = v59;
  sub_A6F70(v38);
  sub_A78C0();
  v64 = sub_99F0C(v61, v62, v63, v60);

  [v38 total];
  v66 = v65;
  sub_A6F70(v38);
  sub_A78C0();
  v70 = sub_99F0C(v67, v68, v69, v66);

  v71 = *&v70;
  sub_16E23C();

  v72 = sub_16D5CC();
  sub_388E4();
  sub_214C(v73, v74, v75, v72);
  (*(v214 + 16))(v242, v212, v211);
  sub_388E4();
  sub_214C(v76, v77, v78, v211);
  sub_A71E8();
  sub_A70D8();
  sub_388E4();
  sub_214C(v79, v80, v81, v35);
  v205 = sub_16C11C();
  sub_8AB4();
  sub_214C(v82, v83, v84, v85);
  v86 = v37[10];
  sub_8AB4();
  v237 = v72;
  sub_214C(v87, v88, v89, v72);
  v206 = v37[18];
  sub_8AB4();
  sub_214C(v90, v91, v92, v35);
  if ((v215 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v93 = v215;
  }

  else
  {
    v93 = 0;
  }

  v94 = v215;
  if ((v239 & 1) == 0)
  {
    v94 = v93;
  }

  v207 = v94;
  v95 = v36 + v37[5];
  *v95 = v94;
  v259 = v239 & 1 | ((v215 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v95 + 8) = v259;
  if (v52 == 0.0)
  {
    v96 = 0;
  }

  else
  {
    v96 = *&v52;
  }

  v208 = v96;
  sub_A7364(v37[6]);
  if (v58 == 0.0)
  {
    v97 = 0;
  }

  else
  {
    v97 = *&v58;
  }

  v210 = v97;
  sub_A7364(v37[7]);
  if (v64 == 0.0)
  {
    v98 = 0;
  }

  else
  {
    v98 = *&v64;
  }

  v213 = v98;
  sub_A7364(v37[8]);
  if (v70 == 0.0)
  {
    v71 = 0;
  }

  v99 = v36 + v37[9];
  v100 = (v36 + v37[11]);
  v101 = (v36 + v37[12]);
  v209 = (v36 + v37[13]);
  v216 = (v36 + v37[14]);
  v102 = (v36 + v37[15]);
  v103 = (v36 + v37[16]);
  v240 = v37;
  v104 = (v36 + v37[17]);
  *v99 = v71;
  *(v99 + 8) = v70 == 0.0;
  *v103 = v217;
  v103[1] = v218;

  sub_A6FD0();
  sub_12A600(v242);
  sub_388E4();
  sub_214C(v105, v106, v107, v205);
  sub_5FFFC(v219, v36);
  *v104 = v220;
  v104[1] = v221;
  sub_A6FD0();
  *v102 = sub_12A7A4(v71, v70 == 0.0);
  v102[1] = v108;
  *v100 = sub_12A7A4(v207, v259);
  v100[1] = v109;
  *v101 = sub_12A7A4(v208, v52 == 0.0);
  v101[1] = v110;
  *v209 = sub_12A7A4(v210, v58 == 0.0);
  v209[1] = v111;
  v112 = sub_12A7A4(v213, v64 == 0.0);
  v114 = v113;
  sub_8748(v247, &dword_1C63F8, &qword_171800);
  sub_8748(v242, &qword_1C57F8, &unk_172510);
  sub_8748(v252, &qword_1C5800, &unk_16F510);
  *v216 = v112;
  v216[1] = v114;
  sub_A7458();
  sub_A7080();
  v115 = sub_16DBBC();
  *(v0 + 560) = v115;
  sub_8B48();
  v116 = *(v255 + 16);
  *(v0 + 568) = v116;
  sub_A7864();
  *(v0 + 576) = v117;
  v116(v225, v115, v228);
  sub_A7230();
  sub_A70D8();
  v118 = sub_16DBDC();
  v119 = sub_16E36C();
  v120 = sub_A763C(v119);
  v121 = *(v0 + 320);
  if (v120)
  {
    v122 = *(v0 + 304);
    v123 = *(v0 + 312);
    v248 = *(v0 + 256);
    v232 = *(v0 + 216);
    v243 = *(v0 + 208);
    sub_8BD8();
    v262 = sub_A7620();
    *v102 = 136315138;
    sub_A7230();
    sub_A70D8();
    v124 = sub_16E1EC();
    v126 = v125;
    sub_A7200();
    sub_A7130(v121, v127);
    sub_3AB7C(v124, v126, &v262);
    sub_A7888();

    *(v102 + 4) = v124;
    sub_A7438(&def_259DC, v128, v129, "Query snippet model is: %s");
    sub_A7540();
    sub_8A2C();
    sub_8A2C();

    v130 = *(v232 + 8);
    (v130)(v248, v243);
  }

  else
  {
    v131 = *(v0 + 256);
    v132 = *(v0 + 208);
    v133 = *(v0 + 216);

    sub_A7200();
    sub_A7130(v121, v134);
    v130 = *(v133 + 8);
    (v130)(v131, v132);
  }

  *(v0 + 584) = v130;
  v135 = *(v0 + 360);
  v136 = *(v0 + 368);
  v137 = *(v0 + 248);
  v138 = *(v0 + 208);
  sub_8B48();
  v116(v137, v115, v138);
  sub_A71E8();
  sub_C9C8();
  sub_A70D8();
  v139 = sub_16DBDC();
  v140 = sub_16E36C();
  v141 = sub_A763C(v140);
  v142 = *(v0 + 360);
  if (v141)
  {
    v143 = *(v0 + 344);
    v144 = *(v0 + 352);
    v249 = *(v0 + 248);
    v233 = *(v0 + 216);
    v244 = *(v0 + 208);
    sub_8BD8();
    v262 = sub_A7620();
    *v130 = 136315138;
    sub_A71E8();
    sub_A70D8();
    v145 = sub_16E1EC();
    v147 = v146;
    sub_A71D0();
    sub_A7130(v142, v148);
    sub_3AB7C(v145, v147, &v262);
    sub_A7888();

    *(v130 + 4) = v145;
    sub_A7438(&def_259DC, v149, v150, "Query snippet header model is: %s");
    sub_A7540();
    sub_8A2C();
    sub_8A2C();

    v152 = v244;
    v151 = v249;
  }

  else
  {
    v153 = *(v0 + 248);
    v154 = *(v0 + 208);
    v155 = *(v0 + 216);

    sub_A71D0();
    sub_A7130(v142, v156);
    v151 = sub_A7464();
  }

  (v130)(v151, v152);
  v157 = *(v0 + 432);
  v158 = *(v0 + 240);
  v159 = *(v0 + 208);
  sub_8B48();
  v116(v158, v115, v159);

  v160 = sub_16DBDC();
  v161 = sub_16E36C();

  if (os_log_type_enabled(v160, v161))
  {
    v162 = *(v0 + 432);
    v256 = *(v0 + 240);
    v163 = *(v0 + 208);
    v164 = *(v0 + 216);
    sub_8BD8();
    v262 = sub_A7620();
    *v130 = 136315138;
    *(v0 + 176) = v162;
    type metadata accessor for WellnessTime(0);

    v165 = sub_16E1EC();
    v167 = sub_3AB7C(v165, v166, &v262);

    *(v130 + 4) = v167;
    sub_A7438(&def_259DC, v168, v169, "Query snippet wellness time is: %s");
    sub_A74B4();
    sub_8A2C();

    (v130)(v256, v163);
  }

  else
  {
    v170 = *(v0 + 240);
    v171 = *(v0 + 208);
    v172 = *(v0 + 216);

    v173 = sub_A7464();
    (v130)(v173);
  }

  v174 = *(v0 + 336);
  v175 = v174 + v240[9];
  v257 = *v175;
  v253 = *(v175 + 8);
  v176 = v240[7];
  v177 = v174 + v240[8];
  v250 = *v177;
  v245 = *(v177 + 8);
  v234 = *(v174 + v176);
  v229 = *(v174 + v176 + 8);
  v178 = v240[5];
  v179 = (v174 + v240[6]);
  v226 = *v179;
  v180 = *(v179 + 8);
  v181 = *(v174 + v178);
  v182 = *(v174 + v178 + 8);
  v183 = (v174 + v240[16]);
  v184 = *(v0 + 432);
  v185 = *(v0 + 288);
  if (v183[1])
  {
    v186 = *v183;
    v187 = *(v0 + 432);

    sub_16E23C();
    sub_388E4();
    sub_214C(v188, v189, v190, v237);
  }

  else
  {
    v191 = *(v0 + 288);
    sub_8AB4();
    sub_214C(v192, v193, v194, v237);
  }

  v196 = *(v0 + 456);
  v195 = *(v0 + 464);
  v197 = *(v0 + 448);
  v198 = *(v0 + 432);
  v199 = *(v0 + 280);

  sub_16E23C();

  v200 = sub_38744();
  sub_214C(v200, v201, v202, v237);
  v203 = swift_task_alloc();
  *(v0 + 592) = v203;
  *v203 = v0;
  v203[1] = sub_A3BA0;
  v204 = *(v0 + 616);
  v261 = *(v0 + 280);
  v260 = *(v0 + 288);

  return sub_10E85C(v204, v198, v257, v253, v250, v245, v234, v229);
}

uint64_t sub_A3BA0()
{
  sub_C9EC();
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  v5 = v2[74];
  v6 = *v1;
  sub_38440();
  *v7 = v6;
  *(v9 + 600) = v8;

  v10 = v2[58];
  v11 = v2[54];
  v12 = v2[36];
  v13 = v2[35];
  if (v0)
  {
  }

  else
  {
    v14 = v2[58];
  }

  sub_A776C();
  sub_A7788();
  sub_8ACC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_A40C4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 16));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A41A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_A76E8();
  sub_A7760();
  v25 = v24[75];
  v26 = v24[58];
  v27 = v24[53];
  v28 = v24[54];
  v30 = v24[48];
  v29 = v24[49];
  v32 = v24[46];
  v31 = v24[47];
  v33 = v24[42];

  sub_A71D0();
  sub_A7130(v32, v34);
  v35 = *(v30 + 8);
  v36 = sub_C9E0();
  v37(v36);
  sub_8748(v27, &qword_1C57F8, &unk_172510);
  sub_A7200();
  sub_A7130(v33, v38);
  sub_A72D4();
  v50 = v40;
  v51 = v39;
  v52 = v24[37];
  v53 = v24[36];
  v54 = v24[35];
  v55 = v24[34];
  v56 = v24[33];
  v57 = v24[32];
  v58 = v24[31];
  v59 = v24[30];
  v60 = v24[29];
  v61 = v24[28];

  sub_C9BC();
  sub_A755C();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, a22, a23, a24);
}

uint64_t sub_A45FC()
{
  sub_8A88();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  *(v0 + 624) = v3;
  *(v0 + 192) = v4;
  v5 = sub_16DBEC();
  *(v0 + 216) = v5;
  sub_888C(v5);
  *(v0 + 224) = v6;
  v8 = *(v7 + 64);
  *(v0 + 232) = sub_8C38();
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  v9 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 272) = sub_8BC0();
  v12 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v12);
  v14 = *(v13 + 64);
  *(v0 + 280) = sub_8BC0();
  Model = type metadata accessor for TemperatureQueryModel();
  *(v0 + 288) = Model;
  sub_4348(Model);
  v17 = *(v16 + 64);
  *(v0 + 296) = sub_8C38();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  v18 = type metadata accessor for SnippetHeaderModel();
  *(v0 + 336) = v18;
  sub_4348(v18);
  v20 = *(v19 + 64);
  *(v0 + 344) = sub_8C38();
  *(v0 + 352) = swift_task_alloc();
  *(v0 + 360) = swift_task_alloc();
  v21 = sub_16D5CC();
  *(v0 + 368) = v21;
  sub_888C(v21);
  *(v0 + 376) = v22;
  v24 = *(v23 + 64);
  *(v0 + 384) = sub_8BC0();
  v25 = sub_16BE9C();
  *(v0 + 392) = v25;
  sub_888C(v25);
  *(v0 + 400) = v26;
  v28 = *(v27 + 64);
  *(v0 + 408) = sub_8BC0();
  v29 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v29);
  v31 = *(v30 + 64);
  *(v0 + 416) = sub_8BC0();
  v32 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v32);
  v34 = *(v33 + 64);
  *(v0 + 424) = sub_8C38();
  *(v0 + 432) = swift_task_alloc();
  *(v0 + 440) = swift_task_alloc();
  *(v0 + 448) = swift_task_alloc();
  *(v0 + 456) = swift_task_alloc();
  *(v0 + 464) = swift_task_alloc();
  v35 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v35);
  v37 = *(v36 + 64);
  *(v0 + 472) = sub_8C38();
  *(v0 + 480) = swift_task_alloc();
  *(v0 + 488) = swift_task_alloc();
  v38 = sub_17960();

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_A4930()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 208);
  sub_A79E8(v2);
  v4 = v3;
  *(v0 + 496) = v3;
  sub_A7C24(v2, v1);
  v5 = sub_A6F70(v2);
  sub_13A458(v5, v6);
  v8 = v7;

  if (v8)
  {
    v9 = *(v0 + 464);
    sub_16E23C();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 624);
  sub_214C(*(v0 + 464), v10, 1, *(v0 + 368));
  *(v0 + 504) = sub_A84A0(v2);
  *(v0 + 512) = sub_A697C(v13, v11);
  *(v0 + 625) = v14;
  v15 = [v12 start];
  if (v15)
  {
    v16 = *(v0 + 416);
    sub_16BF3C();
  }

  v17 = *(v0 + 416);
  v18 = sub_16BF5C();
  sub_A7740(v18);
  sub_8748(v17, &qword_1C57E0, &unk_171C60);
  v19 = swift_task_alloc();
  *(v0 + 520) = v19;
  *v19 = v0;
  v20 = sub_A73D4(v19);

  return sub_6789C(v20, v15 == 0, v4);
}

uint64_t sub_A4AEC()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 520);
  *v2 = *v0;
  *(v1 + 528) = v5;
  *(v1 + 536) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A4BD8()
{
  sub_8A88();
  sub_208C0(*(v0 + 624));
  sub_680F8();
  *(v0 + 544) = v1;
  v2 = swift_task_alloc();
  *(v0 + 552) = v2;
  *v2 = v0;
  sub_A73D4(v2);

  return sub_66E84();
}

uint64_t sub_A4C70()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *(v4 + 544);
  v7 = *v0;
  sub_C990();
  *v8 = v7;
  v2[70] = v9;
  v2[71] = v10;

  v11 = swift_task_alloc();
  v2[72] = v11;
  *v11 = v7;
  v12 = sub_A7290(v11);

  return sub_66A84(v12, v13);
}

uint64_t sub_A4DA4()
{
  sub_8A88();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 576);
  *v2 = *v0;
  *(v1 + 584) = v5;
  *(v1 + 592) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_A4E90()
{
  if (!*(v0 + 568))
  {
    v10 = *(v0 + 592);
    v11 = *(v0 + 536);
LABEL_7:

LABEL_11:
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 216);
    sub_16DBBC();
    sub_A7704();
    v21 = sub_3BD68();
    v22(v21);
    v23 = sub_16DBDC();
    v24 = sub_16E37C();
    if (sub_1BA1C(v24))
    {
      v25 = sub_1BA38();
      sub_1BA50(v25);
      sub_1B9D0(&def_259DC, v26, v27, "Couldn't create data or date dialog labels or deeplink");
      sub_1BA00();
    }

    v29 = *(v0 + 496);
    v28 = *(v0 + 504);
    v30 = *(v0 + 488);
    v31 = *(v0 + 464);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 216);
    v35 = *(v0 + 192);

    (*(v33 + 8))(v32, v34);
    sub_8748(v31, &qword_1C5800, &unk_16F510);
    sub_8748(v30, &qword_1C57F8, &unk_172510);
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0;
    sub_A72B4();
    v159 = *(v0 + 360);
    v161 = *(v0 + 352);
    v164 = *(v0 + 344);
    v167 = *(v0 + 328);
    v169 = *(v0 + 320);
    v171 = *(v0 + 312);
    v173 = *(v0 + 304);
    v175 = *(v0 + 296);
    v178 = *(v0 + 280);
    v180 = *(v0 + 272);
    v182 = *(v0 + 264);
    v184 = *(v0 + 256);
    v187 = *(v0 + 248);
    v190 = *(v0 + 240);
    v193 = *(v0 + 232);

    sub_C9BC();

    return v36();
  }

  if (!*(v0 + 536))
  {
    v12 = *(v0 + 592);
    v13 = *(v0 + 568);
    goto LABEL_7;
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 392);
  sub_A7028();
  v4 = sub_A76DC();
  if (sub_369C(v4, v5, v3) == 1)
  {
    v6 = *(v0 + 592);
    v7 = *(v0 + 480);

    v8 = &qword_1C57F8;
    v9 = &unk_172510;
LABEL_10:
    sub_8748(v7, v8, v9);
    goto LABEL_11;
  }

  v15 = *(v0 + 456);
  v14 = *(v0 + 464);
  v16 = *(v0 + 368);
  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 480), *(v0 + 392));
  sub_38B40();
  sub_A7028();
  if (sub_369C(v15, 1, v16) == 1)
  {
    v17 = *(v0 + 592);
    v7 = *(v0 + 456);
    (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));

    v8 = &qword_1C5800;
    v9 = &unk_16F510;
    goto LABEL_10;
  }

  v162 = *(v0 + 584);
  v165 = *(v0 + 592);
  v38 = *(v0 + 560);
  v147 = *(v0 + 528);
  v155 = *(v0 + 625);
  v156 = *(v0 + 512);
  v174 = *(v0 + 504);
  v183 = *(v0 + 496);
  v185 = *(v0 + 472);
  v39 = *(v0 + 456);
  v188 = *(v0 + 440);
  v191 = *(v0 + 448);
  v170 = *(v0 + 432);
  v172 = *(v0 + 424);
  v149 = *(v0 + 400);
  v152 = *(v0 + 392);
  v153 = *(v0 + 408);
  v40 = *(v0 + 368);
  v194 = *(v0 + 376);
  v179 = v40;
  v181 = *(v0 + 384);
  v41 = *(v0 + 360);
  v42 = *(v0 + 336);
  v168 = *(v0 + 328);
  v43 = *(v0 + 320);
  v44 = *(v0 + 288);
  v176 = *(v0 + 280);
  v158 = *(v0 + 272);
  v45 = *(v0 + 208);
  v46 = *(v0 + 624);
  (*(v194 + 32))();
  sub_16E23C();

  v47 = sub_25948(v46);
  v49 = v48;
  v50 = sub_208C0(v46);
  v51 = (v41 + *(v42 + 20));
  *v51 = v47;
  v51[1] = v49;
  v52 = (v41 + *(v42 + 24));
  *v52 = v50;
  v52[1] = v53;
  [v45 maximum];
  v55 = v54;
  v56 = sub_A6F70(v45);
  v58 = sub_99F0C(v56, v57, v46, v55);

  [v45 minimum];
  v60 = v59;
  v61 = sub_A6F70(v45);
  v63 = sub_99F0C(v61, v62, v46, v60);

  [v45 mostRecent];
  v65 = v64;
  v66 = sub_A6F70(v45);
  v68 = sub_99F0C(v66, v67, v46, v65);

  v69 = sub_A6AD8(v46, v183, v45);
  v71 = v70;
  v143 = v72;
  v160 = *(v194 + 16);
  v160(v191, v181, v179, v69);
  sub_388E4();
  sub_214C(v73, v74, v75, v179);
  sub_16E23C();

  sub_388E4();
  sub_214C(v76, v77, v78, v179);
  (*(v149 + 16))(v185, v153, v152);
  sub_388E4();
  sub_214C(v79, v80, v81, v152);
  sub_A71E8();
  sub_A70D8();
  sub_388E4();
  sub_214C(v82, v83, v84, v42);
  v150 = sub_16C11C();
  sub_8AB4();
  sub_214C(v85, v86, v87, v88);
  v89 = v44[10];
  sub_8AB4();
  sub_214C(v90, v91, v92, v179);
  v93 = v44[16];
  sub_8AB4();
  sub_214C(v94, v95, v96, v179);
  v141 = v44[18];
  sub_8AB4();
  sub_214C(v97, v98, v99, v42);
  v100 = v156;
  if ((v156 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v101 = v156;
  }

  else
  {
    v101 = 0;
  }

  if ((v155 & 1) == 0)
  {
    v100 = v101;
  }

  v140 = v100;
  v102 = v43 + v44[5];
  *v102 = v100;
  v139 = v155 & 1 | ((v156 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v102 + 8) = v139;
  if (v58 == 0.0)
  {
    v103 = 0;
  }

  else
  {
    v103 = *&v58;
  }

  v142 = v103;
  sub_A7364(v44[6]);
  if (v63 == 0.0)
  {
    v104 = 0;
  }

  else
  {
    v104 = *&v63;
  }

  v151 = v104;
  sub_A7364(v44[7]);
  if (v68 == 0.0)
  {
    v105 = 0;
  }

  else
  {
    v105 = *&v68;
  }

  v154 = v105;
  sub_A7364(v44[8]);
  v106 = (v71 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((v71 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v107 = v71;
  }

  else
  {
    v107 = 0;
  }

  v108 = v143;
  if (v143)
  {
    v109 = v71;
  }

  else
  {
    v109 = v107;
  }

  v110 = v43 + v44[9];
  v111 = (v43 + v44[11]);
  v112 = (v43 + v44[12]);
  v144 = (v43 + v44[13]);
  v146 = (v43 + v44[14]);
  v148 = v109;
  v157 = (v43 + v44[15]);
  v113 = (v43 + v44[17]);
  *v110 = v109;
  v145 = (v108 | v106) & 1;
  *(v110 + 8) = v145;
  sub_A6FD0();
  sub_A6FD0();
  sub_D588C(v185);
  sub_388E4();
  sub_214C(v114, v115, v116, v150);
  sub_5FFFC(v158, v43);
  *v113 = v162;
  v113[1] = v165;
  sub_A6FD0();
  *v111 = sub_D5A34(v140, v139, v43 + v93, 1);
  v111[1] = v117;
  *v112 = sub_D5A34(v142, v58 == 0.0, v43 + v93, 1);
  v112[1] = v118;
  *v144 = sub_D5A34(v151, v63 == 0.0, v43 + v93, 0);
  v144[1] = v119;
  *v146 = sub_D5A34(v154, v68 == 0.0, v43 + v93, 1);
  v146[1] = v120;
  v121 = sub_D5A34(v148, v145, v43 + v93, 1);
  v123 = v122;
  sub_8748(v176, &dword_1C63F8, &qword_171800);
  sub_8748(v185, &qword_1C57F8, &unk_172510);
  sub_8748(v188, &qword_1C5800, &unk_16F510);
  sub_8748(v191, &qword_1C5800, &unk_16F510);
  *v157 = v121;
  v157[1] = v123;
  sub_A7458();
  sub_A7080();
  v124 = v44[7];
  v125 = v168 + v44[8];
  v192 = *v125;
  v189 = *(v125 + 8);
  v186 = *(v168 + v124);
  v177 = *(v168 + v124 + 8);
  v126 = v44[5];
  v127 = (v168 + v44[6]);
  v166 = *v127;
  v163 = *(v127 + 8);
  v128 = *(v168 + v126);
  LOBYTE(v113) = *(v168 + v126 + 8);
  v129 = (v168 + v44[9]);
  v130 = *v129;
  LOBYTE(v121) = *(v129 + 8);
  (v160)(v170, v181, v179);
  sub_388E4();
  sub_214C(v131, v132, v133, v179);
  (v160)(v172, v181, v179);
  sub_388E4();
  sub_214C(v134, v135, v136, v179);

  v137 = swift_task_alloc();
  *(v0 + 600) = v137;
  *v137 = v0;
  v137[1] = sub_A5970;
  v138 = *(v0 + 624);
  v197 = *(v0 + 424);
  v196 = *(v0 + 432);

  return sub_10E85C(v138, v183, 0, 1, v192, v189, v186, v177);
}