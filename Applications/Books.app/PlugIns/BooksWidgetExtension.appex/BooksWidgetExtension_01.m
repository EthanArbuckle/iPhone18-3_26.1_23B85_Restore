uint64_t sub_10001D5A8(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(sub_100002840(&qword_1000AD3B0, &unk_100087320) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = sub_100080308();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_100080648();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10001D708, 0, 0);
}

uint64_t sub_10001D708()
{
  v68 = v0;
  if (qword_1000AC660 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_100080678();
  sub_10000A480(v2, qword_1000AD4B8);
  sub_100080638();
  v3 = sub_100080668();
  v4 = sub_100081498();
  if (sub_1000814D8())
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_100080628();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "Raw Cover Fetching", "", v6, 2u);
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 64);

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_1000806B8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_1000806A8();
  (*(v11 + 8))(v9, v10);
  v16 = *(v12 + 32);
  *(v0 + 144) = v16;
  v17 = *(v12 + 40);
  *(v0 + 152) = v17;
  if (qword_1000AC658 != -1)
  {
    swift_once();
  }

  v18 = sub_1000806F8();
  *(v0 + 160) = sub_10000A480(v18, qword_1000AD4A0);

  v19 = sub_1000806D8();
  v20 = sub_100081468();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10006150C(v16, v17, v67);
    _os_log_impl(&_mh_execute_header, v19, v20, "Fetching raw cover for assetID: %s.", v21, 0xCu);
    sub_100019DF8(v22);
  }

  if (qword_1000AC648 != -1)
  {
    swift_once();
  }

  v23 = *sub_100005554(qword_1000B7F10, qword_1000B7F28);
  if (sub_10003A734(v16, v17, 0))
  {

    v24 = sub_1000806D8();
    v25 = sub_100081468();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v67[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10006150C(v16, v17, v67);
      _os_log_impl(&_mh_execute_header, v24, v25, "Found cached raw cover for assetID: %s.", v26, 0xCu);
      sub_100019DF8(v27);
    }

    sub_10001A10C();

    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = *(v0 + 72);

    v32 = *(v0 + 8);
LABEL_15:

    return v32();
  }

  *(v0 + 16) = *(*(v0 + 64) + 64);
  v34 = *(v0 + 24);
  if (v34)
  {
    v35 = *(v0 + 16);

    sub_10001EFDC(v0 + 16, v0 + 32);
    v36 = sub_1000806D8();
    v37 = sub_100081468();
    sub_100005B2C(v0 + 16, &qword_1000ACE48, &unk_100086040);

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_10006150C(v35, v34, v67);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10006150C(v16, v17, v67);
      _os_log_impl(&_mh_execute_header, v36, v37, "Fetching a raw cover for url string: %s, assetID: %s.", v38, 0x16u);
      swift_arrayDestroy();
    }

    v39 = *(v0 + 80);
    v40 = *(v0 + 88);
    v41 = *(v0 + 72);
    sub_1000802E8();
    if ((*(v40 + 48))(v41, 1, v39) == 1)
    {
      sub_100005B2C(*(v0 + 72), &qword_1000AD3B0, &unk_100087320);
LABEL_39:

      sub_10001EFDC(v0 + 16, v0 + 48);
      v63 = sub_1000806D8();
      v64 = sub_100081468();

      sub_100005B2C(v0 + 16, &qword_1000ACE48, &unk_100086040);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v65 = 136315394;
        *(v65 + 4) = sub_10006150C(v16, v17, v67);
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_10006150C(v35, v34, v67);
        _os_log_impl(&_mh_execute_header, v63, v64, "Not a file URL for assetID: %s, url: %s. Now using URLSession to download the book cover.", v65, 0x16u);
        swift_arrayDestroy();
      }

      v66 = swift_task_alloc();
      *(v0 + 192) = v66;
      *v66 = v0;
      v66[1] = sub_10001E568;

      return sub_10001AFE4(v35, v34, v16, v17, 160.0, 160.0);
    }

    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    if ((sub_100080258() & 1) == 0)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
      goto LABEL_39;
    }

    v49 = sub_1000806D8();
    v50 = sub_100081468();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_10006150C(v16, v17, v67);
      _os_log_impl(&_mh_execute_header, v49, v50, "Using QuickLook to generate a thumbnail with assetID: %s.", v51, 0xCu);
      sub_100019DF8(v52);
    }

    v53 = swift_task_alloc();
    *(v0 + 168) = v53;
    *v53 = v0;
    v53[1] = sub_10001E28C;
    v54 = *(v0 + 96);

    return sub_10001A700(v54, v16, v17, 160.0, 160.0);
  }

  else
  {
    v42 = sub_1000113EC();

    v43 = sub_1000806D8();
    if ((v42 & 1) == 0)
    {
      v55 = sub_100081448();

      if (os_log_type_enabled(v43, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v67[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_10006150C(v16, v17, v67);
        _os_log_impl(&_mh_execute_header, v43, v55, "nil cover URL for assetID: %s.", v56, 0xCu);
        sub_100019DF8(v57);
      }

      sub_10001EF88();
      swift_allocError();
      *v58 = 0;
      swift_willThrow();
      sub_10001A10C();

      v60 = *(v0 + 120);
      v59 = *(v0 + 128);
      v61 = *(v0 + 96);
      v62 = *(v0 + 72);

      v32 = *(v0 + 8);
      goto LABEL_15;
    }

    v44 = sub_100081468();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10006150C(v16, v17, v67);
      _os_log_impl(&_mh_execute_header, v43, v44, "Attempting to fetch raw store audiobook cover from MediaLibrary for assetID: %s.", v45, 0xCu);
      sub_100019DF8(v46);
    }

    v47 = swift_task_alloc();
    *(v0 + 216) = v47;
    *v47 = v0;
    v47[1] = sub_10001E7F4;
    v48 = *(v0 + 64);

    return sub_10001BE24(v48, 160.0, 160.0);
  }
}

uint64_t sub_10001E28C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 168);
  v8 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v9 = sub_10001E4B0;
  }

  else
  {
    *(v6 + 264) = a2 & 1;
    *(v6 + 184) = a1;
    v9 = sub_10001E3C8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10001E3C8()
{
  v1 = *(v0 + 184);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v2 = *(v0 + 184);
  v3 = *(v0 + 264);
  *(v0 + 240) = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_10001EBA4;
  v6 = *(v0 + 64);

  return (sub_10001C890)(v2, v3, v6);
}

uint64_t sub_10001E4B0()
{
  v1 = v0[17];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_10001A10C();

  v2 = v0[22];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001E568(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_10001E754;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_10001E690;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001E690()
{
  v1 = v0[26];
  v0[30] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_10001EBA4;
  v4 = v0[8];

  return (sub_10001C890)(v2, 0, v4);
}

uint64_t sub_10001E754()
{
  v1 = v0[17];
  sub_10001A10C();

  v2 = v0[25];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001E7F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_10001EB04;
  }

  else
  {
    v5 = sub_10001E908;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001E908()
{
  v19 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 224);

  v4 = v3;
  v5 = sub_1000806D8();
  v6 = sub_100081468();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 224);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10006150C(v9, v8, &v18);
    *(v10 + 12) = 2080;
    [v7 size];
    v11 = sub_1000814A8();
    v13 = sub_10006150C(v11, v12, &v18);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received raw store audiobook cover for %s of size %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 224);
  *(v0 + 240) = v14;
  v15 = swift_task_alloc();
  *(v0 + 248) = v15;
  *v15 = v0;
  v15[1] = sub_10001EBA4;
  v16 = *(v0 + 64);

  return sub_10001C890(v14, 0, v16);
}

uint64_t sub_10001EB04()
{
  v1 = v0[17];
  sub_10001A10C();

  v2 = v0[29];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001EBA4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_10001ED68;
  }

  else
  {

    v4 = sub_10001ECC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001ECC0()
{
  v1 = *(v0 + 136);
  sub_10001A10C();

  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001ED68()
{
  v23 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  swift_errorRetain();
  v4 = sub_1000806D8();
  v5 = sub_100081468();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  if (v6)
  {
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_10006150C(v10, v9, &v22);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to cache untreated cover for asset: %s, error: %@", v11, 0x16u);
    sub_100005B2C(v12, &qword_1000AD570, &qword_10008A6B0);

    sub_100019DF8(v13);
  }

  else
  {
  }

  v15 = *(v0 + 136);
  sub_10001A10C();

  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_10001EF88()
{
  result = qword_1000AD568;
  if (!qword_1000AD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD568);
  }

  return result;
}

uint64_t sub_10001EFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACE48, &unk_100086040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F05C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F0D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001F128(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001F17C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001F1E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10001F228()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F28C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001F2B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for WidgetImageManager.FetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetImageManager.FetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001F428()
{
  result = qword_1000AD5A8;
  if (!qword_1000AD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD5A8);
  }

  return result;
}

__n128 sub_10001F484(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001F4E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001F56C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v111 = sub_100080A58();
  v110 = *(v111 - 8);
  v4 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100080B68();
  v107 = *(v108 - 8);
  v6 = *(v107 + 64);
  __chkstk_darwin(v108);
  v106 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100080838();
  v94 = *(v98 - 8);
  v8 = *(v94 + 64);
  __chkstk_darwin(v98);
  v100 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100002840(&qword_1000AD5B8, &qword_100087610);
  v10 = *(*(v87 - 8) + 64);
  v11 = __chkstk_darwin(v87);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v81 - v14;
  v16 = sub_1000803D8();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v81 - v22;
  v86 = sub_100002840(&qword_1000AD5C0, &qword_100087618);
  v24 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v26 = &v81 - v25;
  v91 = sub_100080848();
  v89 = *(v91 - 8);
  v27 = *(v89 + 64);
  __chkstk_darwin(v91);
  v88 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100002840(&qword_1000AD5C8, &qword_100087620);
  v92 = *(v96 - 8);
  v29 = *(v92 + 64);
  __chkstk_darwin(v96);
  v90 = &v81 - v30;
  v99 = sub_100002840(&qword_1000AD5D0, &qword_100087628);
  v97 = *(v99 - 8);
  v31 = *(v97 + 64);
  __chkstk_darwin(v99);
  v93 = &v81 - v32;
  v102 = sub_100002840(&qword_1000AD5D8, &qword_100087630);
  v33 = *(*(v102 - 8) + 64);
  v34 = __chkstk_darwin(v102);
  v105 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v95 = &v81 - v37;
  v38 = __chkstk_darwin(v36);
  v101 = &v81 - v39;
  __chkstk_darwin(v38);
  v104 = &v81 - v40;
  sub_100080E28();
  *(&v103 + 1) = sub_100080E58();

  *&v103 = swift_getKeyPath();
  sub_100080F48();
  sub_1000807E8();
  sub_100020208(&v118);
  v84 = v120;
  v85 = v119;
  v83 = sub_100005554(&v118, v119);
  sub_100080388();
  sub_100080388();
  sub_100020FBC(&qword_1000AD5E0, &type metadata accessor for Date);
  result = sub_100081138();
  if (result)
  {
    v81 = a1;
    v82 = a2;
    v42 = v17[4];
    v42(v15, v23, v16);
    v43 = v87;
    v42(&v15[*(v87 + 48)], v21, v16);
    sub_1000055FC(v15, v13, &qword_1000AD5B8, &qword_100087610);
    v44 = *(v43 + 48);
    v42(v26, v13, v16);
    v45 = v17[1];
    v45(&v13[v44], v16);
    sub_100020F4C(v15, v13);
    v42(&v26[*(v86 + 36)], &v13[*(v43 + 48)], v16);
    v45(v13, v16);
    v46 = &enum case for PlaybackButton.State.playing(_:);
    v47 = v81;
    v48 = *(v81 + 16) & 1;
    if ((*(v81 + 16) & 1) == 0)
    {
      v46 = &enum case for PlaybackButton.State.unplayed(_:);
    }

    v49 = (*(v94 + 104))(v100, *v46, v98);
    v50 = v85;
    v51 = *(*(v85 - 8) + 64);
    __chkstk_darwin(v49);
    (*(v53 + 16))(&v81 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v83, v50);
    v54 = v88;
    sub_100080828();
    v55 = sub_100020FBC(&qword_1000AD5E8, &type metadata accessor for PlaybackButton);
    v56 = v90;
    v57 = v91;
    sub_100080D48();
    (*(v89 + 8))(v54, v57);
    sub_100019DF8(&v118);
    v58 = v106;
    sub_100080B38();
    v113 = v57;
    v114 = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = v93;
    v61 = v96;
    sub_100080E08();
    (*(v107 + 8))(v58, v108);
    (*(v92 + 8))(v56, v61);
    v62 = v109;
    sub_100080A48();
    v113 = v61;
    v114 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v63 = v95;
    v64 = v99;
    sub_100080E18();
    (*(v110 + 8))(v62, v111);
    (*(v97 + 8))(v60, v64);
    v65 = *(v47 + 24);
    v66 = *(v47 + 32);
    v113 = sub_100021338(v48, v65, v66);
    v114 = v67;
    sub_1000057D0();
    v68 = v101;
    sub_100080878();

    sub_100021738(v63);
    sub_100002840(&qword_1000ACB30, &qword_100085BE0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100085A40;
    *(v69 + 32) = sub_100021004();
    *(v69 + 40) = v70;
    *(v69 + 48) = sub_100021338(v48, v65, v66);
    *(v69 + 56) = v71;
    v72 = v104;
    sub_1000808A8();

    sub_100021738(v68);
    v73 = v105;
    sub_1000217A0(v72, v105);
    v74 = v103;
    v112[0] = v103;
    v75 = *(&v103 + 1);
    v76 = v121;
    v112[1] = v121;
    v112[2] = v122;
    v77 = v123;
    v112[3] = v123;
    v78 = v82;
    v82[2] = v122;
    v78[3] = v77;
    *v78 = v112[0];
    v78[1] = v76;
    v79 = v78;
    v80 = sub_100002840(&qword_1000AD5F0, &qword_100087670);
    sub_1000217A0(v73, v79 + *(v80 + 48));
    sub_1000055FC(v112, &v113, &qword_1000AD5F8, &qword_100087678);
    sub_100021738(v72);
    sub_100021738(v73);
    v113 = v74;
    v114 = v75;
    v115 = v121;
    v116 = v122;
    v117 = v123;
    return sub_100005B2C(&v113, &qword_1000AD5F8, &qword_100087678);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100020208@<X0>(uint64_t *a1@<X8>)
{
  v95 = sub_1000801E8();
  v98 = *(v95 - 8);
  v3 = *(v98 + 64);
  __chkstk_darwin(v95);
  v5 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_100080478();
  v97 = *(v93 - 8);
  v6 = v97[8];
  v7 = __chkstk_darwin(v93);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v71 - v10;
  v12 = sub_1000811C8();
  v96 = *(v12 - 8);
  v13 = v96[8];
  v14 = __chkstk_darwin(v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v71 - v17;
  v19 = sub_1000801F8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v94 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002840(&qword_1000AD610, &qword_1000887C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v25 = __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  if (v1[1])
  {
    sub_100002840(&qword_1000AD3E0, &qword_100087348);
    sub_10007FAF8();
    v118 = 0u;
    v119 = 0u;
    *&v120 = 0;
    sub_10007FAE8();
    v29 = sub_10007FAB8();
    a1[3] = &type metadata for PauseCurrentAudiobookIntent;
    result = sub_1000219C4();
    a1[4] = result;
    *a1 = v29;
  }

  else
  {
    v82 = a1;
    if (*(v1 + 17) == 1)
    {
      v31 = *v1;
      v116 = *(v1 + 24);
      v117 = v31;
      v79 = v28;
      v80 = v27;
      v32 = &v71 - v26;
      v78 = &v71 - v26;
      v33 = sub_1000803D8();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v81 = sub_100002840(&qword_1000AD620, &unk_100087690);
      sub_1000218B8(&v117, &v118);
      sub_1000055FC(&v116, &v118, &qword_1000ACE48, &unk_100086040);
      sub_100081158();
      sub_100080448();
      v92 = v96[2];
      v89 = v96 + 2;
      v92(v16, v18, v12);
      v88 = v97[2];
      v86 = v97 + 2;
      v34 = v9;
      v35 = v93;
      v88(v9, v11, v93);
      v84 = type metadata accessor for BundleFinder();
      *v5 = v84;
      v87 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v36 = *(v98 + 104);
      v98 += 104;
      v91 = v36;
      v36(v5);
      sub_100080208();
      v85 = v97[1];
      ++v97;
      v85(v11, v35);
      v90 = v96[1];
      ++v96;
      v83 = v12;
      v90(v18, v12);
      v77 = sub_10007FCB8();
      sub_100081158();
      sub_100080448();
      v71 = v16;
      v92(v16, v18, v12);
      v88(v9, v11, v35);
      v37 = v84;
      *v5 = v84;
      v91(v5, v87, v95);
      v38 = v34;
      sub_100080208();
      v85(v11, v35);
      v39 = v83;
      v90(v18, v83);
      v76 = sub_10007FCB8();
      sub_100081158();
      sub_100080448();
      v40 = v71;
      v92(v71, v18, v39);
      v72 = v38;
      v41 = v93;
      v88(v38, v11, v93);
      *v5 = v37;
      v42 = v40;
      v91(v5, v87, v95);
      sub_100080208();
      v43 = v41;
      v85(v11, v41);
      v44 = v83;
      v90(v18, v83);
      v75 = sub_10007FCB8();
      sub_100081158();
      sub_100080448();
      v92(v42, v18, v44);
      v45 = v72;
      v88(v72, v11, v43);
      *v5 = v84;
      v91(v5, v87, v95);
      v46 = v42;
      sub_100080208();
      v47 = v85;
      v85(v11, v43);
      v48 = v83;
      v90(v18, v83);
      v81 = sub_10007FCB8();
      v74 = sub_100002840(&qword_1000AD628, &qword_1000876A0);
      sub_100081158();
      sub_100080448();
      v92(v46, v18, v48);
      v49 = v45;
      v50 = v45;
      v51 = v11;
      v52 = v11;
      v53 = v93;
      v88(v50, v51, v93);
      *v5 = v84;
      v91(v5, v87, v95);
      sub_100080208();
      v47(v52, v53);
      v54 = v83;
      v90(v18, v83);
      v74 = sub_10007FC98();
      v73 = sub_100002840(&qword_1000AD630, &qword_1000876A8);
      sub_100081158();
      sub_100080448();
      v92(v46, v18, v54);
      v55 = v93;
      v88(v49, v52, v93);
      *v5 = v84;
      v91(v5, v87, v95);
      sub_100080208();
      v85(v52, v55);
      v90(v18, v54);
      sub_100005C98(&qword_1000AD638, &qword_1000AD640, &unk_1000876B0);
      v98 = sub_10007FC88();
      v99[0] = v117;
      v118 = v116;
      v56 = v77;
      sub_10007FC68();
      v118 = 0uLL;
      v57 = v75;
      sub_10007FC68();
      v118 = 0uLL;
      v58 = v76;
      sub_10007FC68();
      v118 = 0uLL;
      v59 = v81;
      sub_10007FC68();
      v61 = v78;
      v60 = v79;
      sub_1000055FC(v78, v79, &qword_1000AD610, &qword_1000887C0);
      sub_1000055FC(v60, v80, &qword_1000AD610, &qword_1000887C0);
      v62 = v74;
      sub_10007FC68();
      sub_100005B2C(v60, &qword_1000AD610, &qword_1000887C0);
      sub_100005B2C(v61, &qword_1000AD610, &qword_1000887C0);
      v100 = v99[0];
      *&v101 = v56;
      *(&v101 + 1) = v58;
      *&v102 = v57;
      *(&v102 + 1) = v59;
      *&v103 = v62;
      *(&v103 + 1) = v98;
      v104 = 0uLL;
      v105 = 1;
      v106 = v99[0];
      v107 = v56;
      v108 = v58;
      v109 = v57;
      v110 = v59;
      v111 = v62;
      v112 = v98;
      v113 = 0;
      v114 = 0;
      v115 = 1;
      sub_100021914(&v100, &v118);
      sub_100021970(&v106);
      v120 = v102;
      v121 = v103;
      v122 = v104;
      v123 = v105;
      v118 = v100;
      v119 = v101;
      sub_100021914(&v100, v99);
      v63 = sub_100049B48(1, &v118);
      v65 = v64;
      v67 = v66;
      v68 = v82;
      v82[3] = &type metadata for PlayAudiobookIntent;
      v68[4] = sub_100021864();
      result = sub_100021970(&v100);
    }

    else
    {
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      v63 = sub_100049B48(0, &v118);
      v65 = v69;
      v67 = v70;
      v68 = v82;
      v82[3] = &type metadata for PlayAudiobookIntent;
      result = sub_100021864();
      v68[4] = result;
    }

    *v68 = v63;
    v68[1] = v65;
    v68[2] = v67;
  }

  return result;
}

uint64_t sub_100020EE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8 = *(v1 + 32);
  *a1 = sub_100080F48();
  a1[1] = v4;
  v5 = sub_100002840(&qword_1000AD5B0, &qword_100087608);
  return sub_10001F56C(v7, (a1 + *(v5 + 44)));
}

uint64_t sub_100020F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD5B8, &qword_100087610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021004()
{
  v19[0] = sub_100080478();
  v0 = *(v19[0] - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v19 - v5;
  v7 = sub_1000811C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  sub_100081158();
  sub_100080448();
  (*(v8 + 16))(v12, v14, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v16 = v19[0];
  (*(v0 + 16))(v4, v6, v19[0]);
  v17 = sub_100081268();
  (*(v0 + 8))(v6, v16);
  (*(v8 + 8))(v14, v7);
  return v17;
}

uint64_t sub_100021338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = sub_100080478();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1000811C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  if (a3)
  {
    v26 = a2;
    v27 = a3;

    sub_100081158();
    sub_100080448();
    (*(v13 + 16))(v17, v19, v12);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v21 = v28;
    (*(v5 + 16))(v9, v11, v28);
    sub_100081268();
    (*(v5 + 8))(v11, v21);
    (*(v13 + 8))(v19, v12);
    sub_100002840(&qword_1000AD600, &unk_100087680);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100085C00;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100021810();
    v23 = v27;
    *(v22 + 32) = v26;
    *(v22 + 40) = v23;
    v24 = sub_1000811E8();

    return v24;
  }

  else
  {

    return sub_100021004();
  }
}

uint64_t sub_100021738(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD5D8, &qword_100087630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000217A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD5D8, &qword_100087630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100021810()
{
  result = qword_1000AD608;
  if (!qword_1000AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD608);
  }

  return result;
}

unint64_t sub_100021864()
{
  result = qword_1000AD618;
  if (!qword_1000AD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD618);
  }

  return result;
}

unint64_t sub_1000219C4()
{
  result = qword_1000AD648;
  if (!qword_1000AD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD648);
  }

  return result;
}

unint64_t sub_100021A70()
{
  result = qword_1000AD660;
  if (!qword_1000AD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD660);
  }

  return result;
}

uint64_t sub_100021AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000807B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100080F68();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100021BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000807B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100080F68();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100021D20()
{
  result = sub_1000807B8();
  if (v1 <= 0x3F)
  {
    result = sub_100080F68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AD718, &unk_100088450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100021F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 72) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10002208C()
{
  sub_100022118();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SmallEmptyStateView.ViewConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100022118()
{
  if (!qword_1000AD788)
  {
    sub_100081008();
    v0 = sub_1000807C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AD788);
    }
  }
}

uint64_t sub_10002218C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000055FC(v2, &v17 - v11, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10002238C@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = sub_100081008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100080F68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002218C(v9);
  sub_100080FF8();
  v15 = sub_100080FC8();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v9, v2);
  v28 = v10;
  if (v15)
  {
    v17 = v1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
    v18 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
    (*(v11 + 16))(v14, v17 + *(v18 + 20), v10);
  }

  else
  {
    (*(v11 + 104))(v14, enum case for BlendMode.normal(_:), v10);
  }

  sub_10002218C(v9);
  sub_100080FF8();
  v19 = sub_100080FC8();
  v16(v7, v2);
  v16(v9, v2);
  if (v19)
  {
    v20 = v1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
    v21 = *(v20 + *(type metadata accessor for SmallEmptyStateView.ViewConfiguration(0) + 36));
  }

  else
  {
    v21 = sub_100080B08();
  }

  v22 = v28;
  v23 = sub_100080A28();
  v24 = v27;
  *v27 = v23;
  v24[1] = 0;
  *(v24 + 16) = 1;
  v25 = sub_100002840(&qword_1000AD7C0, &qword_1000877C8);
  sub_100022674(v1, v21, v14, v24 + *(v25 + 44));
  return (*(v11 + 8))(v14, v22);
}

uint64_t sub_100022674@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002840(&qword_1000AD7C8, &qword_1000877D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = sub_100080A78();
  v16 = a1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
  v17 = *(v16 + *(type metadata accessor for SmallEmptyStateView.ViewConfiguration(0) + 48));
  *v14 = v15;
  *(v14 + 1) = v17;
  v14[16] = 0;
  v18 = sub_100002840(&qword_1000AD7D0, &qword_1000877D8);
  sub_100022808(a1, a2, a3, &v14[*(v18 + 44)]);
  sub_1000055FC(v14, v12, &qword_1000AD7C8, &qword_1000877D0);
  sub_1000055FC(v12, a4, &qword_1000AD7C8, &qword_1000877D0);
  v19 = a4 + *(sub_100002840(&qword_1000AD7D8, &qword_1000877E0) + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_100005B2C(v14, &qword_1000AD7C8, &qword_1000877D0);
  return sub_100005B2C(v12, &qword_1000AD7C8, &qword_1000877D0);
}

uint64_t sub_100022808@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v53 = a3;
  v54 = a2;
  v58 = a4;
  v5 = sub_100002840(&qword_1000AD7E0, &qword_1000877E8);
  v6 = *(v5 - 8);
  v56 = v5 - 8;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v57 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &KeyPath - v10;
  v12 = sub_100002840(&qword_1000AD7E8, &qword_1000877F0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v55 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &KeyPath - v17;
  v19 = a1 + *(type metadata accessor for SmallEmptyStateView(0) + 24);
  v20 = type metadata accessor for SmallEmptyStateView.ViewConfiguration(0);
  v51 = *(v19 + v20[6]);
  v21 = *(v19 + v20[10]);
  KeyPath = swift_getKeyPath();
  v22 = *(v19 + v20[11]);
  v23 = &v18[*(v13 + 44)];
  v24 = *(sub_1000808E8() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_100080A38();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v22;
  *(v23 + 1) = v22;
  *&v23[*(sub_100002840(&qword_1000AD7F0, &qword_10008A850) + 36)] = 256;
  v27 = KeyPath;
  *v18 = v51;
  *(v18 + 4) = 0;
  *(v18 + 2) = v27;
  *(v18 + 3) = v21;
  v28 = v18;

  LOBYTE(v25) = sub_100080BD8();
  sub_100022D9C(&v60);
  v71 = v63;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v68 = v60;
  v69 = v61;
  v70 = v62;
  v75[1] = v61;
  v75[0] = v60;
  v75[2] = v62;
  v75[3] = v63;
  v75[4] = v64;
  v75[5] = v65;
  v75[6] = v66;
  sub_1000055FC(&v68, &v59, &qword_1000AD7F8, &qword_100087830);
  sub_100005B2C(v75, &qword_1000AD7F8, &qword_100087830);
  *&v67[55] = v71;
  *&v67[71] = v72;
  *&v67[87] = v73;
  *&v67[103] = v74;
  *&v67[23] = v69;
  *&v67[39] = v70;
  *&v67[7] = v68;
  v29 = *(v19 + v20[7]);
  v30 = *(v19 + v20[8]);
  v31 = sub_100080CA8();
  v32 = swift_getKeyPath();
  v33 = *(sub_100002840(&qword_1000AD800, &qword_100087868) + 36);
  v34 = sub_100080F68();
  (*(*(v34 - 8) + 16))(&v11[v33], v53, v34);
  v35 = *&v67[80];
  *(v11 + 65) = *&v67[64];
  *(v11 + 81) = v35;
  *(v11 + 97) = *&v67[96];
  v36 = *&v67[16];
  *(v11 + 1) = *v67;
  *(v11 + 17) = v36;
  v37 = *&v67[48];
  *(v11 + 33) = *&v67[32];
  *v11 = v25;
  v38 = *&v67[111];
  *(v11 + 49) = v37;
  *(v11 + 14) = v38;
  *(v11 + 15) = v32;
  *(v11 + 16) = v31;
  *(v11 + 34) = v54;
  v39 = swift_getKeyPath();
  v40 = &v11[*(sub_100002840(&qword_1000AD808, &unk_1000878A0) + 36)];
  v41 = *(sub_100002840(&qword_1000ACA80, &qword_100085B40) + 28);
  v42 = sub_1000807B8();
  (*(*(v42 - 8) + 16))(v40 + v41, v19, v42);
  *v40 = v39;
  sub_100080A68();
  sub_100080A08();
  sub_1000807E8();
  v43 = v55;
  v44 = &v11[*(v56 + 44)];
  v45 = v61;
  *v44 = v60;
  *(v44 + 1) = v45;
  *(v44 + 2) = v62;
  sub_1000055FC(v28, v43, &qword_1000AD7E8, &qword_1000877F0);
  v46 = v57;
  sub_1000055FC(v11, v57, &qword_1000AD7E0, &qword_1000877E8);
  v47 = v58;
  sub_1000055FC(v43, v58, &qword_1000AD7E8, &qword_1000877F0);
  v48 = sub_100002840(&qword_1000AD810, &unk_1000878B0);
  sub_1000055FC(v46, v47 + *(v48 + 48), &qword_1000AD7E0, &qword_1000877E8);
  sub_100005B2C(v11, &qword_1000AD7E0, &qword_1000877E8);
  sub_100005B2C(v28, &qword_1000AD7E8, &qword_1000877F0);
  sub_100005B2C(v46, &qword_1000AD7E0, &qword_1000877E8);
  return sub_100005B2C(v43, &qword_1000AD7E8, &qword_1000877F0);
}

uint64_t sub_100022D9C@<X0>(uint64_t a1@<X8>)
{
  sub_100005CE0();
  sub_1000057D0();
  v22 = sub_100080D28();
  v23 = v2;
  v4 = v3;
  v6 = v5;
  sub_1000581E8();
  v7 = sub_100080D28();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100058464();
  v14 = sub_100080D28();
  v16 = v15;
  v25 = v4 & 1;
  v17 = v11 & 1;
  v24 = v11 & 1;
  v19 = v18 & 1;
  *a1 = v22;
  *(a1 + 8) = v23;
  *(a1 + 16) = v25;
  *(a1 + 24) = v6;
  *(a1 + 32) = 256;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v17;
  *(a1 + 64) = v13;
  *(a1 + 72) = 256;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v18 & 1;
  *(a1 + 104) = v20;
  sub_10000EEB4(v22, v23, v25);

  sub_10000EEB4(v7, v9, v17);

  sub_10000EEB4(v14, v16, v19);

  sub_10000EF24(v14, v16, v19);

  sub_10000EF24(v7, v9, v24);

  sub_10000EF24(v22, v23, v25);
}

uint64_t sub_100022F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080988();
  *a1 = result;
  return result;
}

uint64_t sub_100022F7C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100080998();
}

uint64_t sub_100022FA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080938();
  *a1 = result;
  return result;
}

uint64_t sub_100022FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080938();
  *a1 = result;
  return result;
}

uint64_t sub_100023000(uint64_t *a1)
{
  v1 = *a1;

  return sub_100080948();
}

uint64_t sub_10002302C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100080948();
}

uint64_t sub_100023058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100080988();
  *a1 = result;
  return result;
}

uint64_t sub_100023084(uint64_t *a1)
{
  v1 = *a1;

  return sub_100080998();
}

unint64_t sub_1000230BC()
{
  result = qword_1000AD818;
  if (!qword_1000AD818)
  {
    sub_100004FC8(&qword_1000AD820, &qword_1000878C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD818);
  }

  return result;
}

uint64_t sub_100023134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000231C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LogoView()
{
  result = qword_1000AD888;
  if (!qword_1000AD888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023288()
{
  sub_1000232F4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000232F4()
{
  if (!qword_1000AD898)
  {
    sub_100080308();
    v0 = sub_100081518();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AD898);
    }
  }
}

uint64_t sub_100023368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD8E0, &qword_100087940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  *v10 = sub_100080A28();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_100002840(&qword_1000AD8E8, &qword_100087948);
  sub_1000234B8(a1, &v10[*(v11 + 44)]);
  sub_1000055FC(v10, v8, &qword_1000AD8E0, &qword_100087940);
  sub_1000055FC(v8, a2, &qword_1000AD8E0, &qword_100087940);
  v12 = a2 + *(sub_100002840(&qword_1000AD8F0, &qword_100087950) + 48);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_100005B2C(v10, &qword_1000AD8E0, &qword_100087940);
  return sub_100005B2C(v8, &qword_1000AD8E0, &qword_100087940);
}

uint64_t sub_1000234B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v80 = a1;
  v85 = a2;
  v82 = sub_100002840(&qword_1000AD8F8, &qword_100087958);
  v76 = *(v82 - 8);
  v2 = *(v76 + 64);
  __chkstk_darwin(v82);
  v74 = &v74 - v3;
  v81 = sub_100002840(&qword_1000AD900, &qword_100087960);
  v4 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v6 = &v74 - v5;
  v7 = sub_100002840(&qword_1000AD908, &qword_100087968);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v74 - v9;
  v75 = sub_100002840(&qword_1000AD910, &qword_100087970);
  v11 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v83 = &v74 - v12;
  v13 = sub_100002840(&qword_1000AD918, &qword_100087978);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v77 = &v74 - v15;
  v16 = sub_100002840(&qword_1000AD920, &qword_100087980);
  v79 = *(v16 - 8);
  v17 = *(v79 + 64);
  __chkstk_darwin(v16);
  v78 = &v74 - v18;
  v19 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v74 - v21;
  v23 = sub_100080308();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v74 - v29;
  v31 = sub_100002840(&qword_1000AD928, &qword_100087988);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v84 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v74 - v35;
  sub_100024570(v80, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v76 = v13;
    v80 = v16;
    sub_100005B2C(v22, &qword_1000AD3B0, &unk_100087320);
    sub_100080EB8();
    v37 = enum case for Image.TemplateRenderingMode.template(_:);
    v38 = sub_100080EC8();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v10, v37, v38);
    (*(v39 + 56))(v10, 0, 1, v38);
    v40 = sub_100080EA8();

    sub_100005B2C(v10, &qword_1000AD908, &qword_100087968);
    if (qword_1000AC668 != -1)
    {
      swift_once();
    }

    v41 = qword_1000AD828;
    KeyPath = swift_getKeyPath();
    *&v88 = v40;
    *(&v88 + 1) = KeyPath;
    *&v89 = v41;

    sub_100002840(&qword_1000AD930, &unk_1000879C0);
    sub_100024650();
    v43 = v83;
    sub_100080D48();

    sub_100080F48();
    sub_1000807E8();
    v44 = (v43 + *(v75 + 36));
    v45 = v89;
    *v44 = v88;
    v44[1] = v45;
    v44[2] = v90;
    sub_100002840(&qword_1000AD950, &qword_1000879D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A40;
    v47 = sub_100080BF8();
    *(inited + 32) = v47;
    v48 = sub_100080C38();
    *(inited + 33) = v48;
    v49 = sub_100080C28();
    sub_100080C28();
    if (sub_100080C28() != v47)
    {
      v49 = sub_100080C28();
    }

    sub_100080C28();
    if (sub_100080C28() != v48)
    {
      v49 = sub_100080C28();
    }

    v50 = v6;
    v51 = v80;
    v52 = v76;
    sub_100080798();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = v77;
    sub_100024708(v83, v77);
    v62 = v61 + *(v52 + 36);
    *v62 = v49;
    *(v62 + 8) = v54;
    *(v62 + 16) = v56;
    *(v62 + 24) = v58;
    *(v62 + 32) = v60;
    *(v62 + 40) = 0;
    v63 = sub_100024778();
    v64 = v78;
    sub_100080D98();
    sub_100005B2C(v61, &qword_1000AD918, &qword_100087978);
    v65 = v79;
    (*(v79 + 16))(v50, v64, v51);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AD968, &qword_1000AD8F8, &qword_100087958);
    v86 = v52;
    v87 = v63;
    swift_getOpaqueTypeConformance2();
    sub_100080AD8();
    (*(v65 + 8))(v64, v51);
  }

  else
  {
    (*(v24 + 32))(v30, v22, v23);
    (*(v24 + 16))(v28, v30, v23);
    v66 = sub_100024778();
    *&v88 = v13;
    *(&v88 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    v67 = v74;
    sub_100080CE8();
    v68 = v76;
    v69 = v82;
    (*(v76 + 16))(v6, v67, v82);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AD968, &qword_1000AD8F8, &qword_100087958);
    sub_100080AD8();
    (*(v68 + 8))(v67, v69);
    (*(v24 + 8))(v30, v23);
  }

  v70 = v84;
  sub_1000055FC(v36, v84, &qword_1000AD928, &qword_100087988);
  v71 = v85;
  *v85 = 0;
  *(v71 + 8) = 1;
  v72 = sub_100002840(&qword_1000AD970, &qword_1000879D8);
  sub_1000055FC(v70, v71 + *(v72 + 48), &qword_1000AD928, &qword_100087988);
  sub_100005B2C(v36, &qword_1000AD928, &qword_100087988);
  return sub_100005B2C(v70, &qword_1000AD928, &qword_100087988);
}

uint64_t sub_100023EF4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100002840(&qword_1000AD908, &qword_100087968);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v35 - v3;
  v5 = sub_100002840(&qword_1000AD910, &qword_100087970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_100002840(&qword_1000AD918, &qword_100087978);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  sub_100080EB8();
  v13 = enum case for Image.TemplateRenderingMode.template(_:);
  v14 = sub_100080EC8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v4, v13, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  v16 = sub_100080EA8();

  sub_100005B2C(v4, &qword_1000AD908, &qword_100087968);
  if (qword_1000AC668 != -1)
  {
    swift_once();
  }

  v17 = qword_1000AD828;
  KeyPath = swift_getKeyPath();
  *&v36 = v16;
  *(&v36 + 1) = KeyPath;
  *&v37 = v17;

  sub_100002840(&qword_1000AD930, &unk_1000879C0);
  sub_100024650();
  sub_100080D48();

  sub_100080F48();
  sub_1000807E8();
  v19 = &v8[*(v5 + 36)];
  v20 = v37;
  *v19 = v36;
  *(v19 + 1) = v20;
  *(v19 + 2) = v38;
  sub_100002840(&qword_1000AD950, &qword_1000879D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A40;
  v22 = sub_100080BF8();
  *(inited + 32) = v22;
  v23 = sub_100080C38();
  *(inited + 33) = v23;
  v24 = sub_100080C28();
  sub_100080C28();
  if (sub_100080C28() != v22)
  {
    v24 = sub_100080C28();
  }

  sub_100080C28();
  if (sub_100080C28() != v23)
  {
    v24 = sub_100080C28();
  }

  sub_100080798();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100024708(v8, v12);
  v33 = &v12[*(v9 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_100024778();
  sub_100080D98();
  return sub_100005B2C(v12, &qword_1000AD918, &qword_100087978);
}

uint64_t sub_100024300()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1000243D0;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000245E0;
  v3[3] = &unk_1000A7910;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_100080E68();
  qword_1000AD828 = result;
  return result;
}

id sub_1000243D0(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithRed:1.0 green:0.596078431 blue:0.0 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

uint64_t sub_100024460()
{
  v1 = sub_100002840(&qword_1000AD8C8, &qword_100087930);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  *v4 = sub_100080A68();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_100002840(&qword_1000AD8D0, &qword_100087938);
  sub_100023368(v0, &v4[*(v5 + 44)]);
  sub_100005C98(&qword_1000AD8D8, &qword_1000AD8C8, &qword_100087930);
  sub_100080DB8();
  return sub_100005B2C(v4, &qword_1000AD8C8, &qword_100087930);
}

uint64_t sub_100024570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000245E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

unint64_t sub_100024650()
{
  result = qword_1000AD938;
  if (!qword_1000AD938)
  {
    sub_100004FC8(&qword_1000AD930, &unk_1000879C0);
    sub_100005C98(&qword_1000AD940, &qword_1000AD948, &unk_100088080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD938);
  }

  return result;
}

uint64_t sub_100024708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AD910, &qword_100087970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024778()
{
  result = qword_1000AD958;
  if (!qword_1000AD958)
  {
    sub_100004FC8(&qword_1000AD918, &qword_100087978);
    sub_100024804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD958);
  }

  return result;
}

unint64_t sub_100024804()
{
  result = qword_1000AD960;
  if (!qword_1000AD960)
  {
    sub_100004FC8(&qword_1000AD910, &qword_100087970);
    sub_100004FC8(&qword_1000AD930, &unk_1000879C0);
    sub_100024650();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD960);
  }

  return result;
}

uint64_t sub_1000248CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000248E8()
{
  result = qword_1000AD978;
  if (!qword_1000AD978)
  {
    sub_100004FC8(&qword_1000AD980, &unk_1000879E0);
    sub_100005C98(&qword_1000AD8D8, &qword_1000AD8C8, &qword_100087930);
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD978);
  }

  return result;
}

unint64_t sub_1000249A0()
{
  result = qword_1000ACB10;
  if (!qword_1000ACB10)
  {
    sub_100080B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB10);
  }

  return result;
}

uint64_t sub_100024A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100024ACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LargeEmptyStateView()
{
  result = qword_1000AD9E0;
  if (!qword_1000AD9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024BBC()
{
  result = type metadata accessor for EmptyStateView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100024C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = *(a1 + 24);
  v9 = type metadata accessor for EmptyStateView(0);
  sub_100024D24(v2 + v8, a2 + v9[7]);
  *a2 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v10 = (a2 + v9[5]);
  *v10 = v5;
  v10[1] = v4;
  v11 = (a2 + v9[6]);
  *v11 = v7;
  v11[1] = v6;
  v11[2] = 0x401C000000000000;
}

uint64_t sub_100024D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100024D94()
{
  result = qword_1000ADA20;
  if (!qword_1000ADA20)
  {
    type metadata accessor for EmptyStateView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADA20);
  }

  return result;
}

uint64_t sub_100024E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100024EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MediumWidgetView()
{
  result = qword_1000ADA80;
  if (!qword_1000ADA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024FF4()
{
  sub_100002A24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_100025078(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100025084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000250CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100025138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11 == 0xD000000000000023 && 0x8000000100082090 == v12 || (sub_100081618() & 1) != 0)
  {

    return sub_100029988(a2);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_100081588(37);

    v17 = 0xD000000000000020;
    v18 = 0x8000000100082CE0;
    v20._countAndFlagsBits = v11;
    v20._object = v12;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = 63;
    v21._object = 0xE100000000000000;
    sub_1000812A8(v21);
    v22._countAndFlagsBits = sub_10002A330();
    sub_1000812A8(v22);

    sub_1000802E8();

    v14 = sub_100080308();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v10, 1, v14) == 1)
    {
      sub_1000802E8();
      result = v16(v8, 1, v14);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v15 + 32))(a2, v8, v14);
        result = v16(v10, 1, v14);
        if (result != 1)
        {
          return sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v15 + 32))(a2, v10, v14);
    }
  }

  return result;
}

uint64_t sub_1000253FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11 == 0xD000000000000023 && 0x8000000100082090 == v12 || (sub_100081618() & 1) != 0)
  {

    return sub_100029BC0(a2);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_100081588(37);

    v17 = 0xD000000000000020;
    v18 = 0x8000000100082CE0;
    v20._countAndFlagsBits = v11;
    v20._object = v12;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = 63;
    v21._object = 0xE100000000000000;
    sub_1000812A8(v21);
    v22._countAndFlagsBits = sub_10002A5B0();
    sub_1000812A8(v22);

    sub_1000802E8();

    v14 = sub_100080308();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v10, 1, v14) == 1)
    {
      sub_1000802E8();
      result = v16(v8, 1, v14);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v15 + 32))(a2, v8, v14);
        result = v16(v10, 1, v14);
        if (result != 1)
        {
          return sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v15 + 32))(a2, v10, v14);
    }
  }

  return result;
}

uint64_t sub_1000256C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11 == 0xD000000000000023 && 0x8000000100082090 == v12 || (sub_100081618() & 1) != 0)
  {

    return sub_100029DF8(a2);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_100081588(37);

    v17 = 0xD000000000000020;
    v18 = 0x8000000100082CE0;
    v20._countAndFlagsBits = v11;
    v20._object = v12;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = 63;
    v21._object = 0xE100000000000000;
    sub_1000812A8(v21);
    v22._countAndFlagsBits = sub_10002A860();
    sub_1000812A8(v22);

    sub_1000802E8();

    v14 = sub_100080308();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v10, 1, v14) == 1)
    {
      sub_1000802E8();
      result = v16(v8, 1, v14);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v15 + 32))(a2, v8, v14);
        result = v16(v10, 1, v14);
        if (result != 1)
        {
          return sub_100005B2C(v10, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v15 + 32))(a2, v10, v14);
    }
  }

  return result;
}

uint64_t sub_100025984()
{
  v22 = sub_100080478();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v22);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_1000811C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = sub_1000811A8();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  result = 0;
  v17 = *(v0 + 24);
  if (v17 >= 2)
  {
    sub_100081198();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_100081188(v24);
    v23 = v17;
    sub_100081178();
    v25._countAndFlagsBits = 0x727473207961642DLL;
    v25._object = 0xEB000000006B6165;
    sub_100081188(v25);
    sub_1000811B8();
    sub_100080448();
    (*(v7 + 16))(v11, v13, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v20 = sub_100081258();
    (*(v1 + 8))(v5, v22);
    (*(v7 + 8))(v13, v6);
    return v20;
  }

  return result;
}

uint64_t sub_100025CB8()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_100025F34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  if (sub_100062184())
  {

    return sub_10002AADC(a1);
  }

  else
  {
    sub_1000802E8();
    v10 = sub_100080308();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v8, 1, v10) == 1)
    {
      sub_1000802E8();
      result = v12(v6, 1, v10);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v11 + 32))(a1, v6, v10);
        result = v12(v8, 1, v10);
        if (result != 1)
        {
          return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v11 + 32))(a1, v8, v10);
    }
  }

  return result;
}

uint64_t sub_100026150@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  if (sub_100062184())
  {

    return sub_10002AD14(a1);
  }

  else
  {
    sub_1000802E8();
    v10 = sub_100080308();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v8, 1, v10) == 1)
    {
      sub_1000802E8();
      result = v12(v6, 1, v10);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v11 + 32))(a1, v6, v10);
        result = v12(v8, 1, v10);
        if (result != 1)
        {
          return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v11 + 32))(a1, v8, v10);
    }
  }

  return result;
}

uint64_t sub_10002636C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  if (sub_100062184())
  {

    return sub_10002AF4C(a1);
  }

  else
  {
    sub_1000802E8();
    v10 = sub_100080308();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v8, 1, v10) == 1)
    {
      sub_1000802E8();
      result = v12(v6, 1, v10);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v11 + 32))(a1, v6, v10);
        result = v12(v8, 1, v10);
        if (result != 1)
        {
          return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
        }
      }
    }

    else
    {
      return (*(v11 + 32))(a1, v8, v10);
    }
  }

  return result;
}

uint64_t sub_10002658C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_100026810@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_1000807B8();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100080B88();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100002840(&qword_1000ADAC0, &qword_100087B88);
  v9 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v11 = (&v30 - v10);
  v12 = sub_100002840(&qword_1000ADAC8, &qword_100087B90);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - v14;
  *v11 = sub_100080F48();
  v11[1] = v16;
  v17 = sub_100002840(&qword_1000ADAD0, &unk_100087B98);
  sub_100026C28(v1, v11 + *(v17 + 44));
  sub_100080B78();
  v40 = v1;
  sub_100080F48();
  sub_100002840(&qword_1000ACA68, &qword_100085B00);
  sub_100005C98(&qword_1000ADAD8, &qword_1000ADAC0, &qword_100087B88);
  sub_1000050CC();
  v32 = v15;
  sub_100080DF8();
  (*(v5 + 8))(v8, v33);
  sub_100005B2C(v11, &qword_1000ADAC0, &qword_100087B88);
  v18 = (v1 + *(type metadata accessor for MediumWidgetView() + 20));
  v19 = v18[3];
  v43 = v18[2];
  v44 = v19;
  v20 = v18[1];
  v41 = *v18;
  v42 = v20;
  if (sub_1000573C8())
  {
    v22 = v36;
    v21 = v37;
    v23 = v38;
    (*(v36 + 104))(v38, enum case for ColorScheme.light(_:), v37);
  }

  else
  {
    v23 = v38;
    sub_100005180(v38);
    v22 = v36;
    v21 = v37;
  }

  KeyPath = swift_getKeyPath();
  v25 = sub_100002840(&qword_1000ADAE0, &qword_100087BD8);
  v26 = v39;
  v27 = (v39 + *(v25 + 36));
  v28 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
  (*(v22 + 32))(v27 + *(v28 + 28), v23, v21);
  *v27 = KeyPath;
  return (*(v34 + 32))(v26, v32, v35);
}

uint64_t sub_100026C28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for LogoView();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v42 - v7;
  v8 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v42 - v10;
  v43 = sub_100002840(&qword_1000ADAE8, &qword_100087C10);
  v12 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v14 = &v42 - v13;
  v46 = sub_100002840(&qword_1000ADAF0, &qword_100087C18);
  v44 = *(v46 - 8);
  v15 = *(v44 + 64);
  v16 = __chkstk_darwin(v46);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  if (sub_100062184())
  {
    v20 = sub_100080A78();
  }

  else
  {
    v20 = sub_100080A68();
  }

  v21 = v20;
  v22 = type metadata accessor for MediumWidgetView();
  v23 = *(a1 + *(v22 + 24) + 16);
  *v14 = v21;
  *(v14 + 1) = v23;
  v14[16] = 0;
  v24 = sub_100002840(&qword_1000ADAF8, &qword_100087C20);
  sub_1000270AC(a1, &v14[*(v24 + 44)]);
  v25 = (a1 + *(v22 + 20));
  v26 = v25[1];
  v54 = *v25;
  v55 = v26;
  v27 = v25[3];
  v56 = v25[2];
  v57 = v27;
  sub_100029BC0(v11);
  v28 = sub_100080308();
  v29 = *(*(v28 - 8) + 56);
  v29(v11, 0, 1, v28);
  sub_100005C98(&qword_1000ADB00, &qword_1000ADAE8, &qword_100087C10);
  sub_100080D58();
  sub_100005B2C(v11, &qword_1000AD3B0, &unk_100087320);
  sub_100005B2C(v14, &qword_1000ADAE8, &qword_100087C10);
  v30 = v25[1];
  v50 = *v25;
  v51 = v30;
  v31 = v25[3];
  v52 = v25[2];
  v53 = v31;
  v32 = v47;
  sub_100029BC0(v47);
  v29(v32, 0, 1, v28);
  v33 = v44;
  v34 = *(v44 + 16);
  v35 = v45;
  v36 = v46;
  v34(v45, v19, v46);
  v37 = v49;
  sub_10002B8D8(v32, v49, type metadata accessor for LogoView);
  v38 = v48;
  v34(v48, v35, v36);
  v39 = sub_100002840(&qword_1000ADB08, &qword_100087C28);
  sub_10002B8D8(v37, &v38[*(v39 + 48)], type metadata accessor for LogoView);
  sub_10002B940(v32, type metadata accessor for LogoView);
  v40 = *(v33 + 8);
  v40(v19, v36);
  sub_10002B940(v37, type metadata accessor for LogoView);
  return (v40)(v35, v36);
}

uint64_t sub_1000270AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v113 = a2;
  v3 = sub_100080B68();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  __chkstk_darwin(v3);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100080308();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000ADB18, &qword_100087C30);
  v10 = *(v9 - 8);
  v99 = v9;
  v100 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v98 = &v91 - v12;
  v13 = sub_100002840(&qword_1000ADB20, &qword_100087C38);
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = *(v105 + 64);
  __chkstk_darwin(v13);
  v114 = &v91 - v15;
  v110 = sub_100002840(&qword_1000ADB28, &qword_100087C40);
  v16 = *(*(v110 - 8) + 64);
  v17 = __chkstk_darwin(v110);
  v112 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v108 = &v91 - v20;
  v21 = __chkstk_darwin(v19);
  v109 = &v91 - v22;
  __chkstk_darwin(v21);
  v111 = &v91 - v23;
  v104 = sub_100080B88();
  v95 = *(v104 - 1);
  v24 = *(v95 + 64);
  __chkstk_darwin(v104);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100002840(&qword_1000ADB30, &qword_100087C48);
  v27 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v29 = &v91 - v28;
  v96 = sub_100002840(&qword_1000ADB38, &qword_100087C50);
  v94 = *(v96 - 8);
  v30 = *(v94 + 64);
  __chkstk_darwin(v96);
  v32 = &v91 - v31;
  v33 = sub_100002840(&qword_1000ADB40, &qword_100087C58);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  v36 = __chkstk_darwin(v33);
  v107 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v40 = &v91 - v39;
  __chkstk_darwin(v38);
  v42 = &v91 - v41;
  *v29 = sub_100080A28();
  *(v29 + 1) = 0;
  v29[16] = 1;
  v43 = sub_100002840(&qword_1000ADB48, &qword_100087C60);
  sub_100027B5C(a1, &v29[*(v43 + 44)]);
  sub_100080B78();
  sub_100080F48();
  sub_100005C98(&qword_1000ADB50, &qword_1000ADB30, &qword_100087C48);
  sub_10002B1F8();
  sub_100080DF8();
  (*(v95 + 8))(v26, v104);
  sub_100005B2C(v29, &qword_1000ADB30, &qword_100087C48);
  sub_100080F48();
  sub_1000808F8();
  (*(v94 + 32))(v40, v32, v96);
  v44 = &v40[*(v34 + 44)];
  v45 = v123;
  *(v44 + 4) = v122;
  *(v44 + 5) = v45;
  *(v44 + 6) = v124;
  v46 = v119;
  *v44 = v118;
  *(v44 + 1) = v46;
  v47 = v121;
  *(v44 + 2) = v120;
  *(v44 + 3) = v47;
  v104 = v42;
  sub_10002B24C(v40, v42);
  v48 = type metadata accessor for MediumWidgetView();
  v49 = v92;
  v50 = (v92 + *(v48 + 20));
  v51 = v50[3];
  v135 = v50[2];
  v136 = v51;
  v52 = v50[1];
  v133 = *v50;
  v134 = v52;
  sub_100026150(v97);
  v115 = v49;
  sub_100002840(&qword_1000ADB60, &qword_100087C68);
  sub_10002B2C4();
  v53 = v98;
  sub_100080CE8();
  v54 = v101;
  sub_100080B48();
  v55 = sub_100005C98(&qword_1000ADB88, &qword_1000ADB18, &qword_100087C30);
  v56 = v99;
  sub_100080E08();
  (*(v102 + 8))(v54, v103);
  v57 = v56;
  (*(v100 + 8))(v53, v56);
  v58 = v50[1];
  v129 = *v50;
  v130 = v58;
  v59 = v50[3];
  v131 = v50[2];
  v132 = v59;
  v60 = sub_10005790C();
  if (v61)
  {
    v62 = v60;
    v63 = v61;
    v64 = sub_100025984();
    if (v65)
    {
      v66 = v64;
      v67 = v65;
      *&v125 = v62;
      *(&v125 + 1) = v63;

      v137._countAndFlagsBits = 8236;
      v137._object = 0xE200000000000000;
      sub_1000812A8(v137);

      v138._countAndFlagsBits = v66;
      v138._object = v67;
      sub_1000812A8(v138);

      v63 = *(&v125 + 1);
      v62 = v125;
    }
  }

  else
  {
    v62 = 0;
    v63 = 0xE000000000000000;
  }

  v68 = v108;
  *&v125 = v62;
  *(&v125 + 1) = v63;
  v116 = v57;
  v117 = v55;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v69 = v106;
  v70 = v114;
  sub_100080DD8();

  (*(v105 + 8))(v70, v69);
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100085A40;
  *(v71 + 32) = sub_10002658C();
  *(v71 + 40) = v72;
  v73 = v50[1];
  v125 = *v50;
  v126 = v73;
  v74 = v50[3];
  v127 = v50[2];
  v128 = v74;
  v75 = sub_10005790C();
  if (v76)
  {
    v77 = v75;
    v78 = v76;
    v79 = sub_100025984();
    if (v80)
    {
      v81 = v79;
      v82 = v80;
      v116 = v77;
      v117 = v78;

      v139._countAndFlagsBits = 8236;
      v139._object = 0xE200000000000000;
      sub_1000812A8(v139);

      v140._countAndFlagsBits = v81;
      v140._object = v82;
      sub_1000812A8(v140);

      v77 = v116;
      v78 = v117;
    }
  }

  else
  {
    v77 = 0;
    v78 = 0xE000000000000000;
  }

  *(v71 + 48) = v77;
  *(v71 + 56) = v78;
  v83 = v109;
  sub_1000808A8();

  sub_100005B2C(v68, &qword_1000ADB28, &qword_100087C40);
  sub_100080F98();
  v84 = v111;
  sub_1000808B8();
  sub_100005B2C(v83, &qword_1000ADB28, &qword_100087C40);
  v85 = v104;
  v86 = v107;
  sub_1000055FC(v104, v107, &qword_1000ADB40, &qword_100087C58);
  v87 = v112;
  sub_1000055FC(v84, v112, &qword_1000ADB28, &qword_100087C40);
  v88 = v113;
  sub_1000055FC(v86, v113, &qword_1000ADB40, &qword_100087C58);
  v89 = sub_100002840(&qword_1000ADB90, &qword_100087C80);
  sub_1000055FC(v87, v88 + *(v89 + 48), &qword_1000ADB28, &qword_100087C40);
  sub_100005B2C(v84, &qword_1000ADB28, &qword_100087C40);
  sub_100005B2C(v85, &qword_1000ADB40, &qword_100087C58);
  sub_100005B2C(v87, &qword_1000ADB28, &qword_100087C40);
  return sub_100005B2C(v86, &qword_1000ADB40, &qword_100087C58);
}

uint64_t sub_100027B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v3 = sub_100080A58();
  v151 = *(v3 - 8);
  v152 = v3;
  v4 = *(v151 + 64);
  __chkstk_darwin(v3);
  v150 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_100080B68();
  v142 = *(v145 - 8);
  v6 = *(v142 + 64);
  __chkstk_darwin(v145);
  v140 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for MediumEmptyStateView();
  v8 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v10 = (v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100002840(&qword_1000ADBC0, &qword_100087CB8);
  v146 = *(v11 - 8);
  v147 = v11;
  v12 = *(v146 + 64);
  __chkstk_darwin(v11);
  v143 = v123 - v13;
  v155 = sub_100002840(&qword_1000ADBC8, &qword_100087CC0);
  v14 = *(*(v155 - 8) + 64);
  v15 = __chkstk_darwin(v155);
  v144 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v148 = v123 - v18;
  __chkstk_darwin(v17);
  v149 = v123 - v19;
  v20 = sub_100080308();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v128 = v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002840(&qword_1000ADBD0, &qword_100087CC8);
  v131 = *(v23 - 8);
  v132 = v23;
  v24 = *(v131 + 64);
  __chkstk_darwin(v23);
  v129 = v123 - v25;
  v138 = sub_100002840(&qword_1000ADBD8, &qword_100087CD0);
  v26 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v130 = v123 - v27;
  v135 = sub_100002840(&qword_1000ADBE0, &qword_100087CD8);
  v28 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v137 = v123 - v29;
  v136 = type metadata accessor for MediumOneBookView(0);
  v30 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v133 = v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_100002840(&qword_1000ADBE8, &qword_100087CE0);
  v32 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v139 = v123 - v33;
  v34 = sub_100002840(&qword_1000ADBF0, &qword_100087CE8);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = v123 - v36;
  v38 = sub_100002840(&qword_1000ADBF8, &qword_100087CF0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (v123 - v40);
  v42 = sub_100002840(&qword_1000ADC00, &qword_100087CF8);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = v123 - v44;
  result = type metadata accessor for MediumWidgetView();
  v47 = *(result + 20);
  v134 = a1;
  v48 = (a1 + v47);
  v49 = *(v48 + 4);
  v50 = *(v49 + 16);
  if (v50 >= 2)
  {
    v51 = v48[1];
    v177 = *v48;
    v178 = v51;
    v52 = v48[3];
    v179 = v48[2];
    v180 = v52;
    sub_10002B41C(&v177, &v158);
    v53 = sub_100080E48();
    sub_100080C88();
    v55 = v54;
    v56 = sub_100080CB8();
    v57 = v178;
    v158 = v177;
    v159 = v178;
    v58 = v179;
    v160 = v179;
    v161 = v180;
    v162 = xmmword_100087A90;
    v163 = xmmword_100087AA0;
    *&v164 = v53;
    *(&v164 + 1) = v55;
    *(v165 + 8) = xmmword_100087AB0;
    *(&v165[1] + 8) = xmmword_100087AC0;
    *(&v165[2] + 8) = xmmword_100087AD0;
    *&v165[0] = 3;
    *(&v165[3] + 1) = v56;
    *v41 = v177;
    v41[1] = v57;
    v59 = v165[0];
    v60 = v165[1];
    v61 = v165[3];
    v41[9] = v165[2];
    v41[10] = v61;
    v41[7] = v59;
    v41[8] = v60;
    v62 = v161;
    v63 = v162;
    v64 = v164;
    v41[5] = v163;
    v41[6] = v64;
    v41[3] = v62;
    v41[4] = v63;
    v41[2] = v58;
    swift_storeEnumTagMultiPayload();
    sub_10002B9A0(&v158, v156);
    sub_10002B584();
    sub_10002B5D8();
    sub_100080AD8();
    v65 = &qword_1000ADC00;
    v66 = &qword_100087CF8;
    sub_1000055FC(v45, v37, &qword_1000ADC00, &qword_100087CF8);
    swift_storeEnumTagMultiPayload();
    sub_10002B694();
    sub_10002B720();
    sub_100080AD8();
    sub_10002B9FC(&v158);
    v67 = v45;
    return sub_100005B2C(v67, v65, v66);
  }

  v123[1] = v38;
  v124 = v45;
  v125 = v42;
  v126 = v34;
  v127 = v37;
  if (v50)
  {
    v68 = 0xD000000000000023;
    v69 = 0x8000000100082090;
    if ((*(v49 + 64) != 0xD000000000000023 || 0x8000000100082090 != *(v49 + 72)) && (sub_100081618() & 1) == 0)
    {
      v95 = *(v49 + 80);
      v160 = *(v49 + 64);
      v161 = v95;
      v162 = *(v49 + 96);
      LOBYTE(v163) = *(v49 + 112);
      v96 = *(v49 + 48);
      v158 = *(v49 + 32);
      v159 = v96;
      sub_10000C328(&v158, v156);
      v182 = v163;
      v180 = v161;
      v181 = v162;
      v178 = v159;
      v179 = v160;
      v177 = v158;
      v156[2] = v160;
      v156[3] = v161;
      v156[4] = v162;
      v157 = v163;
      v156[0] = v158;
      v156[1] = v159;
      if (sub_1000112D4())
      {
        v97 = v48[3];
        v175 = v48[2];
        v176 = v97;
        v98 = v48[1];
        v173 = *v48;
        v174 = v98;
        v99 = v124;
        if (*(v175 + 16))
        {
          v100 = *(v175 + 80);
          v169 = *(v175 + 64);
          v170 = v100;
          v171 = *(v175 + 96);
          v172 = *(v175 + 112);
          v101 = *(v175 + 48);
          v167 = *(v175 + 32);
          v168 = v101;
          sub_10000C328(&v167, v166);
          v102 = v167;
          v103 = v168;
          v104 = BYTE8(v168);
          v166[0] = *(&v168 + 9);
          *(v166 + 3) = HIDWORD(v168);
          v69 = *(&v169 + 1);
          v68 = v169;
          v105 = *(&v170 + 1);
          v106 = v170;
          v107 = v171;
          v108 = v172;
        }

        else
        {
          v106 = BDSCloudAssetTypeStoreEbook;
          v117 = BDSLibraryContentAssetTypeUnknown;
          v104 = 1;
          LOBYTE(v167) = 1;
          v118 = BDSCloudAssetTypeStoreEbook;
          v105 = v117;
          v103 = 0;
          v108 = 0;
          v107 = 0uLL;
          v102 = 0uLL;
        }

        v116 = v127;
        v119 = v176;
        v120 = v133;
        *(v133 + 2) = v175;
        *(v120 + 48) = v119;
        v121 = v174;
        *v120 = v173;
        *(v120 + 16) = v121;
        *(v120 + 64) = v102;
        *(v120 + 80) = v103;
        *(v120 + 88) = v104;
        *(v120 + 89) = v166[0];
        *(v120 + 92) = *(v166 + 3);
        *(v120 + 96) = v68;
        *(v120 + 104) = v69;
        *(v120 + 112) = v106;
        *(v120 + 120) = v105;
        *(v120 + 128) = v107;
        *(v120 + 144) = v108;
        v122 = *(v136 + 24);
        sub_10002B41C(&v173, &v167);
        sub_1000731E0((v120 + v122));
        sub_10002B8D8(v120, v137, type metadata accessor for MediumOneBookView);
        swift_storeEnumTagMultiPayload();
        sub_10002B83C(&qword_1000ADC08, type metadata accessor for MediumOneBookView);
        sub_10002B49C();
        v115 = v139;
        sub_100080AD8();
        sub_10002B940(v120, type metadata accessor for MediumOneBookView);
      }

      else
      {
        v109 = v134;
        v110 = sub_100028CF8(v128);
        __chkstk_darwin(v110);
        v123[-2] = v109;
        sub_10002B83C(&qword_1000ADC08, type metadata accessor for MediumOneBookView);
        v111 = v129;
        sub_100080CE8();
        *&v167 = sub_100056778(0);
        *(&v167 + 1) = v112;
        sub_100005C98(&qword_1000ADC10, &qword_1000ADBD0, &qword_100087CC8);
        sub_1000057D0();
        v113 = v130;
        v114 = v132;
        sub_100080DD8();

        (*(v131 + 8))(v111, v114);
        sub_1000055FC(v113, v137, &qword_1000ADBD8, &qword_100087CD0);
        swift_storeEnumTagMultiPayload();
        sub_10002B49C();
        v115 = v139;
        sub_100080AD8();
        sub_100005B2C(v113, &qword_1000ADBD8, &qword_100087CD0);
        v116 = v127;
        v99 = v124;
      }

      v65 = &qword_1000ADBE8;
      v66 = &qword_100087CE0;
      sub_1000055FC(v115, v41, &qword_1000ADBE8, &qword_100087CE0);
      swift_storeEnumTagMultiPayload();
      sub_10002B584();
      sub_10002B5D8();
      sub_100080AD8();
      sub_1000055FC(v99, v116, &qword_1000ADC00, &qword_100087CF8);
      swift_storeEnumTagMultiPayload();
      sub_10002B694();
      sub_10002B720();
      sub_100080AD8();
      sub_10002B884(&v177);
      sub_100005B2C(v99, &qword_1000ADC00, &qword_100087CF8);
      v67 = v115;
      return sub_100005B2C(v67, v65, v66);
    }

    *v10 = (sub_100005CE0)();
    v10[1] = v70;
    v71 = v141;
    v72 = v10 + *(v141 + 20);
    v73 = sub_100080C48();
    sub_100080C68();
    v75 = v74;
    v76 = sub_100080B18();
    sub_100080E48();
    v77 = sub_100080E58();

    v78 = enum case for ColorScheme.dark(_:);
    v79 = sub_1000807B8();
    (*(*(v79 - 8) + 104))(v72, v78, v79);
    v80 = type metadata accessor for EmptyStateView.ViewConfiguration(0);
    v81 = v80[5];
    v82 = enum case for BlendMode.plusLighter(_:);
    v83 = sub_100080F68();
    (*(*(v83 - 8) + 104))(&v72[v81], v82, v83);
    *&v72[v80[6]] = v73;
    *&v72[v80[7]] = v75;
    *&v72[v80[8]] = v76;
    *&v72[v80[9]] = v77;
    *&v72[v80[10]] = 0x3FE570A3D70A3D71;
    *&v72[v80[11]] = 0x4018000000000000;
    *&v72[v80[12]] = 0x4030000000000000;
    v84 = v140;
    sub_100080B48();
    v85 = sub_10002B83C(&qword_1000ADC40, type metadata accessor for MediumEmptyStateView);
    v86 = v143;
    sub_100080E08();
    (*(v142 + 8))(v84, v145);
    v87 = sub_10002B940(v10, type metadata accessor for MediumEmptyStateView);
    *&v158 = sub_100005CE0(v87);
    *(&v158 + 1) = v88;
    *&v156[0] = v71;
    *(&v156[0] + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v89 = v144;
    v90 = v147;
    sub_100080DD8();

    (*(v146 + 8))(v86, v90);
    v91 = v150;
    sub_100080A48();
    v92 = v148;
    sub_100080898();
    (*(v151 + 8))(v91, v152);
    v93 = sub_100005B2C(v89, &qword_1000ADBC8, &qword_100087CC0);
    sub_100005CE4(v93);
    v94 = v149;
    sub_1000808A8();

    sub_100005B2C(v92, &qword_1000ADBC8, &qword_100087CC0);
    sub_1000055FC(v94, v127, &qword_1000ADBC8, &qword_100087CC0);
    swift_storeEnumTagMultiPayload();
    sub_10002B694();
    sub_10002B720();
    sub_100080AD8();
    return sub_100005B2C(v94, &qword_1000ADBC8, &qword_100087CC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100028B80@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediumWidgetView() + 20));
  v4 = v3[3];
  v33 = v3[2];
  v34 = v4;
  v5 = v3[1];
  v31 = *v3;
  v32 = v5;
  if (*(v33 + 16))
  {
    v6 = *(v33 + 80);
    v27 = *(v33 + 64);
    v7 = *(v33 + 96);
    v28 = v6;
    v29 = v7;
    v30 = *(v33 + 112);
    v8 = *(v33 + 48);
    v25 = *(v33 + 32);
    v26 = v8;
    sub_10000C328(&v25, v24);
    v9 = v25;
    v10 = v26;
    v11 = BYTE8(v26);
    v24[0] = *(&v26 + 9);
    *(v24 + 3) = HIDWORD(v26);
    v13 = *(&v27 + 1);
    v12 = v27;
    v14 = *(&v28 + 1);
    v15 = v28;
    v16 = v29;
    v17 = v30;
  }

  else
  {
    v13 = 0x8000000100082090;
    v15 = BDSCloudAssetTypeStoreEbook;
    v18 = BDSLibraryContentAssetTypeUnknown;
    v11 = 1;
    LOBYTE(v25) = 1;
    v19 = BDSCloudAssetTypeStoreEbook;
    v14 = v18;
    v10 = 0;
    v17 = 0;
    v16 = 0uLL;
    v12 = 0xD000000000000023;
    v9 = 0uLL;
  }

  v20 = v32;
  *a1 = v31;
  *(a1 + 16) = v20;
  v21 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v21;
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 89) = v24[0];
  *(a1 + 92) = *(v24 + 3);
  *(a1 + 96) = v12;
  *(a1 + 104) = v13;
  *(a1 + 112) = v15;
  *(a1 + 120) = v14;
  *(a1 + 128) = v16;
  *(a1 + 144) = v17;
  v22 = *(type metadata accessor for MediumOneBookView(0) + 24);
  sub_10002B41C(&v31, &v25);
  return sub_1000731E0((a1 + v22));
}

uint64_t sub_100028CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediumWidgetView() + 20));
  v4 = v3[3];
  v20 = v3[2];
  v21 = v4;
  v5 = v3[1];
  v18 = *v3;
  v19 = v5;
  if (*(v20 + 16))
  {
    v6 = *(v20 + 80);
    v14 = *(v20 + 64);
    v15 = v6;
    v16 = *(v20 + 96);
    v17 = *(v20 + 112);
    v7 = *(v20 + 48);
    v12 = *(v20 + 32);
    v13 = v7;
    sub_10000C328(&v12, &v22);
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v22 = v12;
    v23 = v13;
  }

  else
  {
    v8 = BDSLibraryContentAssetTypeUnknown;
    LOBYTE(v12) = 1;
    *&v23 = 0;
    v22 = 0uLL;
    BYTE8(v23) = 1;
    *&v24 = 0xD000000000000023;
    *(&v24 + 1) = 0x8000000100082090;
    *&v25 = BDSCloudAssetTypeStoreEbook;
    *(&v25 + 1) = BDSLibraryContentAssetTypeUnknown;
    v26 = 0uLL;
    v27 = 0;
    v9 = BDSCloudAssetTypeStoreEbook;
    v10 = v8;
  }

  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v12 = v22;
  v13 = v23;
  sub_1000253FC(&v12, a1);
  return sub_10002B884(&v22);
}

uint64_t sub_100028E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002840(&qword_1000ADB80, &unk_100087C70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v46 - v9;
  v11 = sub_100002840(&qword_1000ADB98, &qword_100087C88);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v15 = type metadata accessor for MediumReadingGoalView(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100062184();
  v46[3] = a2;
  v46[2] = v15;
  if (v19)
  {
    v20 = (a1 + *(type metadata accessor for MediumWidgetView() + 20));
    v21 = v20[3];
    v49 = v20[2];
    v50 = v21;
    v22 = v20[1];
    v48[0] = *v20;
    v23 = v48[0];
    v48[1] = v22;
    v18[2] = v49;
    v18[3] = v21;
    *v18 = v23;
    v18[1] = v22;
    v24 = v18 + *(v15 + 20);
    v25 = enum case for BlendMode.plusLighter(_:);
    v26 = sub_100080F68();
    (*(*(v26 - 8) + 104))(v24, v25, v26);
    v27 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
    *&v24[v27[5]] = 0x4040000000000000;
    *&v24[v27[6]] = 1;
    *&v24[v27[7]] = 0x4010000000000000;
    v28 = &v24[v27[8]];
    *v28 = 0x69662E656D616C66;
    *(v28 + 1) = 0xEA00000000006C6CLL;
    v29 = v27[9];
    sub_10002B41C(v48, v47);
    *&v24[v29] = sub_100080E48();
    v30 = v27[10];
    *&v24[v30] = sub_100080CB8();
    v31 = v27[11];
    sub_100080C88();
    *&v24[v31] = v32;
    *&v24[v27[12]] = 0x4008000000000000;
    *&v24[v27[13]] = 0x4008000000000000;
    v33 = v27[14];
    *&v24[v33] = sub_100080CB8();
    v34 = v27[15];
    *&v24[v34] = sub_100080E48();
    v35 = v27[16];
    sub_100080E48();
    v36 = sub_100080E58();

    *&v24[v35] = v36;
    *&v24[v27[17]] = 0x4008000000000000;
    *&v24[v27[18]] = 0x4028000000000000;
    v37 = &v24[v27[19]];
    *v37 = 0xD000000000000015;
    *(v37 + 1) = 0x8000000100082B90;
    v38 = v27[20];
    v39 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    (*(*(v39 - 8) + 56))(&v24[v38], 1, 1, v39);
    *&v24[v27[21]] = 0x4062C00000000000;
    sub_10002B8D8(v18, v14, type metadata accessor for MediumReadingGoalView);
    swift_storeEnumTagMultiPayload();
    sub_10002B83C(&qword_1000ADB70, type metadata accessor for MediumReadingGoalView);
    sub_100005C98(&qword_1000ADB78, &qword_1000ADB80, &unk_100087C70);
    sub_100080AD8();
    return sub_10002B940(v18, type metadata accessor for MediumReadingGoalView);
  }

  else
  {
    v46[1] = v4;
    sub_100002840(&qword_1000ADBA0, &unk_100087C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A40;
    v42 = sub_100080BB8();
    *(inited + 32) = v42;
    v43 = sub_100080BD8();
    *(inited + 33) = v43;
    v44 = sub_100080BC8();
    sub_100080BC8();
    if (sub_100080BC8() != v42)
    {
      v44 = sub_100080BC8();
    }

    sub_100080BC8();
    if (sub_100080BC8() != v43)
    {
      v44 = sub_100080BC8();
    }

    *v8 = v44;
    v45 = sub_100002840(&qword_1000ADBA8, &qword_10008A0B0);
    sub_100029424(a1, &v8[*(v45 + 44)]);
    sub_10002B3AC(v8, v10);
    sub_1000055FC(v10, v14, &qword_1000ADB80, &unk_100087C70);
    swift_storeEnumTagMultiPayload();
    sub_10002B83C(&qword_1000ADB70, type metadata accessor for MediumReadingGoalView);
    sub_100005C98(&qword_1000ADB78, &qword_1000ADB80, &unk_100087C70);
    sub_100080AD8();
    return sub_100005B2C(v10, &qword_1000ADB80, &unk_100087C70);
  }
}

uint64_t sub_100029424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for LabelView();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v33 - v9);
  v11 = sub_100002840(&qword_1000ADBB0, &unk_10008A0C0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v33 - v17);
  v19 = sub_100025CB8();
  v21 = v20;
  v22 = *(a1 + *(type metadata accessor for MediumWidgetView() + 24) + 8);
  *v18 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v23 = (v18 + v4[7]);
  *v23 = v19;
  v23[1] = v21;
  *(v18 + v4[8]) = v22;
  v24 = v18 + v4[9];
  *v24 = 0;
  *(v24 + 1) = 0;
  *(v24 + 8) = 256;
  *(v18 + *(v12 + 44)) = 257;
  swift_retain_n();
  v25 = sub_10002970C();
  v27 = v26;
  *v10 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v28 = (v10 + v4[7]);
  *v28 = v25;
  v28[1] = v27;
  *(v10 + v4[8]) = v22;
  v29 = v10 + v4[9];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 8) = 256;
  sub_1000055FC(v18, v16, &qword_1000ADBB0, &unk_10008A0C0);
  sub_10002B8D8(v10, v8, type metadata accessor for LabelView);
  v30 = v34;
  sub_1000055FC(v16, v34, &qword_1000ADBB0, &unk_10008A0C0);
  v31 = sub_100002840(&qword_1000ADBB8, &qword_100087CB0);
  sub_10002B8D8(v8, v30 + *(v31 + 48), type metadata accessor for LabelView);
  sub_10002B940(v10, type metadata accessor for LabelView);
  sub_100005B2C(v18, &qword_1000ADBB0, &unk_10008A0C0);
  sub_10002B940(v8, type metadata accessor for LabelView);
  return sub_100005B2C(v16, &qword_1000ADBB0, &unk_10008A0C0);
}

uint64_t sub_10002970C()
{
  v0 = sub_100080478();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_1000811C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_100081158();
  sub_100080448();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_100081268();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_100029988@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100081588(38);

  v13 = 0xD000000000000024;
  v14 = 0x8000000100082AA0;
  v15._countAndFlagsBits = sub_10002A330();
  sub_1000812A8(v15);

  sub_1000802E8();

  v9 = sub_100080308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  sub_1000802E8();
  result = (v11)(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    result = (v11)(v8, 1, v9);
    if (result != 1)
    {
      return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_100029BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100081588(38);

  v13 = 0xD000000000000024;
  v14 = 0x8000000100082AA0;
  v15._countAndFlagsBits = sub_10002A5B0();
  sub_1000812A8(v15);

  sub_1000802E8();

  v9 = sub_100080308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  sub_1000802E8();
  result = (v11)(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    result = (v11)(v8, 1, v9);
    if (result != 1)
    {
      return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_100029DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100081588(38);

  v13 = 0xD000000000000024;
  v14 = 0x8000000100082AA0;
  v15._countAndFlagsBits = sub_10002A860();
  sub_1000812A8(v15);

  sub_1000802E8();

  v9 = sub_100080308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  sub_1000802E8();
  result = (v11)(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    result = (v11)(v8, 1, v9);
    if (result != 1)
    {
      return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002A030(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000ACA90, &qword_100085B50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v24 - v4;
  v6 = type metadata accessor for BackgroundView();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (v24 - v12);
  __chkstk_darwin(v11);
  v15 = (v24 - v14);
  v16 = (a1 + *(type metadata accessor for MediumWidgetView() + 20));
  v17 = v16[3];
  v24[2] = v16[2];
  v25 = v17;
  v18 = v16[1];
  v24[0] = *v16;
  v24[1] = v18;
  if (sub_1000573C8())
  {
    v19 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      v20 = v25;
      if (qword_1000AC648 != -1)
      {
        swift_once();
      }

      v21 = *sub_100005554(qword_1000B7F10, qword_1000B7F28);
      v22 = sub_10003ABAC(v20, v19, 1);
    }

    else
    {
      v22 = 0;
    }

    *v13 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v13 + *(v6 + 20)) = v22;
    sub_10002B194(v13, v15);
  }

  else
  {
    *v10 = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v10 + *(v6 + 20)) = 0;
    v15 = v10;
  }

  sub_10002B8D8(v15, v5, type metadata accessor for BackgroundView);
  swift_storeEnumTagMultiPayload();
  sub_10002B83C(&qword_1000ACA70, type metadata accessor for BackgroundView);
  sub_100080AD8();
  return sub_10002B940(v15, type metadata accessor for BackgroundView);
}

uint64_t sub_10002A330()
{
  v1 = v0;
  v2 = sub_100081038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for WidgetFamily.systemLarge(_:), v2);
  sub_10002B83C(&qword_1000ADB10, &type metadata accessor for WidgetFamily);
  v7 = sub_100081608();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 48);
  if (v11[2])
  {
    v12 = v11[8] == 0xD000000000000023 && 0x8000000100082090 == v11[9];
    if (v12 || (sub_100081618() & 1) != 0)
    {
      v13 = 48;
    }

    else
    {
      v13 = 49;
    }

    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_100081588(61);
    v15._countAndFlagsBits = 0x6146746567646977;
    v15._object = 0xED00003D796C696DLL;
    sub_1000812A8(v15);
    v16._countAndFlagsBits = v7;
    v16._object = v9;
    sub_1000812A8(v16);

    v17._countAndFlagsBits = 0x4B74656764697726;
    v17._object = 0xEC0000003D646E69;
    sub_1000812A8(v17);
    v18._countAndFlagsBits = 0x646957736B6F6F42;
    v18._object = 0xEB00000000746567;
    sub_1000812A8(v18);
    v19._countAndFlagsBits = 0x6573734173616826;
    v19._object = 0xEB000000003D7374;
    sub_1000812A8(v19);
    v20._countAndFlagsBits = v13;
    v20._object = 0xE100000000000000;
    sub_1000812A8(v20);

    v21._countAndFlagsBits = 0xD000000000000011;
    v21._object = 0x8000000100082B00;
    sub_1000812A8(v21);
    v22._countAndFlagsBits = 49;
    v22._object = 0xE100000000000000;
    sub_1000812A8(v22);
    return v14[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A5B0()
{
  v1 = v0;
  v2 = sub_100081038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for WidgetFamily.systemMedium(_:), v2);
  sub_10002B83C(&qword_1000ADB10, &type metadata accessor for WidgetFamily);
  v7 = sub_100081608();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 32);
  if (v11[2])
  {
    v12 = v11[8] == 0xD000000000000023 && 0x8000000100082090 == v11[9];
    if (v12 || (sub_100081618() & 1) != 0)
    {
      v13 = 48;
      if ((sub_100062184() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = 49;
      if ((sub_100062184() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (*(v1 + 24) > 1)
    {
      v14 = 49;
      goto LABEL_13;
    }

LABEL_11:
    v14 = 48;
LABEL_13:
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_100081588(61);
    v16._countAndFlagsBits = 0x6146746567646977;
    v16._object = 0xED00003D796C696DLL;
    sub_1000812A8(v16);
    v17._countAndFlagsBits = v7;
    v17._object = v9;
    sub_1000812A8(v17);

    v18._countAndFlagsBits = 0x4B74656764697726;
    v18._object = 0xEC0000003D646E69;
    sub_1000812A8(v18);
    v19._countAndFlagsBits = 0x646957736B6F6F42;
    v19._object = 0xEB00000000746567;
    sub_1000812A8(v19);
    v20._countAndFlagsBits = 0x6573734173616826;
    v20._object = 0xEB000000003D7374;
    sub_1000812A8(v20);
    v21._countAndFlagsBits = v13;
    v21._object = 0xE100000000000000;
    sub_1000812A8(v21);

    v22._countAndFlagsBits = 0xD000000000000011;
    v22._object = 0x8000000100082B00;
    sub_1000812A8(v22);
    v23._countAndFlagsBits = v14;
    v23._object = 0xE100000000000000;
    sub_1000812A8(v23);

    return v15[0];
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A860()
{
  v1 = v0;
  v2 = sub_100081038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for WidgetFamily.systemSmall(_:), v2);
  sub_10002B83C(&qword_1000ADB10, &type metadata accessor for WidgetFamily);
  v7 = sub_100081608();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (*(v1 + 64) == 0xD000000000000023 && 0x8000000100082090 == *(v1 + 72) || (sub_100081618() & 1) != 0)
  {
    v10 = 48;
  }

  else
  {
    v10 = 49;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_100081588(61);
  v13._countAndFlagsBits = 0x6146746567646977;
  v13._object = 0xED00003D796C696DLL;
  sub_1000812A8(v13);
  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_1000812A8(v14);

  v15._countAndFlagsBits = 0x4B74656764697726;
  v15._object = 0xEC0000003D646E69;
  sub_1000812A8(v15);
  v16._countAndFlagsBits = 0x646957736B6F6F42;
  v16._object = 0xEB00000000746567;
  sub_1000812A8(v16);
  v17._countAndFlagsBits = 0x6573734173616826;
  v17._object = 0xEB000000003D7374;
  sub_1000812A8(v17);
  v18._countAndFlagsBits = v10;
  v18._object = 0xE100000000000000;
  sub_1000812A8(v18);

  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x8000000100082B00;
  sub_1000812A8(v19);
  v20._countAndFlagsBits = 48;
  v20._object = 0xE100000000000000;
  sub_1000812A8(v20);
  return v12[0];
}

uint64_t sub_10002AADC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100081588(40);

  v13 = 0xD000000000000026;
  v14 = 0x8000000100082CB0;
  v15._countAndFlagsBits = sub_10002A330();
  sub_1000812A8(v15);

  sub_1000802E8();

  v9 = sub_100080308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  sub_1000802E8();
  result = (v11)(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    result = (v11)(v8, 1, v9);
    if (result != 1)
    {
      return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002AD14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100081588(40);

  v13 = 0xD000000000000026;
  v14 = 0x8000000100082CB0;
  v15._countAndFlagsBits = sub_10002A5B0();
  sub_1000812A8(v15);

  sub_1000802E8();

  v9 = sub_100080308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  sub_1000802E8();
  result = (v11)(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    result = (v11)(v8, 1, v9);
    if (result != 1)
    {
      return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002AF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100081588(40);

  v13 = 0xD000000000000026;
  v14 = 0x8000000100082CB0;
  v15._countAndFlagsBits = sub_10002A860();
  sub_1000812A8(v15);

  sub_1000802E8();

  v9 = sub_100080308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v8, v9);
  }

  sub_1000802E8();
  result = (v11)(v6, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    result = (v11)(v8, 1, v9);
    if (result != 1)
    {
      return sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    }
  }

  return result;
}

uint64_t sub_10002B194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B1F8()
{
  result = qword_1000ADB58;
  if (!qword_1000ADB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADB58);
  }

  return result;
}

uint64_t sub_10002B24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ADB40, &qword_100087C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B2C4()
{
  result = qword_1000ADB68;
  if (!qword_1000ADB68)
  {
    sub_100004FC8(&qword_1000ADB60, &qword_100087C68);
    sub_10002B83C(&qword_1000ADB70, type metadata accessor for MediumReadingGoalView);
    sub_100005C98(&qword_1000ADB78, &qword_1000ADB80, &unk_100087C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADB68);
  }

  return result;
}

uint64_t sub_10002B3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ADB80, &unk_100087C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B49C()
{
  result = qword_1000ADC18;
  if (!qword_1000ADC18)
  {
    sub_100004FC8(&qword_1000ADBD8, &qword_100087CD0);
    sub_100005C98(&qword_1000ADC10, &qword_1000ADBD0, &qword_100087CC8);
    sub_10002B83C(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC18);
  }

  return result;
}

unint64_t sub_10002B584()
{
  result = qword_1000ADC20;
  if (!qword_1000ADC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC20);
  }

  return result;
}

unint64_t sub_10002B5D8()
{
  result = qword_1000ADC28;
  if (!qword_1000ADC28)
  {
    sub_100004FC8(&qword_1000ADBE8, &qword_100087CE0);
    sub_10002B83C(&qword_1000ADC08, type metadata accessor for MediumOneBookView);
    sub_10002B49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC28);
  }

  return result;
}

unint64_t sub_10002B694()
{
  result = qword_1000ADC30;
  if (!qword_1000ADC30)
  {
    sub_100004FC8(&qword_1000ADC00, &qword_100087CF8);
    sub_10002B584();
    sub_10002B5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC30);
  }

  return result;
}

unint64_t sub_10002B720()
{
  result = qword_1000ADC38;
  if (!qword_1000ADC38)
  {
    sub_100004FC8(&qword_1000ADBC8, &qword_100087CC0);
    type metadata accessor for MediumEmptyStateView();
    sub_10002B83C(&qword_1000ADC40, type metadata accessor for MediumEmptyStateView);
    swift_getOpaqueTypeConformance2();
    sub_10002B83C(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC38);
  }

  return result;
}

uint64_t sub_10002B83C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002B8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10002BA54()
{
  result = qword_1000ADC48;
  if (!qword_1000ADC48)
  {
    sub_100004FC8(&qword_1000ADAE0, &qword_100087BD8);
    sub_100004FC8(&qword_1000ADAC0, &qword_100087B88);
    sub_100004FC8(&qword_1000ACA68, &qword_100085B00);
    sub_100005C98(&qword_1000ADAD8, &qword_1000ADAC0, &qword_100087B88);
    sub_1000050CC();
    swift_getOpaqueTypeConformance2();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADC48);
  }

  return result;
}

uint64_t sub_10002BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080F68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CircularProgressView.Content(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10002BCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100080F68();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CircularProgressView.Content(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10002BE04()
{
  sub_100080F68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CircularProgressView.Content(319);
    if (v1 <= 0x3F)
    {
      sub_10002BEDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002BEDC()
{
  if (!qword_1000ADCC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000ADCC0);
    }
  }
}

uint64_t sub_10002BF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100080808();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10002C088(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100080808();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10002C1CC()
{
  result = type metadata accessor for SmallReadingGoalView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = sub_100080808();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C27C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_100080308();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002840(&qword_1000ADDC0, &qword_100087D90);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v80 = &v71 - v9;
  v10 = sub_100002840(&qword_1000ADDC8, &qword_100087D98);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v71 - v14;
  v15 = sub_100080B88();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  __chkstk_darwin(v15);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002840(&qword_1000ADDD0, &qword_100087DA0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  v25 = sub_100002840(&qword_1000ADDD8, &qword_100087DA8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v71 - v27;
  v72 = sub_100002840(&qword_1000ADDE0, &qword_100087DB0);
  v29 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v31 = &v71 - v30;
  v32 = sub_100002840(&qword_1000ADDE8, &qword_100087DB8);
  v77 = *(v32 - 8);
  v78 = v32;
  v33 = *(v77 + 64);
  v34 = __chkstk_darwin(v32);
  v76 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v85 = &v71 - v36;
  *v28 = sub_100080A28();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v37 = &v28[*(sub_100002840(&qword_1000ADDF0, &qword_100087DC0) + 44)];
  *v24 = sub_100080A68();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v38 = sub_100002840(&qword_1000ADDF8, &qword_100087DC8);
  sub_10002CA78(a1, &v24[*(v38 + 44)]);
  sub_1000055FC(v24, v22, &qword_1000ADDD0, &qword_100087DA0);
  sub_1000055FC(v22, v37, &qword_1000ADDD0, &qword_100087DA0);
  v39 = v37 + *(sub_100002840(&qword_1000ADE00, &qword_100087DD0) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_100005B2C(v24, &qword_1000ADDD0, &qword_100087DA0);
  sub_100005B2C(v22, &qword_1000ADDD0, &qword_100087DA0);
  sub_100080F48();
  sub_1000808F8();
  sub_10000C1E0(v28, v31, &qword_1000ADDD8, &qword_100087DA8);
  v40 = v73;
  v41 = &v31[*(v72 + 36)];
  v42 = v95;
  *(v41 + 4) = v94;
  *(v41 + 5) = v42;
  *(v41 + 6) = v96;
  v43 = v91;
  *v41 = v90;
  *(v41 + 1) = v43;
  v44 = v93;
  *(v41 + 2) = v92;
  *(v41 + 3) = v44;
  sub_100080B78();
  sub_100080F48();
  sub_10002E0CC();
  sub_10002B1F8();
  v45 = v85;
  sub_100080DF8();
  (*(v74 + 8))(v40, v75);
  sub_100005B2C(v31, &qword_1000ADDE0, &qword_100087DB0);
  v46 = *(a1 + 112);
  v112 = *(a1 + 96);
  v113 = v46;
  v114 = *(a1 + 128);
  v47 = *(a1 + 48);
  v108 = *(a1 + 32);
  v109 = v47;
  v48 = *(a1 + 80);
  v110 = *(a1 + 64);
  v111 = v48;
  v49 = *(a1 + 16);
  v106 = *a1;
  v107 = v49;
  sub_10002636C(v79);
  v87 = a1;
  sub_100002840(&qword_1000ADE18, &qword_100087DD8);
  sub_10002E18C();
  v50 = v80;
  sub_100080CE8();
  v51 = *(a1 + 112);
  v103 = *(a1 + 96);
  v104 = v51;
  v105 = *(a1 + 128);
  v52 = *(a1 + 48);
  v99 = *(a1 + 32);
  v100 = v52;
  v53 = *(a1 + 80);
  v101 = *(a1 + 64);
  v102 = v53;
  v54 = *(a1 + 16);
  v97 = *a1;
  v98 = v54;
  v55 = sub_1000575D8();
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  v88 = v57;
  v89 = v58;
  sub_100005C98(&qword_1000ADE58, &qword_1000ADDC0, &qword_100087D90);
  sub_1000057D0();
  v59 = v86;
  v60 = v82;
  sub_100080DD8();

  (*(v83 + 8))(v50, v60);
  v62 = v76;
  v61 = v77;
  v63 = *(v77 + 16);
  v64 = v45;
  v65 = v78;
  v63(v76, v64, v78);
  v66 = v81;
  sub_1000055FC(v59, v81, &qword_1000ADDC8, &qword_100087D98);
  v67 = v84;
  v63(v84, v62, v65);
  v68 = sub_100002840(&qword_1000ADE60, &unk_100087DF8);
  sub_1000055FC(v66, &v67[*(v68 + 48)], &qword_1000ADDC8, &qword_100087D98);
  sub_100005B2C(v86, &qword_1000ADDC8, &qword_100087D98);
  v69 = *(v61 + 8);
  v69(v85, v65);
  sub_100005B2C(v66, &qword_1000ADDC8, &qword_100087D98);
  return (v69)(v62, v65);
}

uint64_t sub_10002CA78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100080308();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BookCoverView();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_100002840(&qword_1000ACE38, &qword_100086000);
  v11 = *(*(v57 - 8) + 64);
  v12 = __chkstk_darwin(v57);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v53 = &v53 - v17;
  v18 = a1[5];
  v19 = a1[7];
  v74 = a1[6];
  v75 = v19;
  v20 = a1[3];
  v70 = a1[2];
  v71 = v20;
  v21 = a1[5];
  v72 = a1[4];
  v73 = v21;
  v22 = a1[1];
  v68 = *a1;
  v69 = v22;
  v66[2] = v72;
  v66[3] = v18;
  v66[4] = v74;
  v76 = *(a1 + 16);
  v23 = v76;
  v24 = *(&v75 + 1);
  v67 = *(a1 + 112);
  v66[0] = v70;
  v66[1] = v20;
  v54 = v6;
  sub_1000256C0(v66, v6);
  v25 = a1[4];
  v26 = a1[6];
  v63 = a1[5];
  v64 = v26;
  v65 = *(a1 + 112);
  v27 = a1[3];
  *&v60[88] = a1[2];
  v61 = v27;
  v62 = v25;
  v28 = sub_1000112D4();
  v29 = a1[5];
  v79 = a1[4];
  v80 = v29;
  v81 = a1[6];
  v82 = *(a1 + 112);
  v30 = a1[3];
  v77 = a1[2];
  v78 = v30;
  if (v23)
  {
    if (__PAIR128__(v23, v24) == v79)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_100081618();
    }
  }

  else
  {
    v31 = 0;
  }

  *v10 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v55 + 32))(v10 + v7[5], v54, v56);
  *(v10 + v7[6]) = v28 & 1;
  v32 = v10 + v7[7];
  v33 = v80;
  *(v32 + 2) = v79;
  *(v32 + 3) = v33;
  *(v32 + 4) = v81;
  v32[80] = v82;
  v34 = v78;
  *v32 = v77;
  *(v32 + 1) = v34;
  *(v10 + v7[8]) = v31 & 1;
  *(v10 + v7[9]) = 1;
  sub_10000C328(&v77, v60);
  v35 = sub_100080C38();
  v36 = a1 + *(type metadata accessor for SmallReadingGoalView(0) + 20);
  v37 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v38 = *(v36 + *(v37 + 68) + 8) + *(v36 + *(v37 + 64));
  sub_100080798();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_10000C384(v10, v16);
  v47 = &v16[*(v57 + 36)];
  *v47 = v35;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = v53;
  sub_10000C1E0(v16, v53, &qword_1000ACE38, &qword_100086000);
  v49 = v58;
  sub_1000055FC(v48, v58, &qword_1000ACE38, &qword_100086000);
  v50 = v59;
  sub_1000055FC(v49, v59, &qword_1000ACE38, &qword_100086000);
  v51 = v50 + *(sub_100002840(&qword_1000ADEA0, &qword_100087EB0) + 48);
  *v51 = 0;
  *(v51 + 8) = 0;
  sub_100005B2C(v48, &qword_1000ACE38, &qword_100086000);
  return sub_100005B2C(v49, &qword_1000ACE38, &qword_100086000);
}

uint64_t sub_10002CEDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_100002840(&qword_1000ADE50, &qword_100087DF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_100002840(&qword_1000ADE40, &qword_100087DE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_100002840(&qword_1000ADE30, &qword_100087DE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  sub_100002840(&qword_1000ADBA0, &unk_100087C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A40;
  v16 = sub_100080BB8();
  *(inited + 32) = v16;
  v17 = sub_100080BD8();
  *(inited + 33) = v17;
  v18 = sub_100080BC8();
  sub_100080BC8();
  if (sub_100080BC8() != v16)
  {
    v18 = sub_100080BC8();
  }

  sub_100080BC8();
  if (sub_100080BC8() != v17)
  {
    v18 = sub_100080BC8();
  }

  *v6 = v18;
  v19 = sub_100002840(&qword_1000ADE68, &qword_100087E08);
  sub_10002D2C0(a1, &v6[*(v19 + 44)]);
  v20 = type metadata accessor for SmallReadingGoalView(0);
  v21 = a1 + *(v20 + 24);
  sub_1000807F8();
  sub_100080F58();
  sub_1000807E8();
  sub_10000C1E0(v6, v10, &qword_1000ADE50, &qword_100087DF0);
  v22 = &v10[*(v7 + 36)];
  v23 = v39;
  *v22 = v38;
  *(v22 + 1) = v23;
  *(v22 + 2) = v40;
  v24 = a1 + *(v20 + 20);
  v25 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v26 = *&v24[*(v25 + 28)];
  v27 = *&v24[*(v25 + 32)];
  sub_100080F48();
  if (v26 > v27)
  {
    sub_100081458();
    v28 = sub_100080BA8();
    sub_100080618();
  }

  sub_1000808F8();
  sub_10000C1E0(v10, v14, &qword_1000ADE40, &qword_100087DE8);
  v29 = &v14[*(v11 + 36)];
  v30 = v44;
  v31 = v46;
  v32 = v47;
  *(v29 + 4) = v45;
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
  v33 = v42;
  *v29 = v41;
  *(v29 + 1) = v33;
  *(v29 + 2) = v43;
  *(v29 + 3) = v30;
  v34 = v37;
  sub_10000C1E0(v14, v37, &qword_1000ADE30, &qword_100087DE0);
  result = sub_100002840(&qword_1000ADE18, &qword_100087DD8);
  *(v34 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10002D2C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_100002840(&qword_1000ADE70, &qword_100087E10);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v56 = &v50 - v9;
  v10 = __chkstk_darwin(v8);
  v61 = &v50 - v11;
  v12 = __chkstk_darwin(v10);
  v55 = &v50 - v13;
  v14 = __chkstk_darwin(v12);
  v54 = &v50 - v15;
  v16 = __chkstk_darwin(v14);
  v60 = &v50 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v50 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v50 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v50 - v31;
  __chkstk_darwin(v30);
  v34 = &v50 - v33;
  *v34 = sub_100080A28();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v59 = v34;
  v35 = sub_100002840(&qword_1000ADE78, &qword_100087E18);
  sub_10002D80C(a1, 0, &v34[*(v35 + 44)]);
  *&v34[*(v4 + 44)] = 257;
  *v32 = sub_100080A28();
  *(v32 + 1) = 0;
  v32[16] = 0;
  sub_10002DC2C(a1, 0, &v32[*(v35 + 44)]);
  *&v32[*(v4 + 44)] = 257;
  v53 = v32;
  *v29 = sub_100080A28();
  *(v29 + 1) = 0;
  v29[16] = 0;
  sub_10002D80C(a1, 1, &v29[*(v35 + 44)]);
  *&v29[*(v4 + 44)] = 257;
  v52 = v29;
  *v26 = sub_100080A28();
  *(v26 + 1) = 0;
  v26[16] = 0;
  sub_10002DC2C(a1, 1, &v26[*(v35 + 44)]);
  *&v26[*(v4 + 44)] = 257;
  v51 = v26;
  v36 = v23;
  *v23 = sub_100080A28();
  *(v23 + 1) = 0;
  v23[16] = 0;
  sub_10002D80C(a1, 1, &v23[*(v35 + 44)]);
  *&v23[*(v4 + 44)] = 257;
  v50 = v23;
  *v20 = sub_100080A28();
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_10002DC2C(a1, 1, &v20[*(v35 + 44)]);
  *&v20[*(v4 + 44)] = 257;
  v37 = v60;
  sub_1000055FC(v59, v60, &qword_1000ADE70, &qword_100087E10);
  v38 = v32;
  v39 = v54;
  sub_1000055FC(v38, v54, &qword_1000ADE70, &qword_100087E10);
  v40 = v29;
  v41 = v55;
  sub_1000055FC(v40, v55, &qword_1000ADE70, &qword_100087E10);
  v42 = v26;
  v43 = v61;
  sub_1000055FC(v42, v61, &qword_1000ADE70, &qword_100087E10);
  v44 = v56;
  sub_1000055FC(v36, v56, &qword_1000ADE70, &qword_100087E10);
  v45 = v57;
  sub_1000055FC(v20, v57, &qword_1000ADE70, &qword_100087E10);
  v46 = v37;
  v47 = v58;
  sub_1000055FC(v46, v58, &qword_1000ADE70, &qword_100087E10);
  v48 = sub_100002840(&qword_1000ADE80, &unk_100087E20);
  sub_1000055FC(v39, v47 + v48[12], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v41, v47 + v48[16], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v43, v47 + v48[20], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v44, v47 + v48[24], &qword_1000ADE70, &qword_100087E10);
  sub_1000055FC(v45, v47 + v48[28], &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v20, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v50, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v51, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v52, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v53, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v59, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v45, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v44, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v61, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v41, &qword_1000ADE70, &qword_100087E10);
  sub_100005B2C(v39, &qword_1000ADE70, &qword_100087E10);
  return sub_100005B2C(v60, &qword_1000ADE70, &qword_100087E10);
}

uint64_t sub_10002D80C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v59 = a3;
  v4 = sub_100002840(&qword_1000ADE88, &qword_100087F80);
  v5 = *(v4 - 8);
  v57 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v58 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v54[-v9];
  v11 = sub_100002840(&qword_1000ADE90, &qword_100087E30);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v56 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v54[-v16];
  v18 = *a1;
  v19 = a1 + *(type metadata accessor for SmallReadingGoalView(0) + 20);
  v20 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v21 = *(v19 + v20[11]);
  v22 = *(v19 + v20[12]);
  v23 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v24 = v23[7];
  v25 = sub_100080F68();
  (*(*(v25 - 8) + 16))(&v17[v24], v19, v25);
  v26 = *(v19 + v20[13]);
  v27 = *(v19 + v20[14]);
  sub_10002E35C(v19 + v20[9], &v17[v23[10]]);
  *v17 = v18;
  *(v17 + 1) = v21;
  *(v17 + 2) = v22;
  *&v17[v23[8]] = v26;
  *&v17[v23[9]] = v27;
  v17[v23[11]] = v55;

  LOBYTE(v22) = sub_100080C38();
  v28 = *(v19 + v20[6]);
  sub_100080798();
  v29 = &v17[*(v12 + 44)];
  *v29 = v22;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = *(a1 + 7);
  v66 = *(a1 + 6);
  v67 = v34;
  v68 = a1[16];
  v35 = *(a1 + 3);
  v62 = *(a1 + 2);
  v63 = v35;
  v36 = *(a1 + 5);
  v64 = *(a1 + 4);
  v65 = v36;
  v37 = *(a1 + 1);
  v60 = *a1;
  v61 = v37;
  v38 = sub_1000575D8();
  v40 = v39;
  v41 = *(v19 + v20[10]);

  v42 = sub_100080B08();
  *v10 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for LabelView();
  v44 = (v10 + v43[5]);
  *v44 = v38;
  v44[1] = v40;
  *(v10 + v43[6]) = v41;
  v45 = v10 + v43[7];
  *v45 = v42;
  *(v45 + 1) = 0;
  *(v45 + 8) = 1;
  v46 = *(v19 + v20[5]);
  KeyPath = swift_getKeyPath();
  v48 = v10 + *(v57 + 44);
  *v48 = KeyPath;
  *(v48 + 1) = v46;
  v48[16] = 0;
  v49 = v56;
  sub_1000055FC(v17, v56, &qword_1000ADE90, &qword_100087E30);
  v50 = v58;
  sub_1000055FC(v10, v58, &qword_1000ADE88, &qword_100087F80);
  v51 = v59;
  sub_1000055FC(v49, v59, &qword_1000ADE90, &qword_100087E30);
  v52 = sub_100002840(&qword_1000ADE98, &unk_100087EA0);
  sub_1000055FC(v50, v51 + *(v52 + 48), &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v10, &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v17, &qword_1000ADE90, &qword_100087E30);
  sub_100005B2C(v50, &qword_1000ADE88, &qword_100087F80);
  return sub_100005B2C(v49, &qword_1000ADE90, &qword_100087E30);
}

uint64_t sub_10002DC2C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v59 = a3;
  v4 = sub_100002840(&qword_1000ADE88, &qword_100087F80);
  v5 = *(v4 - 8);
  v57 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v58 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v54[-v9];
  v11 = sub_100002840(&qword_1000ADE90, &qword_100087E30);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v56 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v54[-v16];
  v18 = *a1;
  v19 = a1 + *(type metadata accessor for SmallReadingGoalView(0) + 20);
  v20 = type metadata accessor for SmallReadingGoalView.ViewConfiguration(0);
  v21 = *(v19 + v20[11]);
  v22 = *(v19 + v20[12]);
  v23 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v24 = v23[7];
  v25 = sub_100080F68();
  (*(*(v25 - 8) + 16))(&v17[v24], v19, v25);
  v26 = *(v19 + v20[13]);
  v27 = *(v19 + v20[14]);
  sub_10002E35C(v19 + v20[9], &v17[v23[10]]);
  *v17 = v18;
  *(v17 + 1) = v21;
  *(v17 + 2) = v22;
  *&v17[v23[8]] = v26;
  *&v17[v23[9]] = v27;
  v17[v23[11]] = v55;

  LOBYTE(v22) = sub_100080C38();
  v28 = *(v19 + v20[6]) + -2.0;
  sub_100080798();
  v29 = &v17[*(v12 + 44)];
  *v29 = v22;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v34 = *(a1 + 7);
  v66 = *(a1 + 6);
  v67 = v34;
  v68 = a1[16];
  v35 = *(a1 + 3);
  v62 = *(a1 + 2);
  v63 = v35;
  v36 = *(a1 + 5);
  v64 = *(a1 + 4);
  v65 = v36;
  v37 = *(a1 + 1);
  v60 = *a1;
  v61 = v37;
  v38 = sub_1000575D8();
  v40 = v39;
  v41 = *(v19 + v20[10]);

  v42 = sub_100080B08();
  *v10 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for LabelView();
  v44 = (v10 + v43[5]);
  *v44 = v38;
  v44[1] = v40;
  *(v10 + v43[6]) = v41;
  v45 = v10 + v43[7];
  *v45 = v42;
  *(v45 + 1) = 0;
  *(v45 + 8) = 1;
  v46 = *(v19 + v20[5]);
  KeyPath = swift_getKeyPath();
  v48 = v10 + *(v57 + 44);
  *v48 = KeyPath;
  *(v48 + 1) = v46;
  v48[16] = 0;
  v49 = v56;
  sub_1000055FC(v17, v56, &qword_1000ADE90, &qword_100087E30);
  v50 = v58;
  sub_1000055FC(v10, v58, &qword_1000ADE88, &qword_100087F80);
  v51 = v59;
  sub_1000055FC(v49, v59, &qword_1000ADE90, &qword_100087E30);
  v52 = sub_100002840(&qword_1000ADE98, &unk_100087EA0);
  sub_1000055FC(v50, v51 + *(v52 + 48), &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v10, &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v17, &qword_1000ADE90, &qword_100087E30);
  sub_100005B2C(v50, &qword_1000ADE88, &qword_100087F80);
  return sub_100005B2C(v49, &qword_1000ADE90, &qword_100087E30);
}

uint64_t sub_10002E054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100080A78();
  v6 = v2 + *(a1 + 20);
  v7 = *(v6 + *(type metadata accessor for SmallReadingGoalView.ViewConfiguration(0) + 68));
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v8 = sub_100002840(&qword_1000ADDB8, &qword_100087D88);
  return sub_10002C27C(v2, (a2 + *(v8 + 44)));
}

unint64_t sub_10002E0CC()
{
  result = qword_1000ADE08;
  if (!qword_1000ADE08)
  {
    sub_100004FC8(&qword_1000ADDE0, &qword_100087DB0);
    sub_100005C98(&qword_1000ADE10, &qword_1000ADDD8, &qword_100087DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE08);
  }

  return result;
}

unint64_t sub_10002E18C()
{
  result = qword_1000ADE20;
  if (!qword_1000ADE20)
  {
    sub_100004FC8(&qword_1000ADE18, &qword_100087DD8);
    sub_10002E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE20);
  }

  return result;
}

unint64_t sub_10002E218()
{
  result = qword_1000ADE28;
  if (!qword_1000ADE28)
  {
    sub_100004FC8(&qword_1000ADE30, &qword_100087DE0);
    sub_10002E2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE28);
  }

  return result;
}

unint64_t sub_10002E2A4()
{
  result = qword_1000ADE38;
  if (!qword_1000ADE38)
  {
    sub_100004FC8(&qword_1000ADE40, &qword_100087DE8);
    sub_100005C98(&qword_1000ADE48, &qword_1000ADE50, &qword_100087DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE38);
  }

  return result;
}

uint64_t sub_10002E35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircularProgressView.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E3C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000809C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E3FC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000809C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E430(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000809D8();
}

uint64_t sub_10002E460(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1000809D8();
}

uint64_t sub_10002E4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080F68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for CircularProgressView.Content(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 80);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002E624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100080F68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for CircularProgressView.Content(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 80);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10002E76C()
{
  result = sub_100080F68();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CircularProgressView.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002E914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002E9D8()
{
  result = type metadata accessor for MediumReadingGoalView.ViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002EA70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v3 = sub_100002840(&qword_1000AE020, &qword_100087F60);
  v172 = *(v3 - 8);
  v173 = v3;
  v4 = *(v172 + 64);
  __chkstk_darwin(v3);
  v164 = &v153 - v5;
  v6 = sub_100002840(&qword_1000AE028, &qword_100087F68);
  v162 = *(v6 - 8);
  v163 = v6;
  v7 = *(v162 + 64);
  v8 = __chkstk_darwin(v6);
  v161 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v177 = &v153 - v10;
  v179 = type metadata accessor for LabelView();
  v11 = *(*(v179 - 8) + 64);
  __chkstk_darwin(v179);
  v157 = (&v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = sub_100002840(&qword_1000AE030, &qword_100087F70);
  v13 = *(*(v159 - 8) + 64);
  v14 = __chkstk_darwin(v159);
  v176 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v158 = &v153 - v17;
  __chkstk_darwin(v16);
  v175 = &v153 - v18;
  v19 = sub_100002840(&qword_1000AE038, &qword_100087F78);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v171 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v170 = &v153 - v23;
  v178 = sub_100002840(&qword_1000ADE88, &qword_100087F80);
  v24 = *(*(v178 - 8) + 64);
  v25 = __chkstk_darwin(v178);
  v160 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v169 = (&v153 - v28);
  __chkstk_darwin(v27);
  v180 = (&v153 - v29);
  v167 = type metadata accessor for ReadingProgressIconView(0);
  v30 = *(*(v167 - 1) + 64);
  __chkstk_darwin(v167);
  v32 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100002840(&qword_1000AE040, &qword_100087F88);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  v36 = __chkstk_darwin(v33);
  v168 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v153 - v38;
  v166 = a1;
  v40 = *a1;
  v41 = a1 + *(type metadata accessor for MediumReadingGoalView(0) + 20);
  v42 = type metadata accessor for MediumReadingGoalView.ViewConfiguration(0);
  v43 = *&v41[v42[15]];
  v44 = *&v41[v42[16]];
  v45 = type metadata accessor for ReadingProgressIconView.ViewConfiguration(0);
  v46 = v45[7];
  v47 = sub_100080F68();
  (*(*(v47 - 8) + 16))(&v32[v46], v41, v47);
  v48 = *&v41[v42[17]];
  v49 = *&v41[v42[18]];
  sub_10002E35C(&v41[v42[20]], &v32[v45[10]]);
  *v32 = v40;
  *(v32 + 1) = v43;
  *(v32 + 2) = v44;
  *&v32[v45[8]] = v48;
  *&v32[v45[9]] = v49;
  v32[v45[11]] = 0;
  sub_10002F784();

  sub_100080D48();
  sub_10002F7DC(v32);
  LOBYTE(v32) = sub_100080C38();
  v50 = *&v41[v42[7]];
  sub_100080798();
  v51 = *(v34 + 44);
  v167 = v39;
  v52 = &v39[v51];
  *v52 = v32;
  *(v52 + 1) = v53;
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  *(v52 + 4) = v56;
  v52[40] = 0;
  v57 = v166;
  v58 = v166[1];
  v194 = *v166;
  v195 = v58;
  v59 = v166[3];
  v196 = v166[2];
  v197 = v59;
  v165 = sub_10005790C();
  v61 = v60;
  v62 = *&v41[v42[14]];

  v63 = sub_100080B08();
  v64 = *&v41[v42[21]];
  v65 = v63;
  KeyPath = swift_getKeyPath();
  v67 = v180;
  *v180 = KeyPath;
  v68 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v69 = v179;
  v70 = v67;
  v71 = v62;
  v72 = (v70 + *(v179 + 20));
  *v72 = v165;
  v72[1] = v61;
  v73 = v69;
  *(v70 + v69[6]) = v62;
  v74 = v70 + v69[7];
  v75 = v70;
  *v74 = v65;
  *(v74 + 1) = v64;
  *(v74 + 8) = 0;
  v76 = v42;
  v77 = v42[6];
  v78 = v41;
  v79 = *&v41[v77];
  v80 = swift_getKeyPath();
  v81 = v75 + *(v178 + 36);
  *v81 = v80;
  *(v81 + 8) = v79;
  *(v81 + 16) = 0;
  v82 = v57[1];
  v190 = *v57;
  v191 = v82;
  v83 = v57[3];
  v192 = v57[2];
  v193 = v83;
  v84 = sub_100025984();
  if (v85)
  {
    v154 = v85;
    v155 = v84;
    v166 = v79;
    v86 = swift_getKeyPath();
    v87 = v157;
    *v157 = v86;
    v165 = v68;
    swift_storeEnumTagMultiPayload();
    *(v87 + v73[5]) = xmmword_100087EC0;
    *(v87 + v73[6]) = v71;
    v88 = v87 + v73[7];
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 16) = 256;
    sub_100002840(&qword_1000AD950, &qword_1000879D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A40;
    swift_retain_n();
    v90 = sub_100080C18();
    *(inited + 32) = v90;
    v91 = sub_100080C38();
    *(inited + 33) = v91;
    v92 = sub_100080C28();
    sub_100080C28();
    if (sub_100080C28() != v90)
    {
      v92 = sub_100080C28();
    }

    sub_100080C28();
    v93 = sub_100080C28();
    v156 = v71;
    if (v93 != v91)
    {
      v92 = sub_100080C28();
    }

    v94 = v76;
    v95 = *&v78[v76[13]];
    sub_100080798();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = v158;
    sub_10002F848(v87, v158);
    v105 = v104 + *(v159 + 36);
    *v105 = v92;
    *(v105 + 8) = v97;
    *(v105 + 16) = v99;
    *(v105 + 24) = v101;
    *(v105 + 32) = v103;
    *(v105 + 40) = 0;
    v106 = v175;
    sub_10002F8AC(v104, v175);
    v107 = &v78[v76[8]];
    v108 = *v107;
    v109 = *(v107 + 1);

    v110 = sub_100080E88();
    v111 = *&v78[v76[9]];
    v112 = swift_getKeyPath();
    v113 = v76[11];
    v114 = *&v78[v76[10]];
    v115 = *&v78[v113];

    v116 = sub_100080CA8();
    v117 = swift_getKeyPath();
    v118 = sub_100080C38();
    v119 = *&v78[v94[12]];
    sub_100080798();
    v187 = 0;
    *&v181 = v110;
    *(&v181 + 1) = v112;
    *&v182 = v111;
    *(&v182 + 1) = v117;
    *&v183 = v116;
    BYTE8(v183) = v118;
    *&v184 = v120;
    *(&v184 + 1) = v121;
    *&v185 = v122;
    *(&v185 + 1) = v123;
    v186 = 0;
    sub_100002840(&qword_1000AE058, &qword_100088068);
    sub_10002F92C();
    v124 = v177;
    sub_100080D48();
    v188[2] = v183;
    v188[3] = v184;
    v188[4] = v185;
    v189 = v186;
    v188[0] = v181;
    v188[1] = v182;
    sub_100005B2C(v188, &qword_1000AE058, &qword_100088068);
    v125 = swift_getKeyPath();
    v126 = v169;
    *v169 = v125;
    swift_storeEnumTagMultiPayload();
    v127 = v179;
    v128 = (v126 + *(v179 + 20));
    v129 = v154;
    *v128 = v155;
    v128[1] = v129;
    *(v126 + *(v127 + 24)) = v156;
    v130 = v126 + *(v127 + 28);
    *v130 = 0;
    *(v130 + 8) = 0;
    *(v130 + 16) = 256;
    v131 = swift_getKeyPath();
    v132 = v126 + *(v178 + 36);
    v133 = v166;
    *v132 = v131;
    *(v132 + 8) = v133;
    *(v132 + 16) = 0;
    v134 = v176;
    sub_1000055FC(v106, v176, &qword_1000AE030, &qword_100087F70);
    v136 = v161;
    v135 = v162;
    v137 = *(v162 + 16);
    v138 = v163;
    v137(v161, v124, v163);
    v139 = v160;
    sub_1000055FC(v126, v160, &qword_1000ADE88, &qword_100087F80);
    v140 = v164;
    sub_1000055FC(v134, v164, &qword_1000AE030, &qword_100087F70);
    v141 = sub_100002840(&qword_1000AE078, &qword_100088090);
    v137((v140 + *(v141 + 48)), v136, v138);
    sub_1000055FC(v139, v140 + *(v141 + 64), &qword_1000ADE88, &qword_100087F80);
    sub_100005B2C(v126, &qword_1000ADE88, &qword_100087F80);
    v142 = *(v135 + 8);
    v142(v177, v138);
    sub_100005B2C(v175, &qword_1000AE030, &qword_100087F70);
    sub_100005B2C(v139, &qword_1000ADE88, &qword_100087F80);
    v142(v136, v138);
    sub_100005B2C(v176, &qword_1000AE030, &qword_100087F70);
    v143 = v170;
    sub_10002FA70(v140, v170);
    (*(v172 + 56))(v143, 0, 1, v173);
  }

  else
  {
    v143 = v170;
    (*(v172 + 56))(v170, 1, 1, v173);
    v126 = v169;
  }

  v144 = v167;
  v145 = v168;
  sub_1000055FC(v167, v168, &qword_1000AE040, &qword_100087F88);
  v146 = v180;
  sub_1000055FC(v180, v126, &qword_1000ADE88, &qword_100087F80);
  v147 = v171;
  sub_1000055FC(v143, v171, &qword_1000AE038, &qword_100087F78);
  v148 = v174;
  sub_1000055FC(v145, v174, &qword_1000AE040, &qword_100087F88);
  v149 = v143;
  v150 = sub_100002840(&qword_1000AE050, &unk_100087FF8);
  sub_1000055FC(v126, v148 + v150[12], &qword_1000ADE88, &qword_100087F80);
  sub_1000055FC(v147, v148 + v150[16], &qword_1000AE038, &qword_100087F78);
  v151 = v148 + v150[20];
  *v151 = 0;
  *(v151 + 8) = 1;
  sub_100005B2C(v149, &qword_1000AE038, &qword_100087F78);
  sub_100005B2C(v146, &qword_1000ADE88, &qword_100087F80);
  sub_100005B2C(v144, &qword_1000AE040, &qword_100087F88);
  sub_100005B2C(v147, &qword_1000AE038, &qword_100087F78);
  sub_100005B2C(v126, &qword_1000ADE88, &qword_100087F80);
  return sub_100005B2C(v145, &qword_1000AE040, &qword_100087F88);
}

uint64_t sub_10002F734@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100080A28();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100002840(&qword_1000AE018, &qword_100087F58);
  return sub_10002EA70(v1, a1 + *(v3 + 44));
}

unint64_t sub_10002F784()
{
  result = qword_1000AE048;
  if (!qword_1000AE048)
  {
    type metadata accessor for ReadingProgressIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE048);
  }

  return result;
}

uint64_t sub_10002F7DC(uint64_t a1)
{
  v2 = type metadata accessor for ReadingProgressIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE030, &qword_100087F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002F92C()
{
  result = qword_1000AE060;
  if (!qword_1000AE060)
  {
    sub_100004FC8(&qword_1000AE058, &qword_100088068);
    sub_10002F9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE060);
  }

  return result;
}

unint64_t sub_10002F9B8()
{
  result = qword_1000AE068;
  if (!qword_1000AE068)
  {
    sub_100004FC8(&qword_1000AE070, &unk_100088070);
    sub_100024650();
    sub_100005C98(&qword_1000AD0A0, &qword_1000AD0A8, &qword_1000862D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE068);
  }

  return result;
}

uint64_t sub_10002FA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE020, &qword_100087F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10002FB24(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_10002FB68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002FBB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002FC58@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v23 = sub_100080B68();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002840(&qword_1000AE090, &qword_100088168);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v24 = sub_100002840(&qword_1000AE098, &qword_100088170);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v24);
  v13 = &v22 - v12;
  v14 = *(v1 + 224);
  *v9 = sub_100080A28();
  *(v9 + 1) = v14;
  v9[16] = 0;
  v15 = sub_100002840(&qword_1000AE0A0, &qword_100088178);
  sub_10002FFA8(v1, &v9[*(v15 + 44)]);
  v16 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v16;
  v34 = *(v1 + 144);
  v35 = *(v1 + 160);
  v17 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v17;
  v41 = v35;
  v38 = v32;
  v39 = v16;
  v40 = v34;
  v36 = v30;
  v37 = v17;
  if (sub_1000112D4())
  {
    sub_100080B58();
  }

  else
  {
    sub_100080B48();
  }

  v18 = sub_100005C98(&qword_1000AE0A8, &qword_1000AE090, &qword_100088168);
  sub_100080E08();
  (*(v2 + 8))(v5, v23);
  sub_100005B2C(v9, &qword_1000AE090, &qword_100088168);
  v28 = sub_100056778(0);
  v29 = v19;
  v26 = v6;
  v27 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1000057D0();
  v20 = v24;
  sub_100080DD8();

  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_10002FFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_100002840(&qword_1000AE0B0, &qword_100088180);
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v92 = &v81 - v5;
  v6 = sub_100002840(&qword_1000AE0B8, &qword_100088188);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v85 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v81 - v10;
  v87 = sub_100080308();
  v11 = *(v87 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v87);
  v90 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v81 - v15;
  v17 = type metadata accessor for BookCoverView();
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100002840(&qword_1000AD168, &qword_100088190);
  v21 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v23 = &v81 - v22;
  v89 = sub_100002840(&qword_1000AE0C0, &qword_100088198);
  v24 = *(*(v89 - 8) + 64);
  v25 = __chkstk_darwin(v89);
  v81 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v81 - v28;
  __chkstk_darwin(v27);
  v91 = &v81 - v30;
  v31 = *(a1 + 48);
  v107[3] = *(a1 + 32);
  v107[4] = v31;
  v32 = *(a1 + 80);
  v108 = *(a1 + 64);
  v33 = *(a1 + 16);
  v107[1] = *a1;
  v107[2] = v33;
  v34 = *(a1 + 128);
  v35 = *(a1 + 144);
  v36 = *(a1 + 96);
  v97 = *(a1 + 112);
  v98 = v34;
  v99 = v35;
  v100 = *(a1 + 160);
  v95 = v32;
  v96 = v36;
  sub_10000C328(&v95, v94);
  sub_100025138(&v95, v16);
  v103 = v97;
  v104 = v98;
  v105 = v99;
  v106 = v100;
  v101 = v95;
  v102 = v96;
  v37 = sub_1000112D4();
  if (*(&v108 + 1))
  {
    if (v108 == v103)
    {
      v38 = 1;
    }

    else
    {
      v38 = sub_100081618();
    }
  }

  else
  {
    v38 = 0;
  }

  *v20 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(v20 + v17[5], v16, v87);
  *(v20 + v17[6]) = v37 & 1;
  v39 = v20 + v17[7];
  v40 = v98;
  *(v39 + 32) = v97;
  *(v39 + 48) = v40;
  *(v39 + 64) = v99;
  *(v39 + 80) = v100;
  v41 = v96;
  *v39 = v95;
  *(v39 + 16) = v41;
  *(v20 + v17[8]) = v38 & 1;
  *(v20 + v17[9]) = 0;
  v42 = *(a1 + 168);
  sub_100080F58();
LABEL_7:
  sub_1000808F8();
  sub_10000C384(v20, v23);
  v43 = (v23 + *(v88 + 36));
  v44 = v94[5];
  v43[4] = v94[4];
  v43[5] = v44;
  v43[6] = v94[6];
  v45 = v94[1];
  *v43 = v94[0];
  v43[1] = v45;
  v46 = v94[3];
  v43[2] = v94[2];
  v43[3] = v46;
  sub_10000C1E0(v23, v29, &qword_1000AD168, &qword_100088190);
  *&v29[*(v89 + 36)] = 1;
  sub_10000C1E0(v29, v91, &qword_1000AE0C0, &qword_100088198);
  v47 = sub_100025138(&v95, v90);
  __chkstk_darwin(v47);
  v20 = sub_100002840(&qword_1000AE0C8, &qword_1000881D8);
  sub_100005C98(&qword_1000AE0D0, &qword_1000AE0C8, &qword_1000881D8);
  sub_100080CE8();
  sub_100002840(&qword_1000AE0D8, &unk_1000881E0);
  v48 = swift_allocObject();
  v107[0] = v101;
  *(v48 + 32) = v101;
  sub_1000055FC(v107, v93, &qword_1000ACE48, &unk_100086040);
  v23 = 0;
  *(v48 + 48) = sub_100056928(0);
  *(v48 + 56) = v49;
  v50 = _swiftEmptyArrayStorage;
LABEL_8:
  v51 = (v48 + 40 + 16 * v23);
  while (++v23 != 3)
  {
    v52 = v51 + 2;
    v53 = *v51;
    v51 += 2;
    if (v53)
    {
      v54 = *(v52 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_10003EE4C(0, *(v50 + 2) + 1, 1, v50);
      }

      v56 = *(v50 + 2);
      v55 = *(v50 + 3);
      v20 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        v50 = sub_10003EE4C((v55 > 1), v56 + 1, 1, v50);
      }

      *(v50 + 2) = v20;
      v57 = &v50[16 * v56];
      *(v57 + 4) = v54;
      *(v57 + 5) = v53;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_100002840(&qword_1000ACE48, &unk_100086040);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v58 = 0;
  v29 = *(v50 + 2);
  v59 = _swiftEmptyArrayStorage;
LABEL_17:
  v60 = &v50[16 * v58 + 40];
  while (v29 != v58)
  {
    if (v58 >= *(v50 + 2))
    {
      __break(1u);
      sub_100081458();
      v80 = sub_100080BA8();
      sub_100080618();

      goto LABEL_7;
    }

    ++v58;
    v61 = *(v60 - 1);
    v20 = *v60;
    v60 += 2;
    v62 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v62 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93[0] = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100061B34(0, v59[2] + 1, 1);
        v59 = v93[0];
      }

      v65 = v59[2];
      v64 = v59[3];
      v23 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        sub_100061B34((v64 > 1), v65 + 1, 1);
        v59 = v93[0];
      }

      v59[2] = v23;
      v66 = &v59[2 * v65];
      v66[4] = v61;
      v66[5] = v20;
      goto LABEL_17;
    }
  }

  v93[0] = v59;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
  v67 = sub_100081128();
  v69 = v68;

  v93[0] = v67;
  v93[1] = v69;
  sub_100005C98(&qword_1000AE0E0, &qword_1000AE0B0, &qword_100088180);
  sub_1000057D0();
  v70 = v83;
  v71 = v84;
  v72 = v92;
  sub_100080DD8();

  (*(v82 + 8))(v72, v70);
  v73 = v91;
  v74 = v81;
  sub_1000055FC(v91, v81, &qword_1000AE0C0, &qword_100088198);
  v75 = v85;
  sub_1000055FC(v71, v85, &qword_1000AE0B8, &qword_100088188);
  v76 = v86;
  sub_1000055FC(v74, v86, &qword_1000AE0C0, &qword_100088198);
  v77 = sub_100002840(&qword_1000AE0E8, &qword_1000881F8);
  sub_1000055FC(v75, v76 + *(v77 + 48), &qword_1000AE0B8, &qword_100088188);
  v78 = v76 + *(v77 + 64);
  sub_100005B2C(v71, &qword_1000AE0B8, &qword_100088188);
  sub_100005B2C(v73, &qword_1000AE0C0, &qword_100088198);
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_100005B2C(v75, &qword_1000AE0B8, &qword_100088188);
  return sub_100005B2C(v74, &qword_1000AE0C0, &qword_100088198);
}

uint64_t sub_100030A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100080A78();
  v5 = *(a1 + 216);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = sub_100002840(&qword_1000AE0F0, &qword_100088200);
  return sub_100030A6C(a1, a2 + *(v6 + 44));
}

uint64_t sub_100030A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LabelView();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v32 - v10);
  v12 = *(a1 + 128);
  v42 = *(a1 + 112);
  v43 = v12;
  v44 = *(a1 + 144);
  v45 = *(a1 + 160);
  v13 = *(a1 + 96);
  v40 = *(a1 + 80);
  v41 = v13;
  v51 = v45;
  v48 = v42;
  v49 = v12;
  v50 = v44;
  v46 = v40;
  v47 = v13;
  v14 = *(&v40 + 1);
  v36 = v40;

  v15 = sub_1000112D4();
  v16 = 200;
  if (v15)
  {
    v16 = 208;
  }

  v35 = *(a1 + v16);
  KeyPath = swift_getKeyPath();
  v18 = sub_100056928(0);
  v33 = v19;
  v34 = v18;
  v20 = *(a1 + 184);
  v21 = *(a1 + 216);
  v38[2] = *(a1 + 200);
  v38[3] = v21;
  v39 = *(a1 + 232);
  v38[0] = *(a1 + 168);
  v38[1] = v20;
  v22 = *(&v20 + 1);
  sub_100030D34(v38, &v37);
  v23 = sub_100080B28();
  v24 = *(&v38[0] + 1);
  v25 = v23;
  *v11 = swift_getKeyPath();
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  swift_storeEnumTagMultiPayload();
  v26 = (v11 + v5[7]);
  v27 = v33;
  *v26 = v34;
  v26[1] = v27;
  *(v11 + v5[8]) = v22;
  v28 = v11 + v5[9];
  *v28 = v25;
  *(v28 + 1) = v24;
  *(v28 + 8) = 0;
  sub_100030D6C(v11, v9);
  v29 = v35;
  *a2 = v36;
  *(a2 + 8) = v14;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = v29;
  *(a2 + 32) = 0;
  v30 = sub_100002840(&qword_1000AE0F8, &qword_100088238);
  sub_100030D6C(v9, a2 + *(v30 + 48));

  sub_100030DD0(v11);
  sub_100030DD0(v9);
}

uint64_t sub_100030CB0@<X0>(uint64_t a1@<X8>)
{
  v15 = v1[12];
  v16 = v1[13];
  v17 = v1[14];
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10002FC58(a1);
}

uint64_t sub_100030D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030DD0(uint64_t a1)
{
  v2 = type metadata accessor for LabelView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100030E2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100030E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100030E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100030EFC()
{
  result = qword_1000AE100;
  if (!qword_1000AE100)
  {
    sub_100004FC8(&qword_1000AE108, &qword_100088278);
    sub_100004FC8(&qword_1000AE090, &qword_100088168);
    sub_100005C98(&qword_1000AE0A8, &qword_1000AE090, &qword_100088168);
    swift_getOpaqueTypeConformance2();
    sub_1000249A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE100);
  }

  return result;
}

uint64_t sub_10003100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
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

uint64_t sub_100031098(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100031144()
{
  sub_10003119C(319);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10003119C(uint64_t a1)
{
  if (!qword_1000AE190)
  {
    __chkstk_darwin(a1);
    type metadata accessor for CircularProgressView.ColorStyle(255);
    sub_100080CD8();
    sub_100080C58();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1000AE190);
    }
  }
}

uint64_t sub_100031320(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002840(&qword_1000AE1B8, &unk_1000882C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for CircularProgressView.Content(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[9]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100080F68();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100031508(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002840(&qword_1000AE1B8, &unk_1000882C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for CircularProgressView.Content(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
  }

  else
  {
    v17 = sub_100080F68();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_1000316FC()
{
  sub_100031808(319, &unk_1000AE228, &type metadata accessor for LayoutDirection);
  if (v0 <= 0x3F)
  {
    sub_100031808(319, &qword_1000AD788, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CircularProgressView.Content(319);
      if (v2 <= 0x3F)
      {
        sub_100080F68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100031808(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000807C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000318AC()
{
  sub_100031920();
  if (v0 <= 0x3F)
  {
    sub_10003199C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100031920()
{
  if (!qword_1000AE300)
  {
    sub_100080F68();
    sub_1000807B8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000AE300);
    }
  }
}

void *sub_10003199C()
{
  result = qword_1000AE308;
  if (!qword_1000AE308)
  {
    result = &type metadata for Color;
    atomic_store(&type metadata for Color, &qword_1000AE308);
  }

  return result;
}

uint64_t sub_1000319E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000809F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AE400, &qword_100088410);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000055FC(v2, &v17 - v11, &qword_1000AE400, &qword_100088410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100080868();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100031BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000809F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CircularProgressView(0);
  sub_1000055FC(v1 + *(v12 + 20), v11, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100031DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v241 = a4;
  v242 = a3;
  v244 = a2;
  v239 = sub_100002840(&qword_1000AE348, &qword_100088350);
  v6 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v240 = &v191 - v7;
  v214 = sub_100002840(&qword_1000AE350, &qword_100088358);
  v8 = *(*(v214 - 8) + 64);
  __chkstk_darwin(v214);
  v215 = &v191 - v9;
  v10 = sub_100081008();
  v199 = *(v10 - 8);
  v200 = v10;
  v11 = *(v199 + 64);
  v12 = __chkstk_darwin(v10);
  v196 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v195 = &v191 - v14;
  v15 = sub_100002840(&qword_1000AE358, &qword_100088360);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v208 = &v191 - v17;
  v217 = sub_100002840(&qword_1000AE360, &qword_100088368);
  v211 = *(v217 - 8);
  v18 = *(v211 + 64);
  v19 = __chkstk_darwin(v217);
  v197 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v202 = &v191 - v21;
  v198 = sub_100002840(&qword_1000AE368, &qword_100088370);
  v22 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v203 = &v191 - v23;
  v212 = sub_100002840(&qword_1000AE370, &qword_100088378);
  v24 = *(*(v212 - 8) + 64);
  v25 = __chkstk_darwin(v212);
  v201 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v204 = &v191 - v27;
  v28 = sub_1000807B8();
  v209 = *(v28 - 8);
  v210 = v28;
  v29 = *(v209 + 64);
  __chkstk_darwin(v28);
  v216 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_100002840(&qword_1000AE378, &qword_100088380);
  v31 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v213 = &v191 - v32;
  v33 = sub_100080C58();
  v235 = *(v33 - 8);
  v236 = v33;
  v34 = *(v235 + 64);
  __chkstk_darwin(v33);
  v233 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_100080CD8();
  v231 = *(v234 - 8);
  v36 = *(v231 + 64);
  __chkstk_darwin(v234);
  v229 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for CircularProgressView.ColorStyle(0);
  v38 = *(*(v206 - 8) + 64);
  v39 = __chkstk_darwin(v206);
  v207 = &v191 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v226 = &v191 - v41;
  v42 = type metadata accessor for CircularProgressView.Content(0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v225 = &v191 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100002840(&qword_1000AE380, &qword_100088388);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  v237 = &v191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v232 = &v191 - v49;
  v50 = sub_100080868();
  v223 = *(v50 - 8);
  v224 = v50;
  v51 = *(v223 + 64);
  v52 = __chkstk_darwin(v50);
  v54 = &v191 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v222 = &v191 - v55;
  v230 = sub_100002840(&qword_1000AE388, &qword_100088390);
  v228 = *(v230 - 8);
  v56 = *(v228 + 64);
  v57 = __chkstk_darwin(v230);
  v227 = &v191 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v247 = &v191 - v59;
  v60 = sub_100002840(&qword_1000AE390, &qword_100088398);
  v61 = v60 - 8;
  v62 = *(*(v60 - 8) + 64);
  v63 = __chkstk_darwin(v60);
  v246 = &v191 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v66 = &v191 - v65;
  v67 = type metadata accessor for CircularProgressView(0);
  v68 = *(a2 + v67[12]);
  v69 = 0.0;
  sub_1000807D8();
  v70 = v269;
  v71 = v271;
  v72 = v272;
  v73 = v273;

  v74 = sub_100080F48();
  *&v257 = v70 * 0.5;
  *(&v257 + 1) = v70;
  *&v258 = v270;
  *(&v258 + 1) = v71;
  *&v259 = v72;
  *(&v259 + 1) = v73;
  *&v260 = a1;
  WORD4(v260) = 256;
  *&v261 = v74;
  *(&v261 + 1) = v75;
  sub_100002840(&qword_1000AE398, &qword_1000883A0);
  sub_100005C98(&qword_1000AE3A0, &qword_1000AE398, &qword_1000883A0);
  sub_100080D48();
  *&v274[4] = v259;
  *&v274[6] = v260;
  *&v274[8] = v261;
  *v274 = v257;
  *&v274[2] = v258;
  sub_100005B2C(v274, &qword_1000AE398, &qword_1000883A0);
  v76 = *(v61 + 44);
  v77 = sub_100080F68();
  v78 = *(v77 - 8);
  v79 = *(v78 + 16);
  v245 = v66;
  v205 = v77;
  v194 = v78 + 16;
  v192 = v78;
  v193 = v79;
  (v79)(&v66[v76], v242);
  v80 = v68 * 0.5;
  v243 = v67;
  v81 = v244;
  v82 = *(v244 + v67[6]);
  v221 = *(v244 + v67[9]);
  sub_1000807D8();

  v83 = sub_100080F48();
  v219 = v84;
  v220 = v83;
  v85 = v222;
  v86 = v81;
  sub_1000319E8(v222);
  v87 = enum case for LayoutDirection.leftToRight(_:);
  v89 = v223;
  v88 = v224;
  v218 = *(v223 + 104);
  v218(v54, enum case for LayoutDirection.leftToRight(_:), v224);
  LOBYTE(v76) = sub_100080858();
  v90 = *(v89 + 8);
  v90(v54, v88);
  v90(v85, v88);
  if (v76)
  {
    v91 = -1.57079633;
  }

  else
  {
    v91 = -4.71238898;
  }

  sub_100080F98();
  v93 = v92;
  v95 = v94;
  sub_1000319E8(v85);
  v218(v54, v87, v88);
  v96 = sub_100080858();
  v90(v54, v88);
  v97 = v225;
  v90(v85, v88);
  if ((v96 & 1) == 0)
  {
    v69 = 3.14159265;
  }

  sub_100080F98();
  v248 = *&v80;
  *&v249[0] = v82;
  *(v249 + 8) = *&v274[11];
  *(&v249[1] + 8) = *&v274[13];
  *(&v249[2] + 1) = v274[15];
  *&v250 = v221;
  WORD4(v250) = 256;
  *&v251 = v220;
  *(&v251 + 1) = v219;
  *&v252 = v91;
  *(&v252 + 1) = v93;
  *&v253 = v95;
  *(&v253 + 1) = v69;
  v254 = xmmword_1000882A0;
  *&v255 = 0;
  *(&v255 + 1) = v98;
  *v256 = v99;
  *&v256[8] = xmmword_1000882A0;
  sub_100002840(&qword_1000AE3A8, &qword_1000883A8);
  sub_10003356C();
  sub_100080D48();
  v265 = v254;
  v266 = v255;
  v267 = *v256;
  v268 = *&v256[16];
  v261 = v250;
  v262 = v251;
  v263 = v252;
  v264 = v253;
  v257 = v248;
  v258 = v249[0];
  v259 = v249[1];
  v260 = v249[2];
  sub_100005B2C(&v257, &qword_1000AE3A8, &qword_1000883A8);
  sub_100033944(v86 + v243[7], v97, type metadata accessor for CircularProgressView.Content);
  v100 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
  if ((*(*(v100 - 1) + 48))(v97, 1, v100) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1000336B0();
    v101 = v232;
    sub_100080AD8();
  }

  else
  {
    v103 = *v97;
    v102 = *(v97 + 1);
    v104 = v100[16];
    v105 = v100[20];
    v106 = *&v97[v100[24]];
    v107 = &v97[v100[12]];
    v108 = v226;
    sub_1000338E0(v107, v226);
    (*(v231 + 32))(v229, &v97[v104], v234);
    v109 = v235;
    v110 = &v97[v105];
    v111 = v233;
    v112 = v236;
    (*(v235 + 32))(v233, v110, v236);
    v113 = v207;
    sub_100033944(v108, v207, type metadata accessor for CircularProgressView.ColorStyle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v242 = *v113;
      *&v248 = v103;
      *(&v248 + 1) = v102;
      sub_1000057D0();
      v114 = sub_100080D28();
      v116 = v115;
      v117 = v111;
      v119 = v118;
      v120 = v208;
      (*(v109 + 16))(v208, v117, v112);
      (*(v109 + 56))(v120, 0, 1, v112);
      sub_100080C98();
      sub_100005B2C(v120, &qword_1000AE358, &qword_100088360);
      sub_100080CA8();

      v121 = sub_100080D18();
      v123 = v122;
      v125 = v124;

      sub_10000EF24(v114, v116, v119 & 1);

      v126 = sub_100080CF8();
      v128 = v127;
      v130 = v129;
      v132 = v131;

      sub_10000EF24(v121, v123, v125 & 1);

      *&v248 = v126;
      *(&v248 + 1) = v128;
      LOBYTE(v249[0]) = v130 & 1;
      *(&v249[0] + 1) = v132;
      v133 = *(v244 + v243[8]);
      v134 = v197;
      sub_100080D48();
      sub_10000EF24(v126, v128, v130 & 1);

      v135 = v211;
      v136 = v217;
      (*(v211 + 16))(v215, v134, v217);
      swift_storeEnumTagMultiPayload();
      sub_10003376C();
      *&v248 = &type metadata for Text;
      *(&v248 + 1) = &protocol witness table for Text;
      v137 = v236;
      swift_getOpaqueTypeConformance2();
      v138 = v213;
      sub_100080AD8();
      v139 = v235;

      v140 = v136;
      v141 = v233;
      (*(v135 + 8))(v134, v140);
      v142 = v229;
      v143 = v240;
    }

    else
    {
      LODWORD(v225) = *v113;
      v144 = sub_100002840(&qword_1000AE3F8, &qword_1000883D0);
      v145 = *(v144 + 64);
      (*(v192 + 8))(&v113[*(v144 + 48)], v205);
      (*(v209 + 32))(v216, &v113[v145], v210);
      *&v248 = v103;
      *(&v248 + 1) = v102;
      sub_1000057D0();
      v146 = sub_100080D28();
      v148 = v147;
      v150 = v149;
      v151 = v208;
      (*(v109 + 16))(v208, v111, v112);
      (*(v109 + 56))(v151, 0, 1, v112);
      sub_100080C98();
      sub_100005B2C(v151, &qword_1000AE358, &qword_100088360);
      sub_100080CA8();

      v152 = sub_100080D18();
      v154 = v153;
      v156 = v155;

      sub_10000EF24(v146, v148, v150 & 1);

      v157 = v195;
      sub_100031BE8(v195);
      v158 = v196;
      sub_100080FE8();
      LOBYTE(v145) = sub_100080FC8();
      v159 = *(v199 + 8);
      v160 = v158;
      v161 = v200;
      v159(v160, v200);
      v159(v157, v161);
      if (v145)
      {
        v162 = sub_100080B08();
        v143 = v240;
      }

      else
      {
        v143 = v240;
        v162 = v225;
      }

      LODWORD(v248) = v162;
      v163 = sub_100080D08();
      v165 = v164;
      v167 = v166;
      v169 = v168;
      sub_10000EF24(v152, v154, v156 & 1);

      *&v248 = v163;
      *(&v248 + 1) = v165;
      LOBYTE(v249[0]) = v167 & 1;
      *(&v249[0] + 1) = v169;
      v170 = *(v244 + v243[8]);
      v171 = v202;
      sub_100080D48();
      sub_10000EF24(v163, v165, v167 & 1);

      v172 = v203;
      v193(&v203[*(v198 + 36)], v242, v205);
      (*(v211 + 32))(v172, v171, v217);
      KeyPath = swift_getKeyPath();
      v174 = v201;
      v175 = &v201[*(v212 + 36)];
      v176 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
      v178 = v209;
      v177 = v210;
      (*(v209 + 16))(v175 + *(v176 + 28), v216, v210);
      *v175 = KeyPath;
      sub_10000C1E0(v172, v174, &qword_1000AE368, &qword_100088370);
      v179 = v204;
      sub_10000C1E0(v174, v204, &qword_1000AE370, &qword_100088378);
      sub_1000055FC(v179, v215, &qword_1000AE370, &qword_100088378);
      swift_storeEnumTagMultiPayload();
      sub_10003376C();
      *&v248 = &type metadata for Text;
      *(&v248 + 1) = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v138 = v213;
      sub_100080AD8();
      sub_100005B2C(v179, &qword_1000AE370, &qword_100088378);
      (*(v178 + 8))(v216, v177);
      v139 = v235;
      v137 = v236;
      v141 = v233;
      v142 = v229;
    }

    sub_1000055FC(v138, v143, &qword_1000AE378, &qword_100088380);
    swift_storeEnumTagMultiPayload();
    sub_1000336B0();
    v101 = v232;
    sub_100080AD8();
    sub_100005B2C(v138, &qword_1000AE378, &qword_100088380);
    (*(v139 + 8))(v141, v137);
    (*(v231 + 8))(v142, v234);
    sub_1000339AC(v226);
  }

  v180 = v246;
  sub_1000055FC(v245, v246, &qword_1000AE390, &qword_100088398);
  v182 = v227;
  v181 = v228;
  v183 = *(v228 + 16);
  v184 = v230;
  v183(v227, v247, v230);
  v185 = v237;
  sub_1000055FC(v101, v237, &qword_1000AE380, &qword_100088388);
  v186 = v241;
  sub_1000055FC(v180, v241, &qword_1000AE390, &qword_100088398);
  v187 = v101;
  v188 = sub_100002840(&qword_1000AE3F0, &qword_1000883C8);
  v183((v186 + *(v188 + 48)), v182, v184);
  sub_1000055FC(v185, v186 + *(v188 + 64), &qword_1000AE380, &qword_100088388);
  sub_100005B2C(v187, &qword_1000AE380, &qword_100088388);
  v189 = *(v181 + 8);
  v189(v247, v184);
  sub_100005B2C(v245, &qword_1000AE390, &qword_100088398);
  sub_100005B2C(v185, &qword_1000AE380, &qword_100088388);
  v189(v182, v184);
  return sub_100005B2C(v246, &qword_1000AE390, &qword_100088398);
}

double sub_100033498@<D0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[11];
  v6 = *(v2 + a1[10]);
  *a2 = sub_100080F48();
  a2[1] = v7;
  v8 = sub_100002840(&qword_1000AE338, &qword_100088340);
  sub_100031DF0(v6, v2, v2 + v5, a2 + *(v8 + 44));
  v9 = a1[14];
  v10 = *(v2 + a1[13]);
  v11 = *(v2 + v9);
  sub_100080F48();
  sub_1000807E8();
  v12 = (a2 + *(sub_100002840(&qword_1000AE340, &qword_100088348) + 36));
  *v12 = v14;
  v12[1] = v15;
  result = *&v16;
  v12[2] = v16;
  return result;
}

unint64_t sub_10003356C()
{
  result = qword_1000AE3B0;
  if (!qword_1000AE3B0)
  {
    sub_100004FC8(&qword_1000AE3A8, &qword_1000883A8);
    sub_1000335F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3B0);
  }

  return result;
}

unint64_t sub_1000335F8()
{
  result = qword_1000AE3B8;
  if (!qword_1000AE3B8)
  {
    sub_100004FC8(&qword_1000AE3C0, &qword_1000883B0);
    sub_100005C98(&qword_1000AE3C8, &qword_1000AE3D0, &unk_1000883B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3B8);
  }

  return result;
}

unint64_t sub_1000336B0()
{
  result = qword_1000AE3D8;
  if (!qword_1000AE3D8)
  {
    sub_100004FC8(&qword_1000AE378, &qword_100088380);
    sub_10003376C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3D8);
  }

  return result;
}

unint64_t sub_10003376C()
{
  result = qword_1000AE3E0;
  if (!qword_1000AE3E0)
  {
    sub_100004FC8(&qword_1000AE370, &qword_100088378);
    sub_100033824();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3E0);
  }

  return result;
}

unint64_t sub_100033824()
{
  result = qword_1000AE3E8;
  if (!qword_1000AE3E8)
  {
    sub_100004FC8(&qword_1000AE368, &qword_100088370);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE3E8);
  }

  return result;
}

uint64_t sub_1000338E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircularProgressView.ColorStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000339AC(uint64_t a1)
{
  v2 = type metadata accessor for CircularProgressView.ColorStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100033A14()
{
  result = qword_1000AE408;
  if (!qword_1000AE408)
  {
    sub_100004FC8(&qword_1000AE340, &qword_100088348);
    sub_100005C98(&qword_1000AE410, &qword_1000AE418, &qword_100088418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE408);
  }

  return result;
}

uint64_t sub_100033AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100080CD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100080C58();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100033BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100080CD8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100080C58();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100033D00()
{
  result = sub_100080CD8();
  if (v1 <= 0x3F)
  {
    result = sub_100080C58();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100033DB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = sub_100080808();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100033F9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002840(&qword_1000AC988, &unk_100085A60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100002840(&qword_1000AD718, &unk_100088450);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v16 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_100080808();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_100034190()
{
  sub_1000342EC(319, &qword_1000AC9F8, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10003429C();
    if (v1 <= 0x3F)
    {
      sub_1000342EC(319, &qword_1000AD788, &type metadata accessor for WidgetRenderingMode);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ReadingGoalView.ViewConfiguration(319);
        if (v3 <= 0x3F)
        {
          sub_100080808();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10003429C()
{
  if (!qword_1000AE528)
  {
    v0 = sub_1000807C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE528);
    }
  }
}

void sub_1000342EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000807C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003435C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000809F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ReadingGoalView(0);
  sub_1000055FC(v1 + *(v12 + 24), v11, &qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100081008();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_100081458();
    v16 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100034564(unint64_t *a1, unint64_t a2, double a3)
{
  v6 = sub_100002840(&qword_1000AE5B0, &qword_100088508);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v26 - v8);
  v10 = sub_100002840(&qword_1000AE5B8, &qword_100088510);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100002840(&qword_1000AE5A0, &qword_100088500);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = *a1;
  if (v18)
  {
    *v17 = sub_100080A28();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v19 = sub_100002840(&qword_1000AE5C0, &qword_100088518);
    sub_1000348A4(a2, v18, &v17[*(v19 + 44)], a3);
    sub_1000055FC(v17, v13, &qword_1000AE5A0, &qword_100088500);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AE598, &qword_1000AE5A0, &qword_100088500);
    sub_100005C98(&qword_1000AE5A8, &qword_1000AE5B0, &qword_100088508);
    sub_100080AD8();
    v20 = v17;
    v21 = &qword_1000AE5A0;
    v22 = &qword_100088500;
  }

  else
  {
    *v9 = sub_100080F48();
    v9[1] = v23;
    v24 = sub_100002840(&qword_1000AE5C8, &qword_100088520);
    sub_100037E98(a2, 0, v9 + *(v24 + 44), a3);
    sub_1000055FC(v9, v13, &qword_1000AE5B0, &qword_100088508);
    swift_storeEnumTagMultiPayload();
    sub_100005C98(&qword_1000AE598, &qword_1000AE5A0, &qword_100088500);
    sub_100005C98(&qword_1000AE5A8, &qword_1000AE5B0, &qword_100088508);
    sub_100080AD8();
    v20 = v9;
    v21 = &qword_1000AE5B0;
    v22 = &qword_100088508;
  }

  return sub_100005B2C(v20, v21, v22);
}

uint64_t sub_1000348A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_100002840(&qword_1000AE5D0, &qword_100088528);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = sub_100002840(&qword_1000AE5E8, &qword_100088540);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  result = type metadata accessor for ReadingGoalView(0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v23 = result;
  v24 = *(a1 + *(result + 28));
  if (*(v24 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v45 = v19;
  v46 = v14;
  v47 = a3;
  v48 = v12;
  v25 = v24 + 48 * a2;
  sub_100034CC0(*(v25 + 73), &v54);
  v26 = v56;
  v27 = DWORD2(v56);
  v52 = a2;
  v28 = BYTE12(v56);
  v29 = *(sub_100002840(&qword_1000AE5E0, &qword_100088538) + 36);
  v51 = v15;
  v30 = enum case for BlendMode.plusLighter(_:);
  v31 = sub_100080F68();
  v32 = *(*(v31 - 8) + 104);
  v50 = v54;
  v49 = v55;
  v32(&v21[v29], v30, v31);
  v33 = v49;
  *v21 = v50;
  *(v21 + 1) = v33;
  *(v21 + 4) = v26;
  *(v21 + 10) = v27;
  v21[44] = v28;
  v34 = a1 + *(v23 + 32);
  v35 = *(v34 + *(type metadata accessor for ReadingGoalView.ViewConfiguration(0) + 28));
  sub_100080F48();
  result = sub_1000807E8();
  v36 = &v21[*(v51 + 36)];
  v37 = v56;
  *(v36 + 1) = v55;
  *(v36 + 2) = v37;
  *v36 = v54;
  if (*(v24 + 16) > v52)
  {
    *&v58[10] = *(v25 + 58);
    v38 = *(v25 + 48);
    v57 = *(v25 + 32);
    *v58 = v38;
    v59 = v57;
    v60 = v38;
    v61 = v38;
    v62 = v57;
    v39 = v58[25];
    sub_1000218B8(&v62, v53);
    sub_1000218B8(&v61, v53);
    v40 = v46;
    sub_1000353C8(&v57, v39, v46, a4);
    sub_100039654(&v62);
    sub_100039654(&v61);
    v41 = v45;
    sub_1000055FC(v21, v45, &qword_1000AE5E8, &qword_100088540);
    v42 = v48;
    sub_1000055FC(v40, v48, &qword_1000AE5D0, &qword_100088528);
    v43 = v47;
    sub_1000055FC(v41, v47, &qword_1000AE5E8, &qword_100088540);
    v44 = sub_100002840(&qword_1000AE6E8, &qword_100088648);
    sub_1000055FC(v42, v43 + *(v44 + 48), &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v40, &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v21, &qword_1000AE5E8, &qword_100088540);
    sub_100005B2C(v42, &qword_1000AE5D0, &qword_100088528);
    return sub_100005B2C(v41, &qword_1000AE5E8, &qword_100088540);
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_100034CC0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 1u)
  {
    sub_100080E48();
    sub_100080E58();

    sub_100002840(&qword_1000AE698, &qword_100088620);
    sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620);
    sub_100080AD8();
    v6 = 0x10000;
    if (!BYTE10(v13))
    {
      v6 = 0;
    }

    *(&v13 + 1) = v6 | WORD4(v13);
    v15 = 0;
    v14 = 0uLL;
    v16 = 0;
    sub_100002840(&qword_1000AE6B0, &qword_100088628);
    sub_100002840(&qword_1000AE6C8, &qword_100088630);
    sub_100039C3C();
    sub_100039CEC();
    sub_100080AD8();
    sub_100002840(&qword_1000AE690, &qword_100088618);
    sub_100039BB0();
    sub_100080AD8();
  }

  else
  {
    if (a1 == 2 || a1 == 3)
    {
      sub_100002840(&qword_1000AE6E0, &qword_100088640);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100085A40;
      sub_100080E48();
      v4 = sub_100080E58();

      *(v3 + 32) = v4;
      sub_100080E48();
      v5 = sub_100080E58();

      *(v3 + 40) = v5;
      sub_100080FA8();
      sub_100080FB8();
      sub_100080F38();
      sub_100080818();
      sub_100002840(&qword_1000AE6D8, &qword_100088638);
      sub_100005C98(&qword_1000AE6D0, &qword_1000AE6D8, &qword_100088638);
      sub_100080AD8();
      v13 = v8;
      v14 = v9;
      v15 = v10;
      LOWORD(v16) = v11;
      BYTE2(v16) = v12 != 0;
      HIBYTE(v16) = 1;
      sub_100002840(&qword_1000AE6B0, &qword_100088628);
      sub_100002840(&qword_1000AE6C8, &qword_100088630);
      sub_100039C3C();
      sub_100039CEC();
      sub_100080AD8();
      sub_100002840(&qword_1000AE690, &qword_100088618);
      sub_100002840(&qword_1000AE698, &qword_100088620);
      sub_100039BB0();
      sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620);
    }

    else
    {
      sub_100080E38();
      sub_100002840(&qword_1000AE690, &qword_100088618);
      sub_100002840(&qword_1000AE698, &qword_100088620);
      sub_100039BB0();
      sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620);
    }

    sub_100080AD8();
  }

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 44) = v17;
  return result;
}

uint64_t sub_1000353C8@<X0>(char **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v339 = a2;
  v348 = a1;
  v345 = a3;
  v316 = sub_100002840(&qword_1000AE5F8, &qword_100088550);
  v6 = *(*(v316 - 8) + 64);
  __chkstk_darwin(v316);
  v317 = &v284 - v7;
  v344 = sub_100002840(&qword_1000AE600, &qword_100088558);
  v8 = *(*(v344 - 8) + 64);
  __chkstk_darwin(v344);
  v318 = &v284 - v9;
  v10 = type metadata accessor for CircularProgressView.Content(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v301 = (&v284 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v320 = (&v284 - v14);
  v326 = type metadata accessor for CircularProgressView(0);
  v15 = *(*(v326 - 8) + 64);
  v16 = __chkstk_darwin(v326);
  v302 = (&v284 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v322 = (&v284 - v18);
  v330 = sub_100002840(&qword_1000AE608, &qword_100088560);
  v329 = *(v330 - 8);
  v19 = *(v329 + 64);
  v20 = __chkstk_darwin(v330);
  v303 = &v284 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v324 = &v284 - v22;
  v340 = sub_100002840(&qword_1000AE610, &qword_100088568);
  v23 = *(*(v340 - 8) + 64);
  v24 = __chkstk_darwin(v340);
  v304 = &v284 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v305 = &v284 - v27;
  v28 = __chkstk_darwin(v26);
  v306 = &v284 - v29;
  v30 = __chkstk_darwin(v28);
  v321 = &v284 - v31;
  v32 = __chkstk_darwin(v30);
  v323 = &v284 - v33;
  __chkstk_darwin(v32);
  v325 = &v284 - v34;
  v341 = sub_100002840(&qword_1000AE618, &qword_100088570);
  v35 = *(*(v341 - 8) + 64);
  __chkstk_darwin(v341);
  v343 = &v284 - v36;
  v327 = sub_100002840(&qword_1000AE620, &qword_100088578);
  v37 = *(*(v327 - 8) + 64);
  __chkstk_darwin(v327);
  v328 = &v284 - v38;
  v342 = sub_100002840(&qword_1000AE628, &qword_100088580);
  v39 = *(*(v342 - 8) + 64);
  __chkstk_darwin(v342);
  v331 = &v284 - v40;
  v336 = sub_100080B68();
  v335 = *(v336 - 8);
  v41 = *(v335 + 64);
  __chkstk_darwin(v336);
  v334 = &v284 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = type metadata accessor for FilledCircleWithLabel();
  v43 = *(*(v311 - 8) + 64);
  v44 = __chkstk_darwin(v311);
  v291 = (&v284 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v289 = (&v284 - v46);
  v313 = sub_100002840(&qword_1000AE630, &qword_100088588);
  v312 = *(v313 - 8);
  v47 = *(v312 + 64);
  v48 = __chkstk_darwin(v313);
  v295 = &v284 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v292 = &v284 - v50;
  v315 = sub_100002840(&qword_1000AE638, &qword_100088590);
  v314 = *(v315 - 8);
  v51 = *(v314 + 64);
  v52 = __chkstk_darwin(v315);
  v296 = &v284 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v294 = &v284 - v54;
  v338 = sub_100002840(&qword_1000AE640, &qword_100088598);
  v55 = *(*(v338 - 8) + 64);
  v56 = __chkstk_darwin(v338);
  v297 = &v284 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v298 = &v284 - v59;
  v60 = __chkstk_darwin(v58);
  v300 = &v284 - v61;
  v62 = __chkstk_darwin(v60);
  v290 = &v284 - v63;
  v64 = __chkstk_darwin(v62);
  v293 = &v284 - v65;
  __chkstk_darwin(v64);
  v299 = &v284 - v66;
  v352 = sub_100080F68();
  v358 = *(v352 - 8);
  v67 = *(v358 + 64);
  v68 = __chkstk_darwin(v352);
  v287 = &v284 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v310 = &v284 - v71;
  v72 = __chkstk_darwin(v70);
  v288 = &v284 - v73;
  v74 = __chkstk_darwin(v72);
  v286 = &v284 - v75;
  v76 = __chkstk_darwin(v74);
  v285 = &v284 - v77;
  v78 = __chkstk_darwin(v76);
  v357 = &v284 - v79;
  __chkstk_darwin(v78);
  v353 = &v284 - v80;
  v81 = sub_1000807B8();
  v356 = *(v81 - 8);
  v82 = *(v356 + 8);
  v83 = __chkstk_darwin(v81);
  v351 = &v284 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v83);
  v87 = &v284 - v86;
  __chkstk_darwin(v85);
  v89 = &v284 - v88;
  v90 = sub_100081008();
  v91 = *(v90 - 8);
  v92 = *(v91 + 64);
  v93 = __chkstk_darwin(v90);
  v95 = &v284 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v93);
  v97 = &v284 - v96;
  sub_10003435C(&v284 - v96);
  sub_100080FE8();
  v98 = sub_100080FC8();
  v99 = *(v91 + 8);
  (v99)(v95, v90);
  v355 = v90;
  v349 = v99;
  v354 = v91 + 8;
  (v99)(v97, v90);
  v100 = v356;
  v350 = v81;
  v359 = v4;
  v333 = v89;
  v332 = v87;
  if (v98)
  {
    sub_100080E48();
    v337 = sub_100080E58();
  }

  else
  {
    sub_100005180(v89);
    (*(v100 + 13))(v87, enum case for ColorScheme.light(_:), v81);
    v101 = sub_1000807A8();
    v102 = v81;
    v103 = *(v100 + 1);
    v103(v87, v102);
    v103(v89, v102);
    if (v101)
    {
      sub_100080E28();
    }

    else
    {
      sub_100080E48();
    }

    v337 = sub_100080E58();
    v81 = v350;
    v100 = v356;
  }

  sub_10003435C(v97);
  sub_100080FE8();
  v104 = sub_100080FC8();
  v105 = v355;
  v106 = v349;
  (v349)(v95, v355);
  v106(v97, v105);
  if (v104)
  {
    v107 = *(v100 + 13);
    v319 = enum case for ColorScheme.light(_:);
    v309 = v107;
    v107(v351);
  }

  else
  {
    v108 = v332;
    v109 = v333;
    sub_100005180(v333);
    v110 = v100;
    v111 = enum case for ColorScheme.light(_:);
    v112 = *(v110 + 13);
    v112(v108, enum case for ColorScheme.light(_:), v81);
    LODWORD(v347) = sub_1000807A8();
    v113 = *(v110 + 1);
    v113(v108, v81);
    v113(v109, v81);
    v319 = v111;
    v309 = v112;
    if (v347)
    {
      v114 = enum case for ColorScheme.dark(_:);
      v115 = v351;
    }

    else
    {
      v115 = v351;
      v114 = v111;
    }

    v112(v115, v114, v81);
  }

  v116 = v358;
  sub_10003435C(v97);
  sub_100080FE8();
  v117 = sub_100080FC8();
  v118 = v355;
  v119 = v349;
  (v349)(v95, v355);
  v119(v97, v118);
  v120 = *(v116 + 104);
  v307 = v116 + 104;
  v121 = enum case for BlendMode.normal(_:);
  if (v117)
  {
    v122 = enum case for BlendMode.normal(_:);
  }

  else
  {
    v122 = enum case for BlendMode.plusDarker(_:);
  }

  v123 = v352;
  v120(v353, v122, v352);
  sub_10003435C(v97);
  sub_100080FE8();
  v124 = sub_100080FC8();
  v346 = v95;
  v119(v95, v118);
  v347 = v97;
  v119(v97, v118);
  if (v124)
  {
    v125 = v121;
  }

  else
  {
    v125 = enum case for BlendMode.plusLighter(_:);
  }

  v126 = v123;
  v308 = v120;
  v120(v357, v125, v123);
  v127 = v348;
  v128 = v348[4];
  if (*(v348 + 40) != 1)
  {
    v333 = v348[4];
    v174 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    v175 = v174[12];
    v176 = v127;
    v177 = v174[16];
    v178 = v174[20];
    v179 = v174[24];
    v181 = *v176;
    v180 = v176[1];
    v364 = *(v176 + 1);
    v182 = v119;
    v183 = v320;
    *v320 = v181;
    *(v183 + 8) = v180;

    *(v183 + v175) = sub_100080E48();
    type metadata accessor for CircularProgressView.ColorStyle(0);
    swift_storeEnumTagMultiPayload();
    v184 = v359 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v185 = sub_100080CD8();
    (*(*(v185 - 8) + 16))(v183 + v177, v184, v185);
    v186 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v187 = v186[5];
    v188 = sub_100080C58();
    (*(*(v188 - 8) + 16))(v183 + v178, v184 + v187, v188);
    *(v183 + v179) = *(v184 + v186[6]);
    (*(*(v174 - 1) + 56))(v183, 0, 1, v174);
    v189 = sub_100080E48();
    v190 = v347;
    sub_10003435C(v347);
    v191 = v346;
    sub_100080FE8();
    sub_100080FC8();
    v192 = v355;
    v182(v191, v355);
    v182(v190, v192);
    sub_100080E48();
    v193 = sub_100080E58();

    v194 = v326;
    v195 = v322;
    (*(v358 + 16))(v322 + *(v326 + 44), v357, v352);
    v196 = *(v184 + v186[7]);
    *v195 = swift_getKeyPath();
    sub_100002840(&qword_1000AE400, &qword_100088410);
    swift_storeEnumTagMultiPayload();
    *(v195 + v194[5]) = swift_getKeyPath();
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    v197 = v333;
    *(v195 + v194[6]) = v333;
    sub_100039A94(v183, v195 + v194[7], type metadata accessor for CircularProgressView.Content);
    *(v195 + v194[8]) = 0;
    *(v195 + v194[9]) = v189;
    *(v195 + v194[10]) = v193;
    *(v195 + v194[12]) = v196;
    *(v195 + v194[13]) = a4;
    *(v195 + v194[14]) = a4;
    v198 = v334;
    sub_100080B38();
    v199 = sub_1000397C4(&qword_1000AE658, type metadata accessor for CircularProgressView);
    v200 = v324;
    sub_100080E08();
    (*(v335 + 8))(v198, v336);
    sub_100039AFC(v195, type metadata accessor for CircularProgressView);
    v362 = v364;
    v360 = v194;
    v361 = v199;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v201 = v321;
    v202 = v330;
    sub_100080DD8();
    (*(v329 + 8))(v200, v202);
    *&v362 = sub_100038444(v197, 0, v339);
    *(&v362 + 1) = v203;
    v204 = v323;
    sub_100080888();

    sub_100005B2C(v201, &qword_1000AE610, &qword_100088568);
    v205 = v325;
    sub_1000808C8();
    sub_100005B2C(v204, &qword_1000AE610, &qword_100088568);
    sub_1000055FC(v205, v328, &qword_1000AE610, &qword_100088568);
    swift_storeEnumTagMultiPayload();
    sub_10003980C();
    sub_1000396A8();
    v206 = v331;
    sub_100080AD8();
    sub_1000055FC(v206, v343, &qword_1000AE628, &qword_100088580);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v206, &qword_1000AE628, &qword_100088580);
    sub_100005B2C(v205, &qword_1000AE610, &qword_100088568);
    v207 = *(v358 + 8);
    v208 = v352;
    v207(v357, v352);
    v207(v353, v208);
    return (*(v356 + 1))(v351, v350);
  }

  v129 = v346;
  v130 = v347;
  if (!v128)
  {
    sub_10003435C(v347);
    sub_100080FE8();
    sub_100080FC8();
    v209 = v355;
    v119(v129, v355);
    v119(v130, v209);
    sub_100080E48();
    v332 = sub_100080E58();

    v210 = v119;
    v211 = v209;
    v212 = v285;
    (*(v358 + 16))(v285, v357, v126);
    v213 = v127[1];
    v333 = *v127;
    v330 = v213;
    v363 = *(v127 + 1);

    LODWORD(v348) = sub_100080B28();
    v214 = v359;
    sub_10003435C(v130);
    sub_100080FE8();
    LOBYTE(v209) = sub_100080FC8();
    v210(v129, v211);
    v210(v130, v211);
    v215 = &enum case for BlendMode.destinationOut(_:);
    if ((v209 & 1) == 0)
    {
      v215 = &enum case for BlendMode.plusDarker(_:);
    }

    v216 = v286;
    v308(v286, *v215, v126);
    v217 = v311;
    v218 = *(v311 + 40);
    v219 = v356;
    v220 = v289;
    v221 = v350;
    v309(v289 + v218, v319, v350);
    (*(v219 + 7))(v220 + v218, 0, 1, v221);
    v222 = v214 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v223 = v217[11];
    v224 = sub_100080CD8();
    (*(*(v224 - 8) + 16))(v220 + v223, v222, v224);
    v225 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v226 = *(v225 + 20);
    v227 = v217[12];
    v228 = sub_100080C58();
    (*(*(v228 - 8) + 16))(v220 + v227, v222 + v226, v228);
    v229 = *(v222 + *(v225 + 24));
    *v220 = v332;
    v230 = *(v358 + 32);
    v230(v220 + v217[5], v212, v126);
    *(v220 + v217[6]) = a4;
    v231 = (v220 + v217[7]);
    v232 = v330;
    *v231 = v333;
    v231[1] = v232;
    *(v220 + v217[8]) = v348;
    v230(v220 + v217[9], v216, v126);
    *(v220 + v217[13]) = v229;
    v233 = sub_1000397C4(&qword_1000AE648, type metadata accessor for FilledCircleWithLabel);
    v234 = v292;
    sub_100080D48();
    sub_100039AFC(v220, type metadata accessor for FilledCircleWithLabel);
    v235 = v334;
    sub_100080B38();
    *&v362 = v217;
    *(&v362 + 1) = v233;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v237 = v294;
    v238 = v313;
    sub_100080E08();
    (*(v335 + 8))(v235, v336);
    (*(v312 + 8))(v234, v238);
    v362 = v363;
    v360 = v238;
    v361 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v239 = v290;
    v240 = v315;
    sub_100080DD8();
    (*(v314 + 8))(v237, v240);
    *&v362 = sub_100038444(0, 1, v339);
    *(&v362 + 1) = v241;
    v242 = v293;
    sub_100080888();

    sub_100005B2C(v239, &qword_1000AE640, &qword_100088598);
    v243 = v299;
    sub_1000808C8();
    sub_100005B2C(v242, &qword_1000AE640, &qword_100088598);
    sub_1000055FC(v243, v328, &qword_1000AE640, &qword_100088598);
    swift_storeEnumTagMultiPayload();
    sub_10003980C();
    sub_1000396A8();
    v244 = v331;
    sub_100080AD8();
    sub_1000055FC(v244, v343, &qword_1000AE628, &qword_100088580);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v244, &qword_1000AE628, &qword_100088580);
    sub_100005B2C(v243, &qword_1000AE640, &qword_100088598);
    v245 = *(v358 + 8);
    v245(v357, v126);
    v245(v353, v126);
    return (*(v356 + 1))(v351, v350);
  }

  if (v128 == 1)
  {
    v131 = v333;
    sub_100005180(v333);
    v132 = v356;
    v346 = v356 + 104;
    v133 = v332;
    v134 = v127;
    v135 = v350;
    v136 = v309;
    v309(v332, v319, v350);
    v137 = sub_1000807A8();
    v138 = *(v132 + 1);
    v138(v133, v135);
    v138(v131, v135);
    if (v137)
    {
      v139 = v353;
    }

    else
    {
      v139 = v357;
    }

    (*(v358 + 16))(v310, v139, v126);
    v140 = v134[1];
    v349 = *v134;
    v347 = v140;
    v366 = *(v134 + 1);

    LODWORD(v348) = sub_100080B18();
    sub_100005180(v131);
    v136(v133, v319, v135);
    v141 = sub_1000807A8();
    v354 = v138;
    v355 = (v132 + 8);
    v138(v133, v135);
    v138(v131, v135);
    v142 = &enum case for BlendMode.plusDarker(_:);
    if (v141)
    {
      v142 = &enum case for BlendMode.plusLighter(_:);
    }

    v143 = v287;
    v144 = v126;
    v308(v287, *v142, v126);
    v145 = v311;
    v146 = *(v311 + 40);
    v147 = v291;
    (*(v132 + 2))(v291 + v146, v351, v135);
    (*(v132 + 7))(v147 + v146, 0, 1, v135);
    v148 = v359 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v149 = v145[11];
    v150 = sub_100080CD8();
    (*(*(v150 - 8) + 16))(v147 + v149, v148, v150);
    v151 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v152 = *(v151 + 20);
    v153 = v145[12];
    v154 = sub_100080C58();
    (*(*(v154 - 8) + 16))(v147 + v153, v148 + v152, v154);
    v155 = *(v148 + *(v151 + 24));
    *v147 = v337;
    v156 = *(v358 + 32);
    v156(v147 + v145[5], v310, v144);
    *(v147 + v145[6]) = a4;
    v157 = (v147 + v145[7]);
    v158 = v347;
    *v157 = v349;
    v157[1] = v158;
    *(v147 + v145[8]) = v348;
    v156(v147 + v145[9], v143, v144);
    *(v147 + v145[13]) = v155;
    v159 = sub_1000397C4(&qword_1000AE648, type metadata accessor for FilledCircleWithLabel);

    v160 = v295;
    sub_100080D48();
    sub_100039AFC(v147, type metadata accessor for FilledCircleWithLabel);
    v161 = v334;
    sub_100080B38();
    *&v362 = v145;
    *(&v362 + 1) = v159;
    v162 = swift_getOpaqueTypeConformance2();
    v163 = v296;
    v164 = v313;
    sub_100080E08();
    (*(v335 + 8))(v161, v336);
    (*(v312 + 8))(v160, v164);
    v362 = v366;
    v360 = v164;
    v361 = v162;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v165 = v297;
    v166 = v315;
    sub_100080DD8();
    (*(v314 + 8))(v163, v166);
    *&v362 = sub_100038444(1, 1, v339);
    *(&v362 + 1) = v167;
    v168 = v298;
    sub_100080888();

    sub_100005B2C(v165, &qword_1000AE640, &qword_100088598);
    v169 = v300;
    sub_1000808C8();
    sub_100005B2C(v168, &qword_1000AE640, &qword_100088598);
    sub_1000055FC(v169, v317, &qword_1000AE640, &qword_100088598);
    swift_storeEnumTagMultiPayload();
    sub_1000396A8();
    sub_10003980C();
    v170 = v318;
    sub_100080AD8();
    sub_1000055FC(v170, v343, &qword_1000AE600, &qword_100088558);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v170, &qword_1000AE600, &qword_100088558);
    sub_100005B2C(v169, &qword_1000AE640, &qword_100088598);
    v171 = *(v358 + 8);
    v172 = v352;
    v171(v357, v352);
    v171(v353, v172);
    return (v354)(v351, v350);
  }

  else
  {
    v246 = v359 + *(type metadata accessor for ReadingGoalView(0) + 32);
    v247 = type metadata accessor for ReadingGoalView.ViewConfiguration(0);
    v248 = *(v246 + v247[9]);
    v249 = sub_100002840(&qword_1000ACB28, &unk_100087CA0);
    v250 = v301;
    v251 = (v301 + v249[12]);
    v347 = v249[16];
    v349 = v249[20];
    v354 = v249[24];
    v252 = *v127;
    v253 = v127[1];
    v365 = *(v127 + 1);
    *v301 = v252;
    *(v250 + 8) = v253;
    v254 = sub_100002840(&qword_1000AE3F8, &qword_1000883D0);
    v255 = v126;
    v256 = *(v254 + 48);
    v257 = *(v254 + 64);

    *v251 = sub_100080B18();
    v355 = *(v358 + 16);
    v355(v251 + v256, v353, v126);
    sub_100005180(v251 + v257);
    type metadata accessor for CircularProgressView.ColorStyle(0);
    swift_storeEnumTagMultiPayload();
    v258 = sub_100080CD8();
    (*(*(v258 - 8) + 16))(v250 + v347, v246, v258);
    v259 = v247[5];
    v260 = sub_100080C58();
    (*(*(v260 - 8) + 16))(&v349[v250], v246 + v259, v260);
    *(v250 + v354) = *(v246 + v247[6]);
    (*(*(v249 - 1) + 56))(v250, 0, 1, v249);
    v354 = sub_100080E38();
    v261 = v333;
    sub_100005180(v333);
    v262 = v356;
    v263 = v332;
    v264 = v350;
    (*(v356 + 13))(v332, enum case for ColorScheme.light(_:), v350);
    LOBYTE(v253) = sub_1000807A8();
    v265 = *(v262 + 1);
    v356 = v265;
    (v265)(v263, v264);
    (v265)(v261, v264);
    if (v253)
    {
      v266 = v353;
    }

    else
    {
      v266 = v357;
    }

    v267 = v288;
    v355(v288, v266, v126);
    v268 = *(v246 + v247[7]);
    KeyPath = swift_getKeyPath();
    v270 = v302;
    *v302 = KeyPath;
    sub_100002840(&qword_1000AE400, &qword_100088410);
    swift_storeEnumTagMultiPayload();
    v271 = swift_getKeyPath();
    v272 = v326;
    *(v270 + *(v326 + 20)) = v271;
    sub_100002840(&qword_1000ACA98, &qword_1000864C0);
    swift_storeEnumTagMultiPayload();
    *(v270 + v272[6]) = v248;
    sub_100039A94(v250, v270 + v272[7], type metadata accessor for CircularProgressView.Content);
    *(v270 + v272[8]) = 1;
    *(v270 + v272[9]) = v354;
    *(v270 + v272[10]) = v337;
    (*(v358 + 32))(v270 + v272[11], v267, v255);
    *(v270 + v272[12]) = v268;
    *(v270 + v272[13]) = a4;
    *(v270 + v272[14]) = a4;

    v273 = v334;
    sub_100080B38();
    v274 = sub_1000397C4(&qword_1000AE658, type metadata accessor for CircularProgressView);
    v275 = v303;
    sub_100080E08();
    (*(v335 + 8))(v273, v336);
    sub_100039AFC(v270, type metadata accessor for CircularProgressView);
    v362 = v365;
    v360 = v272;
    v361 = v274;
    swift_getOpaqueTypeConformance2();
    sub_1000057D0();
    v276 = v304;
    v277 = v330;
    sub_100080DD8();
    (*(v329 + 8))(v275, v277);
    *&v362 = sub_100038444(2, 1, v339);
    *(&v362 + 1) = v278;
    v279 = v305;
    sub_100080888();

    sub_100005B2C(v276, &qword_1000AE610, &qword_100088568);
    v280 = v306;
    sub_1000808C8();
    sub_100005B2C(v279, &qword_1000AE610, &qword_100088568);
    sub_1000055FC(v280, v317, &qword_1000AE610, &qword_100088568);
    swift_storeEnumTagMultiPayload();
    sub_1000396A8();
    sub_10003980C();
    v281 = v318;
    sub_100080AD8();
    sub_1000055FC(v281, v343, &qword_1000AE600, &qword_100088558);
    swift_storeEnumTagMultiPayload();
    sub_10003996C();
    sub_1000399F8();
    sub_100080AD8();

    sub_100005B2C(v281, &qword_1000AE600, &qword_100088558);
    sub_100005B2C(v280, &qword_1000AE610, &qword_100088568);
    v282 = *(v358 + 8);
    v283 = v352;
    v282(v357, v352);
    v282(v353, v283);
    return (v356)(v351, v350);
  }
}

uint64_t sub_100037E98@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v60 = a3;
  v7 = sub_100002840(&qword_1000AE5D0, &qword_100088528);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v55 - v11;
  v62 = sub_100002840(&qword_1000AE5D8, &qword_100088530);
  v12 = *(*(v62 - 8) + 64);
  v13 = __chkstk_darwin(v62);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v17 = sub_1000809F8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ReadingGoalView(0);
  v23 = result;
  v24 = a1 + *(result + 20);
  v25 = *(v24 + 8);
  if (*(v24 + 32) == 1)
  {
    v26 = *(v24 + 8);
  }

  else
  {
    v57 = a1;
    v27 = a2;
    v28 = *v24;
    v30 = *(v24 + 16);
    v29 = *(v24 + 24);
    *&v56 = v30;
    *&v55 = v29;

    sub_100081458();
    v31 = sub_100080BA8();
    sub_100080618();

    sub_1000809E8();
    swift_getAtKeyPath();
    v32 = v28;
    a2 = v27;
    a1 = v57;
    sub_1000393D8(v32, v25, v56, v55, 0);
    result = (*(v18 + 8))(v21, v17);
    v26 = *(&v64 + 1);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v33 = *(a1 + *(v23 + 28));
  if (*(v33 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v34 = v33 + 48 * a2;
  sub_100034CC0(*(v34 + 73), &v64);
  v35 = v66;
  v36 = DWORD2(v66);
  v37 = BYTE12(v66);
  v38 = *(sub_100002840(&qword_1000AE5E0, &qword_100088538) + 36);
  v57 = a2;
  v39 = enum case for BlendMode.plusLighter(_:);
  v40 = sub_100080F68();
  v41 = *(*(v40 - 8) + 104);
  v56 = v64;
  v55 = v65;
  v41(&v16[v38], v39, v40);
  v42 = v55;
  *v16 = v56;
  *(v16 + 1) = v42;
  *(v16 + 4) = v35;
  *(v16 + 10) = v36;
  v16[44] = v37;
  v43 = a1 + *(v23 + 32);
  v44 = *(v43 + *(type metadata accessor for ReadingGoalView.ViewConfiguration(0) + 28));
  sub_100080F48();
  sub_1000807E8();
  result = sub_100002840(&qword_1000AE5E8, &qword_100088540);
  v45 = &v16[*(result + 36)];
  v46 = v65;
  *v45 = v64;
  *(v45 + 1) = v46;
  *(v45 + 2) = v66;
  v47 = &v16[*(v62 + 36)];
  *v47 = (v26 + a4) * -0.5;
  *(v47 + 1) = 0;
  if (*(v33 + 16) > v57)
  {
    *&v68[10] = *(v34 + 58);
    v48 = *(v34 + 48);
    v67 = *(v34 + 32);
    *v68 = v48;
    v69 = v67;
    v70 = v48;
    v71 = v48;
    v72 = v67;
    v49 = v68[25];
    sub_1000218B8(&v72, v63);
    sub_1000218B8(&v71, v63);
    v50 = v59;
    sub_1000353C8(&v67, v49, v59, a4);
    sub_100039654(&v72);
    sub_100039654(&v71);
    v51 = v58;
    sub_1000055FC(v16, v58, &qword_1000AE5D8, &qword_100088530);
    v52 = v61;
    sub_1000055FC(v50, v61, &qword_1000AE5D0, &qword_100088528);
    v53 = v60;
    sub_1000055FC(v51, v60, &qword_1000AE5D8, &qword_100088530);
    v54 = sub_100002840(&qword_1000AE5F0, &qword_100088548);
    sub_1000055FC(v52, v53 + *(v54 + 48), &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v50, &qword_1000AE5D0, &qword_100088528);
    sub_100005B2C(v16, &qword_1000AE5D8, &qword_100088530);
    sub_100005B2C(v52, &qword_1000AE5D0, &qword_100088528);
    return sub_100005B2C(v51, &qword_1000AE5D8, &qword_100088530);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100038444(char *a1, char a2, int a3)
{
  v85 = a3;
  v5 = sub_100080248();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AE678, &unk_100088608);
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v16 = sub_1000811A8();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v88 = sub_100080478();
  v84 = *(v88 - 8);
  v18 = *(v84 + 64);
  v19 = __chkstk_darwin(v88);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v79 - v22;
  v24 = sub_1000811C8();
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  __chkstk_darwin(v26);
  v87 = v21;
  v89 = v29;
  if ((a2 & 1) == 0)
  {
    v80 = &v79 - v27;
    v86 = v28;
    sub_100081198();
    v91._countAndFlagsBits = 0;
    v91._object = 0xE000000000000000;
    sub_100081188(v91);
    v90 = a1;
    sub_100080438();
    sub_100039B5C();
    sub_100080218();
    sub_100080238();
    sub_100080228();
    (*(v81 + 8))(v8, v82);
    v48 = *(v83 + 8);
    v48(v13, v9);
    sub_100005C98(&qword_1000AE688, &qword_1000AE678, &unk_100088608);
    sub_1000057D0();
    sub_100081168();
    v48(v15, v9);
    v92._countAndFlagsBits = 0x74656C706D6F6320;
    v92._object = 0xE900000000000065;
    sub_100081188(v92);
    v49 = v80;
    sub_1000811B8();
    sub_100080448();
    v50 = v89;
    v51 = v49;
    (*(v89 + 16))(v86, v49, v24);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_100080448();
    v83 = sub_100081258();
    v40 = v54;
    v30 = v84;
    (*(v84 + 8))(v23, v88);
    v41 = v51;
    (*(v50 + 8))(v51, v24);
    v43 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = *(v43 + 2);
    v55 = *(v43 + 3);
    v46 = v45 + 1;
    v42 = v24;
    if (v45 >= v55 >> 1)
    {
LABEL_17:
      v43 = sub_10003EE4C((v55 > 1), v46, 1, v43);
    }

LABEL_7:
    v47 = v85;
LABEL_8:
    *(v43 + 2) = v46;
    v56 = &v43[16 * v45];
    *(v56 + 4) = v83;
    *(v56 + 5) = v40;
    v28 = v86;
    v57 = v87;
    v58 = v89;
    goto LABEL_9;
  }

  v30 = v84;
  v31 = v88;
  if (!a1)
  {
    v72 = v28;
    v73 = &v79 - v27;
    sub_100081158();
    sub_100080448();
    v74 = v89;
    (*(v89 + 16))(v72, v73, v24);
    type metadata accessor for BundleFinder();
    v75 = swift_getObjCClassFromMetadata();
    v76 = [objc_opt_self() bundleForClass:v75];
    v77 = v31;
    (*(v30 + 16))(v87, v23, v31);
    v86 = v72;
    v83 = sub_100081268();
    v40 = v78;
    (*(v30 + 8))(v23, v77);
    v41 = v73;
    v42 = v24;
    (*(v74 + 8))(v73, v24);
    v43 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = *(v43 + 2);
    v55 = *(v43 + 3);
    v46 = v45 + 1;
    if (v45 >= v55 >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v32 = v24;
  if (a1 == 1)
  {
    v33 = v28;
    v34 = &v79 - v27;
    sub_100081158();
    sub_100080448();
    v35 = v89;
    (*(v89 + 16))(v33, v34, v24);
    type metadata accessor for BundleFinder();
    v36 = swift_getObjCClassFromMetadata();
    v37 = [objc_opt_self() bundleForClass:v36];
    v38 = v31;
    (*(v30 + 16))(v87, v23, v31);
    v86 = v33;
    v83 = sub_100081268();
    v40 = v39;
    (*(v30 + 8))(v23, v38);
    v41 = v34;
    v42 = v32;
    (*(v35 + 8))(v34, v32);
    v43 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    v46 = v45 + 1;
    v47 = v85;
    if (v45 >= v44 >> 1)
    {
      v43 = sub_10003EE4C((v44 > 1), v45 + 1, 1, v43);
    }

    goto LABEL_8;
  }

  v42 = v24;
  v41 = &v79 - v27;
  v43 = _swiftEmptyArrayStorage;
  v47 = v85;
  v57 = v87;
  v58 = v89;
LABEL_9:
  if (v47 <= 3u)
  {
    v59 = v28;
    sub_100081158();
    sub_100080448();
    v60 = *(v58 + 16);
    v79 = v42;
    v60(v59, v41, v42);
    type metadata accessor for BundleFinder();
    v61 = swift_getObjCClassFromMetadata();
    v62 = [objc_opt_self() bundleForClass:v61];
    v63 = v88;
    (*(v30 + 16))(v57, v23, v88);
    v64 = sub_100081268();
    v66 = v65;
    (*(v30 + 8))(v23, v63);
    (*(v58 + 8))(v41, v79);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_10003EE4C(0, *(v43 + 2) + 1, 1, v43);
    }

    v68 = *(v43 + 2);
    v67 = *(v43 + 3);
    if (v68 >= v67 >> 1)
    {
      v43 = sub_10003EE4C((v67 > 1), v68 + 1, 1, v43);
    }

    *(v43 + 2) = v68 + 1;
    v69 = &v43[16 * v68];
    *(v69 + 4) = v64;
    *(v69 + 5) = v66;
  }

  v90 = v43;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100005C98(&qword_1000ACE58, &qword_1000ACE50, &qword_1000881F0);
  v70 = sub_100081128();

  return v70;
}

uint64_t sub_100038EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = v2 + *(v5 + 44);
  sub_1000807F8();
  if (v9 >= 297.0)
  {
    v10 = 36.0;
  }

  else
  {
    v10 = 30.0;
  }

  *a2 = sub_100080A28();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = *(sub_100002840(&qword_1000AE568, &unk_1000884C8) + 44);
  v12 = *(*(v3 + *(v5 + 36)) + 16);
  v16[0] = 0;
  v16[1] = v12;
  swift_getKeyPath();
  sub_1000390F8(v3, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_100039A94(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ReadingGoalView);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_100002840(&qword_1000AE570, &qword_1000884F0);
  sub_100002840(&qword_1000AE578, &qword_1000884F8);
  sub_100039490();
  sub_100039570();
  return sub_100080F28();
}

uint64_t sub_1000390F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingGoalView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003915C()
{
  v1 = type metadata accessor for ReadingGoalView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100002840(&qword_1000ACA28, &qword_1000861E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000807B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = &v5[v1[5]];
  sub_1000393D8(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), v8[32]);
  v9 = v1[6];
  sub_100002840(&qword_1000ACA98, &qword_1000864C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100081008();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  else
  {
    v11 = *&v5[v9];
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *&v5[v1[7]];

  v14 = &v5[v1[8]];
  v15 = sub_100080CD8();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *(type metadata accessor for ReadingGoalView.ViewConfiguration(0) + 20);
  v17 = sub_100080C58();
  (*(*(v17 - 8) + 8))(&v14[v16], v17);
  v18 = v1[9];
  v19 = sub_100080808();
  (*(*(v19 - 8) + 8))(&v5[v18], v19);

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_1000393D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000393E4(unint64_t *a1)
{
  v3 = *(type metadata accessor for ReadingGoalView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100034564(a1, v1 + v4, v5);
}

unint64_t sub_100039490()
{
  result = qword_1000AE580;
  if (!qword_1000AE580)
  {
    sub_100004FC8(&qword_1000AE570, &qword_1000884F0);
    sub_10003951C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE580);
  }

  return result;
}

unint64_t sub_10003951C()
{
  result = qword_1000AE588;
  if (!qword_1000AE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE588);
  }

  return result;
}

unint64_t sub_100039570()
{
  result = qword_1000AE590;
  if (!qword_1000AE590)
  {
    sub_100004FC8(&qword_1000AE578, &qword_1000884F8);
    sub_100005C98(&qword_1000AE598, &qword_1000AE5A0, &qword_100088500);
    sub_100005C98(&qword_1000AE5A8, &qword_1000AE5B0, &qword_100088508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE590);
  }

  return result;
}

unint64_t sub_1000396A8()
{
  result = qword_1000AE650;
  if (!qword_1000AE650)
  {
    sub_100004FC8(&qword_1000AE610, &qword_100088568);
    type metadata accessor for CircularProgressView(255);
    sub_1000397C4(&qword_1000AE658, type metadata accessor for CircularProgressView);
    swift_getOpaqueTypeConformance2();
    sub_1000397C4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE650);
  }

  return result;
}

uint64_t sub_1000397C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003980C()
{
  result = qword_1000AE660;
  if (!qword_1000AE660)
  {
    sub_100004FC8(&qword_1000AE640, &qword_100088598);
    sub_100004FC8(&qword_1000AE630, &qword_100088588);
    type metadata accessor for FilledCircleWithLabel();
    sub_1000397C4(&qword_1000AE648, type metadata accessor for FilledCircleWithLabel);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000397C4(&qword_1000ACB10, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE660);
  }

  return result;
}

unint64_t sub_10003996C()
{
  result = qword_1000AE668;
  if (!qword_1000AE668)
  {
    sub_100004FC8(&qword_1000AE628, &qword_100088580);
    sub_10003980C();
    sub_1000396A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE668);
  }

  return result;
}

unint64_t sub_1000399F8()
{
  result = qword_1000AE670;
  if (!qword_1000AE670)
  {
    sub_100004FC8(&qword_1000AE600, &qword_100088558);
    sub_1000396A8();
    sub_10003980C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE670);
  }

  return result;
}

uint64_t sub_100039A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100039B5C()
{
  result = qword_1000AE680;
  if (!qword_1000AE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE680);
  }

  return result;
}

unint64_t sub_100039BB0()
{
  result = qword_1000AE6A0;
  if (!qword_1000AE6A0)
  {
    sub_100004FC8(&qword_1000AE690, &qword_100088618);
    sub_100039C3C();
    sub_100039CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6A0);
  }

  return result;
}

unint64_t sub_100039C3C()
{
  result = qword_1000AE6A8;
  if (!qword_1000AE6A8)
  {
    sub_100004FC8(&qword_1000AE6B0, &qword_100088628);
    sub_100005C98(&qword_1000AE6B8, &qword_1000AE698, &qword_100088620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6A8);
  }

  return result;
}

unint64_t sub_100039CEC()
{
  result = qword_1000AE6C0;
  if (!qword_1000AE6C0)
  {
    sub_100004FC8(&qword_1000AE6C8, &qword_100088630);
    sub_100005C98(&qword_1000AE6D0, &qword_1000AE6D8, &qword_100088638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6C0);
  }

  return result;
}

void sub_100039DE0(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4)
{
  v8 = sub_100080608();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[2] = a1;
  v22[3] = a2;

  v23._countAndFlagsBits = 45;
  v23._object = 0xE100000000000000;
  sub_1000812A8(v23);
  v13 = 0xEE007265766F4364;
  v14 = 0x6574616572746E75;
  v15 = 0xEC0000007265766FLL;
  v16 = 0x436E6F6349707061;
  if (a3 != 2)
  {
    v16 = 0xD000000000000010;
    v15 = 0x8000000100082F90;
  }

  if (a3)
  {
    v14 = 0x706F72646B636162;
    v13 = 0xE800000000000000;
  }

  if (a3 <= 1u)
  {
    v17._countAndFlagsBits = v14;
  }

  else
  {
    v17._countAndFlagsBits = v16;
  }

  if (a3 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  v17._object = v18;
  sub_1000812A8(v17);

  v24._countAndFlagsBits = 64;
  v24._object = 0xE100000000000000;
  sub_1000812A8(v24);
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a4 < 9.22337204e18)
  {
    v22[1] = a4;
    v25._countAndFlagsBits = sub_100081608();
    sub_1000812A8(v25);

    v26._countAndFlagsBits = 120;
    v26._object = 0xE100000000000000;
    sub_1000812A8(v26);
    v19 = sub_1000811D8();

    sub_1000805D8();
    isa = sub_1000805C8().super.isa;
    (*(v9 + 8))(v12, v8);
    v21 = [v19 stringByAppendingPathExtensionForType:isa];

    sub_100081218();
    return;
  }

LABEL_17:
  __break(1u);
}