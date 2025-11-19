uint64_t sub_1BAFFA90C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BAFFA924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAFFA974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1BAFFA9CC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 255;
  if ((a2 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  if (v4 == 2)
  {
    v4 = *(a1 + 1);
    if (!*(a1 + 1))
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 8)) - 255;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason(uint64_t result, int a2, int a3)
{
  v3 = a3 + 255;
  if ((a3 + 255) >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyEligibility.IneligibleReason.Location(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PolicyEligibility.IneligibleReason.Location(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAFFAE4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BAFFAE90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t DiagnosticKeysType.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t DiagnosticBag.diagnosticKeys.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1BAFFAF7C(v2, v3);
}

uint64_t sub_1BAFFAF7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1BAFFAFCC()
{
  qword_1EBC3B640 = 0xD000000000000013;
  *algn_1EBC3B648 = 0x80000001BB021540;
  qword_1EBC3B650 = 0xD00000000000001CLL;
  unk_1EBC3B658 = 0x80000001BB021560;
  qword_1EBC3B660 = 0xD000000000000013;
  unk_1EBC3B668 = 0x80000001BB021580;
}

void sub_1BAFFB020()
{
  qword_1EDD4FA98 = 0xD000000000000014;
  unk_1EDD4FAA0 = 0x80000001BB0214E0;
  qword_1EDD4FAA8 = 0xD00000000000001DLL;
  unk_1EDD4FAB0 = 0x80000001BB021500;
  qword_1EDD4FAB8 = 0xD000000000000014;
  unk_1EDD4FAC0 = 0x80000001BB021520;
}

uint64_t DiagnosticBag.__allocating_init(diagnosticKeysType:)(unsigned __int8 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = APPerfLogForCategory();
  sub_1BB0148F8();
  v8 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts;
  *(v5 + v8) = sub_1BB013EC4(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock;
  *(v5 + v9) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v10 = (v5 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  *v10 = 0x6F436E6F73616572;
  v10[1] = 0xEA00000000006564;
  v10[2] = 0xD000000000000014;
  v10[3] = 0x80000001BB021420;
  v10[4] = 0x7453646C6F437369;
  v10[5] = 0xEB00000000747261;
  v10[6] = 0x6E6F697461727564;
  v10[7] = 0xE800000000000000;
  v10[8] = 0x6164696C61766E69;
  v10[9] = 0xEB00000000646574;
  if (v6 == 2)
  {
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *(v5 + 16) = 0u;
  }

  else
  {
    if (v6)
    {
      if (qword_1EBC3AE78 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EBC3B640;
    }

    else
    {
      if (qword_1EDD4FA90 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EDD4FA98;
    }

    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    *(v5 + 16) = *v11;
    *(v5 + 24) = v12;
    *(v5 + 32) = v13;
    *(v5 + 40) = v14;
    *(v5 + 48) = v15;
    *(v5 + 56) = v16;
  }

  return v5;
}

uint64_t DiagnosticBag.init(diagnosticKeysType:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = APPerfLogForCategory();
  sub_1BB0148F8();
  v4 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts;
  *(v1 + v4) = sub_1BB013EC4(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v6 = (v1 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  *v6 = 0x6F436E6F73616572;
  v6[1] = 0xEA00000000006564;
  v6[2] = 0xD000000000000014;
  v6[3] = 0x80000001BB021420;
  v6[4] = 0x7453646C6F437369;
  v6[5] = 0xEB00000000747261;
  v6[6] = 0x6E6F697461727564;
  v6[7] = 0xE800000000000000;
  v6[8] = 0x6164696C61766E69;
  v6[9] = 0xEB00000000646574;
  if (v2 == 2)
  {
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {
    if (v2)
    {
      if (qword_1EBC3AE78 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EBC3B640;
    }

    else
    {
      if (qword_1EDD4FA90 != -1)
      {
        swift_once();
      }

      v7 = &qword_1EDD4FA98;
    }

    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[5];
    *(v1 + 16) = *v7;
    *(v1 + 24) = v8;
    *(v1 + 32) = v9;
    *(v1 + 40) = v10;
    *(v1 + 48) = v11;
    *(v1 + 56) = v12;
  }

  return v1;
}

uint64_t sub_1BAFFB458(const char *a1, uint64_t a2, char a3)
{
  v35 = sub_1BB0148E8();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v35, v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v33 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock);
  [v15 lock];
  v36 = sub_1BB014BB8();
  v17 = v16;
  v18 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts;
  swift_beginAccess();
  if (*(*(v3 + v18) + 16))
  {
    v19 = *(v3 + v18);

    sub_1BAFDCCAC(v36, v17);
    if (v20)
    {

      return [v15 unlock];
    }
  }

  v33 = v17;
  v34 = v15;
  sub_1BB0148D8();
  v21 = sub_1BB014908();
  v22 = sub_1BB014E38();
  result = sub_1BB014E58();
  if ((result & 1) == 0)
  {
LABEL_14:

    v26 = v35;
    (*(v6 + 16))(v11, v14, v35);
    v27 = sub_1BB014958();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1BB014948();
    (*(v6 + 8))(v14, v26);
    swift_beginAccess();

    v31 = *(v3 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v3 + v18);
    *(v3 + v18) = 0x8000000000000000;
    sub_1BAFDD610(v30, v36, v33, isUniquelyReferenced_nonNull_native);

    *(v3 + v18) = v38;
    swift_endAccess();

    v15 = v34;
    return [v15 unlock];
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_13:
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_1BB0148C8();
      _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v21, v22, v25, a1, "", v24, 2u);
      MEMORY[0x1BFB07C70](v24, -1, -1);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v37;
      goto LABEL_13;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1BAFFB78C(unint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1BB014928();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v56 - v15;
  v17 = sub_1BB0148E8();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = (&v56 - v24);
  v62 = *(v4 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_lock);
  [v62 lock];
  v59 = a1;
  v26 = sub_1BB014BB8();
  v28 = v27;
  swift_beginAccess();
  v29 = sub_1BAFFC870(v26, v28);
  swift_endAccess();
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = sub_1BB014908();
  if ((a4 & 1) == 0)
  {
    sub_1BB014938();
    v16 = sub_1BB014E28();
    if ((sub_1BB014E58() & 1) == 0)
    {

LABEL_34:
      v25 = v22;
      goto LABEL_35;
    }

    if ((a3 & 1) == 0)
    {

      v32 = v59;
      if (!v59)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_28;
    }

    v33 = v59;
    v34 = HIDWORD(v59);
    if (HIDWORD(v59))
    {
      goto LABEL_38;
    }

    v34 = v59 & 0xFFFFF800;
    v35 = 55296;
    if (v34 == 55296)
    {
      goto LABEL_48;
    }

    v34 = v59 >> 16;
    if (v59 >> 16 > 0x10)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v59 > 0x7F)
    {
      v51 = (v59 & 0x3F) << 8;
      if (v59 >= 0x800)
      {
        v55 = (v51 | (v59 >> 6) & 0x3F) << 8;
        if (!v34)
        {
          v40 = (v59 >> 12) + v55 + 8487393;
          goto LABEL_27;
        }

        v52 = (v59 >> 18) + ((v55 | (v59 >> 12) & 0x3F) << 8);
        v53 = -2122219023;
      }

      else
      {
        v52 = (v59 >> 6) + v51;
        v53 = 33217;
      }

      v40 = v52 + v53;
    }

    else
    {
      v40 = v59 + 1;
    }

LABEL_27:
    v63[0] = (v40 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v40) & 0x18)));

    v32 = v63;
LABEL_28:
    v42 = v57;
    v41 = v58;

    sub_1BB014968();

    if ((*(v42 + 88))(v13, v41) == *MEMORY[0x1E69E93E8])
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v42 + 8))(v13, v41);
      v43 = "";
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_1BB0148C8();
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v30, v16, v47, v32, v43, v46, 2u);
    MEMORY[0x1BFB07C70](v46, -1, -1);

    goto LABEL_34;
  }

  sub_1BB014938();
  LOBYTE(v13) = sub_1BB014E28();
  if ((sub_1BB014E58() & 1) == 0)
  {
LABEL_12:

LABEL_35:
    (*(v60 + 8))(v25, v61);
    return [v62 unlock];
  }

  if (a3)
  {
    v33 = v59;
    v34 = HIDWORD(v59);
    if (!HIDWORD(v59))
    {
      v34 = v59 & 0xFFFFF800;
      v35 = 55296;
      if (v34 != 55296)
      {
        v34 = v59 >> 16;
        if (v59 >> 16 <= 0x10)
        {
          v22 = v30;
          if (v59 <= 0x7F)
          {
            v36 = v59 + 1;
LABEL_19:
            v63[0] = (v36 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v36) & 0x18)));

            v31 = v63;
            goto LABEL_20;
          }

LABEL_41:
          v35 = (v33 & 0x3F) << 8;
          if (v33 < 0x800)
          {
            v49 = (v59 >> 6) + v35;
            v50 = 33217;
LABEL_43:
            v36 = v49 + v50;
            goto LABEL_19;
          }

LABEL_49:
          v54 = (v35 | (v59 >> 6) & 0x3F) << 8;
          if (!v34)
          {
            v36 = (v59 >> 12) + v54 + 8487393;
            goto LABEL_19;
          }

          v49 = (v59 >> 18) + ((v54 | (v59 >> 12) & 0x3F) << 8);
          v50 = -2122219023;
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = v30;

  v31 = v59;
  if (v59)
  {
LABEL_20:
    v38 = v57;
    v37 = v58;

    sub_1BB014968();

    if ((*(v38 + 88))(v16, v37) == *MEMORY[0x1E69E93E8])
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v16, v37);
      v39 = "enableTelemetry=YES";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1BB0148C8();
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v22, v13, v45, v31, v39, v44, 2u);
    MEMORY[0x1BFB07C70](v44, -1, -1);

    goto LABEL_35;
  }

  __break(1u);
LABEL_7:

  return [v62 unlock];
}

void sub_1BAFFBE00()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = objc_opt_self();
    v3 = sub_1BB014B38();
    [v2 sendEvent_];
  }
}

uint64_t sub_1BAFFBE94(uint64_t result, char a2)
{
  v3 = v2[3];
  if (v3)
  {
    v5 = result;
    v7 = v2[6];
    v6 = v2[7];
    v9 = v2[4];
    v8 = v2[5];
    v10 = v2[2];
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v3;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    *(v11 + 48) = v7;
    *(v11 + 56) = v6;
    *(v11 + 64) = v2;
    *(v11 + 72) = v5;
    *(v11 + 80) = a2 & 1;
    sub_1BAFFAF7C(v10, v3);

    sub_1BB014768();
  }

  return result;
}

void sub_1BAFFBFA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v20 = objc_opt_self();
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = sub_1BB014B38();
  sub_1BAFD86D0(&qword_1EBC3B558, &qword_1BB01A7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  v13 = (a3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  v14 = *(a3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 8);
  *(inited + 32) = *(a3 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys);
  *(inited + 40) = v14;

  *(inited + 48) = sub_1BB014D48();
  v15 = v13[3];
  *(inited + 56) = v13[2];
  *(inited + 64) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 72) = [v16 initWithBool_];
  v17 = v13[5];
  *(inited + 80) = v13[4];
  *(inited + 88) = v17;
  v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 96) = [v18 initWithBool_];
  sub_1BB013814(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&unk_1EBC3B560, &qword_1BB01A7F8);
  swift_arrayDestroy();
  sub_1BAFFCCB4();
  v19 = sub_1BB014A78();

  [v20 sendEvent:v11 customPayload:v19];
}

void sub_1BAFFC15C(void *a1, char a2)
{
  if (v2[3])
  {
    v6 = v2[6];
    v5 = v2[7];
    v7 = objc_opt_self();
    v8 = sub_1BB014B38();
    sub_1BAFD86D0(&qword_1EBC3B558, &qword_1BB01A7F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB018AE0;
    v10 = v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys;
    v11 = *(v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 48);
    v12 = *(v2 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 56);
    *(inited + 32) = v11;
    *(inited + 40) = v12;
    *(inited + 48) = a1;
    v13 = *(v10 + 9);
    *(inited + 56) = *(v10 + 8);
    *(inited + 64) = v13;
    v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v15 = a1;

    *(inited + 72) = [v14 initWithBool_];
    sub_1BB013814(inited);
    swift_setDeallocating();
    sub_1BAFD86D0(&unk_1EBC3B560, &qword_1BB01A7F8);
    swift_arrayDestroy();
    sub_1BAFFCCB4();
    v16 = sub_1BB014A78();

    [v7 sendEvent:v8 customPayload:v16];
  }
}

uint64_t *DiagnosticBag.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  sub_1BAFFCD00(v0[2], v0[3]);
  v5 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_signposter;
  v6 = sub_1BB014918();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts);

  v8 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 8);
  v9 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 24);
  v10 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 40);
  v11 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 56);
  v12 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 72);

  return v0;
}

uint64_t DiagnosticBag.__deallocating_deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  sub_1BAFFCD00(v0[2], v0[3]);
  v5 = OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_signposter;
  v6 = sub_1BB014918();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_activeSignPosts);

  v8 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 8);
  v9 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 24);
  v10 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 40);
  v11 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 56);
  v12 = *(v0 + OBJC_IVAR____TtC17AdPlatformsCommon13DiagnosticBag_analyticsEventKeys + 72);

  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1BAFFC534()
{
  if (*(*v0 + 24))
  {
    v1 = *(*v0 + 16);
    v2 = objc_opt_self();
    v3 = sub_1BB014B38();
    [v2 sendEvent_];
  }
}

uint64_t sub_1BAFFC5CC(uint64_t result, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  if (v4)
  {
    v6 = result;
    v8 = v3[6];
    v7 = v3[7];
    v10 = v3[4];
    v9 = v3[5];
    v11 = v3[2];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v4;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    *(v12 + 48) = v8;
    *(v12 + 56) = v7;
    *(v12 + 64) = v3;
    *(v12 + 72) = v6;
    *(v12 + 80) = a2 & 1;
    sub_1BAFFAF7C(v11, v4);

    sub_1BB014768();
  }

  return result;
}

uint64_t sub_1BAFFC700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BAFDCCAC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BAFDBFDC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1BB0144A8();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1BAFFC908(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1BB0144A8();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1BAFFC870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1BAFDCCAC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BAFDC3CC();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1BAFFCAF4(v7, v10);
  *v3 = v10;
  return v12;
}

unint64_t sub_1BAFFC908(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB014EF8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1BB0151B8();

      sub_1BB014BD8();
      v13 = sub_1BB0151F8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1BB0144A8() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BAFFCAF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BB014EF8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1BB0151B8();

      sub_1BB014BD8();
      v13 = sub_1BB0151F8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BAFFCCB4()
{
  result = qword_1EDD4FFC8;
  if (!qword_1EDD4FFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4FFC8);
  }

  return result;
}

uint64_t sub_1BAFFCD00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1BAFFCD54()
{
  result = qword_1EBC3B670;
  if (!qword_1EBC3B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B670);
  }

  return result;
}

__n128 sub_1BAFFCE0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BAFFCE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BAFFCE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAFFCED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BAFFCF1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DiagnosticBag()
{
  result = qword_1EDD4FA58;
  if (!qword_1EDD4FA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFFCFDC()
{
  result = sub_1BB014918();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAFFD17C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t StoredFeatureFlag.init(source:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1BAFC6D0C(a1, v2 + 16);
  sub_1BAFC6D0C(a2, v2 + 56);
  return v2;
}

uint64_t StoredFeatureFlag.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));
  return v0;
}

uint64_t StoredFeatureFlag.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t Double.milliseconds.getter(double a1)
{
  v1 = round(a1 * 1000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Double.decisecondsAsMilliseconds.getter(double a1)
{
  v1 = round(a1 * 10.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = 100 * v1;
  if ((v1 * 100) >> 64 != result >> 63)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t IdentifierType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 0x644974656B637542;
    case 1:
      return 0xD000000000000012;
    case 0:
      return 0xD000000000000012;
  }

  result = sub_1BB015138();
  __break(1u);
  return result;
}

unint64_t IdentifierType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFFD414()
{
  result = qword_1EBC3B678;
  if (!qword_1EBC3B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B678);
  }

  return result;
}

uint64_t *sub_1BAFFD468@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1BAFFD54C()
{
  result = qword_1EDD4F7F8;
  if (!qword_1EDD4F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4F7F8);
  }

  return result;
}

uint64_t EventCapsule.init(event:purpose:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for EventCapsule();
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

BOOL static EventCapsule<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB014B18() & 1) != 0 && (v4 = type metadata accessor for EventCapsule(), *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28))))
  {
    return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
  }

  else
  {
    return 0;
  }
}

BOOL sub_1BAFFD6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static EventCapsule<A>.== infix(_:_:)(a1, a2);
}

uint64_t EventCapsule.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1BB014F58();
  MEMORY[0x1BFB06D20](0x203A746E657665, 0xE700000000000000);
  (*(v5 + 16))(v8, v2, v4);
  v9 = sub_1BB014B98();
  MEMORY[0x1BFB06D20](v9);

  MEMORY[0x1BFB06D20](0x736F70727570202CLL, 0xEB00000000203A65);
  v13 = *(v2 + *(a1 + 28));
  v10 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v10);

  MEMORY[0x1BFB06D20](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v13 = *(v2 + *(a1 + 32));
  type metadata accessor for APMetricOptions(0);
  sub_1BB014FF8();
  return v14;
}

uint64_t sub_1BAFFD8CC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1BAFFD9D8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t ContentVerifierError.hashValue.getter(unsigned __int8 a1)
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](a1);
  return sub_1BB0151F8();
}

unint64_t sub_1BAFFDBE8()
{
  result = qword_1EBC3B680;
  if (!qword_1EBC3B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B680);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentVerifierError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentVerifierError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t FFIF.init(value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAFDB9B0(a1, v8);
  if (swift_dynamicCast())
  {
    result = sub_1BAFC6A68(a1);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  else
  {
    sub_1BAFDC53C(a1, v8);
    result = swift_dynamicCast();
    if (result)
    {
      *a2 = v6;
      *(a2 + 8) = 0;
      v5 = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v5 = -1;
    }

    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t _s17AdPlatformsCommon4FFIFO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v8 = *a2;
      sub_1BAFD8408(*a1, v2, 1);
      sub_1BAFD8408(v6, v5, 1);
      result = 1;
      if (*&v3 == *&v6)
      {
        return result;
      }

      return 0;
    }

LABEL_7:
    sub_1BAFFE148(v6, v5, v7);
    sub_1BAFD8408(v3, v2, v4);
    sub_1BAFD8408(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    v10 = *(a1 + 8);

    goto LABEL_7;
  }

  v11 = *a1;
  if (v3 == v6 && v2 == v5)
  {
    sub_1BAFFE148(v11, v2, 0);
    sub_1BAFFE148(v3, v2, 0);
    sub_1BAFD8408(v3, v2, 0);
    sub_1BAFD8408(v3, v2, 0);
    return 1;
  }

  else
  {
    v13 = sub_1BB015118();
    sub_1BAFFE148(v6, v5, 0);
    sub_1BAFFE148(v3, v2, 0);
    sub_1BAFD8408(v3, v2, 0);
    sub_1BAFD8408(v6, v5, 0);
    return v13 & 1;
  }
}

__n128 sub_1BAFFE08C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAFFE0A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BAFFE0E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BAFFE148(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t Storefront.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Storefront.languageIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Storefront.platform.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BAFFE238()
{
  v0 = sub_1BAFD86D0(&qword_1EBC3B6B0, &qword_1BB01BB00);
  sub_1BAFFF6EC(v0, qword_1EBC3B688);
  sub_1BAFE833C(v0, qword_1EBC3B688);
  sub_1BAFD86D0(&qword_1EBC3B6B8, &qword_1BB01BB60);
  sub_1BAFF2764(&qword_1EBC3B6C0, &qword_1EBC3B6B0, &qword_1BB01BB00);
  return sub_1BB014888();
}

uint64_t sub_1BAFFE310@<X0>(uint64_t a1@<X8>)
{
  v151 = a1;
  v150 = sub_1BAFD86D0(&qword_1EBC3B6C8, &qword_1BB01BB68);
  v152 = *(v150 - 8);
  v1 = *(v152 + 64);
  v3 = MEMORY[0x1EEE9AC00](v150, v2);
  v149 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v161 = &v136 - v6;
  v146 = sub_1BAFD86D0(&qword_1EBC3B6D0, &qword_1BB01BB70);
  v147 = *(v146 - 8);
  v7 = *(v147 + 64);
  v9 = MEMORY[0x1EEE9AC00](v146, v8);
  v144 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v145 = &v136 - v12;
  v13 = sub_1BB0147E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1BAFD86D0(&qword_1EBC3B6D8, &qword_1BB01BB78);
  v170 = *(v154 - 8);
  v19 = *(v170 + 64);
  v21 = MEMORY[0x1EEE9AC00](v154, v20);
  v155 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v153 = &v136 - v24;
  v25 = sub_1BAFD86D0(&qword_1EBC3B6E0, &qword_1BB01BB80);
  v26 = *(v25 - 8);
  v178 = v25;
  v179 = v26;
  v27 = *(v26 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v176 = &v136 - v33;
  v160 = sub_1BAFD86D0(&qword_1EBC3B6E8, &qword_1BB01BB88);
  v148 = *(v160 - 8);
  v34 = *(v148 + 64);
  v36 = MEMORY[0x1EEE9AC00](v160, v35);
  v159 = &v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v174 = &v136 - v39;
  v40 = sub_1BB014868();
  v167 = v40;
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v44 = MEMORY[0x1EEE9AC00](v40, v43);
  v46 = &v136 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v47);
  v49 = &v136 - v48;
  v180 = sub_1BAFD86D0(&qword_1EBC3B6F0, &qword_1BB01BB90);
  v177 = *(v180 - 8);
  v50 = *(v177 + 64);
  v52 = MEMORY[0x1EEE9AC00](v180, v51);
  v143 = &v136 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v171 = &v136 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v165 = &v136 - v59;
  MEMORY[0x1EEE9AC00](v58, v60);
  v173 = &v136 - v61;
  sub_1BB0147D8();
  sub_1BB014878();
  v140 = v46;
  sub_1BB0147D8();
  v157 = sub_1BAFFF750();
  v62 = MEMORY[0x1E69E67B0];
  v139 = v31;
  v136 = v18;
  v156 = v13;
  sub_1BB014858();
  v63 = *(v41 + 8);
  v63(v46, v40);
  v164 = v63;
  v163 = v41 + 8;
  v64 = *(v14 + 8);
  v141 = v14 + 8;
  v142 = v64;
  v64(v18, v13);
  v65 = v155;
  MEMORY[0x1BFB06930](v31, v62);
  v66 = sub_1BAFF2764(&qword_1EBC3B700, &qword_1EBC3B6D8, &qword_1BB01BB78);
  v67 = v153;
  v68 = v154;
  v138 = v66;
  MEMORY[0x1BFB068E0](v65, v154, v66);
  v70 = v170 + 8;
  v69 = *(v170 + 8);
  v69(v65, v68);
  v137 = v69;
  v170 = v70;
  v71 = v176;
  sub_1BB0147C8();
  v69(v67, v68);
  v72 = sub_1BAFD86D0(&qword_1EBC3B708, &qword_1BB01BB98);
  v158 = MEMORY[0x1E69E9290];
  v169 = sub_1BAFF2764(&qword_1EBC3B710, &qword_1EBC3B6E0, &qword_1BB01BB80);
  v73 = v174;
  v162 = v72;
  v74 = v178;
  sub_1BB014848();
  v75 = *(v179 + 8);
  v179 += 8;
  v168 = v75;
  v75(v71, v74);
  v63(v49, v167);
  v76 = v165;
  MEMORY[0x1BFB06940](v73, v72);
  v175 = sub_1BAFF2764(&qword_1EBC3B718, &qword_1EBC3B6F0, &qword_1BB01BB90);
  v77 = v180;
  MEMORY[0x1BFB068E0](v76, v180, v175);
  v78 = *(v177 + 8);
  v177 += 8;
  v166 = v78;
  v78(v76, v77);
  v183 = 45;
  v184 = 0xE100000000000000;
  v172 = sub_1BAFFF7A8();
  MEMORY[0x1BFB068E0](v185, &v183, MEMORY[0x1E69E6158], v172);
  sub_1BB0147D8();
  v79 = v136;
  sub_1BB014878();
  v80 = v144;
  sub_1BB0147F8();
  v81 = sub_1BAFF2764(&qword_1EBC3B728, &qword_1EBC3B6D0, &qword_1BB01BB70);
  v82 = v145;
  v83 = v146;
  MEMORY[0x1BFB068E0](v80, v146, v81);
  v84 = *(v147 + 8);
  v84(v80, v83);
  v85 = v176;
  sub_1BB0147C8();
  v84(v82, v83);
  v86 = v174;
  v87 = v162;
  v88 = v178;
  sub_1BB014848();
  v168(v85, v88);
  v89 = v167;
  v164(v49, v167);
  v90 = v171;
  MEMORY[0x1BFB06940](v86, v87);
  v91 = v180;
  MEMORY[0x1BFB068E0](v90, v180, v175);
  v166(v90, v91);
  v181 = 44;
  v182 = 0xE100000000000000;
  MEMORY[0x1BFB068E0](&v183, &v181, MEMORY[0x1E69E6158], v172);
  sub_1BB0147D8();
  v92 = v79;
  sub_1BB014878();
  v93 = v140;
  sub_1BB0147D8();
  v94 = v139;
  v95 = MEMORY[0x1E69E67B0];
  v96 = v156;
  sub_1BB014858();
  v97 = v164;
  v164(v93, v89);
  v142(v92, v96);
  v98 = v155;
  MEMORY[0x1BFB06930](v94, v95);
  v99 = v153;
  v100 = v154;
  MEMORY[0x1BFB068E0](v98, v154, v138);
  v101 = v98;
  v102 = v137;
  v137(v101, v100);
  v103 = v176;
  sub_1BB0147C8();
  v102(v99, v100);
  v104 = v174;
  v105 = v162;
  v106 = v178;
  sub_1BB014848();
  v107 = v103;
  v108 = v168;
  v168(v107, v106);
  v97(v49, v89);
  v109 = v143;
  MEMORY[0x1BFB06940](v104, v105);
  v110 = v180;
  MEMORY[0x1BFB068E0](v109, v180, v175);
  v166(v109, v110);
  sub_1BB0147C8();
  v111 = v185[0];
  v112 = v185[1];
  sub_1BB0147D8();
  v181 = v111;
  v182 = v112;
  v113 = v176;
  sub_1BB014838();

  sub_1BAFF2764(&qword_1EBC3B730, &qword_1EBC3B6E8, &qword_1BB01BB88);
  v114 = v178;
  sub_1BB014828();
  v108(v113, v114);
  v115 = v167;
  v116 = v164;
  v164(v49, v167);
  sub_1BB0147D8();
  sub_1BAFD86D0(&qword_1EBC3B738, &unk_1BB01BBA0);
  sub_1BB014828();
  v117 = v116;
  v116(v49, v115);
  v118 = v183;
  v119 = v184;
  sub_1BB0147D8();
  v181 = v118;
  v182 = v119;
  v120 = v176;
  sub_1BB014838();

  sub_1BAFF2764(&qword_1EBC3B740, &qword_1EBC3B6C8, &qword_1BB01BB68);
  v121 = v149;
  v122 = v120;
  v123 = v150;
  v124 = v178;
  sub_1BB014828();
  v168(v122, v124);
  v125 = v115;
  v117(v49, v115);
  v126 = v117;
  sub_1BB0147D8();
  sub_1BAFD86D0(&qword_1EBC3B6B8, &qword_1BB01BB60);
  v127 = v121;
  v128 = v171;
  v129 = v123;
  sub_1BB014828();
  v126(v49, v125);
  v130 = *(v152 + 8);
  v130(v127, v129);
  v130(v161, v129);
  v131 = *(v148 + 8);
  v132 = v160;
  v131(v159, v160);
  v131(v174, v132);
  v133 = v180;
  v134 = v166;
  v166(v128, v180);
  v134(v165, v133);
  return (v134)(v173, v133);
}

void __swiftcall Storefront.init(_:)(AdPlatformsCommon::Storefront_optional *__return_ptr retstr, Swift::String a2)
{
  v3 = sub_1BAFD86D0(&qword_1EBC3B6A0, &qword_1BB01BAF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v33 - v6;
  v8 = sub_1BAFD86D0(&qword_1EBC3B6A8, &qword_1BB01BAF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v33 - v12;
  if (qword_1EBC3AE88 != -1)
  {
    swift_once();
  }

  v14 = sub_1BAFD86D0(&qword_1EBC3B6B0, &qword_1BB01BB00);
  sub_1BAFE833C(v14, qword_1EBC3B688);
  sub_1BB014898();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BAFFF674(v7);
    if (qword_1EDD4E200 != -1)
    {
      swift_once();
    }

    v15 = sub_1BB0149A8();
    sub_1BAFE833C(v15, qword_1EDD51B20);
    v16 = sub_1BB014988();
    v17 = sub_1BB014DB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BAFC4000, v16, v17, "String does not match expected pattern.", v18, 2u);
      MEMORY[0x1BFB07C70](v18, -1, -1);
    }

    retstr->value.languageIdentifier = 0u;
    retstr->value.platform = 0u;
    retstr->value.identifier = 0u;
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    sub_1BB0148A8();

    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = v46;
    v35 = v48;
    v36 = v47;
    v23 = v50;
    v34 = v49;
    v24 = MEMORY[0x1BFB06CF0](v39, v40, v41, v42);
    v37 = v25;
    v38 = v24;

    v26 = MEMORY[0x1BFB06CF0](v19, v20, v21, v22);
    v28 = v27;

    v29 = MEMORY[0x1BFB06CF0](v36, v35, v34, v23);
    v31 = v30;

    (*(v9 + 8))(v13, v8);
    v32 = v37;
    retstr->value.identifier._countAndFlagsBits = v38;
    retstr->value.identifier._object = v32;
    retstr->value.languageIdentifier._countAndFlagsBits = v26;
    retstr->value.languageIdentifier._object = v28;
    retstr->value.platform._countAndFlagsBits = v29;
    retstr->value.platform._object = v31;
  }
}

uint64_t sub_1BAFFF674(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B6A0, &qword_1BB01BAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1BAFFF6EC(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1BAFFF750()
{
  result = qword_1EBC3B6F8;
  if (!qword_1EBC3B6F8)
  {
    sub_1BB0147E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B6F8);
  }

  return result;
}

unint64_t sub_1BAFFF7A8()
{
  result = qword_1EBC3B720;
  if (!qword_1EBC3B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B720);
  }

  return result;
}

uint64_t sub_1BAFFF7FC()
{
  v1 = v0;
  v2 = sub_1BB014398();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v95 = &v79 - v14;
  v15 = type metadata accessor for IdentifierData();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v94 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (&v79 - v21);
  v23 = v0[6];
  v24 = v0[7];
  sub_1BAFC6AB4(v0 + 3, v23);
  v25 = (*(v24 + 8))(v23, v24);
  if (!*(v25 + 16) || (v26 = sub_1BAFDCCAC(0x644974656B637562, 0xE900000000000073), (v27 & 1) == 0))
  {

LABEL_34:
    LOBYTE(v98[0]) = 5;
    idmanagerError(errorType:description:)(v98, 0);
    return 0;
  }

  sub_1BAFDB9B0(*(v25 + 56) + 32 * v26, v98);

  sub_1BAFD86D0(&qword_1EBC3B590, &qword_1BB01ACC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v87 = v15;
  v88 = v8;
  v83 = v12;
  v89 = v2;
  v28 = 0;
  v29 = v96;
  v30 = v96 + 64;
  v31 = 1 << *(v96 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v96 + 64);
  v34 = (v31 + 63) >> 6;
  v81 = (v3 + 8);
  v80 = (v3 + 32);
  result = MEMORY[0x1E69E7CC8];
  v85 = v96;
  v82 = v34;
  while (v33)
  {
    v36 = v87;
LABEL_14:
    v38 = __clz(__rbit64(v33)) | (v28 << 6);
    v39 = *(*(v29 + 56) + 8 * v38);
    if (!*(v39 + 16))
    {
      goto LABEL_40;
    }

    v90 = result;
    v40 = (*(v29 + 48) + 16 * v38);
    v41 = v40[1];
    v92 = *v40;
    v93 = v41;

    v42 = sub_1BAFDCCAC(0x615274656B637562, 0xEB0000000065676ELL);
    if ((v43 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_1BAFDB9B0(*(v39 + 56) + 32 * v42, v98);
    if ((swift_dynamicCast() & 1) == 0 || !*(v39 + 16) || (v44 = v97, v45 = sub_1BAFDCCAC(0x69746172656E6567, 0xEA00000000006E6FLL), (v46 & 1) == 0) || (sub_1BAFDB9B0(*(v39 + 56) + 32 * v45, v98), (swift_dynamicCast() & 1) == 0) || !*(v39 + 16) || (v91 = v97, v47 = sub_1BAFDCCAC(0x73656372756F73, 0xE700000000000000), (v48 & 1) == 0) || (sub_1BAFDB9B0(*(v39 + 56) + 32 * v47, v98), sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0), (swift_dynamicCast() & 1) == 0))
    {
LABEL_37:

      goto LABEL_39;
    }

    v86 = v97;
    if (!*(v39 + 16) || (v49 = sub_1BAFDCCAC(0x4C545478616DLL, 0xE600000000000000), (v50 & 1) == 0) || (sub_1BAFDB9B0(*(v39 + 56) + 32 * v49, v98), (swift_dynamicCast() & 1) == 0) || !*(v39 + 16))
    {

LABEL_39:

LABEL_40:

      LOBYTE(v98[0]) = 5;
      idmanagerError(errorType:description:)(v98, 0);

      return 0;
    }

    v51 = sub_1BAFDCCAC(0x776F6C6C4178616DLL, 0xEF65756C61566465);
    if ((v52 & 1) == 0)
    {

      goto LABEL_40;
    }

    sub_1BAFDB9B0(*(v39 + 56) + 32 * v51, v98);

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_40;
    }

    v53 = sub_1BB000084(v44, v92, v93, v91, v97);
    v55 = v54;
    v56 = v83;
    sub_1BB014388();
    sub_1BB014378();
    (*v81)(v56, v89);
    sub_1BB014388();
    v57 = v1[2];
    if (v57)
    {
      v58 = (v57 + OBJC_IVAR___APRotatingIdentifier_value);
      swift_beginAccess();
      v59 = *v58;
      v60 = v58[1];
      v84 = v59;
    }

    else
    {
      v60 = 0xE200000000000000;
      v84 = 12589;
    }

    v33 &= v33 - 1;
    *v22 = v53;
    v22[1] = v55;
    v61 = *v80;
    v62 = v89;
    (*v80)(v22 + v36[5], v95, v89);
    v61(v22 + v36[6], v88, v62);
    *(v22 + v36[7]) = v86;
    v63 = (v22 + v36[8]);
    v64 = v36;
    v65 = v92;
    v66 = v93;
    *v63 = v92;
    v63[1] = v66;
    v67 = v22 + v64[9];
    v68 = v84;
    *v67 = v91;
    *(v67 + 1) = v68;
    *(v67 + 2) = v60;
    *(v67 + 3) = 0;
    v67[32] = 2;
    v69 = v94;
    sub_1BAFD9E38(v22, v94);

    v70 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v70;
    sub_1BAFDD094(v69, v65, v66, isUniquelyReferenced_nonNull_native);

    sub_1BAFD9F70(v22);
    result = v98[0];
    v29 = v85;
    v34 = v82;
  }

  v36 = v87;
  while (1)
  {
    v37 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v72 = result;

      sub_1BB014DA8();
      sub_1BAFC5D64();
      v73 = sub_1BB014E68();
      sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1BB0187E0;
      v75 = MEMORY[0x1E69E6158];
      v76 = sub_1BB014A98();
      v78 = v77;
      *(v74 + 56) = v75;
      *(v74 + 64) = sub_1BAFD9D38();
      *(v74 + 32) = v76;
      *(v74 + 40) = v78;
      sub_1BB0148B8();

      return v72;
    }

    v33 = *(v30 + 8 * v37);
    ++v28;
    if (v33)
    {
      v28 = v37;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB000084(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[23] = *MEMORY[0x1E69E9840];
  v10 = sub_1BB014B78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  if (sub_1BB0003A4(a2, a3))
  {
    v13 = -1;
  }

  else
  {
    if (a1 < 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v13 = sub_1BB0009B8(a1) + 1;
  }

  if (!a5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a4 == 0x8000000000000000 && a5 == -1)
  {
LABEL_16:
    __break(1u);
  }

  v14 = a4 % a5;
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  *(inited + 32) = 0x614E74656B637562;
  v16 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEF6563617073656DLL;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = v16;
  *(inited + 80) = 0x644974656B637562;
  v17 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v13;
  *(inited + 120) = v17;
  *(inited + 128) = 0x69746172656E6567;
  *(inited + 168) = v17;
  *(inited + 136) = 0xEA00000000006E6FLL;
  *(inited + 144) = v14;

  sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  v18 = objc_opt_self();
  v19 = sub_1BB014A78();

  v32[0] = 0;
  v20 = [v18 dataWithJSONObject:v19 options:0 error:v32];

  v21 = v32[0];
  if (!v20)
  {
    v29 = v21;
    v30 = sub_1BB014288();

    swift_willThrow();
    goto LABEL_12;
  }

  v22 = sub_1BB014308();
  v24 = v23;

  sub_1BB014B68();
  v25 = sub_1BB014B58();
  v27 = v26;
  sub_1BAFE84B8(v22, v24);
  if (!v27)
  {
LABEL_12:
    LOBYTE(v32[0]) = 17;
    idmanagerError(errorType:description:)(v32, 0);
    result = 12589;
    goto LABEL_13;
  }

  result = v25;
LABEL_13:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BB0003A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BB014398();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v47 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v48 = &v47 - v14;
  v15 = sub_1BAFD86D0(&qword_1EBC3B748, &qword_1BB01BBF8);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v47 - v22;
  v24 = sub_1BAFD86D0(&qword_1EBC3B538, &unk_1BB01BC00);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v47 - v31;
  v33 = *sub_1BAFC6AB4((v2 + 64), *(v2 + 88));
  sub_1BAFF0BDC(a1, a2, 2uLL, v32);
  sub_1BB0008F8(v32, v29, &qword_1EBC3B538, &unk_1BB01BC00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v29;
    v53 = 10;
    v52 = v34;
    sub_1BAFD9FCC();
    v35 = sub_1BB015168();
    v37 = v36;
    v38.value._countAndFlagsBits = v35;
    v38.value._object = v37;
    idmanagerError(errorType:description:)(&v53, v38);

    sub_1BAFE2D64(v32, &qword_1EBC3B538, &unk_1BB01BC00);
    return 1;
  }

  sub_1BB000888(v29, v23);
  sub_1BB0008F8(v23, v20, &qword_1EBC3B748, &qword_1BB01BBF8);
  v40 = type metadata accessor for IdentifierData();
  if ((*(*(v40 - 8) + 48))(v20, 1, v40) == 1)
  {
    sub_1BAFE2D64(v23, &qword_1EBC3B748, &qword_1BB01BBF8);
    sub_1BAFE2D64(v32, &qword_1EBC3B538, &unk_1BB01BC00);
    sub_1BAFE2D64(v20, &qword_1EBC3B748, &qword_1BB01BBF8);
  }

  else
  {
    v42 = v50;
    v41 = v51;
    v43 = v47;
    (*(v50 + 16))(v47, &v20[*(v40 + 20)], v51);
    sub_1BAFD9F70(v20);
    v44 = v48;
    (*(v42 + 32))(v48, v43, v41);
    v45 = v49;
    sub_1BB014388();
    sub_1BB000960();
    LOBYTE(v43) = sub_1BB014B08();
    v46 = *(v42 + 8);
    v46(v45, v41);
    v46(v44, v41);
    sub_1BAFE2D64(v23, &qword_1EBC3B748, &qword_1BB01BBF8);
    sub_1BAFE2D64(v32, &qword_1EBC3B538, &unk_1BB01BC00);
    if ((v43 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BB0007F8()
{
  sub_1BAFC6A68((v0 + 24));
  sub_1BAFC6A68((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB000888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B748, &qword_1BB01BBF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB0008F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAFD86D0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BB000960()
{
  result = qword_1EDD4FF68;
  if (!qword_1EDD4FF68)
  {
    sub_1BB014398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FF68);
  }

  return result;
}

unint64_t sub_1BB0009B8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB07C90](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB07C90](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static PolicyRule.Audience.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t PolicyRule.Audience.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1BFB072F0](1);
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t PolicyRule.Audience.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BB0151B8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1BFB072F0](1);
    v3 = v1;
  }

  MEMORY[0x1BFB072F0](v3);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000B28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BB0151B8();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1BFB072F0](1);
    v3 = v1;
  }

  MEMORY[0x1BFB072F0](v3);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000B88()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1BFB072F0](1);
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t sub_1BB000BD0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BB0151B8();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1BFB072F0](1);
  }

  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

BOOL sub_1BB000C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL static PolicyRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    return (*(a2 + 9) & 1) != 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && *a1 == *a2;
  }
}

uint64_t PolicyRule.hash(into:)()
{
  if (*(v0 + 9))
  {
    v1 = 1;
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    MEMORY[0x1BFB072F0](0);
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v1 = v2;
    }
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t PolicyRule.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1BB0151B8();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1BFB072F0](0);
    v4 = 0;
    if ((v2 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v4 = v1;
    }
  }

  MEMORY[0x1BFB072F0](v4);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000DAC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1BB0151B8();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1BFB072F0](0);
    v4 = 0;
    if ((v2 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v4 = v1;
    }
  }

  MEMORY[0x1BFB072F0](v4);
  return sub_1BB0151F8();
}

uint64_t sub_1BB000E30()
{
  if (*(v0 + 9))
  {
    v1 = 1;
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    MEMORY[0x1BFB072F0](0);
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v1 = v2;
    }
  }

  return MEMORY[0x1BFB072F0](v1);
}

uint64_t sub_1BB000E94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1BB0151B8();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    MEMORY[0x1BFB072F0](0);
    v4 = 0;
    if ((v2 & 1) == 0)
    {
      MEMORY[0x1BFB072F0](1);
      v4 = v1;
    }
  }

  MEMORY[0x1BFB072F0](v4);
  return sub_1BB0151F8();
}

unint64_t sub_1BB000F18()
{
  result = qword_1EBC3B750;
  if (!qword_1EBC3B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B750);
  }

  return result;
}

unint64_t sub_1BB000F70()
{
  result = qword_1EBC3B758;
  if (!qword_1EBC3B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B758);
  }

  return result;
}

uint64_t sub_1BB000FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a2 + 9);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if ((*(a2 + 8) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyRule(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PolicyRule(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1BB001064(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PolicyRule.Audience(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PolicyRule.Audience(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PolicyRule.Audience(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BB0010E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB001110(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BAFC6AB4(v2 + 2, v2[5]);
  v6 = v2[7];
  v7 = *v5;
  v8 = sub_1BAFF16B4(a1, a2, v6);
  if (v8 == 10)
  {
    sub_1BB014DA8();
    sub_1BAFC5D64();
    v9 = sub_1BB014E68();
    sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BB0187E0;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1BAFD9D38();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    sub_1BB0148B8();
  }

  else
  {
    v11 = v8;
    sub_1BB014DB8();
    sub_1BAFC5D64();
    v12 = sub_1BB014E68();
    sub_1BAFD86D0(&qword_1EBC3B098, &qword_1BB018850);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BB0187E0;
    v14 = sub_1BAFE5B44(v11);
    v16 = v15;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1BAFD9D38();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_1BB0148B8();

    v22 = 6;
    v17 = sub_1BAFE5B44(v11);
    v19 = v18;
    v20.value._countAndFlagsBits = v17;
    v20.value._object = v19;
    idmanagerError(errorType:description:)(&v22, v20);
  }
}

uint64_t sub_1BB001350()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB0013AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *sub_1BAFC6AB4(a3, a3[3]);

  return sub_1BB001408(a1, a2, v7);
}

uint64_t sub_1BB001408(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BB014398();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v38[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v40 = &off_1F390D430;
  v38[0] = a3;
  v12 = type metadata accessor for IdentifierData();
  v13 = *(v12 + 36);
  v14 = (a1 + v13);
  if (*(a1 + v13 + 32) == 2 && (v15 = (a2 + v13), *(a2 + v13 + 32) == 2))
  {
    v16 = v15[1];
    v17 = v15[2];
    if (v14[1] != v16 || v14[2] != v17)
    {
      v19 = *v14;
      v20 = *v15;
      v37 = v12;
      if ((sub_1BB015118() & 1) == 0)
      {
        if (v19 == v20)
        {
          v26 = *(v37 + 20);
          v27 = a3;
          sub_1BB014388();
          v28 = sub_1BB014348();
          (*(v7 + 8))(v11, v6);
          if (v28)
          {
            sub_1BB001110(v16, v17);
            goto LABEL_10;
          }

          v36 = *sub_1BAFC6AB4(v38, v39);
          v34 = a1 + *(v37 + 24);
          v35 = 0;
        }

        else
        {
          v29 = v37;
          v30 = sub_1BAFC6AB4(v38, &type metadata for RotatingIdentifierTelemetryDelivery);
          v31 = *(v29 + 24);
          v32 = *v30;
          v33 = a3;
          v34 = a1 + v31;
          v35 = 4;
          v36 = v32;
        }

        sub_1BAFF3160(2, v35, v34, v36);
        v24 = 1;
        goto LABEL_11;
      }
    }

    v21 = a3;
  }

  else
  {
    v22 = a3;
    v23 = sub_1BB014B38();
    APSimulateCrash();
  }

LABEL_10:
  v24 = 0;
LABEL_11:
  sub_1BAFC6A68(v38);
  return v24;
}

uint64_t PolicyRuleEligibility.IneligibleReason.FailCloseReason.MissingData.hashValue.getter()
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

uint64_t PolicyRuleEligibility.IneligibleReason.Audience.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

BOOL static PolicyRuleEligibility.IneligibleReason.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return (v2 & 0x80) == 0;
  }

  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

BOOL sub_1BB0017E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return (v2 & 0x80) == 0;
  }

  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

BOOL static PolicyRuleEligibility.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >= 0xFE)
  {
    return v3 > 0xFD;
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && ((v3 ^ v2) & 1) == 0;
  }

  else
  {
    return (v3 & 0x80) == 0;
  }
}

unint64_t sub_1BB001878()
{
  result = qword_1EBC3B760;
  if (!qword_1EBC3B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B760);
  }

  return result;
}

unint64_t sub_1BB0018D0()
{
  result = qword_1EBC3B768;
  if (!qword_1EBC3B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B768);
  }

  return result;
}

BOOL sub_1BB001924(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >= 0xFE)
  {
    return v3 > 0xFD;
  }

  if (v3 > 0xFD)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    return (v3 & 0x80) != 0 && ((v3 ^ v2) & 1) == 0;
  }

  return (v3 & 0x80) == 0;
}

uint64_t getEnumTagSinglePayload for PolicyRuleEligibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_20;
  }

  v2 = a2 + 130;
  if (a2 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 130;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 130;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 130;
    }
  }

LABEL_20:
  v7 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v7 >= 0x7E)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PolicyRuleEligibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 130;
  if (a3 + 130 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x7E)
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BB001AD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BB001AF8(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x7E)
  {
    LOBYTE(v2) = a2 - 127;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PolicyRuleEligibility.IneligibleReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PolicyRuleEligibility.IneligibleReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BB001CE8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB001D44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
    swift_beginAccess();
    v5 = sub_1BB014398();
    return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  }

  else
  {
    v7 = 4;
    idmanagerError(errorType:description:)(&v7, 0);

    return sub_1BB014388();
  }
}

unint64_t sub_1BB001E3C()
{
  v1 = *v0;
  v2 = 0x30506163646FLL;
  v3 = 0x3356706C73;
  if (v1 != 5)
  {
    v3 = 0x4B41417377656ELL;
  }

  v4 = 0x317530506163646FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x31506163646FLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BB001F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB003F50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB001F4C(uint64_t a1)
{
  v2 = sub_1BB002A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB001F88(uint64_t a1)
{
  v2 = sub_1BB002A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB001FD0(uint64_t a1)
{
  v2 = sub_1BB002A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB00200C(uint64_t a1)
{
  v2 = sub_1BB002A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB002048(uint64_t a1)
{
  v2 = sub_1BB002C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB002084(uint64_t a1)
{
  v2 = sub_1BB002C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB0020C0(uint64_t a1)
{
  v2 = sub_1BB002B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB0020FC(uint64_t a1)
{
  v2 = sub_1BB002B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB002138(uint64_t a1)
{
  v2 = sub_1BB002BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB002174(uint64_t a1)
{
  v2 = sub_1BB002BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB0021B0(uint64_t a1)
{
  v2 = sub_1BB002C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB0021EC(uint64_t a1)
{
  v2 = sub_1BB002C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB002228(uint64_t a1)
{
  v2 = sub_1BB002ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB002264(uint64_t a1)
{
  v2 = sub_1BB002ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB0022A0(uint64_t a1)
{
  v2 = sub_1BB002B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB0022DC(uint64_t a1)
{
  v2 = sub_1BB002B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AdFeature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BAFD86D0(&qword_1EBC3B770, &qword_1BB01BF90);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v66 = &v55 - v7;
  v8 = sub_1BAFD86D0(&qword_1EBC3B778, &qword_1BB01BF98);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v63 = &v55 - v11;
  v12 = sub_1BAFD86D0(&qword_1EBC3B780, &qword_1BB01BFA0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v60 = &v55 - v15;
  v16 = sub_1BAFD86D0(&qword_1EBC3B788, &qword_1BB01BFA8);
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v57 = &v55 - v19;
  v56 = sub_1BAFD86D0(&qword_1EBC3B790, &qword_1BB01BFB0);
  v72 = *(v56 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v56, v21);
  v71 = &v55 - v22;
  v55 = sub_1BAFD86D0(&qword_1EBC3B798, &qword_1BB01BFB8);
  v70 = *(v55 - 8);
  v23 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v55, v24);
  v26 = &v55 - v25;
  v27 = sub_1BAFD86D0(&qword_1EBC3B7A0, &qword_1BB01BFC0);
  v69 = *(v27 - 8);
  v28 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v55 - v30;
  v74 = sub_1BAFD86D0(&qword_1EBC3B7A8, &qword_1BB01BFC8);
  v32 = *(v74 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v74, v34);
  v36 = &v55 - v35;
  v37 = *v2;
  v38 = a1[4];
  sub_1BAFC6AB4(a1, a1[3]);
  sub_1BB002A14();
  v73 = v36;
  sub_1BB015228();
  v39 = (v32 + 8);
  if (v37 <= 2)
  {
    v45 = v69;
    v46 = v70;
    v47 = v71;
    v48 = v72;
    if (v37)
    {
      if (v37 == 1)
      {
        v76 = 1;
        sub_1BB002C0C();
        v50 = v73;
        v49 = v74;
        sub_1BB0150A8();
        (*(v46 + 8))(v26, v55);
      }

      else
      {
        v77 = 2;
        sub_1BB002BB8();
        v54 = v47;
        v50 = v73;
        v49 = v74;
        sub_1BB0150A8();
        (*(v48 + 8))(v54, v56);
      }

      return (*v39)(v50, v49);
    }

    else
    {
      v75 = 0;
      sub_1BB002C60();
      v51 = v73;
      v52 = v74;
      sub_1BB0150A8();
      (*(v45 + 8))(v31, v27);
      return (*v39)(v51, v52);
    }
  }

  else
  {
    if (v37 > 4)
    {
      if (v37 == 5)
      {
        v80 = 5;
        sub_1BB002ABC();
        v40 = v63;
        v41 = v73;
        v42 = v74;
        sub_1BB0150A8();
        v44 = v64;
        v43 = v65;
      }

      else
      {
        v81 = 6;
        sub_1BB002A68();
        v40 = v66;
        v41 = v73;
        v42 = v74;
        sub_1BB0150A8();
        v44 = v67;
        v43 = v68;
      }
    }

    else if (v37 == 3)
    {
      v78 = 3;
      sub_1BB002B64();
      v40 = v57;
      v41 = v73;
      v42 = v74;
      sub_1BB0150A8();
      v44 = v58;
      v43 = v59;
    }

    else
    {
      v79 = 4;
      sub_1BB002B10();
      v40 = v60;
      v41 = v73;
      v42 = v74;
      sub_1BB0150A8();
      v44 = v61;
      v43 = v62;
    }

    (*(v44 + 8))(v40, v43);
    return (*v39)(v41, v42);
  }
}

unint64_t sub_1BB002A14()
{
  result = qword_1EBC3B7B0;
  if (!qword_1EBC3B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7B0);
  }

  return result;
}

unint64_t sub_1BB002A68()
{
  result = qword_1EBC3B7B8;
  if (!qword_1EBC3B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7B8);
  }

  return result;
}

unint64_t sub_1BB002ABC()
{
  result = qword_1EBC3B7C0;
  if (!qword_1EBC3B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7C0);
  }

  return result;
}

unint64_t sub_1BB002B10()
{
  result = qword_1EBC3B7C8;
  if (!qword_1EBC3B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7C8);
  }

  return result;
}

unint64_t sub_1BB002B64()
{
  result = qword_1EBC3B7D0;
  if (!qword_1EBC3B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7D0);
  }

  return result;
}

unint64_t sub_1BB002BB8()
{
  result = qword_1EBC3B7D8;
  if (!qword_1EBC3B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7D8);
  }

  return result;
}

unint64_t sub_1BB002C0C()
{
  result = qword_1EBC3B7E0;
  if (!qword_1EBC3B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7E0);
  }

  return result;
}

unint64_t sub_1BB002C60()
{
  result = qword_1EBC3B7E8;
  if (!qword_1EBC3B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B7E8);
  }

  return result;
}

uint64_t AdFeature.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t AdFeature.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v87 = a2;
  v3 = sub_1BAFD86D0(&qword_1EBC3B7F0, &qword_1BB01BFD0);
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v86 = &v67[-v6];
  v7 = sub_1BAFD86D0(&qword_1EBC3B7F8, &qword_1BB01BFD8);
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v89 = &v67[-v10];
  v11 = sub_1BAFD86D0(&qword_1EBC3B800, &qword_1BB01BFE0);
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v85 = &v67[-v15];
  v16 = sub_1BAFD86D0(&qword_1EBC3B808, &qword_1BB01BFE8);
  v17 = *(v16 - 8);
  v76 = v16;
  v77 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v84 = &v67[-v20];
  v21 = sub_1BAFD86D0(&qword_1EBC3B810, &qword_1BB01BFF0);
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v88 = &v67[-v24];
  v25 = sub_1BAFD86D0(&qword_1EBC3B818, &qword_1BB01BFF8);
  v72 = *(v25 - 8);
  v73 = v25;
  v26 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v67[-v28];
  v30 = sub_1BAFD86D0(&qword_1EBC3B820, &qword_1BB01C000);
  v71 = *(v30 - 8);
  v31 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v67[-v33];
  v35 = sub_1BAFD86D0(&qword_1EBC3B828, &qword_1BB01C008);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v67[-v39];
  v41 = a1[3];
  v42 = a1[4];
  v90 = a1;
  sub_1BAFC6AB4(a1, v41);
  sub_1BB002A14();
  v43 = v91;
  sub_1BB015218();
  if (!v43)
  {
    v69 = v30;
    v44 = v88;
    v45 = v89;
    v70 = v36;
    v91 = v35;
    v46 = sub_1BB015098();
    if (*(v46 + 16) == 1)
    {
      v47 = *(v46 + 32);
      if (v47 != 7)
      {
        v68 = *(v46 + 32);
        if (v47 > 2)
        {
          if (v47 > 4)
          {
            v48 = v47 == 5;
            v49 = v87;
            v59 = v91;
            if (v48)
            {
              v97 = 5;
              sub_1BB002ABC();
              sub_1BB015048();
              v64 = v70;
              (*(v80 + 8))(v45, v81);
            }

            else
            {
              v98 = 6;
              sub_1BB002A68();
              v63 = v86;
              sub_1BB015048();
              v64 = v70;
              (*(v82 + 8))(v63, v83);
            }

            (*(v64 + 8))(v40, v59);
          }

          else
          {
            v48 = v47 == 3;
            v49 = v87;
            v50 = v91;
            if (v48)
            {
              v95 = 3;
              sub_1BB002B64();
              v51 = v84;
              sub_1BB015048();
              v62 = v70;
              (*(v77 + 8))(v51, v76);
            }

            else
            {
              v96 = 4;
              sub_1BB002B10();
              v61 = v85;
              sub_1BB015048();
              v62 = v70;
              (*(v79 + 8))(v61, v78);
            }

            (*(v62 + 8))(v40, v50);
          }

          swift_unknownObjectRelease();
          v65 = v90;
          goto LABEL_25;
        }

        if (v47)
        {
          if (v47 == 1)
          {
            v93 = 1;
            sub_1BB002C0C();
            v57 = v40;
            v58 = v91;
            sub_1BB015048();
            (*(v72 + 8))(v29, v73);
            (*(v70 + 8))(v57, v58);
LABEL_21:
            swift_unknownObjectRelease();
            v65 = v90;
            v49 = v87;
LABEL_25:
            *v49 = v68;
            return sub_1BAFC6A68(v65);
          }

          v94 = 2;
          sub_1BB002BB8();
          v60 = v91;
          sub_1BB015048();
          (*(v74 + 8))(v44, v75);
        }

        else
        {
          v92 = 0;
          sub_1BB002C60();
          v60 = v91;
          sub_1BB015048();
          (*(v71 + 8))(v34, v69);
        }

        (*(v70 + 8))(v40, v60);
        goto LABEL_21;
      }
    }

    v52 = sub_1BB014F98();
    swift_allocError();
    v54 = v53;
    v55 = *(sub_1BAFD86D0(&qword_1EBC3B830, &qword_1BB01C010) + 48);
    *v54 = &type metadata for AdFeature;
    v56 = v91;
    sub_1BB015058();
    sub_1BB014F88();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    (*(v70 + 8))(v40, v56);
    swift_unknownObjectRelease();
  }

  v65 = v90;
  return sub_1BAFC6A68(v65);
}

unint64_t sub_1BB0036BC()
{
  result = qword_1EBC3B838;
  if (!qword_1EBC3B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B838);
  }

  return result;
}

unint64_t sub_1BB003744()
{
  result = qword_1EBC3B840;
  if (!qword_1EBC3B840)
  {
    sub_1BAFD9DF0(&qword_1EBC3B848, &qword_1BB01C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B840);
  }

  return result;
}

uint64_t sub_1BB0037B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BB003848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BB00397C()
{
  result = qword_1EBC3B850;
  if (!qword_1EBC3B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B850);
  }

  return result;
}

unint64_t sub_1BB0039D4()
{
  result = qword_1EBC3B858;
  if (!qword_1EBC3B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B858);
  }

  return result;
}

unint64_t sub_1BB003A2C()
{
  result = qword_1EBC3B860;
  if (!qword_1EBC3B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B860);
  }

  return result;
}

unint64_t sub_1BB003A84()
{
  result = qword_1EBC3B868;
  if (!qword_1EBC3B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B868);
  }

  return result;
}

unint64_t sub_1BB003ADC()
{
  result = qword_1EBC3B870;
  if (!qword_1EBC3B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B870);
  }

  return result;
}

unint64_t sub_1BB003B34()
{
  result = qword_1EBC3B878;
  if (!qword_1EBC3B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B878);
  }

  return result;
}

unint64_t sub_1BB003B8C()
{
  result = qword_1EBC3B880;
  if (!qword_1EBC3B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B880);
  }

  return result;
}

unint64_t sub_1BB003BE4()
{
  result = qword_1EBC3B888;
  if (!qword_1EBC3B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B888);
  }

  return result;
}

unint64_t sub_1BB003C3C()
{
  result = qword_1EBC3B890;
  if (!qword_1EBC3B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B890);
  }

  return result;
}

unint64_t sub_1BB003C94()
{
  result = qword_1EBC3B898;
  if (!qword_1EBC3B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B898);
  }

  return result;
}

unint64_t sub_1BB003CEC()
{
  result = qword_1EBC3B8A0;
  if (!qword_1EBC3B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8A0);
  }

  return result;
}

unint64_t sub_1BB003D44()
{
  result = qword_1EBC3B8A8;
  if (!qword_1EBC3B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8A8);
  }

  return result;
}

unint64_t sub_1BB003D9C()
{
  result = qword_1EBC3B8B0;
  if (!qword_1EBC3B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8B0);
  }

  return result;
}

unint64_t sub_1BB003DF4()
{
  result = qword_1EBC3B8B8;
  if (!qword_1EBC3B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8B8);
  }

  return result;
}

unint64_t sub_1BB003E4C()
{
  result = qword_1EBC3B8C0;
  if (!qword_1EBC3B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8C0);
  }

  return result;
}

unint64_t sub_1BB003EA4()
{
  result = qword_1EBC3B8C8;
  if (!qword_1EBC3B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8C8);
  }

  return result;
}

unint64_t sub_1BB003EFC()
{
  result = qword_1EBC3B8D0;
  if (!qword_1EBC3B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8D0);
  }

  return result;
}

uint64_t sub_1BB003F50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001BB0217D0 == a2 || (sub_1BB015118() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x30506163646FLL && a2 == 0xE600000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x31506163646FLL && a2 == 0xE600000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x317530506163646FLL && a2 == 0xE800000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BB0204F0 == a2 || (sub_1BB015118() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3356706C73 && a2 == 0xE500000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4B41417377656ELL && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1BB015118();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

AdPlatformsCommon::StorefrontID_optional __swiftcall StorefrontID.init(value:)(Swift::String value)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BB014248();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BB014BE8() == 6 && (sub_1BB0144C8(), v11 = sub_1BB014BA8(), (*(v6 + 8))(v10, v5), (v11 & 1) != 0) && (v12 = sub_1BB014C18(), (v12 & 1) != 0))
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {

    *v4 = 0;
    v4[1] = 0;
  }

  result.value.value._object = v13;
  result.value.value._countAndFlagsBits = v12;
  result.is_nil = v14;
  return result;
}

uint64_t StorefrontID.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static StorefrontID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BB015118();
  }
}

uint64_t StorefrontID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BB014BD8();
}

uint64_t StorefrontID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB0151B8();
  sub_1BB014BD8();
  return sub_1BB0151F8();
}

uint64_t sub_1BB0043A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB0151B8();
  sub_1BB014BD8();
  return sub_1BB0151F8();
}

uint64_t sub_1BB0043F0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BB014BD8();
}

uint64_t sub_1BB0043F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB0151B8();
  sub_1BB014BD8();
  return sub_1BB0151F8();
}

unint64_t sub_1BB004444()
{
  result = qword_1EBC3B8D8;
  if (!qword_1EBC3B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8D8);
  }

  return result;
}

uint64_t sub_1BB004498(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BB015118();
  }
}

uint64_t sub_1BB004514()
{
  v0 = sub_1BB0149A8();
  sub_1BAFFF6EC(v0, qword_1EDD51B20);
  sub_1BAFE833C(v0, qword_1EDD51B20);
  return sub_1BB014998();
}

uint64_t StorefrontTerritorySource.__allocating_init(storefrontIDSource:converter:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BAFC6D0C(a1, v4 + 16);
  sub_1BAFC6D0C(a2, v4 + 56);
  return v4;
}

uint64_t StorefrontTerritorySource.init(storefrontIDSource:converter:)(__int128 *a1, __int128 *a2)
{
  sub_1BAFC6D0C(a1, v2 + 16);
  sub_1BAFC6D0C(a2, v2 + 56);
  return v2;
}

uint64_t StorefrontTerritorySource.territory()@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v37 = &v36 - v5;
  v6 = sub_1BB0144A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v36 - v13;
  v15 = sub_1BAFD86D0(&qword_1EBC3B420, &qword_1BB019E00);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v36 - v22;
  v25 = v1[5];
  v24 = v1[6];
  sub_1BAFC6AB4(v1 + 2, v25);
  (*(v24 + 8))(v43, v25, v24);
  v26 = v43[0];
  v27 = v43[1];
  sub_1BAFC6DB4((v1 + 7), v40);
  if (v27)
  {
    v28 = v41;
    v29 = v42;
    sub_1BAFC6AB4(v40, v41);
    v39[0] = v26;
    v39[1] = v27;
    (*(v29 + 8))(v39, v28, v29);
  }

  else
  {
    (*(v7 + 56))(v23, 1, 1, v6);
  }

  sub_1BAFC6A68(v40);
  sub_1BAFE9540(v23, v20);
  v30 = 1;
  v31 = (*(v7 + 48))(v20, 1, v6);
  v32 = v38;
  if (v31 != 1)
  {
    (*(v7 + 32))(v14, v20, v6);
    (*(v7 + 16))(v36, v14, v6);
    v33 = sub_1BB014648();
    (*(*(v33 - 8) + 56))(v37, 1, 1, v33);
    sub_1BB014788();
    (*(v7 + 8))(v14, v6);
    v30 = 0;
  }

  sub_1BAFE95B0(v23);
  v34 = sub_1BB0147A8();
  return (*(*(v34 - 8) + 56))(v32, v30, 1, v34);
}

uint64_t StorefrontTerritorySource.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));
  return v0;
}

uint64_t StorefrontTerritorySource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t *OverrideFeatureAbilitySource.__allocating_init(wrapping:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1BAFD7BD4(a1, v3);
  v6 = sub_1BB004DA4(v5, v1, v3, v4);
  sub_1BAFC6A68(a1);
  return v6;
}

uint64_t *OverrideFeatureAbilitySource.init(wrapping:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1BAFD7BD4(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_1BB004D34(v8, v1, v3, v4);
  sub_1BAFC6A68(a1);
  return v10;
}

uint64_t OverrideFeatureAbilitySource.abilityFor(name:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  sub_1BAFC6AB4(v2 + 2, v5);
  MEMORY[0x1BFB06D20](a1, a2);
  v7 = (*(v6 + 8))(0x656469727265766FLL, 0xE90000000000005FLL, v5, v6);

  return v7;
}

uint64_t OverrideFeatureAbilitySource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t *sub_1BB004D34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_1BAFD87F0(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

uint64_t *sub_1BB004DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v11[5] = a3;
  v11[6] = a4;
  v12 = sub_1BAFD87F0(v11 + 2);
  (*(v7 + 32))(v12, v10, a3);
  return v11;
}

uint64_t EventCollectionFeatureFlags.hashValue.getter()
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

unint64_t sub_1BB004F88()
{
  result = qword_1EBC3B8E0;
  if (!qword_1EBC3B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B8E0);
  }

  return result;
}

uint64_t PCDBackingStore.__allocating_init(database:accountProvider:featureFlags:)(void *a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1BB006B24(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t PCDBackingStore.init(database:accountProvider:featureFlags:)(void *a1, uint64_t a2, void *a3)
{
  v4 = sub_1BB006B24(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t PCDBackingStore.getIdentifiers(type:source:processId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BB014398();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v33[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 72) != 1)
  {
    sub_1BAFD86D0(&qword_1EBC3B8E8, &qword_1BB01CA80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BB01CA60;
    sub_1BB014388();
    v20 = type metadata accessor for RotatingIdentifier();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR___APRotatingIdentifier_value];
    *v22 = 12845;
    *(v22 + 1) = 0xE200000000000000;
    *&v21[OBJC_IVAR___APRotatingIdentifier_type] = a1;
    *&v21[OBJC_IVAR___APRotatingIdentifier_source] = a2;
    (*(v10 + 16))(&v21[OBJC_IVAR___APRotatingIdentifier_expirationDate], v14, v9);
    v23 = &v21[OBJC_IVAR___APRotatingIdentifier_processId];
    *v23 = a3;
    v23[1] = a4;
    v34.receiver = v21;
    v34.super_class = v20;

    v24 = objc_msgSendSuper2(&v34, sel_init);
    (*(v10 + 8))(v14, v9);
    result = v19;
    *(v19 + 32) = v24;
    return result;
  }

  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  v33[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v33[4] = &off_1F390D430;
  v33[0] = v16;
  if (a1 == 2)
  {
    v26 = *sub_1BAFC6AB4(v33, &type metadata for RotatingIdentifierTelemetryDelivery);
    v27 = v16;
    sub_1BB006438(a2, a3, a4, v15, v4 + 32, v26);
  }

  else if (a1 == 1)
  {
    v17 = *sub_1BAFC6AB4(v33, &type metadata for RotatingIdentifierTelemetryDelivery);
    v18 = v16;
    sub_1BB005E24(a2, a3, a4, v15, v4 + 32, v17);
  }

  else
  {
    if (a1)
    {
      v32 = a1;
      v31 = v16;
      result = sub_1BB015138();
      __break(1u);
      return result;
    }

    v28 = *sub_1BAFC6AB4(v33, &type metadata for RotatingIdentifierTelemetryDelivery);
    v29 = v16;
    sub_1BB005928(a2, a3, a4, v15, v4 + 32, v28);
  }

  sub_1BAFC6A68(v33);
  v30 = sub_1BAFD8A44();

  return v30;
}

uint64_t PCDBackingStore.deinit()
{
  v1 = *(v0 + 24);

  sub_1BAFC6A68((v0 + 32));
  return v0;
}

uint64_t PCDBackingStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_1BAFC6A68((v0 + 32));

  return swift_deallocClassInstance();
}

void *sub_1BB005438(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IdentifierNodeFetcher();
  v21[3] = v8;
  v21[4] = &off_1F390C278;
  v21[0] = a1;
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187D0;
  *(inited + 32) = 5002324;
  v10 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = a3;
  *(inited + 72) = v10;
  *(inited + 80) = 0x73656372756F73;
  *(inited + 88) = 0xE700000000000000;
  v11 = sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
  *(inited + 96) = a4;
  *(inited + 120) = v11;
  *(inited + 128) = 0x63617073656D616ELL;
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 0x45524F5453505041;
  *(inited + 152) = 0xE800000000000000;
  v12 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  a2[7] = v12;
  v13 = sub_1BAFD7BD4(v21, v8);
  v14 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 168);
  (*(v17 + 16))(v16);
  v18 = *v16;
  a2[5] = v8;
  a2[6] = &off_1F390C278;
  a2[2] = v18;
  sub_1BAFC6A68(v21);
  return a2;
}

void *sub_1BB00564C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IdentifierNodeFetcher();
  v19[3] = v4;
  v19[4] = &off_1F390C278;
  v19[0] = a1;
  a2[7] = &unk_1F390BB70;
  sub_1BAFD86D0(&qword_1EBC3B8F0, &qword_1BB01CAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187E0;
  *(inited + 32) = 0x45524F5453505041;
  *(inited + 40) = 0xE800000000000000;
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1BB01CA70;
  *(v6 + 32) = 0x69746172656E6567;
  v7 = MEMORY[0x1E69E6530];
  *(v6 + 40) = 0xEA00000000006E6FLL;
  *(v6 + 48) = 1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x615274656B637562;
  *(v6 + 88) = 0xEB0000000065676ELL;
  *(v6 + 96) = 25600;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0x73656372756F73;
  *(v6 + 136) = 0xE700000000000000;
  v8 = sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
  *(v6 + 144) = &unk_1F390BBA8;
  *(v6 + 168) = v8;
  *(v6 + 176) = 0x4C545478616DLL;
  *(v6 + 184) = 0xE600000000000000;
  *(v6 + 192) = 31536000;
  *(v6 + 216) = v7;
  *(v6 + 224) = 0x776F6C6C4178616DLL;
  *(v6 + 264) = v7;
  *(v6 + 232) = 0xEF65756C61566465;
  *(v6 + 240) = 20;
  v9 = sub_1BB0136E4(v6);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  *(inited + 48) = v9;
  v10 = sub_1BB013DC0(inited);
  swift_setDeallocating();
  sub_1BB006E78(inited + 32);
  a2[8] = v10;
  v11 = sub_1BAFD7BD4(v19, v4);
  v12 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 312);
  (*(v15 + 16))(v14);
  v16 = *v14;
  a2[5] = v4;
  a2[6] = &off_1F390C278;
  a2[2] = v16;
  sub_1BAFC6A68(v19);
  return a2;
}

void *sub_1BB005928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = a4;
  v53 = a1;
  v48 = a2;
  v72[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v72[4] = &off_1F390D430;
  v72[0] = a6;
  v51 = type metadata accessor for AnonymousSessionIdRotation();
  v50 = swift_allocObject();
  v10 = type metadata accessor for AnonymousSessionIdCacheTTL();
  v49 = swift_allocObject();
  v11 = type metadata accessor for IdentifierNodeFetcher();
  v70 = v11;
  v71 = &off_1F390C278;
  *&v69 = swift_allocObject();
  v12 = type metadata accessor for AnonymousSessionIdDatasource();
  v13 = swift_allocObject();
  v14 = sub_1BAFD7BD4(&v69, v11);
  v15 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v14);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = a6;
  v21 = sub_1BB005438(v19, v13, 900, &unk_1F390BB10);
  sub_1BAFC6A68(&v69);
  v70 = v12;
  v71 = &off_1F390D5E8;
  *&v69 = v21;
  sub_1BAFC6DB4(a5, &v66);
  v22 = type metadata accessor for AnonymousSessionIdDataBuilder();
  v23 = swift_allocObject();
  sub_1BAFC6D0C(&v69, v23 + 16);
  *(v23 + 56) = a2;
  *(v23 + 64) = a3;
  sub_1BAFC6D0C(&v66, v23 + 72);
  sub_1BAFC6DB4(v72, &v69);
  v24 = v70;
  v25 = sub_1BAFD7BD4(&v69, v70);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v25);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v31 = type metadata accessor for IdentifierDataStore();
  v67 = v31;
  v68 = &off_1F390D328;
  *&v66 = v52;
  v65 = &off_1F390D5F8;
  v64 = v51;
  v62 = &off_1F390D608;
  *&v63 = v50;
  v61 = v10;
  *&v60 = v49;
  v58 = v22;
  v59 = &off_1F390D618;
  *&v57 = v23;
  v56 = &off_1F390D430;
  v55 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v54[0] = v30;
  type metadata accessor for IdentifierBuilder();
  v32 = swift_allocObject();
  v33 = sub_1BAFD7BD4(&v66, v31);
  v34 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33, v33);
  v36 = (&v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = v55;
  v39 = sub_1BAFD7BD4(v54, v55);
  v40 = *(v38[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v39, v39);
  v42 = (&v48 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v36;
  v45 = *v42;
  v32[9] = v31;
  v32[10] = &off_1F390D328;
  v32[5] = a3;
  v32[6] = v44;
  v32[29] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v32[30] = &off_1F390D430;
  v32[26] = v45;
  v46 = v53;
  v32[2] = 0;
  v32[3] = v46;
  v32[4] = v48;
  sub_1BAFC6D0C(&v63, (v32 + 11));
  sub_1BAFC6D0C(&v60, (v32 + 16));
  sub_1BAFC6D0C(&v57, (v32 + 21));
  swift_bridgeObjectRetain_n();

  sub_1BAFC6A68(v54);
  sub_1BAFC6A68(&v66);
  sub_1BAFC6A68(&v69);
  sub_1BAFC6A68(v72);
  return v32;
}

void *sub_1BB005E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v81[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v81[4] = &off_1F390D430;
  v81[0] = a6;
  v8 = type metadata accessor for RotatedAnonymousIdRotation();
  v58 = swift_allocObject();
  v9 = type metadata accessor for RotatedAnonymousIdCacheTTL();
  v57 = swift_allocObject();
  v10 = type metadata accessor for IdentifierNodeFetcher();
  v79 = v10;
  v80 = &off_1F390C278;
  *&v78 = swift_allocObject();
  v11 = type metadata accessor for RotatedAnonymousIdDatasource();
  v12 = swift_allocObject();
  v13 = sub_1BAFD7BD4(&v78, v10);
  v14 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = a6;
  v20 = sub_1BB005438(v18, v12, 1209600, &unk_1F390BB40);
  sub_1BAFC6A68(&v78);
  sub_1BAFC6DB4(a5, &v78);
  v76 = v11;
  v77 = &off_1F390D490;
  *&v75 = v20;
  v73 = &type metadata for PAStatusProvider;
  v74 = &off_1F390CFF0;
  v21 = swift_allocObject();
  *&v72 = v21;
  v21[2] = 0xD000000000000018;
  v21[3] = 0x80000001BB021980;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x80000001BB0219A0;
  v22 = type metadata accessor for RotatedAnonymousIdDataBuilder();
  v23 = swift_allocObject();
  v24 = sub_1BAFD7BD4(&v72, &type metadata for PAStatusProvider);
  v25 = *(off_1F390CFD0 + 8);
  MEMORY[0x1EEE9AC00](v24, v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v56 = *v27;
  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  v23[15] = &type metadata for PAStatusProvider;
  v23[16] = &off_1F390CFF0;
  v31 = swift_allocObject();
  v23[12] = v31;
  *(v31 + 16) = v56;
  *(v31 + 32) = v30;
  *(v31 + 40) = v29;
  sub_1BAFC6D0C(&v75, (v23 + 2));
  sub_1BAFC6D0C(&v78, (v23 + 7));
  sub_1BAFC6A68(&v72);
  sub_1BAFC6DB4(v81, &v78);
  v32 = v79;
  v33 = sub_1BAFD7BD4(&v78, v79);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33, v33);
  v36 = (&v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v36;
  v39 = type metadata accessor for IdentifierDataStore();
  v76 = v39;
  v77 = &off_1F390D328;
  *&v75 = v59;
  v74 = &off_1F390C2C8;
  v73 = v8;
  v71 = &off_1F390C2A8;
  *&v72 = v58;
  v70 = v9;
  *&v69 = v57;
  v67 = v22;
  v68 = &off_1F390C298;
  *&v66 = v23;
  v65 = &off_1F390D430;
  v64 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v63[0] = v38;
  type metadata accessor for IdentifierBuilder();
  v40 = swift_allocObject();
  v41 = sub_1BAFD7BD4(&v75, v39);
  v42 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41, v41);
  v44 = (&v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = v64;
  v47 = sub_1BAFD7BD4(v63, v64);
  v48 = *(v46[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v47, v47);
  v50 = (&v56 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = *v44;
  v53 = *v50;
  v40[9] = v39;
  v40[10] = &off_1F390D328;
  v40[29] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v40[30] = &off_1F390D430;
  v40[26] = v53;
  v40[2] = 1;
  v54 = v61;
  v40[3] = v60;
  v40[4] = v54;
  v40[5] = v62;
  v40[6] = v52;
  sub_1BAFC6D0C(&v72, (v40 + 11));
  sub_1BAFC6D0C(&v69, (v40 + 16));
  sub_1BAFC6D0C(&v66, (v40 + 21));

  sub_1BAFC6A68(v63);
  sub_1BAFC6A68(&v75);
  sub_1BAFC6A68(&v78);
  sub_1BAFC6A68(v81);
  return v40;
}

unint64_t sub_1BB006438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v98[3] = &type metadata for RotatingIdentifierTelemetryDelivery;
  v98[4] = &off_1F390D430;
  v98[0] = a6;
  v12 = *sub_1BAFC6AB4(v98, &type metadata for RotatingIdentifierTelemetryDelivery);
  v13 = a6;
  v14 = sub_1BB005928(a1, a2, a3, a4, a5, v12);
  result = sub_1BAFD8A44();
  if (result >> 62)
  {
    v66 = result;
    v16 = sub_1BB015008();
    result = v66;
  }

  else
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = a2;
  v74 = a3;
  v72 = v14;
  if (!v16)
  {

    v18 = 0;
    goto LABEL_9;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1BFB070A0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 32);
LABEL_7:
    v18 = v17;

LABEL_9:
    v19 = type metadata accessor for IdentifierDataStore();
    v96 = v19;
    v97 = &off_1F390D328;
    *&v95 = a4;
    v70 = type metadata accessor for BucketIdRotation();
    v75 = a4;
    v20 = swift_allocObject();
    v21 = sub_1BAFD7BD4(&v95, v19);
    v79 = *(*(v19 - 8) + 64);
    MEMORY[0x1EEE9AC00](v21, v21);
    v23 = (v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = *(v24 + 16);
    v76 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    v77 = v25;
    v78 = v24 + 16;
    v25(v23);
    v26 = *v23;
    v20[5] = v19;
    v20[6] = &off_1F390D328;
    v20[2] = v26;
    v20[7] = a1;

    sub_1BAFC6A68(&v95);
    v69 = type metadata accessor for BucketIdCacheTTL();
    v68 = swift_allocObject();
    *(v68 + 16) = v18;
    v27 = type metadata accessor for IdentifierNodeFetcher();
    v71 = a1;
    v28 = v27;
    v29 = swift_allocObject();
    v96 = v28;
    v97 = &off_1F390C278;
    *&v95 = v29;
    v30 = type metadata accessor for BucketIdDatasource();
    v31 = swift_allocObject();
    v32 = sub_1BAFD7BD4(&v95, v28);
    v33 = *(*(v28 - 8) + 64);
    MEMORY[0x1EEE9AC00](v32, v32);
    v35 = (v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = *v35;
    v38 = v18;
    v39 = sub_1BB00564C(v37, v31);
    sub_1BAFC6A68(&v95);
    v96 = v30;
    v97 = &off_1F390D5A0;
    v94 = &off_1F390D328;
    *&v95 = v39;
    v93 = v19;
    v40 = v75;
    v92[0] = v75;
    v41 = type metadata accessor for BucketIdDataBuilder();
    v42 = swift_allocObject();
    v43 = sub_1BAFD7BD4(v92, v19);
    MEMORY[0x1EEE9AC00](v43, v43);
    v44 = (v67 - v76);
    v77(v67 - v76);
    v45 = *v44;
    v42[11] = v19;
    v42[12] = &off_1F390D328;
    v42[8] = v45;
    sub_1BAFC6D0C(&v95, (v42 + 3));
    v42[2] = v18;

    sub_1BAFC6A68(v92);
    sub_1BAFC6DB4(v98, &v95);
    v46 = v96;
    v47 = sub_1BAFD7BD4(&v95, v96);
    v67[1] = v67;
    v48 = *(*(v46 - 8) + 64);
    MEMORY[0x1EEE9AC00](v47, v47);
    v50 = (v67 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = *v50;
    v93 = v19;
    v94 = &off_1F390D328;
    v92[0] = v40;
    v91 = &off_1F390E0F8;
    v90 = v70;
    v88 = &off_1F390E3D8;
    *&v89 = v20;
    v87 = v69;
    *&v86 = v68;
    v84 = v41;
    v85 = &off_1F390DFC8;
    *&v83 = v42;
    v82 = &off_1F390D430;
    v81 = &type metadata for RotatingIdentifierTelemetryDelivery;
    v80[0] = v52;
    type metadata accessor for IdentifierBuilder();
    v53 = swift_allocObject();
    v54 = sub_1BAFD7BD4(v92, v19);
    MEMORY[0x1EEE9AC00](v54, v54);
    v55 = (v67 - v76);
    v77(v67 - v76);
    v56 = v81;
    v57 = sub_1BAFD7BD4(v80, v81);
    v58 = *(v56[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v57, v57);
    v60 = (v67 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))(v60);
    v62 = *v55;
    v63 = *v60;
    v53[9] = v19;
    v53[10] = &off_1F390D328;
    v53[6] = v62;
    v53[29] = &type metadata for RotatingIdentifierTelemetryDelivery;
    v53[30] = &off_1F390D430;

    v53[26] = v63;
    v53[2] = 2;
    v64 = v73;
    v65 = v74;
    v53[3] = v71;
    v53[4] = v64;
    v53[5] = v65;
    sub_1BAFC6D0C(&v89, (v53 + 11));
    sub_1BAFC6D0C(&v86, (v53 + 16));
    sub_1BAFC6D0C(&v83, (v53 + 21));

    sub_1BAFC6A68(v80);
    sub_1BAFC6A68(v92);
    sub_1BAFC6A68(&v95);
    sub_1BAFC6A68(v98);
    return v53;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB006B24(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v25 = sub_1BB014DF8();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB014DE8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = sub_1BB014A68();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  sub_1BAFC5BB4(0, &qword_1EDD4FFD0, 0x1E69E9610);
  sub_1BB014A58();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BB006EE0();
  sub_1BAFD86D0(&qword_1EBC3B210, &unk_1BB019170);
  sub_1BAFE025C();
  sub_1BB014ED8();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8090], v25);
  *(v3 + 16) = sub_1BB014E18();
  *(v3 + 72) = 1;
  type metadata accessor for IdentifierDataStore();
  v16 = swift_allocObject();
  sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
  v17 = v26;
  sub_1BB014E68();
  v18 = sub_1BB0145C8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v16 + 16) = sub_1BB0145B8();
  *(v3 + 24) = v16;
  v21 = v27;
  sub_1BAFC6DB4(v27, v3 + 32);
  v22 = [v28 devicePipelinesEnabled];
  sub_1BAFC6A68(v21);
  *(v4 + 72) = v22;
  return v4;
}

uint64_t sub_1BB006E78(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B8F8, &unk_1BB01CAF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BB006EE0()
{
  result = qword_1EDD4FFD8;
  if (!qword_1EDD4FFD8)
  {
    sub_1BB014DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FFD8);
  }

  return result;
}

uint64_t CanonicalUAEFactory.__allocating_init(startingEventCount:handle:purpose:source:impressionId:options:trace:branch:orderVendor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 104) = 0;
  sub_1BAFD86D0(qword_1EBC3B188, &qword_1BB018FD0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 112) = v19;
  *(v18 + 120) = a1;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 88) = a10;
  *(v18 + 96) = a11;
  return v18;
}

uint64_t CanonicalUAEFactory.init(startingEventCount:handle:purpose:source:impressionId:options:trace:branch:orderVendor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 104) = 0;
  sub_1BAFD86D0(qword_1EBC3B188, &qword_1BB018FD0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v11 + 112) = v19;
  *(v11 + 120) = a1;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 64) = a8;
  *(v11 + 72) = a9;
  *(v11 + 88) = a10;
  *(v11 + 96) = a11;
  return v11;
}

uint64_t sub_1BB007100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v44 = a1;
  v45 = a2;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(v16 + 32))(v17, v16);
  v19 = *(v6 + 112);
  os_unfair_lock_lock(v19 + 4);
  v20 = *(v6 + 96);
  v7[13] = sub_1BAFC6108(v18);
  result = swift_beginAccess();
  v22 = v7[15];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v7[15] = v24;
    os_unfair_lock_unlock(v19 + 4);
    v25 = v7[2];
    v26 = v7[3];
    v27 = v7[5];
    v42 = v7[4];
    v43 = v25;
    v28 = v7[7];
    v40 = v7[6];
    v41 = v27;
    v29 = v7[13];
    v30 = v7[9];
    v38 = v7[8];
    v39 = v29;
    v36 = v30;
    v37 = a6;
    v31 = v7[10];
    v32 = v7[11];
    (*(v12 + 16))(v15, v44, a4);
    v33 = *(a5 + 128);

    v34 = v45;

    return v33(v43, v26, v42, v41, v40, v28, v38, v39, v36, v31, v32, v15, v34, a3, a5);
  }

  return result;
}

void *CanonicalUAEFactory.deinit()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  return v0;
}

uint64_t CanonicalUAEFactory.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t OnScreenUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OnScreenUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t OnScreenUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t OnScreenUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t OnScreenUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnScreenUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OnScreenUAE()
{
  result = qword_1EDD4FE58;
  if (!qword_1EDD4FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 OnScreenUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v19 = *a12;
  v20 = *(a12 + 8);
  v21 = type metadata accessor for OnScreenUAE();
  v22 = a9 + *(v21 + 56);
  sub_1BB014368();
  v23 = a9 + *(v21 + 60);
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v19;
  a9[6].n128_u64[0] = v20;
  a9[6].n128_u64[1] = a13;
  return result;
}

uint64_t static OnScreenUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OnScreenUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB007710()
{
  result = qword_1EDD4EED0;
  if (!qword_1EDD4EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EED0);
  }

  return result;
}

uint64_t sub_1BB00776C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

__n128 sub_1BB007780@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  v19 = *a12;
  v20 = *(a12 + 8);
  v21 = a9 + *(a14 + 56);
  sub_1BB014368();
  v22 = a9 + *(a14 + 60);
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v19;
  a9[6].n128_u64[0] = v20;
  a9[6].n128_u64[1] = a13;
  return result;
}

unint64_t sub_1BB00783C(uint64_t a1)
{
  result = sub_1BB007864();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB007864()
{
  result = qword_1EDD4FE68[0];
  if (!qword_1EDD4FE68[0])
  {
    type metadata accessor for OnScreenUAE();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4FE68);
  }

  return result;
}

void sub_1BB0078E4()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t VisibleUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VisibleUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t VisibleUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t VisibleUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t VisibleUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisibleUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for VisibleUAE()
{
  result = qword_1EDD4FF40;
  if (!qword_1EDD4FF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 VisibleUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v16 = *a12;
  v17 = *(a12 + 8);
  v18 = *(a12 + 16);
  v19 = *(a12 + 24);
  v20 = *(a12 + 32);
  v21 = *(a12 + 40);
  v22 = type metadata accessor for VisibleUAE();
  v23 = a9 + *(v22 + 56);
  sub_1BB014368();
  v24 = a9 + *(v22 + 60);
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v16;
  a9[6].n128_u64[0] = v17;
  a9[6].n128_u8[8] = v18;
  a9[7].n128_u64[0] = v19;
  a9[7].n128_u8[8] = v20;
  a9[8].n128_u64[0] = v21;
  a9[8].n128_u64[1] = a13;
  return result;
}

uint64_t static VisibleUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for VisibleUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB007D50()
{
  result = qword_1EDD4EF78;
  if (!qword_1EDD4EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EF78);
  }

  return result;
}

uint64_t sub_1BB007DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

__n128 sub_1BB007DE0@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  v18 = *a12;
  v17 = *(a12 + 8);
  v19 = *(a12 + 16);
  v20 = *(a12 + 24);
  v21 = *(a12 + 32);
  v22 = *(a12 + 40);
  v23 = a9 + *(a14 + 56);
  sub_1BB014368();
  v24 = a9 + *(a14 + 60);
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v18;
  a9[6].n128_u64[0] = v17;
  a9[6].n128_u8[8] = v19;
  a9[7].n128_u64[0] = v20;
  a9[7].n128_u8[8] = v21;
  a9[8].n128_u64[0] = v22;
  a9[8].n128_u64[1] = a13;
  return result;
}

unint64_t sub_1BB007ECC(uint64_t a1)
{
  result = sub_1BB007EF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB007EF4()
{
  result = qword_1EDD4FF50;
  if (!qword_1EDD4FF50)
  {
    type metadata accessor for VisibleUAE();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4FF50);
  }

  return result;
}

void sub_1BB007F74()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t PlacedUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlacedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlacedUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PlacedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v8 = *(v1 + 120);
  v3 = v8;
  v9 = *(v1 + 136);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1BB0081EC(v7, v6);
}

uint64_t PlacedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlacedUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PlacedUAE()
{
  result = qword_1EDD4E2B0;
  if (!qword_1EDD4E2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 PlacedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = type metadata accessor for PlacedUAE();
  v21 = a9 + *(v20 + 56);
  sub_1BB014368();
  v22 = a9 + *(v20 + 60);
  sub_1BB0143D8();
  *(a9 + 64) = a10;
  v23 = *(a12 + 16);
  *(a9 + 88) = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 104) = v23;
  result = *(a12 + 32);
  *(a9 + 120) = result;
  *(a9 + 136) = *(a12 + 48);
  *(a9 + 144) = a13;
  return result;
}

uint64_t static PlacedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PlacedUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB008440()
{
  result = qword_1EDD4EF88[0];
  if (!qword_1EDD4EF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4EF88);
  }

  return result;
}

uint64_t sub_1BB00849C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v8 = *(v1 + 120);
  v3 = v8;
  v9 = *(v1 + 136);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1BB0081EC(v7, v6);
}

__n128 sub_1BB0084F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = a9 + *(a14 + 56);
  sub_1BB014368();
  v21 = a9 + *(a14 + 60);
  sub_1BB0143D8();
  *(a9 + 64) = a10;
  v22 = *(a12 + 16);
  *(a9 + 88) = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 104) = v22;
  result = *(a12 + 32);
  *(a9 + 120) = result;
  *(a9 + 136) = *(a12 + 48);
  *(a9 + 144) = a13;
  return result;
}

unint64_t sub_1BB0085C0(uint64_t a1)
{
  result = sub_1BB0085E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB0085E8()
{
  result = qword_1EDD4E2C0;
  if (!qword_1EDD4E2C0)
  {
    type metadata accessor for PlacedUAE();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E2C0);
  }

  return result;
}

void sub_1BB008668()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t InteractedUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InteractedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t InteractedUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t InteractedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t InteractedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InteractedUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InteractedUAE()
{
  result = qword_1EBC3B910;
  if (!qword_1EBC3B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 InteractedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v16 = *a12;
  v17 = *(a12 + 8);
  v18 = *(a12 + 16);
  v19 = *(a12 + 24);
  v20 = *(a12 + 32);
  v21 = *(a12 + 40);
  v22 = type metadata accessor for InteractedUAE();
  v23 = a9 + *(v22 + 56);
  sub_1BB014368();
  v24 = a9 + *(v22 + 60);
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v16;
  a9[6].n128_u64[0] = v17;
  a9[6].n128_u8[8] = v18;
  a9[7].n128_u64[0] = v19;
  a9[7].n128_u8[8] = v20;
  a9[8].n128_u64[0] = v21;
  a9[8].n128_u64[1] = a13;
  return result;
}

uint64_t static InteractedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for InteractedUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB008AD4()
{
  result = qword_1EBC3B900;
  if (!qword_1EBC3B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B900);
  }

  return result;
}

unint64_t sub_1BB008B30(uint64_t a1)
{
  result = sub_1BB008B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB008B58()
{
  result = qword_1EBC3B908;
  if (!qword_1EBC3B908)
  {
    type metadata accessor for InteractedUAE();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B908);
  }

  return result;
}

void sub_1BB008BD8()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t ReceivedUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReceivedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ReceivedUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ReceivedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t ReceivedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReceivedUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ReceivedUAE()
{
  result = qword_1EBC3B930;
  if (!qword_1EBC3B930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ReceivedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v25 = *a12;
  v19 = a12[1].n128_u64[0];
  v20 = a12[1].n128_u64[1];
  v21 = type metadata accessor for ReceivedUAE();
  v22 = a9 + *(v21 + 56);
  sub_1BB014368();
  v23 = a9 + *(v21 + 60);
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v25;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v25;
  *(a9 + 104) = v19;
  *(a9 + 112) = v20;
  *(a9 + 120) = a13;
  return result;
}

uint64_t static ReceivedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ReceivedUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB00903C()
{
  result = qword_1EBC3B920;
  if (!qword_1EBC3B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B920);
  }

  return result;
}

uint64_t sub_1BB009098@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

__n128 sub_1BB0090E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13, uint64_t a14)
{
  v25 = *a12;
  v20 = a12[1].n128_u64[0];
  v21 = a12[1].n128_u64[1];
  v22 = a9 + *(a14 + 56);
  sub_1BB014368();
  v23 = a9 + *(a14 + 60);
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v25;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v25;
  *(a9 + 104) = v20;
  *(a9 + 112) = v21;
  *(a9 + 120) = a13;
  return result;
}

unint64_t sub_1BB0091B8(uint64_t a1)
{
  result = sub_1BB0091E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB0091E0()
{
  result = qword_1EBC3B928;
  if (!qword_1EBC3B928)
  {
    type metadata accessor for ReceivedUAE();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B928);
  }

  return result;
}

void sub_1BB009260()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t OffScreenUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OffScreenUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t OffScreenUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t OffScreenUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t OffScreenUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OffScreenUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OffScreenUAE()
{
  result = qword_1EDD4FCD8;
  if (!qword_1EDD4FCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 OffScreenUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v19 = *a12;
  v20 = *(a12 + 8);
  v21 = type metadata accessor for OffScreenUAE();
  v22 = a9 + *(v21 + 56);
  sub_1BB014368();
  v23 = a9 + *(v21 + 60);
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u8[8] = v19;
  a9[6].n128_u64[0] = v20;
  a9[6].n128_u64[1] = a13;
  return result;
}

uint64_t static OffScreenUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OffScreenUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB00968C()
{
  result = qword_1EDD4EDC8[0];
  if (!qword_1EDD4EDC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4EDC8);
  }

  return result;
}

unint64_t sub_1BB0096E8(uint64_t a1)
{
  result = sub_1BB009710();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB009710()
{
  result = qword_1EDD4FCE8[0];
  if (!qword_1EDD4FCE8[0])
  {
    type metadata accessor for OffScreenUAE();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4FCE8);
  }

  return result;
}

void sub_1BB009790()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BB009A40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BB009A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LeftAdDestinationUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LeftAdDestinationUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LeftAdDestinationUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t LeftAdDestinationUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
}

uint64_t LeftAdDestinationUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeftAdDestinationUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LeftAdDestinationUAE()
{
  result = qword_1EBC3B950;
  if (!qword_1EBC3B950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 LeftAdDestinationUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v25 = *a12;
  v20 = a12[1].n128_u64[0];
  v21 = type metadata accessor for LeftAdDestinationUAE();
  v22 = a9 + *(v21 + 56);
  sub_1BB014368();
  v23 = a9 + *(v21 + 60);
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v25;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v25;
  *(a9 + 104) = v20;
  *(a9 + 112) = a13;
  return result;
}

uint64_t static LeftAdDestinationUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LeftAdDestinationUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB009D98()
{
  result = qword_1EBC3B940;
  if (!qword_1EBC3B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B940);
  }

  return result;
}

uint64_t sub_1BB009DF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
}

__n128 sub_1BB009E10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13, uint64_t a14)
{
  v24 = *a12;
  v20 = a12[1].n128_u64[0];
  v21 = a9 + *(a14 + 56);
  sub_1BB014368();
  v22 = a9 + *(a14 + 60);
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v24;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v24;
  *(a9 + 104) = v20;
  *(a9 + 112) = a13;
  return result;
}

unint64_t sub_1BB009ED4(uint64_t a1)
{
  result = sub_1BB009EFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB009EFC()
{
  result = qword_1EBC3B948;
  if (!qword_1EBC3B948)
  {
    type metadata accessor for LeftAdDestinationUAE();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B948);
  }

  return result;
}

void sub_1BB009F7C()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t UnloadedUAE.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UnloadedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UnloadedUAE.trace.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t UnloadedUAE.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
}

uint64_t UnloadedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnloadedUAE() + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UnloadedUAE()
{
  result = qword_1EDD4FD98;
  if (!qword_1EDD4FD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 UnloadedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __n128 *a12, uint64_t a13)
{
  v25 = *a12;
  v20 = a12[1].n128_u64[0];
  v21 = type metadata accessor for UnloadedUAE();
  v22 = a9 + *(v21 + 56);
  sub_1BB014368();
  v23 = a9 + *(v21 + 60);
  sub_1BB0143D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = v25;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = v25;
  *(a9 + 104) = v20;
  *(a9 + 112) = a13;
  return result;
}

uint64_t static UnloadedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for UnloadedUAE() + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BB00A3A8()
{
  result = qword_1EDD4EEC8;
  if (!qword_1EDD4EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4EEC8);
  }

  return result;
}

unint64_t sub_1BB00A404(uint64_t a1)
{
  result = sub_1BB00A42C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BB00A42C()
{
  result = qword_1EDD4FDA8[0];
  if (!qword_1EDD4FDA8[0])
  {
    type metadata accessor for UnloadedUAE();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4FDA8);
  }

  return result;
}

void sub_1BB00A4AC()
{
  type metadata accessor for APMetricPurposeType(319);
  if (v0 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v4 <= 0x3F)
          {
            sub_1BB014398();
            if (v5 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BB00A614(uint64_t a1)
{
  v3 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v53 - v6;
  v68 = sub_1BB014648();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v68, v10);
  v59 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BB0147A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PolicyTerritoryKey(0);
  v66 = *(v18 - 8);
  v67 = v18;
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v73 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v53[1] = v1;
    v75 = MEMORY[0x1E69E7CC0];
    v60 = v22;
    sub_1BAFEBF7C(0, v22, 0);
    v74 = v75;
    v24 = -1 << *(a1 + 32);
    v72 = a1 + 56;
    result = sub_1BB014EE8();
    v25 = result;
    v26 = 0;
    v63 = (v8 + 48);
    v64 = v13 + 16;
    v56 = (v8 + 16);
    v57 = (v8 + 32);
    v61 = v7;
    v62 = (v13 + 8);
    v54 = a1 + 64;
    v55 = (v8 + 8);
    v65 = a1;
    v58 = v12;
    while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(a1 + 32))
    {
      v28 = v25 >> 6;
      if ((*(v72 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_25;
      }

      v69 = v26;
      v70 = *(a1 + 36);
      v71 = 1 << v25;
      (*(v13 + 16))(v17, *(a1 + 48) + *(v13 + 72) * v25, v12);
      sub_1BB014778();
      v29 = v68;
      if ((*v63)(v7, 1, v68) == 1)
      {
        sub_1BAFE2D64(v7, &qword_1EBC3B428, &qword_1BB019EC0);
        v30 = v73;
        sub_1BB014798();
        v31 = type metadata accessor for PolicyTerritoryKey.Scope(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v31 - 8) + 56))(v30 + *(v67 + 20), 1, 1, v31);
      }

      else
      {
        v32 = v59;
        (*v57)(v59, v7, v29);
        v33 = *(sub_1BAFD86D0(&qword_1EBC3B5B0, &qword_1BB01ACF0) + 48);
        v34 = v73;
        v35 = v17;
        sub_1BB014798();
        (*v56)(v34 + v33, v32, v29);
        v36 = type metadata accessor for PolicyTerritoryKey.Scope(0);
        swift_storeEnumTagMultiPayload();
        v37 = v13;
        v38 = v29;
        v39 = *(v67 + 20);
        sub_1BB014798();
        v40 = v32;
        v12 = v58;
        v41 = v38;
        v13 = v37;
        v17 = v35;
        (*v55)(v40, v41);
        swift_storeEnumTagMultiPayload();
        (*(*(v36 - 8) + 56))(v34 + v39, 0, 1, v36);
      }

      (*v62)(v17, v12);
      v42 = v74;
      v75 = v74;
      v44 = *(v74 + 16);
      v43 = *(v74 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1BAFEBF7C(v43 > 1, v44 + 1, 1);
        v42 = v75;
      }

      *(v42 + 16) = v44 + 1;
      v45 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v74 = v42;
      result = sub_1BB00FCB0(v73, v42 + v45 + *(v66 + 72) * v44);
      a1 = v65;
      v27 = 1 << *(v65 + 32);
      if (v25 >= v27)
      {
        goto LABEL_26;
      }

      v46 = *(v72 + 8 * v28);
      if ((v46 & v71) == 0)
      {
        goto LABEL_27;
      }

      if (v70 != *(v65 + 36))
      {
        goto LABEL_28;
      }

      v47 = v46 & (-2 << (v25 & 0x3F));
      if (v47)
      {
        v27 = __clz(__rbit64(v47)) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v48 = v28 << 6;
        v49 = v28 + 1;
        v50 = (v54 + 8 * v28);
        while (v49 < (v27 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            result = sub_1BB00FD14(v25, v70, 0);
            v27 = __clz(__rbit64(v51)) + v48;
            goto LABEL_4;
          }
        }

        result = sub_1BB00FD14(v25, v70, 0);
      }

LABEL_4:
      v26 = v69 + 1;
      v25 = v27;
      v7 = v61;
      if (v69 + 1 == v60)
      {
        return v74;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t SovereignSensitiveCategoryFilter.__allocating_init(currentTerritorySource:homeTerritorySource:storefrontTerritorySource:ruleStore:ruleEvaluator:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  sub_1BAFC6D0C(a1, v10 + 16);
  sub_1BAFC6D0C(a2, v10 + 56);
  sub_1BAFC6D0C(a3, v10 + 96);
  sub_1BAFC6D0C(a4, v10 + 136);
  sub_1BAFC6D0C(a5, v10 + 176);
  return v10;
}

uint64_t SovereignSensitiveCategoryFilter.init(currentTerritorySource:homeTerritorySource:storefrontTerritorySource:ruleStore:ruleEvaluator:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_1BAFC6D0C(a1, v5 + 16);
  sub_1BAFC6D0C(a2, v5 + 56);
  sub_1BAFC6D0C(a3, v5 + 96);
  sub_1BAFC6D0C(a4, v5 + 136);
  sub_1BAFC6D0C(a5, v5 + 176);
  return v5;
}

uint64_t SovereignSensitiveCategoryFilter.eligibilityFor(category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a1;
  v104 = a2;
  v100[0] = a3;
  v4 = type metadata accessor for PolicyTerritoryKey(0);
  v112 = *(v4 - 8);
  v5 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v111 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB0147A8();
  v115 = *(v8 - 8);
  v116 = v8;
  v9 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v117 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  v110 = *(v102 - 8);
  v114 = v110;
  v12 = *(v110 + 8);
  v14 = MEMORY[0x1EEE9AC00](v102, v13);
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v105 = v100 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v106 = v100 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v108 = v100 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = v100 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = v100 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = v100 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = v100 - v39;
  v41 = v3[6];
  sub_1BAFC6AB4(v3 + 2, v3[5]);
  sub_1BB0145E8();
  v42 = v3[11];
  sub_1BAFC6AB4(v3 + 7, v3[10]);
  sub_1BB0145E8();
  v43 = v3[15];
  v44 = v3[16];
  v113 = v3;
  sub_1BAFC6AB4(v3 + 12, v43);
  sub_1BB0145E8();
  sub_1BAFD86D0(&qword_1EBC3B968, &qword_1BB01D0B8);
  v45 = *(v110 + 9);
  v46 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v101 = swift_allocObject();
  v47 = v101 + v46;
  v48 = v116;
  v110 = v40;
  sub_1BB00B750(v40, v47);
  v109 = v37;
  sub_1BB00B750(v37, v47 + v45);
  v107 = v33;
  sub_1BB00B750(v33, v47 + 2 * v45);
  v49 = (v115 + 48);
  v50 = (v115 + 32);
  v51 = MEMORY[0x1E69E7CC0];
  v52 = 3;
  v100[1] = v47;
  v114 = v115 + 32;
  do
  {
    sub_1BB00B750(v47, v29);
    sub_1BB00B7C0(v29, v16);
    if ((*v49)(v16, 1, v48) == 1)
    {
      sub_1BAFE2D64(v16, &qword_1EBC3B960, &qword_1BB01D0B0);
    }

    else
    {
      v53 = v29;
      v54 = v45;
      v55 = *v50;
      (*v50)(v117, v16, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1BB00C01C(0, v51[2] + 1, 1, v51, &qword_1EBC3B990, &unk_1BB01D150, MEMORY[0x1E6986150]);
      }

      v57 = v51[2];
      v56 = v51[3];
      if (v57 >= v56 >> 1)
      {
        v51 = sub_1BB00C01C(v56 > 1, v57 + 1, 1, v51, &qword_1EBC3B990, &unk_1BB01D150, MEMORY[0x1E6986150]);
      }

      v51[2] = v57 + 1;
      v48 = v116;
      v58 = v51 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v57;
      v50 = v114;
      v55(v58, v117, v116);
      v45 = v54;
      v29 = v53;
    }

    v47 += v45;
    --v52;
  }

  while (v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v59 = sub_1BB00F1E0(v51);

  v60 = v110;
  v61 = v108;
  sub_1BB00B750(v110, v108);
  v62 = v109;
  v63 = v106;
  sub_1BB00B750(v109, v106);
  v64 = v107;
  v65 = v105;
  sub_1BB00B750(v107, v105);
  if (*(v59 + 16))
  {
    v66 = reduceTerritories(_:)(v59);

    v67 = sub_1BB00A614(v66);
    v69 = v103;
    v68 = v104;
    v70 = v67;

    v71 = *(v70 + 16);
    v72 = v113;
    if (!v71)
    {
LABEL_17:

      sub_1BAFE2D64(v105, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v106, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v108, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v107, &qword_1EBC3B960, &qword_1BB01D0B0);
      sub_1BAFE2D64(v109, &qword_1EBC3B960, &qword_1BB01D0B0);
      result = sub_1BAFE2D64(v110, &qword_1EBC3B960, &qword_1BB01D0B0);
      v84 = v100[0];
      *v100[0] = 0u;
      *(v84 + 16) = 0u;
      return result;
    }

    v73 = 0;
    while (1)
    {
      if (v73 >= *(v70 + 16))
      {
        __break(1u);
        sub_1BAFE2D64(v105, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v106, &qword_1EBC3B960, &qword_1BB01D0B0);
        result = sub_1BAFE2D64(v108, &qword_1EBC3B960, &qword_1BB01D0B0);
        __break(1u);
        return result;
      }

      v74 = v111;
      sub_1BB00F368(v70 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v73, v111);
      v75 = v72[20];
      v76 = v72[21];
      sub_1BAFC6AB4(v72 + 17, v75);
      (*(v76 + 8))(&v119, v69, v68, v74, v75, v76);
      sub_1BB00F3CC(v74);
      if (v121)
      {

        v88 = v108;
        v90 = v105;
        v89 = v106;
        v91 = missingLocations(current:home:storefront:)(v108, v106, v105);
        sub_1BAFE2D64(v90, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v89, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v88, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v107, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v109, &qword_1EBC3B960, &qword_1BB01D0B0);
        sub_1BAFE2D64(v110, &qword_1EBC3B960, &qword_1BB01D0B0);
        v92 = v100[0];
        *v100[0] = v69;
        v92[1] = v68;
        v92[2] = 2;
        v92[3] = v91;
      }

      v77 = v72;
      v78 = v120;
      v79 = v119;
      v80 = v77[25];
      v81 = v77[26];
      sub_1BAFC6AB4(v77 + 22, v80);
      v119 = v79;
      v120 = v78 & 0x1FF;
      (*(v81 + 8))(&v118, &v119, v80, v81);
      v82 = v118;
      if (v118 <= 0xFDu)
      {
        break;
      }

      ++v73;
      v72 = v113;
      if (v71 == v73)
      {
        goto LABEL_17;
      }
    }

    v93 = 128;
    if (v82)
    {
      v93 = 129;
    }

    if ((v82 & 0x80u) == 0)
    {
      v94 = 0;
    }

    else
    {
      v94 = v93;
    }

    v95 = v108;
    v97 = v105;
    v96 = v106;
    v98 = missingLocations(current:home:storefront:)(v108, v106, v105);
    sub_1BAFE2D64(v97, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v96, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v95, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v107, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v109, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v110, &qword_1EBC3B960, &qword_1BB01D0B0);
    v99 = v100[0];
    *v100[0] = v69;
    v99[1] = v68;
    v99[2] = v94;
    v99[3] = v98;
  }

  else
  {

    v85 = missingLocations(current:home:storefront:)(v61, v63, v65);
    sub_1BAFE2D64(v65, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v63, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v61, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v64, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v62, &qword_1EBC3B960, &qword_1BB01D0B0);
    sub_1BAFE2D64(v60, &qword_1EBC3B960, &qword_1BB01D0B0);
    v86 = v100[0];
    v87 = v104;
    *v100[0] = v103;
    v86[1] = v87;
    v86[2] = 1;
    v86[3] = v85;
  }
}

uint64_t sub_1BB00B750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB00B7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B960, &qword_1BB01D0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t missingLocations(current:home:storefront:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x1E69E7CD0];
  v6 = sub_1BB0147A8();
  v7 = *(*(v6 - 8) + 48);
  if (v7(a1, 1, v6) == 1)
  {
    sub_1BB00C1F8(&v11, 0);
  }

  if (v7(a2, 1, v6) == 1)
  {
    sub_1BB00C1F8(&v10, 1);
  }

  if (v7(a3, 1, v6) == 1)
  {
    sub_1BB00C1F8(&v9, 2);
  }

  return v12;
}

uint64_t reduceTerritories(_:)(uint64_t a1)
{

  v3 = sub_1BB00F774(v2, v2);
  if (*(v3 + 16) <= *(a1 + 16) >> 3)
  {

    sub_1BB00D7A8(v3);
  }

  else
  {

    a1 = sub_1BB00D9C4(v3, a1);
  }

  return a1;
}

uint64_t *SovereignSensitiveCategoryFilter.deinit()
{
  sub_1BAFC6A68(v0 + 2);
  sub_1BAFC6A68(v0 + 7);
  sub_1BAFC6A68(v0 + 12);
  sub_1BAFC6A68(v0 + 17);
  sub_1BAFC6A68(v0 + 22);
  return v0;
}

uint64_t SovereignSensitiveCategoryFilter.__deallocating_deinit()
{
  sub_1BAFC6A68(v0 + 2);
  sub_1BAFC6A68(v0 + 7);
  sub_1BAFC6A68(v0 + 12);
  sub_1BAFC6A68(v0 + 17);
  sub_1BAFC6A68(v0 + 22);

  return swift_deallocClassInstance();
}

BOOL sub_1BB00BA94()
{
  v0 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = v20 - v3;
  v5 = sub_1BB0144A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v20 - v13;
  sub_1BB014798();
  sub_1BB014798();
  v15 = MEMORY[0x1BFB065C0](v14, v11);
  v16 = *(v6 + 8);
  v16(v11, v5);
  v16(v14, v5);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_1BB014778();
  v17 = sub_1BB014648();
  v18 = (*(*(v17 - 8) + 48))(v4, 1, v17) != 1;
  sub_1BAFE2D64(v4, &qword_1EBC3B428, &qword_1BB019EC0);
  return v18;
}

uint64_t sub_1BB00BC94(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v26 = a1;
  v27 = sub_1BB0147A8();
  v6 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  v24 = v8 + 16;
  v25 = v8;
  v23 = (v8 + 8);
  v28 = a3;

  v17 = 0;
  while (v14)
  {
    v18 = v27;
LABEL_11:
    (*(v25 + 16))(v10, *(v28 + 48) + *(v25 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v18);
    v20 = v26(v10);
    if (v3)
    {
      (*v23)(v10, v18);

      return a2 & 1;
    }

    v21 = v20;
    v14 &= v14 - 1;
    result = (*v23)(v10, v18);
    if (v21)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v18 = v27;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BB00BEAC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1BAFD86D0(&qword_1EBC3B490, &qword_1BB01A128);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BB00C01C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1BAFD86D0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BB00C1F8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](a2);
  v7 = sub_1BB0151F8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1BB00CB40(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BB00C2F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BB0147A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1BB00FC4C(&qword_1EBC3B970);
  v37 = a2;
  v14 = sub_1BB014AD8();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1BB00FC4C(&qword_1EBC3B978);
      v24 = sub_1BB014B18();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1BB00CC8C(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1BB00C5A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B988, &qword_1BB01D148);
  result = sub_1BB014F28();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1BB0151B8();
      MEMORY[0x1BFB072F0](v18);
      result = sub_1BB0151F8();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BB00C7F8(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1BB0147A8();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  result = sub_1BB014F28();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1BB00FC4C(&qword_1EBC3B970);
      result = sub_1BB014AD8();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1BB00CB40(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BB00C5A8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BB00CF08();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BB00D280(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v4);
  result = sub_1BB0151F8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BB015148();
  __break(1u);
  return result;
}

uint64_t sub_1BB00CC8C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1BB0147A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BB00C7F8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BB00D048();
      goto LABEL_12;
    }

    sub_1BB00D4A0(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1BB00FC4C(&qword_1EBC3B970);
  v16 = sub_1BB014AD8();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1BB00FC4C(&qword_1EBC3B978);
      v24 = sub_1BB014B18();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BB015148();
  __break(1u);
  return result;
}

void *sub_1BB00CF08()
{
  v1 = v0;
  sub_1BAFD86D0(&qword_1EBC3B988, &qword_1BB01D148);
  v2 = *v0;
  v3 = sub_1BB014F18();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1BB00D048()
{
  v1 = v0;
  v2 = sub_1BB0147A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  v8 = *v0;
  v9 = sub_1BB014F18();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_1BB00D280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B988, &qword_1BB01D148);
  result = sub_1BB014F28();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1BB0151B8();
      MEMORY[0x1BFB072F0](v17);
      result = sub_1BB0151F8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1BB00D4A0(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1BB0147A8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1BAFD86D0(&qword_1EBC3B980, &unk_1BB01D138);
  v11 = sub_1BB014F28();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1BB00FC4C(&qword_1EBC3B970);
      result = sub_1BB014AD8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}