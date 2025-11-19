uint64_t sub_2374E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2CEC30() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2CEF50();

      sub_2CE310();
      v14 = sub_2CEF80();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_237690(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_4F538(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23632C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_236A58(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_4F538(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2CEEE0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_306C(v23);

    return sub_E2DC(a1, v23);
  }

  else
  {
    sub_237944(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_2377E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_4F538(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_236D10(v16, a4 & 1);
      v20 = *v5;
      result = sub_4F538(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2CEEE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2364D0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

_OWORD *sub_237944(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E2DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2379B0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  if (v5 <= 1)
  {
    if (*(a1 + 56))
    {
      if (a2[56] != 1)
      {
        return 0;
      }

      v38 = *(a2 + 1);
      if (!v2)
      {
        return !v38;
      }

      if (!v38)
      {
        return 0;
      }

      if (v3 == *a2 && v2 == v38)
      {
        return 1;
      }

      v39 = *a1;
      return (sub_2CEEA0() & 1) != 0;
    }

    if (a2[56])
    {
      return 0;
    }

    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v2)
    {
      if (!v8)
      {
        return 0;
      }

      if (v3 != *a2 || v2 != v8)
      {
        v10 = *a1;
        if ((sub_2CEEA0() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v8)
    {
      return 0;
    }

    if (!v4)
    {
      return !v9;
    }

    if (v9)
    {
      sub_334A0(0, &qword_3512C0, INIntent_ptr);
      v44 = v9;
      v45 = v4;
      v46 = sub_2CEB30();

      if (v46)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 == 2)
  {
    if (a2[56] == 2)
    {
      v11 = 0x6D7269666E6F63;
      v12 = 0xE700000000000000;
      v13 = 0xE800000000000000;
      v14 = 0x6F666E4965726F6DLL;
      if (*a1 != 2)
      {
        v14 = 0x6C65636E6163;
        v13 = 0xE600000000000000;
      }

      v15 = 0x7463656A6572;
      if (*a1)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v15 = 0x6D7269666E6F63;
      }

      if (*a1 <= 1u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      if (v3 <= 1u)
      {
        v17 = v12;
      }

      else
      {
        v17 = v13;
      }

      v18 = 0xE700000000000000;
      v19 = 0xE800000000000000;
      v20 = 0x6F666E4965726F6DLL;
      if (*a2 != 2)
      {
        v20 = 0x6C65636E6163;
        v19 = 0xE600000000000000;
      }

      if (*a2)
      {
        v11 = 0x7463656A6572;
        v18 = 0xE600000000000000;
      }

      if (*a2 <= 1u)
      {
        v21 = v11;
      }

      else
      {
        v21 = v20;
      }

      if (*a2 <= 1u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v19;
      }

      if (v16 != v21 || v17 != v22)
      {
        v40 = sub_2CEEA0();

        return v40 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (v5 != 3)
  {
    if (a2[56] != 4)
    {
      return 0;
    }

    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *a2;
    v27 = *(a2 + 1);
    v30 = *(a2 + 2);
    v29 = *(a2 + 3);
    v31 = *(a2 + 4);
    v32 = *(a2 + 5);
    v33 = *(a2 + 6);
    if (v3)
    {
      if (!v28)
      {
        return 0;
      }

      v49 = *(a2 + 3);
      v50 = *(a2 + 4);
      v47 = *(a2 + 1);
      v48 = *(a2 + 2);
      sub_2CDB90();
      v51 = v24;
      v34 = v26;
      v35 = v28;
      v36 = v3;
      v37 = sub_2CEB30();

      v26 = v34;
      v24 = v51;

      v27 = v47;
      v30 = v48;
      v29 = v49;
      v31 = v50;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    if (v4)
    {
      if (!v30)
      {
        return 0;
      }

      if (v2 != v27 || v4 != v30)
      {
        v41 = v29;
        v42 = v31;
        v43 = sub_2CEEA0();
        v29 = v41;
        v31 = v42;
        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v30)
    {
      return 0;
    }

    if (v24)
    {
      if (!v31 || (v23 != v29 || v24 != v31) && (sub_2CEEA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v31)
    {
      return 0;
    }

    if (!v26)
    {
      return !v33;
    }

    if (!v33)
    {
      return 0;
    }

    if (v25 == v32 && v26 == v33)
    {
      return 1;
    }

    return (sub_2CEEA0() & 1) != 0;
  }

  if (a2[56] != 3)
  {
    return 0;
  }

  if (v3 == *a2 && v2 == *(a2 + 1))
  {
    return 1;
  }

  v6 = *a1;

  return sub_2CEEA0();
}

id sub_237DEC(uint64_t a1, unint64_t a2, Class isa)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_2CDFE0();
  v13 = sub_2CE690();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = v13;
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v14 = 136315394;
    v25 = a1;
    v26 = a2;
    *(v14 + 4) = sub_3F08(a1, a2, &v27);
    *(v14 + 12) = 2080;
    if (!isa)
    {
      sub_112C0(_swiftEmptyArrayStorage);
    }

    v15 = sub_2CE210();
    v17 = v16;

    v18 = sub_3F08(v15, v17, &v27);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_0, v12, v24, "Building direct invocation payload with identifier: %s, userData: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v19 = objc_allocWithZone(SKIDirectInvocationPayload);
  v20 = sub_2CE260();
  v21 = [v19 initWithIdentifier:v20];

  if (isa)
  {
    sub_E014(isa);
    isa = sub_2CE1F0().super.isa;
  }

  [v21 setUserData:isa];

  return v21;
}

uint64_t sub_238164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2CDFE0();
  v11 = sub_2CE690();

  if (!os_log_type_enabled(v10, v11))
  {

    result = (*(v5 + 8))(v8, v4);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_18:
    v20 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  v26 = a2;
  v12 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v29[0] = v25;
  *v12 = 136315138;
  if (!a1)
  {
    sub_112C0(_swiftEmptyArrayStorage);
  }

  v13 = sub_2CE210();
  v15 = v14;

  v16 = sub_3F08(v13, v15, v29);

  *(v12 + 4) = v16;
  _os_log_impl(&dword_0, v10, v11, "Parsing replay request data with user data: %s", v12, 0xCu);
  sub_306C(v25);

  result = (*(v5 + 8))(v8, v4);
  a2 = v26;
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (!*(a1 + 16) || (result = sub_4F538(0x6C646E7542707061, 0xEB00000000644965), (v18 & 1) == 0))
  {
    v19 = 0;
    v20 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_20;
    }

LABEL_23:
    v24 = 0;
    goto LABEL_24;
  }

  sub_E2FC(*(a1 + 56) + 32 * result, v29);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v27;
  }

  else
  {
    v19 = 0;
  }

  if (result)
  {
    v20 = v28;
  }

  else
  {
    v20 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  result = sub_4F538(0x746E65746E69, 0xE600000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_E2FC(*(a1 + 56) + 32 * result, v29);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = v27;
  v23 = v28;
  sub_334A0(0, &qword_34D3E0, NSKeyedUnarchiver_ptr);
  sub_334A0(0, &qword_3512C0, INIntent_ptr);
  v24 = sub_2CE930();
  result = sub_52628(v22, v23);
LABEL_24:
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v24;
  *(a2 + 56) = 0;
  return result;
}

unint64_t sub_238580@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  result = sub_4F538(0x6C646E7542707061, 0xEB00000000644965);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  sub_E2FC(*(v3 + 56) + 32 * result, v9);
  result = swift_dynamicCast();
  v4 = v7;
  v6 = v8;
  if (!result)
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_238638(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32F2B0;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

double sub_238684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36[-1] - v10;
  if (a1 && *(a1 + 16) && (v12 = sub_4F538(0x6E6F74747562, 0xE600000000000000), (v13 & 1) != 0) && (sub_E2FC(*(a1 + 56) + 32 * v12, v37), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v36[0];
    v14 = v36[1];

    v16 = sub_238638(v15, v14);
    if (v16 != 4)
    {
      v34 = v16;

      v31 = v34;
      v32 = 2;
      goto LABEL_16;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v11, v17, v4);

    v18 = sub_2CDFE0();
    v19 = sub_2CE680();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315138;
      v22 = sub_3F08(v15, v14, v36);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_0, v18, v19, "DirectInvocationUseCase#parseButtonPress unrecognized buttonPressed value: %s", v20, 0xCu);
      sub_306C(v21);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v9, v23, v4);

    v24 = sub_2CDFE0();
    v25 = sub_2CE680();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36[0] = v27;
      *v26 = 136315138;
      v36[2] = a1;

      sub_20410(&qword_34D400, &unk_2D1240);
      v28 = sub_2CE2A0();
      v30 = sub_3F08(v28, v29, v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "DirectInvocationUseCase#parseButtonPress invalid user data for buttonPress: %s", v26, 0xCu);
      sub_306C(v27);
    }

    (*(v5 + 8))(v9, v4);
  }

  v31 = 0;
  v32 = -1;
LABEL_16:
  *a2 = v31;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v32;
  return result;
}

double sub_238B10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    v8 = -1;
    goto LABEL_8;
  }

  v5 = sub_4F538(0x64496D657469, 0xE600000000000000);
  if ((v6 & 1) == 0 || (sub_E2FC(*(a1 + 56) + 32 * v5, v12), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v10;
  v7 = v11;
  v8 = 3;
LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  return result;
}

unint64_t sub_238BC4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    v11 = 0;
    v10 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_32;
  }

  v3 = result;
  if (*(result + 16) && (result = sub_4F538(0x7078456F69647561, 0xEF65636E65697265), (v4 & 1) != 0) && (sub_E2FC(*(v3 + 56) + 32 * result, v17), result = swift_dynamicCast(), (result & 1) != 0))
  {
    sub_525D4(v15, v16);
    v5 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV011deserializeA10Experience05audioH4Data21SiriInformationSearch0aH0CSg10Foundation0J0VSg_tFZ_0(v15, v16);
    sub_52628(v15, v16);
    result = sub_52628(v15, v16);
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  result = sub_4F538(0x656D616E656C6966, 0xE800000000000000);
  if (v6)
  {
    sub_E2FC(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    if (result)
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  v8 = 0;
  if (!*(v3 + 16))
  {
    goto LABEL_27;
  }

LABEL_18:
  result = sub_4F538(0x726577736E61, 0xE600000000000000);
  if (v9)
  {
    sub_E2FC(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    if (result)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v3 + 16);
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = 0;
  v11 = 0;
  v12 = *(v3 + 16);
  if (!v12)
  {
LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

LABEL_28:
  result = sub_4F538(0x726F727265, 0xE500000000000000);
  if ((v13 & 1) == 0)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  sub_E2FC(*(v3 + 56) + 32 * result, v17);
  result = swift_dynamicCast();
  v12 = v15;
  v14 = v16;
  if (!result)
  {
    v12 = 0;
    v14 = 0;
  }

LABEL_34:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = 4;
  return result;
}

uint64_t sub_238E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CA810();
  v64 = *(v4 - 8);
  *&v65 = v4;
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v61 - v9;
  v11 = sub_2CE000();
  *&v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v19 = sub_2CA7F0();
  v20 = v18;
  if (v19 == 0xD000000000000033 && 0x80000000002DE4F0 == v18 || (sub_2CEEA0() & 1) != 0)
  {

    v21 = sub_2CA800();
    sub_238164(v21, v69);
LABEL_5:
    v65 = v69[0];
    v66 = v69[1];
    v22 = v70;
    v23 = v71;
    v24 = v72;
    v25 = v73;

    v27 = v65;
    v28 = v66;
    goto LABEL_6;
  }

  if (v19 == 0xD00000000000002CLL && 0x80000000002DA380 == v20 || (sub_2CEEA0() & 1) != 0)
  {

    v29 = sub_2CA800();
    sub_238580(v29, v69);
    goto LABEL_5;
  }

  if (v19 == 0xD000000000000031 && 0x80000000002DFFA0 == v20 || (sub_2CEEA0() & 1) != 0)
  {

    v30 = sub_2CA800();
    sub_238684(v30, v69);
    goto LABEL_5;
  }

  if (v19 == 0xD000000000000034 && 0x80000000002DA910 == v20 || (sub_2CEEA0() & 1) != 0)
  {

    v31 = sub_2CA800();
    sub_238B10(v31, v69);
    goto LABEL_5;
  }

  if (v19 == 0xD000000000000029 && 0x80000000002DE570 == v20)
  {

    v32 = v11;
LABEL_23:
    v34 = v66;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = sub_3ED0(v32, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v17, v35, v32);
    v63 = v32;
    v36 = v64;
    v37 = v65;
    (*(v64 + 16))(v10, a1, v65);
    v38 = sub_2CDFE0();
    v39 = sub_2CE670();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v61 = v40;
      v62 = swift_slowAlloc();
      *&v69[0] = v62;
      *v40 = 136315138;
      v67 = sub_2CA800();
      sub_20410(&qword_34D400, &unk_2D1240);
      v41 = sub_2CE2A0();
      v42 = v37;
      v44 = v43;
      (*(v36 + 8))(v10, v42);
      v45 = sub_3F08(v41, v44, v69);

      v46 = v61;
      *(v61 + 1) = v45;
      _os_log_impl(&dword_0, v38, v39, "DirectInvocationUseCase#from shim: %s", v46, 0xCu);
      sub_306C(v62);
    }

    else
    {

      (*(v36 + 8))(v10, v37);
    }

    (*(v34 + 8))(v17, v63);
    v47 = sub_2CA800();
    sub_238BC4(v47, v69);
    goto LABEL_5;
  }

  v33 = sub_2CEEA0();

  v32 = v11;
  if (v33)
  {
    goto LABEL_23;
  }

  v48 = v66;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  (*(v48 + 16))(v15, v49, v32);
  v50 = v32;
  v51 = v64;
  v52 = v65;
  (*(v64 + 16))(v8, a1, v65);
  v53 = sub_2CDFE0();
  v54 = sub_2CE680();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v63 = v50;
    v56 = v55;
    v62 = swift_slowAlloc();
    v68 = v62;
    *v56 = 136315138;
    v61 = sub_2CA7F0();
    v58 = v57;
    (*(v51 + 8))(v8, v52);
    v59 = v48;
    v60 = sub_3F08(v61, v58, &v68);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_0, v53, v54, "DirectInvocationUseCase#from unsupported identifier: %s", v56, 0xCu);
    sub_306C(v62);

    result = (*(v59 + 8))(v15, v63);
  }

  else
  {

    (*(v51 + 8))(v8, v52);
    result = (*(v48 + 8))(v15, v50);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v27 = 0uLL;
  v25 = -1;
  v28 = 0uLL;
LABEL_6:
  *a2 = v27;
  *(a2 + 16) = v28;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  return result;
}

unint64_t sub_2395F0()
{
  result = qword_355AA0;
  if (!qword_355AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355AA0);
  }

  return result;
}

uint64_t sub_239644(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v73 = a4;
  v79 = a2;
  v80 = a3;
  v7 = sub_2CDFD0();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v7);
  v10 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v72 - v11;
  v12 = sub_2CE000();
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  v14 = __chkstk_darwin(v12);
  v77 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v90 = a1;

  if (IsAppleInternalBuild())
  {
    v18 = objc_allocWithZone(NSUserDefaults);
    v19 = sub_2CE260();
    v20 = [v18 initWithSuiteName:v19];

    if (v20)
    {
      v21 = sub_2CE260();
      v22 = [v20 stringForKey:v21];

      if (v22)
      {
        v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v78 = v5;
        v23 = sub_2CE270();
        v25 = v24;

        v86 = &type metadata for String;
        *&v85 = v23;
        *(&v85 + 1) = v25;

        sub_270DC4(&v85, 0xD000000000000012, 0x80000000002E06F0, v87);
        sub_30B8(v87, &qword_34CEA0, &qword_2D0FC0);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v26 = sub_3ED0(v12, static Logger.default);
        swift_beginAccess();
        v27 = v81;
        (*(v81 + 16))(v17, v26, v12);

        v28 = sub_2CDFE0();
        v29 = sub_2CE670();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v87[0] = v31;
          *v30 = 136315138;
          v32 = sub_3F08(v23, v25, v87);

          *(v30 + 4) = v32;
          _os_log_impl(&dword_0, v28, v29, "PlayMediaCatDialogService#intentHandledResponse overriding Siri response for testing with: %s", v30, 0xCu);
          sub_306C(v31);
        }

        else
        {
        }

        (*(v27 + 8))(v17, v12);
        v5 = v78;
        v10 = v76;
      }
    }
  }

  v78 = v12;
  v33 = v5[5];
  v74 = v5[4];
  v72 = v33;
  v34 = v5[6];
  v76 = v90;
  v35 = swift_allocObject();
  *(v35 + 16) = v73;
  *(v35 + 24) = v75;
  v36 = qword_34BF98;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_35F760;
  v38 = v82;
  sub_2CDFB0();
  v40 = v83;
  v39 = v84;
  (*(v83 + 16))(v10, v38, v84);
  v41 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v42 = v10;
  v43 = (v8 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = "catServiceExecute";
  *(v44 + 24) = 17;
  *(v44 + 32) = 2;
  (*(v40 + 32))(v44 + v41, v42, v39);
  v45 = (v44 + v43);
  *v45 = sub_2535A8;
  v45[1] = v35;
  v75 = v35;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2D0E40;
  *(v46 + 56) = &type metadata for String;
  v47 = sub_1087C();
  v48 = v72;
  *(v46 + 32) = v72;
  *(v46 + 40) = v34;
  *(v46 + 96) = &type metadata for String;
  *(v46 + 104) = v47;
  *(v46 + 64) = v47;
  *(v46 + 72) = 2036427856;
  *(v46 + 80) = 0xE400000000000000;

  v71 = v46;
  LOBYTE(v70) = 2;
  v69 = 125;
  sub_2CDF90();

  v49 = swift_allocObject();
  *(v49 + 16) = sub_13D80;
  *(v49 + 24) = v44;
  v50 = qword_34BF58;

  v51 = v48;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = v78;
  v53 = sub_3ED0(v78, static Logger.default);
  swift_beginAccess();
  v54 = v81;
  v55 = v77;
  (*(v81 + 16))(v77, v53, v52);

  v56 = sub_2CDFE0();
  v57 = sub_2CE660();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v73 = v49;
    v88 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_3F08(v51, v34, &v88);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_3F08(2036427856, 0xE400000000000000, &v88);
    _os_log_impl(&dword_0, v56, v57, "Evaluating CAT family:%s id:%s...", v58, 0x16u);
    swift_arrayDestroy();
    v49 = v73;
  }

  (*(v54 + 8))(v55, v52);
  v88 = v51;
  v89 = v34;

  v91._countAndFlagsBits = 35;
  v91._object = 0xE100000000000000;
  sub_2CE350(v91);
  v92._countAndFlagsBits = 2036427856;
  v92._object = 0xE400000000000000;
  sub_2CE350(v92);
  v61 = v88;
  v60 = v89;
  v62 = sub_2CB460();
  if (!v62)
  {
    sub_2CB180();
    v62 = sub_2CB170();
  }

  v63 = v62;
  v64 = swift_allocObject();
  v64[2] = v63;
  v64[3] = sub_13DB4;
  v64[4] = v49;
  v65 = sub_2CB180();
  __chkstk_darwin(v65);
  v66 = v76;
  *(&v72 - 10) = v74;
  *(&v72 - 9) = v66;
  v67 = v80;
  *(&v72 - 8) = v79;
  *(&v72 - 7) = v67;
  *(&v72 - 6) = 0;
  *(&v72 - 5) = v61;
  v69 = v60;
  v70 = sub_3E06C;
  v71 = v64;

  sub_2CB0F0();

  return (*(v83 + 8))(v82, v84);
}

uint64_t sub_239FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E06B0;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000001ELL;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD00000000000001ELL, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD00000000000001ELL;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23A680(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_20410(&unk_3519A0, &qword_2D0980);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v12 - v9);
  sub_188844(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v10 = *v8;
  }

  else
  {
    sub_24BE0(v8, v10);
  }

  swift_storeEnumTagMultiPayload();
  a2(v10);
  return sub_30B8(v10, &unk_3519A0, &qword_2D0980);
}

uint64_t sub_23A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0690;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000013;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000013, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000013;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0670;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000015, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000015;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23B4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0650;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000010;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000010, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000010;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23BBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v18 = v5[5];
  v59 = v5[4];
  v66 = v18;
  v19 = v5[6];
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v67 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v56 = v12;
  v26 = *(v12 + 32);
  v64 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v60 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  *(v28 + 32) = v66;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0x63646F5079616C50;
  *(v28 + 80) = 0xEB00000000747361;

  v52 = v28;
  LOBYTE(v51) = 2;
  v50 = 125;
  sub_2CDF90();

  v30 = swift_allocObject();
  *(v30 + 16) = sub_13D80;
  *(v30 + 24) = v25;
  v54 = v30;
  v55 = v25;
  v31 = qword_34BF58;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = v58;
  v33 = sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v34 = v57;
  v35 = v65;
  (*(v57 + 16))(v65, v33, v32);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v66;
    *(v38 + 4) = sub_3F08(v66, v19, &v68);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_3F08(0x63646F5079616C50, 0xEB00000000747361, &v68);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v65, v32);
  }

  else
  {

    (*(v34 + 8))(v35, v32);
    v39 = v66;
  }

  v68 = v39;
  v69 = v19;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x63646F5079616C50;
  v71._object = 0xEB00000000747361;
  sub_2CE350(v71);
  v40 = v68;
  v41 = v69;
  v42 = sub_2CB460();
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v43 = v42;
  v44 = v56;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_13DB4;
  v45[4] = v54;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v48 = v61;
  v47 = v62;
  *(&v53 - 10) = v59;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = v47;
  *(&v53 - 7) = v63;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v40;
  v50 = v41;
  v51 = sub_3E06C;
  v52 = v45;

  sub_2CB0F0();

  return (*(v44 + 8))(v67, v64);
}

uint64_t sub_23C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v18 = v5[5];
  v59 = v5[4];
  v66 = v18;
  v19 = v5[6];
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v67 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v56 = v12;
  v26 = *(v12 + 32);
  v64 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v60 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  *(v28 + 32) = v66;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0x7377654E79616C50;
  *(v28 + 80) = 0xEF74736163646F50;

  v52 = v28;
  LOBYTE(v51) = 2;
  v50 = 125;
  sub_2CDF90();

  v30 = swift_allocObject();
  *(v30 + 16) = sub_13D80;
  *(v30 + 24) = v25;
  v54 = v30;
  v55 = v25;
  v31 = qword_34BF58;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = v58;
  v33 = sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v34 = v57;
  v35 = v65;
  (*(v57 + 16))(v65, v33, v32);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v66;
    *(v38 + 4) = sub_3F08(v66, v19, &v68);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_3F08(0x7377654E79616C50, 0xEF74736163646F50, &v68);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v65, v32);
  }

  else
  {

    (*(v34 + 8))(v35, v32);
    v39 = v66;
  }

  v68 = v39;
  v69 = v19;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x7377654E79616C50;
  v71._object = 0xEF74736163646F50;
  sub_2CE350(v71);
  v40 = v68;
  v41 = v69;
  v42 = sub_2CB460();
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v43 = v42;
  v44 = v56;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_13DB4;
  v45[4] = v54;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v48 = v61;
  v47 = v62;
  *(&v53 - 10) = v59;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = v47;
  *(&v53 - 7) = v63;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v40;
  v50 = v41;
  v51 = sub_3E06C;
  v52 = v45;

  sub_2CB0F0();

  return (*(v44 + 8))(v67, v64);
}

uint64_t sub_23C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0630;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000001ALL;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD00000000000001ALL, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD00000000000001ALL;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23CFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0600;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000020;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000020, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000020;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23D69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E05D0;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD00000000000002BLL;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD00000000000002BLL, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD00000000000002BLL;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23DD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E05A0;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000026;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000026, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000026;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23E3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0580;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000014;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000014, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0560;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000014;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000014, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0540;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000015, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000015;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_23F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  v18 = v5[5];
  v59 = v5[4];
  v66 = v18;
  v19 = v5[6];
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v67 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v56 = v12;
  v26 = *(v12 + 32);
  v64 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v60 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  *(v28 + 32) = v66;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  strcpy((v28 + 72), "PlaySomething");
  *(v28 + 86) = -4864;

  v52 = v28;
  LOBYTE(v51) = 2;
  v50 = 125;
  sub_2CDF90();

  v30 = swift_allocObject();
  *(v30 + 16) = sub_13D80;
  *(v30 + 24) = v25;
  v54 = v30;
  v55 = v25;
  v31 = qword_34BF58;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = v58;
  v33 = sub_3ED0(v58, static Logger.default);
  swift_beginAccess();
  v34 = v57;
  v35 = v65;
  (*(v57 + 16))(v65, v33, v32);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v66;
    *(v38 + 4) = sub_3F08(v66, v19, &v68);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_3F08(0x656D6F5379616C50, 0xED0000676E696874, &v68);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v65, v32);
  }

  else
  {

    (*(v34 + 8))(v35, v32);
    v39 = v66;
  }

  v68 = v39;
  v69 = v19;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x656D6F5379616C50;
  v71._object = 0xED0000676E696874;
  sub_2CE350(v71);
  v40 = v68;
  v41 = v69;
  v42 = sub_2CB460();
  if (!v42)
  {
    sub_2CB180();
    v42 = sub_2CB170();
  }

  v43 = v42;
  v44 = v56;
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_13DB4;
  v45[4] = v54;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v48 = v61;
  v47 = v62;
  *(&v53 - 10) = v59;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = v47;
  *(&v53 - 7) = v63;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v40;
  v50 = v41;
  v51 = sub_3E06C;
  v52 = v45;

  sub_2CB0F0();

  return (*(v44 + 8))(v67, v64);
}

uint64_t sub_23FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0520;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_253584;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000010;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000010, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000010;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_240574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0500;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000013;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000013, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000013;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_240C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E04E0;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000015;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000015, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000015;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_2412CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E04C0;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000014;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000014, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000014;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_241978(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v60 = v15;
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v51 = v10;
  v21 = *(v10 + 32);
  v58 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v52;
  v22[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v16;
  *(v23 + 32) = v16;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000013;
  v52 = 0x80000000002E04A0;
  *(v23 + 80) = 0x80000000002E04A0;

  v47 = v23;
  LOBYTE(v46) = 2;
  v45 = 125;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000013, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_241FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0480;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000014;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000014, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000014;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24267C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "FollowUpFailed");
  *(v23 + 87) = -18;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x7055776F6C6C6F46, 0xEE0064656C696146, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x7055776F6C6C6F46;
  v67._object = 0xEE0064656C696146;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_242D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0460;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000016;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000016, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000016;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_243394(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v136 = a5;
  v135 = a4;
  v131 = a3;
  v125 = sub_2CE150();
  v124 = *(v125 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v125);
  v121 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2CE180();
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  __chkstk_darwin(v123);
  v120 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v133 = &v118 - v20;
  __chkstk_darwin(v19);
  v139 = &v118 - v21;
  v22 = sub_2CDFD0();
  v142 = *(v22 - 8);
  v143 = v22;
  v23 = *(v142 + 64);
  v24 = __chkstk_darwin(v22);
  v25 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v141 = &v118 - v26;
  sub_2CCF90();
  v27 = sub_2CBDB0();

  v28 = "HandleFailureThirdParty";
  v132 = v27;
  if (v27)
  {
    v28 = "HandleFailureFirstParty";
  }

  v129 = (v28 - 32) | 0x8000000000000000;
  v130 = a2;
  v29 = sub_2CCF90();
  v31 = 0x416E776F6E6B6E55;
  if (v30)
  {
    v31 = v29;
  }

  v138 = v31;
  v32 = 0xEA00000000007070;
  if (v30)
  {
    v32 = v30;
  }

  v140 = v32;
  v156 = a1;
  v33 = sub_2CC230();

  v137 = v33;
  v34 = sub_2CC200();
  v36 = *(a1 + 16);
  v134 = a1;
  if (!v36)
  {

    goto LABEL_11;
  }

  sub_4F538(v34, v35);
  v38 = v37;

  v145 = a1;
  if ((v38 & 1) == 0)
  {
LABEL_11:
    v155 = &type metadata for String;
    *&v154 = v138;
    *(&v154 + 1) = v140;

    v39 = sub_2CC200();
    sub_270DC4(&v154, v39, v40, &aBlock);

    sub_30B8(&aBlock, &qword_34CEA0, &qword_2D0FC0);
    v145 = v156;
  }

  v119 = v18;
  v146 = v14;
  v144 = v13;
  v41 = v6[5];
  v127 = v6[4];
  v42 = v6[6];
  v43 = v143;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v44 = qword_35F760;
  v45 = v141;
  sub_2CDFB0();
  v46 = v142;
  (*(v142 + 16))(v25, v45, v43);
  v47 = (*(v46 + 80) + 33) & ~*(v46 + 80);
  v48 = swift_allocObject();
  v49 = v43;
  v50 = v48;
  *(v48 + 16) = "catServiceExecute";
  *(v48 + 24) = 17;
  *(v48 + 32) = 2;
  (*(v46 + 32))(v48 + v47, v25, v49);
  v51 = (v50 + ((v23 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  v52 = v136;
  *v51 = v135;
  v51[1] = v52;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2D0E40;
  *(v53 + 56) = &type metadata for String;
  v54 = sub_1087C();
  v126 = v41;
  *(v53 + 32) = v41;
  *(v53 + 40) = v42;
  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v54;
  *(v53 + 64) = v54;
  *(v53 + 72) = 0xD000000000000017;
  v55 = v129;
  *(v53 + 80) = v129;

  v117 = v53;
  LOBYTE(v116) = 2;
  v115 = 125;
  sub_2CDF90();

  v56 = swift_allocObject();
  *(v56 + 16) = sub_13D80;
  *(v56 + 24) = v50;
  v57 = qword_34BF58;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = v144;
  v59 = sub_3ED0(v144, static Logger.default);
  swift_beginAccess();
  v60 = v146;
  v61 = *(v146 + 16);
  v62 = v139;
  v136 = v59;
  v128 = v146 + 16;
  v135 = v61;
  v61(v139, v59, v58);

  v63 = sub_2CDFE0();
  v64 = sub_2CE660();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v65 = 136315394;
    v66 = v126;
    *(v65 + 4) = sub_3F08(v126, v42, &aBlock);
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_3F08(0xD000000000000017, v55, &aBlock);
    _os_log_impl(&dword_0, v63, v64, "Evaluating CAT family:%s id:%s...", v65, 0x16u);
    swift_arrayDestroy();

    v67 = v139;
    v139 = *(v146 + 8);
    (v139)(v67, v58);
  }

  else
  {

    v139 = *(v60 + 8);
    (v139)(v62, v58);
    v66 = v126;
  }

  *&aBlock = v66;
  *(&aBlock + 1) = v42;

  v157._countAndFlagsBits = 35;
  v157._object = 0xE100000000000000;
  sub_2CE350(v157);
  v158._countAndFlagsBits = 0xD000000000000017;
  v158._object = v55;
  sub_2CE350(v158);
  v68 = aBlock;
  v69 = sub_2CB460();
  if (!v69)
  {
    sub_2CB180();
    v69 = sub_2CB170();
  }

  v70 = v69;
  v71 = swift_allocObject();
  v71[2] = v70;
  v71[3] = sub_13DB4;
  v71[4] = v56;
  v72 = sub_2CB180();
  __chkstk_darwin(v72);
  v73 = v145;
  *(&v118 - 10) = v127;
  *(&v118 - 9) = v73;
  v74 = v131;
  *(&v118 - 8) = v130;
  *(&v118 - 7) = v74;
  *(&v118 - 6) = 0;
  *(&v118 - 5) = v68;
  v115 = *(&v68 + 1);
  v116 = sub_3E06C;
  v117 = v71;

  sub_2CB0F0();

  (*(v142 + 8))(v141, v143);
  v75 = v133;
  v76 = v144;
  v135(v133, v136, v144);

  v77 = sub_2CDFE0();
  v78 = sub_2CE690();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&aBlock = v80;
    *v79 = 136315138;
    v81 = sub_3F08(0xD000000000000017, v55, &aBlock);

    *(v79 + 4) = v81;
    _os_log_impl(&dword_0, v77, v78, "PlayMediaCatDialogService#makeFailureHandlingIntentDialog, %s", v79, 0xCu);
    sub_306C(v80);
  }

  else
  {
  }

  v82 = v75;
  v83 = v139;
  (v139)(v82, v76);
  v84 = v134;
  if ((v132 & 1) == 0)
  {
    if (*(v134 + 16) && (v98 = sub_4F538(0xD000000000000012, 0x80000000002DEA70), (v99 & 1) != 0) && (sub_E2FC(*(v84 + 56) + 32 * v98, &aBlock), (swift_dynamicCast() & 1) != 0))
    {
      v100 = v147;
    }

    else
    {

      v100 = 0;
    }

    *&aBlock = v100;
    v101 = sub_2CEE70();
    v103 = v102;
    v104 = sub_2CBA10();
    v105 = swift_allocObject();
    v106 = v140;
    v105[2] = v138;
    v105[3] = v106;
    v105[4] = v101;
    v105[5] = v103;
    v152 = sub_253558;
    v153 = v105;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v150 = sub_A4294;
    v151 = &unk_33B1D0;
    v107 = _Block_copy(&aBlock);
    v108 = v120;
    sub_2CE160();
    v147 = _swiftEmptyArrayStorage;
    sub_10101C();
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v109 = v121;
    v110 = v125;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v107);

    goto LABEL_39;
  }

  if (*(v84 + 16))
  {
    v85 = sub_4F538(0x457363697274654DLL, 0xEC000000726F7272);
    if (v86)
    {
      sub_E2FC(*(v84 + 56) + 32 * v85, &aBlock);
      if (swift_dynamicCast())
      {
        v88 = v147;
        v87 = v148;
        v89 = HIBYTE(v148) & 0xF;
        if ((v148 & 0x2000000000000000) == 0)
        {
          v89 = v147 & 0xFFFFFFFFFFFFLL;
        }

        if (v89)
        {
          v90 = v119;
          v135(v119, v136, v76);

          v91 = sub_2CDFE0();
          v92 = sub_2CE680();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = v76;
            v95 = swift_slowAlloc();
            *&aBlock = v95;
            *v93 = 136315138;
            *(v93 + 4) = sub_3F08(v88, v87, &aBlock);
            _os_log_impl(&dword_0, v91, v92, "Submitting FirstParty error: %s", v93, 0xCu);
            sub_306C(v95);

            v96 = v90;
            v97 = v94;
          }

          else
          {

            v96 = v90;
            v97 = v76;
          }

          v83(v96, v97);
          v112 = sub_2CBA10();
          v113 = swift_allocObject();
          *(v113 + 16) = v88;
          *(v113 + 24) = v87;
          v152 = sub_25357C;
          v153 = v113;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v150 = sub_A4294;
          v151 = &unk_33B220;
          v114 = _Block_copy(&aBlock);
          v108 = v120;
          sub_2CE160();
          v147 = _swiftEmptyArrayStorage;
          sub_10101C();
          sub_20410(&qword_34DD48, &qword_2D5F80);
          sub_7DDE8();
          v109 = v121;
          v110 = v125;
          sub_2CEC10();
          sub_2CE9C0();
          _Block_release(v114);

LABEL_39:
          (*(v124 + 8))(v109, v110);
          (*(v122 + 8))(v108, v123);
        }
      }
    }
  }

  return sub_2CC1E0();
}

uint64_t sub_2443F0(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  v2 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v15 - v4;
  v6 = sub_2C9C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB4A0();
  sub_2CB490();
  (*(v7 + 104))(v10, enum case for ActivityType.failed(_:), v6);
  v11 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v12 = sub_2C98F0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  sub_2CB470();

  sub_30B8(v5, &qword_34CB78, &unk_2D0D80);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_244620(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20._countAndFlagsBits = a3;
  v20._object = a4;
  v19 = a1;
  v5 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_2C9C20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB4A0();
  sub_2CB490();
  (*(v10 + 104))(v13, enum case for ActivityType.failed(_:), v9);
  v14 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v15 = sub_2C98F0();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = v19;
  v22 = a2;

  v23._countAndFlagsBits = 61;
  v23._object = 0xE100000000000000;
  sub_2CE350(v23);

  sub_2CE350(v20);

  sub_2CB470();

  sub_30B8(v8, &qword_34CB78, &unk_2D0D80);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2448A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_244F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E03E0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2455A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E03C0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000014;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000014, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000014;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_245C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E03A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001CLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001CLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001CLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2462B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0370;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000022;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000022, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000022;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_246934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0350;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_246FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_247CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_248344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0300;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000043;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000043, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000043;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E02E0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000013;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000013, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000013;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_2496D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E02B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000021;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000021;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_249D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0270;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000035;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000035, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000035;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0240;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0210;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002BLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v54 = a1;
  v5 = sub_2CE000();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v56 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v47 - v13;
  v15 = v3[5];
  v52 = v3[4];
  v16 = v3[6];
  v53 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v57 = v14;
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v48 = v9;
  v21 = *(v9 + 32);
  v55 = v8;
  v21(v20 + v18, v12);
  v22 = (v20 + v19);
  *v22 = v49;
  v22[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v49 = v15;
  *(v23 + 32) = v15;
  *(v23 + 40) = v16;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "NoSpeakerFound");
  *(v23 + 87) = -18;

  v46 = v23;
  LOBYTE(v45) = 2;
  v44 = 125;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v47[0] = v25;
  v47[1] = v20;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v51;
  v28 = sub_3ED0(v51, static Logger.default);
  swift_beginAccess();
  v29 = v50;
  v30 = v56;
  (*(v50 + 16))(v56, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v49;
    *(v33 + 4) = sub_3F08(v49, v16, &v58);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x656B616570536F4ELL, 0xEE00646E756F4672, &v58);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v56, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v34 = v49;
  }

  v58 = v34;
  v59 = v16;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x656B616570536F4ELL;
  v61._object = 0xEE00646E756F4672;
  sub_2CE350(v61);
  v36 = v58;
  v35 = v59;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v47[0];
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v53;
  v47[-10] = v52;
  v47[-9] = v41;
  v42 = v54;
  v47[-8] = 0;
  v47[-7] = v42;
  v47[-6] = 0;
  v47[-5] = v36;
  v44 = v35;
  v45 = sub_3E06C;
  v46 = v39;

  sub_2CB0F0();

  return (*(v48 + 8))(v57, v55);
}

uint64_t sub_24B760(unint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = v3[5];
  v53 = v3[4];
  v47 = v3[6];
  v59 = 0x80000000002E01F0;
  v54 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v56 = v9;
  v57 = v8;
  (*(v9 + 32))(v19 + v17, v12, v8);
  v20 = (v19 + v18);
  *v20 = v50;
  v20[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v49 = v15;
  *(v21 + 32) = v15;
  v23 = v47;
  *(v21 + 40) = v47;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = 0xD000000000000015;
  *(v21 + 80) = v59;

  v46 = v21;
  LOBYTE(v45) = 2;
  v44 = 125;
  v50 = v14;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v19;
  v48 = v24;
  v25 = qword_34BF58;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v52;
  v27 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v28 = v51;
  v29 = v58;
  (*(v51 + 16))(v58, v27, v26);

  v30 = sub_2CDFE0();
  v31 = sub_2CE660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = v49;
    *(v32 + 4) = sub_3F08(v49, v23, &v60);
    *(v32 + 12) = 2080;
    v34 = v59;
    *(v32 + 14) = sub_3F08(0xD000000000000015, v59, &v60);
    _os_log_impl(&dword_0, v30, v31, "Evaluating CAT family:%s id:%s...", v32, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v58, v26);
  }

  else
  {

    (*(v28 + 8))(v29, v26);
    v34 = v59;
    v33 = v49;
  }

  v60 = v33;
  v61 = v23;

  v62._countAndFlagsBits = 35;
  v62._object = 0xE100000000000000;
  sub_2CE350(v62);
  v63._countAndFlagsBits = 0xD000000000000015;
  v63._object = v34;
  sub_2CE350(v63);
  v36 = v60;
  v35 = v61;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v48;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v41;
  v42 = v55;
  *(&v47 - 8) = 0;
  *(&v47 - 7) = v42;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v35;
  v45 = sub_3E06C;
  v46 = v39;

  sub_2CB0F0();

  return (*(v56 + 8))(v50, v57);
}

uint64_t sub_24BDEC(unint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = v3[5];
  v53 = v3[4];
  v47 = v3[6];
  v59 = 0x80000000002E01D0;
  v54 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v56 = v9;
  v57 = v8;
  (*(v9 + 32))(v19 + v17, v12, v8);
  v20 = (v19 + v18);
  *v20 = v50;
  v20[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v49 = v15;
  *(v21 + 32) = v15;
  v23 = v47;
  *(v21 + 40) = v47;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = 0xD000000000000011;
  *(v21 + 80) = v59;

  v46 = v21;
  LOBYTE(v45) = 2;
  v44 = 125;
  v50 = v14;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v19;
  v48 = v24;
  v25 = qword_34BF58;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v52;
  v27 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v28 = v51;
  v29 = v58;
  (*(v51 + 16))(v58, v27, v26);

  v30 = sub_2CDFE0();
  v31 = sub_2CE660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = v49;
    *(v32 + 4) = sub_3F08(v49, v23, &v60);
    *(v32 + 12) = 2080;
    v34 = v59;
    *(v32 + 14) = sub_3F08(0xD000000000000011, v59, &v60);
    _os_log_impl(&dword_0, v30, v31, "Evaluating CAT family:%s id:%s...", v32, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v58, v26);
  }

  else
  {

    (*(v28 + 8))(v29, v26);
    v34 = v59;
    v33 = v49;
  }

  v60 = v33;
  v61 = v23;

  v62._countAndFlagsBits = 35;
  v62._object = 0xE100000000000000;
  sub_2CE350(v62);
  v63._countAndFlagsBits = 0xD000000000000011;
  v63._object = v34;
  sub_2CE350(v63);
  v36 = v60;
  v35 = v61;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v48;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v41;
  v42 = v55;
  *(&v47 - 8) = 0;
  *(&v47 - 7) = v42;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v35;
  v45 = sub_3E06C;
  v46 = v39;

  sub_2CB0F0();

  return (*(v56 + 8))(v50, v57);
}

uint64_t sub_24C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E01A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24CAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = v5[5];
  v60 = v5[4];
  v55 = v18;
  v19 = v5[6];
  v67 = 0x80000000002E0180;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_34BF98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v23 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v68 = v17;
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v57 = v12;
  v26 = *(v12 + 32);
  v65 = v11;
  v26(v25 + v23, v15);
  v27 = (v25 + v24);
  *v27 = sub_2535A8;
  v27[1] = v20;
  v61 = v20;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v19;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000013;
  *(v28 + 80) = v67;

  v53 = v28;
  LOBYTE(v52) = 2;
  v51 = 125;
  sub_2CDF90();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v19, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000013, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v19;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000013;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_24D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0160;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000011;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000011, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000011;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24D82C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "SafetySelfHarm");
  *(v23 + 87) = -18;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x6553797465666153, 0xEE006D726148666CLL, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x6553797465666153;
  v67._object = 0xEE006D726148666CLL;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_24DEC0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v60 = v15;
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v51 = v10;
  v21 = *(v10 + 32);
  v58 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v52;
  v22[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v16;
  *(v23 + 32) = v16;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000013;
  v52 = 0x80000000002E0140;
  *(v23 + 80) = 0x80000000002E0140;

  v47 = v23;
  LOBYTE(v46) = 2;
  v45 = 125;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000013, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_24E540(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "ReLoginToMusic");
  *(v23 + 87) = -18;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x546E69676F4C6552, 0xEE00636973754D6FLL, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x546E69676F4C6552;
  v67._object = 0xEE00636973754D6FLL;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_24EBD4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v60 = v15;
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v51 = v10;
  v21 = *(v10 + 32);
  v58 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v52;
  v22[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v16;
  *(v23 + 32) = v16;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000018;
  v52 = 0x80000000002E0120;
  *(v23 + 80) = 0x80000000002E0120;

  v47 = v23;
  LOBYTE(v46) = 2;
  v45 = 125;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000018, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000018;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_24F254(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v60 = v15;
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v51 = v10;
  v21 = *(v10 + 32);
  v58 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v52;
  v22[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v16;
  *(v23 + 32) = v16;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000021;
  v52 = 0x80000000002E00F0;
  *(v23 + 80) = 0x80000000002E00F0;

  v47 = v23;
  LOBYTE(v46) = 2;
  v45 = 125;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000021, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000021;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_24F8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E00D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ELL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ELL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ELL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24FF58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = v5[5];
  v56 = v5[4];
  v63 = v17;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v11;
  v21 = *(v11 + 32);
  v61 = v10;
  v21(v20 + v19, v14);
  v22 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v53;
  v22[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "WifiMismatch");
  *(v23 + 85) = 0;
  *(v23 + 86) = -5120;

  v48 = v23;
  LOBYTE(v47) = 2;
  v46 = 125;
  v53 = v16;
  sub_2CDF90();

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v20;
  v51 = v26;
  v52 = v20;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x6D73694D69666957, 0xEC00000068637461, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x6D73694D69666957;
  v67._object = 0xEC00000068637461;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_2505E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E00B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001BLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}