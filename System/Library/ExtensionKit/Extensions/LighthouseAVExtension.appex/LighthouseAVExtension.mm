Swift::Int sub_1000014D8()
{
  sub_1000045A8();
  sub_100004468();
  return sub_1000045B8();
}

Swift::Int sub_10000154C()
{
  sub_1000045A8();
  sub_100004468();
  return sub_1000045B8();
}

uint64_t sub_1000015A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008558;
  v7._object = v3;
  v5 = sub_100004528(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001624()
{
  v0 = sub_100004428();
  sub_100003FB0(v0, qword_10000C430);
  sub_100002FA4(v0, qword_10000C430);
  return sub_100004418();
}

uint64_t sub_1000016A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v3[35] = a1;
  v4 = sub_100004428();
  v3[38] = v4;
  v5 = *(v4 - 8);
  v3[39] = v5;
  v6 = *(v5 + 64) + 15;
  v3[40] = swift_task_alloc();
  v7 = sub_100004358();
  v3[41] = v7;
  v8 = *(v7 - 8);
  v3[42] = v8;
  v9 = *(v8 + 64) + 15;
  v3[43] = swift_task_alloc();
  v10 = sub_1000042F8();
  v3[44] = v10;
  v11 = *(v10 - 8);
  v3[45] = v11;
  v12 = *(v11 + 64) + 15;
  v3[46] = swift_task_alloc();
  v13 = sub_100004308();
  v3[47] = v13;
  v14 = *(v13 - 8);
  v3[48] = v14;
  v15 = *(v14 + 64) + 15;
  v3[49] = swift_task_alloc();
  v16 = sub_100004268();
  v3[50] = v16;
  v17 = *(v16 - 8);
  v3[51] = v17;
  v18 = *(v17 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v19 = *(*(sub_100002F18(&qword_10000C010, &qword_1000049B8) - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v20 = *(*(sub_100002F18(&qword_10000C018, &qword_1000049C0) - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v21 = sub_100002F18(&qword_10000C020, &qword_1000049C8);
  v3[57] = v21;
  v22 = *(v21 - 8);
  v3[58] = v22;
  v23 = *(v22 + 64) + 15;
  v3[59] = swift_task_alloc();

  return _swift_task_switch(sub_1000019C4, 0, 0);
}

uint64_t sub_1000019C4()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  *(v0 + 480) = sub_1000043E8();
  *(v0 + 488) = v4;
  *(v0 + 508) = os_variant_has_internal_diagnostics();
  *(v0 + 264) = v2;
  *(v0 + 272) = v1;
  v5 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v6 = swift_task_alloc();
  *(v0 + 496) = v6;
  v7 = sub_100002EC4();
  v8 = sub_100002F60(&qword_10000C028);
  v9 = sub_100002F60(&qword_10000C030);
  *v6 = v0;
  v6[1] = sub_100001AF4;
  v10 = *(v0 + 448);
  v11 = *(v0 + 376);
  v12 = *(v0 + 280);

  return MLHostExtension.loadConfig<A>(context:)(v10, v12, &type metadata for LighthouseAVExtension, v11, v7, v8, v9);
}

uint64_t sub_100001AF4()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return _swift_task_switch(sub_100001BF0, 0, 0);
}

uint64_t sub_100001BF0()
{
  v119 = v0;
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[61];

    sub_1000030A0(v3, &qword_10000C018, &qword_1000049C0);
    if (qword_10000C0A0 != -1)
    {
      swift_once();
    }

    sub_100002FA4(v0[38], qword_10000C430);
    v5 = sub_100004408();
    v6 = sub_1000044A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to parse config. Exiting early.", v7, 2u);
    }

    v118[3] = &type metadata for PluginAssetError;
    v118[4] = sub_100002FDC();
    v8 = objc_allocWithZone(sub_100004398());
    v115 = sub_100004378();
  }

  else
  {
    v10 = v0[54];
    v9 = v0[55];
    v11 = v0[50];
    v12 = v0[51];
    (*(v2 + 32))(v0[59], v3, v1);
    v13 = sub_100004298();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_100004288();
    sub_100004278();
    sub_100003030(v9, v10);
    v16 = (*(v12 + 48))(v10, 1, v11);
    v17 = v0[54];
    if (v16 == 1)
    {
      v18 = v0[61];

      sub_1000030A0(v17, &qword_10000C010, &qword_1000049B8);
      if (qword_10000C0A0 != -1)
      {
        swift_once();
      }

      sub_100002FA4(v0[38], qword_10000C430);
      v19 = sub_100004408();
      v20 = sub_1000044C8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "No data or no job description available to run evaluation.", v21, 2u);
      }
    }

    else
    {
      v109 = v0[57];
      v111 = v0[59];
      v23 = v0[52];
      v22 = v0[53];
      v24 = v0[50];
      v25 = v0[51];
      v27 = v0[48];
      v26 = v0[49];
      v28 = v0[46];
      v29 = v0[45];
      v113 = v0[47];
      v116 = v0[44];
      (*(v25 + 32))(v22, v17, v24);
      (*(v25 + 16))(v23, v22, v24);
      v30 = sub_1000042C8();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_1000042B8();
      sub_1000043D8();
      v33 = sub_1000042A8();
      (*(v27 + 8))(v26, v113);
      sub_1000042E8();
      sub_1000042D8();
      (*(v29 + 8))(v28, v116);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v0[42];
        v36 = *(v35 + 16);
        v35 += 16;
        v106 = v36;
        v37 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
        v104 = (v0[39] + 8);
        v105 = *(v35 + 56);
        v103 = (v35 - 8);
        v38 = &_swiftEmptyDictionarySingleton;
        do
        {
          v114 = v34;
          v117 = v38;
          v107 = v0[60];
          v108 = v0[61];
          v56 = v0[40];
          v55 = v0[41];
          if (*(v0 + 508))
          {
            v57 = 1001;
          }

          else
          {
            v57 = 5001;
          }

          v110 = v57;
          v112 = v37;
          v106(v0[43]);
          sub_100002F18(&qword_10000C040, &qword_1000049D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000048C0;
          *(inited + 32) = 0x614E63697274656DLL;
          *(inited + 40) = 0xEA0000000000656DLL;
          sub_100004318();
          v59 = sub_100004458();

          *(inited + 48) = v59;
          *(inited + 56) = 0x615663697274656DLL;
          *(inited + 64) = 0xEB0000000065756CLL;
          sub_100004328();
          *(inited + 72) = sub_100004488();
          *(inited + 80) = 0xD000000000000012;
          *(inited + 88) = 0x8000000100004B90;
          sub_100004348();
          v60 = sub_100004458();

          *(inited + 96) = v60;
          *(inited + 104) = 0x5573656C706D6173;
          *(inited + 112) = 0xEB00000000646573;
          sub_100004338();
          *(inited + 120) = sub_100004498();
          *(inited + 128) = 0xD000000000000011;
          *(inited + 136) = 0x8000000100004BB0;
          *(inited + 144) = sub_100004458();
          *(inited + 152) = 0xD000000000000010;
          *(inited + 160) = 0x8000000100004BD0;
          *(inited + 168) = sub_100004458();
          *(inited + 176) = 0xD000000000000011;
          *(inited + 184) = 0x8000000100004BF0;
          *(v0 + 126) = v110;
          sub_100004538();
          v61 = sub_100004458();

          *(inited + 192) = v61;
          v62 = sub_100003D60(inited);
          swift_setDeallocating();
          sub_100002F18(&qword_10000C048, &qword_1000049D8);
          swift_arrayDestroy();
          sub_1000043F8();

          v63 = sub_100004408();
          v64 = sub_1000044A8();

          v65 = os_log_type_enabled(v63, v64);
          v66 = v0[40];
          v67 = v0[38];
          if (v65)
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v118[0] = v69;
            *v68 = 136315138;
            sub_100003F08(0, &qword_10000C058, NSObject_ptr);
            v70 = sub_100004448();
            v72 = sub_100003100(v70, v71, v118);

            *(v68 + 4) = v72;
            _os_log_impl(&_mh_execute_header, v63, v64, "Submitting %s.", v68, 0xCu);
            sub_100003EBC(v69);
          }

          (*v104)(v66, v67);
          v39 = v0[43];
          v40 = v0[41];
          v41 = v0[36];
          v42 = v0[37];
          v43 = sub_100004458();
          v44 = swift_allocObject();
          *(v44 + 16) = v62;
          v0[31] = sub_100003E9C;
          v0[32] = v44;
          v0[27] = _NSConcreteStackBlock;
          v0[28] = 1107296256;
          v0[29] = sub_1000027E8;
          v0[30] = &unk_100008660;
          v45 = _Block_copy(v0 + 27);
          v46 = v0[32];

          AnalyticsSendEventLazy();
          _Block_release(v45);

          v47 = sub_100004318();
          v49 = v48;
          sub_100004328();
          isa = sub_100004488().super.super.isa;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118[0] = v117;
          sub_100003A7C(isa, v47, v49, isUniquelyReferenced_nonNull_native);

          v52 = v118[0];
          sub_100004338();
          v53 = sub_100004498().super.super.isa;
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v118[0] = v52;
          sub_100003A7C(v53, 0x5573656C706D6173, 0xEB00000000646573, v54);
          v38 = v118[0];
          (*v103)(v39, v40);
          v37 = v112 + v105;
          v34 = v114 - 1;
        }

        while (v114 != 1);
      }

      else
      {
      }

      v73 = v0[61];

      if (qword_10000C0A0 != -1)
      {
        swift_once();
      }

      sub_100002FA4(v0[38], qword_10000C430);
      v74 = sub_100004408();
      v75 = sub_1000044B8();
      v76 = os_log_type_enabled(v74, v75);
      v77 = v0[53];
      v78 = v0[50];
      v79 = v0[51];
      if (v76)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v118[0] = v81;
        *v80 = 136315138;
        sub_100003F08(0, &qword_10000C050, NSNumber_ptr);

        v82 = sub_100004448();
        v84 = v83;

        v85 = sub_100003100(v82, v84, v118);

        *(v80 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v74, v75, "Metrics to report: %s", v80, 0xCu);
        sub_100003EBC(v81);
      }

      (*(v79 + 8))(v77, v78);
    }

    v87 = v0[58];
    v86 = v0[59];
    v88 = v0[57];
    v89 = v0[55];
    v90 = objc_allocWithZone(sub_100004398());
    v115 = sub_100004388();

    sub_1000030A0(v89, &qword_10000C010, &qword_1000049B8);
    (*(v87 + 8))(v86, v88);
  }

  v91 = v0[59];
  v93 = v0[55];
  v92 = v0[56];
  v95 = v0[53];
  v94 = v0[54];
  v96 = v0[52];
  v97 = v0[49];
  v98 = v0[46];
  v99 = v0[43];
  v100 = v0[40];

  v101 = v0[1];

  return v101(v115);
}

Class sub_1000027E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100003F08(0, &qword_10000C058, NSObject_ptr);
    v5.super.isa = sub_100004438().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100002884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100004264;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100002934(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000029DC;

  return sub_1000016A0(a1, v5, v4);
}

uint64_t sub_1000029DC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100002BBC;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002BBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002CB0(uint64_t a1)
{
  v2 = sub_100002EC4();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002D78();
  sub_100004368();
  return 0;
}

unint64_t sub_100002D78()
{
  result = qword_10000C000;
  if (!qword_10000C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C000);
  }

  return result;
}

__n128 sub_100002DCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002DD8(uint64_t a1, int a2)
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

uint64_t sub_100002E20(uint64_t result, int a2, int a3)
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

unint64_t sub_100002EC4()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

uint64_t sub_100002F18(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002F60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004308();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002FA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002FDC()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_100003030(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F18(&qword_10000C010, &qword_1000049B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000030A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000031CC(v11, 0, 0, 1, a1, a2);
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
    sub_100003F50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003EBC(v11);
  return v7;
}

unint64_t sub_1000031CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000032D8(a5, a6);
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
    result = sub_1000044E8();
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

char *sub_1000032D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003324(a1, a2);
  sub_100003454(&off_100008590);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003324(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003540(v5, 0);
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

  result = sub_1000044E8();
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
        v10 = sub_100004478();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003540(v10, 0);
        result = sub_1000044D8();
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

uint64_t sub_100003454(uint64_t result)
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

  result = sub_1000035B4(result, v12, 1, v3);
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

void *sub_100003540(uint64_t a1, uint64_t a2)
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

  sub_100002F18(&qword_10000C060, &qword_1000049E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000035B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002F18(&qword_10000C060, &qword_1000049E0);
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

unint64_t sub_1000036A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000045A8();
  sub_100004468();
  v6 = sub_1000045B8();

  return sub_100003720(a1, a2, v6);
}

unint64_t sub_100003720(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100004548())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000037D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002F18(&qword_10000C070, &unk_1000049F0);
  v39 = a2;
  result = sub_100004508();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1000045A8();
      sub_100004468();
      result = sub_1000045B8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000036A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000037D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000036A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100004558();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100003BF4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_100003BF4()
{
  v1 = v0;
  sub_100002F18(&qword_10000C070, &unk_1000049F0);
  v2 = *v0;
  v3 = sub_1000044F8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t sub_100003D60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002F18(&qword_10000C068, &qword_1000049E8);
    v3 = sub_100004518();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000036A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100003E64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003EBC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003F08(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100003F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003FB0(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for PluginAssetError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PluginAssetError(_WORD *result, int a2, int a3)
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

unint64_t sub_100004108()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100004160()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_1000041B8()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100004210()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}