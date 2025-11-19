uint64_t sub_10000147C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_100006984();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v5 = *(*(sub_100002E74(&qword_10000C350, &qword_100007108) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_100006944();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000015F0, 0, 0);
}

uint64_t sub_1000015F0()
{
  if (qword_10000C258 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v40 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_1000069D4();
  v7 = v6;
  type metadata accessor for BiomeBookmarkProvider();
  inited = swift_initStackObject();
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = sub_100006BE4();
  v11 = [v9 initWithSuiteName:v10];

  *(inited + 16) = v11;
  *(inited + 24) = v5;
  *(inited + 32) = v7;

  v43._object = 0x8000000100007210;
  v43._countAndFlagsBits = 0xD000000000000018;
  sub_100006BF4(v43);
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  sub_10000580C(v40);
  sub_100006934();
  v38 = *(v3 + 16);
  v38(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v12.super.isa = sub_100006914().super.isa;
  isa = 0;
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    v14 = v0[21];
    v15 = v0[22];
    v16 = v0[20];
    isa = sub_100006914().super.isa;
    (*(v15 + 8))(v16, v14);
  }

  v17 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v12.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  sub_1000069E4();
  sub_1000030C4(&qword_10000C358, 255, &type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry);
  v18 = v17;
  sub_1000069F4();
  v39 = v0[25];
  v41 = v0[24];
  v19 = v0[22];
  v20 = v0[21];
  v35 = v0[23];
  v36 = v18;
  v21 = v0[16];
  v22 = v0[17];
  v37 = v0[20];
  v23 = v0[14];
  v32 = v0[18];
  v33 = v0[15];
  v31 = v0[19];

  v34 = v0[13];
  sub_100002EBC(v0 + 9, v0[12]);
  (*(v22 + 16))(v31, v23, v21);
  v24 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  (*(v22 + 32))(v25 + v24, v31, v21);

  sub_100006BC4();

  v38(v35, v41, v20);
  sub_100005CF8(v35);
  swift_setDeallocating();

  v26 = *(inited + 32);

  v27 = *(inited + 48);

  v28 = *(v19 + 8);
  v28(v41, v20);
  v28(v39, v20);
  sub_10000310C(v0 + 9);

  v29 = v0[1];

  return v29();
}

void sub_100001B34(void *a1)
{
  if (!*a1)
  {
    if (qword_10000C260 != -1)
    {
      swift_once();
    }

    v6 = sub_100006BA4();
    sub_10000308C(v6, qword_10000C5B0);
    oslog = sub_100006B94();
    v7 = sub_100006C24();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Polling biome stream has finished", v8, 2u);
LABEL_10:

LABEL_11:

    return;
  }

  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v1 = sub_100006BA4();
  sub_10000308C(v1, qword_10000C5B0);
  swift_errorRetain();
  oslog = sub_100006B94();
  v2 = sub_100006C44();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Polling biome stream has failed: %@", v3, 0xCu);
    sub_100003868(v4, &qword_10000C390, &unk_100007138);

    goto LABEL_10;
  }
}

uint64_t sub_100001D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v4 = sub_100006B44();
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = *(v118 + 64);
  __chkstk_darwin(v4);
  v117 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006AE4();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  __chkstk_darwin(v7);
  v105 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006A54();
  v109 = *(v10 - 8);
  v110 = v10;
  v11 = *(v109 + 64);
  __chkstk_darwin(v10);
  v108 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006B64();
  v113 = *(v13 - 8);
  v114 = v13;
  v14 = *(v113 + 64);
  __chkstk_darwin(v13);
  v112 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100002E74(&qword_10000C360, &qword_100007110);
  v16 = *(*(v116 - 8) + 64);
  v17 = __chkstk_darwin(v116);
  v115 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v104 - v20;
  __chkstk_darwin(v19);
  v121 = &v104 - v22;
  v23 = sub_100002E74(&qword_10000C368, &qword_100007118);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v104 - v25;
  v27 = sub_100002E74(&qword_10000C370, &qword_100007120);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v122 = &v104 - v29;
  v30 = sub_100002E74(&qword_10000C378, &qword_100007128);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v104 - v32;
  v34 = sub_100002E74(&qword_10000C380, &qword_100007130);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v104 - v36;
  v38 = sub_100006964();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v120 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v123 = &v104 - v43;
  v44 = a1;
  sub_100006B14();
  v45 = sub_100006B84();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v33, 1, v45) == 1)
  {
    sub_100003868(v33, &qword_10000C378, &qword_100007128);
    (*(v39 + 56))(v37, 1, 1, v38);
    return sub_100003868(v37, &qword_10000C380, &qword_100007130);
  }

  sub_100006B74();
  (*(v46 + 8))(v33, v45);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    return sub_100003868(v37, &qword_10000C380, &qword_100007130);
  }

  v48 = v38;
  (*(v39 + 32))(v123, v37, v38);
  v49 = sub_100006954();
  v51 = v50;
  v52 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000068E4().super.isa;
  v104 = [v52 initWithBytesAsData:isa];

  sub_100003038(v49, v51);
  v54 = v44;
  sub_100006B24();
  sub_100003B64(v26, v122);
  sub_100003868(v26, &qword_10000C368, &qword_100007118);
  v55 = v121;
  sub_100006B34();
  v56 = sub_100006AF4();
  v57 = *(v56 - 8);
  v58 = (*(v57 + 48))(v55, 1, v56);
  v59 = v39;
  v60 = v119;
  if (v58 == 1)
  {
    goto LABEL_6;
  }

  sub_100003158(v55, v21);
  v74 = (*(v57 + 88))(v21, v56);
  if (v74 == enum case for CacheManagerTarget.invocation(_:))
  {
    (*(v57 + 96))(v21, v56);
    v76 = v112;
    v75 = v113;
    v77 = v114;
    (*(v113 + 32))(v112, v21, v114);
    sub_1000031C8(v104);
    (*(v75 + 8))(v76, v77);
    v78 = 0xEA00000000006E6FLL;
    v79 = 0x697461636F766E69;
  }

  else
  {
    if (v74 == enum case for CacheManagerTarget.insertContext(_:))
    {
      (*(v57 + 96))(v21, v56);
      v83 = v108;
      v82 = v109;
      v84 = v110;
      (*(v109 + 32))(v108, v21, v110);
      v85 = sub_100003F50(v83, v104);
      sub_100003684(v85);

      (*(v82 + 8))(v83, v84);
      v86 = 0x747265736E69;
    }

    else
    {
      if (v74 != enum case for CacheManagerTarget.searchContext(_:))
      {
        (*(v57 + 8))(v21, v56);
LABEL_6:
        if (qword_10000C268 != -1)
        {
          swift_once();
        }

        v61 = sub_100006BA4();
        sub_10000308C(v61, qword_10000C5C8);
        v63 = v117;
        v62 = v118;
        (*(v118 + 16))(v117, v54, v60);
        v64 = sub_100006B94();
        v65 = sub_100006C34();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v113 = v48;
          v114 = v59;
          v68 = v67;
          v124[0] = v67;
          *v66 = 136315138;
          v69 = v115;
          sub_100006B34();
          v70 = sub_100006C64();
          v72 = v71;
          sub_100003868(v69, &qword_10000C360, &qword_100007110);
          (*(v62 + 8))(v63, v60);
          v73 = sub_10000620C(v70, v72, v124);
          v55 = v121;

          *(v66 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v64, v65, "Unknown target type %s, skipping", v66, 0xCu);
          sub_10000310C(v68);
          v48 = v113;
          v59 = v114;
        }

        else
        {

          (*(v62 + 8))(v63, v60);
        }

        v78 = 0xE700000000000000;
        v80 = v123;
        v81 = v120;
        v79 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      (*(v57 + 96))(v21, v56);
      v88 = v105;
      v87 = v106;
      v89 = v107;
      (*(v106 + 32))(v105, v21, v107);
      v90 = sub_100004990(v88, v104);
      sub_100003684(v90);

      (*(v87 + 8))(v88, v89);
      v86 = 0x686372616573;
    }

    v79 = v86 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
    v78 = 0xED0000747865746ELL;
  }

  v80 = v123;
  v81 = v120;
LABEL_20:
  sub_100003868(v55, &qword_10000C360, &qword_100007110);
  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v91 = sub_100006BA4();
  sub_10000308C(v91, qword_10000C5B0);
  (*(v59 + 16))(v81, v80, v48);

  v92 = sub_100006B94();
  v93 = v48;
  v94 = sub_100006C24();

  if (os_log_type_enabled(v92, v94))
  {
    v95 = v81;
    v96 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v96 = 136315394;
    v97 = sub_10000620C(v79, v78, v124);

    *(v96 + 4) = v97;
    *(v96 + 12) = 2080;
    sub_1000030C4(&qword_10000C388, 255, &type metadata accessor for UUID);
    v98 = sub_100006CA4();
    v100 = v99;
    v101 = *(v59 + 8);
    v101(v95, v93);
    v102 = sub_10000620C(v98, v100, v124);

    *(v96 + 14) = v102;
    _os_log_impl(&_mh_execute_header, v92, v94, "Processed biome event of type %s, CM Id %s successfully", v96, 0x16u);
    swift_arrayDestroy();

    sub_100003868(v122, &qword_10000C370, &qword_100007120);
    return (v101)(v123, v93);
  }

  else
  {

    v103 = *(v59 + 8);
    v103(v81, v93);
    sub_100003868(v122, &qword_10000C370, &qword_100007120);
    return (v103)(v80, v93);
  }
}

uint64_t sub_100002AB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002B50;

  return sub_10000147C(a1);
}

uint64_t sub_100002B50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002C44()
{
  v0 = type metadata accessor for LLMCacheSELFIngestor();
  v2 = sub_1000030C4(&qword_10000C348, v1, type metadata accessor for LLMCacheSELFIngestor);

  return IngestionExtension.configuration.getter(v0, v2);
}

uint64_t sub_100002CC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LLMCacheSELFIngestor();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for LLMCacheSELFIngestor();
  sub_1000030C4(&qword_10000C290, v3, type metadata accessor for LLMCacheSELFIngestor);
  sub_1000069C4();
  return 0;
}

uint64_t sub_100002E74(uint64_t *a1, uint64_t *a2)
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

void *sub_100002EBC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002F00()
{
  v1 = sub_100006984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002FC4(uint64_t a1)
{
  v3 = *(sub_100006984() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100001D5C(a1, v4, v5);
}

uint64_t sub_100003038(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000308C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000030C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000310C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E74(&qword_10000C360, &qword_100007110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000031C8(uint64_t a1)
{
  v2 = (*(*(sub_100002E74(&qword_10000C380, &qword_100007130) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v32 - v3;
  v5 = sub_100006964();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
      if (v14)
      {
        v15 = v14;
        sub_100006B54();
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_100003868(v4, &qword_10000C380, &qword_100007130);
          if (qword_10000C268 != -1)
          {
            swift_once();
          }

          v16 = sub_100006BA4();
          sub_10000308C(v16, qword_10000C5C8);
          v17 = sub_100006B94();
          v18 = sub_100006C44();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "Failed to emit RequestLink, clientTraceId is nil", v19, 2u);
          }
        }

        else
        {
          (*(v6 + 32))(v9, v4, v5);
          [v13 setComponent:46];
          v24 = sub_100006954();
          v26 = v25;
          v27 = objc_allocWithZone(SISchemaUUID);
          v33 = v15;
          v28 = v27;
          isa = sub_1000068E4().super.isa;
          v30 = [v28 initWithBytesAsData:isa];

          sub_100003038(v24, v26);
          [v13 setUuid:v30];

          [v11 setSource:v13];
          v31 = v33;
          [v33 setComponent:47];
          [v31 setUuid:a1];
          [v11 setTarget:v31];
          [objc_msgSend(objc_opt_self() "sharedStream")];

          swift_unknownObjectRelease();
          (*(v6 + 8))(v9, v5);
        }

        return;
      }
    }

    else
    {
      v13 = v11;
    }
  }

  if (qword_10000C268 != -1)
  {
    swift_once();
  }

  v20 = sub_100006BA4();
  sub_10000308C(v20, qword_10000C5C8);
  v33 = sub_100006B94();
  v21 = sub_100006C44();
  if (os_log_type_enabled(v33, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v33, v21, "Failed to emit RequestLink, either RequestLink or RequestLinkInfo is nil", v22, 2u);
  }

  v23 = v33;
}

void sub_100003684(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_100006974();
  }
}

uint64_t sub_100003868(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_1000038F4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000039B0(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_100006BA4();
  sub_1000038F4(v7, a2);
  sub_10000308C(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_100006BB4();
}

unint64_t sub_100003A64()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t sub_100003AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_100003A64();
  result = sub_100006C54();
  *a4 = result;
  return result;
}

uint64_t sub_100003B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(sub_100002E74(&qword_10000C368, &qword_100007118) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = &v22 - v5;
  v7 = sub_100006B04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_10000579C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100003868(v6, &qword_10000C368, &qword_100007118);
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v15 = sub_100006BA4();
    sub_10000308C(v15, qword_10000C5E0);
    v16 = sub_100006B94();
    v17 = sub_100006C44();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "MonotonicTimestamp is nil", v18, 2u);
    }

    v19 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    sub_1000069A4();
    (*(v8 + 8))(v14, v7);
    v19 = 0;
  }

  v20 = sub_1000069B4();
  return (*(*(v20 - 8) + 56))(a2, v19, 1, v20);
}

id sub_100003E38(uint64_t a1)
{
  v2 = [objc_allocWithZone(CMSchemaCMClientEventMetadata) init];
  if (v2)
  {
    v3 = v2;
    [v2 setCmId:a1];
    return v3;
  }

  else
  {
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v5 = sub_100006BA4();
    sub_10000308C(v5, qword_10000C5E0);
    v6 = sub_100006B94();
    v7 = sub_100006C44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to build CMClientEventMetadata", v8, 2u);
    }

    return 0;
  }
}

id sub_100003F50(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_100002E74(&qword_10000C3A0, &qword_100007148);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v60 - v5;
  v7 = sub_100002E74(&qword_10000C3A8, &qword_100007150);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v60 - v9;
  v11 = sub_100006A04();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_100006A44();
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = *(v63 + 64);
  __chkstk_darwin(v18);
  v65 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100006A54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = [objc_allocWithZone(CMSchemaCMInsertContext) init];
  if (!v67)
  {
    goto LABEL_7;
  }

  v61 = [objc_allocWithZone(CMSchemaCMClientEvent) init];
  if (!v61)
  {

LABEL_7:
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v30 = sub_100006BA4();
    sub_10000308C(v30, qword_10000C5E0);
    v31 = sub_100006B94();
    v32 = sub_100006C44();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to build CMClientEvent for insert event, either CMInsertContext or CMClientEvent is nil", v33, 2u);
    }

    return 0;
  }

  (*(v22 + 16))(v25, a1, v21);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == enum case for CacheManagerInsert.started(_:))
  {
    v27 = [objc_allocWithZone(CMSchemaCMInsertStarted) init];
    if (v27)
    {
      v28 = v27;
      [v27 setExists:1];
      v29 = "setStartedOrChanged:";
LABEL_15:
      v35 = v67;
      [v67 v29];

      (*(v22 + 8))(v25, v21);
      v36 = v61;
LABEL_16:
      [v36 setInsertContext:v35];
      v37 = sub_100003E38(v66);
      [v36 setEventMetadata:v37];

      return v36;
    }

    v43 = v67;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v44 = sub_100006BA4();
    sub_10000308C(v44, qword_10000C5E0);
    v45 = sub_100006B94();
    v46 = sub_100006C44();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_34;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Failed to build CMClientEvent for insert event, CMInsertStarted is nil";
    goto LABEL_33;
  }

  if (v26 == enum case for CacheManagerInsert.ended(_:))
  {
    v34 = [objc_allocWithZone(CMSchemaCMInsertEnded) init];
    if (v34)
    {
      v28 = v34;
      [v34 setExists:1];
      v29 = "setEnded:";
      goto LABEL_15;
    }

    v43 = v67;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v50 = sub_100006BA4();
    sub_10000308C(v50, qword_10000C5E0);
    v45 = sub_100006B94();
    v46 = sub_100006C44();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_34;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Failed to build CMClientEvent for insert event, CMInsertEnded is nil";
    goto LABEL_33;
  }

  if (v26 != enum case for CacheManagerInsert.failed(_:))
  {
    v43 = v67;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v49 = sub_100006BA4();
    sub_10000308C(v49, qword_10000C5E0);
    v45 = sub_100006B94();
    v46 = sub_100006C44();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_34;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Failed to build CMClientEvent for insert event, encountered unknown context type";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);

LABEL_34:

    (*(v22 + 8))(v25, v21);
    return 0;
  }

  (*(v22 + 96))(v25, v21);
  (*(v63 + 32))(v65, v25, v64);
  v39 = [objc_allocWithZone(CMSchemaCMInsertFailed) init];
  if (v39)
  {
    v40 = v39;
    sub_100006A34();
    v41 = sub_100006A24();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v6, 1, v41) == 1)
    {

      sub_100003868(v6, &qword_10000C3A0, &qword_100007148);
      (*(v62 + 56))(v10, 1, 1, v11);
    }

    else
    {
      sub_100006A14();
      (*(v42 + 8))(v6, v41);
      v51 = v62;
      if ((*(v62 + 48))(v10, 1, v11) != 1)
      {
        (*(v51 + 32))(v17, v10, v11);
        (*(v51 + 16))(v15, v17, v11);
        v58 = (*(v51 + 88))(v15, v11);
        v36 = v61;
        if (v58 == enum case for CacheManagerError.ErrorType.invalidId(_:))
        {
          v59 = 1;
          v35 = v67;
        }

        else
        {
          v35 = v67;
          if (v58 == enum case for CacheManagerError.ErrorType.internalFailure(_:))
          {
            v59 = 2;
          }

          else
          {
            (*(v51 + 8))(v15, v11);
            v59 = 0;
          }
        }

        [v40 setReason:v59];
        [v35 setFailed:v40];

        (*(v51 + 8))(v17, v11);
        (*(v63 + 8))(v65, v64);
        goto LABEL_16;
      }
    }

    sub_100003868(v10, &qword_10000C3A8, &qword_100007150);
  }

  if (qword_10000C270 != -1)
  {
    swift_once();
  }

  v52 = sub_100006BA4();
  sub_10000308C(v52, qword_10000C5E0);
  v53 = sub_100006B94();
  v54 = sub_100006C44();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v67;
  if (v55)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed to build CMClientEvent for insert event, either CMInsertFailed or ErrorType is nil", v57, 2u);
  }

  else
  {
  }

  (*(v63 + 8))(v65, v64);
  return 0;
}

id sub_100004990(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v110 = a1;
  v2 = sub_100002E74(&qword_10000C3A0, &qword_100007148);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v100 = &v96 - v4;
  v5 = sub_100002E74(&qword_10000C3A8, &qword_100007150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v101 = &v96 - v7;
  v8 = sub_100006A04();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  v10 = __chkstk_darwin(v8);
  v97 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v96 - v12;
  v13 = sub_100006AD4();
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = *(v105 + 64);
  __chkstk_darwin(v13);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002E74(&qword_10000C3B0, &qword_100007158);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v96 - v18;
  v20 = sub_100006A64();
  v107 = *(v20 - 8);
  v108 = v20;
  v21 = *(v107 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v96 - v25;
  v27 = sub_100006AB4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100006AE4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = [objc_allocWithZone(CMSchemaCMSearchContext) init];
  if (!v111)
  {
    goto LABEL_7;
  }

  v99 = [objc_allocWithZone(CMSchemaCMClientEvent) init];
  if (!v99)
  {

LABEL_7:
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v41 = sub_100006BA4();
    sub_10000308C(v41, qword_10000C5E0);
    v42 = sub_100006B94();
    v43 = sub_100006C44();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to build CMClientEvent for search event, either CMInsertContext or CMClientEvent is nil", v44, 2u);
    }

    return 0;
  }

  (*(v33 + 16))(v36, v110, v32);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 != enum case for CacheManagerSearch.started(_:))
  {
    if (v37 == enum case for CacheManagerSearch.ended(_:))
    {
      (*(v33 + 96))(v36, v32);
      v46 = v28;
      v47 = v31;
      v48 = v36;
      v49 = v27;
      (*(v28 + 32))(v31, v48, v27);
      v50 = [objc_allocWithZone(CMSchemaCMSearchEnded) init];
      v40 = v111;
      if (v50)
      {
        v51 = v50;
        v52 = sub_100006A74();
        if ((v52 & 0x100000000) == 0)
        {
          [v51 setResultCount:v52];
        }

        sub_100006A84();
        v54 = v107;
        v53 = v108;
        if ((*(v107 + 48))(v19, 1, v108) == 1)
        {
          sub_100003868(v19, &qword_10000C3B0, &qword_100007158);
        }

        else
        {
          (*(v54 + 32))(v26, v19, v53);
          (*(v54 + 16))(v24, v26, v53);
          v76 = (*(v54 + 88))(v24, v53);
          if (v76 == enum case for CacheManagerSearch.CacheManagerSearchStrategy.exactMatch(_:))
          {
            v77 = 1;
          }

          else if (v76 == enum case for CacheManagerSearch.CacheManagerSearchStrategy.approximateMatch(_:))
          {
            v77 = 2;
          }

          else
          {
            (*(v54 + 8))(v24, v53);
            v77 = 0;
          }

          [v51 setSearchStrategy:v77];
          (*(v54 + 8))(v26, v53);
        }

        v91 = sub_100006AA4();
        if ((v92 & 1) == 0)
        {
          [v51 setHighestMatchScore:*&v91];
        }

        v93 = sub_100006A94();
        if ((v94 & 1) == 0)
        {
          [v51 setLowestMatchScore:*&v93];
        }

        [v40 setEnded:v51];

        (*(v46 + 8))(v47, v49);
        goto LABEL_61;
      }

      if (qword_10000C270 != -1)
      {
        swift_once();
      }

      v72 = sub_100006BA4();
      sub_10000308C(v72, qword_10000C5E0);
      v73 = sub_100006B94();
      v74 = sub_100006C44();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Failed to build CMClientEvent for search event, CMSearchEnded is nil", v75, 2u);
      }

      else
      {
      }

      (*(v46 + 8))(v31, v49);
    }

    else
    {
      if (v37 != enum case for CacheManagerSearch.failed(_:))
      {
        if (qword_10000C270 != -1)
        {
          swift_once();
        }

        v70 = sub_100006BA4();
        sub_10000308C(v70, qword_10000C5E0);
        v66 = sub_100006B94();
        v67 = sub_100006C44();
        v71 = os_log_type_enabled(v66, v67);
        v64 = v111;
        if (!v71)
        {
          goto LABEL_32;
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = "Failed to build CMClientEvent for search event, encountered unknown context type";
        goto LABEL_31;
      }

      (*(v33 + 96))(v36, v32);
      v56 = v104;
      v55 = v105;
      v57 = v106;
      (*(v105 + 32))(v104, v36, v106);
      v58 = [objc_allocWithZone(CMSchemaCMSearchFailed) init];
      if (v58)
      {
        v59 = v58;
        v60 = v100;
        sub_100006AC4();
        v61 = sub_100006A24();
        v62 = *(v61 - 8);
        if ((*(v62 + 48))(v60, 1, v61) == 1)
        {

          sub_100003868(v60, &qword_10000C3A0, &qword_100007148);
          v63 = v101;
          (*(v102 + 56))(v101, 1, 1, v103);
        }

        else
        {
          v63 = v101;
          sub_100006A14();
          (*(v62 + 8))(v60, v61);
          v79 = v102;
          v78 = v103;
          if ((*(v102 + 48))(v63, 1, v103) != 1)
          {
            v86 = v98;
            (*(v79 + 32))(v98, v63, v78);
            v87 = v97;
            (*(v79 + 16))(v97, v86, v78);
            v88 = (*(v79 + 88))(v87, v78);
            v89 = v99;
            if (v88 == enum case for CacheManagerError.ErrorType.invalidId(_:))
            {
              v90 = 1;
              v40 = v111;
            }

            else
            {
              v40 = v111;
              if (v88 == enum case for CacheManagerError.ErrorType.internalFailure(_:))
              {
                v90 = 2;
              }

              else
              {
                (*(v79 + 8))(v87, v78);
                v90 = 0;
              }
            }

            [v59 setReason:v90];
            [v40 setFailed:v59];

            (*(v79 + 8))(v86, v78);
            (*(v55 + 8))(v56, v57);
            goto LABEL_62;
          }
        }

        sub_100003868(v63, &qword_10000C3A8, &qword_100007150);
      }

      if (qword_10000C270 != -1)
      {
        swift_once();
      }

      v80 = sub_100006BA4();
      sub_10000308C(v80, qword_10000C5E0);
      v81 = sub_100006B94();
      v82 = sub_100006C44();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v111;
      if (v83)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Failed to build CMClientEvent for search event, either CMSearchFailed or ErrorType is nil", v85, 2u);
      }

      else
      {
      }

      (*(v55 + 8))(v56, v57);
    }

    return 0;
  }

  v38 = [objc_allocWithZone(CMSchemaCMSearchStarted) init];
  if (!v38)
  {
    v64 = v111;
    if (qword_10000C270 != -1)
    {
      swift_once();
    }

    v65 = sub_100006BA4();
    sub_10000308C(v65, qword_10000C5E0);
    v66 = sub_100006B94();
    v67 = sub_100006C44();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_32;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Failed to build CMClientEvent for search event, CMSearchStarted is nil";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v66, v67, v69, v68, 2u);

LABEL_32:

    (*(v33 + 8))(v36, v32);
    return 0;
  }

  v39 = v38;
  [v38 setExists:1];
  v40 = v111;
  [v111 setStartedOrChanged:v39];

  (*(v33 + 8))(v36, v32);
LABEL_61:
  v89 = v99;
LABEL_62:
  [v89 setSearchContext:v40];
  v95 = sub_100003E38(v109);
  [v89 setEventMetadata:v95];

  return v89;
}

uint64_t sub_10000579C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E74(&qword_10000C368, &qword_100007118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000580C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100006944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  sub_100006924();
  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);

    v15 = sub_100006BE4();

    v16 = [v12 valueForKey:v15];

    if (v16)
    {
      sub_100006C74();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      sub_100006824(&v47);
      v17 = *(v2 + 40);
      v18 = *(v2 + 48);

      v19 = sub_100006BE4();

      [v12 doubleForKey:v19];
      v21 = v20;

      if (qword_10000C260 != -1)
      {
        swift_once();
      }

      v22 = sub_100006BA4();
      sub_10000308C(v22, qword_10000C5B0);

      v23 = sub_100006B94();
      v24 = sub_100006C34();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v47 = v26;
        *v25 = 136315394;
        v44 = v4;
        v27 = a1;
        v29 = *(v2 + 40);
        v28 = *(v2 + 48);

        v30 = sub_10000620C(v29, v28, &v47);

        *(v25 + 4) = v30;
        a1 = v27;
        v4 = v44;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v23, v24, "The userdefault has key %s with the value %f", v25, 0x16u);
        sub_10000310C(v26);
      }

      sub_1000068F4();
      sub_10000688C();
      v31 = sub_100006BD4();
      v32 = *(v5 + 8);
      v33 = (v5 + 32);
      if (v31)
      {
        v32(v11, v4);
        return (*v33)(a1, v9, v4);
      }

      else
      {
        v32(v9, v4);
        return (*v33)(a1, v11, v4);
      }
    }
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_100006824(&v47);
  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v35 = sub_100006BA4();
  sub_10000308C(v35, qword_10000C5B0);

  v36 = sub_100006B94();
  v37 = sub_100006C34();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v47 = v39;
    *v38 = 136315138;
    v41 = *(v2 + 40);
    v40 = *(v2 + 48);

    v42 = sub_10000620C(v41, v40, &v47);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "The userdefault contained no value for %s", v38, 0xCu);
    sub_10000310C(v39);
  }

  return (*(v5 + 32))(a1, v11, v4);
}

uint64_t sub_100005CF8(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    if (qword_10000C260 != -1)
    {
      swift_once();
    }

    v22 = sub_100006BA4();
    sub_10000308C(v22, qword_10000C5B0);
    v23 = sub_100006B94();
    v24 = sub_100006C34();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Skip userDefault set due to empty identifier", v25, 2u);
    goto LABEL_16;
  }

  v5 = v1;
  sub_100006904();
  v7 = v6;
  if (qword_10000C260 != -1)
  {
    swift_once();
  }

  v8 = sub_100006BA4();
  sub_10000308C(v8, qword_10000C5B0);

  v9 = sub_100006B94();
  v10 = sub_100006C34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315394;
    v13 = v1[5];
    v14 = v1[6];

    v15 = sub_10000620C(v13, v14, &v35);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Set key %s to %f", v11, 0x16u);
    sub_10000310C(v12);
  }

  v16 = v1[2];
  if (v16)
  {
    v17 = v16;
    isa = sub_100006C14().super.super.isa;
    v20 = v5[5];
    v19 = v5[6];

    v21 = sub_100006BE4();

    [v17 setValue:isa forKey:v21];

    goto LABEL_18;
  }

  v23 = sub_100006B94();
  v26 = sub_100006C34();

  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315138;
    v30 = v5[5];
    v29 = v5[6];

    v31 = sub_10000620C(v30, v29, &v35);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v26, "Fail to set key %s due to empty userdefaults", v27, 0xCu);
    sub_10000310C(v28);

LABEL_16:
  }

LABEL_17:

LABEL_18:
  v32 = sub_100006944();
  v33 = *(*(v32 - 8) + 8);

  return v33(a1, v32);
}

uint64_t sub_1000060D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10000613C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000061B0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000620C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000620C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000062D8(v11, 0, 0, 1, a1, a2);
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
    sub_1000067C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000310C(v11);
  return v7;
}

unint64_t sub_1000062D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000063E4(a5, a6);
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
    result = sub_100006C94();
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

char *sub_1000063E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006430(a1, a2);
  sub_100006560(&off_1000085F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006430(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000664C(v5, 0);
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

  result = sub_100006C94();
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
        v10 = sub_100006C04();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000664C(v10, 0);
        result = sub_100006C84();
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

uint64_t sub_100006560(uint64_t result)
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

  result = sub_1000066C0(result, v12, 1, v3);
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

void *sub_10000664C(uint64_t a1, uint64_t a2)
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

  sub_100002E74(&qword_10000C498, &qword_1000071B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000066C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E74(&qword_10000C498, &qword_1000071B8);
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

_BYTE **sub_1000067B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000067C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006824(uint64_t a1)
{
  v2 = sub_100002E74(&qword_10000C4A0, &qword_1000071C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000688C()
{
  result = qword_10000C4A8;
  if (!qword_10000C4A8)
  {
    sub_100006944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4A8);
  }

  return result;
}