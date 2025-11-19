uint64_t sub_100001510()
{
  v0 = sub_100003F04();
  sub_100003A64(v0, qword_10000C650);
  sub_1000039BC(v0, qword_10000C650);
  return sub_100003EF4();
}

uint64_t sub_100001590(char a1, double a2)
{
  v4 = sub_100004124();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = &type metadata for PhotosSearchClientLighthouseConfig;
  LOBYTE(v25) = a1;
  *(&v25 + 1) = a2;
  sub_100004104();
  v9 = sub_100004114();
  (*(v5 + 8))(v8, v4);
  v21[1] = v9;
  sub_100004044();
  sub_100004074();
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
        sub_100004014(v11);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_100004014(v28);
        sub_100004054();
        v12 = v22;
        v13 = v23;
        sub_100003B74(v24, &qword_10000C0E8, &qword_1000045A8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100002724(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100002724((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
      }

      else
      {
        sub_100003B74(v24, &qword_10000C0E8, &qword_1000045A8);
      }

      sub_100004074();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v25 = 0xD000000000000023;
  *(&v25 + 1) = 0x8000000100004B40;
  *&v24[0] = v10;
  sub_100002334(&qword_10000C0D8, &qword_1000045A0);
  sub_100003AC8();
  v17 = sub_100004004();
  v19 = v18;

  v29._countAndFlagsBits = v17;
  v29._object = v19;
  sub_100004014(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_100004014(v30);
  return v25;
}

Swift::Int sub_1000018A8()
{
  v1 = *v0;
  sub_1000040D4();
  sub_1000040E4(v1);
  return sub_1000040F4();
}

Swift::Int sub_10000191C()
{
  v1 = *v0;
  sub_1000040D4();
  sub_1000040E4(v1);
  return sub_1000040F4();
}

unint64_t sub_100001960()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x726150776F6C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_1000019A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_1000040C4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100004B70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000040C4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100001AA8(uint64_t a1)
{
  v2 = sub_100002A20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001AE4(uint64_t a1)
{
  v2 = sub_100002A20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001B20(void *a1)
{
  v3 = sub_100002334(&qword_10000C0C0, &qword_100004580);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000029DC(a1, a1[3]);
  sub_100002A20();
  sub_100004144();
  v12 = 0;
  sub_1000040A4();
  if (!v1)
  {
    v11 = 1;
    sub_1000040B4();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100001CA8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002830(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100001CDC(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_100001B20(a1);
}

uint64_t sub_100001D24()
{
  objc_allocWithZone(sub_100003E94());
  v1 = sub_100003E84();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100001D98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001E38;

  return sub_100002AC0();
}

uint64_t sub_100001E38(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100001F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100002018;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002018()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000210C(uint64_t a1)
{
  v2 = sub_1000026E0(&qword_10000C0B0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100002174()
{
  sub_1000024E0();
  sub_100002534();
  return sub_100003EC4();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PhotosSearchClientLighthouse();
  sub_1000026E0(&qword_10000C008);
  sub_100003E74();
  return 0;
}

uint64_t type metadata accessor for PhotosSearchClientLighthouse()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000022BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002334(&qword_10000C010, &qword_100004418);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002334(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002390(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002334(&qword_10000C010, &qword_100004418);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000240C()
{
  sub_100002478();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002478()
{
  if (!qword_10000C070)
  {
    sub_1000024E0();
    sub_100002534();
    v0 = sub_100003ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C070);
    }
  }
}

unint64_t sub_1000024E0()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100002534()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PhotosSearchClientLighthouseConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosSearchClientLighthouseConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosSearchClientLighthouseConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000026E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosSearchClientLighthouse();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100002724(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002334(&unk_10000C0F0, &qword_1000045B0);
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

double sub_100002830(uint64_t *a1)
{
  v2 = sub_100002334(&qword_10000C0B8, &qword_100004578);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_1000029DC(a1, a1[3]);
  sub_100002A20();
  sub_100004134();
  v13 = 0;
  sub_100004084();
  v12 = 1;
  sub_100004094();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_100002A74(a1);
  return v9;
}

void *sub_1000029DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002A20()
{
  result = qword_10000C3A0[0];
  if (!qword_10000C3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C3A0);
  }

  return result;
}

uint64_t sub_100002A74(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002AC0()
{
  v1 = sub_100003E64();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v4 = *(*(sub_100002334(&qword_10000C0C8, &qword_100004590) - 8) + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v5 = *(*(sub_100002334(&qword_10000C0D0, &qword_100004598) - 8) + 64) + 15;
  v0[18] = swift_task_alloc();

  return _swift_task_switch(sub_100002C7C, 0, 0);
}

uint64_t sub_100002C7C()
{
  v1 = v0;
  v2 = v0[18];
  v3 = [objc_allocWithZone(sub_100003F84()) init];
  v4 = sub_100003E54();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_100003F74();
  sub_100003B74(v2, &qword_10000C0D0, &qword_100004598);
  v113 = v3;
  sub_100003F64();
  if (qword_10000C100 != -1)
  {
    swift_once();
  }

  v6 = sub_100003F04();
  sub_1000039BC(v6, qword_10000C650);

  v7 = sub_100003EE4();
  v8 = sub_100004024();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if (v5)
    {
      if (v5 >> 62)
      {
        v10 = sub_100004064();
      }

      else
      {
        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 4) = v10;

    _os_log_impl(&_mh_execute_header, v7, v8, "Uploaded %ld data payloads to PET", v9, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v112 = [objc_allocWithZone(sub_100003FA4()) init];
  v11 = sub_100003F94();
  v12 = sub_100003EE4();
  v13 = sub_100004024();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v11)
    {
      if (v11 >> 62)
      {
        v15 = sub_100004064();
      }

      else
      {
        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 4) = v15;

    _os_log_impl(&_mh_execute_header, v12, v13, "Uploaded %ld metrics payloads to CA", v14, 0xCu);
  }

  else
  {
  }

  v17 = v0 + 15;
  v16 = v1[15];
  v18 = v1[16];
  v19 = v1[17];
  v20 = v1[3];
  v109 = v1[2];
  v110 = [objc_allocWithZone(sub_100003F54()) init];
  v21 = [objc_allocWithZone(sub_100003FD4()) init];
  v22 = sub_100003F24();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_100003F14();
  v114 = v21;
  sub_100003FB4();
  sub_1000039F4(v19, v16);
  v25 = *(v20 + 48);
  if (v25(v16, 1, v109) == 1)
  {
    goto LABEL_21;
  }

  v17 = v1 + 14;
  v26 = v1[14];
  v27 = v1[16];
  v28 = v1[2];
  v29 = *(v1[3] + 32);
  v29(v1[9], v1[15], v28);
  sub_1000039F4(v27, v26);
  if (v25(v26, 1, v28) == 1)
  {
    (*(v1[3] + 8))(v1[9], v1[2]);
LABEL_21:
    sub_100003B74(*v17, &qword_10000C0C8, &qword_100004590);
    v30 = sub_100003EE4();
    v31 = sub_100004034();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failure to upload data metrics. Dataframes were empty", v32, 2u);
    }

    goto LABEL_31;
  }

  v33 = v1[9];
  v29(v1[8], v1[14], v1[2]);
  v34 = sub_100003FC4();
  v35 = sub_100003EE4();
  v36 = sub_100004024();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    if (v34)
    {
      if (v34 >> 62)
      {
        v100 = v37;
        v38 = sub_100004064();
        v37 = v100;
      }

      else
      {
        v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v38 = 0;
    }

    *(v37 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v35, v36, "Uploaded %ld metrics payloads to PET", v37, 0xCu);
  }

  v40 = v1[8];
  v39 = v1[9];
  v42 = v1[2];
  v41 = v1[3];

  v43 = *(v41 + 8);
  v43(v40, v42);
  v43(v39, v42);
LABEL_31:
  v45 = v1 + 13;
  v44 = v1[13];
  v46 = v1[2];
  sub_1000039F4(v1[17], v44);
  if (v25(v44, 1, v46) == 1)
  {
LABEL_34:
    sub_100003B74(*v45, &qword_10000C0C8, &qword_100004590);
    v51 = sub_100003EE4();
    v52 = sub_100004034();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failure to upload user metrics. Dataframes were empty", v53, 2u);
    }

    goto LABEL_44;
  }

  v45 = v1 + 12;
  v47 = v1[12];
  v48 = v1[16];
  v49 = v1[2];
  v50 = *(v1[3] + 32);
  v50(v1[7], v1[13], v49);
  sub_1000039F4(v48, v47);
  if (v25(v47, 1, v49) == 1)
  {
    (*(v1[3] + 8))(v1[7], v1[2]);
    goto LABEL_34;
  }

  v54 = v1[7];
  v50(v1[6], v1[12], v1[2]);
  v55 = [objc_allocWithZone(sub_100003FF4()) init];
  v56 = sub_100003FE4();
  v57 = sub_100003EE4();
  v58 = sub_100004024();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    if (v56)
    {
      if (v56 >> 62)
      {
        v101 = v59;
        v60 = sub_100004064();
        v59 = v101;
      }

      else
      {
        v60 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v60 = 0;
    }

    *(v59 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v57, v58, "Uploaded %ld metrics payloads to CA", v59, 0xCu);
  }

  v62 = v1[6];
  v61 = v1[7];
  v64 = v1[2];
  v63 = v1[3];

  v65 = *(v63 + 8);
  v65(v62, v64);
  v65(v61, v64);
LABEL_44:
  v66 = v1[11];
  v67 = v1[2];
  sub_1000039F4(v1[17], v66);
  if (v25(v66, 1, v67) == 1)
  {
    v68 = v1[11];
LABEL_48:
    sub_100003B74(v68, &qword_10000C0C8, &qword_100004590);
    v76 = v110;
    goto LABEL_57;
  }

  v69 = v1[16];
  v70 = v1[10];
  v71 = v1[2];
  v72 = *(v1[3] + 32);
  v72(v1[5], v1[11], v71);
  sub_1000039F4(v69, v70);
  v73 = v25(v70, 1, v71);
  v74 = v1[10];
  v75 = v1[5];
  if (v73 == 1)
  {
    (*(v1[3] + 8))(v1[5], v1[2]);
    v68 = v74;
    goto LABEL_48;
  }

  v72(v1[4], v1[10], v1[2]);
  v76 = v110;
  v77 = sub_100003F44();
  v78 = sub_100003EE4();
  v79 = sub_100004024();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134217984;
    if (v77)
    {
      if (v77 >> 62)
      {
        v81 = sub_100004064();
      }

      else
      {
        v81 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v81 = 0;
    }

    *(v80 + 4) = v81;

    _os_log_impl(&_mh_execute_header, v78, v79, "Populated %ld sessions from Poirot in Insights stream", v80, 0xCu);
  }

  else
  {
  }

  v82 = v1[5];
  v83 = v1[2];
  v84 = *(v1[3] + 8);
  v84(v1[4], v83);
  v84(v82, v83);
LABEL_57:
  v85 = sub_100003F34();
  v86 = sub_100003EE4();
  v87 = sub_100004024();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    if (v85)
    {
      if (v85 >> 62)
      {
        v89 = sub_100004064();
      }

      else
      {
        v89 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v89 = 0;
    }

    *(v88 + 4) = v89;

    _os_log_impl(&_mh_execute_header, v86, v87, "Populated %ld sessions from Biome in Insights stream", v88, 0xCu);
  }

  else
  {
  }

  v90 = v1[17];
  v91 = v1[18];
  v92 = v1[15];
  v93 = v1[16];
  v94 = v1[13];
  v95 = v1[14];
  v96 = v1[12];
  v102 = v1[11];
  v103 = v1[10];
  v105 = v1[9];
  v106 = v1[8];
  v107 = v1[7];
  v108 = v1[6];
  v111 = v1[5];
  v115 = v1[4];
  v97 = objc_allocWithZone(sub_100003E94());
  v104 = sub_100003E84();

  sub_100003B74(v93, &qword_10000C0C8, &qword_100004590);
  sub_100003B74(v90, &qword_10000C0C8, &qword_100004590);

  v98 = v1[1];

  return v98(v104);
}

uint64_t sub_1000039BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000039F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002334(&qword_10000C0C8, &qword_100004590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100003A64(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003AC8()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    sub_100003B2C(&qword_10000C0D8, &qword_1000045A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100003B2C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003B74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002334(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for PhotosSearchClientLighthouseConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhotosSearchClientLighthouseConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003D50()
{
  result = qword_10000C4B0[0];
  if (!qword_10000C4B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C4B0);
  }

  return result;
}

unint64_t sub_100003DA8()
{
  result = qword_10000C5C0;
  if (!qword_10000C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5C0);
  }

  return result;
}

unint64_t sub_100003E00()
{
  result = qword_10000C5C8[0];
  if (!qword_10000C5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C5C8);
  }

  return result;
}