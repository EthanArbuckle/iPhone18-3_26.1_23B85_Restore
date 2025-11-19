id sub_12530()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_cancellables;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *&v0[v2];
    }

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v3 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_11288();
      v19 = *&v1[v2];
      *&v1[v2] = &_swiftEmptySetSingleton;

      v22.receiver = v1;
      v22.super_class = ObjectType;
      return objc_msgSendSuper2(&v22, "dealloc");
    }

    while (1)
    {
      sub_53CC8();

      v8 = v16;
      v9 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_127FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_44BC(&qword_777B8, &qword_57750);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_547D8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_547A8();

  v10 = a3;
  v11 = sub_54798();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a1;
  v12[5] = v10;
  sub_12270(0, 0, v8, &unk_576A8, v12);
}

uint64_t sub_12938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_547A8();
  v5[7] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_129D0, v7, v6);
}

uint64_t sub_129D0()
{
  v1 = v0[7];
  v2 = v0[5];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = v3[2];
  if (v4)
  {
    v5 = v0[6];
    v6 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers;
    v7 = *(v5 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_documentsBundleID);
    v8 = *(v5 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_documentsBundleID + 8);

    v36 = v6;
    v37 = v5;
    v33 = v0;
    result = swift_beginAccess();
    v34 = 0;
    v35 = v4;
    v10 = 0;
    while (1)
    {
      if (v10 >= v3[2])
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      v11 = &v3[2 * v10 + 4];
      v13 = *v11;
      v12 = v11[1];
      if (sub_546A8() != v7 || v14 != v8)
      {
        v16 = sub_54BD8();

        if ((v16 & 1) == 0)
        {
          v17 = *(v37 + v36);
          v18 = sub_546A8();
          v20 = v19;

          if (*(v17 + 16))
          {
            v21 = *(v17 + 40);
            sub_54C28();
            sub_546C8();
            v22 = sub_54C58();
            v23 = -1 << *(v17 + 32);
            v24 = v22 & ~v23;
            if ((*(v17 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
            {
              v25 = ~v23;
              while (1)
              {
                v26 = (*(v17 + 48) + 16 * v24);
                v27 = *v26 == v18 && v26[1] == v20;
                if (v27 || (sub_54BD8() & 1) != 0)
                {
                  break;
                }

                v24 = (v24 + 1) & v25;
                if (((*(v17 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }

              if (__OFADD__(v34, 1))
              {
                goto LABEL_35;
              }

              ++v34;
              v4 = v35;
              goto LABEL_23;
            }
          }

LABEL_21:

          v4 = v35;
        }
      }

LABEL_23:
      if (++v10 == v4)
      {
        v0 = v33;
        v28 = v33[6];

        v29 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount;
        v30 = v34;
        if (v34 != *(v28 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount))
        {
          v31 = v33[6];
          sub_7738((v31 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_invalidator), *(v31 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_invalidator + 24));
          sub_54AA8(16);

          v39._countAndFlagsBits = sub_6E88(*(v31 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_id));
          sub_546D8(v39);

          type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
          sub_4B228();

          v30 = v34;
        }

        *(v28 + v29) = v30;
        goto LABEL_31;
      }
    }
  }

LABEL_31:
  v32 = v0[1];

  return v32();
}

uint64_t sub_12D50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_54748();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

__n128 sub_12DE8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_id);
  v6 = sub_53918();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v31 = v5;
  sub_4AC4(v5);
  v29 = sub_541F8();
  v9 = v8;
  v27 = v10;
  v12 = v11;
  sub_54058();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_54048(v53);
  v43[0] = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_appsCount);
  sub_54028();
  v54._countAndFlagsBits = 0x7370706120;
  v54._object = 0xE500000000000000;
  sub_54048(v54);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v13 = qword_7BBF8;
  v14 = sub_541D8();
  v32[104] = v27 & 1;
  v32[96] = v15 & 1;
  v33[0] = v5;
  v34 = v29;
  v35 = v9;
  v36 = v27 & 1;
  *&v37 = v12;
  *(&v37 + 1) = v14;
  v38 = v16;
  v39 = v15 & 1;
  v41 = 0;
  v40 = v17;
  v42 = -1;
  LOBYTE(v43[0]) = v5;
  v43[1] = v29;
  v43[2] = v9;
  v44 = v27 & 1;
  v45 = v12;
  v46 = v14;
  v47 = v16;
  v48 = v15 & 1;
  v50 = 0;
  v51 = 0;
  v49 = v17;
  v52 = -1;
  sub_13C90(v33, v32);
  sub_13CEC(v43);
  v30 = v34;
  v18 = v35;
  v19 = v38;
  v26 = v40;
  v28 = v37;
  v20 = v41;
  v21 = v42;
  v22 = v33[0] & 0x3F;
  v23 = v36 & 1;
  v24 = v39 | 0x8000000000000000;
  sub_130D4(v1);
  *a1 = v31;
  *(a1 + 8) = v22;
  *(a1 + 16) = v30;
  *(a1 + 24) = v18;
  *(a1 + 32) = v23;
  result = v26;
  *(a1 + 40) = v28;
  *(a1 + 56) = v19;
  *(a1 + 64) = v24;
  *(a1 + 72) = v26;
  *(a1 + 88) = v20;
  *(a1 + 96) = v21;
  return result;
}

uint64_t sub_130D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_cancellables;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(v4 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v4 < 0)
  {
    v5 = *(a1 + v2);
  }

  v6 = *(a1 + v2);

  v7 = sub_54A18();

  if (!v7)
  {
LABEL_7:
    v8 = sub_548B8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v13 = [objc_opt_self() defaultCenter];
    if (qword_76F90 != -1)
    {
      swift_once();
    }

    sub_548C8();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_11EB8();
    sub_53D98();

    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    sub_53CB8();
    swift_endAccess();
  }

  return result;
}

__n128 sub_13354@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_12DE8(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_133B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_547A8();
  v5[10] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_1344C, v7, v6);
}

id sub_1344C()
{
  v37 = v0;
  v1 = v0[10];
  v2 = v0[8];

  if (!v2 || (v3 = sub_1733C(v0[8])) == 0)
  {
LABEL_22:
    v30 = v0[1];

    return v30();
  }

  v4 = v3;
  aBlock = v0 + 2;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_27:
    v6 = sub_54B58();
  }

  else
  {
    v6 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = v0[9];
  v33 = v6;
  if (!v6)
  {
LABEL_21:

    v25 = *&v7[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager];
    v26 = swift_allocObject();
    *(v26 + 16) = v7;
    v0[6] = sub_14A04;
    v0[7] = v26;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_12D50;
    v0[5] = &unk_6EFE0;
    v27 = _Block_copy(aBlock);
    v28 = v0[7];
    v29 = v7;

    [v25 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v27];
    _Block_release(v27);
    goto LABEL_22;
  }

  v31 = v0;
  v32 = v0[9];
  v8 = 0;
  v0 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers;
  v35 = v4 & 0xC000000000000001;
  v9 = v6;
  while (1)
  {
    if (v35)
    {
      v10 = sub_54AB8();
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = [v10 bundleIdentifier];
    if (!result)
    {
      break;
    }

    v14 = result;
    v15 = sub_54668();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = v4;
      v20 = v5;
      result = [v11 bundleIdentifier];
      if (!result)
      {
        goto LABEL_29;
      }

      v21 = result;
      sub_54668();

      v22 = sub_546A8();
      v24 = v23;

      swift_beginAccess();
      sub_1F8F4(&v36, v22, v24);
      swift_endAccess();

      v5 = v20;
      v4 = v19;
      v9 = v33;
    }

    else
    {
    }

    ++v8;
    if (v12 == v9)
    {
      v0 = v31;
      v7 = v31[9];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_13768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_547A8();
  v5[10] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_13800, v7, v6);
}

id sub_13800()
{
  v1 = v0[10];
  v2 = v0[8];

  if (!v2 || (v3 = sub_1733C(v0[8])) == 0)
  {
LABEL_22:
    v30 = v0[1];

    return v30();
  }

  v4 = v3;
  aBlock = v0 + 2;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_27:
    v6 = sub_54B58();
  }

  else
  {
    v6 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = v0[9];
  v32 = v6;
  if (!v6)
  {
LABEL_21:

    v25 = *&v7[OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager];
    v26 = swift_allocObject();
    *(v26 + 16) = v7;
    v0[6] = sub_14A04;
    v0[7] = v26;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_12D50;
    v0[5] = &unk_6EF68;
    v27 = _Block_copy(aBlock);
    v28 = v0[7];
    v29 = v7;

    [v25 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v27];
    _Block_release(v27);
    goto LABEL_22;
  }

  v31 = v0;
  v8 = 0;
  v0 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_installedAppsBundleIdentifiers;
  v34 = v4 & 0xC000000000000001;
  v9 = v6;
  while (1)
  {
    if (v34)
    {
      v10 = sub_54AB8();
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = [v10 bundleIdentifier];
    if (!result)
    {
      break;
    }

    v14 = result;
    v15 = sub_54668();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = v4;
      v20 = v5;
      result = [v11 bundleIdentifier];
      if (!result)
      {
        goto LABEL_29;
      }

      v21 = result;
      sub_54668();

      v22 = sub_546A8();
      v24 = v23;

      swift_beginAccess();
      sub_145D4(v22, v24);
      swift_endAccess();

      v5 = v20;
      v4 = v19;
      v9 = v32;
    }

    else
    {
    }

    ++v8;
    if (v12 == v9)
    {
      v0 = v31;
      v7 = v31[9];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_13B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_44BC(&qword_777B8, &qword_57750);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  if (a3)
  {
    a3 = sub_54748();
  }

  v12 = sub_547D8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_547A8();
  v13 = a1;
  v14 = sub_54798();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a3;
  v15[5] = v13;
  sub_12270(0, 0, v11, a5, v15);
}

uint64_t sub_13D40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_13D78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC26PrivacyAndSecuritySettings39FilesAndFoldersSubtitleListItemProvider_accessManager);
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    aBlock[4] = sub_13E94;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12D50;
    aBlock[3] = &unk_6EE28;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v1 bundleIdentifiersWithAccessToAnyItemCompletionHandler:v4];
    _Block_release(v4);
  }
}

uint64_t sub_13E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_13EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_12938(a1, v4, v5, v7, v6);
}

uint64_t sub_13F74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_14068(uint64_t a1, uint64_t a2)
{
  v4 = sub_44BC(&qword_777B8, &qword_57750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_140D8(uint64_t a1)
{
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14140(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14238;

  return v7(a1);
}

uint64_t sub_14238()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_14330()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14368(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_14A00;

  return sub_14140(a1, v5);
}

uint64_t sub_14420(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_13F74;

  return sub_14140(a1, v5);
}

uint64_t sub_144D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_14514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_13768(a1, v4, v5, v7, v6);
}

uint64_t sub_145D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_54C28();
  sub_546C8();
  v7 = sub_54C58();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_54BD8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1FE24();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_14710(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_14710(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_549F8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_54C28();

        sub_546C8();
        v15 = sub_54C58();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_148D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1491C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_133B4(a1, v4, v5, v7, v6);
}

id sub_14A2C()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    [result removeObserver:v0];

    [*&v0[OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_sourceListDataSource] unregisterObserver:v0];
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_14BA0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_547A8();
  v2[21] = sub_54798();
  v4 = sub_54788();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_14C38, v4, v3);
}

uint64_t sub_14C38()
{
  v1 = v0[19];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v11 = v0[19];
    }

    v2 = sub_54B58();
    v0[24] = v2;
    if (v2)
    {
LABEL_3:
      v3 = v0[19];
      v4 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_healthAuthorizationStore;
      v0[26] = 0;
      v0[27] = 0;
      v0[25] = v4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = sub_54AB8();
        v4 = v0[25];
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return _swift_continuation_await(v2);
        }

        v5 = *(v3 + 32);
      }

      v0[28] = v5;
      v0[29] = 1;
      v6 = *(v0[20] + v4);
      v0[30] = v6;
      v7 = v6;
      v8 = [v5 source];
      v9 = [v8 bundleIdentifier];

      if (!v9)
      {
        sub_54668();
        v9 = sub_54638();
      }

      v0[31] = v9;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_14E94;
      v10 = swift_continuation_init();
      v0[17] = sub_44BC(&qword_778B8, &qword_57780);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_158A8;
      v0[13] = &unk_6F078;
      v0[14] = v10;
      [v7 fetchAuthorizationRecordsForBundleIdentifier:v9 completion:v0 + 10];
      v2 = (v0 + 2);

      return _swift_continuation_await(v2);
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v0[24] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v12 = v0[21];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_14E94()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_15434;
  }

  else
  {
    v6 = sub_14FC4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_14FC4()
{
  v1 = *(v0 + 144);
  v37 = (v0 + 144);
  v38 = (v0 + 80);
  v2 = *(v0 + 248);

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_54B28();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v1 = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = v1 + 64;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 64);
  }

  v10 = 0;
  v11 = (v5 + 64) >> 6;
  while ((v1 & 0x8000000000000000) == 0)
  {
    v12 = v10;
    v13 = v6;
    if (!v6)
    {
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v13 = *(v4 + 8 * v10);
        ++v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = (v10 << 9) | (8 * __clz(__rbit64(v13)));
    v15 = *(*(v1 + 56) + v14);
    v16 = *(*(v1 + 48) + v14);
    v17 = v15;
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_17:

    v21 = [v17 status];
    if (v21 != &stru_68)
    {
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_11288();

      if (!__OFADD__(v23, 1))
      {
        v24 = vdupq_n_s64(v23 + 1);
        goto LABEL_21;
      }

      goto LABEL_38;
    }
  }

  v18 = sub_54B38();
  if (v18)
  {
    v20 = v19;
    *v37 = v18;
    sub_E444(0, &qword_778C8, HKObjectType_ptr);
    swift_dynamicCast();
    v16 = *v38;
    *v37 = v20;
    sub_E444(0, &qword_778D0, _HKAuthorizationRecord_ptr);
    swift_dynamicCast();
    v17 = *v38;
    if (v16)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v25 = *(v0 + 224);
  sub_11288();

  v24 = *(v0 + 208);
LABEL_21:
  v26 = *(v0 + 232);
  if (v26 != *(v0 + 192))
  {
    *(v0 + 208) = v24;
    v30 = *(v0 + 152);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v3 = sub_54AB8();
    }

    else
    {
      if (v26 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return _swift_continuation_await(v3);
      }

      v3 = *(v30 + 8 * v26 + 32);
    }

    v31 = v3;
    *(v0 + 224) = v3;
    *(v0 + 232) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      v32 = *(*(v0 + 160) + *(v0 + 200));
      *(v0 + 240) = v32;
      v33 = v32;
      v34 = [v31 source];
      v35 = [v34 bundleIdentifier];

      if (!v35)
      {
        sub_54668();
        v35 = sub_54638();
      }

      *(v0 + 248) = v35;
      *(v0 + 16) = v0;
      *(v0 + 56) = v37;
      *(v0 + 24) = sub_14E94;
      v36 = swift_continuation_init();
      *(v0 + 136) = sub_44BC(&qword_778B8, &qword_57780);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_158A8;
      *(v0 + 104) = &unk_6F078;
      *(v0 + 112) = v36;
      [v33 fetchAuthorizationRecordsForBundleIdentifier:v35 completion:?];
      v3 = v0 + 16;

      return _swift_continuation_await(v3);
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v27 = *(v0 + 168);
  v39 = v24.i64[0];

  v28 = *(v0 + 8);

  return v28(v39);
}

uint64_t sub_15434()
{
  v40 = v0;
  v1 = v0 + 10;
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  swift_willThrow();

  if (qword_76FF8 != -1)
  {
    swift_once();
  }

  v5 = v0[32];
  v6 = v0[28];
  v7 = sub_53C38();
  sub_7700(v7, qword_7BC48);
  v8 = v6;
  swift_errorRetain();
  v9 = sub_53C18();
  v10 = sub_54808();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[32];
  v13 = v0[28];
  if (v11)
  {
    v14 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v13 source];
    v16 = [v15 bundleIdentifier];

    v17 = sub_54668();
    v38 = v13;
    v19 = v18;

    v1 = v0 + 10;
    v20 = sub_18710(v17, v19, v39);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v0[10] = v12;
    swift_errorRetain();
    sub_44BC(&qword_778C0, &unk_57900);
    v21 = sub_54698();
    v23 = sub_18710(v21, v22, v39);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_0, v9, v10, "Could not get authorization records for %s with error: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v25 = v0[29];
  if (v25 != v0[24])
  {
    v30 = v0[19];
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = v0[29];
      v24 = sub_54AB8();
    }

    else
    {
      if (v25 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v24 = *(v30 + 8 * v25 + 32);
    }

    v32 = v24;
    v0[28] = v24;
    v0[29] = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      v33 = *(v0[20] + v0[25]);
      v0[30] = v33;
      v34 = v33;
      v35 = [v32 source];
      v36 = [v35 bundleIdentifier];

      if (!v36)
      {
        sub_54668();
        v36 = sub_54638();
      }

      v0[31] = v36;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_14E94;
      v37 = swift_continuation_init();
      v0[17] = sub_44BC(&qword_778B8, &qword_57780);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_158A8;
      v0[13] = &unk_6F078;
      v0[14] = v37;
      [v34 fetchAuthorizationRecordsForBundleIdentifier:v36 completion:v1];
      v24 = v0 + 2;

      return _swift_continuation_await(v24);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return _swift_continuation_await(v24);
  }

  v26 = v0[26];
  v27 = v0[21];

  v28 = v0[1];

  return v28(v26);
}

uint64_t sub_158A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_7738((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_44BC(&qword_778C0, &unk_57900);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_E444(0, &qword_778C8, HKObjectType_ptr);
    sub_E444(0, &qword_778D0, _HKAuthorizationRecord_ptr);
    sub_172CC();
    **(*(v4 + 64) + 40) = sub_545C8();

    return _swift_continuation_throwingResume(v4);
  }
}

void sub_159C4(void *a1)
{
  v3 = sub_44BC(&qword_777B8, &qword_57750);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = [a1 sources];
  if (v7)
  {
    v8 = v7;
    sub_547B8();
    v9 = sub_547D8();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = v8;
    v11 = v1;
    v12 = v8;
    sub_18D0C(0, 0, v6, &unk_57760, v10);

    sub_140D8(v6);
  }

  else
  {
    if (qword_76FF8 != -1)
    {
      swift_once();
    }

    v13 = sub_53C38();
    sub_7700(v13, qword_7BC48);
    v18 = sub_53C18();
    v14 = sub_54808();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v18, v14, "App data sources did not get fetched.", v15, 2u);
    }

    v16 = v18;
  }
}

uint64_t sub_15BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_44BC(&qword_777B8, &qword_57750) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_15C88, 0, 0);
}

uint64_t sub_15C88()
{
  v1 = [*(v0 + 24) orderedAppSources];
  *(v0 + 40) = sub_E444(0, &qword_778B0, HKSourceDataModel_ptr);
  v2 = sub_54748();
  *(v0 + 48) = v2;

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_15D6C;
  v4 = *(v0 + 16);

  return sub_14BA0(v2);
}

uint64_t sub_15D6C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_15E8C, 0, 0);
}

uint64_t sub_15E8C()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 24) orderedResearchStudySources];
  v3 = sub_54748();
  *(v0 + 72) = v3;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_15F5C;
  v5 = *(v0 + 16);

  return sub_14BA0(v3);
}

uint64_t sub_15F5C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1607C, 0, 0);
}

uint64_t sub_1607C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_547D8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_547A8();
  v6 = v4;
  v7 = sub_54798();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v6;
  sub_12270(0, 0, v3, &unk_57778, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_161AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = *(*(sub_54068() - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  sub_547A8();
  v6[16] = sub_54798();
  v9 = sub_54788();

  return _swift_task_switch(sub_16274, v9, v8);
}

uint64_t sub_16274()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  if (!v2)
  {
    if (v3)
    {
      v8 = v0[15];
      v9 = v0[13];
      sub_54058();
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      sub_54048(v48);
      v0[10] = v9;
      sub_54028();
      v49._countAndFlagsBits = 0x7365696475747320;
      v49._object = 0xE800000000000000;
      sub_54048(v49);
      sub_54088();
      if (qword_76FD8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_54078();
      if (qword_76FD8 == -1)
      {
LABEL_15:
        v14 = v0[14];
        v15 = qword_7BBF8;
        v16 = sub_541D8();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = v14 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString;
        goto LABEL_21;
      }
    }

LABEL_27:
    swift_once();
    goto LABEL_15;
  }

  if (!v3)
  {
    v10 = v0[15];
    v11 = v0[12];
    sub_54058();
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    sub_54048(v50);
    v0[11] = v11;
    sub_54028();
    v51._countAndFlagsBits = 0x7370706120;
    v51._object = 0xE500000000000000;
    sub_54048(v51);
    sub_54088();
    if (qword_76FD8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[15];
  if (v4 == 1)
  {
    v7 = v0[15];
    if (v5 == 1)
    {
      sub_54058();
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      sub_54048(v45);
      v0[8] = 1;
      sub_54028();
      v46._countAndFlagsBits = 0x202C70706120;
      v46._object = 0xE600000000000000;
      sub_54048(v46);
      v0[9] = 1;
      sub_54028();
      v47._countAndFlagsBits = 0x796475747320;
      v47._object = 0xE600000000000000;
      sub_54048(v47);
      sub_54088();
      if (qword_76FD8 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    sub_54058();
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    sub_54048(v54);
    v0[6] = 1;
    sub_54028();
    v55._countAndFlagsBits = 0x202C70706120;
    v55._object = 0xE600000000000000;
    sub_54048(v55);
    v0[7] = v5;
  }

  else
  {
    v12 = v0[15];
    if (v5 == 1)
    {
      sub_54058();
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_54048(v52);
      v0[4] = v4;
      sub_54028();
      v53._countAndFlagsBits = 0x202C7370706120;
      v53._object = 0xE700000000000000;
      sub_54048(v53);
      v0[5] = 1;
      sub_54028();
      v13._countAndFlagsBits = 0x796475747320;
      v13._object = 0xE600000000000000;
      goto LABEL_19;
    }

    sub_54058();
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_54048(v56);
    v0[2] = v4;
    sub_54028();
    v57._countAndFlagsBits = 0x202C7370706120;
    v57._object = 0xE700000000000000;
    sub_54048(v57);
    v0[3] = v5;
  }

  sub_54028();
  v13._countAndFlagsBits = 0x7365696475747320;
  v13._object = 0xE800000000000000;
LABEL_19:
  sub_54048(v13);
  sub_54088();
  if (qword_76FD8 != -1)
  {
LABEL_26:
    swift_once();
  }

LABEL_20:
  v24 = v0[14];
  v25 = qword_7BBF8;
  v16 = sub_541D8();
  v18 = v26;
  v20 = v27;
  v22 = v28;
  v23 = v24 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString;
LABEL_21:
  v29 = *v23;
  v30 = *(v23 + 8);
  v31 = *(v23 + 16);
  v32 = *(v23 + 24);
  sub_4088(*v23, v30, v31);

  v43 = v16;
  v33 = v18;
  v34 = v20 & 1;
  v35 = sub_541B8();
  sub_84F8(v29, v30, v31);

  if ((v35 & 1) == 0)
  {
    sub_7738((v0[14] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator), *(v0[14] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v36 = *v23;
  v37 = *(v23 + 8);
  v38 = *(v23 + 16);
  v39 = *(v23 + 24);
  *v23 = v43;
  *(v23 + 8) = v33;
  *(v23 + 16) = v34;
  *(v23 + 24) = v22;
  sub_84F8(v36, v37, v38);

  v40 = v0[15];

  v41 = v0[1];

  return v41();
}

id sub_16A40@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    v5 = sub_54638();
    v6 = [v4 applicationIsInstalled:v5];

    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_id);
      v8 = sub_53918();
      v9 = *(*(v8 - 8) + 64);
      __chkstk_darwin(v8 - 8);
      sub_4AC4(v7);
      v10 = sub_541F8();
      v14 = -1;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      sub_54078();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v17 = qword_7BBF8;
      v14 = 2;
      v10 = sub_541D8();
      v16 = 0x800000000005C7C0;
      v15 = 0xD000000000000022;
    }

    v18 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_id);
    v19 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString);
    v20 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString + 8);
    v21 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString + 16);
    v22 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_appsAndStudiesString + 24);
    v29[104] = v12 & 1;
    v29[96] = v21;
    v30[0] = v18;
    *&v31 = v10;
    *(&v31 + 1) = v11;
    v32 = v12 & 1;
    *&v33 = v13;
    *(&v33 + 1) = v19;
    v34 = v20;
    v35 = v21;
    *&v36 = v22;
    *(&v36 + 1) = v15;
    v37 = v16;
    v38 = v14;
    v39[0] = v18;
    v40 = v10;
    v41 = v11;
    v42 = v12 & 1;
    v43 = v13;
    v44 = v19;
    v45 = v20;
    v46 = v21;
    v47 = v22;
    v48 = v15;
    v49 = v16;
    v50 = v14;
    sub_4088(v19, v20, v21);

    sub_13C90(v30, v29);
    result = sub_13CEC(v39);
    v23 = v34;
    v24 = v37;
    v25 = v38;
    v26 = v30[0] & 0x3F;
    v27 = v32 & 1;
    v28 = v35 | 0x8000000000000000;
    *a1 = v18;
    *(a1 + 8) = v26;
    *(a1 + 16) = v31;
    *(a1 + 32) = v27;
    *(a1 + 40) = v33;
    *(a1 + 56) = v23;
    *(a1 + 64) = v28;
    *(a1 + 72) = v36;
    *(a1 + 88) = v24;
    *(a1 + 96) = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_16D88@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_16A40(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_16DEC(unint64_t result)
{
  if (result)
  {
    result = sub_1733C(result);
    if (result)
    {
      v2 = result;
      v3 = result & 0xFFFFFFFFFFFFFF8;
      v17 = v1;
      if (result >> 62)
      {
        goto LABEL_25;
      }

      for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_54B58())
      {
        v5 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = sub_54AB8();
          }

          else
          {
            if (v5 >= *(v3 + 16))
            {
              goto LABEL_24;
            }

            v6 = *(v2 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v9 = [v6 bundleIdentifier];
          if (v9)
          {
            v10 = v3;
            v11 = v9;
            v12 = sub_54668();
            v14 = v13;

            if (v12 == 0xD000000000000010 && 0x800000000005B720 == v14)
            {

              goto LABEL_21;
            }

            v16 = sub_54BD8();

            v3 = v10;
            if (v16)
            {

LABEL_21:
              sub_7738((v17 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator), *(v17 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings26HealthDataListItemProvider_invalidator + 24));
              type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
              return sub_4B228();
            }
          }

          else
          {
          }

          ++v5;
          if (v8 == i)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }

LABEL_26:
    }
  }

  return result;
}

uint64_t sub_1701C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_54748();
  }

  else
  {
    v4 = 0;
  }

  v5 = a1;
  sub_16DEC(v4);
}

uint64_t sub_17090()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_170D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_15BEC(a1, v4, v5, v7, v6);
}

uint64_t sub_17198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_171D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14A00;

  return sub_161AC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_172CC()
{
  result = qword_778D8;
  if (!qword_778D8)
  {
    sub_E444(255, &qword_778C8, HKObjectType_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_778D8);
  }

  return result;
}

void *sub_17350(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = &_swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  sub_54AF8();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_CAF4(i, v10);
    sub_E444(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_54AD8();
    v8 = v11[2];
    sub_54B08();
    sub_54B18();
    sub_54AE8();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_17454(uint64_t result)
{
  v2 = result;
  if (*(v1 + 24) != result)
  {
    sub_7738((v1 + 48), *(v1 + 72));
    sub_54AA8(16);

    v3._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v3);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v1 + 24) = v2;
  return result;
}

void sub_17558()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(v0 + 40);
  if (v3)
  {
    v4 = v2;
    sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
    v5 = sub_54878();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    v8[4] = sub_18D00;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_18408;
    v8[3] = &unk_6F188;
    v7 = _Block_copy(v8);

    [v3 loadConfigurationsWithCompletionQueue:v5 handler:v7];
    _Block_release(v7);
  }

  else
  {
  }
}

uint64_t sub_176C4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 32);
    }

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 32);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_11288();
      v18 = *(v1 + 32);
      *(v1 + 32) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 48));
      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_178CC()
{
  sub_176C4();

  return swift_deallocClassInstance();
}

__n128 sub_17924@<Q0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_54048(v63);
  v42 = *(v1 + 24);
  v5 = sub_44BC(&qword_775C0, &qword_574F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_539F8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v6 + 8))(v9, v5);
  sub_54038(v52);

  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_54048(v64);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_7BBF8;
  v13 = sub_541D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v2 + 16);
  v21 = sub_53918();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_4AC4(v20);
  v23 = sub_541F8();
  v41[104] = v24 & 1;
  v41[96] = v17 & 1;
  LOBYTE(v42) = v20;
  v43 = v23;
  v44 = v25;
  v45 = v24 & 1;
  *&v46 = v26;
  *(&v46 + 1) = v13;
  v47 = v15;
  v48 = v17 & 1;
  v50 = 0;
  v49 = v19;
  v51 = 511;
  LOBYTE(v52._countAndFlagsBits) = v20;
  v52._object = v23;
  v53 = v25;
  v54 = v24 & 1;
  v55 = v26;
  v56 = v13;
  v57 = v15;
  v58 = v17 & 1;
  v59 = v19;
  v60 = 0;
  v61 = 0;
  v62 = 511;
  sub_F828(&v42, v41);
  sub_F884(&v52);
  LOBYTE(v13) = *(v2 + 16);
  v27 = v43;
  v28 = v44;
  v29 = v47;
  v38 = v49;
  v39 = v46;
  v30 = v50;
  v31 = v42 & 0x3F;
  v32 = v45 & 1;
  v33 = v48 | 0x4000000000000000;
  v34 = v2;
  v35 = v51;
  sub_17D0C(v34);
  v36 = v40;
  *v40 = v13;
  *(v36 + 1) = v31;
  *(v36 + 2) = v27;
  *(v36 + 3) = v28;
  *(v36 + 4) = v32;
  result = v38;
  *(v36 + 40) = v39;
  *(v36 + 7) = v29;
  *(v36 + 8) = v33;
  *(v36 + 72) = result;
  *(v36 + 11) = v30;
  *(v36 + 48) = v35;
  return result;
}

uint64_t sub_17D0C(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 32);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 < 0)
  {
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 32);

  v6 = sub_54A18();

  if (!v6)
  {
LABEL_7:
    v7 = sub_548B8();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v12 = [objc_opt_self() defaultCenter];
    if (qword_76F98 != -1)
    {
      swift_once();
    }

    sub_548C8();

    swift_allocObject();
    swift_weakInit();
    sub_11EB8();
    sub_53D98();

    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    sub_53CB8();
    swift_endAccess();
  }

  return result;
}

void sub_17F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_44;
  }

  v5 = sub_17350(a1, &qword_779B0, NEConfiguration_ptr);
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  v41 = a4;
  if (v5 >> 62)
  {
LABEL_42:
    v8 = sub_54B58();
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v8 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (!v8)
  {
LABEL_43:

LABEL_44:
    if (qword_76FF8 != -1)
    {
      swift_once();
    }

    v34 = sub_53C38();
    sub_7700(v34, qword_7BC48);
    swift_errorRetain();
    oslog = sub_53C18();
    v35 = sub_54808();

    if (os_log_type_enabled(oslog, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136315138;
      swift_errorRetain();
      sub_44BC(&qword_779A0, &qword_57800);
      v38 = sub_54698();
      v40 = sub_18710(v38, v39, &v44);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, oslog, v35, "Failed to load network configurations %s.", v36, 0xCu);
      sub_777C(v37);
    }

    else
    {
    }

    return;
  }

LABEL_5:
  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_54AB8();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_40;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v13 = [v10 name];
    if (!v13)
    {
      sub_54668();
LABEL_7:

      goto LABEL_8;
    }

    v14 = v7;
    v15 = v13;
    v16 = sub_54668();
    v7 = v17;

    v18 = sub_54668();
    if (!v7)
    {
      v7 = v14;
      goto LABEL_7;
    }

    if (v16 == v18 && v7 == v19)
    {
      break;
    }

    v21 = sub_54BD8();

    v7 = v14;
    if (v21)
    {
      goto LABEL_24;
    }

LABEL_8:

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_43;
    }
  }

LABEL_24:
  v22 = [v11 pathController];
  if (v22)
  {
    v23 = v22;

    v24 = [v23 pathRules];

    if (!v24 || (v25 = sub_54748(), v24, v6 = sub_17350(v25, &qword_779A8, NEPathRule_ptr), , !v6))
    {

      goto LABEL_44;
    }

    if (!(v6 >> 62))
    {
      v26 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v26)
      {
        goto LABEL_29;
      }

LABEL_52:

      swift_beginAccess();
      sub_17454(*(a3 + 16));

      return;
    }

    v26 = sub_54B58();
    if (!v26)
    {
      goto LABEL_52;
    }

LABEL_29:
    if (v26 >= 1)
    {
      swift_beginAccess();
      v27 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v28 = sub_54AB8();
        }

        else
        {
          v28 = *(v6 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = [v28 denyMulticast];

        if ((v30 & 1) == 0)
        {
          v31 = *(a3 + 16);
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_41;
          }

          *(a3 + 16) = v33;
        }

        if (v26 == ++v27)
        {
          goto LABEL_52;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18408(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_54748();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

__n128 sub_184A4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_17924(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1851C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_18554()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    v3 = *(v1 + 40);
    if (v3)
    {
      sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
      v4 = sub_54878();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v1;
      aBlock[4] = sub_186F0;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18408;
      aBlock[3] = &unk_6F138;
      v6 = _Block_copy(aBlock);

      [v3 loadConfigurationsWithCompletionQueue:v4 handler:v6];
      _Block_release(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_186F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18710(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_187DC(v11, 0, 0, 1, a1, a2);
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
    sub_CAF4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_777C(v11);
  return v7;
}

unint64_t sub_187DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_188E8(a5, a6);
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
    result = sub_54AC8();
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

char *sub_188E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_18934(a1, a2);
  sub_18A64(&off_6E538);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_18934(uint64_t a1, unint64_t a2)
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

  v6 = sub_18B50(v5, 0);
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

  result = sub_54AC8();
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
        v10 = sub_546F8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_18B50(v10, 0);
        result = sub_54A98();
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

uint64_t sub_18A64(uint64_t result)
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

  result = sub_18BC4(result, v12, 1, v3);
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

void *sub_18B50(uint64_t a1, uint64_t a2)
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

  sub_44BC(&qword_779B8, &qword_57808);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_779B8, &qword_57808);
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

uint64_t sub_18CBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_44BC(&qword_777B8, &qword_57750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_14068(a3, v27 - v11);
  v13 = sub_547D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_140D8(v12);
  }

  else
  {
    sub_547C8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_54788();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_546B8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_18FAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_cancellables;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *&v0[v2];
    }

    sub_54A08();
    sub_53CD8();
    sub_1C500(&qword_777C0, &type metadata accessor for AnyCancellable);
    result = sub_547E8();
    v3 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_11288();
      v19 = *&v1[v2];
      *&v1[v2] = &_swiftEmptySetSingleton;

      v22.receiver = v1;
      v22.super_class = ObjectType;
      return objc_msgSendSuper2(&v22, "dealloc");
    }

    while (1)
    {
      sub_53CC8();

      v8 = v16;
      v9 = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_192B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_44BC(&qword_777B8, &qword_57750) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1934C, 0, 0);
}

uint64_t sub_1934C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_opt_self();
  v4 = [v3 locationServicesEnabled];
  v5 = [v3 isStatusBarIconEnabledForLocationEntityClass:4];
  v6 = sub_547D8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_547A8();
  v7 = v2;
  v8 = sub_54798();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v7;
  *(v9 + 40) = v4;
  *(v9 + 41) = v5;
  sub_12270(0, 0, v1, &unk_57870, v9);

  sub_1973C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_194B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 32) = a5;
  *(v6 + 16) = a4;
  sub_547A8();
  *(v6 + 24) = sub_54798();
  v8 = sub_54788();

  return _swift_task_switch(sub_19554, v8, v7);
}

uint64_t sub_19554()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled;
  if (v1 != *(v3 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled))
  {
    sub_7738((*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v5 = *(v0 + 33);
  v6 = *(v0 + 16);
  *(v3 + v4) = *(v0 + 32);
  v7 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled;
  if (v5 != *(v6 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled))
  {
    sub_7738((*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v8 = *(v0 + 16);
  *(v6 + v7) = *(v0 + 33);
  v9 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState;
  if ((*(v8 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState) & 1) == 0)
  {
    sub_7738((*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(*(v0 + 16) + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v8 + v9) = 1;
  v10 = *(v0 + 8);

  return v10();
}

void sub_1973C()
{
  v1 = v0;
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v64 - v4;
  v6 = objc_opt_self();
  v7 = [v6 activeLocationClientsWithInfo];
  if (!v7)
  {
    return;
  }

  v75 = v5;
  v8 = v7;
  v9 = sub_545C8();

  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v73 = &v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundlePath];
  v71 = &v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_bundleId];
  v70 = &v1[OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_findMy];
  v13 = (v10 + 63) >> 6;

  v76 = 0;
  v77 = 0;
  v78 = 0;
  v14 = 0;
  v15 = 0;
  v69 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
              while (1)
              {
                if (!v12)
                {
                  while (1)
                  {
                    v16 = v15 + 1;
                    if (__OFADD__(v15, 1))
                    {
                      break;
                    }

                    if (v16 >= v13)
                    {
                      goto LABEL_78;
                    }

                    v12 = *(v9 + 64 + 8 * v16);
                    ++v15;
                    if (v12)
                    {
                      v15 = v16;
                      goto LABEL_13;
                    }
                  }

                  __break(1u);
LABEL_81:
                  __break(1u);
LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
LABEL_85:
                  __break(1u);
                }

LABEL_13:
                v17 = __clz(__rbit64(v12));
                v12 &= v12 - 1;
                sub_CA98(*(v9 + 48) + 40 * (v17 | (v15 << 6)), v84);
                v82 = v85;
                v81[0] = v84[0];
                v81[1] = v84[1];
                if (*(v9 + 16))
                {
                  v18 = sub_1BE7C(v81);
                  if (v19)
                  {
                    break;
                  }
                }

LABEL_7:
                sub_1C37C(v81);
              }

              sub_CAF4(*(v9 + 56) + 32 * v18, v83);
              sub_1C37C(v81);
              sub_44BC(&qword_77A58, &qword_57878);
            }

            while ((swift_dynamicCast() & 1) == 0);
            v74 = v14;
            v20 = v79;
            v21 = sub_545B8();
            v72 = v6;
            v22 = [v6 primaryEntityClassForLocationDictionary:v21];

            if (v22 <= 3)
            {
              break;
            }

            v14 = v74;
            if (v22 != &dword_4 && v22 != &dword_10 && v22 != &dword_8)
            {
LABEL_42:

              goto LABEL_50;
            }

            v23 = *(v73 + 1);
            v79 = *v73;
            v80 = v23;

            sub_54A58();
            if (!*(v20 + 16) || (v24 = sub_1BE7C(v81), (v25 & 1) == 0))
            {
              sub_1C37C(v81);
              goto LABEL_38;
            }

            sub_CAF4(*(v20 + 56) + 32 * v24, v83);
            sub_1C37C(v81);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_38;
            }

            if (v79 == *v70 && v80 == *(v70 + 1))
            {

LABEL_52:
              v48 = [objc_opt_self() currentDevice];
              v49 = [v48 sf_inRetailKioskMode];

              if (!v49 && !PSIsInEDUMode())
              {
                goto LABEL_38;
              }

LABEL_66:

              v6 = v72;
              v14 = v74;
            }

            else
            {
              v47 = sub_54BD8();

              if (v47)
              {
                goto LABEL_52;
              }

LABEL_38:
              v34 = sub_545B8();

              v35 = v72;
              v36 = [v72 entityAuthorizationForLocationDictionary:v34];

              v6 = v35;
              v14 = v74;
              if (v36 == &dword_4)
              {
                v14 = v74 + 1;
                if (__OFADD__(v74, 1))
                {
                  goto LABEL_81;
                }
              }
            }
          }

          if (v22 == (&dword_0 + 1))
          {
            break;
          }

          v14 = v74;
          if (v22 != (&dword_0 + 2))
          {
            goto LABEL_42;
          }

          v26 = *(v73 + 1);
          v79 = *v73;
          v80 = v26;

          sub_54A58();
          if (*(v20 + 16) && (v27 = sub_1BE7C(v81), (v28 & 1) != 0))
          {
            sub_CAF4(*(v20 + 56) + 32 * v27, v83);
            sub_1C37C(v81);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_42;
            }

            v68 = objc_allocWithZone(NSBundle);
            v29 = sub_54638();

            v30 = [v68 initWithPath:v29];

            if (!v30)
            {
              goto LABEL_66;
            }

            v31 = sub_545B8();

            v32 = [v72 entityAuthorizationForLocationDictionary:v31];

            if (v32 == (&dword_0 + 2))
            {
              v33 = __OFADD__(v78++, 1);
              v6 = v72;
              v14 = v74;
              if (v33)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v6 = v72;
              v14 = v74;
              if (v32 == &dword_4)
              {
                v33 = __OFADD__(v77++, 1);
                if (v33)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else
          {

            sub_1C37C(v81);
LABEL_50:
            v6 = v72;
          }
        }

        v37 = *(v71 + 1);
        v79 = *v71;
        v80 = v37;

        sub_54A58();
        v6 = v72;
        v14 = v74;
        if (!*(v20 + 16) || (v38 = sub_1BE7C(v81), (v39 & 1) == 0))
        {

          goto LABEL_7;
        }

        sub_CAF4(*(v20 + 56) + 32 * v38, v83);
        sub_1C37C(v81);
        if (swift_dynamicCast())
        {
          break;
        }
      }

      v40 = v79;
      v41 = v80;
      v67 = objc_allocWithZone(LSApplicationRecord);
      v66 = v40;
      v68 = v41;
      v42 = sub_54638();
      *&v81[0] = 0;
      v43 = [v67 initWithBundleIdentifier:v42 allowPlaceholder:0 error:v81];

      v67 = v43;
      if (v43)
      {
        v44 = *&v81[0];
        v45 = v67;
        v46 = [v67 applicationState];
        v65 = [v46 isInstalled];

        if (v65)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v50 = *&v81[0];
        sub_538F8();

        swift_willThrow();

        v69 = 0;
      }

      if (!PUILocationIsActivePairedDevice() || (v51 = sub_54638(), IsDisplayNameForWatchApp = PUILocationIsDisplayNameForWatchApp(), v51, (IsDisplayNameForWatchApp & 1) == 0) && (v53 = sub_54638(), IsWatchBundleIDForBundleID = PUILocationIsWatchBundleIDForBundleID(), v53, (IsWatchBundleIDForBundleID & 1) == 0))
      {

        goto LABEL_66;
      }

LABEL_60:
      v55 = sub_545B8();

      v56 = [v72 entityAuthorizationForLocationDictionary:v55];

      if (v56 == (&dword_0 + 2))
      {
        break;
      }

      v14 = v74;
      if (v56 != &dword_4)
      {
        goto LABEL_42;
      }

      v33 = __OFADD__(v77++, 1);
      v6 = v72;
      if (v33)
      {
        goto LABEL_84;
      }
    }

    v33 = __OFADD__(v78++, 1);
    v14 = v74;
    if (v33)
    {
      goto LABEL_85;
    }

    LODWORD(v81[0]) = 0;
    v83[0] = 0;
    v67 = sub_54638();
    v6 = v72;
    [v72 getLearnedRoutesAccess:v81 forBundleIdentifier:v67];

    v67 = sub_54638();

    v57 = v67;
    [v6 getVisitHistoryAccess:v83 forBundleIdentifier:v67];

    if (LODWORD(v81[0]) == 3)
    {
      if (__OFADD__(v76, 1))
      {
        __break(1u);
        return;
      }

      ++v76;
    }

    if (v83[0] == 3)
    {
      v33 = __OFADD__(v76++, 1);
      if (v33)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_78:

  v58 = sub_547D8();
  v59 = v75;
  (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
  sub_547A8();
  v60 = v1;
  v61 = sub_54798();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = &protocol witness table for MainActor;
  v62[4] = v60;
  v62[5] = v14;
  v63 = v78;
  v62[6] = v77;
  v62[7] = v63;
  v62[8] = v76;
  sub_12270(0, 0, v59, &unk_57888, v62);
}

uint64_t sub_1A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_547A8();
  v8[7] = sub_54798();
  v10 = sub_54788();

  return _swift_task_switch(sub_1A2C8, v10, v9);
}

uint64_t sub_1A2C8()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];

  v4 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount;
  if (*(v3 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount) != v2)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v5 = v0[4];
  v6 = v0[2];
  *(v3 + v4) = v0[3];
  v7 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount;
  if (*(v6 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount) != v5)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v8 = v0[5];
  v9 = v0[2];
  *(v6 + v7) = v0[4];
  v10 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount;
  if (*(v9 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount) != v8)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  v11 = v0[6];
  v12 = v0[2];
  *(v9 + v10) = v0[5];
  v13 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount;
  if (*(v12 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount) != v11)
  {
    sub_7738((v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator), *(v0[2] + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_invalidator + 24));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v12 + v13) = v0[6];
  v14 = v0[1];

  return v14();
}

uint64_t sub_1A50C()
{
  v1 = sub_54068();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled) == 1)
  {
    v3 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount;
    v4 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedAlwaysCount);
    v5 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount;
    v6 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_authorizedWhenInUseCount);
    if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled) == 1)
    {
      v7 = __OFADD__(v4, v6);
      v8 = v4 + v6;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        v9 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_systemServicesCount);
        v10 = v8 + v9;
        if (__OFADD__(v8, v9))
        {
          __break(1u);
        }

        else
        {
          sub_54058();
          v62._countAndFlagsBits = 0;
          v62._object = 0xE000000000000000;
          sub_54048(v62);
          v61._countAndFlagsBits = v10;
          sub_54028();
          v63._countAndFlagsBits = 0;
          v63._object = 0xE000000000000000;
          sub_54048(v63);
          sub_54088();
          if (qword_76FD8 == -1)
          {
            goto LABEL_16;
          }
        }
      }

      goto LABEL_34;
    }

    v11 = *(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_qualifierCount);
    if (v4)
    {
      if (v6)
      {
        v59 = v0;
        if (v11)
        {
          sub_54058();
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_54048(v64);
          v60 = *(v0 + v3);
          v12 = sub_44BC(&qword_775C0, &qword_574F0);
          v57 = &v54;
          v54 = *(v12 - 8);
          v13 = *(v54 + 64);
          __chkstk_darwin(v12);
          v58 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
          v14 = &v54 - v58;
          v15 = sub_539F8();
          v16 = *(*(v15 - 8) + 64);
          __chkstk_darwin(v15 - 8);
          v56 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_539D8();
          sub_F6A0();
          sub_538E8();
          v55 = sub_F6F4();
          sub_549D8();
          v17 = *(v54 + 8);
          v17(v14, v12);
          sub_54038(v61);

          v65._countAndFlagsBits = 0x2C737961776C6120;
          v65._object = 0xE900000000000020;
          sub_54048(v65);
          v60 = *(v59 + v5);
          v19 = __chkstk_darwin(v18);
          v20 = &v54 - v58;
          __chkstk_darwin(v19);
          sub_539D8();
          sub_538E8();
          sub_549D8();
          v17(v20, v12);
          sub_54038(v61);

          v66._countAndFlagsBits = 0xD000000000000014;
          v66._object = 0x800000000005CC20;
          sub_54048(v66);
          sub_54088();
          if (qword_76FD8 == -1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_54058();
          v71._countAndFlagsBits = 0;
          v71._object = 0xE000000000000000;
          sub_54048(v71);
          v60 = *(v0 + v3);
          v37 = sub_44BC(&qword_775C0, &qword_574F0);
          v57 = &v54;
          v54 = *(v37 - 8);
          v38 = *(v54 + 64);
          __chkstk_darwin(v37);
          v58 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
          v39 = &v54 - v58;
          v40 = sub_539F8();
          v41 = *(*(v40 - 8) + 64);
          __chkstk_darwin(v40 - 8);
          v56 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
          sub_539D8();
          sub_F6A0();
          sub_538E8();
          v55 = sub_F6F4();
          sub_549D8();
          v42 = *(v54 + 8);
          v42(v39, v37);
          sub_54038(v61);

          v72._countAndFlagsBits = 0x2C737961776C6120;
          v72._object = 0xE900000000000020;
          sub_54048(v72);
          v60 = *(v59 + v5);
          v44 = __chkstk_darwin(v43);
          v45 = &v54 - v58;
          __chkstk_darwin(v44);
          sub_539D8();
          sub_538E8();
          sub_549D8();
          v42(v45, v37);
          sub_54038(v61);

          v73._countAndFlagsBits = 0x7520656C69687720;
          v73._object = 0xEC000000676E6973;
          sub_54048(v73);
          sub_54088();
          if (qword_76FD8 == -1)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_54058();
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        sub_54048(v69);
        v60 = *(v0 + v3);
        v30 = sub_44BC(&qword_775C0, &qword_574F0);
        v31 = *(v30 - 8);
        v32 = *(v31 + 64);
        __chkstk_darwin(v30);
        v34 = &v54 - v33;
        v35 = sub_539F8();
        v36 = *(*(v35 - 8) + 64);
        __chkstk_darwin(v35 - 8);
        sub_539D8();
        sub_F6A0();
        sub_538E8();
        sub_F6F4();
        sub_549D8();
        (*(v31 + 8))(v34, v30);
        sub_54038(v61);

        v70._countAndFlagsBits = 0x737961776C6120;
        v70._object = 0xE700000000000000;
        sub_54048(v70);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_35;
    }

    if (v6)
    {
      if (v11)
      {
        sub_54058();
        v67._countAndFlagsBits = 0;
        v67._object = 0xE000000000000000;
        sub_54048(v67);
        v60 = *(v0 + v5);
        v23 = sub_44BC(&qword_775C0, &qword_574F0);
        v24 = *(v23 - 8);
        v25 = *(v24 + 64);
        __chkstk_darwin(v23);
        v27 = &v54 - v26;
        v28 = sub_539F8();
        v29 = *(*(v28 - 8) + 64);
        __chkstk_darwin(v28 - 8);
        sub_539D8();
        sub_F6A0();
        sub_538E8();
        sub_F6F4();
        sub_549D8();
        (*(v24 + 8))(v27, v23);
        sub_54038(v61);

        v68._object = 0x800000000005CC90;
        v68._countAndFlagsBits = 0xD000000000000013;
        sub_54048(v68);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_54058();
        v74._countAndFlagsBits = 0;
        v74._object = 0xE000000000000000;
        sub_54048(v74);
        v60 = *(v0 + v5);
        v46 = sub_44BC(&qword_775C0, &qword_574F0);
        v47 = *(v46 - 8);
        v48 = *(v47 + 64);
        __chkstk_darwin(v46);
        v50 = &v54 - v49;
        v51 = sub_539F8();
        v52 = *(*(v51 - 8) + 64);
        __chkstk_darwin(v51 - 8);
        sub_539D8();
        sub_F6A0();
        sub_538E8();
        sub_F6F4();
        sub_549D8();
        (*(v47 + 8))(v50, v46);
        sub_54038(v61);

        v75._countAndFlagsBits = 0x7520656C69687720;
        v75._object = 0xEC000000676E6973;
        sub_54048(v75);
        sub_54088();
        if (qword_76FD8 == -1)
        {
LABEL_29:
          v53 = qword_7BBF8;
          return sub_541D8();
        }
      }

LABEL_35:
      swift_once();
      goto LABEL_29;
    }

    sub_54078();
    if (qword_76FD8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  if (*(v0 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState) == 1)
  {
    sub_54078();
    if (qword_76FD8 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  sub_54078();
  if (qword_76FD8 != -1)
  {
LABEL_34:
    swift_once();
  }

LABEL_16:
  v21 = qword_7BBF8;
  return sub_541D8();
}

uint64_t sub_1B4EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_gotLocationState) == 1)
  {
    v53 = v1;
    if ((*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isStatusBarIconEnabled) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_isServiceEnabled) & 1) == 0)
    {
      v33 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_id);
      v34 = sub_53918();
      v35 = *(*(v34 - 8) + 64);
      __chkstk_darwin(v34 - 8);
      sub_4AC4(v33);
      v36 = sub_541F8();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = sub_1A50C();
      v56 = v40 & 1;
      v55 = v44 & 1;
      v52 = v33;
      v57[0] = v33;
      v58 = v36;
      v59 = v38;
      v60 = v40 & 1;
      v61 = v42;
      v62 = v43;
      v63 = v45;
      v64 = v44 & 1;
      v66 = 0;
      v67 = 0;
      v65 = v46;
      v68 = 511;
      v69[0] = v33;
      v70 = v36;
      v71 = v38;
      v72 = v40 & 1;
      v73 = v42;
      v74 = v43;
      v75 = v45;
      v76 = v44 & 1;
      v78 = 0;
      v79 = 0;
      v77 = v46;
      v80 = 511;
      sub_F828(v57, v54);
      sub_F884(v69);
      v50 = v59;
      v51 = v58;
      v48 = v62;
      v49 = v61;
      v27 = v63;
      v19 = v65;
      v18 = v66;
      v47 = v67;
      v21 = v57[0] & 0x3F;
      v22 = v60 & 1;
      v23 = v64 | 0x4000000000000000;
      v24 = v68;
      result = sub_1B854(v53);
      v26 = v47;
    }

    else
    {
      v3 = *(v1 + OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_id);
      v4 = sub_53918();
      v5 = *(*(v4 - 8) + 64);
      __chkstk_darwin(v4 - 8);
      sub_4AC4(v3);
      v6 = sub_541F8();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = sub_1A50C();
      v56 = v10 & 1;
      v55 = v14 & 1;
      v52 = v3;
      v57[0] = v3;
      v58 = v6;
      v59 = v8;
      v60 = v10 & 1;
      v61 = v12;
      v62 = v13;
      v63 = v15;
      v64 = v14 & 1;
      v66 = 0;
      v67 = 0;
      v65 = v16;
      LOBYTE(v68) = -1;
      v69[0] = v3;
      v70 = v6;
      v71 = v8;
      v72 = v10 & 1;
      v73 = v12;
      v74 = v13;
      v75 = v15;
      v76 = v14 & 1;
      v78 = 0;
      v79 = 0;
      v77 = v16;
      LOBYTE(v80) = -1;
      sub_13C90(v57, v54);
      sub_13CEC(v69);
      v50 = v59;
      v51 = v58;
      v48 = v62;
      v49 = v61;
      v17 = v63;
      v19 = v65;
      v18 = v66;
      v20 = v67;
      v21 = v57[0] & 0x3F;
      v22 = v60 & 1;
      v23 = v64 | 0x8000000000000000;
      v24 = v68;
      result = sub_1B854(v53);
      v26 = v20;
      v27 = v17;
    }

    v31 = v48;
    v30 = v49;
    v29 = v50;
    v28 = v51;
    v32 = v52;
  }

  else
  {
    result = sub_1B854(v1);
    v28 = 0;
    v29 = 0;
    v22 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v23 = 0;
    v19 = 0;
    v18 = 0;
    v26 = 0;
    v24 = 0;
    v32 = 0;
    v21 = 0x3FFFFFFFC0;
  }

  *a1 = v32;
  *(a1 + 8) = v21;
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  *(a1 + 32) = v22;
  *(a1 + 40) = v30;
  *(a1 + 48) = v31;
  *(a1 + 56) = v27;
  *(a1 + 64) = v23;
  *(a1 + 72) = v19;
  *(a1 + 80) = v18;
  *(a1 + 88) = v26;
  *(a1 + 96) = v24;
  return result;
}

uint64_t sub_1B854(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings37LocationServicesStateListItemProvider_cancellables;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(v4 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v4 < 0)
  {
    v5 = *(a1 + v2);
  }

  v6 = *(a1 + v2);

  v7 = sub_54A18();

  if (!v7)
  {
LABEL_7:
    v8 = sub_548B8();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v13 = [objc_opt_self() defaultCenter];
    if (qword_76FA0 != -1)
    {
      swift_once();
    }

    sub_548C8();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_11EB8();
    sub_53D98();

    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    sub_53CB8();
    swift_endAccess();
  }

  return result;
}

__n128 sub_1BAD4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1B4EC(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BB4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BB84()
{
  v0 = sub_44BC(&qword_777B8, &qword_57750);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_547B8();
    v6 = sub_547D8();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v8 = v5;
    sub_18D0C(0, 0, v3, &unk_57850, v7);

    return sub_140D8(v3);
  }

  return result;
}

uint64_t sub_1BCE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_192B0(a1, v4, v5, v6);
}

unint64_t sub_1BD9C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_54C28();
  sub_54C38(a1);
  v4 = sub_54C58();
  return sub_1BF74(a1, v4);
}

unint64_t sub_1BE04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_54C28();
  sub_546C8();
  v6 = sub_54C58();

  return sub_1BFE4(a1, a2, v6);
}

unint64_t sub_1BE7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_54A38(*(v2 + 40));

  return sub_1C09C(a1, v4);
}

unint64_t sub_1BEC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_54C28();
  type metadata accessor for CFString(0);
  sub_1C500(&qword_772E8, type metadata accessor for CFString);
  sub_53AA8();
  v4 = sub_54C58();

  return sub_1C164(a1, v4);
}

unint64_t sub_1BF74(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_54BD8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C09C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_CA98(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_54A48();
      sub_1C37C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C164(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1C500(&qword_772E8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_53A98();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C270()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C2B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_14A00;

  return sub_194B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C3D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1C424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_14A00;

  return sub_1A228(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C570()
{
  v1 = *(v0[19] + 32);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C694;
  v2 = swift_continuation_init();
  v0[17] = sub_44BC(&qword_77B18, &qword_578F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1CBB4;
  v0[13] = &unk_6F2E0;
  v0[14] = v2;
  [v1 getDevicesWithFlags:1024 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1C694()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1C91C;
  }

  else
  {
    v3 = sub_1C7A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1C7A4()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v0[18];
    }

    v7 = v0[18];
    v2 = sub_54B58();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = v0[19];
  if (v2 != *(v3 + 24))
  {
    sub_7738((v3 + 40), *(v3 + 64));
    sub_54AA8(16);

    v9._countAndFlagsBits = sub_6E88(*(v3 + 16));
    sub_546D8(v9);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v3 + 24) = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C91C()
{
  v17 = v0;
  v1 = v0[20];
  swift_willThrow();
  if (qword_76FE8 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_53C38();
  sub_7700(v3, qword_7BC18);
  swift_errorRetain();
  v4 = sub_53C18();
  v5 = sub_54808();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    v0[10] = v7;
    swift_errorRetain();
    sub_44BC(&qword_778C0, &unk_57900);
    v10 = sub_54698();
    v12 = sub_18710(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "Failed to fetch devices with error: %s.", v8, 0xCu);
    sub_777C(v9);
  }

  else
  {
  }

  v13 = v0[19];
  if (*(v13 + 24))
  {
    sub_7738((v13 + 40), *(v13 + 64));
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_54AA8(16);

    strcpy(v16, "Reload due to ");
    HIBYTE(v16[1]) = -18;
    v19._countAndFlagsBits = sub_6E88(*(v13 + 16));
    sub_546D8(v19);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v13 + 24) = 0;
  v14 = v0[1];

  return v14();
}

uint64_t sub_1CBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_7738((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_44BC(&qword_778C0, &unk_57900);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1D15C();
    **(*(v4 + 64) + 40) = sub_54748();

    return _swift_continuation_throwingResume(v4);
  }
}

double sub_1CC94@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_54048(v56);
  v36 = *(v1 + 24);
  v5 = sub_44BC(&qword_775C0, &qword_574F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8 - 8];
  v10 = sub_539F8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v6 + 8))(v9, v5);
  sub_54038(v45);

  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_54048(v57);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_7BBF8;
  v13 = sub_541D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v1 + 16);
  v21 = sub_53918();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_4AC4(v20);
  v23 = sub_541F8();
  v35[104] = v24 & 1;
  v35[96] = v17 & 1;
  LOBYTE(v36) = v20;
  *&v37 = v23;
  *(&v37 + 1) = v25;
  v38 = v24 & 1;
  *&v39 = v26;
  *(&v39 + 1) = v13;
  v40 = v15;
  v41 = v17 & 1;
  v43 = 0;
  v42 = v19;
  v44 = 511;
  LOBYTE(v45._countAndFlagsBits) = v20;
  v45._object = v23;
  v46 = v25;
  v47 = v24 & 1;
  v48 = v26;
  v49 = v13;
  v50 = v15;
  v51 = v17 & 1;
  v52 = v19;
  v53 = 0;
  v54 = 0;
  v55 = 511;
  sub_F828(&v36, v35);
  sub_F884(&v45);
  v27 = v40;
  v28 = v43;
  v29 = v44;
  v30 = v36 & 0x3F;
  v31 = v38 & 1;
  v32 = v41 | 0x4000000000000000;
  *a1 = v20;
  *(a1 + 8) = v30;
  *(a1 + 16) = v37;
  *(a1 + 32) = v31;
  *(a1 + 40) = v39;
  *(a1 + 56) = v27;
  *(a1 + 64) = v32;
  result = *&v42;
  *(a1 + 72) = v42;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  return result;
}

uint64_t sub_1D06C()
{
  sub_777C((v0 + 40));

  return swift_deallocClassInstance();
}

__n128 sub_1D0D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1CC94(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1D15C()
{
  result = qword_775D8;
  if (!qword_775D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_775D8);
  }

  return result;
}

void sub_1D1A8(uint64_t a1, uint64_t a2)
{
  if (&_SRIsDataCollectionEnabled)
  {
    v3 = sub_44BC(&qword_777B8, &qword_57750);
    v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v3 - 8);
    v6 = &v9 - v5;
    sub_547B8();
    v7 = sub_547D8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a2;

    sub_18D0C(0, 0, v6, &unk_579D8, v8);

    sub_140D8(v6);
  }
}

uint64_t sub_1D2DC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v2 = sub_54458();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_54498();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_544B8();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_E444(0, &qword_775E0, OS_dispatch_queue_ptr);
  v18 = sub_54878();
  sub_544A8();
  sub_544C8();
  v19 = *(v11 + 8);
  v19(v15, v10);
  aBlock[4] = sub_1E8BC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_51A90;
  aBlock[3] = &unk_6F3F0;
  v20 = _Block_copy(aBlock);

  sub_54478();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_111CC();
  sub_44BC(&qword_775F0, &qword_574F8);
  sub_11224();
  sub_549E8();
  sub_54848();
  _Block_release(v20);

  (*(v27 + 8))(v5, v2);
  (*(v25 + 8))(v9, v26);
  return (v19)(v17, v23);
}

uint64_t sub_1D640(uint64_t result)
{
  if (&_SRIsDataCollectionEnabled)
  {
    v1 = result;
    v2 = sub_44BC(&qword_777B8, &qword_57750);
    v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v2 - 8);
    v5 = &v8 - v4;
    sub_547B8();
    v6 = sub_547D8();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;

    sub_18D0C(0, 0, v5, &unk_579D0, v7);

    return sub_140D8(v5);
  }

  return result;
}

double sub_1D774@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_54058();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_54048(v56);
  v36 = *(v1 + 24);
  v5 = sub_44BC(&qword_775C0, &qword_574F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8 - 8];
  v10 = sub_539F8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_539D8();
  sub_F6A0();
  sub_538E8();
  sub_F6F4();
  sub_549D8();
  (*(v6 + 8))(v9, v5);
  sub_54038(v45);

  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_54048(v57);
  sub_54088();
  if (qword_76FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_7BBF8;
  v13 = sub_541D8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v1 + 16);
  v21 = sub_53918();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_4AC4(v20);
  v23 = sub_541F8();
  v35[104] = v24 & 1;
  v35[96] = v17 & 1;
  LOBYTE(v36) = v20;
  *&v37 = v23;
  *(&v37 + 1) = v25;
  v38 = v24 & 1;
  *&v39 = v26;
  *(&v39 + 1) = v13;
  v40 = v15;
  v41 = v17 & 1;
  v43 = 0;
  v42 = v19;
  v44 = 511;
  LOBYTE(v45._countAndFlagsBits) = v20;
  v45._object = v23;
  v46 = v25;
  v47 = v24 & 1;
  v48 = v26;
  v49 = v13;
  v50 = v15;
  v51 = v17 & 1;
  v52 = v19;
  v53 = 0;
  v54 = 0;
  v55 = 511;
  sub_F828(&v36, v35);
  sub_F884(&v45);
  v27 = v40;
  v28 = v43;
  v29 = v44;
  v30 = v36 & 0x3F;
  v31 = v38 & 1;
  v32 = v41 | 0x4000000000000000;
  *a1 = v20;
  *(a1 + 8) = v30;
  *(a1 + 16) = v37;
  *(a1 + 32) = v31;
  *(a1 + 40) = v39;
  *(a1 + 56) = v27;
  *(a1 + 64) = v32;
  result = *&v42;
  *(a1 + 72) = v42;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  return result;
}

uint64_t sub_1DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  v5 = *(*(sub_44BC(&qword_777B8, &qword_57750) - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1DBE8, 0, 0);
}

uint64_t sub_1DBE8()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  if (SRIsDataCollectionEnabled())
  {
    v2 = v0[8];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v0[6] = sub_1E7D4;
    v0[7] = v3;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1E534;
    v0[5] = &unk_6F3A0;
    v4 = _Block_copy(v0 + 2);
    v5 = v0[7];

    SRAuthorizationFetchSnapshot();
    _Block_release(v4);
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = sub_547D8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = *(v1 + 16);
    sub_547A8();

    v10 = sub_54798();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v7;
    v11[5] = v9;
    sub_12270(0, 0, v6, &unk_579B0, v11);
  }

  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_547A8();
  v5[4] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_1EA90, v7, v6);
}

void sub_1DE80(NSObject *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_44BC(&qword_777B8, &qword_57750);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  if (a2)
  {
    if (qword_76FF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = v11;
    v50 = a4;
    v19 = a1 + 8;
    v20 = 1 << LOBYTE(a1[4].isa);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    isa = v21 & a1[8].isa;

    v51 = a3;
    swift_beginAccess();
    v23 = 0;
    v24 = (v20 + 63) >> 6;
    v52 = v24;
    v53 = a1 + 8;
    v54 = a1;
    if (isa)
    {
LABEL_9:
      a2 = v23;
LABEL_13:
      v25 = *(a1[7].isa + ((a2 << 9) | (8 * __clz(__rbit64(isa)))));
      isa &= isa - 1;
      v26 = 1 << *(v25 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v25 + 64);
      v29 = (v26 + 63) >> 6;

      v30 = 0;
      while (v28)
      {
        v31 = v30;
LABEL_23:
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = *(*(v25 + 56) + ((v31 << 9) | (8 * v32)));
        sub_E444(0, &qword_77C00, NSObject_ptr);
        v34 = objc_allocWithZone(NSNumber);
        v35 = v33;
        v36 = [v34 initWithInteger:1];
        v37 = sub_54948();

        if (v37)
        {

          v38 = *(v51 + 16);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            __break(1u);
            return;
          }

          *(v51 + 16) = v40;
LABEL_27:
          v23 = a2;
          v19 = v53;
          a1 = v54;
          v24 = v52;
          if (!isa)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v29)
        {

          goto LABEL_27;
        }

        v28 = *(v25 + 64 + 8 * v31);
        ++v30;
        if (v28)
        {
          v30 = v31;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      while (1)
      {
        a2 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (a2 >= v24)
        {

          v41 = sub_547D8();
          v42 = v49;
          (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
          v43 = v51;
          swift_beginAccess();
          v44 = *(v43 + 16);
          sub_547A8();
          v45 = v50;

          v46 = sub_54798();
          v47 = swift_allocObject();
          v47[2] = v46;
          v47[3] = &protocol witness table for MainActor;
          v47[4] = v45;
          v47[5] = v44;
          sub_12270(0, 0, v42, &unk_579C8, v47);

          return;
        }

        isa = v19[a2].isa;
        ++v23;
        if (isa)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_53C38();
  sub_7700(v12, qword_7BC48);
  swift_errorRetain();
  v54 = sub_53C18();
  v13 = sub_54808();

  if (os_log_type_enabled(v54, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v14 = 136315138;
    v55 = a2;
    swift_errorRetain();
    sub_44BC(&qword_779A0, &qword_57800);
    v16 = sub_54698();
    v18 = sub_18710(v16, v17, &v56);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v54, v13, "Failed to fetch SR authorization snapshot with error: %s.", v14, 0xCu);
    sub_777C(v15);
  }

  else
  {
    v48 = v54;
  }
}

uint64_t sub_1E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_547A8();
  v5[4] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_1E3F0, v7, v6);
}

uint64_t sub_1E3F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  if (*(v3 + 24) != v2)
  {
    v4 = v0[2];
    sub_7738((v4 + 48), *(v4 + 72));
    sub_54AA8(16);

    v8._countAndFlagsBits = sub_6E88(*(v4 + 16));
    sub_546D8(v8);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v3 + 24) = v0[3];
  v5 = v0[1];

  return v5();
}

void sub_1E534(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_44BC(&qword_77BF8, &qword_579B8);
  v6 = sub_545C8();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1E5F0()
{
  v1 = v0[4];

  sub_777C(v0 + 6);
  v2 = v0[12];

  v3 = v0[14];

  return swift_deallocClassInstance();
}

__n128 sub_1E664@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D774(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_1DDE8(a1, v4, v5, v7, v6);
}

uint64_t sub_1E794()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1E7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E7FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_14A00;

  return sub_1E358(a1, v4, v5, v7, v6);
}

uint64_t sub_1E8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_1DB4C(a1, v4, v5, v6);
}

uint64_t sub_1E980(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1E9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_1DB4C(a1, v4, v5, v6);
}

uint64_t sub_1EA94(uint64_t result)
{
  v2 = result;
  if (*(v1 + 32) != result)
  {
    sub_7738((v1 + 56), *(v1 + 80));
    sub_54AA8(16);

    v3._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v3);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1EB98(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_7400(*(result + 16));
    if (v3)
    {
      v5 = 0;
      v6 = &_swiftEmptySetSingleton;
      v4 = v3;
      sub_1F598(v3, v1, &v6, &v5);

      swift_beginAccess();
      sub_1EA94(v5);
    }
  }

  return result;
}

uint64_t sub_1EC4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + 16) != 1)
    {
    }

    v2 = [objc_allocWithZone(ADTrackingTransparency) init];
    if ([v2 crossAppTrackingAllowedSwitchEnabled])
    {
      v3 = [v2 crossAppTrackingAllowed];
      v4 = (v1 + 52);
      v5 = v3;
      if (v3 == *(v1 + 52))
      {
        goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
      v5 = 0;
      v4 = (v1 + 52);
      if ((*(v1 + 52) & 1) == 0)
      {
LABEL_8:

        *v4 = v5;
      }
    }

    sub_7738((v1 + 56), *(v1 + 80));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    v5 = v3;
    goto LABEL_8;
  }

  return result;
}

void sub_1ED98()
{
  if (*(v0 + 16) == 1)
  {
    v1 = [objc_allocWithZone(ADTrackingTransparency) init];
    if ([v1 crossAppTrackingAllowedSwitchEnabled])
    {
      v2 = [v1 crossAppTrackingAllowed];
      v3 = (v0 + 52);
      v4 = v2;
      if (v2 == *(v0 + 52))
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v4 = 0;
      v3 = (v0 + 52);
      if ((*(v0 + 52) & 1) == 0)
      {
LABEL_7:

        *v3 = v4;
        return;
      }
    }

    sub_7738((v0 + 56), *(v0 + 80));
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    v4 = v2;
    goto LABEL_7;
  }
}

uint64_t sub_1EEA4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[5];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[5];
    }

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = v0[5];

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_11288();
      v18 = v1[5];
      v1[5] = &_swiftEmptySetSingleton;

      v19 = v1[3];

      v20 = v1[5];

      sub_777C(v1 + 7);
      v21 = v1[13];

      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1F0BC()
{
  sub_1EEA4();

  return swift_deallocClassInstance();
}

double sub_1F114@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_54068();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_54078();
  v6 = sub_541D8();
  v10 = v6;
  v11 = v7;
  v12 = v9;
  if (*(v1 + 16) == 1 && *(v1 + 52) != 1)
  {
    v25 = 1;
    v23 = v8;
  }

  else
  {
    v41 = v8;
    v42 = v7;
    v43 = v6;
    v44 = v9;
    sub_54058();
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    sub_54048(v66);
    v46 = *(v1 + 32);
    v13 = sub_44BC(&qword_775C0, &qword_574F0);
    v39[1] = v39;
    v40 = v1;
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    __chkstk_darwin(v13);
    v17 = v39 - v16;
    v18 = sub_539F8();
    v19 = *(*(v18 - 8) + 64);
    __chkstk_darwin(v18 - 8);
    sub_539D8();
    sub_F6A0();
    sub_538E8();
    sub_F6F4();
    sub_549D8();
    (*(v14 + 8))(v17, v13);
    sub_54038(v55);

    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    sub_54048(v67);
    sub_54088();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v20 = qword_7BBF8;
    v10 = sub_541D8();
    v11 = v21;
    v23 = v22;
    v12 = v24;
    sub_84F8(v43, v42, v41 & 1);

    v2 = v40;
    v25 = *(v40 + 16);
  }

  v26 = sub_53918();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  sub_4AC4(v25);
  v28 = sub_541F8();
  v45[104] = v29 & 1;
  v45[96] = v23 & 1;
  LOBYTE(v46) = v25;
  *&v47 = v28;
  *(&v47 + 1) = v30;
  v48 = v29 & 1;
  *&v49 = v31;
  *(&v49 + 1) = v10;
  v50 = v11;
  v51 = v23 & 1;
  v53 = 0;
  v52 = v12;
  v54 = 511;
  LOBYTE(v55._countAndFlagsBits) = v25;
  v55._object = v28;
  v56 = v30;
  v57 = v29 & 1;
  v58 = v31;
  v59 = v10;
  v60 = v11;
  v61 = v23 & 1;
  v62 = v12;
  v63 = 0;
  v64 = 0;
  v65 = 511;
  sub_F828(&v46, v45);
  sub_F884(&v55);
  v32 = v50;
  v33 = v53;
  v34 = v54;
  v35 = v46 & 0x3F;
  v36 = v48 & 1;
  v37 = v51 | 0x4000000000000000;
  *a1 = *(v2 + 16);
  *(a1 + 8) = v35;
  *(a1 + 16) = v47;
  *(a1 + 32) = v36;
  *(a1 + 40) = v49;
  *(a1 + 56) = v32;
  *(a1 + 64) = v37;
  result = *&v52;
  *(a1 + 72) = v52;
  *(a1 + 88) = v33;
  *(a1 + 96) = v34;
  return result;
}

uint64_t sub_1F598(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  result = sub_1BEC0(result);
  if ((v7 & 1) == 0)
  {
    return result;
  }

  result = *(*(a2 + 56) + 8 * result);
  v34 = *(result + 16);
  if (!v34)
  {
    return result;
  }

  v33 = result + 32;

  v8 = 0;
  v36 = a3;
  v37 = a4;
  v32 = result;
  while (1)
  {
    if (v8 >= *(result + 16))
    {
      goto LABEL_37;
    }

    v9 = *(v33 + 8 * v8);
    v35 = v8 + 1;
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    v38 = v9;

    swift_beginAccess();
    result = swift_beginAccess();
    v14 = 0;
    v15 = (v11 + 63) >> 6;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_14:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 < v15)
    {
      v13 = *(v10 + 8 * v16);
      ++v14;
      if (!v13)
      {
        goto LABEL_14;
      }

      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = v17 | (v16 << 6);
        v19 = (*(v38 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v38 + 56) + 8 * v18);
        v23 = *a3;
        if (*(*a3 + 16))
        {
          v24 = *(v23 + 40);
          sub_54C28();

          sub_546C8();
          v25 = sub_54C58();
          v26 = -1 << *(v23 + 32);
          v27 = v25 & ~v26;
          if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            v28 = ~v26;
            while (1)
            {
              v29 = (*(v23 + 48) + 16 * v27);
              v30 = *v29 == v21 && v29[1] == v20;
              if (v30 || (sub_54BD8() & 1) != 0)
              {
                break;
              }

              v27 = (v27 + 1) & v28;
              if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            v14 = v16;
            a3 = v36;
            a4 = v37;
            if (v13)
            {
              goto LABEL_13;
            }

            goto LABEL_14;
          }

LABEL_26:

          a3 = v36;
          a4 = v37;
        }

        else
        {
          v31 = v19[1];
        }

        if ((v22 - 2) < 3)
        {
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_36;
          }

          ++*a4;
          swift_beginAccess();
          sub_1F8F4(&v39, v21, v20);
          swift_endAccess();
        }

        v14 = v16;
        if (!v13)
        {
          goto LABEL_14;
        }

LABEL_13:
        v16 = v14;
      }
    }

    v8 = v35;
    result = v32;
    if (v35 == v34)
    {
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

__n128 sub_1F87C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1F114(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1F8F4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_54C28();
  sub_546C8();
  v9 = sub_54C58();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_54BD8() & 1) != 0)
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

    sub_1FCA4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1FA44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_44BC(&qword_77CE0, &unk_57A60);
  result = sub_54A78();
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
      sub_54C28();
      sub_546C8();
      result = sub_54C58();
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

Swift::Int sub_1FCA4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1FA44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1FE24();
      goto LABEL_16;
    }

    sub_1FF80(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_54C28();
  sub_546C8();
  result = sub_54C58();
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

      result = sub_54BD8();
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
  result = sub_54BF8();
  __break(1u);
  return result;
}

void *sub_1FE24()
{
  v1 = v0;
  sub_44BC(&qword_77CE0, &unk_57A60);
  v2 = *v0;
  v3 = sub_54A68();
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

uint64_t sub_1FF80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_44BC(&qword_77CE0, &unk_57A60);
  result = sub_54A78();
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
      sub_54C28();

      sub_546C8();
      result = sub_54C58();
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

uint64_t sub_201B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_53D38();

  return v1;
}

uint64_t sub_2022C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_53D38();

  *a2 = v5;
  return result;
}

uint64_t sub_202AC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_53D38();

  v3 = sub_4DA00(a1, v5[0]);

  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 72))
    {
      sub_89B8(v1 + 48, v5);
      sub_7738(v5, v5[3]);
      type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
      sub_4B228();
      sub_777C(v5);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = a1;

  return sub_53D48();
}

uint64_t sub_20418()
{
  v1 = v0;
  v2 = sub_44BC(&qword_77DE8, &qword_57BB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  *(v1 + 16) = 0xD00000000000001CLL;
  *(v1 + 24) = 0x800000000005D2C0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  v7 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings24TCCAuthorizationProvider__authorizationDictionary;
  aBlock[0] = sub_5130C(&_swiftEmptyArrayStorage);
  sub_44BC(&unk_77D30, qword_57B08);
  sub_53D18();
  (*(v3 + 32))(v1 + v7, v6, v2);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  sub_215B4();
  v10 = sub_54878();
  aBlock[4] = sub_21600;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3EF90;
  aBlock[3] = &unk_6F528;
  v11 = _Block_copy(aBlock);

  v12 = sub_546B8();
  swift_beginAccess();
  notify_register_dispatch((v12 + 32), (v1 + 32), v10, v11);
  swift_endAccess();

  _Block_release(v11);

  sub_21608();
  v13 = *(v1 + 40);
  *(v1 + 40) = v14;

  return v1;
}

uint64_t sub_2065C(uint64_t a1, uint64_t a2)
{
  v3 = sub_44BC(&qword_777B8, &qword_57750);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  sub_547B8();
  v7 = sub_547D8();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_18D0C(0, 0, v6, &unk_57BC8, v8);

  return sub_47F8(v6, &qword_777B8, &qword_57750);
}

uint64_t sub_207B0()
{
  v1 = *(v0 + 16);
  sub_20810();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20810()
{
  result = tcc_server_create();
  if (result)
  {
    if (tcc_message_options_create())
    {
      v2 = swift_allocObject();
      *(v2 + 16) = sub_5130C(&_swiftEmptyArrayStorage);
      tcc_message_options_set_reply_handler_policy();
      v3 = *(v0 + 40);
      if (v3)
      {
        v4 = *(v0 + 40);
      }

      else
      {
        v4 = sub_54738();
      }

      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v0;
      v8[4] = sub_21410;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_21078;
      v8[3] = &unk_6F4D8;
      v6 = _Block_copy(v8);
      v7 = v3;
      swift_unknownObjectRetain();

      tcc_server_message_get_authorization_records_by_services();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v6);

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_209DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_44BC(&qword_777B8, &qword_57750);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  if (a2)
  {
    v12 = qword_76FF8;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_53C38();
    sub_7700(v14, qword_7BC48);
    v15 = v13;
    v49 = sub_53C18();
    v16 = sub_54808();

    if (os_log_type_enabled(v49, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v51 = v18;
      *v17 = 136315138;
      v50 = v15;
      type metadata accessor for CFError(0);
      sub_21538();
      v19 = sub_54C18();
      v21 = sub_18710(v19, v20, &v51);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v49, v16, "Failed tcc request with error %s", v17, 0xCu);
      sub_777C(v18);
    }

    else
    {

      v40 = v49;
    }

    return;
  }

  if (!a1)
  {
    v41 = sub_547D8();
    (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
    swift_beginAccess();
    v42 = *(a3 + 16);
    sub_547A8();

    v43 = sub_54798();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = a4;
    v44[5] = v42;
    sub_12270(0, 0, v11, &unk_57B58, v44);

    return;
  }

  swift_unknownObjectRetain();
  if (tcc_authorization_record_get_subject_identity())
  {
    if (tcc_authorization_record_get_service())
    {
      authorization_right = tcc_authorization_record_get_authorization_right();
      tcc_service_get_name();
      sub_546E8();
      v23 = sub_54638();

      tcc_identity_get_identifier();
      v24 = sub_546E8();
      v26 = v25;
      sub_44BC(&qword_77DD0, &qword_57B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_57A70;
      *(inited + 32) = v24;
      *(inited + 40) = v26;
      *(inited + 48) = authorization_right;
      v28 = sub_51404(inited);
      swift_setDeallocating();
      sub_47F8(inited + 32, &qword_77DD8, &qword_57B68);
      swift_beginAccess();
      v29 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a3 + 16);
      v31 = v50;
      *(a3 + 16) = 0x8000000000000000;
      v33 = sub_1BEC0(v23);
      v34 = v31[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        __break(1u);
        goto LABEL_30;
      }

      v37 = v32;
      if (v31[3] >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          *(a3 + 16) = v31;
          if (v32)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_BF10();
          v31 = v50;
          *(a3 + 16) = v50;
          if (v37)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_B1F8(v36, isUniquelyReferenced_nonNull_native);
        v31 = v50;
        v38 = sub_1BEC0(v23);
        if ((v37 & 1) != (v39 & 1))
        {
          type metadata accessor for CFString(0);
          sub_54C08();
          __break(1u);
          return;
        }

        v33 = v38;
        *(a3 + 16) = v31;
        if (v37)
        {
LABEL_25:
          inited = v31[7];
          v31 = *(inited + 8 * v33);
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(inited + 8 * v33) = v31;
          if (v46)
          {
LABEL_26:
            v48 = v31[2];
            v47 = v31[3];
            if (v48 >= v47 >> 1)
            {
              v31 = sub_239EC((v47 > 1), v48 + 1, 1, v31);
              *(inited + 8 * v33) = v31;
            }

            v31[2] = v48 + 1;
            v31[v48 + 4] = v28;
            swift_endAccess();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

LABEL_30:
          v31 = sub_239EC(0, v31[2] + 1, 1, v31);
          *(inited + 8 * v33) = v31;
          goto LABEL_26;
        }
      }

      sub_10A7C(v33, v23, &_swiftEmptyArrayStorage, v31);
      v45 = v23;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_547A8();
  v5[4] = sub_54798();
  v7 = sub_54788();

  return _swift_task_switch(sub_21008, v7, v6);
}

uint64_t sub_21008()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_202AC(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21078(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_210F8()
{
  v1 = *(v0 + 24);

  sub_47F8(v0 + 48, &qword_77DF0, &unk_57BD0);
  v2 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings24TCCAuthorizationProvider__authorizationDictionary;
  v3 = sub_44BC(&qword_77DE8, &qword_57BB8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TCCAuthorizationProvider()
{
  result = qword_77D18;
  if (!qword_77D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2121C()
{
  sub_212D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_212D8()
{
  if (!qword_77D28)
  {
    sub_4590(&unk_77D30, qword_57B08);
    v0 = sub_53D58();
    if (!v1)
    {
      atomic_store(v0, &qword_77D28);
    }
  }
}

uint64_t sub_21348@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_53CE8();
  *a1 = result;
  return result;
}

uint64_t sub_21398()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_213D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21430()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_21478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_13F74;

  return sub_20F70(a1, v4, v5, v7, v6);
}

unint64_t sub_21538()
{
  result = qword_77DE0;
  if (!qword_77DE0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77DE0);
  }

  return result;
}

uint64_t sub_21588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_202AC(v4);
}

unint64_t sub_215B4()
{
  result = qword_775E0;
  if (!qword_775E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_775E0);
  }

  return result;
}

void sub_21608()
{
  for (i = 0; i != 45; ++i)
  {
    v1 = sub_7400(*(&off_6E0F0 + i + 32));
    if (v1)
    {
      v2 = v1;
      sub_54728();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v3 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_54758();
      }

      sub_54778();
    }
  }

  if (!kTCCServicePhotosAdd)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v4 = kTCCServicePhotosAdd;
  sub_54728();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v6 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_54758();
  }

  sub_54778();
  if (!kTCCServiceEnergyKitGuidance)
  {
    goto LABEL_15;
  }

  v5 = kTCCServiceEnergyKitGuidance;
  sub_54728();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v7 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_54758();
  }

  sub_54778();
  type metadata accessor for CFString(0);
  sub_54738();
}

uint64_t sub_217D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_21810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14A00;

  return sub_20790(a1, v4, v5, v6);
}

id sub_218CC()
{
  result = kTCCServicePhotosAdd;
  if (kTCCServicePhotosAdd)
  {
    qword_77DF8 = kTCCServicePhotosAdd;
    return kTCCServicePhotosAdd;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EC(uint64_t result)
{
  v2 = result;
  if (*(v1 + 32) != result)
  {
    sub_7738((v1 + 72), *(v1 + 96));
    sub_54AA8(16);

    v3._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v3);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_219F0(uint64_t result)
{
  v2 = result;
  if (*(v1 + 40) != result)
  {
    sub_7738((v1 + 72), *(v1 + 96));
    sub_54AA8(16);

    v3._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v3);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_21AF4(uint64_t result)
{
  v2 = result;
  if (*(v1 + 48) != result)
  {
    sub_7738((v1 + 72), *(v1 + 96));
    sub_54AA8(16);

    v3._countAndFlagsBits = sub_6E88(*(v1 + 16));
    sub_546D8(v3);

    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_21BF8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C58(v1);
  }

  return result;
}

void sub_21C58(uint64_t a1)
{
  v3 = sub_7400(*(v1 + 16));
  if (v3)
  {
    v4 = v3;
    v9 = 0;
    v10 = &_swiftEmptySetSingleton;
    v7 = 0;
    v8 = 0;
    sub_22B64(v3, a1, &v10, &v8, &v9, &v7);
    v5 = *(v1 + 16);
    if (v5 == 16)
    {
      if (!kTCCServiceEnergyKitGuidance)
      {
        __break(1u);
        return;
      }

      v6 = kTCCServiceEnergyKitGuidance;
      sub_22B64(v6, a1, &v10, &v8, &v9, &v7);

      v5 = *(v1 + 16);
    }

    if (v5 == 8)
    {
      if (qword_76FB0 != -1)
      {
        swift_once();
      }

      sub_22B64(qword_77DF8, a1, &v10, &v8, &v9, &v7);
    }

    swift_beginAccess();
    sub_218EC(v9);
    swift_beginAccess();
    sub_219F0(v8);
    swift_beginAccess();
    sub_21AF4(v7);
  }
}

uint64_t sub_21DC0()
{
  if (v0[7])
  {

    sub_53CC8();
  }

  v1 = v0[3];

  v2 = v0[7];

  sub_777C(v0 + 9);
  v3 = v0[15];

  return swift_deallocClassInstance();
}

double sub_21E5C@<D0>(_BYTE *a1@<X8>)
{
  v3 = sub_54068();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_54078();
  v5 = sub_541D8();
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 32);
  v70 = v6;
  v71 = a1;
  if (v11)
  {
    if (!(v10 | v9))
    {
      v69 = v5;
      v12 = *(v1 + 16);
      if (v12 <= 0x16 && ((1 << v12) & 0x418240) != 0)
      {
        v13 = v7;
        sub_54058();
        v92._countAndFlagsBits = 0;
        v92._object = 0xE000000000000000;
        sub_54048(v92);
        v82[0] = *(v1 + 32);
        sub_54028();
        v93._countAndFlagsBits = 0x7370706120;
        v93._object = 0xE500000000000000;
        sub_54048(v93);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      v44 = v7;
      v68 = v8;
      sub_54058();
      v111._countAndFlagsBits = 0;
      v111._object = 0xE000000000000000;
      sub_54048(v111);
      v82[0] = *(v1 + 32);
      sub_54028();
      v112._countAndFlagsBits = 0x6361206C6C756620;
      v112._object = 0xEC00000073736563;
      sub_54048(v112);
      sub_54088();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v45 = qword_7BBF8;
      v19 = sub_541D8();
      v21 = v46;
      v23 = v47;
      v25 = v48;
      v26 = v44 & 1;
      v27 = v69;
      goto LABEL_30;
    }

    v68 = v8;
    if (v10)
    {
      v14 = v7;
      v15 = v5;
      if (v9)
      {
        sub_54058();
        v97._countAndFlagsBits = 0;
        v97._object = 0xE000000000000000;
        sub_54048(v97);
        v82[0] = *(v1 + 32);
        sub_54028();
        v98._countAndFlagsBits = 0x6361206C6C756620;
        v98._object = 0xEE00202C73736563;
        sub_54048(v98);
        v82[0] = *(v1 + 48);
        sub_54028();
        v99._countAndFlagsBits = 0x646574696D696C20;
        v99._object = 0xEA0000000000202CLL;
        sub_54048(v99);
        v82[0] = *(v1 + 40);
        sub_54028();
        v100._countAndFlagsBits = 0x6C6E6F2064646120;
        v100._object = 0xE900000000000079;
        sub_54048(v100);
        sub_54088();
        if (qword_76FD8 == -1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_54058();
        v108._countAndFlagsBits = 0;
        v108._object = 0xE000000000000000;
        sub_54048(v108);
        v82[0] = *(v1 + 32);
        sub_54028();
        v109._countAndFlagsBits = 0x6361206C6C756620;
        v109._object = 0xEE00202C73736563;
        sub_54048(v109);
        v82[0] = *(v1 + 48);
        sub_54028();
        v110._countAndFlagsBits = 0x646574696D696C20;
        v110._object = 0xE800000000000000;
        sub_54048(v110);
        sub_54088();
        if (qword_76FD8 == -1)
        {
LABEL_23:
          v32 = qword_7BBF8;
          v19 = sub_541D8();
          v21 = v33;
          v23 = v34;
          v25 = v35;
          v26 = v14 & 1;
          v27 = v15;
          goto LABEL_30;
        }
      }

      swift_once();
      goto LABEL_23;
    }

    v16 = v7;
    v17 = v5;
    sub_54058();
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    sub_54048(v103);
    v82[0] = *(v1 + 32);
    sub_54028();
    v104._countAndFlagsBits = 0x6361206C6C756620;
    v104._object = 0xEE00202C73736563;
    sub_54048(v104);
    v82[0] = *(v1 + 40);
    sub_54028();
    v105._countAndFlagsBits = 0x6C6E6F2064646120;
    v105._object = 0xE900000000000079;
    sub_54048(v105);
    sub_54088();
    if (qword_76FD8 == -1)
    {
LABEL_19:
      v18 = qword_7BBF8;
      v19 = sub_541D8();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = v16 & 1;
      v27 = v17;
LABEL_30:
      v43 = v70;
LABEL_31:
      sub_84F8(v27, v43, v26);
      goto LABEL_32;
    }

LABEL_36:
    swift_once();
    goto LABEL_19;
  }

  if (!v10)
  {
    v68 = v8;
    if (!v9)
    {
      v36 = v7;
      v37 = v5;
      v38 = v6;
      sub_54078();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v39 = qword_7BBF8;
      v19 = sub_541D8();
      v21 = v40;
      v23 = v41;
      v25 = v42;
      v26 = v36 & 1;
      v27 = v37;
      v43 = v38;
      goto LABEL_31;
    }

    v16 = v7;
    v17 = v5;
    sub_54058();
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    sub_54048(v101);
    v82[0] = *(v1 + 40);
    sub_54028();
    v102._countAndFlagsBits = 0x6C6E6F2064646120;
    v102._object = 0xE900000000000079;
    sub_54048(v102);
    sub_54088();
    if (qword_76FD8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

  v69 = v5;
  v13 = v7;
  if (v9)
  {
    sub_54058();
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    sub_54048(v94);
    v82[0] = *(v1 + 48);
    sub_54028();
    v95._countAndFlagsBits = 0x646574696D696C20;
    v95._object = 0xEA0000000000202CLL;
    sub_54048(v95);
    v82[0] = *(v1 + 40);
    sub_54028();
    v96._countAndFlagsBits = 0x6C6E6F2064646120;
    v96._object = 0xE900000000000079;
    sub_54048(v96);
    sub_54088();
    if (qword_76FD8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  sub_54058();
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  sub_54048(v106);
  v82[0] = *(v1 + 48);
  sub_54028();
  v107._countAndFlagsBits = 0x646574696D696C20;
  v107._object = 0xE800000000000000;
  sub_54048(v107);
  sub_54088();
  if (qword_76FD8 != -1)
  {
LABEL_38:
    swift_once();
  }

LABEL_21:
  v28 = qword_7BBF8;
  v19 = sub_541D8();
  v21 = v29;
  v23 = v30;
  v25 = v31;
  sub_84F8(v69, v70, v13 & 1);
LABEL_32:

  v49 = *(v1 + 16);
  v50 = sub_53918();
  v69 = &v68;
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v52 = v23 & 1;
  sub_4088(v19, v21, v52);

  sub_4AC4(v49);
  v53 = sub_541F8();
  v55 = v54;
  v70 = v1;
  v57 = v56;
  v59 = v58;
  sub_84F8(v19, v21, v52);

  v72[104] = v57 & 1;
  v72[96] = v52;
  v73[0] = v49;
  *&v74 = v53;
  *(&v74 + 1) = v55;
  v75 = v57 & 1;
  *&v76 = v59;
  *(&v76 + 1) = v19;
  v77 = v21;
  v78 = v52;
  v80 = 0;
  v79 = v25;
  v81 = -1;
  LOBYTE(v82[0]) = v49;
  v82[1] = v53;
  v82[2] = v55;
  v83 = v57 & 1;
  v84 = v59;
  v85 = v19;
  v86 = v21;
  v87 = v52;
  v89 = 0;
  v90 = 0;
  v88 = v25;
  v91 = -1;
  sub_13C90(v73, v72);
  sub_13CEC(v82);
  v60 = v71;
  v61 = v77;
  v62 = v80;
  v63 = v81;
  v64 = v73[0] & 0x3F;
  v65 = v75 & 1;
  v66 = v78 | 0x8000000000000000;
  *v71 = *(v70 + 16);
  *(v60 + 1) = v64;
  *(v60 + 1) = v74;
  *(v60 + 4) = v65;
  *(v60 + 40) = v76;
  *(v60 + 7) = v61;
  *(v60 + 8) = v66;
  result = *&v79;
  *(v60 + 72) = v79;
  *(v60 + 11) = v62;
  *(v60 + 48) = v63;
  return result;
}

__n128 sub_22B04@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_21E5C(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_22B64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  result = sub_1BEC0(result);
  if ((v10 & 1) == 0)
  {
    return result;
  }

  result = *(*(a2 + 56) + 8 * result);
  v39 = *(result + 16);
  if (!v39)
  {
    return result;
  }

  v38 = result + 32;

  v11 = 0;
  v41 = a5;
  v42 = a6;
  v43 = a4;
  v37 = result;
LABEL_6:
  if (v11 < *(result + 16))
  {
    v12 = *(v38 + 8 * v11);
    v40 = v11 + 1;
    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v12 + 64);
    v45 = v12;

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    v17 = 0;
    v44 = v13;
    if (!v16)
    {
      goto LABEL_13;
    }

    while (1)
    {
LABEL_17:
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = v19 | (v17 << 6);
        v21 = (*(v45 + 48) + 16 * v20);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(*(v45 + 56) + 8 * v20);
        v25 = *a3;
        if (*(*a3 + 16))
        {
          break;
        }

        v35 = v21[1];

        if (v24 == 4)
        {
LABEL_27:
          v33 = v43;
          v34 = *v43 + 1;
          if (__OFADD__(*v43, 1))
          {
            goto LABEL_55;
          }

          goto LABEL_41;
        }

LABEL_31:
        if (v24 == 3)
        {
          v34 = *a6 + 1;
          if (__OFADD__(*a6, 1))
          {
            goto LABEL_54;
          }

          v33 = a6;
LABEL_41:
          *v33 = v34;
          if (*a5 <= 0)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (v24 != 2)
        {
          goto LABEL_48;
        }

        type metadata accessor for CFString(0);
        if (qword_76FB0 != -1)
        {
          swift_once();
        }

        sub_CA40();
        result = sub_53A98();
        if (result)
        {
          v33 = v43;
          v34 = *v43 + 1;
          if (__OFADD__(*v43, 1))
          {
            goto LABEL_56;
          }

          goto LABEL_41;
        }

        v36 = *a5 + 1;
        if (__OFADD__(*a5, 1))
        {
          goto LABEL_57;
        }

        *a5 = v36;
        if (v36 <= 0)
        {
LABEL_42:
          if (*v43 <= 0 && *a6 < 1)
          {
            goto LABEL_48;
          }
        }

LABEL_47:
        swift_beginAccess();
        sub_1F8F4(&v47, v22, v23);
        swift_endAccess();
LABEL_48:

        v13 = v44;
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v26 = *(v25 + 40);
      sub_54C28();

      sub_546C8();
      v27 = sub_54C58();
      v28 = -1 << *(v25 + 32);
      v29 = v27 & ~v28;
      if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
LABEL_26:

        a5 = v41;
        a6 = v42;
        if (v24 == 4)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      v30 = ~v28;
      while (1)
      {
        v31 = (*(v25 + 48) + 16 * v29);
        v32 = *v31 == v22 && v31[1] == v23;
        if (v32 || (sub_54BD8() & 1) != 0)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      a5 = v41;
      a6 = v42;
      v13 = v44;
      if (!v16)
      {
        while (1)
        {
LABEL_13:
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v18 >= ((v14 + 63) >> 6))
          {
            break;
          }

          v16 = *(v13 + 8 * v18);
          ++v17;
          if (v16)
          {
            v17 = v18;
            goto LABEL_17;
          }
        }

        v11 = v40;
        result = v37;
        if (v40 != v39)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

id sub_22FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = &_swiftEmptyArrayStorage;
  v63[3] = &type metadata for TelephonyUtilities;
  v63[4] = sub_23874();
  v4 = sub_53A58();
  sub_777C(v63);
  if (v4)
  {
    v5 = sub_53918();
    v6 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v5 - 8);
    v7 = sub_54628();
    v8 = *(*(v7 - 8) + 64);
    __chkstk_darwin(v7 - 8);
    sub_54618();
    if (qword_76FE0 != -1)
    {
      swift_once();
    }

    v9 = sub_53908();
    v10 = sub_7700(v9, qword_7BC00);
    v11 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v10);
    (*(v13 + 16))(&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = sub_539F8();
    v15 = *(*(v14 - 8) + 64);
    __chkstk_darwin(v14 - 8);
    sub_539E8();
    sub_53928();
    v16 = sub_541F8();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    v61 = v21 & 1;
    sub_44BC(&qword_77618, &unk_57510);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_57A70;
    v24 = v61 & 1;
    *(v23 + 32) = 31;
    *(v23 + 33) = *v62;
    *(v23 + 36) = *&v62[3];
    *(v23 + 40) = 31;
    *(v23 + 48) = v16;
    *(v23 + 56) = v18;
    *(v23 + 64) = v24;
    *(v23 + 72) = v20;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0;
    *(v23 + 96) = 255;
    swift_beginAccess();
    sub_4088(v16, v18, v22);

    sub_23F94(v23);
    swift_endAccess();
    sub_84F8(v16, v18, v22);
  }

  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 sf_isiPhone];

  if (!v26)
  {
    goto LABEL_8;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = [result isPhoneMirroringActive];

  if ((v29 & 1) == 0)
  {
    v34 = sub_53918();
    v35 = *(*(v34 - 8) + 64);
    __chkstk_darwin(v34 - 8);
    v36 = sub_54628();
    v37 = *(*(v36 - 8) + 64);
    __chkstk_darwin(v36 - 8);
    sub_54618();
    if (qword_76FE0 != -1)
    {
      swift_once();
    }

    v38 = sub_53908();
    v39 = sub_7700(v38, qword_7BC00);
    v40 = *(*(v38 - 8) + 64);
    __chkstk_darwin(v39);
    (*(v42 + 16))(&v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = sub_539F8();
    v44 = *(*(v43 - 8) + 64);
    __chkstk_darwin(v43 - 8);
    sub_539E8();
    sub_53928();
    v45 = sub_541F8();
    v47 = v46;
    v49 = v48;
    v51 = v50 & 1;
    v61 = v50 & 1;
    sub_44BC(&qword_77618, &unk_57510);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_57A70;
    v53 = v61 & 1;
    *(v52 + 32) = 32;
    *(v52 + 33) = *v62;
    *(v52 + 36) = *&v62[3];
    *(v52 + 40) = 32;
    *(v52 + 48) = v45;
    *(v52 + 56) = v47;
    *(v52 + 64) = v53;
    *(v52 + 72) = v49;
    *(v52 + 80) = 0;
    *(v52 + 88) = 0;
    *(v52 + 96) = 255;
    swift_beginAccess();
    sub_4088(v45, v47, v51);

    sub_23F94(v52);
    swift_endAccess();
    sub_84F8(v45, v47, v51);

    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v54 = qword_7BBF8;
    v30 = sub_541D8();
    v31 = v55;
    v33 = v56;
    v32 = v57 & 1;
  }

  else
  {
LABEL_8:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  result = swift_beginAccess();
  v58 = v64;
  if (v64[2])
  {
    v59 = *(v2 + 16);
  }

  else
  {
    sub_A754(v30, v31, v32, v33);

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v58 = 0;
    v59 = 0;
  }

  *a1 = v59;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v30;
  *(a1 + 48) = v31;
  *(a1 + 56) = v32;
  *(a1 + 64) = v33;
  *(a1 + 72) = v58;
  return result;
}

__n128 sub_23828@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_22FE0(v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v6[4];
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23874()
{
  result = qword_77F80;
  if (!qword_77F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77F80);
  }

  return result;
}

char *sub_238C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77618, &unk_57510);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_239EC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_44BC(&qword_77FA0, &qword_57CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_44BC(&qword_77FA8, &unk_57CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23B20(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77628, &unk_575D0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_23C20(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77F88, &qword_57CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23D40(char *result, int64_t a2, char a3, char *a4)
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
    sub_44BC(&qword_77610, &qword_57508);
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

void *sub_23E4C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_44BC(&qword_77F90, &qword_57CD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_44BC(&qword_77F98, &qword_5A7C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23F94(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_238C8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_240A0()
{
  result = qword_77FB0;
  if (!qword_77FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_77FB0);
  }

  return result;
}

uint64_t sub_24118@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = sub_53918();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_4AC4(v3);
  result = sub_541F8();
  *a1 = v3;
  *(a1 + 8) = v3 & 0x3F;
  *(a1 + 16) = result;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 255;
  return result;
}

uint64_t sub_241D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_547A8();
  *(v4 + 24) = sub_54798();
  v6 = sub_54788();

  return _swift_task_switch(sub_2426C, v6, v5);
}

uint64_t sub_2426C()
{
  v2 = v0[2];
  v1 = v0[3];

  if ((*(v2 + 72) & 1) == 0)
  {
    *(v2 + 72) = AMFIShouldShowDeveloperModeSettings();
  }

  sub_7738((v0[2] + 24), *(v0[2] + 48));
  type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
  sub_4B228();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24344(uint64_t a1, uint64_t a2)
{
  v3 = sub_44BC(&qword_777B8, &qword_57750);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8);
  v7 = &v12 - v6;
  if (a2)
  {
    v8 = sub_547D8();
    v9 = *(*(v8 - 8) + 56);

    v9(v7, 1, 1, v8);
    sub_547A8();

    v10 = sub_54798();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = a2;
    sub_12270(0, 0, v7, &unk_57E50, v11);
  }

  return result;
}

uint64_t sub_24488()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v1, v0, *(v0 + 64), 0);

  sub_777C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_24518(uint64_t a1@<X8>)
{
  if (*(v1 + 72) == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    [v3 sf_isDeveloperModeEnabled];

    v4 = *(v1 + 16);
    v5 = sub_53918();
    v6 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v5 - 8);
    sub_4AC4(v4);
    v7 = sub_541F8();
    v27 = v8;
    v28 = v7;
    v26 = v9;
    v11 = v10;
    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v21 = qword_7BBF8;
    v22 = sub_541D8();
    v29[104] = v26 & 1;
    v29[96] = v23 & 1;
    v30[0] = v4;
    *&v31 = v28;
    *(&v31 + 1) = v27;
    v32 = v26 & 1;
    *&v33 = v11;
    *(&v33 + 1) = v22;
    v34 = v24;
    v35 = v23 & 1;
    v37 = 0;
    v36 = v25;
    v38 = 511;
    v39[0] = v4;
    v40 = v28;
    v41 = v27;
    v42 = v26 & 1;
    v43 = v11;
    v44 = v22;
    v45 = v24;
    v46 = v23 & 1;
    v48 = 0;
    v49 = 0;
    v47 = v25;
    v50 = 511;
    sub_F828(v30, v29);
    sub_F884(v39);
    v17 = v31;
    v18 = v33;
    v13 = v34;
    v19 = v36;
    v15 = v37;
    v16 = v38;
    v20 = v30[0] & 0x3F;
    v12 = v32 & 1;
    v14 = v35 | 0x4000000000000000;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v4 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0x3FFFFFFFC0;
  }

  *a1 = v4;
  *(a1 + 8) = v20;
  *(a1 + 16) = v17;
  *(a1 + 32) = v12;
  *(a1 + 40) = v18;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v19;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
}

__n128 sub_247C0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_24518(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24820()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_24860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_241D4(a1, v4, v5, v6);
}

uint64_t sub_24914()
{
  sub_53BF8();
  sub_53BC8();
  sub_53BE8();

  sub_53BC8();
  sub_53BD8();
}

uint64_t (*sub_24984())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_25018;
}

uint64_t sub_249E0(uint64_t a1)
{
  v2 = sub_44BC(&qword_777B8, &qword_57750);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_547D8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_547A8();

  v7 = sub_54798();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_12270(0, 0, v5, &unk_57EB8, v8);
}

uint64_t sub_24B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a4;
  sub_547A8();
  *(v4 + 112) = sub_54798();
  v6 = sub_54788();

  return _swift_task_switch(sub_24B9C, v6, v5);
}

uint64_t sub_24B9C()
{
  v2 = v0[13];
  v1 = v0[14];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_2850())
    {
      sub_53A08();
    }
  }

  v3 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_89B8(Strong + 24, (v0 + 2));

    sub_7738(v0 + 2, v0[5]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    sub_777C(v0 + 2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_24D18@<X0>(uint64_t a1@<X8>)
{
  result = sub_2850();
  if (result && (sub_53BF8(), sub_53BC8(), v4 = sub_53BE8(), result = , (v4 & 1) != 0))
  {
    v5 = *(v1 + 16);
    v6 = sub_53918();
    v7 = *(*(v6 - 8) + 64);
    __chkstk_darwin(v6 - 8);
    sub_4AC4(v5);
    v8 = sub_541F8();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_53BC8();
    v15 = sub_53BD8();
    v17 = v16;

    v27[104] = v12 & 1;
    v27[96] = 0;
    v28[0] = v5;
    *&v29 = v8;
    *(&v29 + 1) = v10;
    v30 = v12 & 1;
    *&v31 = v14;
    *(&v31 + 1) = v15;
    v32 = v17;
    v33 = 0;
    *(&v34 + 1) = 0;
    v35 = 0;
    *&v34 = &_swiftEmptyArrayStorage;
    v36 = 511;
    v37[0] = v5;
    v38 = v8;
    v39 = v10;
    v40 = v12 & 1;
    v41 = v14;
    v42 = v15;
    v43 = v17;
    v44 = 0;
    v45 = &_swiftEmptyArrayStorage;
    v46 = 0;
    v47 = 0;
    v48 = 511;
    sub_F828(v28, v27);
    result = sub_F884(v37);
    v18 = v29;
    v19 = v31;
    v20 = v32;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v28[0] & 0x3F;
    v25 = v30 & 1;
    v26 = v33 | 0x4000000000000000;
  }

  else
  {
    v25 = 0;
    v20 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
    v5 = 0;
    v19 = 0uLL;
    v21 = 0uLL;
    v24 = 0x3FFFFFFFC0;
    v18 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 8) = v24;
  *(a1 + 16) = v18;
  *(a1 + 32) = v25;
  *(a1 + 40) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = v26;
  *(a1 + 72) = v21;
  *(a1 + 88) = v22;
  *(a1 + 96) = v23;
  return result;
}

uint64_t sub_24F24()
{
  sub_777C((v0 + 24));

  return swift_deallocClassInstance();
}

__n128 sub_24F80@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_24D18(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24FE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25020()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_25060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_13F74;

  return sub_24B04(a1, v4, v5, v6);
}

uint64_t (*sub_25114())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_25018;
}

void sub_2516C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedManager];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isSharedIPad];

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0x3FFFFFFFC0;
    }

    else
    {
      sub_53A88();
      v17 = sub_53A68();
      sub_53A78();

      v12 = *(v2 + 16);
      v18 = sub_53918();
      v19 = *(*(v18 - 8) + 64);
      __chkstk_darwin(v18 - 8);
      sub_4AC4(v12);
      v20 = sub_541F8();
      v31 = v21;
      v32 = v20;
      v30 = v22;
      v24 = v23;
      sub_54078();
      if (qword_76FD8 != -1)
      {
        swift_once();
      }

      v25 = qword_7BBF8;
      v26 = sub_541D8();
      v33[104] = v30 & 1;
      v33[96] = v27 & 1;
      v34[0] = v12;
      *&v35 = v32;
      *(&v35 + 1) = v31;
      v36 = v30 & 1;
      *&v37 = v24;
      *(&v37 + 1) = v26;
      v38 = v28;
      v39 = v27 & 1;
      v41 = 0;
      v40 = v29;
      v42 = 511;
      v43[0] = v12;
      v44 = v32;
      v45 = v31;
      v46 = v30 & 1;
      v47 = v24;
      v48 = v26;
      v49 = v28;
      v50 = v27 & 1;
      v52 = 0;
      v53 = 0;
      v51 = v29;
      v54 = 511;
      sub_F828(v34, v33);
      sub_F884(v43);
      v13 = v35;
      v14 = v37;
      v8 = v38;
      v15 = v40;
      v10 = v41;
      v11 = v42;
      v16 = v34[0] & 0x3F;
      v7 = v36 & 1;
      v9 = v39 | 0x4000000000000000;
    }

    *a1 = v12;
    *(a1 + 8) = v16;
    *(a1 + 16) = v13;
    *(a1 + 32) = v7;
    *(a1 + 40) = v14;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a1 + 72) = v15;
    *(a1 + 88) = v10;
    *(a1 + 96) = v11;
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_2545C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_2516C(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

void sub_254BC(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 sf_isiPhone];

  if (v4)
  {
    v5 = [objc_opt_self() sharedInstance];
    [v5 isFeatureEnabled];

    v6 = v1[16];
    v7 = sub_53918();
    v8 = *(*(v7 - 8) + 64);
    __chkstk_darwin(v7 - 8);
    v44 = v6;
    sub_4AC4(v6);
    v9 = sub_541F8();
    v40 = v10;
    v42 = v9;
    v38 = v11;
    v13 = v12;
    v45 = v1;
    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v27 = qword_7BBF8;
    v28 = sub_541D8();
    v46[104] = v38 & 1;
    v46[96] = v29 & 1;
    v25 = v44;
    v47[0] = v44;
    v48 = v42;
    v49 = v40;
    v50 = v38 & 1;
    v51 = v13;
    v52 = v28;
    v53 = v30;
    v54 = v29 & 1;
    v56 = 0;
    v57 = 0;
    v55 = v31;
    v58 = 511;
    v59[0] = v44;
    v60 = v42;
    v61 = v40;
    v62 = v38 & 1;
    v63 = v13;
    v64 = v28;
    v65 = v30;
    v66 = v29 & 1;
    v68 = 0;
    v69 = 0;
    v67 = v31;
    v70 = 511;
    sub_F828(v47, v46);
    sub_F884(v59);
    v41 = v49;
    v43 = v48;
    v37 = v52;
    v39 = v51;
    v36 = v53;
    v35 = v55;
    v23 = v57;
    v34 = v56;
    v26 = v47[0] & 0x3F;
    v16 = v50 & 1;
    v20 = v54 | 0x4000000000000000;
    v24 = v58;
    v32 = CFNotificationCenterGetDarwinNotifyCenter();
    v33 = sub_54638();
    CFNotificationCenterAddObserver(v32, v45, sub_258AC, v33, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v22 = v34;
    v21 = v35;
    v19 = v36;
    v18 = v37;
    v17 = v39;
    v15 = v41;
    v14 = v43;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0x3FFFFFFFC0;
  }

  *a1 = v25;
  *(a1 + 8) = v26;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  *(a1 + 96) = v24;
}

__n128 sub_2584C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_254BC(v7);
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  *(a1 + 96) = v8;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_258AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 48);

    sub_7738((a2 + 24), v3);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
  }

  return result;
}

uint64_t sub_25958()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_89B8(result + 24, v1);

    sub_7738(v1, v1[3]);
    type metadata accessor for PrivacyAndSecuritySettingsListViewModel();
    sub_4B228();
    return sub_777C(v1);
  }

  return result;
}

uint64_t sub_25A24()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 64);
    }

    sub_54A08();
    sub_53CD8();
    sub_11F04();
    result = sub_547E8();
    v2 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 64);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_11288();
      v18 = *(v1 + 64);
      *(v1 + 64) = &_swiftEmptySetSingleton;

      sub_777C((v1 + 24));
      v19 = *(v1 + 64);

      return v1;
    }

    while (1)
    {
      sub_53CC8();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_54A28())
      {
        sub_53CD8();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C2C()
{
  sub_25A24();

  return swift_deallocClassInstance();
}

double sub_25C84@<D0>(_BYTE *a1@<X8>)
{
  v92 = a1;
  v1 = sub_538C8();
  v93 = *(v1 - 8);
  v2 = *(v93 + 64);
  __chkstk_darwin(v1);
  v88 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v78 - v88;
  v4 = sub_44BC(&qword_783B0, &unk_57FB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v78 - v6;
  v83 = objc_opt_self();
  v8 = [v83 mainNudityDetectionFooterText];
  sub_54668();
  v87 = v9;

  v10 = sub_44BC(&qword_783B8, &unk_5A4D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v78 - v12;
  v14 = sub_539A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_538A8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_53888();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  (*(v20 + 104))(&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:));
  v21 = sub_53878();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  (*(v24 + 104))(&v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:));
  sub_53898();
  sub_538B8();
  v25 = v93;
  (*(v93 + 56))(v7, 0, 1, v1);
  v26 = (*(v25 + 32))(v3, v7, v1);
  __chkstk_darwin(v26);
  (*(v25 + 16))(&v78 - v88, v3, v1);
  v27 = sub_541E8();
  v87 = v28;
  v88 = v27;
  LODWORD(v85) = v29;
  v86 = v30;
  sub_54078();
  v31 = sub_541D8();
  v33 = v32;
  v35 = v34;
  v36 = v83;
  LODWORD(v84) = [v83 nudityDetectionRowEnabled];
  v90 = v3;
  v91 = v1;
  if (v84)
  {
    v37 = [v36 nudityDetectionOnOffLabel];
    v38 = sub_54668();
    v40 = v39;

    v105 = v38;
    v106 = v40;
    sub_A700();
    v41 = sub_54208();
  }

  else
  {
    sub_54078();
    if (qword_76FD8 != -1)
    {
      swift_once();
    }

    v45 = qword_7BBF8;
    v41 = sub_541D8();
  }

  v46 = v41;
  v47 = v42;
  v48 = v43;
  v49 = v44;
  sub_84F8(v31, v33, v35 & 1);

  v50 = sub_53918();
  v82 = &v78;
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v52 = sub_54628();
  v81 = &v78;
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  LODWORD(v83) = v48 & 1;
  sub_4088(v46, v47, v48 & 1);

  sub_54618();
  v54 = v47;
  if (qword_76FE0 != -1)
  {
    swift_once();
  }

  v55 = sub_53908();
  v56 = sub_7700(v55, qword_7BC00);
  v57 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v56);
  (*(v59 + 16))(&v78 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_539F8();
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  sub_539E8();
  sub_53928();
  v62 = sub_541F8();
  LOBYTE(v118[0]) = v63 & 1;
  v64 = v83;
  v94[96] = v83;
  v95[0] = 33;
  v96 = v62;
  v97 = v65;
  v98 = v63 & 1;
  *&v99 = v66;
  *(&v99 + 1) = v46;
  v100 = v54;
  v101 = v83;
  v103 = 0;
  v102 = v49;
  LOBYTE(v104) = -1;
  HIBYTE(v104) = v84;
  LOBYTE(v105) = 33;
  v106 = v62;
  v107 = v65;
  v108 = v63 & 1;
  v109 = v66;
  v110 = v46;
  v111 = v54;
  v112 = v83;
  v114 = 0;
  v115 = 0;
  v113 = v49;
  v116 = -1;
  v117 = v84;
  sub_F828(v95, v94);
  sub_F884(&v105);
  v81 = v96;
  v82 = v46;
  v67 = v97;
  v80 = v99;
  v79 = v100;
  v78 = v102;
  v84 = v49;
  v68 = v103;
  LOWORD(v55) = v104;
  v69 = v95[0] & 0x3F;
  v70 = v98 & 1;
  v71 = v101 | 0x4000000000000000;
  v85 &= 1u;
  LODWORD(v89) = *(v89 + 16);
  sub_44BC(&qword_77618, &unk_57510);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_57A70;
  *(v72 + 32) = 33;
  *(v72 + 33) = v118[0];
  *(v72 + 36) = *(v118 + 3);
  v73 = v81;
  *(v72 + 40) = v69;
  *(v72 + 48) = v73;
  *(v72 + 56) = v67;
  *(v72 + 64) = v70;
  *(v72 + 72) = v80;
  *(v72 + 88) = v79;
  *(v72 + 96) = v71;
  *(v72 + 104) = v78;
  *(v72 + 120) = v68;
  *(v72 + 128) = v55;
  sub_F828(v95, v94);
  sub_84F8(v82, v54, v64);

  sub_F884(v95);
  (*(v93 + 8))(v90, v91);
  v74 = v92;
  *v92 = v89;
  result = 0.0;
  *(v74 + 8) = 0u;
  *(v74 + 24) = 0u;
  v76 = v87;
  *(v74 + 5) = v88;
  *(v74 + 6) = v76;
  v77 = v86;
  *(v74 + 7) = v85;
  *(v74 + 8) = v77;
  *(v74 + 9) = v72;
  return result;
}