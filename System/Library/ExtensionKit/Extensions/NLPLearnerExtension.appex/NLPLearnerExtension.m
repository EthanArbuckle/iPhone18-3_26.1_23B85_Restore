uint64_t sub_1000011E8()
{
  v0 = sub_100005D7C();
  sub_100005648(v0, qword_10000C940);
  sub_100004D2C(v0, qword_10000C940);
  return sub_100005D6C();
}

Swift::Int sub_100001270()
{
  sub_100005F2C();
  sub_100005F3C(0);
  return sub_100005F4C();
}

Swift::Int sub_1000012DC()
{
  sub_100005F2C();
  sub_100005F3C(0);
  return sub_100005F4C();
}

uint64_t sub_10000133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453657069636572 && a2 == 0xEC000000676E6972)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100005EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000013E0(uint64_t a1)
{
  v2 = sub_100004CD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000141C(uint64_t a1)
{
  v2 = sub_100004CD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004760(&qword_10000C0E8, &qword_1000064A8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100004C94(a1, a1[3]);
  sub_100004CD8();
  sub_100005F8C();
  if (v2)
  {
    return sub_100005360(a1);
  }

  v11 = sub_100005EAC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100005360(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000015D4(void *a1)
{
  v3 = sub_100004760(&qword_10000C0F0, &qword_1000064B0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_100004C94(a1, a1[3]);
  sub_100004CD8();
  sub_100005F9C();
  sub_100005EBC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10000171C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000019;
  v3 = &unk_100006740;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (v4)
    {
      v5 = "failedToParseRecipeString";
    }

    else
    {
      v5 = &unk_100006740;
    }
  }

  else if (a1 == 2)
  {
    v5 = "failedToFetchMLAsset";
    v6 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v5 = "failedToInstantiateWorker";
    v6 = 0xD000000000000011;
  }

  else
  {
    v5 = "failedToRunWorker";
    v6 = 0xD00000000000001ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000014;
      v3 = "failedToParseRecipeString";
    }
  }

  else if (a2 == 2)
  {
    v3 = "failedToFetchMLAsset";
  }

  else
  {
    v3 = "failedToInstantiateWorker";
    if (a2 == 3)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2 != 3)
    {
      v3 = "failedToRunWorker";
    }
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100005EDC();
  }

  return v7 & 1;
}

Swift::Int sub_100001880()
{
  v1 = *v0;
  sub_100005F2C();
  sub_100005DEC();

  return sub_100005F4C();
}

uint64_t sub_10000194C()
{
  *v0;
  *v0;
  *v0;
  sub_100005DEC();
}

Swift::Int sub_100001A04()
{
  v1 = *v0;
  sub_100005F2C();
  sub_100005DEC();

  return sub_100005F4C();
}

uint64_t sub_100001ACC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005B70(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100001AFC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = *v1;
  v4 = &unk_100006740;
  v5 = "failedToFetchMLAsset";
  v6 = "failedToInstantiateWorker";
  v7 = 0xD000000000000011;
  if (v3 != 3)
  {
    v7 = 0xD00000000000001ALL;
    v6 = "failedToRunWorker";
  }

  if (v3 == 2)
  {
    v8 = 0xD000000000000019;
  }

  else
  {
    v8 = v7;
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v2 = 0xD000000000000014;
    v4 = "failedToParseRecipeString";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v8;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t sub_100001B98(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_100005BDC();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = *(*(sub_100004760(&qword_10000C0F8, &qword_1000064C0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v7 = *(*(sub_100004760(&qword_10000C100, &qword_1000064C8) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v8 = sub_100005C1C();
  v2[30] = v8;
  v9 = *(v8 - 8);
  v2[31] = v9;
  v10 = *(v9 + 64) + 15;
  v2[32] = swift_task_alloc();
  v11 = *(*(sub_100004760(&qword_10000C108, &qword_1000064D0) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v12 = sub_100004760(&qword_10000C020, &unk_100006310);
  v2[34] = v12;
  v13 = *(v12 - 8);
  v2[35] = v13;
  v14 = *(v13 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_100001E18, 0, 0);
}

uint64_t sub_100001E18()
{
  if (qword_10000C170 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_100005D7C();
  v0[44] = sub_100004D2C(v2, qword_10000C940);
  v3 = v1;
  v4 = sub_100005D5C();
  v5 = sub_100005E1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_10000546C(v8, &qword_10000C128, &qword_1000064E8);
  }

  v10 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v11 = swift_task_alloc();
  v0[45] = v11;
  v12 = type metadata accessor for NLPLearnerExtension();
  v13 = sub_100004AF8(&qword_10000C0C0);
  v14 = sub_10000490C();
  v15 = sub_100004960();
  *v11 = v0;
  v11[1] = sub_100002030;
  v16 = v0[33];
  v17 = v0[23];
  v18 = v0[24];

  return MLHostExtension.loadConfig<A>(context:)(v16, v17, v12, &type metadata for NLPLearnerExtensionConfig, v13, v14, v15);
}

uint64_t sub_100002030()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_10000212C, 0, 0);
}

uint64_t sub_10000212C()
{
  v108 = v0;
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[43];
  if (v5 == 1)
  {
    v7 = *(v2 + 16);
    v8 = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v6, v0[24], v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_10000546C(v0[33], &qword_10000C108, &qword_1000064D0);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
    v7 = *(v2 + 16);
    v8 = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v9 = v0[43];
  v10 = v0[44];
  v11 = v0[42];
  v12 = v0[34];
  v0[46] = v7;
  v0[47] = v8;
  v101 = v7;
  v7(v11, v9, v12);
  v13 = sub_100005D5C();
  v14 = sub_100005E1C();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[42];
  v17 = v0[34];
  v18 = v0[35];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v105[0] = v99;
    *v19 = 136315138;
    sub_100005424(&qword_10000C120, &qword_10000C020, &unk_100006310);
    v20 = sub_100005ECC();
    v22 = v21;
    v103 = *(v18 + 8);
    v103(v16, v17);
    v23 = sub_100004DB8(v20, v22, v105);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Configuration: %s", v19, 0xCu);
    sub_100005360(v99);
  }

  else
  {

    v103 = *(v18 + 8);
    v103(v16, v17);
  }

  v0[48] = v103;
  v24 = v0[44];
  v101(v0[41], v0[43], v0[34]);
  v25 = sub_100005D5C();
  v26 = sub_100005E1C();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[41];
  v29 = v0[34];
  v30 = v0[35];
  if (v27)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v105[0] = v32;
    *v31 = 136315138;
    sub_100005CCC();
    v103(v28, v29);
    v33 = sub_100004DB8(v0[16], v0[17], v105);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Recipe: %s", v31, 0xCu);
    sub_100005360(v32);
  }

  else
  {

    v103(v28, v29);
  }

  v34 = v0[43];
  v35 = v0[34];
  sub_100005CCC();
  v36 = sub_1000035A4(v0[2], v0[3]);

  if (v36)
  {
    if (*(v36 + 16))
    {
      v37 = sub_1000053AC(0x656C61636F6CLL, 0xE600000000000000);
      if (v38)
      {
        v0[18] = *(*(v36 + 56) + 8 * v37);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v39 = v0[32];
          v40 = v0[8];
          v41 = v0[9];
          sub_100005BFC();
          if (*(v36 + 16) && (v42 = sub_1000053AC(0x7363697274656DLL, 0xE700000000000000), (v43 & 1) != 0) && (v0[19] = *(*(v36 + 56) + 8 * v42), swift_unknownObjectRetain(), sub_100004760(&qword_10000C118, &qword_1000064D8), (swift_dynamicCast() & 1) != 0))
          {
            v0[49] = v0[20];
            if (*(v36 + 16) && (v44 = sub_1000053AC(0xD000000000000018, 0x8000000100006870), (v45 & 1) != 0))
            {
              v46 = *(*(v36 + 56) + 8 * v44);
              swift_unknownObjectRetain();

              v0[21] = v46;
              if (swift_dynamicCast())
              {
                v0[50] = v0[22];
                v47 = swift_task_alloc();
                v0[51] = v47;
                *v47 = v0;
                v47[1] = sub_100002BBC;
                v48 = v0[43];
                v49 = v0[23];

                return sub_1000038E4(v49, v48);
              }
            }

            else
            {
            }

            v97 = v0[44];
            v86 = sub_100005D5C();
            v87 = sub_100005E2C();
            if (!os_log_type_enabled(v86, v87))
            {
              goto LABEL_39;
            }

            v88 = swift_slowAlloc();
            *v88 = 0;
            v89 = "Evaluation Recipe does not contain a sample limit for evaluation";
          }

          else
          {

            v85 = v0[44];
            v86 = sub_100005D5C();
            v87 = sub_100005E2C();
            if (!os_log_type_enabled(v86, v87))
            {
LABEL_39:
              v90 = v0[43];
              v91 = v0[34];
              v92 = v0[35];
              v94 = v0[31];
              v93 = v0[32];
              v95 = v0[30];

              v106 = &type metadata for NLPLearnerExtensionErrorCode;
              v107 = sub_100004D64();
              LOBYTE(v105[0]) = 4;
              v96 = objc_allocWithZone(sub_100005C8C());
              v102 = sub_100005C6C();
              (*(v94 + 8))(v93, v95);
              v103(v90, v91);
              goto LABEL_33;
            }

            v88 = swift_slowAlloc();
            *v88 = 0;
            v89 = "Evaluation Recipe does not contain metric ACT parameters";
          }

          _os_log_impl(&_mh_execute_header, v86, v87, v89, v88, 2u);

          goto LABEL_39;
        }
      }
    }

    v51 = v0[44];
    v101(v0[37], v0[43], v0[34]);
    v52 = sub_100005D5C();
    v53 = sub_100005E2C();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[37];
    v56 = v0[34];
    v57 = v0[35];
    if (v54)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v105[0] = v59;
      *v58 = 136315138;
      sub_100005CCC();
      v103(v55, v56);
      v60 = sub_100004DB8(v0[6], v0[7], v105);

      *(v58 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "Evaluation Recipe does not contain locale information. %s", v58, 0xCu);
      sub_100005360(v59);
    }

    else
    {

      v103(v55, v56);
    }

    v71 = v0[43];
    v72 = v0[34];
    v106 = &type metadata for NLPLearnerExtensionErrorCode;
    v107 = sub_100004D64();
    LOBYTE(v105[0]) = 4;
  }

  else
  {
    v61 = v0[44];
    v101(v0[36], v0[43], v0[34]);
    v62 = sub_100005D5C();
    v63 = sub_100005E2C();
    v64 = os_log_type_enabled(v62, v63);
    v66 = v0[35];
    v65 = v0[36];
    v67 = v0[34];
    if (v64)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v105[0] = v69;
      *v68 = 136315138;
      sub_100005CCC();
      v103(v65, v67);
      v70 = sub_100004DB8(v0[4], v0[5], v105);

      *(v68 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to parse recipeString into dictionary: %s", v68, 0xCu);
      sub_100005360(v69);
    }

    else
    {

      v103(v65, v67);
    }

    v71 = v0[43];
    v72 = v0[34];
    v106 = &type metadata for NLPLearnerExtensionErrorCode;
    v107 = sub_100004D64();
    LOBYTE(v105[0]) = 0;
  }

  v73 = objc_allocWithZone(sub_100005C8C());
  v102 = sub_100005C6C();
  v103(v71, v72);
LABEL_33:
  v75 = v0[42];
  v74 = v0[43];
  v77 = v0[40];
  v76 = v0[41];
  v79 = v0[38];
  v78 = v0[39];
  v81 = v0[36];
  v80 = v0[37];
  v82 = v0[32];
  v83 = v0[33];
  v98 = v0[29];
  v100 = v0[28];
  v104 = v0[27];

  v84 = v0[1];

  return v84(v102);
}

uint64_t sub_100002BBC(uint64_t a1)
{
  v2 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_100002CBC, 0, 0);
}

uint64_t sub_100002CBC()
{
  v122 = v0;
  if (*(v0 + 416))
  {
    v1 = *(v0 + 248);
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 224);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    (*(v1 + 16))(v3, *(v0 + 256), v2);
    (*(v1 + 56))(v3, 0, 1, v2);
    sub_100005D2C();
    sub_100005C4C();
    (*(v5 + 56))(v4, 0, 1, v6);
    if ((*(v1 + 48))(v3, 1, v2) == 1)
    {
      isa = 0;
    }

    else
    {
      v27 = *(v0 + 240);
      v26 = *(v0 + 248);
      v28 = *(v0 + 232);
      isa = sub_100005C0C().super.isa;
      (*(v26 + 8))(v28, v27);
    }

    v29 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = sub_100005DAC();

    if ((*(v30 + 48))(v29, 1, v31) == 1)
    {
      v34 = 0;
    }

    else
    {
      v35 = *(v0 + 224);
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      sub_100005BCC(v33);
      v34 = v38;
      (*(v36 + 8))(v35, v37);
    }

    v39 = *(v0 + 392);
    v40 = objc_allocWithZone(NLPLearnerExtensionWorker);
    v41 = sub_100005D8C().super.isa;

    v42 = [v40 initWithLocale:isa experimentName:v32 modelURL:v34 metricParameters:v41];

    if (v42)
    {
      v43 = *(v0 + 400);
      v44 = *(v0 + 208);
      v45 = *(v0 + 216);
      v46 = *(v0 + 200);
      sub_100005C4C();
      sub_100005BCC(v47);
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      LODWORD(v43) = [v42 evaluateModel:v49 sampleLimit:v43];

      if (v43)
      {
        v115 = *(v0 + 384);
        v50 = *(v0 + 344);
        v52 = *(v0 + 272);
        v51 = *(v0 + 280);
        v54 = *(v0 + 248);
        v53 = *(v0 + 256);
        v55 = *(v0 + 240);
        v56 = objc_allocWithZone(sub_100005C8C());
        v118 = sub_100005C7C();

        (*(v54 + 8))(v53, v55);
        v115(v50, v52);
      }

      else
      {
        v69 = *(v0 + 376);
        v70 = *(v0 + 352);
        (*(v0 + 368))(*(v0 + 320), *(v0 + 344), *(v0 + 272));
        v71 = sub_100005D5C();
        v72 = sub_100005E2C();
        v73 = os_log_type_enabled(v71, v72);
        v74 = *(v0 + 384);
        v75 = *(v0 + 320);
        v76 = *(v0 + 272);
        v77 = *(v0 + 280);
        if (v73)
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v119[0] = v79;
          *v78 = 136315138;
          sub_100005CCC();
          v74(v75, v76);
          v80 = sub_100004DB8(*(v0 + 112), *(v0 + 120), v119);

          *(v78 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v71, v72, "Failed to run extension worker. %s", v78, 0xCu);
          sub_100005360(v79);
        }

        else
        {

          v74(v75, v76);
        }

        v95 = *(v0 + 384);
        v96 = *(v0 + 344);
        v97 = *(v0 + 272);
        v98 = *(v0 + 248);
        v99 = *(v0 + 256);
        v100 = *(v0 + 240);
        v120 = &type metadata for NLPLearnerExtensionErrorCode;
        v121 = sub_100004D64();
        LOBYTE(v119[0]) = 3;
        v101 = objc_allocWithZone(sub_100005C8C());
        v118 = sub_100005C6C();

        (*(v98 + 8))(v99, v100);
        v95(v96, v97);
      }
    }

    else
    {
      v57 = *(v0 + 376);
      v58 = *(v0 + 352);
      (*(v0 + 368))(*(v0 + 312), *(v0 + 344), *(v0 + 272));
      v59 = sub_100005D5C();
      v60 = sub_100005E2C();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 384);
      v63 = *(v0 + 312);
      v64 = *(v0 + 272);
      v65 = *(v0 + 280);
      if (v61)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v119[0] = v67;
        *v66 = 136315138;
        sub_100005CCC();
        v62(v63, v64);
        v68 = sub_100004DB8(*(v0 + 96), *(v0 + 104), v119);

        *(v66 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v59, v60, "Failed to instantiate extension worker. %s", v66, 0xCu);
        sub_100005360(v67);
      }

      else
      {

        v62(v63, v64);
      }

      v88 = *(v0 + 384);
      v89 = *(v0 + 344);
      v90 = *(v0 + 272);
      v92 = *(v0 + 248);
      v91 = *(v0 + 256);
      v93 = *(v0 + 240);
      v120 = &type metadata for NLPLearnerExtensionErrorCode;
      v121 = sub_100004D64();
      LOBYTE(v119[0]) = 2;
      v94 = objc_allocWithZone(sub_100005C8C());
      v118 = sub_100005C6C();

      (*(v92 + 8))(v91, v93);
      v88(v89, v90);
    }
  }

  else
  {
    v9 = *(v0 + 392);
    v11 = *(v0 + 368);
    v10 = *(v0 + 376);
    v12 = *(v0 + 344);
    v13 = *(v0 + 352);
    v14 = *(v0 + 304);
    v15 = *(v0 + 272);

    v11(v14, v12, v15);
    v16 = sub_100005D5C();
    v17 = sub_100005E2C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 384);
    v20 = *(v0 + 304);
    v21 = *(v0 + 272);
    v22 = *(v0 + 280);
    if (v18)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v119[0] = v24;
      *v23 = 136315138;
      sub_100005CCC();
      v19(v20, v21);
      v25 = sub_100004DB8(*(v0 + 80), *(v0 + 88), v119);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch MLHostAsset. %s", v23, 0xCu);
      sub_100005360(v24);
    }

    else
    {

      v19(v20, v21);
    }

    v81 = *(v0 + 384);
    v82 = *(v0 + 344);
    v83 = *(v0 + 272);
    v85 = *(v0 + 248);
    v84 = *(v0 + 256);
    v86 = *(v0 + 240);
    v120 = &type metadata for NLPLearnerExtensionErrorCode;
    v121 = sub_100004D64();
    LOBYTE(v119[0]) = 1;
    v87 = objc_allocWithZone(sub_100005C8C());
    v118 = sub_100005C6C();
    (*(v85 + 8))(v84, v86);
    v81(v82, v83);
  }

  v103 = *(v0 + 336);
  v102 = *(v0 + 344);
  v105 = *(v0 + 320);
  v104 = *(v0 + 328);
  v107 = *(v0 + 304);
  v106 = *(v0 + 312);
  v109 = *(v0 + 288);
  v108 = *(v0 + 296);
  v110 = *(v0 + 256);
  v111 = *(v0 + 264);
  v114 = *(v0 + 232);
  v116 = *(v0 + 224);
  v117 = *(v0 + 216);

  v112 = *(v0 + 8);

  return v112(v118);
}

uint64_t sub_1000035A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC();
  v9 = sub_100005DBC();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  result = 0;
  if (v11 >> 60 != 15)
  {
    v13 = objc_opt_self();
    isa = sub_100005BEC().super.isa;
    v24[0] = 0;
    v15 = [v13 JSONObjectWithData:isa options:1 error:v24];

    if (v15)
    {
      v16 = v24[0];
      sub_100005E3C();
      sub_1000055E0(v9, v11);
      swift_unknownObjectRelease();
      sub_100004760(&qword_10000C140, &unk_100006500);
      if (swift_dynamicCast())
      {
        return v23[1];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = v24[0];
      sub_100005BBC();

      swift_willThrow();
      if (qword_10000C170 != -1)
      {
        swift_once();
      }

      v18 = sub_100005D7C();
      sub_100004D2C(v18, qword_10000C940);

      v19 = sub_100005D5C();
      v20 = sub_100005E1C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100004DB8(a1, a2, v24);
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to parse dictionary from string %s", v21, 0xCu);
        sub_100005360(v22);
      }

      sub_1000055E0(v9, v11);

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000038E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_100004760(&qword_10000C130, &qword_1000064F0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_100005D4C();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_100005D1C();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100003A38, 0, 0);
}

uint64_t sub_100003A38()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  sub_100004760(&qword_10000C020, &unk_100006310);
  sub_100005CDC();
  sub_100005D3C();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_10000546C(v0[4], &qword_10000C130, &qword_1000064F0);
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[4];

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[4], v0[8]);
    sub_100005C5C();
    v13 = sub_100005D0C();
    v15 = v14;
    v0[11] = v14;
    v16 = sub_100005CFC();
    v18 = v17;
    v0[12] = v17;
    v19 = async function pointer to static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)[1];
    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_100003C34;
    v21 = v0[2];

    return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v21, v13, v15, v16, v18);
  }
}

uint64_t sub_100003C34(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100003D70, 0, 0);
}

uint64_t sub_100003D70()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_100003E2C()
{
  objc_allocWithZone(sub_100005C8C());
  v1 = sub_100005C7C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100003EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003F34;

  return sub_100001B98(a1);
}

uint64_t sub_100003F34(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100004030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100004114;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100004114()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004208(uint64_t a1)
{
  v2 = sub_100004AF8(&qword_10000C0C0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100004270()
{
  sub_10000490C();
  sub_100004960();
  return sub_100005CBC();
}

uint64_t sub_1000042DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005F7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = &type metadata for NLPLearnerExtensionConfig;
  *&v25 = a1;
  *(&v25 + 1) = a2;

  sub_100005F5C();
  v9 = sub_100005F6C();
  (*(v5 + 8))(v8, v4);
  v21[1] = v9;
  sub_100005E6C();
  sub_100005E8C();
  if (*(&v27 + 1))
  {
    v10 = &_swiftEmptyArrayStorage;
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v11._object = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v11._countAndFlagsBits = *&v24[0];
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_100005DFC(v11);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_100005DFC(v28);
        sub_100005E7C();
        v12 = v22;
        v13 = v23;
        sub_10000546C(v24, &qword_10000C0D8, &qword_100006498);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100004B84(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100004B84((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
      }

      else
      {
        sub_10000546C(v24, &qword_10000C0D8, &qword_100006498);
      }

      sub_100005E8C();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v25 = 0xD00000000000001ALL;
  *(&v25 + 1) = 0x8000000100006850;
  *&v24[0] = v10;
  sub_100004760(&qword_10000C0C8, &qword_100006490);
  sub_100005424(&qword_10000C0D0, &qword_10000C0C8, &qword_100006490);
  v17 = sub_100005D9C();
  v19 = v18;

  v29._countAndFlagsBits = v17;
  v29._object = v19;
  sub_100005DFC(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_100005DFC(v30);
  return v25;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for NLPLearnerExtension();
  sub_100004AF8(&qword_10000C018);
  sub_100005C2C();
  return 0;
}

uint64_t type metadata accessor for NLPLearnerExtension()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004760(&qword_10000C020, &unk_100006310);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004760(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000047BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004760(&qword_10000C020, &unk_100006310);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100004838()
{
  sub_1000048A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000048A4()
{
  if (!qword_10000C080)
  {
    sub_10000490C();
    sub_100004960();
    v0 = sub_100005CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C080);
    }
  }
}

unint64_t sub_10000490C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100004960()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

__n128 sub_1000049B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000049C0(uint64_t a1, int a2)
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

uint64_t sub_100004A08(uint64_t result, int a2, int a3)
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

uint64_t sub_100004AF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLPLearnerExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004B3C(uint64_t *a1, uint64_t *a2)
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

char *sub_100004B84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004760(&qword_10000C0E0, &qword_1000064A0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100004C94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004CD8()
{
  result = qword_10000C410[0];
  if (!qword_10000C410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C410);
  }

  return result;
}

uint64_t sub_100004D2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004D64()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_100004DB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004E84(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005584(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005360(v11);
  return v7;
}

unint64_t sub_100004E84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004F90(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_100005E5C();
    a6 = v11;
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

char *sub_100004F90(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004FDC(a1, a2);
  sub_10000510C(&off_1000086D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004FDC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000051F8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005E5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100005E0C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000051F8(v10, 0);
        result = sub_100005E4C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000510C(uint64_t result)
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

  result = sub_10000526C(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_1000051F8(uint64_t a1, uint64_t a2)
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

  sub_100004760(&qword_10000C138, &qword_1000064F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000526C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004760(&qword_10000C138, &qword_1000064F8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_100005360(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000053AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100005F2C();
  sub_100005DEC();
  v6 = sub_100005F4C();

  return sub_1000054CC(a1, a2, v6);
}

uint64_t sub_100005424(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004B3C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000546C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004760(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000054CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100005EDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100005584(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000055E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000055F4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000055F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_100005648(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for NLPLearnerExtensionErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLPLearnerExtensionErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLPLearnerExtensionConfig.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NLPLearnerExtensionConfig.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10000590C()
{
  result = qword_10000C520[0];
  if (!qword_10000C520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C520);
  }

  return result;
}

unint64_t sub_100005964()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_1000059BC()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_100005A14()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_100005A6C()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

unint64_t sub_100005AC4()
{
  result = qword_10000C8B0;
  if (!qword_10000C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C8B0);
  }

  return result;
}

unint64_t sub_100005B1C()
{
  result = qword_10000C8B8[0];
  if (!qword_10000C8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C8B8);
  }

  return result;
}

uint64_t sub_100005B70(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008640;
  v6._object = a2;
  v4 = sub_100005E9C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}