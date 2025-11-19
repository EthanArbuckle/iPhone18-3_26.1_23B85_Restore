Swift::Bool __swiftcall HMHome.shouldShowNoAccessAwayFromHome(forRestrictedUser:)(HMUser forRestrictedUser)
{
  v2 = v1;
  v4 = [v2 homeAccessControlForUser:forRestrictedUser.super.isa];
  if ([v4 isRestrictedGuest])
  {
    if (qword_100080788 != -1)
    {
      swift_once();
    }

    v5 = sub_100067318();
    sub_1000026A8(v5, qword_100085CA0);
    v6 = forRestrictedUser.super.isa;
    v7 = v2;
    v8 = sub_1000672F8();
    v9 = sub_100067E08();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v10 = 136315650;
      *(v10 + 4) = sub_10000D4F0(0xD000000000000032, 0x800000010006CF20, &v30);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v6;
      *v11 = v6;
      *(v10 + 22) = 2080;
      v12 = v6;
      [v7 homeLocationStatus];
      v13 = HMStringFromHomeLocation();
      v14 = sub_100067BC8();
      v16 = v15;

      v17 = sub_10000D4F0(v14, v16, &v30);

      *(v10 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: user = %@. homeLocationStatus = %s", v10, 0x20u);
      sub_10002B424(v11);

      swift_arrayDestroy();
    }

    v18 = [v7 homeLocationStatus];
    return v18 == 2;
  }

  else
  {
    if (qword_100080788 != -1)
    {
      swift_once();
    }

    v20 = sub_100067318();
    sub_1000026A8(v20, qword_100085CA0);
    v21 = forRestrictedUser.super.isa;
    v22 = v4;
    v23 = sub_1000672F8();
    v24 = sub_100067E08();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v25 = 136315650;
      *(v25 + 4) = sub_10000D4F0(0xD000000000000032, 0x800000010006CF20, &v30);
      *(v25 + 12) = 2112;
      *(v25 + 14) = v21;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v22;
      *v26 = v21;
      v26[1] = v22;
      v28 = v21;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: user = %@. Returning false because isRestrictedGuest is NO. accessControl = %@", v25, 0x20u);
      sub_1000024F4(&qword_100080CA0);
      swift_arrayDestroy();

      sub_1000026F0(v27);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_10002B424(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100080CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int *sub_10002B4B8@<X0>(uint64_t a1@<X8>)
{
  v3 = &unk_100081000;
  if (__OFADD__(qword_1000813D0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1000813D0;
    sub_100068038(21);

    v10[0] = 0xD000000000000013;
    v10[1] = 0x800000010006CFE0;
    v11._countAndFlagsBits = sub_100068148();
    sub_100067C48(v11);

    v1 = 0xD000000000000013;
    v3 = 0x800000010006CFE0;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_100067318();
  sub_1000026A8(v4, qword_100085CA0);

  v5 = sub_1000672F8();
  v6 = sub_100067E08();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_10000D4F0(v1, v3, v10);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000D4F0(0xD000000000000010, 0x800000010006C430, v10);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for GarageDoorSecurityDataFetcher();
  return sub_100016F90(a1);
}

uint64_t sub_10002B700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_100066FB8();
  v3[6] = swift_task_alloc();
  sub_100067B88();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002B7C0, 0, 0);
}

uint64_t sub_10002B7C0()
{
  v42 = v1;
  v3 = &unk_100081000;
  if (__OFADD__(qword_1000813D0, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = 0xD000000000000011;
    ++qword_1000813D0;
    sub_100068038(21);

    v40 = 0xD000000000000013;
    v41 = 0x800000010006CFE0;
    v1[2] = qword_1000813D0;
    v44._countAndFlagsBits = sub_100068148();
    sub_100067C48(v44);

    v0 = v40;
    v3 = v41;
    v1[8] = v41;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_100067318();
  sub_1000026A8(v4, qword_100085CA0);

  v5 = sub_1000672F8();
  v6 = sub_100067E08();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000D4F0(v0, v3, &v40);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000D4F0(0xD000000000000011, 0x800000010006D110, &v40);
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  if (sub_100014FA4())
  {
    v8 = v1[3];

    sub_100066F28();
    sub_100067B38();
    sub_100066FA8();
    v9 = sub_100067BE8();
    v11 = v10;
    v12 = 0x800000010006C9A0;
    v13 = v2 + 15;
LABEL_19:
    v30 = sub_100067238();
    sub_100067A58();
    v32 = v31;
    v34 = v33;
    v35 = type metadata accessor for SecurityAccessoryEntry();
    v36 = v8 + v35[5];
    *v36 = v9;
    *(v36 + 8) = v11;
    *(v36 + 16) = v13;
    *(v36 + 24) = v12;
    *(v36 + 32) = 0x9380E29380E2;
    *(v36 + 40) = 0xA600000000000000;
    *(v36 + 48) = v30 & 1;
    v37 = (v8 + v35[6]);
    *v37 = 0;
    v37[1] = 0;
    v38 = (v8 + v35[7]);
    *v38 = v32;
    v38[1] = v34;

    v39 = v1[1];

    return v39();
  }

  v14 = sub_100067A78();

  v15 = sub_1000672F8();
  v16 = sub_100067E08();

  v17 = os_log_type_enabled(v15, v16);
  if (v14)
  {
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      v20 = sub_10000D4F0(v0, v3, &v40);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "...{%s} context is PREVIEW", v18, 0xCu);
      sub_1000026F0(v19);
    }

    else
    {
    }

    v8 = v1[3];
    sub_100066F28();
    sub_100067B38();
    sub_100066FA8();
    v9 = sub_100067BE8();
    v11 = v28;
    v13 = sub_100067248();
    v12 = v29;
    goto LABEL_19;
  }

  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000D4F0(v0, v3, &v40);
    _os_log_impl(&_mh_execute_header, v15, v16, "...{%s} context is SNAPSHOT", v21, 0xCu);
    sub_1000026F0(v22);
  }

  v23 = swift_task_alloc();
  v1[9] = v23;
  *v23 = v1;
  v23[1] = sub_10002BE20;
  v24 = v1[4];
  v25 = v1[5];
  v26 = v1[3];

  return sub_10002BF70(v26, v24, v25, v0, v3);
}

uint64_t sub_10002BE20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v10 = sub_100066F38();
  v5[4] = v10;
  v5[5] = *(v10 - 8);
  v5[6] = swift_task_alloc();
  v11 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  v5[7] = v11;
  v5[8] = *(v11 - 8);
  v5[9] = swift_task_alloc();
  sub_1000024F4(&qword_100080DC0);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for SecurityAccessoryEntry();
  v12 = swift_task_alloc();
  v5[12] = v12;
  v13 = swift_task_alloc();
  v5[13] = v13;
  *v13 = v5;
  v13[1] = sub_10002C15C;

  return sub_10002DA84(v12, a2, a3, a4, a5);
}

uint64_t sub_10002C15C()
{

  return _swift_task_switch(sub_10002C258, 0, 0);
}

void sub_10002C258()
{
  v60 = v0;
  if (qword_100080778 != -1)
  {
LABEL_46:
    swift_once();
  }

  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = qword_100085C80;
  sub_100066CB8();
  v7 = (*(v5 + 48))(v3, 1, v4);
  v8 = v0[10];
  if (v7)
  {
    sub_1000096A0(v8, &qword_100080DC0);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v0[9];
    v12 = v0[10];
    sub_10002F5FC(v8, v11, type metadata accessor for SecurityIntentAccessoryAppEntity);
    sub_1000096A0(v12, &qword_100080DC0);
    v9 = sub_100066F58();
    v10 = v13;
    sub_1000182D0(v11);
  }

  v58 = v0;
  v14 = [*&v6[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager] homes];
  sub_100018220();
  v15 = sub_100067CA8();

  if (v15 >> 62)
  {
    v16 = sub_1000680C8();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0 = (v15 & 0xC000000000000001);
  v57 = v6;

  v17 = 0;
  while (v16 != v17)
  {
    if (v0)
    {
      v18 = sub_100068058();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v1 = v18;
    v2 = sub_1000164B8(v9, v10, v18);

    if (v2)
    {
      v16 = v17;
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_45;
    }
  }

  if (!(v15 >> 62))
  {
    if (v16 != *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_37:

    swift_bridgeObjectRelease_n();

    goto LABEL_40;
  }

  if (v16 == sub_1000680C8())
  {
    goto LABEL_37;
  }

LABEL_20:
  if (v0)
  {
    v20 = sub_100068058();
  }

  else
  {
    if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_27;
    }

    v20 = *(v15 + 32 + 8 * v16);
  }

  v21 = v20;
  v9 = sub_1000164B8(v9, v10, v20);

  swift_bridgeObjectRelease_n();
  if (!v9)
  {
    __break(1u);
    return;
  }

  v22 = [v9 home];
  if (!v22)
  {

    goto LABEL_40;
  }

  v15 = v22;
  v2 = &LockScreenDataModel;
  v23.super.isa = [v22 currentUser];
  isa = v23.super.isa;
  v25 = sub_100067E68(v23);

  v1 = &LockScreenDataModel;
  if (!v25)
  {
    goto LABEL_30;
  }

  if (qword_100080788 != -1)
  {
    goto LABEL_50;
  }

LABEL_27:
  v26 = sub_100067318();
  sub_1000026A8(v26, qword_100085CA0);
  v27 = v15;
  v28 = sub_1000672F8();
  v29 = sub_100067E08();

  v30 = v58;
  if (os_log_type_enabled(v28, v29))
  {
    v32 = v58[5];
    v31 = v58[6];
    v33 = v58[4];
    v34 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v34 = 136315650;
    *(v34 + 4) = sub_10000D4F0(0xD000000000000027, 0x800000010006D090, &v59);
    *(v34 + 12) = 2112;
    *(v34 + 14) = v27;
    *v56 = v15;
    *(v34 + 22) = 2080;
    v35 = v27;
    sub_100066F18();
    sub_10002F6C8(&qword_100080DC8, &type metadata accessor for Date);
    v36 = sub_100068148();
    v38 = v37;
    (*(v32 + 8))(v31, v33);
    v39 = sub_10000D4F0(v36, v38, &v59);
    v1 = &LockScreenDataModel;

    *(v34 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "{%s} Displaying No Access for RG in home %@ because %s is outside of allowed schedule.", v34, 0x20u);
    sub_1000096A0(v56, &qword_100080CA0);
    v2 = &LockScreenDataModel;

    swift_arrayDestroy();

    v30 = v58;
  }

  v40 = v30[12] + *(v30[11] + 20);

  *v40 = 0xD000000000000027;
  *(v40 + 8) = 0x800000010006D0C0;
  *(v40 + 16) = 0x69662E6B636F6C63;
  *(v40 + 24) = 0xEA00000000006C6CLL;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0xE000000000000000;
  *(v40 + 48) = 1;
LABEL_30:
  v41 = [v15 v2[152]];
  v42 = HMHome.shouldShowNoAccessAwayFromHome(forRestrictedUser:)(v41);

  if (v42)
  {
    if (v1[26].weak_ivar_lyt != -1)
    {
      swift_once();
    }

    v43 = sub_100067318();
    sub_1000026A8(v43, qword_100085CA0);
    v44 = v15;
    v45 = sub_1000672F8();
    v46 = sub_100067E08();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v59 = v49;
      *v47 = 136315394;
      *(v47 + 4) = sub_10000D4F0(0xD000000000000027, 0x800000010006D090, &v59);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v15;
      v50 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "{%s} Displaying No Access for RG in home %@ because away from home.", v47, 0x16u);
      sub_1000096A0(v48, &qword_100080CA0);

      sub_1000026F0(v49);
    }

    v51 = v58;
    v53 = v58[11];
    v52 = v58[12];

    v54 = v52 + *(v53 + 20);

    *v54 = 0xD00000000000002DLL;
    *(v54 + 8) = 0x800000010006D040;
    *(v54 + 16) = 0xD000000000000012;
    *(v54 + 24) = 0x800000010006D070;
    *(v54 + 32) = 0;
    *(v54 + 40) = 0xE000000000000000;
    *(v54 + 48) = 1;
    goto LABEL_41;
  }

LABEL_40:
  v51 = v58;
LABEL_41:
  sub_10002F664(v51[12], v51[2]);

  v55 = v51[1];

  v55();
}

uint64_t sub_10002CAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_100066F38();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_100067A28();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  sub_1000024F4(&qword_100080DC0);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002CC54, 0, 0);
}

uint64_t sub_10002CC54()
{
  v55 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  sub_100066CB8();
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[14];
  if (v4)
  {
    sub_1000096A0(v5, &qword_100080DC0);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v0[13];
    v9 = v0[14];
    sub_10002F5FC(v5, v8, type metadata accessor for SecurityIntentAccessoryAppEntity);
    sub_1000096A0(v9, &qword_100080DC0);
    v6 = sub_100066F58();
    v7 = v10;
    sub_1000182D0(v8);
  }

  if (qword_100080778 != -1)
  {
LABEL_54:
    swift_once();
  }

  v52 = v0;
  v11 = qword_100085C80;
  v12 = [*(qword_100085C80 + OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager) homes];
  sub_100018220();
  v13 = sub_100067CA8();

  if (v13 >> 62)
  {
    v14 = sub_1000680C8();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0 = (v13 & 0xC000000000000001);
  v50 = v13 + 32;
  v15 = v11;
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v17 = 0;
  while (v14 != v17)
  {
    if (v0)
    {
      v18 = sub_100068058();
    }

    else
    {
      if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v18 = *(v13 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = sub_1000164B8(v6, v7, v18);

    if (v20)
    {
      v14 = v17;
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_53;
    }
  }

  if (v13 >> 62)
  {
    if (v14 != sub_1000680C8())
    {
LABEL_20:
      if (v0)
      {
        v22 = sub_100068058();
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v22 = *(v50 + 8 * v14);
      }

      v23 = v22;
      v24 = sub_1000164B8(v6, v7, v22);

      v25 = v52;
      if (v24)
      {

        goto LABEL_27;
      }

LABEL_60:

      __break(1u);
      return result;
    }
  }

  else if (v14 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v24 = 0;
  v25 = v52;
LABEL_27:
  v25[15] = v24;

  if (__OFADD__(qword_1000813D0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1000813D0;
    sub_100068038(21);

    v53 = 0xD000000000000013;
    v54 = 0x800000010006CFE0;
    v25[2] = qword_1000813D0;
    v57._countAndFlagsBits = sub_100068148();
    sub_100067C48(v57);

    v58._countAndFlagsBits = 32;
    v58._object = 0xE100000000000000;
    sub_100067C48(v58);

    v16 = v54;
    if (v24)
    {
      v26 = [v24 name];
      v27 = sub_100067BC8();
      v29 = v28;
    }

    else
    {
      v29 = 0x800000010006D000;
      v27 = 0xD000000000000011;
    }

    v59._countAndFlagsBits = v27;
    v59._object = v29;
    sub_100067C48(v59);

    v24 = v53;
    v25[16] = v54;
    if (qword_100080788 == -1)
    {
      goto LABEL_32;
    }
  }

  swift_once();
LABEL_32:
  v30 = sub_100067318();
  sub_1000026A8(v30, qword_100085CA0);

  v31 = sub_1000672F8();
  v32 = sub_100067E08();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_10000D4F0(v24, v16, &v53);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_10000D4F0(0xD000000000000011, 0x800000010006D020, &v53);
    swift_arrayDestroy();
    v25 = v52;
  }

  if (sub_100067A78())
  {
  }

  else
  {

    v34 = sub_1000672F8();
    v35 = sub_100067E08();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v53 = v50;
      *v36 = 136315650;
      *(v36 + 4) = sub_10000D4F0(v24, v16, &v53);
      v51 = v24;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_10000D4F0(0xD00000000000002ELL, 0x800000010006CF60, &v53);
      *(v36 + 22) = 2080;
      if (v7)
      {
        v37 = v6;
      }

      else
      {
        v37 = 7104878;
      }

      if (v7)
      {
        v38 = v7;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      v39 = sub_10000D4F0(v37, v38, &v53);
      v25 = v52;

      *(v36 + 24) = v39;
      v24 = v51;
      _os_log_impl(&_mh_execute_header, v34, v35, "...{%s} notifying homed that '%s:%s' is active", v36, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v40 = [objc_opt_self() defaultCenter];
    v41 = sub_100067BA8();
    if (v7)
    {
      v42 = sub_100067BA8();
    }

    else
    {
      v42 = 0;
    }

    [v40 postNotificationName:v41 object:{v42, v50}];
  }

  sub_1000024F4(&qword_1000814B8);
  v43 = type metadata accessor for SecurityAccessoryEntry();
  v25[17] = v43;
  v44 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
  v45 = swift_allocObject();
  v25[18] = v45;
  *(v45 + 16) = xmmword_100068BF0;
  v46 = swift_task_alloc();
  v25[19] = v46;
  *v46 = v25;
  v46[1] = sub_10002D524;
  v47 = v25[4];
  v48 = v25[5];

  return sub_10002BF70(v45 + v44, v47, v48, v24, v16);
}

uint64_t sub_10002D524()
{

  return _swift_task_switch(sub_10002D63C, 0, 0);
}

uint64_t sub_10002D63C()
{
  v8 = v0[15];
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_100066F28();
  sub_100066F08();
  v5 = *(v3 + 8);
  v5(v2, v4);
  sub_100067A18();
  v5(v1, v4);
  sub_10002F6C8(&qword_1000814A8, type metadata accessor for SecurityAccessoryEntry);
  sub_100067AE8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10002D7B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B50;

  return sub_10002B700(a1, v6, a3);
}

uint64_t sub_10002D864(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B50;

  return sub_10002CAC4(a1, v6, a3);
}

uint64_t sub_10002D91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004474;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10002D9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100005B50;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10002DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_1000024F4(&qword_100080DC0);
  v5[12] = swift_task_alloc();
  sub_1000024F4(&qword_100080B68);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002DBC8, 0, 0);
}

uint64_t sub_10002DBC8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  sub_100066CB8();
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1000096A0(v0[12], &qword_100080DC0);
LABEL_3:

    goto LABEL_5;
  }

  v4 = v0[11];
  v5 = v0[12];
  sub_10002F5FC(v5, v4, type metadata accessor for SecurityIntentAccessoryAppEntity);
  sub_1000096A0(v5, &qword_100080DC0);
  sub_100066C78();
  v6 = v0[3];
  sub_1000182D0(v4);
  if (!v6)
  {
    goto LABEL_3;
  }

LABEL_5:
  v7 = v0[14];
  sub_1000670A8();
  v8 = sub_1000670C8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_6:
    type metadata accessor for GarageDoorSecurityDataFetcher();
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_10002E194;
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[4];

    return sub_100017194(v15, v13, v14, v11, v12);
  }

  v17 = v0[13];
  sub_10002F710(v0[14], v17);
  v18 = (*(v9 + 88))(v17, v8);
  if (v18 == enum case for ServiceKind.lockMechanism(_:))
  {
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_10002DEFC;
    v20 = v0[7];
    v21 = v0[8];
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];

    return sub_100029FBC(v24, v22, v23, v20, v21);
  }

  else
  {
    if (v18 != enum case for ServiceKind.securitySystem(_:))
    {
      (*(v9 + 8))(v0[13], v8);
      goto LABEL_6;
    }

    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_10002E098;
    v26 = v0[7];
    v27 = v0[8];
    v28 = v0[5];
    v29 = v0[6];
    v30 = v0[4];

    return sub_100033470(v30, v28, v29, v26, v27);
  }
}

uint64_t sub_10002DEFC()
{

  return _swift_task_switch(sub_10002DFF8, 0, 0);
}

uint64_t sub_10002DFF8()
{
  sub_1000096A0(*(v0 + 112), &qword_100080B68);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E098()
{

  return _swift_task_switch(sub_10002FBD8, 0, 0);
}

uint64_t sub_10002E194()
{

  return _swift_task_switch(sub_10002FBD8, 0, 0);
}

uint64_t sub_10002E290()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  qword_1000813C0 = result;
  *algn_1000813C8 = v3;
  return result;
}

uint64_t sub_10002E3AC()
{
  v1 = 1701667182;
  v2 = 0x7453737574617473;
  if (*v0 != 2)
  {
    v2 = 0x6572756365537369;
  }

  if (*v0)
  {
    v1 = 0x656D614E6E6F6369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10002E424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002FA70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002E464(uint64_t a1)
{
  v2 = sub_10002F7C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002E4A0(uint64_t a1)
{
  v2 = sub_10002F7C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002E4DC(void *a1)
{
  v3 = sub_1000024F4(&qword_1000814C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002F780(a1, a1[3]);
  sub_10002F7C4();
  sub_100068248();
  v8[15] = 0;
  sub_100068108();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100068108();
  v8[13] = 2;
  sub_100068108();
  v8[12] = 3;
  sub_100068118();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_10002E69C()
{
  v1 = *(v0 + 48);
  sub_100068208();
  sub_100067C28();
  sub_100067C28();
  sub_100067C28();
  sub_100068228(v1);
  return sub_100068238();
}

void sub_10002E738()
{
  v1 = *(v0 + 48);
  sub_100067C28();
  sub_100067C28();
  sub_100067C28();
  sub_100068228(v1);
}

Swift::Int sub_10002E7A8()
{
  v1 = *(v0 + 48);
  sub_100068208();
  sub_100067C28();
  sub_100067C28();
  sub_100067C28();
  sub_100068228(v1);
  return sub_100068238();
}

uint64_t sub_10002E840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_100068168()) && (v2 == v7 && v4 == v8 || (sub_100068168()) && (v3 == v9 && v5 == v10 || (sub_100068168()))
  {
    return v6 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E944@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000024F4(&qword_1000813D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_1000024F4(&qword_1000813E0);
  v24[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_1000024F4(&qword_1000813E8);
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  type metadata accessor for SecurityAccessoryView(0);
  sub_10002F6C8(&qword_1000813F0, type metadata accessor for SecurityAccessoryView);
  sub_10002EF60();
  sub_100067A38();
  if (qword_1000807D0 != -1)
  {
    swift_once();
  }

  v28 = qword_1000813C0;
  v29 = *algn_1000813C8;
  v14 = sub_10002EFB4();
  v15 = sub_1000025E8();
  sub_100067628();
  (*(v5 + 8))(v7, v4);
  sub_100067B38();
  sub_100066FA8();
  v32 = sub_100067BE8();
  v33 = v16;
  v28 = v4;
  v29 = &type metadata for String;
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067608();

  (*(v24[0] + 8))(v10, v8);
  sub_1000024F4(&qword_100080910);
  v18 = sub_1000679B8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100068BF0;
  (*(v19 + 104))(v21 + v20, enum case for WidgetFamily.accessoryCircular(_:), v18);
  v28 = v8;
  v29 = &type metadata for String;
  v30 = OpaqueTypeConformance2;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_100067618();

  return (*(v25 + 8))(v13, v22);
}

uint64_t sub_10002EEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002F5FC(a1, a2, type metadata accessor for SecurityAccessoryEntry);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for SecurityAccessoryView(0) + 20)) = KeyPath;
  sub_1000024F4(&qword_1000809C0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10002EF60()
{
  result = qword_1000813F8;
  if (!qword_1000813F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000813F8);
  }

  return result;
}

unint64_t sub_10002EFB4()
{
  result = qword_100081400;
  if (!qword_100081400)
  {
    sub_10000253C(&qword_1000813D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081400);
  }

  return result;
}

uint64_t type metadata accessor for SecurityAccessoryEntry()
{
  result = qword_100081460;
  if (!qword_100081460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100066F38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002F150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100066F38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10002F20C()
{
  sub_100066F38();
  if (v0 <= 0x3F)
  {
    sub_10002F2B0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002F2B0()
{
  if (!qword_1000812C0)
  {
    v0 = sub_100067E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1000812C0);
    }
  }
}

__n128 sub_10002F300(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002F31C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10002F364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002F3D4()
{
  sub_10000253C(&qword_1000813E8);
  sub_10000253C(&qword_1000813E0);
  sub_10000253C(&qword_1000813D8);
  sub_10002EFB4();
  sub_1000025E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10002F4DC(uint64_t a1)
{
  result = sub_10002EF60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002F508()
{
  result = qword_1000814A0;
  if (!qword_1000814A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000814A0);
  }

  return result;
}

unint64_t sub_10002F5A8()
{
  result = qword_1000814B0;
  if (!qword_1000814B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000814B0);
  }

  return result;
}

uint64_t sub_10002F5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002F664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecurityAccessoryEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F6C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002F710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024F4(&qword_100080B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10002F780(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002F7C4()
{
  result = qword_1000814C8;
  if (!qword_1000814C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000814C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecurityAccessoryData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecurityAccessoryData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002F96C()
{
  result = qword_1000814D0;
  if (!qword_1000814D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000814D0);
  }

  return result;
}

unint64_t sub_10002F9C4()
{
  result = qword_1000814D8;
  if (!qword_1000814D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000814D8);
  }

  return result;
}

unint64_t sub_10002FA1C()
{
  result = qword_1000814E0;
  if (!qword_1000814E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000814E0);
  }

  return result;
}

uint64_t sub_10002FA70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100068168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000 || (sub_100068168() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7453737574617473 && a2 == 0xEC000000676E6972 || (sub_100068168() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572756365537369 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100068168();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

int *sub_10002FC08@<X0>(uint64_t a1@<X8>)
{
  if (__OFADD__(qword_100085DB8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085DB8;
    v20[0] = 0x7974697275636553;
    v20[1] = 0xE900000000000020;
    v21._countAndFlagsBits = sub_100068148();
    sub_100067C48(v21);

    v2 = 0x7974697275636553;
    v1 = 0xE900000000000020;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_100067318();
  sub_1000026A8(v4, qword_100085CA0);

  v5 = sub_1000672F8();
  v6 = sub_100067E08();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_10000D4F0(v2, v1, v20);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000D4F0(0xD000000000000010, 0x800000010006C430, v20);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100066F28();
  if (qword_1000807D8 != -1)
  {
    swift_once();
  }

  v10 = qword_100085DA8;
  v9 = unk_100085DB0;
  v11 = qword_100080880;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_100086008;

  sub_100067A58();
  v14 = v13;
  v16 = v15;
  result = type metadata accessor for ThreeColumnDataEntry();
  v18 = (a1 + result[5]);
  *v18 = v10;
  v18[1] = v9;
  *(a1 + result[6]) = v12;
  v19 = (a1 + result[7]);
  *v19 = v14;
  v19[1] = v16;
  *(a1 + result[8]) = 3;
  return result;
}

uint64_t sub_10002FEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024F4(&qword_1000809D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = qword_100085DB8 + 1;
  if (__OFADD__(qword_100085DB8, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v9;
    v29 = a1;
    v9 = v7;
    v30 = a2;
    ++qword_100085DB8;
    v33 = 0x7974697275636553;
    v34 = 0xE900000000000020;
    v32 = v14;
    v35._countAndFlagsBits = sub_100068148();
    sub_100067C48(v35);

    v7 = v33;
    v3 = v34;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v31 = a3;
  v15 = sub_100067318();
  sub_1000026A8(v15, qword_100085CA0);

  v16 = sub_1000672F8();
  v17 = sub_100067E08();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D4F0(v7, v3, &v33);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C410, &v33);
    swift_arrayDestroy();
  }

  v19 = v29;
  v20 = sub_100067D28();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  (*(v8 + 16))(v10, v19, v9);
  v21 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v22 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v31;
  *(v23 + 4) = v30;
  *(v23 + 5) = v24;
  (*(v8 + 32))(&v23[v21], v10, v9);
  v25 = &v23[v22];
  *v25 = v7;
  v25[1] = v3;

  sub_100024F48(0, 0, v13, &unk_10006A148, v23);
}

uint64_t sub_1000302BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for ThreeColumnDataEntry();
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_100002F64;

  return sub_1000303A4(v12, a6, a7, a8);
}

uint64_t sub_1000303A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_100066FB8();
  v4[11] = swift_task_alloc();
  sub_100067B88();
  v4[12] = swift_task_alloc();
  v5 = sub_1000679B8();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_100066F38();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100030534, 0, 0);
}

uint64_t sub_100030534()
{
  v83 = v0;
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v1 = qword_100085C80;
  v2 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 168) = v3;
  v4 = qword_100080788;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100067318();
  *(v0 + 176) = sub_1000026A8(v6, qword_100085CA0);
  v7 = v5;

  v8 = sub_1000672F8();
  v9 = sub_100067E08();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_10000D4F0(v10, v11, v82);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000D4F0(0xD00000000000001ALL, 0x800000010006C3F0, v82);
    *(v12 + 22) = 2080;
    v81 = v3;
    if (v3)
    {
      v13 = [v7 name];
      v14 = sub_100067BC8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000D4F0(v14, v16, v82);

    *(v12 + 24) = v17;
    swift_arrayDestroy();

    v3 = v81;
    if (!v81)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v18 = v7;
  v19.super.isa = [v18 currentUser];
  isa = v19.super.isa;
  v21 = sub_100067E68(v19);

  if (v21)
  {
    v22 = v18;
    v23 = sub_1000672F8();
    v24 = sub_100067E08();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 160);
      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v28 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_10000D4F0(0xD00000000000001ALL, 0x800000010006C3F0, v82);
      *(v28 + 12) = 2112;
      *(v28 + 14) = v22;
      *v79 = v3;
      *(v28 + 22) = 2080;
      v29 = v22;
      sub_100066F18();
      sub_100033424(&qword_100080DC8, &type metadata accessor for Date);
      v30 = sub_100068148();
      v32 = v31;
      (*(v26 + 8))(v25, v27);
      v33 = sub_10000D4F0(v30, v32, v82);

      *(v28 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "{%s} Displaying No Access for RG in home %@ because now %s is outside of allowed schedule.", v28, 0x20u);
      sub_1000096A0(v79, &qword_100080CA0);

      swift_arrayDestroy();
    }

    v34 = *(v0 + 56);
    sub_100067A58();
    sub_10006557C(v34, v35, v36);
LABEL_20:

LABEL_39:

    v77 = *(v0 + 8);

    return v77();
  }

  v37 = v18;
  v38 = [v37 currentUser];
  v39 = HMHome.shouldShowNoAccessAwayFromHome(forRestrictedUser:)(v38);

  if (v39)
  {
    v22 = v37;
    v40 = sub_1000672F8();
    v41 = sub_100067E08();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v82[0] = v44;
      *v42 = 136315394;
      *(v42 + 4) = sub_10000D4F0(0xD00000000000001ALL, 0x800000010006C3F0, v82);
      *(v42 + 12) = 2112;
      *(v42 + 14) = v22;
      *v43 = v3;
      v45 = v22;
      _os_log_impl(&_mh_execute_header, v40, v41, "{%s} Displaying No Access for RG in home %@ because current RG user is away from home.", v42, 0x16u);
      sub_1000096A0(v43, &qword_100080CA0);

      sub_1000026F0(v44);
    }

    v46 = *(v0 + 56);
    sub_100067A58();
    sub_1000655A4(v46, v47, v48);
    goto LABEL_20;
  }

LABEL_22:
  v49 = sub_100014FA4();
  *(v0 + 200) = v49;
  if (v49)
  {
    v50 = 2;
  }

  else
  {
    v50 = 3;
  }

  if (qword_100080850 != -1)
  {
    swift_once();
  }

  v51 = qword_100085EE8;
  v52 = v7;
  v53 = sub_100032E68(v51, v3);

  if (v53 >> 62)
  {
    v65 = sub_1000680C8();

    if (v65)
    {
      goto LABEL_29;
    }

LABEL_36:
    sub_100066F28();
    if (qword_1000807D8 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 56);
    v78 = unk_100085DB0;
    v80 = qword_100085DA8;
    sub_1000024F4(&qword_1000809F0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100068BF0;

    sub_100067B38();
    sub_100066FA8();
    v68 = sub_100067BE8();
    *(v67 + 32) = 0xD000000000000018;
    *(v67 + 40) = 0x800000010006C3B0;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0xE000000000000000;
    *(v67 + 64) = v68;
    *(v67 + 72) = v69;
    *(v67 + 80) = 0;
    sub_100067A58();
    v71 = v70;
    v73 = v72;

    v74 = type metadata accessor for ThreeColumnDataEntry();
    v75 = (v66 + v74[5]);
    *v75 = v80;
    v75[1] = v78;
    *(v66 + v74[6]) = v67;
    v76 = (v66 + v74[7]);
    *v76 = v71;
    v76[1] = v73;
    *(v66 + v74[8]) = v50;
    goto LABEL_39;
  }

  v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v54)
  {
    goto LABEL_36;
  }

LABEL_29:
  v56 = *(v0 + 120);
  v55 = *(v0 + 128);
  v57 = *(v0 + 104);
  v58 = *(v0 + 112);
  sub_100067A68();
  (*(v58 + 104))(v56, enum case for WidgetFamily.systemSmall(_:), v57);
  sub_100033424(&qword_1000809E8, &type metadata accessor for WidgetFamily);
  sub_100067C78();
  sub_100067C78();
  v59 = *(v58 + 8);
  v59(v56, v57);
  v59(v55, v57);
  if (*(v0 + 40) == *(v0 + 48))
  {
    v60 = 5;
  }

  else
  {
    v60 = 3;
  }

  v61 = swift_task_alloc();
  *(v0 + 184) = v61;
  *v61 = v0;
  v61[1] = sub_100030F3C;
  v62 = *(v0 + 72);
  v63 = *(v0 + 80);

  return sub_100056EF0(v3, v62, v63, v60);
}

uint64_t sub_100030F3C(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10003103C, 0, 0);
}

uint64_t sub_10003103C()
{
  v31 = v0;

  v1 = sub_1000672F8();
  v2 = sub_100067E08();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000D4F0(v4, v3, &v30);
    *(v5 + 12) = 2080;
    v6 = sub_100067CB8();
    v8 = sub_10000D4F0(v6, v7, &v30);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "...{%s} securitySummaryRows are %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_100066F28();
  if (qword_1000807D8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 192);
  v10 = unk_100085DB0;
  v29 = qword_100085DA8;
  v11 = *(v9 + 16);

  if (!v11)
  {

    sub_1000024F4(&qword_1000809F0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100068BF0;
    sub_100067B38();
    sub_100066FA8();
    v12 = sub_100067BE8();
    *(v9 + 32) = 0x6C69662E6B636F6CLL;
    *(v9 + 40) = 0xE90000000000006CLL;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0xE000000000000000;
    *(v9 + 64) = v12;
    *(v9 + 72) = v13;
    *(v9 + 80) = 0;
  }

  v14 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 56);
  if (*(v0 + 200))
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  sub_100067A58();
  v21 = v20;
  v23 = v22;

  (*(v16 + 32))(v18, v15, v17);
  v24 = type metadata accessor for ThreeColumnDataEntry();
  v25 = (v18 + v24[5]);
  *v25 = v29;
  v25[1] = v10;
  *(v18 + v24[6]) = v9;
  v26 = (v18 + v24[7]);
  *v26 = v21;
  v26[1] = v23;
  *(v18 + v24[8]) = v19;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000313C8(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024F4(&qword_1000809D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = qword_100085DB8 + 1;
  if (__OFADD__(qword_100085DB8, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = v9;
    v36 = v13;
    v37 = a1;
    ++qword_100085DB8;
    v40 = 0x7974697275636553;
    v41 = 0xE900000000000020;
    v39 = v14;
    v42._countAndFlagsBits = sub_100068148();
    sub_100067C48(v42);

    v3 = v41;
    v38 = v40;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = sub_100067318();
  sub_1000026A8(v15, qword_100085CA0);

  v16 = sub_1000672F8();
  v17 = sub_100067E08();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v10;
    v40 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D4F0(v38, v3, &v40);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C390, &v40);
    swift_arrayDestroy();
    v10 = v34;
  }

  v20 = v37;
  if ((sub_100067A78() & 1) == 0)
  {

    v21 = sub_1000672F8();
    v22 = sub_100067E08();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = a3;
      v40 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_10000D4F0(v38, v3, &v40);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_10000D4F0(0xD000000000000027, 0x800000010006D130, &v40);
      _os_log_impl(&_mh_execute_header, v21, v22, "{%s} notifying homed that '%s' is active", v23, 0x16u);
      swift_arrayDestroy();
      a3 = v34;
    }

    v25 = [objc_opt_self() defaultCenter];
    v26 = sub_100067BA8();
    [v25 postNotificationName:v26 object:0];

    v20 = v37;
  }

  v27 = sub_100067D28();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  (*(v8 + 16))(v10, v20, v7);
  v29 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = a2;
  *(v31 + 5) = a3;
  (*(v8 + 32))(&v31[v29], v10, v7);
  v32 = &v31[v30];
  *v32 = v38;
  *(v32 + 1) = v3;

  sub_100024F48(0, 0, v28, &unk_10006A130, v31);
}

uint64_t sub_10003194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100066F38();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_100067A28();
  v8[11] = swift_task_alloc();
  v10 = sub_1000024F4(&qword_1000809D8);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100031AB4, 0, 0);
}

uint64_t sub_100031AB4()
{
  sub_1000024F4(&qword_1000809E0);
  v1 = type metadata accessor for ThreeColumnDataEntry();
  v0[15] = v1;
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = xmmword_100068BF0;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100031BE4;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_1000303A4(v3 + v2, v7, v5, v6);
}

uint64_t sub_100031BE4()
{

  return _swift_task_switch(sub_100031CE0, 0, 0);
}

uint64_t sub_100031CE0()
{
  v2 = v0[13];
  v1 = v0[14];
  v11 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v10 = v0[2];
  sub_100066F28();
  sub_100066F08();
  v7 = *(v6 + 8);
  v7(v3, v5);
  sub_100067A18();
  v7(v4, v5);
  sub_100033424(&qword_1000809A8, type metadata accessor for ThreeColumnDataEntry);
  sub_100067AE8();
  v10(v1);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100031E70()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  qword_100085DA8 = result;
  unk_100085DB0 = v3;
  return result;
}

uint64_t sub_100031F8C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for ThreeColumnCategoryView(0);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000024F4(&qword_1000809B0);
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  v8 = sub_1000024F4(&qword_1000809B8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for ThreeColumnDataEntry() + 32);
  v23 = v1;
  if (*(v1 + v14) <= 2u)
  {
    sub_100066ED8();

    v16 = sub_100066EE8();
    v15 = *(v16 - 8);
    if ((*(v15 + 48))(v11, 1, v16) != 1)
    {
      (*(v15 + 32))(v13, v11, v16);
      (*(v15 + 56))(v13, 0, 1, v16);
      goto LABEL_7;
    }
  }

  else
  {
    v16 = sub_100066EE8();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  sub_100066ED8();
  sub_100066EE8();
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) != 1)
  {
    sub_1000096A0(v11, &qword_1000809B8);
  }

LABEL_7:
  sub_100005250(v23, v4);
  v17 = *(v2 + 20);
  *&v4[v17] = swift_getKeyPath();
  sub_1000024F4(&qword_1000809C0);
  swift_storeEnumTagMultiPayload();
  v18 = sub_100033424(&qword_1000809C8, type metadata accessor for ThreeColumnCategoryView);
  sub_1000677C8();
  sub_100005984(v4, type metadata accessor for ThreeColumnCategoryView);
  v25 = v2;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_100067858();
  (*(v5 + 8))(v7, v19);
  return sub_1000096A0(v13, &qword_1000809B8);
}

uint64_t sub_100032418@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000024F4(&qword_1000814E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_1000024F4(&qword_1000814F0);
  v24[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_1000024F4(&qword_1000814F8);
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  type metadata accessor for SecurityCategoryWidgetView();
  sub_100033424(&qword_100081500, type metadata accessor for SecurityCategoryWidgetView);
  sub_1000329E0();
  sub_100067A08();
  if (qword_1000807D8 != -1)
  {
    swift_once();
  }

  v28 = qword_100085DA8;
  v29 = unk_100085DB0;
  v14 = sub_100032A34();
  v15 = sub_1000025E8();
  sub_100067628();
  (*(v5 + 8))(v7, v4);
  sub_100067B38();
  sub_100066FA8();
  v32 = sub_100067BE8();
  v33 = v16;
  v28 = v4;
  v29 = &type metadata for String;
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067608();

  (*(v24[0] + 8))(v10, v8);
  sub_1000024F4(&qword_100080910);
  v18 = sub_1000679B8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100068BF0;
  (*(v19 + 104))(v21 + v20, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v28 = v8;
  v29 = &type metadata for String;
  v30 = OpaqueTypeConformance2;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_100067618();

  return (*(v25 + 8))(v13, v22);
}

uint64_t type metadata accessor for SecurityCategoryWidgetView()
{
  result = qword_100081570;
  if (!qword_100081570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000329E0()
{
  result = qword_100081508;
  if (!qword_100081508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081508);
  }

  return result;
}

unint64_t sub_100032A34()
{
  result = qword_100081510;
  if (!qword_100081510)
  {
    sub_10000253C(&qword_1000814E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081510);
  }

  return result;
}

uint64_t sub_100032ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100032B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100032BAC()
{
  sub_10000253C(&qword_1000814F8);
  sub_10000253C(&qword_1000814F0);
  sub_10000253C(&qword_1000814E8);
  sub_100032A34();
  sub_1000025E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100032D20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100004474;

  return sub_10003194C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100032E68(uint64_t a1, void *a2)
{
  v2 = _swiftEmptyArrayStorage;
  v33 = *(a1 + 16);
  if (!v33)
  {
    return v2;
  }

  v3 = a2;
  v4 = 0;
  v32 = a1 + 32;
  while (1)
  {
    v35 = v4;
    v6 = (v32 + 56 * v4);
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[4];
    v10 = v6[5];
    v11 = v6[6];
    v12 = v6[1];
    v34[0] = *v6;
    v34[1] = v12;
    v34[2] = v7;
    v34[3] = v8;
    v34[4] = v9;
    v34[5] = v10;
    v34[6] = v11;

    sub_1000026E0(v10);
    if (qword_100080778 == -1)
    {
      if (!v3)
      {
        goto LABEL_42;
      }
    }

    else
    {
      swift_once();
      if (!v3)
      {
LABEL_42:

        sub_100009690(v10);
        v15 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_9;
        }

        goto LABEL_43;
      }
    }

    v13 = [v3 accessories];
    sub_100009700(0, &qword_100080A10);
    v14 = sub_100067CA8();

    sub_1000026E0(v10);
    v15 = sub_1000126F8(v14, v34);

    sub_100009690(v10);

    sub_100009690(v10);
    if ((v15 & 0x8000000000000000) == 0 && (v15 & 0x4000000000000000) == 0)
    {
LABEL_9:
      v16 = 0;
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_43:
    v17 = sub_1000680C8();
    v16 = 1;
    if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
    {
LABEL_11:
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_47;
      }

      goto LABEL_12;
    }

LABEL_45:
    v30 = sub_1000680C8();
    v19 = v30 + v17;
    if (__OFADD__(v30, v17))
    {
LABEL_47:
      __break(1u);
      return v2;
    }

LABEL_12:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v20 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
    {
      goto LABEL_20;
    }

    sub_1000680C8();
LABEL_20:
    result = sub_100068068();
    v2 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v16)
    {
      result = sub_1000680C8();
      v23 = result;
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
LABEL_3:

        v3 = a2;
        if (v17 > 0)
        {
          goto LABEL_51;
        }

        goto LABEL_4;
      }
    }

    if (((v22 >> 1) - v21) < v17)
    {
      goto LABEL_52;
    }

    v24 = (v20 + 8 * v21 + 32);
    if ((v16 & 1) == 0)
    {
      sub_100009700(0, &qword_100080B50);
      swift_arrayInitWithCopy();

      goto LABEL_38;
    }

    if (v23 < 1)
    {
      goto LABEL_54;
    }

    v25 = 0;
    if ((v15 & 0xC000000000000001) == 0)
    {
      break;
    }

    while (1)
    {
      result = sub_100068058();
      ++v25;
      *v24 = result;
      if (v25 == v23)
      {
        break;
      }

LABEL_34:
      ++v24;
      if ((v15 & 0xC000000000000001) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_37:

LABEL_38:
    v3 = a2;
    if (v17 >= 1)
    {
      v27 = *(v20 + 16);
      v28 = __OFADD__(v27, v17);
      v29 = v27 + v17;
      if (v28)
      {
        goto LABEL_53;
      }

      *(v20 + 16) = v29;
    }

LABEL_4:
    v4 = v35 + 1;
    if (v35 + 1 == v33)
    {
      return v2;
    }
  }

LABEL_31:
  if ((v25 & 0x8000000000000000) == 0)
  {
    if (v25 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v26 = *(v15 + 32 + 8 * v25++);
    *v24 = v26;
    result = *&v26;
    if (v25 == v23)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1000332DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005B50;

  return sub_1000302BC(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100033424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_100066F38();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  sub_1000024F4(&qword_100080DC0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000335F0, 0, 0);
}

void sub_1000335F0()
{
  v74 = v0;
  if (qword_100080788 != -1)
  {
LABEL_47:
    swift_once();
  }

  v1 = sub_100067318();
  v0[17] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = v0[11];
    v72 = v0[10];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10000D4F0(v7, v6, &v73);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10000D4F0(0xD00000000000001ELL, 0x800000010006C9D0, &v73);
    *(v8 + 22) = 2080;
    sub_100066CB8();
    v9 = (*(v5 + 48))(v4, 1, v72);
    v10 = v0[16];
    if (v9)
    {
      v11 = 1819047278;
      sub_1000181B8(v10);
      v12 = 0xE400000000000000;
    }

    else
    {
      v13 = v0[12];
      v14 = v0[16];
      sub_10001826C(v10, v13);
      sub_1000181B8(v14);
      v11 = sub_100066F58();
      v12 = v15;
      sub_1000182D0(v13);
    }

    v16 = sub_10000D4F0(v11, v12, &v73);

    *(v8 + 24) = v16;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v17 = v0[15];
  v18 = v0[10];
  v19 = v0[11];
  v20 = qword_100085C80;
  sub_100066CB8();
  v21 = *(v19 + 48);
  v0[18] = v21;
  v0[19] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v70 = v21;
  v22 = v21(v17, 1, v18);
  v23 = v0[15];
  if (v22)
  {
    sub_1000181B8(v23);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = v0[12];
    v27 = v0[15];
    sub_10001826C(v23, v26);
    sub_1000181B8(v27);
    v24 = sub_100066F58();
    v25 = v28;
    sub_1000182D0(v26);
  }

  v29 = [*&v20[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager] homes];
  sub_100018220();
  v30 = sub_100067CA8();

  if (v30 >> 62)
  {
    v31 = sub_1000680C8();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v30 & 0xC000000000000001;
  v71 = v20;

  v33 = 0;
  while (v31 != v33)
  {
    if (v32)
    {
      v34 = sub_100068058();
    }

    else
    {
      if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v34 = *(v30 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = sub_1000164B8(v24, v25, v34);

    if (v36)
    {
      v31 = v33;
      break;
    }

    if (__OFADD__(v33++, 1))
    {
      goto LABEL_46;
    }
  }

  if (v30 >> 62)
  {
    if (v31 != sub_1000680C8())
    {
LABEL_27:
      if (v32)
      {
        v38 = sub_100068058();
      }

      else
      {
        if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v38 = *(v30 + 32 + 8 * v31);
      }

      v39 = v38;
      v40 = sub_1000164B8(v24, v25, v38);
      v0[20] = v40;

      swift_bridgeObjectRelease_n();
      if (v40)
      {

        v41 = v40;
        v42 = sub_1000672F8();
        v43 = sub_100067E08();

        if (os_log_type_enabled(v42, v43))
        {
          v45 = v0[5];
          v44 = v0[6];
          v46 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v46 = 136315394;
          *(v46 + 4) = sub_10000D4F0(v45, v44, &v73);
          *(v46 + 12) = 2080;
          v47 = [v41 name];
          v48 = sub_100067BC8();
          v50 = v49;

          v51 = sub_10000D4F0(v48, v50, &v73);

          *(v46 + 14) = v51;
          _os_log_impl(&_mh_execute_header, v42, v43, "...{%s} found homeAccessory: %s", v46, 0x16u);
          swift_arrayDestroy();
        }

        v52 = v41;
        v53 = swift_task_alloc();
        v0[21] = v53;
        *v53 = v0;
        v53[1] = sub_100033ED8;

        sub_10005F624(v40);
        return;
      }

LABEL_51:
      __break(1u);
      return;
    }
  }

  else if (v31 != *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  swift_bridgeObjectRelease_n();

  v54 = sub_1000672F8();
  v55 = sub_100067E08();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v0[13];
    v57 = v0[10];
    v59 = v0[5];
    v58 = v0[6];
    v60 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_10000D4F0(v59, v58, &v73);
    *(v60 + 12) = 2080;
    sub_100066CB8();
    v61 = v70(v56, 1, v57);
    v62 = v0[13];
    if (v61)
    {
      v63 = 1819047278;
      sub_1000181B8(v62);
      v64 = 0xE400000000000000;
    }

    else
    {
      v65 = v0[12];
      v66 = v0[13];
      sub_10001826C(v62, v65);
      sub_1000181B8(v66);
      v63 = sub_100066F58();
      v64 = v67;
      sub_1000182D0(v65);
    }

    v68 = sub_10000D4F0(v63, v64, &v73);

    *(v60 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "...{%s} did NOT find HMAccessory for %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000343EC(v0[2]);

  v69 = v0[1];

  v69();
}

uint64_t sub_100033ED8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;

  return _swift_task_switch(sub_100033FF8, 0, 0);
}

uint64_t sub_100033FF8()
{
  v57 = v0;

  v1 = sub_1000672F8();
  v2 = sub_100067E08();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 184);
  if (v3)
  {
    v5 = *(v0 + 176);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v8 = 136315906;
    *(v8 + 4) = sub_10000D4F0(v7, v6, &v56);
    *(v8 + 12) = 2048;
    v9 = v4 & 1;
    if (v4)
    {
      v10 = -1;
    }

    else
    {
      v10 = v5;
    }

    *(v8 + 14) = v10;
    *(v8 + 22) = 2080;
    v11 = sub_10005F9AC(v5, v4 & 1);
    v13 = sub_10000D4F0(v11, v12, &v56);

    *(v8 + 24) = v13;
    *(v8 + 32) = 2080;
    v14 = "light.beacon.max.fill";
    if (v4 & 1 | (v5 != 4))
    {
      v14 = "light.beacon.min.fill";
    }

    v15 = sub_10000D4F0(0xD000000000000015, (v14 - 32) | 0x8000000000000000, &v56);

    *(v8 + 34) = v15;
    _os_log_impl(&_mh_execute_header, v1, v2, "...{%s} got value: %ld, statusString: %s, iconName %s", v8, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v9 = v4 & 1;
  }

  v53 = *(v0 + 184);
  v16 = *(v0 + 176);
  v17 = *(v0 + 160);
  v18 = *(v0 + 144);
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  sub_100066F28();
  v21 = [v17 name];
  v22 = sub_100067BC8();
  v54 = v23;
  v55 = v22;

  v24 = sub_10005F9AC(v16, v9);
  v51 = v25;
  v52 = v24;
  v50 = sub_10003F484(v16, v9, &off_10007E228);
  sub_100066CB8();
  v26 = v18(v19, 1, v20);
  v27 = *(v0 + 112);
  if (v26)
  {
    sub_1000181B8(v27);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = *(v0 + 96);
    v31 = *(v0 + 112);
    sub_10001826C(v27, v30);
    sub_1000181B8(v31);
    v28 = sub_100066F58();
    v29 = v32;
    sub_1000182D0(v30);
  }

  if (v53 & 1 | (v16 != 4))
  {
    v33 = "light.beacon.min.fill";
  }

  else
  {
    v33 = "light.beacon.max.fill";
  }

  v34 = (v33 - 32) | 0x8000000000000000;
  v35 = *(v0 + 160);
  v36 = *(v0 + 64);
  v37 = *(v0 + 72);
  v38 = *(v0 + 56);
  v39 = *(v0 + 16);
  sub_100067A58();
  v41 = v40;
  v43 = v42;

  (*(v36 + 32))(v39, v37, v38);
  v44 = type metadata accessor for SecurityAccessoryEntry();
  v45 = v39 + v44[5];
  *v45 = v55;
  *(v45 + 8) = v54;
  *(v45 + 16) = 0xD000000000000015;
  *(v45 + 24) = v34;
  *(v45 + 32) = v52;
  *(v45 + 40) = v51;
  *(v45 + 48) = v50 & 1;
  v46 = (v39 + v44[6]);
  *v46 = v28;
  v46[1] = v29;
  v47 = (v39 + v44[7]);
  *v47 = v41;
  v47[1] = v43;

  v48 = *(v0 + 8);

  return v48();
}

int *sub_1000343EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100066FB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  sub_100066F28();
  sub_100067B38();
  sub_100066FA8();
  v4 = sub_100067BE8();
  v6 = v5;
  sub_100067A58();
  v8 = v7;
  v10 = v9;
  result = type metadata accessor for SecurityAccessoryEntry();
  v12 = a1 + result[5];
  *v12 = v4;
  *(v12 + 8) = v6;
  *(v12 + 16) = 0xD000000000000015;
  *(v12 + 24) = 0x800000010006C1F0;
  *(v12 + 32) = 0x9380E29380E2;
  *(v12 + 40) = 0xA600000000000000;
  *(v12 + 48) = 0;
  v13 = (a1 + result[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + result[7]);
  *v14 = v8;
  v14[1] = v10;
  return result;
}

unint64_t sub_1000345F0()
{
  result = qword_1000815B0;
  if (!qword_1000815B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815B0);
  }

  return result;
}

unint64_t sub_100034648()
{
  result = qword_1000815B8;
  if (!qword_1000815B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815B8);
  }

  return result;
}

unint64_t sub_1000346A0()
{
  result = qword_1000815C0;
  if (!qword_1000815C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815C0);
  }

  return result;
}

uint64_t sub_1000346F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v17 = *(a3 + 16);
  if (v17)
  {
    v4 = 0;
    v5 = (a3 + 64);
    v19 = _swiftEmptyArrayStorage;
    v16 = a3;
    while (v4 < *(a3 + 16))
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v20[0] = v6;
      v20[1] = v7;
      v20[2] = v8;
      v20[3] = v9;
      v20[4] = v10;

      v11 = v18(v20);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v21 = v19;
        if ((result & 1) == 0)
        {
          result = sub_10000DB5C(0, *(v19 + 2) + 1, 1);
          v19 = v21;
        }

        v13 = *(v19 + 2);
        v12 = *(v19 + 3);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_10000DB5C((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v19 = v21;
        }

        *(v19 + 2) = v14;
        v15 = &v19[5 * v13];
        *(v15 + 4) = v6;
        *(v15 + 5) = v7;
        *(v15 + 6) = v8;
        *(v15 + 7) = v9;
        *(v15 + 8) = v10;
        v3 = 0;
      }

      else
      {

        v3 = 0;
      }

      ++v4;
      v5 += 5;
      a3 = v16;
      if (v17 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_16:

    return v19;
  }

  return result;
}

double *sub_1000348E0(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v44 = a2;
  v42 = sub_1000670C8();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v53 = _swiftEmptyArrayStorage;
    sub_10000DB5C(0, v8, 0);
    v47 = a3 + 56;
    *&v48 = v53;
    v10 = sub_100067F08();
    v11 = 0;
    v39 = v6 + 16;
    v40 = (v6 + 8);
    v36 = a3 + 64;
    v37 = v8;
    v38 = v6;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v47 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v45 = v11;
      v15 = *(a3 + 36);
      v16 = a3;
      v17 = *(a3 + 48) + *(v6 + 72) * v10;
      v18 = *(v6 + 16);
      a3 = v41;
      v6 = v42;
      v18(v41, v17, v42);
      v43(&v49, a3);
      v46 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v40)(a3, v6);
      v19 = v49;
      v20 = v50;
      v21 = v51;
      v22 = v52;
      v23 = v48;
      v53 = v48;
      a3 = *(v48 + 16);
      v24 = *(v48 + 24);
      v6 = a3 + 1;
      if (a3 >= v24 >> 1)
      {
        v48 = v52;
        v34 = v50;
        v35 = v49;
        sub_10000DB5C((v24 > 1), a3 + 1, 1);
        v20 = v34;
        v19 = v35;
        v22 = v48;
        v23 = v53;
      }

      *(v23 + 2) = v6;
      v25 = &v23[5 * a3];
      *(v25 + 4) = v19;
      *(v25 + 5) = v20;
      *(v25 + 6) = v21;
      *(v25 + 7) = v22;
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v26 = *(v47 + 8 * v14);
      if ((v26 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v16;
      *&v48 = v23;
      v27 = v15;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_26;
      }

      v28 = v26 & (-2 << (v10 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v37;
        v6 = v38;
      }

      else
      {
        v29 = v14 << 6;
        v30 = v14 + 1;
        v13 = v37;
        v31 = (v36 + 8 * v14);
        v6 = v38;
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1000141B8(v10, v27, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_1000141B8(v10, v27, 0);
      }

LABEL_4:
      v4 = v46;
      v11 = v45 + 1;
      v10 = v12;
      if (v45 + 1 == v13)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    (*v40)(a3, v6);

    __break(1u);
  }

  return result;
}

uint64_t sub_100034C4C(void (*a1)(double *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_10000DA98(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_10000DA98((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 2) = v14 + 1;
      v6[v14 + 4] = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_100034DC0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_10000DC44(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_10000DC44((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 2) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_100034F34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100034FE0()
{
  sub_1000024F4(&qword_100080A48);
  v0 = sub_1000670C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10006A160;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for ServiceKind.airQualitySensor(_:), v0);
  v6(v5 + v2, enum case for ServiceKind.heaterCooler(_:), v0);
  v6(v5 + 2 * v2, enum case for ServiceKind.humidifierDehumidifier(_:), v0);
  v6(v5 + 3 * v2, enum case for ServiceKind.humiditySensor(_:), v0);
  v6(v5 + 4 * v2, enum case for ServiceKind.temperatureSensor(_:), v0);
  result = (v6)(v5 + 5 * v2, enum case for ServiceKind.thermostat(_:), v0);
  off_1000815A8 = v4;
  return result;
}

uint64_t sub_10003518C(uint64_t a1)
{
  v2 = sub_1000670C8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100067198();
  v7 = __chkstk_darwin(v6);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v32 - v10;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v44 = a1;
  v45 = (v12 + 63) >> 6;
  v41 = (v3 + 8);
  v42 = v9 + 16;
  v34 = (v9 + 32);
  v43 = v9;
  v38 = (v9 + 8);

  v16 = 0;
  v36 = _swiftEmptyArrayStorage;
  v39 = a1 + 56;
  v40 = v6;
  while (1)
  {
    v17 = v46;
LABEL_7:
    if (!v14)
    {
      break;
    }

LABEL_12:
    v19 = *(v44 + 48);
    v37 = *(v43 + 72);
    (*(v43 + 16))(v17, v19 + v37 * (__clz(__rbit64(v14)) | (v16 << 6)), v6);
    if (qword_1000807E0 != -1)
    {
      swift_once();
    }

    v14 &= v14 - 1;
    v20 = off_1000815A8;
    sub_100067188();
    v21 = 0;
    v22 = v20[2];
    do
    {
      if (v22 == v21)
      {
        (*v41)(v5, v2);
        v17 = v46;
LABEL_6:
        v6 = v40;
        result = (*v38)(v17, v40);
        v11 = v39;
        goto LABEL_7;
      }

      v23 = v21 + 1;
      sub_10003D4B4(&qword_100080AF0, &type metadata accessor for ServiceKind);
      v24 = sub_100067B28();
      v21 = v23;
    }

    while ((v24 & 1) == 0);
    (*v41)(v5, v2);
    v17 = v46;
    if ((sub_100067168() & 1) == 0)
    {
      goto LABEL_6;
    }

    v25 = *v34;
    v6 = v40;
    (*v34)(v35, v17, v40);
    v26 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v26;
    v11 = v39;
    v33 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000DB18(0, *(v26 + 2) + 1, 1);
      v26 = v47;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    v30 = (v29 + 1);
    if (v29 >= v28 >> 1)
    {
      v36 = (v29 + 1);
      sub_10000DB18(v28 > 1, v29 + 1, 1);
      v30 = v36;
      v26 = v47;
    }

    *(v26 + 2) = v30;
    v31 = *(v43 + 80);
    v36 = v26;
    result = v33(v26 + ((v31 + 32) & ~v31) + v29 * v37, v35, v6);
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v45)
    {

      return v36;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000355E4()
{
  v0 = sub_1000024F4(&qword_100080B68);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v38 - v4;
  v6 = sub_1000670C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v59 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = v38 - v10;
  v56 = sub_100067198();
  v11 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100067128();
  v14 = sub_1000391D4(v13);
  v15 = sub_10003518C(v14);

  v16 = v15;
  v17 = *(v15 + 16);
  if (!v17)
  {

    return &_swiftEmptySetSingleton;
  }

  v19 = *(v11 + 16);
  v18 = v11 + 16;
  v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
  v38[1] = v16;
  v21 = v16 + v20;
  v53 = *(v18 + 56);
  v54 = v19;
  v51 = (v7 + 88);
  v52 = (v18 - 8);
  v44 = enum case for ServiceKind.heaterCooler(_:);
  v42 = enum case for ServiceKind.humidifierDehumidifier(_:);
  v41 = enum case for ServiceKind.humiditySensor(_:);
  v43 = enum case for ServiceKind.temperatureSensor(_:);
  v40 = enum case for ServiceKind.thermostat(_:);
  v39 = (v7 + 8);
  v46 = v7;
  v47 = (v7 + 104);
  v49 = (v7 + 48);
  v50 = (v7 + 56);
  v48 = (v7 + 32);
  v22 = enum case for ServiceKind.airQualitySensor(_:);
  v60 = _swiftEmptyArrayStorage;
  v23 = &unk_10006B8B0;
  v55 = v18;
  v45 = enum case for ServiceKind.airQualitySensor(_:);
  do
  {
    v24 = v23;
    v26 = v56;
    v25 = v57;
    v54(v57, v21, v56);
    v27 = v59;
    sub_100067188();
    (*v52)(v25, v26);
    v28 = (*v51)(v27, v6);
    if (v28 == v22)
    {
      (*v47)(v3, v22, v6);
      (*v50)(v3, 0, 1, v6);
      v23 = v24;
      goto LABEL_16;
    }

    v23 = v24;
    if (v28 == v44)
    {
LABEL_8:
      (*v47)(v3, v43, v6);
LABEL_15:
      (*v50)(v3, 0, 1, v6);
      goto LABEL_16;
    }

    if (v28 == v42 || v28 == v41)
    {
      (*v47)(v3, v41, v6);
      goto LABEL_15;
    }

    if (v28 == v43 || v28 == v40)
    {
      goto LABEL_8;
    }

    (*v50)(v3, 1, 1, v6);
    (*v39)(v59, v6);
LABEL_16:
    sub_10003D44C(v3, v5, &qword_100080B68);
    if ((*v49)(v5, 1, v6) == 1)
    {
      sub_1000096A0(v5, &qword_100080B68);
    }

    else
    {
      v30 = *v48;
      v31 = v5;
      (*v48)(v58, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_10004EA00(0, *(v60 + 2) + 1, 1, v60);
      }

      v33 = *(v60 + 2);
      v32 = *(v60 + 3);
      if (v33 >= v32 >> 1)
      {
        v60 = sub_10004EA00(v32 > 1, v33 + 1, 1, v60);
      }

      v34 = v60;
      *(v60 + 2) = v33 + 1;
      v30(v34 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33, v58, v6);
      v5 = v31;
      v22 = v45;
    }

    v21 += v53;
    --v17;
  }

  while (v17);

  v36 = sub_100013DC8(v60);

  return v36;
}

uint64_t sub_100035BAC()
{
  v0 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100066E58();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100066D88();
  sub_10001DE2C(v5, qword_100085DC0);
  sub_1000026A8(v5, qword_100085DC0);
  sub_100066E28();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100066D78();
}

uint64_t sub_100035D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_1000024F4(&qword_100081638);
  __chkstk_darwin(v3 - 8);
  v22 = &v20 - v4;
  v5 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v5 - 8);
  v21 = &v20 - v6;
  v20 = sub_100066E58();
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = sub_100067B78();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000024F4(&qword_100080B68);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000670C8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000670A8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000096A0(v11, &qword_100080B68);
    sub_100067B68();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_100067B58(v24);
    sub_100067B48(v2[1]);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100067B58(v25);
    sub_100066E48();
    (*(v7 + 56))(v21, 1, 1, v20);
    v16 = sub_100066D28();
    (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
    return sub_100066D38();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_100067B68();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_100067B58(v26);
    v27._countAndFlagsBits = sub_100067068();
    sub_100067B48(v27);

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_100067B58(v28);
    sub_100066E48();
    (*(v7 + 56))(v21, 1, 1, v20);
    sub_100067058();
    v18 = v22;
    sub_100066D18();
    v19 = sub_100066D28();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    sub_100066D38();
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1000361B8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = sub_1000024F4(&qword_100081678);
  v2[10] = swift_task_alloc();
  v3 = sub_100067288();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_1000024F4(&qword_100081648);
  v2[14] = swift_task_alloc();
  sub_1000024F4(&qword_100081680);
  v2[15] = swift_task_alloc();
  v4 = sub_100066F88();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_100067158();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000363E8, 0, 0);
}

uint64_t sub_1000363E8()
{
  v0[23] = sub_100067048();
  v0[24] = sub_1000670E8();
  v0[25] = sub_1000670D8();
  v0[26] = sub_10003D4B4(&qword_100081658, &type metadata accessor for WidgetActor);
  v2 = sub_100067CF8();

  return _swift_task_switch(sub_1000364C0, v2, v1);
}

uint64_t sub_1000364C0()
{

  *(v0 + 216) = sub_100067038();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_100036568;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_100036568(uint64_t a1)
{
  *(*v1 + 232) = a1;

  sub_1000672A8();
  sub_10003D4B4(&qword_100081688, &type metadata accessor for WidgetSnapshotModerator);
  v3 = sub_100067CF8();

  return _swift_task_switch(sub_1000366DC, v3, v2);
}

uint64_t sub_1000366DC()
{
  *(v0 + 240) = sub_100067298();

  return _swift_task_switch(sub_100036750, 0, 0);
}

uint64_t sub_100036750()
{
  v1 = v0[30];
  sub_100066FC8();
  if (*(v1 + 16) && (v2 = sub_100045D78(v0[18]), (v3 & 1) != 0))
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    v11 = v0[7];
    (*(v7 + 16))(v5, *(v0[30] + 56) + *(v7 + 72) * v2, v6);
    (*(v9 + 8))(v8, v10);

    v12 = *(v7 + 32);
    v12(v4, v5, v6);
    v12(v11, v4, v6);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[17];
    v16 = v0[18];
    v17 = v0[16];
    v18 = v0[14];

    (*(v15 + 8))(v16, v17);
    sub_100066FC8();
    (*(v15 + 56))(v18, 0, 1, v17);
    v0[2] = sub_100067108();
    v0[3] = v19;
    v0[4] = v20;
    v0[5] = v21;
    sub_1000024F4(&qword_100081690);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100068BF0;
    sub_100067268();
    v0[6] = v22;
    sub_10003D4B4(&qword_100081698, &type metadata accessor for WidgetRefreshOptions);
    sub_1000024F4(&qword_1000816A0);
    sub_1000141C4(&qword_1000816A8, &qword_1000816A0);
    sub_100067EF8();
    sub_1000671A8();
    v0[31] = sub_1000670D8();
    v24 = sub_100067CF8();

    return _swift_task_switch(sub_100036AD8, v24, v23);
  }
}

uint64_t sub_100036AD8()
{

  *(v0 + 256) = sub_100067038();

  return _swift_task_switch(sub_100036B4C, 0, 0);
}

uint64_t sub_100036B4C()
{
  sub_10003D44C(v0[15], v0[10], &qword_100081680);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_100036C2C;
  v2 = v0[10];
  v3 = v0[7];

  return WidgetDataModel.snapshotOf<A>(updateType:)(v3, v2, &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_100036C2C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100036E10;
  }

  else
  {
    v2 = sub_100036D5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100036D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036E10()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100036EC4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000024F4(&qword_100081648);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1000670B8();
  v7 = v6;
  v8 = sub_100067068();
  v10 = v9;
  sub_100066FC8();
  v11 = sub_100066F88();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  sub_10003A210(v5, v7, v8, v10, v4, v15);
  result = *v15;
  v13 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v13;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_100036FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_1000024F4(&qword_100081640);
  v3[10] = swift_task_alloc();
  v4 = sub_1000024F4(&qword_1000815E0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100037104, 0, 0);
}

uint64_t sub_100037104()
{
  v10 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  v0[14] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000D4F0(0xD000000000000013, 0x800000010006D2F0, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000D4F0(v5, v4, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s string=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1000372FC;

  return sub_10003A5D0();
}

uint64_t sub_1000372FC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100037458, 0, 0);
  }
}

void sub_100037458()
{
  v45 = v0;
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v38 = -v2;
    v4 = v1 + 64;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v6 = (v4 + 40 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 - 3);
        v40 = *(v6 - 4);
        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        v10 = *v6;

        v0 = v42;
        if (sub_100067C38() < 3)
        {
          break;
        }

        v12 = v42[8];
        v11 = v42[9];
        v42[2] = v8;
        v42[3] = v9;
        v42[4] = v12;
        v42[5] = v11;
        sub_1000025E8();
        if (sub_100067EA8())
        {
          break;
        }

        ++v3;
        v6 += 5;
        if (v38 + v3 == 1)
        {
          goto LABEL_16;
        }
      }

      v44 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DB5C(0, *(v5 + 2) + 1, 1);
        v5 = v44;
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_10000DB5C((v13 > 1), v14 + 1, 1);
        v5 = v44;
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[5 * v14];
      v0 = v42;
      *(v15 + 4) = v40;
      *(v15 + 5) = v7;
      *(v15 + 6) = v8;
      *(v15 + 7) = v9;
      *(v15 + 8) = v10;
      v4 = v1 + 64;
    }

    while (v38 + v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  v0[17] = v5;

  if (*(v5 + 2))
  {

    v16 = sub_1000672F8();
    v17 = sub_100067E08();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10000D4F0(0xD000000000000013, 0x800000010006D2F0, &v43);
      *(v18 + 12) = 2080;
      v19 = *(v5 + 2);
      v20 = _swiftEmptyArrayStorage;
      v37 = v5;
      if (v19)
      {
        v21 = v5;
        v36 = v17;
        v39 = v18;
        v41 = v16;
        v44 = _swiftEmptyArrayStorage;
        sub_10000DAD8(0, v19, 0);
        v20 = v44;
        v22 = *(v44 + 2);
        v23 = 2 * v22;
        v24 = (v21 + 5);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v44 = v20;
          v27 = v22 + 1;
          v28 = *(v20 + 3);

          if (v22 >= v28 >> 1)
          {
            sub_10000DAD8((v28 > 1), v27, 1);
            v20 = v44;
          }

          *(v20 + 2) = v27;
          v29 = &v20[v23];
          *(v29 + 4) = v25;
          *(v29 + 5) = v26;
          v23 += 2;
          v24 += 5;
          ++v22;
          --v19;
        }

        while (v19);
        v18 = v39;
        v16 = v41;
        v17 = v36;
      }

      v0 = v42;
      v42[6] = v20;
      sub_1000024F4(&qword_100080AB8);
      sub_1000141C4(&qword_100080AC0, &qword_100080AB8);
      v31 = sub_100067B18();
      v33 = v32;

      v34 = sub_10000D4F0(v31, v33, &v43);

      *(v18 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s found climate entities: %s", v18, 0x16u);
      swift_arrayDestroy();

      v5 = v37;
    }

    else
    {
    }

    v35 = swift_task_alloc();
    v0[18] = v35;
    *v35 = v0;
    v35[1] = sub_100037994;

    sub_10003B6F0(v5);
  }

  else
  {

    sub_1000388C8();
    sub_100066D08();

    v30 = v0[1];

    v30();
  }
}

uint64_t sub_100037994(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_100037C24;
  }

  else
  {
    v4 = sub_100037AA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100037AA8()
{
  v1 = *(v0[19] + 16);
  if (v1 == 1)
  {
    v2 = v0[10];

    v3 = sub_100066E58();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_100038C34();
    sub_1000388C8();
    sub_100066CE8();
  }

  else if (v1)
  {
    sub_100037C9C(v0[19], v0[17], v0[13]);
  }

  else
  {

    sub_1000388C8();
    sub_100066D08();
  }

  (*(v0[12] + 32))(v0[7], v0[13], v0[11]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100037C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = sub_100066E58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100067B78();
  __chkstk_darwin(v8 - 8);
  v42 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100066FE8();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000024F4(&qword_100080B10);
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v14 = &v31 - v13;
  v15 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v31 = &v31 - v16;
    v32 = v6;
    v33 = v5;
    v34 = a3;
    v48 = _swiftEmptyArrayStorage;
    sub_10000DBC0(0, v18, 0);
    v19 = v48;
    v21 = *(v10 + 16);
    v20 = v10 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v37 = *(v20 + 56);
    v38 = v21;
    v35 = v12 + 32;
    v36 = (v20 - 8);
    v39 = v12;
    v40 = v20;
    do
    {
      v47 = v19;
      v23 = v43;
      v24 = v44;
      v38(v43, v22, v44);
      sub_100067B68();
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_100067B58(v49);
      v50._countAndFlagsBits = sub_100066FD8();
      sub_100067B48(v50);

      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_100067B58(v51);
      v25 = sub_100066E48();
      __chkstk_darwin(v25);
      *(&v31 - 2) = v23;
      v26 = v46;

      sub_1000346F4(sub_10003D42C, (&v31 - 4), v26);
      sub_1000388C8();
      sub_100066CD8();
      v27 = v24;
      v19 = v47;
      (*v36)(v23, v27);
      v48 = v19;
      v29 = *(v19 + 2);
      v28 = *(v19 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_10000DBC0(v28 > 1, v29 + 1, 1);
        v19 = v48;
      }

      *(v19 + 2) = v29 + 1;
      (*(v39 + 32))(v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, v14, v41);
      v22 += v37;
      --v18;
    }

    while (v18);
    v5 = v33;
    v17 = v31;
    v6 = v32;
  }

  (*(v6 + 56))(v17, 1, 1, v5);
  sub_1000388C8();
  return sub_100066CF8();
}

uint64_t sub_10003814C()
{
  v0 = sub_100066F88();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100066C78();
  v5 = v12[0];
  v4 = v12[1];
  sub_100066FC8();
  v6 = sub_100066F58();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (v5 == v6 && v4 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_100068168();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1000382C4()
{
  v10 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);
  v2 = sub_1000672F8();
  v3 = sub_100067E08();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000D4F0(0x2873746C75736572, 0xE900000000000029, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s fetching all results", v4, 0xCu);
    sub_1000026F0(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10003847C;
  v7 = *(v0 + 16);

  return sub_100036FFC(v7, 0, 0xE000000000000000);
}

uint64_t sub_10003847C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100038570(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003D560;

  return sub_10003C658(a1);
}

uint64_t sub_100038618(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004474;

  return sub_1000382A4(a1);
}

uint64_t sub_1000386B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100038770;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100038770(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100038874()
{
  result = qword_1000815C8;
  if (!qword_1000815C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815C8);
  }

  return result;
}

unint64_t sub_1000388C8()
{
  result = qword_1000815D0;
  if (!qword_1000815D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815D0);
  }

  return result;
}

uint64_t sub_100038960(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B50;

  return sub_1000382A4(a1);
}

uint64_t sub_1000389F8(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_100038AA4;

  return sub_10003CC50(v1 + 16);
}

uint64_t sub_100038AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  *(v2 + 32) = *(v1 + 48);
  *v2 = v4;
  *(v2 + 16) = v5;
  v6 = *(v3 + 8);

  return v6();
}

unint64_t sub_100038BDC()
{
  result = qword_1000815E8;
  if (!qword_1000815E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815E8);
  }

  return result;
}

unint64_t sub_100038C34()
{
  result = qword_1000815F0;
  if (!qword_1000815F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815F0);
  }

  return result;
}

unint64_t sub_100038C8C()
{
  result = qword_1000815F8;
  if (!qword_1000815F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000815F8);
  }

  return result;
}

unint64_t sub_100038CE4()
{
  result = qword_100081600;
  if (!qword_100081600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081600);
  }

  return result;
}

unint64_t sub_100038D48()
{
  result = qword_100081608;
  if (!qword_100081608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081608);
  }

  return result;
}

unint64_t sub_100038DA0()
{
  result = qword_100081610;
  if (!qword_100081610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081610);
  }

  return result;
}

unint64_t sub_100038DFC()
{
  result = qword_100081618;
  if (!qword_100081618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081618);
  }

  return result;
}

uint64_t sub_100038E5C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100038E6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000807E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100066D88();
  v3 = sub_1000026A8(v2, qword_100085DC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100038F58(uint64_t a1)
{
  v2 = sub_1000346A0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100038FA8()
{
  result = qword_100081630;
  if (!qword_100081630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081630);
  }

  return result;
}

uint64_t sub_100039000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100004474;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000390C4(uint64_t a1)
{
  v2 = sub_100038DFC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100039110(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100039124(uint64_t a1, int a2)
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

uint64_t sub_10003916C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000391D4(uint64_t a1)
{
  v2 = sub_100067198();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  sub_10003D4B4(&qword_100081660, &type metadata accessor for StaticService);
  result = sub_100067D38();
  v10 = 0;
  v21 = a1;
  v22 = result;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v20[1] = v3 + 16;
  if ((v15 & v11) != 0)
  {
    do
    {
      v18 = v10;
LABEL_9:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      (*(v3 + 16))(v8, *(v21 + 56) + *(v3 + 72) * (v19 | (v18 << 6)), v2);
      sub_1000393E8(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v16);
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return v22;
    }

    v16 = *(v12 + 8 * v18);
    ++v10;
    if (v16)
    {
      v10 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000393E8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100067198();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10003D4B4(&qword_100081660, &type metadata accessor for StaticService);
  v33 = a2;
  v11 = sub_100067B08();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10003D4B4(&qword_100081668, &type metadata accessor for StaticService);
      v21 = sub_100067B28();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000396C8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000396C8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_100067198();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 <= v10)
  {
    if (a3)
    {
      sub_100039EB4();
    }

    else
    {
      sub_100039B98();
    }

    v12 = *v3;
    sub_10003D4B4(&qword_100081660, &type metadata accessor for StaticService);
    v13 = sub_100067B08();
    v14 = v12 + 56;
    v30 = v12;
    v15 = -1 << *(v12 + 32);
    a2 = v13 & ~v15;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v17 = v19;
      v20 = *(v18 + 56);
      do
      {
        v17(v9, *(v30 + 48) + v20 * a2, v6);
        sub_10003D4B4(&qword_100081668, &type metadata accessor for StaticService);
        v21 = sub_100067B28();
        (*(v18 - 8))(v9, v6);
        if (v21)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_100039960();
  }

  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_100068188();
  __break(1u);
  return result;
}

void *sub_100039960()
{
  v1 = v0;
  v2 = sub_100067198();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100081670);
  v6 = *v0;
  v7 = sub_100067FE8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100039B98()
{
  v1 = v0;
  v32 = sub_100067198();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000024F4(&qword_100081670);
  v6 = sub_100067FF8();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10003D4B4(&qword_100081660, &type metadata accessor for StaticService);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100039EB4()
{
  v1 = v0;
  v35 = sub_100067198();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000024F4(&qword_100081670);
  result = sub_100067FF8();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10003D4B4(&qword_100081660, &type metadata accessor for StaticService);
      result = sub_100067B08();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10003A210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v30 = a5;
  v31 = a4;
  v33 = a1;
  v34 = a3;
  v32 = a2;
  v7 = sub_1000024F4(&qword_100081648);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_100066E38();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100066FB8();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100067B88();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100066E58();
  __chkstk_darwin(v16 - 8);
  sub_1000024F4(&qword_100081650);
  sub_100067B38();
  sub_100066FA8();
  v17 = v10;
  v18 = v30;
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  v19 = v31;
  sub_100066E68();
  v20 = v32;
  v21 = sub_100066C98();
  sub_10003D39C(v18, v9);
  v22 = sub_100066F88();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v9, 1, v22);

  if (v24 == 1)
  {
    sub_1000096A0(v9, &qword_100081648);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = sub_100066F58();
    v26 = v27;
    (*(v23 + 8))(v9, v22);
  }

  v35 = v25;
  v36 = v26;
  sub_100066C88();
  sub_1000096A0(v18, &qword_100081648);

  v29 = v34;
  *a6 = v33;
  a6[1] = v20;
  a6[2] = v29;
  a6[3] = v19;
  a6[4] = v21;
  return result;
}

uint64_t sub_10003A5D0()
{
  v1 = sub_100067158();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v2 = sub_100066F88();
  v0[10] = v2;
  v0[11] = *(v2 - 8);
  v0[12] = swift_task_alloc();
  v3 = sub_100066FE8();
  v0[13] = v3;
  v0[14] = *(v3 - 8);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003A75C, 0, 0);
}

uint64_t sub_10003A75C()
{
  *(v0 + 144) = sub_100067048();
  sub_1000670E8();
  *(v0 + 152) = sub_1000670D8();
  sub_10003D4B4(&qword_100081658, &type metadata accessor for WidgetActor);
  v2 = sub_100067CF8();

  return _swift_task_switch(sub_10003A82C, v2, v1);
}

uint64_t sub_10003A82C()
{

  *(v0 + 160) = sub_100067038();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_10003A8D0;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10003A8D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_10003B590;
  }

  else
  {
    v4 = sub_10003A9E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003A9E4()
{
  v51 = v0;

  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  v0[24] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_10000D4F0(0xD000000000000014, 0x800000010006D2D0, &v49);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);

    *(v6 + 22) = 2080;
    v7 = *(v5 + 16);
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v41 = v3;
      v42 = v6;
      v43 = v2;
      v9 = v0[22];
      v10 = v0[14];
      v11 = v0[11];
      v50 = _swiftEmptyArrayStorage;
      sub_10000DAD8(0, v7, 0);
      v8 = v50;
      v12 = *(v10 + 16);
      v10 += 16;
      v13 = v9 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v46 = *(v10 + 56);
      v47 = v12;
      v48 = v0;
      v44 = (v10 - 8);
      v45 = (v11 + 8);
      do
      {
        v14 = v0[17];
        v16 = v0[12];
        v15 = v0[13];
        v17 = v0[10];
        v47(v14, v13, v15);
        sub_100066FC8();
        v18 = sub_100066F58();
        v20 = v19;
        (*v45)(v16, v17);
        (*v44)(v14, v15);
        v50 = v8;
        v22 = *(v8 + 2);
        v21 = *(v8 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_10000DAD8((v21 > 1), v22 + 1, 1);
          v8 = v50;
        }

        *(v8 + 2) = v22 + 1;
        v23 = &v8[2 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        v13 += v46;
        --v7;
        v0 = v48;
      }

      while (v7);
      v6 = v42;
      v2 = v43;
      v3 = v41;
    }

    v0[6] = v8;
    sub_1000024F4(&qword_100080AB8);
    sub_1000141C4(&qword_100080AC0, &qword_100080AB8);
    v24 = sub_100067B18();
    v26 = v25;

    v27 = sub_10000D4F0(v24, v26, &v49);

    *(v6 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s found %ld homes: {%s}", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  result = v0[22];
  v0[2] = _swiftEmptyArrayStorage;
  v29 = *(result + 16);
  v0[25] = v29;
  if (v29)
  {
    v30 = v0[14];
    v0[26] = 0;
    if (*(result + 16))
    {
      v31 = v0[16];
      v32 = v0[13];
      v34 = *(v30 + 16);
      v33 = v30 + 16;
      v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
      v0[27] = v34;
      v0[28] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v34(v31, result + v35, v32);
      v36 = swift_task_alloc();
      v0[29] = v36;
      *v36 = v0;
      v36[1] = sub_10003AEDC;
      v37 = v0[16];
      v38 = v0[9];

      return sub_1000361B8(v38, v37);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v39 = v0[2];

    v40 = v0[1];

    return v40(v39);
  }

  return result;
}

uint64_t sub_10003AEDC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_10003B638;
  }

  else
  {
    v2 = sub_10003B004;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003B004()
{
  v1 = v0[27];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = sub_1000355E4();
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = sub_1000348E0(sub_10003D40C, v6, v5);

  v1(v3, v2, v4);

  v8 = sub_1000672F8();
  v9 = sub_100067E08();
  v58 = v7;

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  if (v10)
  {
    v55 = v9;
    log = v8;
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[10];
    v17 = swift_slowAlloc();
    v0[3] = swift_slowAlloc();
    *v17 = 136315650;
    *(v17 + 4) = sub_10000D4F0(0xD000000000000014, 0x800000010006D2D0, v0 + 3);
    *(v17 + 12) = 2080;
    sub_100066FC8();
    sub_10003D4B4(&qword_100081218, &type metadata accessor for UUID);
    v18 = sub_100068148();
    v20 = v19;
    (*(v14 + 8))(v15, v16);
    v54 = *(v11 + 8);
    v54(v12, v13);
    v21 = sub_10000D4F0(v18, v20, v0 + 3);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2080;
    v22 = *(v58 + 16);
    v23 = _swiftEmptyArrayStorage;
    if (v22)
    {
      v0[4] = _swiftEmptyArrayStorage;
      sub_10000DAD8(0, v22, 0);
      v23 = v0[4];
      v24 = (v58 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v0[4] = v23;
        v28 = *(v23 + 2);
        v27 = *(v23 + 3);

        if (v28 >= v27 >> 1)
        {
          sub_10000DAD8((v27 > 1), v28 + 1, 1);
          v23 = v0[4];
        }

        *(v23 + 2) = v28 + 1;
        v29 = &v23[2 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v26;
        v24 += 5;
        --v22;
      }

      while (v22);
    }

    v0[5] = v23;
    sub_1000024F4(&qword_100080AB8);
    sub_1000141C4(&qword_100080AC0, &qword_100080AB8);
    v31 = sub_100067B18();
    v33 = v32;

    v34 = sub_10000D4F0(v31, v33, v0 + 3);

    *(v17 + 24) = v34;
    _os_log_impl(&_mh_execute_header, log, v55, "%s home=%s ServiceKinds={%s}", v17, 0x20u);
    swift_arrayDestroy();

    v30 = v54;
  }

  else
  {

    v30 = *(v11 + 8);
    v30(v12, v13);
  }

  loga = v0[25];
  v35 = v0[16];
  v36 = v0[13];
  v38 = v0[8];
  v37 = v0[9];
  v39 = v0[7];
  v40 = v0[26] + 1;
  sub_10003F8E8(v58);
  (*(v38 + 8))(v37, v39);
  result = (v30)(v35, v36);
  if (v40 == loga)
  {

    v42 = v0[2];

    v43 = v0[1];

    return v43(v42);
  }

  else
  {
    v44 = v0[26] + 1;
    v0[26] = v44;
    v45 = v0[22];
    if (v44 >= *(v45 + 16))
    {
      __break(1u);
    }

    else
    {
      v46 = v0[16];
      v47 = v0[13];
      v48 = v0[14];
      v49 = *(v48 + 16);
      v48 += 16;
      v50 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64)) + *(v48 + 56) * v44;
      v0[27] = v49;
      v0[28] = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v49(v46, v50, v47);
      v51 = swift_task_alloc();
      v0[29] = v51;
      *v51 = v0;
      v51[1] = sub_10003AEDC;
      v52 = v0[16];
      v53 = v0[9];

      return sub_1000361B8(v53, v52);
    }
  }

  return result;
}

uint64_t sub_10003B590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003B638()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003B6F0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_100066FE8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = sub_100066F88();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = *(sub_1000024F4(&qword_100081648) - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10003B8AC, 0, 0);
}

uint64_t sub_10003B8AC()
{
  v29 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000D4F0(0xD000000000000012, 0x800000010006D310, &v27);
    *(v5 + 12) = 2080;
    v6 = *(v4 + 16);
    v7 = _swiftEmptyArrayStorage;
    if (v6)
    {
      v24 = v3;
      v25 = v5;
      v26 = v2;
      v8 = v0[5];
      v28 = _swiftEmptyArrayStorage;
      sub_10000DAD8(0, v6, 0);
      v7 = v28;
      v9 = *(v28 + 2);
      v10 = 2 * v9;
      v11 = (v8 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v28 = v7;
        v14 = v9 + 1;
        v15 = *(v7 + 3);

        if (v9 >= v15 >> 1)
        {
          sub_10000DAD8((v15 > 1), v14, 1);
          v7 = v28;
        }

        *(v7 + 2) = v14;
        v16 = &v7[v10];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
        v10 += 2;
        v11 += 5;
        ++v9;
        --v6;
      }

      while (v6);
      v5 = v25;
      v2 = v26;
      v3 = v24;
    }

    v0[4] = v7;
    sub_1000024F4(&qword_100080AB8);
    sub_1000141C4(&qword_100080AC0, &qword_100080AB8);
    v17 = sub_100067B18();
    v19 = v18;

    v20 = sub_10000D4F0(v17, v19, &v27);

    *(v5 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s entities: {%s}", v5, 0x16u);
    swift_arrayDestroy();
  }

  v0[19] = sub_100067048();
  sub_1000670E8();
  v0[20] = sub_1000670D8();
  sub_10003D4B4(&qword_100081658, &type metadata accessor for WidgetActor);
  v22 = sub_100067CF8();

  return _swift_task_switch(sub_10003BC24, v22, v21);
}

uint64_t sub_10003BC24()
{

  *(v0 + 168) = sub_100067038();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_10003BCC8;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10003BCC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_10003C588;
  }

  else
  {
    v4 = sub_10003BDDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003BDDC()
{
  v1 = v0[5];

  v2 = *(v1 + 16);
  if (v2)
  {
    v67 = v0[15];
    v3 = v0[5] + 64;
    v4 = _swiftEmptyArrayStorage;
    do
    {

      sub_100066C78();
      if (v0[3])
      {

        sub_100066F48();
        swift_bridgeObjectRelease_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_10004EB70(0, *(v4 + 2) + 1, 1, v4);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        if (v6 >= v5 >> 1)
        {
          v4 = sub_10004EB70(v5 > 1, v6 + 1, 1, v4);
        }

        v7 = v0[18];
        *(v4 + 2) = v6 + 1;
        sub_10003D44C(v7, v4 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v6, &qword_100081648);
      }

      else
      {
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = *(v4 + 2);
  if (v8)
  {
    v9 = v0[15];
    v10 = v0[11];
    v11 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v68 = *(v9 + 72);
    v12 = (v10 + 48);
    v64 = v10;
    v65 = (v10 + 32);
    v13 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v0[16];
      v14 = v0[17];
      v16 = v0[10];
      sub_10003D39C(v11, v14);
      sub_10003D44C(v14, v15, &qword_100081648);
      if ((*v12)(v15, 1, v16) == 1)
      {
        sub_1000096A0(v0[16], &qword_100081648);
      }

      else
      {
        v17 = *v65;
        (*v65)(v0[14], v0[16], v0[10]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10004EB48(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = sub_10004EB48(v18 > 1, v19 + 1, 1, v13);
        }

        v20 = v0[14];
        v21 = v0[10];
        *(v13 + 2) = v19 + 1;
        v17(v13 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v19, v20, v21);
      }

      v11 += v68;
      --v8;
    }

    while (v8);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v22 = sub_100013FAC(v13);

  if (*(v22 + 16))
  {

    v24 = v0[23];
LABEL_47:

    v53 = v0[1];

    return v53(v24);
  }

  v25 = v0[23];
  v62 = *(v25 + 16);
  if (!v62)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_46:

    goto LABEL_47;
  }

  v26 = 0;
  v27 = v0[7];
  v69 = v22 + 56;
  v54 = v0[11];
  v28 = (v54 + 8);
  v55 = (v27 + 32);
  v24 = _swiftEmptyArrayStorage;
  v61 = v27;
  v60 = (v27 + 8);
  v66 = v22;
  v57 = v0[23];
  while (v26 < *(v25 + 16))
  {
    v31 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v32 = *(v61 + 72);
    (*(v61 + 16))(v0[9], v0[23] + v31 + v32 * v26, v0[6]);
    sub_100066FC8();
    if (*(v22 + 16))
    {
      v59 = v32;
      v63 = v26;
      sub_10003D4B4(&qword_100080B20, &type metadata accessor for UUID);
      v33 = sub_100067B08();
      v34 = -1 << *(v22 + 32);
      v35 = v33 & ~v34;
      if ((*(v69 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v56 = v31;
        v58 = v24;
        v36 = ~v34;
        v37 = *(v54 + 72);
        v38 = *(v54 + 16);
        while (1)
        {
          v39 = v0[12];
          v40 = v0[10];
          v38(v39, *(v66 + 48) + v35 * v37, v40);
          sub_10003D4B4(&qword_100080B28, &type metadata accessor for UUID);
          v41 = sub_100067B28();
          v42 = *v28;
          (*v28)(v39, v40);
          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v69 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            v22 = v66;
            v24 = v58;
            goto LABEL_38;
          }
        }

        v45 = v0[9];
        v46 = v0[8];
        v47 = v0[6];
        v42(v0[13], v0[10]);
        v48 = *v55;
        (*v55)(v46, v45, v47);
        v24 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000DB7C(0, *(v58 + 2) + 1, 1);
          v24 = v58;
        }

        v26 = v63;
        v50 = *(v24 + 2);
        v49 = *(v24 + 3);
        if (v50 >= v49 >> 1)
        {
          sub_10000DB7C(v49 > 1, v50 + 1, 1);
          v24 = v58;
        }

        v51 = v0[8];
        v52 = v0[6];
        *(v24 + 2) = v50 + 1;
        result = v48(v24 + v56 + v50 * v59, v51, v52);
        v22 = v66;
        v25 = v57;
      }

      else
      {
        v42 = *v28;
LABEL_38:
        v43 = v0[9];
        v44 = v0[6];
        v42(v0[13], v0[10]);
        result = (*v60)(v43, v44);
        v25 = v57;
        v26 = v63;
      }
    }

    else
    {
      v29 = v0[9];
      v30 = v0[6];
      (*v28)(v0[13], v0[10]);
      result = (*v60)(v29, v30);
    }

    if (++v26 == v62)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003C588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003C678()
{
  v12 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000D4F0(0x7365697469746E65, 0xEE00293A726F6628, &v11);
    *(v5 + 12) = 2080;
    v0[4] = v4;
    sub_1000024F4(&qword_100080AB8);
    sub_1000141C4(&qword_100080AC0, &qword_100080AB8);
    v6 = sub_100067B18();
    v8 = sub_10000D4F0(v6, v7, &v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s entities: {%s}", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_10003C8E0;

  return sub_10003A5D0();
}

uint64_t sub_10003C8E0(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10003CA14, 0, 0);
  }
}

void sub_10003CA14()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v21 = -v2;
    v22 = v0 + 2;
    v4 = v1 + 64;
    v5 = _swiftEmptyArrayStorage;
    v19 = v1 + 64;
    do
    {
      v20 = v5;
      v6 = (v4 + 40 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = v0[5];
        v8 = *(v6 - 4);
        v9 = *(v6 - 3);
        v11 = *(v6 - 2);
        v10 = *(v6 - 1);
        v12 = *v6;
        v0[2] = v8;
        v0[3] = v9;
        v13 = v12;
        v14 = swift_task_alloc();
        *(v14 + 16) = v22;

        LOBYTE(v7) = sub_100034F34(sub_10003D4FC, v14, v7);

        if (v7)
        {
          break;
        }

        ++v3;
        v6 += 5;
        v1 = v23;
        v0 = v24;
        if (v21 + v3 == 1)
        {
          v5 = v20;
          goto LABEL_15;
        }
      }

      v5 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DB5C(0, *(v20 + 2) + 1, 1);
        v5 = v20;
      }

      v4 = v19;
      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      if (v16 >= v15 >> 1)
      {
        sub_10000DB5C((v15 > 1), v16 + 1, 1);
        v4 = v19;
        v5 = v20;
      }

      *(v5 + 2) = v16 + 1;
      v17 = &v5[5 * v16];
      *(v17 + 4) = v8;
      *(v17 + 5) = v9;
      *(v17 + 6) = v11;
      *(v17 + 7) = v10;
      *(v17 + 8) = v13;
      v1 = v23;
      v0 = v24;
    }

    while (v21 + v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v18 = v0[1];

  v18(v5);
}

uint64_t sub_10003CC50(uint64_t a1)
{
  v1[7] = a1;
  sub_1000024F4(&qword_100081648);
  v1[8] = swift_task_alloc();
  v2 = sub_1000670C8();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10003CD54, 0, 0);
}

uint64_t sub_10003CD54()
{
  v9 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);
  v2 = sub_1000672F8();
  v3 = sub_100067E08();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000D4F0(0x52746C7561666564, 0xEF2928746C757365, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s fetching default result", v4, 0xCu);
    sub_1000026F0(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_10003CF04;

  return sub_10003A5D0();
}

uint64_t sub_10003CF04(uint64_t a1)
{
  *(*v2 + 112) = a1;

  if (v1)
  {

    v3 = sub_10003D1FC;
  }

  else
  {
    v3 = sub_10003D020;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003D020()
{
  v1 = v0[14];
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    v5 = v1[6];
    v4 = v1[7];
    v6 = v1[8];
  }

  else
  {

    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    v12 = enum case for ServiceKind.temperatureSensor(_:);
    v13 = *(v10 + 104);
    v13(v7, enum case for ServiceKind.temperatureSensor(_:), v9);
    v14 = sub_1000670B8();
    v24 = v15;
    v25 = v14;
    v16 = *(v10 + 8);
    v16(v7, v9);
    v13(v8, v12, v9);
    v17 = sub_100067068();
    v19 = v18;
    v16(v8, v9);
    v20 = sub_100066F88();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_10003A210(v25, v24, v17, v19, v11, v0 + 2);
    v3 = v0[2];
    v2 = v0[3];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[6];
  }

  v21 = v0[7];

  *v21 = v3;
  v21[1] = v2;
  v21[2] = v5;
  v21[3] = v4;
  v21[4] = v6;
  v22 = v0[1];

  return v22();
}

uint64_t sub_10003D1FC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = enum case for ServiceKind.temperatureSensor(_:);
  v7 = *(v4 + 104);
  v7(v1, enum case for ServiceKind.temperatureSensor(_:), v3);
  v20 = sub_1000670B8();
  v18 = v8;
  v9 = *(v4 + 8);
  v9(v1, v3);
  v7(v2, v6, v3);
  v10 = sub_100067068();
  v12 = v11;
  v9(v2, v3);
  v13 = sub_100066F88();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_10003A210(v20, v18, v10, v12, v5, (v0 + 16));
  v19 = *(v0 + 32);
  v21 = *(v0 + 16);
  v14 = *(v0 + 56);
  v15 = *(v0 + 48);

  *v14 = v21;
  *(v14 + 16) = v19;
  *(v14 + 32) = v15;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10003D39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024F4(&qword_100081648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D44C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000024F4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003D4B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003D4FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100068168() & 1;
  }
}

unint64_t sub_10003D564()
{
  result = qword_1000816B0;
  if (!qword_1000816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816B0);
  }

  return result;
}

unint64_t sub_10003D5BC()
{
  result = qword_1000816B8;
  if (!qword_1000816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816B8);
  }

  return result;
}

unint64_t sub_10003D614()
{
  result = qword_1000816C0;
  if (!qword_1000816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816C0);
  }

  return result;
}

unint64_t sub_10003D66C()
{
  result = qword_1000816C8;
  if (!qword_1000816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816C8);
  }

  return result;
}

uint64_t sub_10003D710()
{
  v0 = sub_100066E38();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100066FB8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100067B88();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100066E58();
  sub_10001DE2C(v6, qword_100085DD8);
  sub_1000026A8(v6, qword_100085DD8);
  sub_100067B38();
  sub_100066FA8();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100066E68();
}

uint64_t sub_10003D904@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000807F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100066E58();
  v3 = sub_1000026A8(v2, qword_100085DD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10003D9C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10003E260();
  *v4 = v2;
  v4[1] = sub_10003DA6C;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10003DA6C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10003DB74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003DDDC();
  *a1 = result;
  return result;
}

uint64_t sub_10003DB9C(uint64_t a1)
{
  v2 = sub_10003DD88();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10003DBF8()
{
  v0 = [objc_allocWithZone(IFObjectHasher) init];
  sub_100066CB8();
  if (v5)
  {

    sub_10003DD38(v4, v5);
    v1 = sub_100067BA8();
  }

  [v0 finalize];
  v2 = sub_100068148();

  return v2;
}

uint64_t sub_10003DD38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10003DD88()
{
  result = qword_1000816D0;
  if (!qword_1000816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816D0);
  }

  return result;
}

uint64_t sub_10003DDDC()
{
  v0 = sub_100066D58();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000024F4(&qword_1000816D8);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v19 - v5;
  v6 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v6 - 8);
  v20 = v19 - v7;
  v8 = sub_100066E38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100066FB8();
  __chkstk_darwin(v12 - 8);
  v13 = sub_100067B88();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100066E58();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v19[1] = sub_1000024F4(&qword_1000816E0);
  sub_100067B38();
  sub_100066FA8();
  (*(v9 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_100066E68();
  (*(v15 + 56))(v20, 1, 1, v14);
  v16 = sub_100066C68();
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v17 = *(*(v16 - 8) + 56);
  v17(v21, 1, 1, v16);
  v17(v22, 1, 1, v16);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000346A0();
  return sub_100066CC8();
}

unint64_t sub_10003E260()
{
  result = qword_1000816E8;
  if (!qword_1000816E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816E8);
  }

  return result;
}

unint64_t sub_10003E2B8()
{
  result = qword_1000816F0;
  if (!qword_1000816F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816F0);
  }

  return result;
}

unint64_t sub_10003E310()
{
  result = qword_1000816F8;
  if (!qword_1000816F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000816F8);
  }

  return result;
}

unint64_t sub_10003E368()
{
  result = qword_100081700;
  if (!qword_100081700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081700);
  }

  return result;
}

uint64_t sub_10003E40C()
{
  v0 = sub_100066E38();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100066FB8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100067B88();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100066E58();
  sub_10001DE2C(v6, qword_100085DF0);
  sub_1000026A8(v6, qword_100085DF0);
  sub_100067B38();
  sub_100066FA8();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100066E68();
}

uint64_t sub_10003E5FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000807F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100066E58();
  v3 = sub_1000026A8(v2, qword_100085DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10003E6A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002F5A8();
  *v4 = v2;
  v4[1] = sub_10003DA6C;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_10003E750@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003EAD8();
  *a1 = result;
  return result;
}

uint64_t sub_10003E778(uint64_t a1)
{
  v2 = sub_10003EA84();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10003E7D4()
{
  v0 = sub_1000024F4(&qword_100080DC0);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v3 = sub_100066F88();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = [objc_allocWithZone(IFObjectHasher) init];
  sub_100066CB8();
  v11 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  if ((*(*(v11 - 8) + 48))(v2, 1, v11))
  {
    sub_1000181B8(v2);
  }

  else
  {
    (*(v4 + 16))(v7, &v2[*(v11 + 20)], v3);
    sub_1000181B8(v2);
    (*(v4 + 32))(v9, v7, v3);
    sub_100066F58();
    v12 = sub_100067BA8();

    (*(v4 + 8))(v9, v3);
  }

  v15[1] = [v10 finalize];
  v13 = sub_100068148();

  return v13;
}

unint64_t sub_10003EA84()
{
  result = qword_100081708;
  if (!qword_100081708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081708);
  }

  return result;
}

uint64_t sub_10003EAD8()
{
  v0 = sub_100066D58();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000024F4(&qword_1000816D8);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v22 - v5;
  v6 = sub_1000024F4(&qword_100080DC0);
  __chkstk_darwin(v6 - 8);
  v24 = v22 - v7;
  v8 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v8 - 8);
  v23 = v22 - v9;
  v10 = sub_100066E38();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100066FB8();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100067B88();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100066E58();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v22[1] = sub_1000024F4(&qword_100081710);
  sub_100067B38();
  sub_100066FA8();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100066E68();
  (*(v17 + 56))(v23, 1, 1, v16);
  v18 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
  v19 = sub_100066C68();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_10003EFE4();
  return sub_100066CC8();
}

unint64_t sub_10003EFE4()
{
  result = qword_100081718;
  if (!qword_100081718)
  {
    type metadata accessor for SecurityIntentAccessoryAppEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081718);
  }

  return result;
}

uint64_t type metadata accessor for SecurityIntentAccessoryAppEntity()
{
  result = qword_1000817F8;
  if (!qword_1000817F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003F168()
{
  result = qword_100081738;
  if (!qword_100081738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081738);
  }

  return result;
}

double *sub_10003F1C8(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(sub_100066F88() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = _swiftEmptyArrayStorage;
  v10 = *(v7 + 72);
  while (1)
  {
    a1(&v14, v8);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      sub_100047748(&v14, v16);
      sub_100047748(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10004ED98(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_10004ED98((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      sub_100047748(&v14, &v9[5 * v12 + 4]);
    }

    else
    {
      sub_1000096A0(&v14, &qword_1000818B0);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

BOOL sub_10003F378(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1000670C8();
    ++v2;
    sub_100049598(&qword_100080AF0, &type metadata accessor for ServiceKind);
  }

  while ((sub_100067B28() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_10003F484(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_10003F4CC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10004E6D4(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003F5C4(uint64_t result)
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

  result = sub_10004E7F8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_10003F6B0(uint64_t result)
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

  result = sub_10004E8FC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_10003F79C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v12 = *(v4 + 24) >> 1, v12 < v9))
  {
    if (v8 <= v9)
    {
      v13 = v8 + v7;
    }

    else
    {
      v13 = v8;
    }

    result = sub_10004E6D4(result, v13, 1, v4);
    v4 = result;
    v12 = *(result + 24) >> 1;
  }

  v14 = v12 - *(v4 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < v7)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_16;
    }

    v15 = *(v4 + 16);
    v16 = __OFADD__(v15, v7);
    v17 = v15 + v7;
    if (!v16)
    {
      *(v4 + 16) = v17;
LABEL_16:
      result = swift_unknownObjectRelease();
      if (v7 != v14)
      {
LABEL_17:
        *v5 = v4;
        return result;
      }

LABEL_21:
      result = sub_10001A41C(0, 0);
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003F8E8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10004EA28(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003F9E0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
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

  v3 = sub_10004EB94(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = type metadata accessor for SecurityIntentAccessoryAppEntity();
  if (v8 < v2)
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

uint64_t sub_10003FB0C(uint64_t result)
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

  result = sub_10004F0EC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_10003FBF8(uint64_t a1)
{
  v2 = sub_100067288();
  __chkstk_darwin(v2);
  v3 = sub_1000024F4(&qword_100081648);
  __chkstk_darwin(v3 - 8);
  sub_1000095D4(a1, v10 - v4, &qword_100081648);
  v10[2] = sub_1000670F8();
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  sub_1000024F4(&qword_100081690);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100068BF0;
  sub_100067278();
  v10[1] = v8;
  sub_100049598(&qword_100081698, &type metadata accessor for WidgetRefreshOptions);
  sub_1000024F4(&qword_1000816A0);
  sub_1000141C4(&qword_1000816A8, &qword_1000816A0);
  sub_100067EF8();
  sub_1000671A8();
  sub_1000024F4(&qword_100081678);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10003FEA4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  sub_1000024F4(&qword_100081648);
  v3[4] = swift_task_alloc();
  sub_1000024F4(&qword_100081678);
  v3[5] = swift_task_alloc();
  v5 = sub_100066F88();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_100066FE8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[13] = v7;
  v3[14] = sub_1000670E8();
  v3[15] = sub_1000670D8();
  v8 = swift_task_alloc();
  v3[16] = v8;
  *v8 = v3;
  v8[1] = sub_1000400B4;

  return WidgetDataModel.home(_:)(v7, a2);
}

uint64_t sub_1000400B4()
{
  v2 = *v1;
  v2[17] = v0;

  sub_100049598(&qword_100081658, &type metadata accessor for WidgetActor);
  v4 = sub_100067CF8();
  v2[18] = v4;
  v2[19] = v3;
  if (v0)
  {
    v5 = sub_100040948;
  }

  else
  {
    v5 = sub_100040250;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100040250()
{
  v31 = v0;
  sub_100066FC8();
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_100067318();
  v0[20] = sub_1000026A8(v5, qword_100085CA0);
  v6 = *(v4 + 16);
  v0[21] = v6;
  v0[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = sub_1000672F8();
  v8 = sub_100067E08();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v9)
  {
    buf = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *buf = 136315138;
    sub_100049598(&qword_100081218, &type metadata accessor for UUID);
    v13 = v6;
    v14 = sub_100068148();
    v16 = v15;
    v27 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_10000D4F0(v18, v16, &v30);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v27, "snapshot(of:) Will generate snapshot of home: [%s]", buf, 0xCu);
    sub_1000026F0(v29);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[23] = v17;
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[4];
  v6(v22, v0[10], v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  sub_10003FBF8(v22);
  sub_1000096A0(v22, &qword_100081648);
  v23 = swift_task_alloc();
  v0[24] = v23;
  *v23 = v0;
  v23[1] = sub_100040570;
  v24 = v0[5];
  v25 = v0[2];

  return WidgetDataModel.snapshotOf<A>(updateType:)(v25, v24, &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_100040570()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1000409F8;
  }

  else
  {
    v5 = sub_1000406AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000406AC()
{
  v28 = v0;
  v1 = v0[21];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v1(v3, v2, v4);
  v5 = sub_1000672F8();
  v6 = sub_100067E08();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v26 = v0[10];
  v12 = v0[8];
  v13 = v0[6];
  if (v7)
  {
    v24 = v0[11];
    v14 = swift_slowAlloc();
    v25 = v8;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    sub_100049598(&qword_100081218, &type metadata accessor for UUID);
    v22 = v6;
    v16 = sub_100068148();
    v23 = v9;
    v18 = v17;
    v25(v12, v13);
    v19 = sub_10000D4F0(v16, v18, &v27);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v22, "snapshot(of:) Finished generating snapshot: [%s]", v14, 0xCu);
    sub_1000026F0(v15);

    v25(v26, v13);
    (*(v10 + 8))(v23, v24);
  }

  else
  {

    v8(v12, v13);
    v8(v26, v13);
    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100040948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000409F8()
{
  v1 = v0[23];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[6];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100040AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a4;
  v5[52] = a5;
  v5[49] = a1;
  v5[50] = a3;
  v7 = sub_100067198();
  v5[53] = v7;
  v5[54] = *(v7 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v8 = sub_100067218();
  v5[57] = v8;
  v5[58] = *(v8 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  sub_100066E58();
  v5[61] = swift_task_alloc();
  v9 = type metadata accessor for SecurityIntentAccessoryAppEntity();
  v5[62] = v9;
  v5[63] = *(v9 - 8);
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v10 = sub_1000670C8();
  v5[66] = v10;
  v5[67] = *(v10 - 8);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = sub_1000672D8();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v11 = sub_100067158();
  v5[73] = v11;
  v5[74] = *(v11 - 8);
  v12 = swift_task_alloc();
  v5[75] = v12;
  v5[76] = sub_1000670E8();
  v5[77] = sub_1000670D8();
  v13 = swift_task_alloc();
  v5[78] = v13;
  *v13 = v5;
  v13[1] = sub_100040E24;

  return sub_10003FEA4(v12, a2);
}

uint64_t sub_100040E24()
{
  *(*v1 + 632) = v0;

  sub_100049598(&qword_100081658, &type metadata accessor for WidgetActor);
  v3 = sub_100067CF8();
  if (v0)
  {
    v4 = sub_100041964;
  }

  else
  {
    v4 = sub_100040FB0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100040FB0()
{

  v1 = _swiftEmptyArrayStorage;
  sub_100047508(_swiftEmptyArrayStorage);
  sub_100067138();

  sub_1000672C8();
  sub_1000672B8();
  sub_100049598(&qword_100081868, &type metadata accessor for TileInfoBearerCollection);
  result = sub_100067C68();
  v3 = *(v0 + 304);
  v60 = *(v0 + 296);
  v58 = *(v60 + 16);
  if (v3 == v58)
  {
LABEL_2:

    v69 = *(v1 + 2);
    if (!v69)
    {
LABEL_16:

      v18 = *&_swiftEmptyArrayStorage[2];
      if (v18)
      {
        v19 = *(v0 + 536);
        v20 = *(v0 + 496);
        v66 = *(v0 + 504);
        v21 = *(v0 + 464);
        v22 = *(v0 + 432);
        sub_10000DBE0(0, v18, 0);
        v70 = _swiftEmptyArrayStorage;
        v23 = &_swiftEmptyArrayStorage[4];
        v56 = (v22 + 8);
        v57 = (v22 + 32);
        v59 = (v21 + 8);
        v61 = (v21 + 32);
        v62 = (v19 + 8);
        sub_1000024F4(&qword_100081650);
        v64 = v20;
        do
        {
          v24 = *(v0 + 512);
          sub_1000476E4(v23, v0 + 176);
          sub_1000476E4(v0 + 176, v0 + 216);
          sub_100066E28();
          *v24 = sub_100066C98();
          sub_1000476E4(v0 + 216, v0 + 256);
          sub_1000024F4(&qword_100080AD8);
          if (swift_dynamicCast())
          {
            v25 = *(v0 + 472);
            v26 = *(v0 + 456);
            (*v61)(v25, *(v0 + 480), v26);
            sub_100067208();
            (*v59)(v25, v26);
          }

          else if (swift_dynamicCast())
          {
            v27 = *(v0 + 440);
            v28 = *(v0 + 424);
            (*v57)(v27, *(v0 + 448), v28);
            sub_100067178();
            (*v56)(v27, v28);
          }

          else
          {
            sub_10002F780((v0 + 216), *(v0 + 240));
            sub_100068048();
          }

          v29 = *(v0 + 544);
          v30 = *(v0 + 528);
          v31 = *(v0 + 520);
          v32 = *(v0 + 512);
          sub_1000026F0(v0 + 256);
          sub_1000476E4(v0 + 216, v32 + *(v20 + 24));
          sub_10002F780((v0 + 216), *(v0 + 240));
          sub_1000671C8();
          v33 = sub_1000670B8();
          v35 = v34;
          (*v62)(v29, v30);
          *(v0 + 376) = v33;
          *(v0 + 384) = v35;
          sub_100066C88();
          sub_100047760(v32, v31);
          sub_1000026F0(v0 + 216);
          sub_1000026F0(v0 + 176);
          v36 = v70;
          v38 = *(v70 + 2);
          v37 = *(v70 + 3);
          if (v38 >= v37 >> 1)
          {
            sub_10000DBE0(v37 > 1, v38 + 1, 1);
            v36 = v70;
          }

          v39 = *(v0 + 520);
          *(v36 + 2) = v38 + 1;
          v70 = v36;
          sub_100047760(v39, v36 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v38);
          v23 += 5;
          --v18;
          v20 = v64;
        }

        while (v18);
      }

      else
      {

        v70 = _swiftEmptyArrayStorage;
      }

      v50 = *(v0 + 600);
      v51 = *(v0 + 592);
      v52 = *(v0 + 584);
      v53 = *(v0 + 392);
      sub_100067118();
      (*(v51 + 8))(v50, v52);
      v54 = sub_100066FE8();
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);

      v55 = *(v0 + 8);

      return v55(v70);
    }

    v4 = 0;
    v5 = (v1 + 4);
    while (v4 < *(v1 + 2))
    {
      sub_1000476E4(v5, v0 + 96);
      if (sub_100067C38() < 3 || (v6 = v1, v8 = *(v0 + 400), v7 = *(v0 + 408), sub_10002F780((v0 + 96), *(v0 + 120)), *(v0 + 312) = sub_1000671E8(), *(v0 + 320) = v9, *(v0 + 328) = v8, *(v0 + 336) = v7, v1 = v6, sub_1000025E8(), v10 = sub_100067EB8(), , (v10 & 1) != 0) || (sub_10002F780((v0 + 96), *(v0 + 120)), v1 = v6, v11 = sub_1000671F8(), v12) && (v14 = *(v0 + 400), v13 = *(v0 + 408), *(v0 + 344) = v11, *(v0 + 352) = v12, *(v0 + 360) = v14, *(v0 + 368) = v13, v15 = sub_100067EB8(), , (v15 & 1) != 0))
      {
        sub_100047748((v0 + 96), v0 + 136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000DC24(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (*&v17 >= *&v16 >> 1)
        {
          sub_10000DC24((*&v16 > 1uLL), *&v17 + 1, 1);
        }

        *&_swiftEmptyArrayStorage[2] = *&v17 + 1;
        result = sub_100047748((v0 + 136), &_swiftEmptyArrayStorage[5 * *&v17 + 4]);
      }

      else
      {
        result = sub_1000026F0(v0 + 96);
      }

      ++v4;
      v5 += 40;
      if (v69 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {
    v65 = *(v0 + 416);
    v67 = *(v0 + 536);
    v63 = (v67 + 8);
    while ((v3 & 0x8000000000000000) == 0)
    {
      if (v3 >= *(v60 + 16))
      {
        goto LABEL_53;
      }

      v71 = v1;
      *(v0 + 304) = v3 + 1;
      sub_1000476E4(v60 + 32 + 40 * v3, v0 + 16);
      sub_10002F780((v0 + 16), *(v0 + 40));
      result = sub_1000671B8();
      v40 = result;
      v68 = *(result + 16);
      if (v68)
      {
        v41 = 0;
        while (2)
        {
          if (v41 >= *(v40 + 16))
          {
            goto LABEL_51;
          }

          v42 = *(v0 + 416);
          v43 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v44 = *(v67 + 72);
          (*(v67 + 16))(*(v0 + 552), v40 + v43 + v44 * v41++, *(v0 + 528));
          v45 = v42 + v43;
          v46 = *(v65 + 16) + 1;
          while (--v46)
          {
            sub_100049598(&qword_100080AF0, &type metadata accessor for ServiceKind);
            v45 += v44;
            if (sub_100067B28())
            {
              (*v63)(*(v0 + 552), *(v0 + 528));

              sub_100047748((v0 + 16), v0 + 56);
              v1 = v71;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10000DC24(0, *(v71 + 2) + 1, 1);
                v1 = v71;
              }

              v49 = *(v1 + 2);
              v48 = *(v1 + 3);
              if (v49 >= v48 >> 1)
              {
                sub_10000DC24((v48 > 1), v49 + 1, 1);
                v1 = v71;
              }

              *(v1 + 2) = v49 + 1;
              result = sub_100047748((v0 + 56), &v1[5 * v49 + 4]);
              goto LABEL_29;
            }
          }

          result = (*v63)(*(v0 + 552), *(v0 + 528));
          if (v41 != v68)
          {
            continue;
          }

          break;
        }
      }

      result = sub_1000026F0(v0 + 16);
      v1 = v71;
LABEL_29:
      v3 = *(v0 + 304);
      if (v3 == v58)
      {
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_100041964()
{

  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  sub_1000026A8(v1, qword_100085CA0);
  swift_errorRetain();
  v2 = sub_1000672F8();
  v3 = sub_100067DE8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "allWidgetTileInfos() Failed to update widget snapshot: %{public}@", v4, 0xCu);
    sub_1000096A0(v5, &qword_100080CA0);
  }

  v7 = *(v0 + 392);

  v8 = sub_100066FE8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_100041BE8()
{
  v0 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100066E58();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100066D88();
  sub_10001DE2C(v5, qword_100085E08);
  sub_1000026A8(v5, qword_100085E08);
  sub_100066E28();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100066D78();
}

uint64_t sub_100041D58@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1000024F4(&qword_100081638);
  __chkstk_darwin(v2 - 8);
  v27 = &v23 - v3;
  v26 = sub_1000670C8();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024F4(&qword_100081640);
  __chkstk_darwin(v7 - 8);
  v24 = &v23 - v8;
  v25 = sub_100066E58();
  v9 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100067B78();
  v12 = __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  sub_100067B68();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100067B58(v29);
  v13 = (v1 + *(type metadata accessor for SecurityIntentAccessoryAppEntity() + 24));
  sub_10002F780(v13, v13[3]);
  v30._countAndFlagsBits = sub_1000671E8();
  sub_100067B48(v30);

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_100067B58(v31);
  sub_100066E48();
  sub_100067B68();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_100067B58(v32);
  sub_10002F780(v13, v13[3]);
  sub_1000671D8();
  v14 = sub_100067068();
  v16 = v15;
  v17 = *(v4 + 8);
  v18 = v26;
  v17(v6, v26);
  v33._countAndFlagsBits = v14;
  v33._object = v16;
  sub_100067B48(v33);

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100067B58(v34);
  v19 = v24;
  sub_100066E48();
  (*(v9 + 56))(v19, 0, 1, v25);
  sub_10002F780(v13, v13[3]);
  sub_1000671D8();
  sub_100067078();
  v17(v6, v18);
  v20 = v27;
  sub_100066D18();
  v21 = sub_100066D28();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  return sub_100066D38();
}

uint64_t sub_1000422B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_100066F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10004232C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100080800 != -1)
  {
    swift_once();
  }

  v2 = sub_100066D88();
  v3 = sub_1000026A8(v2, qword_100085E08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100042460(uint64_t a1)
{
  v2 = sub_100049598(&qword_100081718, type metadata accessor for SecurityIntentAccessoryAppEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100042528(uint64_t a1)
{
  v2 = sub_100049598(&qword_100081758, type metadata accessor for SecurityIntentAccessoryAppEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000425A4()
{
  sub_1000024F4(&qword_100080A48);
  v0 = sub_1000670C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100068F50;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for ServiceKind.garageDoorOpener(_:), v0);
  v6(v5 + v2, enum case for ServiceKind.lockMechanism(_:), v0);
  result = (v6)(v5 + 2 * v2, enum case for ServiceKind.securitySystem(_:), v0);
  qword_100085E20 = v4;
  return result;
}

uint64_t sub_1000426E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_100066E58();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100067B78();
  v3[8] = swift_task_alloc();
  v5 = sub_1000024F4(&qword_100081880);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_1000024F4(&qword_100081888);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_1000024F4(&qword_100081640);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1000024F4(&qword_100081648);
  v3[17] = swift_task_alloc();
  sub_1000024F4(&qword_100081860);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = sub_100066FE8();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000429B8, 0, 0);
}

uint64_t sub_1000429B8()
{
  v12 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = sub_100067318();
  v0[25] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000D4F0(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "entities(matching:) string: %s", v6, 0xCu);
    sub_1000026F0(v7);
  }

  v0[26] = sub_100067048();
  v0[27] = sub_1000670E8();
  v0[28] = sub_1000670D8();
  v0[29] = sub_100049598(&qword_100081658, &type metadata accessor for WidgetActor);
  v9 = sub_100067CF8();

  return _swift_task_switch(sub_100042BC0, v9, v8);
}

uint64_t sub_100042BC0()
{

  *(v0 + 240) = sub_100067038();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_100042C68;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_100042C68(uint64_t a1)
{
  *(*v2 + 256) = a1;

  if (v1)
  {

    v3 = sub_1000441D8;
  }

  else
  {
    v3 = sub_100042D90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100042D90()
{
  v1 = *(v0 + 256);

  v2 = *(v1 + 16);
  *(v0 + 264) = v2;
  v3 = *(v0 + 256);
  if (v2)
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 360) = v7;
    *(v0 + 272) = *(v5 + 56);
    *(v0 + 280) = v6;
    *(v0 + 296) = 0;
    *(v0 + 304) = &_swiftEmptyDictionarySingleton;
    *(v0 + 288) = &_swiftEmptyDictionarySingleton;
    v6(*(v0 + 192), v3 + ((v7 + 32) & ~v7), v4);
    *(v0 + 312) = sub_1000670D8();
    v8 = sub_100067CF8();
    v10 = v9;
    v11 = sub_100043594;
    v12 = v8;
    v13 = v10;
  }

  else
  {

    v14 = *(*(v0 + 48) + 56);
    if (*(&_swiftEmptyDictionarySingleton + 2) < 2uLL)
    {
      v14(*(v0 + 120), 1, 1, *(v0 + 40));
      v33 = -1;
      v34 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      if (-v34 < 64)
      {
        v33 = ~(-1 << -v34);
      }

      v35 = v33 & *(&_swiftEmptyDictionarySingleton + 8);
      v36 = (63 - v34) >> 6;
      v11 = swift_bridgeObjectRetain_n();
      v37 = 0;
      v38 = _swiftEmptyArrayStorage;
      while (v35)
      {
LABEL_29:
        v40 = *(*(&_swiftEmptyDictionarySingleton + 7) + ((v37 << 9) | (8 * __clz(__rbit64(v35)))));
        v41 = *(v40 + 16);
        v42 = *(v38 + 2);
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v43 > *(v38 + 3) >> 1)
        {
          if (v42 <= v43)
          {
            v45 = v42 + v41;
          }

          else
          {
            v45 = v42;
          }

          v38 = sub_10004EB94(isUniquelyReferenced_nonNull_native, v45, 1, v38);
        }

        v35 &= v35 - 1;
        if (*(v40 + 16))
        {
          v46 = (*(v38 + 3) >> 1) - *(v38 + 2);
          v11 = type metadata accessor for SecurityIntentAccessoryAppEntity();
          if (v46 < v41)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v41)
          {
            v47 = *(v38 + 2);
            v48 = __OFADD__(v47, v41);
            v49 = v47 + v41;
            if (v48)
            {
              goto LABEL_51;
            }

            *(v38 + 2) = v49;
          }
        }

        else
        {

          if (v41)
          {
            goto LABEL_49;
          }
        }
      }

      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {

          type metadata accessor for SecurityIntentAccessoryAppEntity();
          sub_100049598(&qword_100081728, type metadata accessor for SecurityIntentAccessoryAppEntity);
          sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
          sub_100066CE8();
LABEL_43:

          v50 = *(v0 + 8);

          return v50();
        }

        v35 = *(&_swiftEmptyDictionarySingleton + v39 + 8);
        ++v37;
        if (v35)
        {
          v37 = v39;
          goto LABEL_29;
        }
      }
    }

    else
    {
      v15 = *(v0 + 168);
      v55 = *(v0 + 96);
      v16 = *(v0 + 80);
      v14(*(v0 + 128), 1, 1, *(v0 + 40));
      v17 = -1;
      v18 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      if (-v18 < 64)
      {
        v17 = ~(-1 << -v18);
      }

      v19 = v17 & *(&_swiftEmptyDictionarySingleton + 8);
      v20 = (63 - v18) >> 6;
      v56 = v15;
      v54 = v16;
      v52 = (v15 + 8);

      v21 = 0;
      v22 = _swiftEmptyArrayStorage;
      for (i = v20; v19; v20 = i)
      {
        v58 = v22;
LABEL_14:
        v24 = *(v0 + 160);
        v25 = *(v0 + 104);
        v26 = *(v0 + 112);
        v57 = *(v0 + 176);
        v27 = __clz(__rbit64(v19)) | (v21 << 6);
        (*(v56 + 16))(v26, *(&_swiftEmptyDictionarySingleton + 6) + *(v56 + 72) * v27, v24);
        *(v26 + *(v55 + 48)) = *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v27);
        sub_1000095D4(v26, v25, &qword_100081888);
        (*(v56 + 32))(v57, v25, v24);

        sub_100067B68();
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        sub_100067B58(v60);
        v61._countAndFlagsBits = sub_100066FD8();
        sub_100067B48(v61);

        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        sub_100067B58(v62);
        sub_100066E48();
        type metadata accessor for SecurityIntentAccessoryAppEntity();
        sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
        sub_100066CD8();
        v22 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_10004EEE0(0, *(v58 + 16) + 1, 1, v58);
        }

        v29 = *(v22 + 2);
        v28 = *(v22 + 3);
        if (v29 >= v28 >> 1)
        {
          v22 = sub_10004EEE0(v28 > 1, v29 + 1, 1, v22);
        }

        v19 &= v19 - 1;
        v30 = *(v0 + 112);
        v31 = *(v0 + 88);
        v32 = *(v0 + 72);
        (*v52)(*(v0 + 176), *(v0 + 160));
        sub_1000096A0(v30, &qword_100081888);
        *(v22 + 2) = v29 + 1;
        v11 = (*(v54 + 32))(v22 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v29, v31, v32);
      }

      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {

          type metadata accessor for SecurityIntentAccessoryAppEntity();
          sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
          sub_100066CF8();
          goto LABEL_43;
        }

        v19 = *(&_swiftEmptyDictionarySingleton + v23 + 8);
        ++v21;
        if (v19)
        {
          v58 = v22;
          v21 = v23;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100043594()
{

  *(v0 + 320) = sub_100067038();

  return _swift_task_switch(sub_100043608, 0, 0);
}

uint64_t sub_100043608()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[17];
  sub_100066FC8();
  v5 = *(v3 + 8);
  v0[41] = v5;
  v0[42] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = sub_100066F88();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  if (qword_100080808 != -1)
  {
    swift_once();
  }

  v7 = qword_100085E20;
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_100043764;
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[3];
  v12 = v0[4];

  return sub_100040AF0(v9, v10, v11, v12, v7);
}

uint64_t sub_100043764(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 352) = a1;

  sub_1000096A0(v2, &qword_100081648);

  return _swift_task_switch(sub_1000438B0, 0, 0);
}

uint64_t sub_1000438B0()
{
  v1 = (v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  sub_1000095D4(*(v0 + 152), v4, &qword_100081860);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = *(v0 + 352);
  if (v5 == 1)
  {
    v7 = *(v0 + 152);

    sub_1000096A0(v7, &qword_100081860);
    v8 = *(v0 + 304);
    v9 = *(v0 + 288);
    v1 = (v0 + 144);
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 144), *(v0 + 160));
    v10 = *(v0 + 352);
    v11 = *(v0 + 328);
    if (*(v6 + 16))
    {
      v9 = *(v0 + 288);
      v12 = *(v0 + 184);
      v13 = *(v0 + 160);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10004733C(v10, v12, isUniquelyReferenced_nonNull_native);
      v11(v12, v13);
      v8 = v9;
    }

    else
    {
      v15 = *(v0 + 184);
      v16 = *(v0 + 160);

      v11(v15, v16);
      v8 = *(v0 + 304);
      v9 = *(v0 + 288);
    }
  }

  v17 = *(v0 + 264);
  v18 = *(v0 + 296) + 1;
  sub_1000096A0(*v1, &qword_100081860);
  if (v18 == v17)
  {

    v19 = *(*(v0 + 48) + 56);
    v20 = v8 + 64;
    v73 = v8;
    if (*(v8 + 16) <= 1uLL)
    {
      v19(*(v0 + 120), 1, 1, *(v0 + 40));
      v46 = -1;
      v47 = -1 << *(v8 + 32);
      if (-v47 < 64)
      {
        v46 = ~(-1 << -v47);
      }

      v48 = v46 & *(v8 + 64);
      v49 = (63 - v47) >> 6;
      v27 = swift_bridgeObjectRetain_n();
      v50 = 0;
      v51 = _swiftEmptyArrayStorage;
      while (v48)
      {
LABEL_34:
        v53 = *(*(v73 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(v48)))));
        v54 = *(v53 + 16);
        v55 = *(v51 + 2);
        v56 = v55 + v54;
        if (__OFADD__(v55, v54))
        {
          goto LABEL_53;
        }

        v57 = swift_isUniquelyReferenced_nonNull_native();
        if (!v57 || v56 > *(v51 + 3) >> 1)
        {
          if (v55 <= v56)
          {
            v58 = v55 + v54;
          }

          else
          {
            v58 = v55;
          }

          v51 = sub_10004EB94(v57, v58, 1, v51);
        }

        v48 &= v48 - 1;
        if (*(v53 + 16))
        {
          v59 = (*(v51 + 3) >> 1) - *(v51 + 2);
          v27 = type metadata accessor for SecurityIntentAccessoryAppEntity();
          if (v59 < v54)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();

          if (v54)
          {
            v60 = *(v51 + 2);
            v61 = __OFADD__(v60, v54);
            v62 = v60 + v54;
            if (v61)
            {
              goto LABEL_56;
            }

            *(v51 + 2) = v62;
          }
        }

        else
        {

          if (v54)
          {
            goto LABEL_54;
          }
        }
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v52 >= v49)
        {

          type metadata accessor for SecurityIntentAccessoryAppEntity();
          sub_100049598(&qword_100081728, type metadata accessor for SecurityIntentAccessoryAppEntity);
          sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
          sub_100066CE8();
LABEL_48:

          v63 = *(v0 + 8);

          return v63();
        }

        v48 = *(v20 + 8 * v52);
        ++v50;
        if (v48)
        {
          v50 = v52;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v21 = *(v0 + 168);
      v68 = *(v0 + 96);
      v22 = *(v0 + 80);
      v19(*(v0 + 128), 1, 1, *(v0 + 40));
      v23 = -1;
      v24 = -1 << *(v8 + 32);
      if (-v24 < 64)
      {
        v23 = ~(-1 << -v24);
      }

      v25 = v23 & *(v8 + 64);
      v26 = (63 - v24) >> 6;
      v69 = v21;
      v67 = v22;
      v65 = (v21 + 8);

      v30 = 0;
      v31 = _swiftEmptyArrayStorage;
      v70 = v20;
      for (i = v26; v25; v26 = i)
      {
        v72 = v31;
LABEL_16:
        v33 = *(v0 + 160);
        v34 = *(v0 + 104);
        v35 = *(v0 + 112);
        v71 = *(v0 + 176);
        v36 = __clz(__rbit64(v25)) | (v30 << 6);
        (*(v69 + 16))(v35, *(v73 + 48) + *(v69 + 72) * v36, v33);
        *(v35 + *(v68 + 48)) = *(*(v73 + 56) + 8 * v36);
        sub_1000095D4(v35, v34, &qword_100081888);
        (*(v69 + 32))(v71, v34, v33);

        sub_100067B68();
        v75._countAndFlagsBits = 0;
        v75._object = 0xE000000000000000;
        sub_100067B58(v75);
        v76._countAndFlagsBits = sub_100066FD8();
        sub_100067B48(v76);

        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        sub_100067B58(v77);
        sub_100066E48();
        type metadata accessor for SecurityIntentAccessoryAppEntity();
        sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
        sub_100066CD8();
        v31 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10004EEE0(0, *(v72 + 16) + 1, 1, v72);
        }

        v38 = *(v31 + 2);
        v37 = *(v31 + 3);
        v20 = v70;
        if (v38 >= v37 >> 1)
        {
          v31 = sub_10004EEE0(v37 > 1, v38 + 1, 1, v31);
        }

        v25 &= v25 - 1;
        v39 = *(v0 + 112);
        v40 = *(v0 + 88);
        v41 = *(v0 + 72);
        (*v65)(*(v0 + 176), *(v0 + 160));
        sub_1000096A0(v39, &qword_100081888);
        *(v31 + 2) = v38 + 1;
        v27 = (*(v67 + 32))(v31 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v38, v40, v41);
      }

      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v26)
        {

          type metadata accessor for SecurityIntentAccessoryAppEntity();
          sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
          sub_100066CF8();
          goto LABEL_48;
        }

        v25 = *(v20 + 8 * v32);
        ++v30;
        if (v25)
        {
          v72 = v31;
          v30 = v32;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
    v42 = *(v0 + 296) + 1;
    *(v0 + 296) = v42;
    *(v0 + 304) = v8;
    *(v0 + 288) = v9;
    (*(v0 + 280))(*(v0 + 192), *(v0 + 256) + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(v0 + 272) * v42, *(v0 + 160));
    *(v0 + 312) = sub_1000670D8();
    v43 = sub_100067CF8();
    v45 = v44;
    v27 = sub_100043594;
    v28 = v43;
    v29 = v45;
  }

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_1000441D8()
{
  v1 = sub_1000672F8();
  v2 = sub_100067DE8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "entities(matching:) Failed to get all homes", v3, 2u);
  }

  type metadata accessor for SecurityIntentAccessoryAppEntity();
  sub_100049598(&qword_100081750, type metadata accessor for SecurityIntentAccessoryAppEntity);
  sub_100066D08();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000443A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100044448;

  return sub_1000426E4(a1, 0, 0xE000000000000000);
}