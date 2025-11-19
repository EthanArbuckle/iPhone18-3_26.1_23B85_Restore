void *sub_86D20()
{
  v1 = v0;
  sub_70674(&qword_EF968, &qword_A6208);
  v2 = *v0;
  v3 = sub_9240C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_852F0(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 120;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 80);
      v22 = *(v21 + 96);
      v24 = *(v21 + 64);
      *(v43 + 15) = *(v21 + 111);
      v42 = v23;
      v43[0] = v22;
      v41 = v24;
      v26 = *v21;
      v25 = *(v21 + 16);
      v27 = *(v21 + 48);
      v39 = *(v21 + 32);
      v40 = v27;
      v37 = v26;
      v38 = v25;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v29 = *(v4 + 56) + v16;
      v30 = v37;
      v31 = v38;
      v32 = v40;
      *(v29 + 32) = v39;
      *(v29 + 48) = v32;
      *v29 = v30;
      *(v29 + 16) = v31;
      v33 = v41;
      v34 = v42;
      v35 = v43[0];
      *(v29 + 111) = *(v43 + 15);
      *(v29 + 80) = v34;
      *(v29 + 96) = v35;
      *(v29 + 64) = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

unint64_t sub_86F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_70674(&qword_EF968, &qword_A6208);
  v3 = sub_9242C();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38[0] = v4;
  *(v38 + 15) = *(a1 + 159);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_8715C(&v31, v30);
  result = sub_8C000(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 168);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 120 * result;
    v15 = v32;
    v16 = v33;
    v17 = v35;
    *(v14 + 32) = v34;
    *(v14 + 48) = v17;
    *v14 = v15;
    *(v14 + 16) = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38[0];
    *(v14 + 111) = *(v38 + 15);
    *(v14 + 80) = v19;
    *(v14 + 96) = v20;
    *(v14 + 64) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 136);
    v25 = v12[7];
    v37 = v12[6];
    v38[0] = v25;
    *(v38 + 15) = *(v12 + 127);
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_8715C(&v31, v30);
    result = sub_8C000(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_870BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_9223C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_8570C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_8715C(uint64_t a1, uint64_t a2)
{
  v4 = sub_70674(&qword_EF970, &qword_A6210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_871CC()
{
  v1 = sub_70674(&unk_EF978, &qword_A6218);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_87260(unint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_70674(&unk_EF978, &qword_A6218) - 8) + 80);

  return sub_84474(a1, a2);
}

uint64_t sub_872EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_87304()
{
  result = qword_EF920;
  if (!qword_EF920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_EF920);
  }

  return result;
}

void sub_87350(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 storeID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_9202C();
    v61 = v7;
    v62 = v6;

    v8 = [a1 assetID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_9202C();
      v59 = v11;
      v60 = v10;
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    v19 = [a1 path];
    if (v19)
    {
      v20 = v19;
      v21 = sub_9202C();
      v57 = v22;
      v58 = v21;
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    v23 = [a1 purchasedDSID];
    if (v23)
    {
      v24 = v23;
      v25 = sub_9202C();
      v53 = v26;
      v55 = v25;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v27 = [a1 downloadedDSID];
    if (v27)
    {
      v28 = v27;
      v29 = sub_9202C();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = [a1 familyID];
    if (v32)
    {
      v33 = v32;
      v34 = sub_9202C();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = [a1 dataSourceIdentifier];
    v38 = sub_9202C();
    v40 = v39;

    v41 = [a1 contentType];
    v42 = [a1 isOwned];

    if (v42)
    {
      v43 = 0x10000;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 & 0xFFFF0000 | v41;
    v46 = v61;
    v45 = v62;
    v48 = v59;
    v47 = v60;
    v50 = v57;
    v49 = v58;
    v52 = v54;
    v51 = v56;
  }

  else
  {
    if (qword_EF270 != -1)
    {
      swift_once();
    }

    v12 = sub_91F0C();
    sub_70710(v12, qword_F07A8);
    v13 = a1;
    v14 = sub_91EEC();
    v15 = sub_9227C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_0, v14, v15, "[WTR-members] Received WTR collection member asset: %@ without store ID", v16, 0xCu);
      sub_82358(v17);
    }

    else
    {
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v45 = 0;
    v46 = 0;
    v51 = 0;
    v52 = 0;
    v29 = 0;
    v31 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
    v44 = 0;
  }

  *a2 = v47;
  *(a2 + 8) = v48;
  *(a2 + 16) = v49;
  *(a2 + 24) = v50;
  *(a2 + 32) = v45;
  *(a2 + 40) = v46;
  *(a2 + 48) = v51;
  *(a2 + 56) = v52;
  *(a2 + 64) = v29;
  *(a2 + 72) = v31;
  *(a2 + 80) = v34;
  *(a2 + 88) = v36;
  *(a2 + 96) = v38;
  *(a2 + 104) = v40;
  *(a2 + 112) = v44;
  *(a2 + 114) = BYTE2(v44);
}

_OWORD *sub_876C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_876D8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_87704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 115))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8774C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AccountsObserver()
{
  result = qword_EFA48;
  if (!qword_EFA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8791C()
{
  sub_879B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_879B8()
{
  if (!qword_EFA58)
  {
    sub_7F058(&unk_EFA60, &qword_A5F50);
    v0 = sub_921CC();
    if (!v1)
    {
      atomic_store(v0, &qword_EFA58);
    }
  }
}

uint64_t sub_87A1C()
{
  v1 = sub_70674(&unk_EF740, &qword_A62E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - v4;
  v6 = sub_70674(&unk_EFA70, &qword_A62E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC9BKLibraryP33_05F439DD99DBF9E3F4595B1087281DC916AccountsObserver_continuation, v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = [Strong activeStoreAccount];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  v14[1] = v12;
  sub_921BC();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_87C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_87C2C, 0, 0);
}

uint64_t sub_87C2C()
{
  v1 = v0[8];
  sub_91DFC();
  if (v0[5])
  {
    if (swift_dynamicCast())
    {
      if (v0[6] == v0[9] && v0[7] == v0[10])
      {
        v7 = v0[7];

        v4 = 1;
      }

      else
      {
        v3 = v0[7];
        v4 = sub_9247C();
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_87D24((v0 + 2));
  }

  v4 = 0;
LABEL_10:
  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_87D24(uint64_t a1)
{
  v2 = sub_70674(&qword_EFA80, &unk_A6300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_87D8C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to dispatch thunk of BCCloudGlobalMetadataManaging.fetchBool(forKey:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_87E4C;

  return dispatch thunk of BCCloudGlobalMetadataManaging.fetchBool(forKey:)(0xD000000000000023, 0x80000000000B4FA0, a1, a2);
}

uint64_t sub_87E4C(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_87F88, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_87F88()
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_91F0C();
  sub_70710(v2, qword_F07A8);
  swift_errorRetain();
  v3 = sub_91EEC();
  v4 = sub_9227C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "[Metadata] Failed to get notificationsEnabled: %@", v7, 0xCu);
    sub_82358(v8);
  }

  else
  {
    v10 = *(v0 + 24);
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_88120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a1;
  v7 = async function pointer to dispatch thunk of BCCloudGlobalMetadataManaging.update(_:forKey:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_881F4;

  return dispatch thunk of BCCloudGlobalMetadataManaging.update(_:forKey:)(a1, 0xD000000000000023, 0x80000000000B4FA0, a2, a3);
}

uint64_t sub_881F4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_88328, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_88328()
{
  if (qword_EF270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_91F0C();
  sub_70710(v2, qword_F07A8);
  swift_errorRetain();
  v3 = sub_91EEC();
  v4 = sub_9227C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 10) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v3, v4, "[Metadata] Failed to set notificationsEnabled → %{BOOL}d: %@", v8, 0x12u);
    sub_82358(v9);
  }

  else
  {
    v11 = *(v0 + 24);
  }

  v12 = *(v0 + 8);

  return v12();
}

id PriceTrackingKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PriceTrackingKeys();
  return objc_msgSendSuper2(&v2, "init");
}

id PriceTrackingKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PriceTrackingKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_885F8()
{
  v0 = sub_91F0C();
  sub_7F6C4(v0, qword_EFAB0);
  sub_70710(v0, qword_EFAB0);
  return sub_91EFC();
}

unint64_t BKLibraryAssetProvider.appIntentsLibraryAssets(withTypes:searchTerm:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_EF278 != -1)
  {
    swift_once();
  }

  v8 = sub_91F0C();
  sub_70710(v8, qword_EFAB0);

  v9 = sub_91EEC();
  v10 = sub_9228C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v11 = 136315394;
    sub_7E338(0, &qword_EFAC8, NSNumber_ptr);
    v12 = sub_920FC();
    v14 = a4;
    v15 = sub_88FBC(v12, v13, v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (a3)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0x3E6C696E3CLL;
    }

    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = sub_88FBC(v16, v17, v24);
    a4 = v14;

    *(v11 + 14) = v18;
    _os_log_impl(&dword_0, v9, v10, "Requested for an asset using contentTypes:%s, term:%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = sub_8990C(a2, a3);
  v20 = sub_89A84(a2, a3);
  v22 = sub_889EC(a1, v19, v20, v21, a4);

  return v22;
}

unint64_t sub_889EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = v5;
  result = sub_88C58(a1, a2, 0, a5, 0, 1);
  if (!v6)
  {
    if (result >> 62)
    {
      v21 = result;
      v22 = sub_923EC();
      result = v21;
      if (v22)
      {
        return result;
      }
    }

    else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      return result;
    }

    if (a4)
    {

      if (qword_EF278 != -1)
      {
        swift_once();
      }

      v12 = sub_91F0C();
      sub_70710(v12, qword_EFAB0);

      v13 = sub_91EEC();
      v14 = sub_9228C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_88FBC(a3, a4, &v23);
        _os_log_impl(&dword_0, v13, v14, "appIntentsLibraryAssetsForSearchPredicate: spotlight search query: %s", v15, 0xCu);
        sub_7E6F0(v16);
      }

      sub_7E338(0, &qword_EFAC8, NSNumber_ptr);
      isa = sub_920DC().super.isa;
      v18 = sub_91FFC();
      v19 = [v7 spotlightAssetsWithContentTypes:isa searchQueryString:v18 inManagedObjectContext:a5];

      sub_7E338(0, &qword_EF920, &off_D4AA8);
      v20 = sub_920EC();

      return v20;
    }
  }

  return result;
}

uint64_t sub_88C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = objc_opt_self();
  sub_7E338(0, &qword_EFAC8, NSNumber_ptr);
  isa = sub_920DC().super.isa;
  v13 = [v11 predicateForAssetsAvailableToAppIntentsWithTypes:isa];

  if (a2)
  {
    sub_70674(&qword_EF660, &qword_A5DE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_A6370;
    *(v14 + 32) = v13;
    *(v14 + 40) = a2;
    sub_7E338(0, &qword_EFAE8, NSPredicate_ptr);
    v15 = a2;
    v16 = v13;
    v17 = sub_920DC().super.isa;

    v18 = [objc_opt_self() andPredicateWithSubpredicates:v17];
  }

  else
  {
    v18 = v13;
  }

  sub_7E338(0, &qword_EF920, &off_D4AA8);
  v19 = v18;
  sub_70674(&qword_EFAD8, &qword_A6398);
  sub_9206C();
  v20 = objc_allocWithZone(NSFetchRequest);
  v21 = sub_91FFC();

  v22 = [v20 initWithEntityName:v21];

  [v22 setReturnsObjectsAsFaults:0];
  [v22 setPredicate:v19];

  v23 = [v7 sortDescriptorsForMode:3 collectionID:kBKCollectionDefaultAll];
  if (!v23)
  {
    sub_7E338(0, &qword_EFAE0, NSSortDescriptor_ptr);
    sub_920EC();
    v23 = sub_920DC().super.isa;
  }

  sub_7E338(0, &qword_EFAE0, NSSortDescriptor_ptr);
  v24 = sub_920EC();
  if (a3)
  {

    sub_89604(v24);
    v23 = sub_920DC().super.isa;
  }

  [v22 setSortDescriptors:v23];

  if ((a6 & 1) == 0)
  {
    [v22 setFetchLimit:a5];
  }

  v25 = sub_922CC();

  return v25;
}

uint64_t sub_88FBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_89088(v11, 0, 0, 1, a1, a2);
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
    sub_7E740(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7E6F0(v11);
  return v7;
}

unint64_t sub_89088(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_89194(a5, a6);
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
    result = sub_9237C();
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

char *sub_89194(uint64_t a1, unint64_t a2)
{
  v4 = sub_891E0(a1, a2);
  sub_89310(&off_D7900);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_891E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_893FC(v5, 0);
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

  result = sub_9237C();
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
        v10 = sub_920AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_893FC(v10, 0);
        result = sub_9232C();
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

uint64_t sub_89310(uint64_t result)
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

  result = sub_89470(result, v12, 1, v3);
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

void *sub_893FC(uint64_t a1, uint64_t a2)
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

  sub_70674(&qword_EFAD0, &qword_A6390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_89470(char *result, int64_t a2, char a3, char *a4)
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
    sub_70674(&qword_EFAD0, &qword_A6390);
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

uint64_t sub_89564(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_923EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_9236C();
  *v1 = result;
  return result;
}

uint64_t sub_89604(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_923EC();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_923EC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_89564(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_896F4(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_896F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_923EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_923EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_89B34();
          for (i = 0; i != v6; ++i)
          {
            sub_70674(&qword_EFAF0, &qword_A63A0);
            v9 = sub_89884(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_7E338(0, &qword_EFAE0, NSSortDescriptor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_89884(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_9235C();
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
    *v3 = v4;
    return sub_89904;
  }

  __break(1u);
  return result;
}

uint64_t sub_8990C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_706BC();

  if (sub_9225C())
  {
    sub_7E338(0, &qword_EFAE8, NSPredicate_ptr);
    sub_70674(&qword_EFB00, &qword_A63A8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_A6380;
    *(v4 + 56) = &type metadata for String;
    v5 = sub_89B98();
    *(v4 + 32) = 0x656C746974;
    *(v4 + 40) = 0xE500000000000000;
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v5;
    *(v4 + 64) = v5;
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 136) = &type metadata for String;
    *(v4 + 144) = v5;
    *(v4 + 112) = 0xD00000000000001DLL;
    *(v4 + 120) = 0x80000000000B54B0;
    *(v4 + 176) = &type metadata for String;
    *(v4 + 184) = v5;
    *(v4 + 152) = a1;
    *(v4 + 160) = a2;
    *(v4 + 216) = &type metadata for String;
    *(v4 + 224) = v5;
    *(v4 + 192) = 0x726F68747561;
    *(v4 + 200) = 0xE600000000000000;
    *(v4 + 256) = &type metadata for String;
    *(v4 + 264) = v5;
    *(v4 + 232) = a1;
    *(v4 + 240) = a2;
    swift_bridgeObjectRetain_n();
    return sub_9226C();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_89A84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_opt_self();
    v4 = sub_91FFC();
    isa = sub_920DC().super.isa;
    v6 = [v3 spotlightQueryStringForSearchString:v4 attributes:isa];

    a1 = sub_9202C();
  }

  return a1;
}

unint64_t sub_89B34()
{
  result = qword_EFAF8;
  if (!qword_EFAF8)
  {
    sub_7F058(&qword_EFAF0, &qword_A63A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFAF8);
  }

  return result;
}

unint64_t sub_89B98()
{
  result = qword_EFB08;
  if (!qword_EFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFB08);
  }

  return result;
}

id NSUserDefaults.priceTrackerEnabledOverride.getter()
{
  v1 = sub_91FFC();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t NSUserDefaults.priceTrackerUpdateScheduleStepsOverride.getter()
{
  v1 = sub_91FFC();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_9202C();

  return v3;
}

uint64_t sub_89D78()
{
  v0 = sub_70674(&qword_EFB10, &qword_A63B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_70674(&qword_EFB18, &qword_A63B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = [objc_opt_self() defaultCenter];
  v5 = BDSPriceTrackerCardListDidChangeObject;
  v6 = sub_9202C();
  v8 = v7;
  v9 = v5;
  v10 = sub_922AC();

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  v17 = v10;
  sub_9229C();
  sub_7EE6C();
  sub_9243C();
  sub_7F3D0(&qword_EFB20, &qword_EFB10, &qword_A63B0);
  sub_923DC();

  swift_unknownObjectWeakInit();
  v12 = swift_unknownObjectWeakAssign();
  sub_8B638(v12, v16);
  v13 = swift_allocObject();
  sub_8B638(v16, v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_A63D8;
  *(v14 + 24) = v13;
  sub_70674(&qword_EFB30, &unk_A63F0);
  sub_7F3D0(&qword_EFB38, &qword_EFB18, &qword_A63B8);
  return sub_923DC();
}

id NSUserDefaults.priceTrackerHasShownOptInAlert.getter()
{
  v1 = sub_91FFC();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.priceTrackerHasShownOptInAlert.setter(char a1)
{
  v3 = sub_91FFC();
  [v1 setBool:a1 & 1 forKey:v3];
}

uint64_t sub_8A16C()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong stringForKey:BDSPriceTrackerCardList];
    if (v4)
    {
      v5 = v4;
      v6 = sub_9202C();
      v8 = v7;

      v9 = v8;
      Strong = v6;
      goto LABEL_6;
    }

    Strong = 0;
  }

  v9 = 0;
LABEL_6:
  v10 = *(v0 + 8);

  return v10(Strong, v9);
}

uint64_t sub_8A230(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_8A31C;

  return v7();
}

uint64_t sub_8A31C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  v6[1] = a2;
  v7 = *(v9 + 8);

  return v7();
}

void NSUserDefaults.priceTrackerEnabledOverride.setter(char a1)
{
  v3 = sub_91FFC();
  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.priceTrackerEnabledOverride.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_91FFC();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_8A534;
}

void sub_8A534(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_91FFC();
  [v1 setBool:v2 forKey:v3];
}

void sub_8A5AC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_91FFC();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = sub_9202C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_8A644(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_91FFC();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_91FFC();
  [v2 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.priceTrackerUpdateScheduleStepsOverride.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_91FFC();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_91FFC();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.priceTrackerUpdateScheduleStepsOverride.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_91FFC();
  v4 = [v1 stringForKey:v3];

  if (v4)
  {
    v5 = sub_9202C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_8A834;
}

uint64_t sub_8A834(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = a1[1];

      v6 = sub_91FFC();
    }

    else
    {
      v6 = 0;
    }

    v9 = a1[2];
    v10 = sub_91FFC();
    [v9 setObject:v6 forKey:v10];
  }

  else
  {
    if (v3)
    {
      v7 = *a1;
      v8 = sub_91FFC();
    }

    else
    {
      v8 = 0;
    }

    v11 = a1[2];
    v10 = sub_91FFC();
    [v11 setObject:v8 forKey:v10];
  }

  return swift_unknownObjectRelease();
}

void sub_8A954(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = sub_9220C().super.super.isa;
  }

  v5 = sub_91FFC();
  [v2 setObject:isa forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.priceTrackerDealAbsoluteThresholdOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_9220C().super.super.isa;
  }

  v4 = sub_91FFC();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_8AA7C()
{
  v1 = sub_91FFC();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_922EC();
    swift_unknownObjectRelease();
    sub_876C8(&v7, v8);
    sub_87D24(v8);
    v3 = sub_91FFC();
    [v0 doubleForKey:v3];
    v5 = v4;

    return v5;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_87D24(v8);
    return 0;
  }
}

uint64_t (*NSUserDefaults.priceTrackerDealAbsoluteThresholdOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_8AA7C();
  *(a1 + 8) = v3 & 1;
  return sub_8ABD0;
}

uint64_t sub_8ABD0(uint64_t *a1)
{
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v3 = *a1;
    isa = sub_9220C().super.super.isa;
  }

  v4 = a1[2];
  v5 = sub_91FFC();
  [v4 setObject:isa forKey:v5];

  return swift_unknownObjectRelease();
}

void sub_8AC68(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = sub_9220C().super.super.isa;
  }

  v5 = sub_91FFC();
  [v2 setObject:isa forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.priceTrackerDealRelativeThresholdOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_9220C().super.super.isa;
  }

  v4 = sub_91FFC();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.priceTrackerDealRelativeThresholdOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_8AA7C();
  *(a1 + 8) = v3 & 1;
  return sub_8ADF8;
}

uint64_t sub_8ADF8(uint64_t *a1)
{
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v3 = *a1;
    isa = sub_9220C().super.super.isa;
  }

  v4 = a1[2];
  v5 = sub_91FFC();
  [v4 setObject:isa forKey:v5];

  return swift_unknownObjectRelease();
}

void sub_8AE90(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = sub_9224C().super.super.isa;
  }

  v5 = sub_91FFC();
  [v2 setObject:isa forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.priceTrackerCardLimitOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = sub_9224C().super.super.isa;
  }

  v4 = sub_91FFC();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

id sub_8AFB4()
{
  v1 = sub_91FFC();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_922EC();
    swift_unknownObjectRelease();
    sub_876C8(&v6, v7);
    sub_87D24(v7);
    v3 = sub_91FFC();
    v4 = [v0 integerForKey:v3];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_87D24(v7);
    return 0;
  }

  return v4;
}

uint64_t (*NSUserDefaults.priceTrackerCardLimitOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_8AFB4();
  *(a1 + 8) = v3 & 1;
  return sub_8B100;
}

uint64_t sub_8B100(uint64_t *a1)
{
  if (a1[1])
  {
    isa = 0;
  }

  else
  {
    v3 = *a1;
    isa = sub_9224C().super.super.isa;
  }

  v4 = a1[2];
  v5 = sub_91FFC();
  [v4 setObject:isa forKey:v5];

  return swift_unknownObjectRelease();
}

void (*NSUserDefaults.priceTrackerHasShownOptInAlert.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_91FFC();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_8B220;
}

void sub_8B220(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_91FFC();
  [v1 setBool:v2 forKey:v3];
}

void sub_8B298(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_91FFC();
  LOBYTE(v3) = [v3 BOOLForKey:v4];

  *a2 = v3;
}

void sub_8B304(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_91FFC();
  [v3 setBool:v2 forKey:v4];
}

uint64_t sub_8B384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_8AA7C();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_8B3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_8AA7C();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

id sub_8B424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_8AFB4();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void sub_8B474(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_91FFC();
  LOBYTE(v3) = [v3 BOOLForKey:v4];

  *a2 = v3;
}

void sub_8B4E0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_91FFC();
  [v3 setBool:v2 forKey:v4];
}

uint64_t sub_8B558()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8B590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_78964;

  return sub_87C08(a1, v5, v4);
}

uint64_t sub_8B638(uint64_t a1, uint64_t a2)
{
  v4 = sub_70674(&qword_EFB28, &qword_A63D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8B6A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8B6E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_7DDCC;

  return sub_8A14C(v0 + 16);
}

uint64_t sub_8B774()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8B7AC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7D670;

  return sub_8A230(a1, a2, v7);
}

void sub_8B874()
{
  v5 = BKLibraryFrameworkBundle();
  if (!v5)
  {
    __break(1u);
LABEL_21:

    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:

    __break(1u);
LABEL_24:

    __break(1u);
LABEL_25:

    __break(1u);
    return;
  }

  v1 = v5;
  v2 = sub_91FFC();
  v3 = sub_91FFC();
  v0 = [v1 localizedStringForKey:v2 value:v3 table:0];

  if (!v0)
  {
    sub_9202C();
    v1 = v6;
    v0 = sub_91FFC();
  }

  v7 = BKLibraryFrameworkBundle();
  if (!v7)
  {
    goto LABEL_21;
  }

  v2 = v7;
  v3 = sub_91FFC();
  v4 = sub_91FFC();
  v1 = [v2 localizedStringForKey:v3 value:v4 table:0];

  if (!v1)
  {
    sub_9202C();
    v2 = v8;
    v1 = sub_91FFC();
  }

  v9 = BKLibraryFrameworkBundle();
  if (!v9)
  {
    goto LABEL_22;
  }

  v3 = v9;
  v4 = sub_91FFC();
  v10 = sub_91FFC();
  v2 = [v3 localizedStringForKey:v4 value:v10 table:0];

  if (!v2)
  {
    sub_9202C();
    v3 = v11;
    v2 = sub_91FFC();
  }

  v12 = BKLibraryFrameworkBundle();
  if (!v12)
  {
    goto LABEL_23;
  }

  v4 = v12;
  v13 = sub_91FFC();
  v14 = sub_91FFC();
  v3 = [v4 localizedStringForKey:v13 value:v14 table:0];

  if (!v3)
  {
    sub_9202C();
    v4 = v15;
    v3 = sub_91FFC();
  }

  v16 = BKLibraryFrameworkBundle();
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = sub_91FFC();
  v19 = sub_91FFC();
  v4 = [v17 localizedStringForKey:v18 value:v19 table:0];

  if (!v4)
  {
    sub_9202C();
    v4 = sub_91FFC();
  }

  v20 = BKLibraryFrameworkBundle();
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = sub_91FFC();
  v23 = sub_91FFC();
  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  if (!v24)
  {
    sub_9202C();
    v24 = sub_91FFC();
  }

  [objc_allocWithZone(BDSDistributedPriceTrackingConfigNotification) initWithTitleSingleAudiobook:v0 titleSingleBook:v1 titleMultiple:v2 bodySingleAudiobook:v3 bodySingleBook:v4 bodyMultiple:v24];
}

uint64_t type metadata accessor for UserDefaultsObserver()
{
  result = qword_EFB70;
  if (!qword_EFB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8BF0C()
{
  sub_8BF9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_8BF9C()
{
  if (!qword_EFB80)
  {
    sub_7F058(&qword_EFA80, &unk_A6300);
    v0 = sub_921CC();
    if (!v1)
    {
      atomic_store(v0, &qword_EFB80);
    }
  }
}

unint64_t sub_8C000(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_924CC();
  sub_9208C();
  v6 = sub_924DC();

  return sub_8C10C(a1, a2, v6);
}

unint64_t sub_8C078(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_9202C();
  sub_924CC();
  sub_9208C();
  v4 = sub_924DC();

  return sub_8C1C4(a1, v4);
}

unint64_t sub_8C10C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_9247C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_8C1C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_9202C();
      v9 = v8;
      if (v7 == sub_9202C() && v9 == v10)
      {
        break;
      }

      v12 = sub_9247C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_8C2C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_70674(&qword_EFB88, &qword_A6420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  if (a2 && *(a2 + 16) && (v8 = sub_8C078(NSKeyValueChangeNewKey), (v9 & 1) != 0))
  {
    sub_7E740(*(a2 + 56) + 32 * v8, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_8C4D8(v14, &v12);
  if (!*(&v13 + 1))
  {
    sub_87D24(&v12);
    goto LABEL_10;
  }

  sub_8C548();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_8C4D8(v14, &v12);
    goto LABEL_11;
  }

  v12 = 0u;
  v13 = 0u;
LABEL_11:
  sub_70674(&qword_EFB90, &qword_A6428);
  sub_921BC();
  (*(v4 + 8))(v7, v3);
  return sub_87D24(v14);
}

unint64_t sub_8C480()
{
  result = qword_EF590;
  if (!qword_EF590)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF590);
  }

  return result;
}

uint64_t sub_8C4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_70674(&qword_EFA80, &unk_A6300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_8C548()
{
  result = qword_EFB98;
  if (!qword_EFB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_EFB98);
  }

  return result;
}

uint64_t type metadata accessor for RestrictionsObserver()
{
  result = qword_EFC30;
  if (!qword_EFC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8C7A4()
{
  sub_8C834();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_8C834()
{
  if (!qword_EFC40)
  {
    v0 = sub_921CC();
    if (!v1)
    {
      atomic_store(v0, &qword_EFC40);
    }
  }
}

uint64_t BKLibraryAsset.finishedDateKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 finishedDateKind];
  if (v3 == 2)
  {
    v9 = &enum case for FinishedDateKind.yearOnly(_:);
  }

  else
  {
    if (v3 != 1)
    {
      v4 = sub_91EDC();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a1;
      v8 = 1;
      goto LABEL_7;
    }

    v9 = &enum case for FinishedDateKind.fullDate(_:);
  }

  v10 = *v9;
  v11 = sub_91EDC();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a1, v10, v11);
  v5 = *(v13 + 56);
  v7 = a1;
  v8 = 0;
  v6 = v11;
LABEL_7:

  return v5(v7, v8, 1, v6);
}

void sub_8C9C4(void *a1)
{
  [a1 sourceFileType];
  v7 = [a1 sourceFilePath];
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_8CA84(void *a1)
{
  [a1 sourceFileType];
  v7 = [a1 sourceFilePath];
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_8CB38(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Preparing to uncompress to total file size: %llu", &v3, 0xCu);
}

void sub_8CBB4()
{
  sub_39A8();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_8CC24(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BKExtractFileOperation _performCopyFromPath: copyItemAtPath failed. error: %@", &v2, 0xCu);
}

void sub_8CC9C()
{
  sub_39E0();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_8CD0C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BKExtractFileOperation _performMoveFromPath: moveItemAtPath failed. error: %@", &v2, 0xCu);
}

void sub_8CD84()
{
  sub_39E0();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_8CDF4()
{
  sub_39E0();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_8CE64()
{
  sub_39A8();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_8CED4(uint64_t a1, void *a2)
{
  [a2 BOOLValue];
  v7 = *__error();
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_8CF9C()
{
  sub_39A8();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_8D00C()
{
  sub_39A8();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_8D07C()
{
  sub_39A8();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_8D0EC()
{
  sub_39A8();
  sub_39D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_8D194(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "setFinishedStateUserSetsFinished: set on series container: %@", &v2, 0xCu);
}

void sub_8D27C(void *a1, NSObject *a2)
{
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "setFinishedStateAddToFinishedCollection set on series container: %@", &v4, 0xCu);
}

void sub_8D3DC()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_8D418()
{
  dlerror();
  v0 = abort_report_np();
  return sub_8D43C(v0);
}

void sub_8D43C()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8D4E0()
{
  sub_3CE80();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8D550()
{
  sub_3CEC0();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8D58C(uint64_t a1, NSObject *a2)
{
  v2[0] = 67109378;
  v2[1] = 360;
  v3 = 2112;
  v4 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "BCCoalescingCallBlock notification block did not call its completion handler after %hus.  Block is the _coalescedLibraryReload on BKLibraryManager %@.", v2, 0x12u);
}

uint64_t sub_8D800(void *a1, uint64_t *a2)
{
  BCReportAssertionFailureWithMessage();
  result = [a1 uiChildContext];
  *a2 = result;
  return result;
}

void sub_8D9CC()
{
  sub_3CEC0();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8DA78(void *a1)
{
  v1 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1 count]);
  sub_3CE80();
  sub_3CE70();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_8DB18(uint64_t a1, uint64_t a2)
{
  v4 = [sub_3CEFC(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_3CF50(&dword_0, v5, v6, "ERROR: Where's the container for %@");
}

void sub_8DBDC()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8DD50()
{
  sub_3CEC0();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8DE08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 componentsJoinedByString:{@", "}];
  sub_3CEE4();
  sub_3CEA8();
  sub_3CE70();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_8DEB4(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_3CE5C();
  sub_3CF10(&dword_0, v2, v3, "Datasource {%@} failed to fetch assets error {%@}");
}

void sub_8DF24()
{
  sub_3CED8();
  v2 = *(v1 + 32);
  v4 = [*(v1 + 40) objectAtIndexedSubscript:v3];
  v5 = [NSNumber numberWithUnsignedInteger:v0];
  sub_3CEA8();
  sub_3CEF0();
  sub_3CE70();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_8DFEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = *a2;
  sub_3CE5C();
  sub_3CE3C(&dword_0, v4, v5, "Datasource {%@} failed to fetch assets error {%@}");
}

void sub_8E0C8()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8E1E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_3CE5C();
  sub_3CECC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_8E2C4(uint64_t a1)
{
  v1 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
  sub_3CEA8();
  sub_3CE70();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_8E3E4(void *a1, NSObject *a2)
{
  v4 = [a1 assetID];
  v5 = [a1 seriesID];
  v7 = 138412546;
  v8 = v4;
  sub_3CEA8();
  v9 = v6;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "StackLog: We should be clearing purchasedAndLocalParent: assetID: %@  seriesID: %@", &v7, 0x16u);
}

void sub_8E4E0(void *a1)
{
  v1 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1 count]);
  sub_3CEA8();
  sub_3CE70();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_8E614(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Expecting either the assetID or the temporaryAssetID to be set", buf, 2u);
}

void sub_8E7C8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 insertedObjects];
  v6 = [v5 valueForKey:@"assetID"];
  v8 = 138412546;
  v9 = a1;
  sub_3CEA8();
  v10 = v7;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Mismatch in insertedIDs: %@ and moc.insertedObjects assetID's:%@", &v8, 0x16u);
}

void sub_8E89C(uint64_t a1, __int16 a2)
{
  v2 = [NSNumber numberWithShort:a2];
  sub_3CEE4();
  sub_3CEA8();
  sub_3CE70();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_8E9B4()
{
  sub_3CED8();
  v2 = [v1 title];
  v3 = [v0 assetID];
  sub_3CEE4();
  sub_3CEA8();
  sub_3CEF0();
  sub_3CE70();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_8EA70()
{
  sub_3CED8();
  v2 = [*(v1 + 40) identifier];
  v3 = *v0;
  sub_3CE80();
  sub_39F8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_8EB18(uint64_t a1)
{
  v1 = [*(a1 + 32) allObjects];
  v2 = [v1 componentsJoinedByString:{@", "}];
  sub_3CE80();
  sub_3CF30(&dword_0, v3, v4, "#datasource STILL pending to be reconciled after 1 minute: [%{public}@]", v5, v6, v7, v8, v9);
}

void sub_8EBC0(uint64_t a1)
{
  v1 = [*(a1 + 32) allObjects];
  v2 = [v1 componentsJoinedByString:{@", "}];
  sub_3CE80();
  sub_3CF30(&dword_0, v3, v4, "#datasource STILL pending to be reconciled after 3 minutes: [%{public}@]", v5, v6, v7, v8, v9);
}

void sub_8F014()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8F050()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8F15C()
{
  sub_3CED8();
  v1 = [v0 seriesID];
  sub_3CE28();
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_8F300(uint64_t a1, uint64_t a2)
{
  v4 = [sub_3CEFC(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_3CF50(&dword_0, v5, v6, "localNonSampleLibraryAssetStoreSummariesExcludeAudiobooks: AssetID: %@ is missing libraryAsset.versionNumber.");
}

void sub_8F35C(void *a1)
{
  v1 = [a1 assetID];
  sub_3CE80();
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_8F464(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_3CE5C();
  sub_3CE3C(&dword_0, v2, v3, "Failed to remove %@ from Want to Read. %@");
}

void sub_8F6DC()
{
  sub_3CEC0();
  sub_3CEB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8F718(uint64_t *a1)
{
  v6 = *a1;
  sub_3CEB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_8F7A4()
{
  sub_3CED8();
  v1 = [v0 storePlaylistID];
  sub_3CE28();
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_8F83C()
{
  sub_3CED8();
  v2 = v1;
  [v1 count];
  v3 = [v0 storePlaylistID];
  v4 = [v2 lastObject];
  sub_3CEA8();
  sub_3CEF0();
  sub_39F8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_8F904(void *a1)
{
  v2 = [a1 assetID];
  [a1 isSupplementalContent];
  sub_3CEE4();
  sub_39F8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_8F9B0()
{
  sub_3CED8();
  v1 = [v0 storePlaylistID];
  sub_3CE28();
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_8FA48()
{
  sub_3CEC0();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8FA84()
{
  sub_3CEC0();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8FAC0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_3CE80();
  sub_39F8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_8FC1C(void *a1)
{
  v2 = [a1 addedObjects];
  v3 = [a1 updatedObjects];
  v4 = [a1 deletedObjects];
  sub_3CEE4();
  sub_3CEA8();
  sub_3CEF0();
  sub_3CE70();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_8FCE8()
{
  sub_3CE80();
  sub_3CECC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8FE98(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *a2;
  sub_3CE5C();
  sub_3CE3C(&dword_0, v4, v5, "#datasource FAILED fetchAssets from: %{public}@ with error=%@");
}

void sub_8FF48(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "BKLibraryAsset asset: %@ readingNowDetailRepresentation %@", &v6, 0x16u);
}

void sub_9000C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error unarchiving asset status controller data: %{public}@", &v2, 0xCu);
}

void sub_90120()
{
  sub_3CED8();
  v1 = [*(v0 + 48) componentsJoinedByString:{@", "}];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "error setting getting global annotations for assetIDs: [%@] error=%@", v4, v5, v6, v7, v8);
}

void sub_901B8()
{
  sub_3CED8();
  v1 = [sub_4DC08(v0) componentsJoinedByString:{@", "}];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "error setting assetDetails for assetIDs: [%@] error=%@", v4, v5, v6, v7, v8);
}

void sub_90280(void *a1)
{
  [a1 count];
  sub_3CE80();
  sub_3CE70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_90300()
{
  sub_3CED8();
  v1 = [sub_4DC08(v0) bu_prettyDescription];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "RND:error setting ReadingNowDetails for assetIDs: [%@] error=%@", v4, v5, v6, v7, v8);
}

void sub_9038C(uint64_t a1)
{
  v1 = [sub_4DC08(a1) bu_prettyDescription];
  sub_3CE80();
  sub_3CE70();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_90418(uint64_t a1)
{
  v1 = [sub_4DC08(a1) bu_prettyDescription];
  sub_3CE80();
  sub_3CE70();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_904D8(void *a1, void *a2, NSObject *a3)
{
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a1 sessionContextType]);
  v7 = [a1 persistentStoreCoordinator];
  v8 = [a2 libraryManager];
  v9 = [v8 persistentStoreCoordinator];
  v10 = 138412802;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  v14 = 1024;
  v15 = [v7 hasStoreInCommonWith:v9];
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "********** NOT DOING ANYTHING. context: %@, context.sessionContextType: %@, [context.persistentStoreCoordinator hasStoreInCommonWith:self.libraryManager.persistentStoreCoordinator]: %{BOOL}d", &v10, 0x1Cu);
}

void sub_905F8(uint64_t a1)
{
  [*(a1 + 32) enableCloudMerge];
  sub_3CE70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_906B4()
{
  sub_3CED8();
  v1 = [sub_4DC08(v0) componentsJoinedByString:{@", "}];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "error retrieving asset details for assetIDs: [%@] error=%@", v4, v5, v6, v7, v8);
}

void sub_90748()
{
  sub_3CED8();
  [*(v0 + 32) count];
  sub_4DBB4();
  sub_3CE70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_907CC()
{
  sub_3CED8();
  v1 = [*(v0 + 48) componentsJoinedByString:{@", "}];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "error retrieving reading now details for assetIDs: [%@] error=%@", v4, v5, v6, v7, v8);
}

void sub_908CC(uint64_t a1)
{
  [*(a1 + 32) count];
  sub_3CE80();
  sub_3CE70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_90984()
{
  sub_3CED8();
  v1 = [*(v0 + 32) allKeys];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "error getting mutable assetDetails for %@: %@", v4, v5, v6, v7, v8);
}

void sub_90A14(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 annotationAssetID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_0, a4, OS_LOG_TYPE_ERROR, "mismatched annotation for %@", a1, 0xCu);
}

void sub_90BC4(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [*(a1 + 48) enableCloudMerge];
  sub_3CE70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_90C70(void *a1)
{
  v1 = [a1 bu_prettyDescription];
  sub_3CE80();
  sub_3CE70();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_90D64()
{
  sub_3CED8();
  v1 = [*(v0 + 48) componentsJoinedByString:{@", "}];
  sub_4DBB4();
  sub_4DBCC(&dword_0, v2, v3, "error retrieving assetDetails for assetIDs: [%@] error=%@", v4, v5, v6, v7, v8);
}

void sub_90E38(void *a1)
{
  v2 = [a1 collectionID];
  v9 = [a1 assetID];
  sub_4DBCC(&dword_0, v3, v4, "BKCollectionMember does not have a valid collectionID: %@ or assetID: %@", v5, v6, v7, v8, 2u);
}

void sub_90EEC(void *a1)
{
  v1 = [a1 collectionID];
  sub_52600();
  sub_4DBCC(&dword_0, v2, v3, "BKCollectionMember Configuring from a deleted collection member %{public}@ != %{public}@", v4, v5, v6, v7, v8);
}

void sub_90F7C(void *a1)
{
  v1 = [a1 collectionID];
  sub_52600();
  sub_4DBCC(&dword_0, v2, v3, "BKCollectionMember invalid update with collectionMember.  Collection ID Mismatch! %{public}@ != %{public}@", v4, v5, v6, v7, v8);
}

void sub_9100C(void *a1)
{
  v1 = [a1 assetID];
  sub_52600();
  sub_4DBCC(&dword_0, v2, v3, "BKCollectionMember invalid update with collectionMember.  Asset ID Mismatch! %{public}@ != %{public}@", v4, v5, v6, v7, v8);
}

void sub_9109C(void *a1, NSObject *a2)
{
  v4 = [a1 assetID];
  v5 = [a1 collection];
  v6 = [v5 title];
  v7 = [a1 asset];
  v8 = [v7 title];
  v9 = 138412802;
  v10 = v4;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BKCollectionMember missing assetID.  Configuring with %@ for collectionMember %@ - %@", &v9, 0x20u);
}

void sub_9126C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 cacheURL];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Error unarchiving product profiles at %{public}@: %{public}@", &v6, 0x16u);
}

void sub_913D8(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to read: %{public}@ -- %{public}@", buf, 0x16u);
}

void sub_91454(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 141558274;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "BKLibrary+BCCacheManager: Timed out waiting for fetchImageForAsset for asset ID %{mask.hash}@", buf, 0x16u);
}

void sub_914C0(uint64_t a1)
{
  [*(*(*a1 + 8) + 40) count];
  sub_3CE80();
  sub_6EFBC(&dword_0, v1, v2, "_performResetCollectionsInMoc signal  %lu", v3, v4, v5, v6, v7);
}

void sub_91660(uint64_t a1)
{
  sub_6EFDC(a1, __stack_chk_guard);
  sub_3CE5C();
  sub_3CE3C(&dword_0, v1, v2, "Failed to remove %@ from Want to Read. %@");
}

void sub_91738(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  sub_3CE5C();
  sub_3CE3C(&dword_0, v4, v5, "Error adding to collection: %@ storeID: %@");
}

void sub_9181C(uint64_t a1)
{
  sub_6EFDC(a1, __stack_chk_guard);
  sub_3CE5C();
  sub_3CE3C(&dword_0, v1, v2, "collectionDetailManager error setting collectionDetails for collectionIDs: %{public}@ error:%@");
}

void sub_91888(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_3CE5C();
  sub_3CE3C(&dword_0, v2, v3, "collectionMemberManager error setting collectionMember memberIDs: %@ error:%@");
}

void sub_918F8(uint64_t a1)
{
  sub_6EFDC(a1, __stack_chk_guard);
  sub_3CE5C();
  sub_3CE3C(&dword_0, v1, v2, "collectionMemberManager warning deleting collectionMember  memberIDs: %@ error:%@");
}

void sub_91964(void *a1)
{
  v1 = [a1 object];
  sub_3CE80();
  sub_6EFBC(&dword_0, v2, v3, "Received moc did save from: %@", v4, v5, v6, v7, v8);
}

void sub_91ABC(void *a1)
{
  [a1 count];
  sub_3CE80();
  sub_6EFBC(&dword_0, v1, v2, "Found %lu BKCollectionMembers with missing asset link. Trying to link them to an existing asset.", v3, v4, v5, v6, v7);
}

void sub_91B9C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_3CE80();
  sub_6EFE8(&dword_0, v2, v3, "Failed to fetch PDF assets, error: %@", v4, v5, v6, v7, v8);
}

void sub_91C20(void *a1)
{
  [a1 count];
  sub_3CE80();
  sub_6EFBC(&dword_0, v1, v2, "#resetCollections: gatherChangedAssetsCollectionsWithLibraryMoc %lu", v3, v4, v5, v6, v7);
}

void sub_91D00(uint64_t a1)
{
  v1 = [*(a1 + 32) storeID];
  sub_3CE80();
  sub_6EFE8(&dword_0, v2, v3, "Error adding storeItem for storeID: %@", v4, v5, v6, v7, v8);
}