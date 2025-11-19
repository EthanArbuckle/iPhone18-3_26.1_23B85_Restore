uint64_t sub_1000541AC()
{

  return _swift_task_switch(sub_100054238, 0, 0);
}

uint64_t sub_100054238()
{
  v1 = 0;
  v36 = " - defaultResult() -> ";
  do
  {
    v2 = *(&off_100118F38 + v1 + 32);
    v3 = WLKSystemSettingsDebugOverride();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 BOOLValue];

      if (v5)
      {
        sub_1000D1A0C();
        goto LABEL_16;
      }
    }

    if (v2 <= 8)
    {
      if (v2 < 7)
      {
        goto LABEL_16;
      }

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v14 = sub_1000D35FC();
      v15 = _CTServerConnectionCreateAndLaunchWithIdentifier();

      if (!v15)
      {
        goto LABEL_2;
      }

      *(v0 + 56) = 0;
      _CTServerConnectionGetCellularDataIsEnabled();
      if (*(v0 + 56))
      {
        goto LABEL_16;
      }
    }

    else if (v2 > 13)
    {
      if (v2 <= 15)
      {
        if (v2 == 14)
        {
          sub_1000D1A7C();
          v13 = sub_1000D1A6C();
          if (!v13)
          {
            goto LABEL_3;
          }

          if (sub_1000D2CAC())
          {
            goto LABEL_3;
          }
        }

        else
        {
          v22 = [objc_opt_self() defaultStore];
          if (!v22)
          {
            goto LABEL_56;
          }

          v23 = v22;
          v24 = [v22 groupID];

          if (v24)
          {

            goto LABEL_3;
          }
        }

        goto LABEL_16;
      }

      if (v2 != 16)
      {
        if (v2 == 17)
        {
          v8 = [objc_opt_self() sharedPreferences];
          v9 = [v8 hasAVAdapterEvenBeenConnected];
          goto LABEL_37;
        }

LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100053C4C(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v11 = *(&_swiftEmptyArrayStorage + 2);
        v10 = *(&_swiftEmptyArrayStorage + 3);
        if (v11 >= v10 >> 1)
        {
          sub_100053C4C((v10 > 1), v11 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
        *(&_swiftEmptyArrayStorage + v11 + 32) = v2;
        goto LABEL_3;
      }

      v19 = [objc_opt_self() defaultStore];
      if (!v19)
      {
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v20 = v19;
      v21 = [v19 groupID];

      if (v21)
      {

        goto LABEL_16;
      }
    }

    else
    {
      if (v2 > 11)
      {
        sub_1000D1A7C();
        v12 = sub_1000D1A6C();
        if (!v12)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      if (v2 == 9)
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        v16 = sub_1000D35FC();
        v17 = _CTServerConnectionCreateAndLaunchWithIdentifier();

        if (!v17)
        {
LABEL_2:
          sub_1000D1A0C();
          goto LABEL_3;
        }

        *(v0 + 56) = 0;
        _CTServerConnectionGetCellularDataIsEnabled();
        if (*(v0 + 56))
        {
          v8 = [objc_opt_self() sharedPreferences];
          v9 = [v8 useCellularDataPlayback];
          goto LABEL_37;
        }
      }

      else
      {
        if (v2 != 10)
        {
          goto LABEL_16;
        }

        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        v6 = sub_1000D35FC();
        v7 = _CTServerConnectionCreateAndLaunchWithIdentifier();

        if (!v7)
        {
          goto LABEL_2;
        }

        *(v0 + 56) = 0;
        _CTServerConnectionGetCellularDataIsEnabled();
        if (*(v0 + 56))
        {
          v8 = [objc_opt_self() sharedPreferences];
          v9 = [v8 useCellularDataDownload];
LABEL_37:
          v18 = v9;

          if ((v18 & 1) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_3:
    ++v1;
  }

  while (v1 != 19);
  v25 = *(&_swiftEmptyArrayStorage + 2);
  if (v25)
  {
    sub_100053C2C(0, v25, 0);
    v26 = 32;
    v27 = &_swiftEmptyArrayStorage;
    do
    {
      v28 = *(&_swiftEmptyArrayStorage + v26);
      sub_100006334(&qword_1001250C0);
      swift_allocObject();
      v29 = sub_1000D177C();
      v37 = v27;
      v31 = v27[2];
      v30 = v27[3];
      if (v31 >= v30 >> 1)
      {
        v33 = v29;
        sub_100053C2C((v30 > 1), v31 + 1, 1);
        v29 = v33;
        v27 = v37;
      }

      v27[2] = v31 + 1;
      v32 = &v27[2 * v31];
      v32[32] = v28;
      *(v32 + 5) = v29;
      ++v26;
      --v25;
    }

    while (v25);
  }

  else
  {

    v27 = &_swiftEmptyArrayStorage;
  }

  sub_1000D38DC(60);
  v39._countAndFlagsBits = 0xD00000000000003ALL;
  v39._object = 0x80000001000D9480;
  sub_1000D366C(v39);
  v40._countAndFlagsBits = sub_1000D36CC();
  sub_1000D366C(v40);

  sub_1000D1A0C();

  v34 = *(v0 + 8);

  return v34(v27);
}

uint64_t sub_1000548C8(uint64_t a1)
{
  *(v1 + 56) = a1;

  return _swift_task_switch(sub_100054958, 0, 0);
}

id sub_100054958()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_46:
    v27 = *(&_swiftEmptyArrayStorage + 2);
    if (v27)
    {
      sub_100053C2C(0, v27, 0);
      v28 = 32;
      v29 = &_swiftEmptyArrayStorage;
      do
      {
        v30 = *(&_swiftEmptyArrayStorage + v28);
        sub_100006334(&qword_1001250C0);
        swift_allocObject();
        v31 = sub_1000D177C();
        v38 = v29;
        v33 = v29[2];
        v32 = v29[3];
        if (v33 >= v32 >> 1)
        {
          v35 = v31;
          sub_100053C2C((v32 > 1), v33 + 1, 1);
          v31 = v35;
          v29 = v38;
        }

        v29[2] = v33 + 1;
        v34 = &v29[2 * v33];
        v34[32] = v30;
        *(v34 + 5) = v31;
        ++v28;
        --v27;
      }

      while (v27);
    }

    else
    {

      v29 = &_swiftEmptyArrayStorage;
    }

    sub_1000D38DC(70);
    v40._countAndFlagsBits = 0xD00000000000003DLL;
    v40._object = 0x80000001000D94C0;
    sub_1000D366C(v40);
    v41._countAndFlagsBits = sub_1000D36CC();
    sub_1000D366C(v41);

    v42._countAndFlagsBits = 0x203E2D2029;
    v42._object = 0xE500000000000000;
    sub_1000D366C(v42);
    v43._countAndFlagsBits = sub_1000D36CC();
    sub_1000D366C(v43);

    sub_1000D1A0C();

    v36 = *(v0 + 8);

    return v36(v29);
  }

  v3 = (v1 + 32);
  v37 = " - defaultResult() -> ";
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    v6 = WLKSystemSettingsDebugOverride();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 BOOLValue];

      if (v8)
      {
        sub_1000D1A0C();
LABEL_17:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100053C4C(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v14 = *(&_swiftEmptyArrayStorage + 2);
        v13 = *(&_swiftEmptyArrayStorage + 3);
        if (v14 >= v13 >> 1)
        {
          sub_100053C4C((v13 > 1), v14 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v14 + 1;
        *(&_swiftEmptyArrayStorage + v14 + 32) = v4;
        goto LABEL_4;
      }
    }

    if (v4 <= 8)
    {
      if (v4 < 7)
      {
        goto LABEL_17;
      }

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v17 = sub_1000D35FC();
      v18 = _CTServerConnectionCreateAndLaunchWithIdentifier();

      if (!v18)
      {
LABEL_3:
        sub_1000D1A0C();
        goto LABEL_4;
      }

      *(v0 + 64) = 0;
      _CTServerConnectionGetCellularDataIsEnabled();
      if (*(v0 + 64))
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }

    if (v4 > 13)
    {
      break;
    }

    if (v4 <= 11)
    {
      if (v4 == 9)
      {
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        v19 = sub_1000D35FC();
        v20 = _CTServerConnectionCreateAndLaunchWithIdentifier();

        if (!v20)
        {
          goto LABEL_3;
        }

        *(v0 + 64) = 0;
        _CTServerConnectionGetCellularDataIsEnabled();
        if (!*(v0 + 64))
        {
          goto LABEL_4;
        }

        v11 = [objc_opt_self() sharedPreferences];
        v12 = [v11 useCellularDataPlayback];
      }

      else
      {
        if (v4 != 10)
        {
          goto LABEL_17;
        }

        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        v9 = sub_1000D35FC();
        v10 = _CTServerConnectionCreateAndLaunchWithIdentifier();

        if (!v10)
        {
          goto LABEL_3;
        }

        *(v0 + 64) = 0;
        _CTServerConnectionGetCellularDataIsEnabled();
        if (!*(v0 + 64))
        {
          goto LABEL_4;
        }

        v11 = [objc_opt_self() sharedPreferences];
        v12 = [v11 useCellularDataDownload];
      }

      goto LABEL_38;
    }

    sub_1000D1A7C();
    v15 = sub_1000D1A6C();
    if (v15)
    {

      goto LABEL_17;
    }

LABEL_4:
    if (!--v2)
    {
      goto LABEL_46;
    }
  }

  if (v4 <= 15)
  {
    if (v4 == 14)
    {
      sub_1000D1A7C();
      v16 = sub_1000D1A6C();
      if (v16)
      {

        if ((sub_1000D2CAC() & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      result = [objc_opt_self() defaultStore];
      if (!result)
      {
        goto LABEL_57;
      }

      v25 = result;
      v26 = [result groupID];

      if (!v26)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

  if (v4 != 16)
  {
    if (v4 != 17)
    {
      goto LABEL_17;
    }

    v11 = [objc_opt_self() sharedPreferences];
    v12 = [v11 hasAVAdapterEvenBeenConnected];
LABEL_38:
    v21 = v12;

    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v23 = result;
    v24 = [result groupID];

    if (v24)
    {

      goto LABEL_17;
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_100055024()
{

  return _swift_task_switch(sub_1000550B0, 0, 0);
}

id sub_1000550B0()
{
  v1 = 0;
  while (1)
  {
    LODWORD(v2) = *(&off_100118F38 + v1 + 32);
    v3 = WLKSystemSettingsDebugOverride();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 BOOLValue];

      if (v5)
      {
        sub_1000D1A0C();
        goto LABEL_43;
      }
    }

    if (v2 > 11)
    {
      break;
    }

    if (v2 <= 8)
    {
      if ((v2 - 7) >= 2)
      {
        goto LABEL_43;
      }

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v9 = sub_1000D35FC();
      v10 = _CTServerConnectionCreateAndLaunchWithIdentifier();

      if (v10)
      {
        *(v0 + 56) = 0;
        _CTServerConnectionGetCellularDataIsEnabled();
        if (*(v0 + 56))
        {
          goto LABEL_43;
        }

        goto LABEL_3;
      }

LABEL_2:
      sub_1000D1A0C();
      goto LABEL_3;
    }

    if (v2 == 9)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v19 = sub_1000D35FC();
      v20 = _CTServerConnectionCreateAndLaunchWithIdentifier();

      if (!v20)
      {
        goto LABEL_2;
      }

      *(v0 + 56) = 0;
      _CTServerConnectionGetCellularDataIsEnabled();
      if (*(v0 + 56))
      {
        v21 = [objc_opt_self() sharedPreferences];
        v22 = [v21 useCellularDataPlayback];

        if (v22)
        {
          LODWORD(v2) = 9;
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v2 != 10)
      {
        goto LABEL_43;
      }

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v12 = sub_1000D35FC();
      v13 = _CTServerConnectionCreateAndLaunchWithIdentifier();

      if (!v13)
      {
        goto LABEL_2;
      }

      *(v0 + 56) = 0;
      _CTServerConnectionGetCellularDataIsEnabled();
      if (*(v0 + 56))
      {
        v14 = [objc_opt_self() sharedPreferences];
        v15 = [v14 useCellularDataDownload];

        if (v15)
        {
          LODWORD(v2) = 10;
          goto LABEL_43;
        }
      }
    }

LABEL_3:
    if (++v1 == 19)
    {
      v2 = 0;
      v25 = 0;
      goto LABEL_44;
    }
  }

  if (v2 <= 14)
  {
    if ((v2 - 12) >= 2)
    {
      sub_1000D1A7C();
      v18 = sub_1000D1A6C();
      if (v18)
      {

        if ((sub_1000D2CAC() & 1) == 0)
        {
          LODWORD(v2) = 14;
          goto LABEL_43;
        }
      }
    }

    else
    {
      sub_1000D1A7C();
      v11 = sub_1000D1A6C();
      if (v11)
      {

        goto LABEL_43;
      }
    }

    goto LABEL_3;
  }

  if (v2 > 16)
  {
    if (v2 != 17)
    {
      goto LABEL_43;
    }

    v16 = [objc_opt_self() sharedPreferences];
    v17 = [v16 hasAVAdapterEvenBeenConnected];

    if (v17)
    {
      LODWORD(v2) = 17;
      goto LABEL_43;
    }

    goto LABEL_3;
  }

  if (v2 != 15)
  {
    result = [objc_opt_self() defaultStore];
    if (!result)
    {
      goto LABEL_48;
    }

    v23 = result;
    v24 = [result groupID];

    if (v24)
    {

      LODWORD(v2) = 16;
      goto LABEL_43;
    }

    goto LABEL_3;
  }

  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result groupID];

  if (v8)
  {

    goto LABEL_3;
  }

  LODWORD(v2) = 15;
LABEL_43:
  sub_100006334(&qword_1001250C0);
  swift_allocObject();
  v25 = sub_1000D177C();
  v2 = v2;
LABEL_44:
  sub_1000D38DC(56);
  v28._countAndFlagsBits = 0xD000000000000036;
  v28._object = 0x80000001000D9370;
  sub_1000D366C(v28);
  *(v0 + 16) = v2;
  *(v0 + 24) = v25;

  sub_100006334(&qword_1001250C8);
  v29._countAndFlagsBits = sub_1000D361C();
  sub_1000D366C(v29);

  sub_1000D1A0C();

  v26 = *(v0 + 8);

  return v26(v2, v25);
}

uint64_t sub_10005568C()
{
  sub_100053C2C(0, 19, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  do
  {
    v3 = *(&off_100118F38 + v1 + 32);
    sub_100006334(&qword_1001250C0);
    swift_allocObject();
    v4 = sub_1000D177C();
    v11 = v2;
    v6 = v2[2];
    v5 = v2[3];
    if (v6 >= v5 >> 1)
    {
      v8 = v4;
      sub_100053C2C((v5 > 1), v6 + 1, 1);
      v4 = v8;
      v2 = v11;
    }

    ++v1;
    v2[2] = v6 + 1;
    v7 = &v2[2 * v6];
    v7[32] = v3;
    *(v7 + 5) = v4;
  }

  while (v1 != 19);
  sub_1000D38DC(54);
  v13._object = 0x80000001000D9440;
  v13._countAndFlagsBits = 0xD000000000000034;
  sub_1000D366C(v13);
  v14._countAndFlagsBits = sub_1000D36CC();
  sub_1000D366C(v14);

  sub_1000D1A0C();

  v9 = *(v0 + 8);

  return v9(v2);
}

uint64_t sub_100055868()
{
  v0 = sub_1000D168C();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v5;
  v6 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_1000D189C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D1A2C();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000D35EC();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000D18BC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v20[1] = sub_100006334(&qword_100125088);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_1000D18CC();
  (*(v16 + 56))(v8, 1, 1, v15);
  v17 = sub_1000D150C();
  v26 = 0;
  v27 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v21, 1, 1, v17);
  v18(v22, 1, 1, v17);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10004BF00();
  return sub_1000D157C();
}

unint64_t sub_100055CD8()
{
  result = qword_100125090;
  if (!qword_100125090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125090);
  }

  return result;
}

unint64_t sub_100055D2C()
{
  result = qword_100125098;
  if (!qword_100125098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125098);
  }

  return result;
}

unint64_t sub_100055D80()
{
  result = qword_1001250A0;
  if (!qword_1001250A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001250A0);
  }

  return result;
}

uint64_t sub_100055DF8()
{
  v0 = sub_1000D35FC();
  v1 = _CTServerConnectionCreateAndLaunchWithIdentifier();

  if (v1)
  {
    _CTServerConnectionGetCellularDataIsEnabled();
  }

  else
  {
    sub_1000D1A0C();
  }

  return 0;
}

void sub_100055F00()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    sub_10003EF84();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SportsWidgetGenericClockViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_1000D385C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100055FC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1000D1DBC() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1000D1DDC() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = sub_1000D19FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  if (v16)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = v10;
  }

  else
  {
    v20 = v10 + 1;
  }

  if (v20 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v20;
  }

  v22 = 2;
  if (!v13)
  {
    v22 = 3;
  }

  if (v16)
  {
    v23 = *(v15 + 64);
  }

  else
  {
    v23 = *(v15 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(v8 + 80) & 0xF8 | 7;
  v25 = v7 + v24 + 1;
  v26 = v21 + 8;
  v27 = *(v12 + 80);
  v28 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v29 = v27 + 80;
  v30 = v22 + *(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v27 + ((*(*(v11 - 8) + 64) + v27) & ~v27) + ((v27 + 64) & ~v27)) & ~v27);
  v31 = a2 - v19;
  if (a2 <= v19)
  {
    goto LABEL_48;
  }

  v32 = ((v23 + v17 + ((v30 + v17 + ((v29 + ((v26 + (v25 & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & v28)) & ~v17)) & ~v17) + v23;
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_27;
  }

  v36 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v36))
  {
    v34 = *(a1 + v32);
    if (v34)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v36 <= 0xFF)
    {
      if (v36 < 2)
      {
        goto LABEL_48;
      }

LABEL_27:
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_48;
      }

LABEL_35:
      v37 = (v34 - 1) << v33;
      if (v32 > 3)
      {
        v37 = 0;
      }

      if (v32)
      {
        if (v32 <= 3)
        {
          v38 = v32;
        }

        else
        {
          v38 = 4;
        }

        if (v38 > 2)
        {
          if (v38 == 3)
          {
            v39 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v39 = *a1;
          }
        }

        else if (v38 == 1)
        {
          v39 = *a1;
        }

        else
        {
          v39 = *a1;
        }
      }

      else
      {
        v39 = 0;
      }

      return v19 + (v39 | v37) + 1;
    }

    v34 = *(a1 + v32);
    if (*(a1 + v32))
    {
      goto LABEL_35;
    }
  }

LABEL_48:
  v40 = (v26 + ((a1 + v25) & ~v24)) & 0xFFFFFFFFFFFFFFF8;
  if (v19 == 0x7FFFFFFF)
  {
    v41 = *(v40 + 8);
LABEL_56:
    if (v41 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    return (v41 + 1);
  }

  v42 = (v29 + v40) & v28;
  if (v14 < v18)
  {
    v43 = (*(v15 + 48))((v42 + v17 + v30) & ~v17, v16);
    if (v43 >= 2)
    {
      return v43 - 1;
    }

    else
    {
      return 0;
    }
  }

  if ((v13 & 0x80000000) == 0)
  {
    v41 = *(((v29 + v40) & v28) + 8);
    goto LABEL_56;
  }

  v44 = *(v12 + 48);

  return v44((v27 + ((((((v42 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v27);
}

void sub_10005639C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1000D1DBC() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1000D1DDC() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = 0;
  v14 = *(sub_1000D19FC() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = *(*(a4 + 16) - 8);
  v19 = *(v18 + 84);
  v20 = *(v14 + 64);
  v21 = *(v18 + 80);
  v22 = v19 - 1;
  if (!v19)
  {
    v22 = 0;
  }

  if (v22 <= v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v22;
  }

  if (v11)
  {
    v24 = v12;
  }

  else
  {
    v24 = v12 + 1;
  }

  if (v24 <= 8)
  {
    v24 = 8;
  }

  if (v16)
  {
    v25 = v20;
  }

  else
  {
    v25 = v20 + 1;
  }

  v26 = *(v10 + 80) & 0xF8 | 7;
  v27 = v9 + v26 + 1;
  v28 = v24 + 8;
  v29 = (v24 + 8 + (v27 & ~v26)) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v15 + 80);
  v31 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v32 = v30 + 80;
  v33 = (v30 + 80 + v29) & v31;
  v34 = ((v20 + v30) & ~v30) + v20;
  v35 = v25 + ((((v30 + 64) | v30) + v34) & ~v30);
  if (v19)
  {
    v36 = *(v18 + 64);
  }

  else
  {
    v36 = *(v18 + 64) + 1;
  }

  v37 = ((v36 + v21 + ((v35 + 2 + v21 + v33) & ~v21)) & ~v21) + v36;
  v38 = a3 >= v23;
  v39 = a3 - v23;
  if (v39 == 0 || !v38)
  {
LABEL_37:
    if (v23 < a2)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  if (v37 > 3)
  {
    v13 = 1;
    if (v23 < a2)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v40 = ((v39 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
  if (!HIWORD(v40))
  {
    if (v40 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v40 < 2)
    {
      v13 = 0;
    }

    goto LABEL_37;
  }

  v13 = 4;
  if (v23 < a2)
  {
LABEL_38:
    v41 = ~v23 + a2;
    if (v37 >= 4)
    {
      bzero(a1, ((v36 + v21 + ((v35 + 2 + v21 + v33) & ~v21)) & ~v21) + v36);
      *a1 = v41;
      v42 = 1;
      if (v13 > 1)
      {
        goto LABEL_40;
      }

      goto LABEL_84;
    }

    v42 = (v41 >> (8 * v37)) + 1;
    if (v37)
    {
      v44 = v41 & ~(-1 << (8 * v37));
      bzero(a1, v37);
      if (v37 != 3)
      {
        if (v37 == 2)
        {
          *a1 = v44;
          if (v13 > 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          *a1 = v41;
          if (v13 > 1)
          {
LABEL_40:
            if (v13 == 2)
            {
              *&a1[v37] = v42;
            }

            else
            {
              *&a1[v37] = v42;
            }

            return;
          }
        }

LABEL_84:
        if (v13)
        {
          a1[v37] = v42;
        }

        return;
      }

      *a1 = v44;
      a1[2] = BYTE2(v44);
    }

    if (v13 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_27:
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v37] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *&a1[v37] = 0;
  }

  else if (v13)
  {
    a1[v37] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  v43 = (v28 + (&a1[v27] & ~v26)) & 0xFFFFFFFFFFFFFFF8;
  if (v23 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v43 + 72) = 0;
      *(v43 + 56) = 0u;
      *(v43 + 40) = 0u;
      *(v43 + 24) = 0u;
      *(v43 + 8) = 0u;
      *v43 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v43 + 8) = (a2 - 1);
    }

    return;
  }

  v45 = (v32 + v43) & v31;
  if (v17 >= v22)
  {
    if (v17 >= a2)
    {
      if ((v16 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *v45 = a2 & 0x7FFFFFFF;
          *(((v32 + v43) & v31) + 8) = 0;
        }

        else
        {
          *(((v32 + v43) & v31) + 8) = (a2 - 1);
        }

        return;
      }

      v45 = (v30 + ((((((v45 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v30;
      if (v16 >= a2)
      {
        v53 = *(v15 + 56);

        v53(v45, a2);
        return;
      }

      if (v34 <= 3)
      {
        v50 = ~(-1 << (8 * v34));
      }

      else
      {
        v50 = -1;
      }

      if (!v34)
      {
        return;
      }

      v51 = ~v16;
    }

    else
    {
      v34 = (v35 + 2);
      if (v34 <= 3)
      {
        v50 = ~(-1 << (8 * (v35 + 2)));
      }

      else
      {
        v50 = -1;
      }

      if (v35 == -2)
      {
        return;
      }

      v51 = ~v17;
    }

    v47 = v50 & (v51 + a2);
    if (v34 <= 3)
    {
      v48 = v34;
    }

    else
    {
      v48 = 4;
    }

    v49 = v45;
    goto LABEL_78;
  }

  v45 = (v45 + v21 + v35 + 2) & ~v21;
  if (v22 >= a2)
  {
    v52 = *(v18 + 56);

    v52(v45, (a2 + 1), v19);
  }

  else
  {
    if (v36 <= 3)
    {
      v46 = ~(-1 << (8 * v36));
    }

    else
    {
      v46 = -1;
    }

    if (v36)
    {
      v47 = v46 & (~v22 + a2);
      if (v36 <= 3)
      {
        v48 = v36;
      }

      else
      {
        v48 = 4;
      }

      v49 = v45;
      v34 = v36;
LABEL_78:
      bzero(v49, v34);
      if (v48 > 2)
      {
        if (v48 == 3)
        {
          *v45 = v47;
          *(v45 + 2) = BYTE2(v47);
        }

        else
        {
          *v45 = v47;
        }
      }

      else if (v48 == 1)
      {
        *v45 = v47;
      }

      else
      {
        *v45 = v47;
      }
    }
  }
}

uint64_t sub_1000569A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D228C();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1000D229C();
}

uint64_t sub_100056A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000D228C();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1000D229C();
}

uint64_t sub_100056B94()
{
  swift_getKeyPath();
  sub_1000D26CC();
}

uint64_t sub_100056C34(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  result = *(v2 + 40);
  if (result)
  {
    v4 = *(v2 + 32);

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    sub_1000D366C(v5);
    return v4;
  }

  return result;
}

uint64_t sub_100056C90(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3._object = *(v2 + 56);
  if (!v3._object)
  {
    return 0;
  }

  v3._countAndFlagsBits = *(v2 + 48);
  sub_1000D366C(v3);
  return 32;
}

uint64_t sub_100056CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v86 = a2;
  v85 = sub_1000D1F0C();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(a1 + 16);
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D385C();
  sub_10000637C(&qword_100125178);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v4 = sub_1000D2A5C();
  v75 = &protocol conformance descriptor for VStack<A>;
  WitnessTable = swift_getWitnessTable();
  v111 = v4;
  v112 = WitnessTable;
  v73 = &opaque type descriptor for <<opaque return type of View.accessibilityIdentifier(key:location:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000637C(&qword_100125180);
  sub_10000637C(&qword_100125188);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  v72 = sub_1000D22AC();
  sub_10000637C(&qword_100125190);
  sub_1000D22AC();
  sub_10000637C(&qword_100125198);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v70 = sub_1000D2A5C();
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_10000637C(&qword_1001251A0);
  sub_1000D22AC();
  v71 = sub_1000D22AC();
  v5 = sub_1000D28BC();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v57 - v6;
  sub_10000637C(&qword_1001251A8);
  v68 = v5;
  v7 = sub_1000D1DCC();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v76 = &v57 - v8;
  v111 = v4;
  v112 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = swift_getWitnessTable();
  v109 = OpaqueTypeConformance2;
  v110 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_10005E9E8();
  v107 = v11;
  v108 = v12;
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v105 = v14;
  v106 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_10005EA9C();
  v103 = v16;
  v104 = v17;
  v18 = swift_getWitnessTable();
  v101 = v13;
  v102 = v18;
  v100 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v75 = &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>;
  v20 = sub_10000FC38(&qword_1001251C0, &qword_1001251A8);
  v98 = v19;
  v99 = v20;
  WitnessTable = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v64 = swift_getWitnessTable();
  v111 = v7;
  v112 = v64;
  v21 = v7;
  v65 = &opaque type descriptor for <<opaque return type of View.monospacedDigit()>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v23 = &v57 - v22;
  sub_10000637C(&qword_100124A08);
  v24 = sub_1000D1DCC();
  v69 = *(v24 - 8);
  __chkstk_darwin(v24);
  v58 = &v57 - v25;
  sub_10000637C(&qword_1001224E0);
  v26 = sub_1000D1DCC();
  v70 = *(v26 - 8);
  __chkstk_darwin(v26);
  v59 = &v57 - v27;
  sub_10000637C(&qword_1001224F0);
  v63 = sub_1000D1DCC();
  v72 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v57 - v28;
  sub_10000637C(&qword_1001248F8);
  v29 = sub_1000D1DCC();
  v73 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v61 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v67 = &v57 - v32;
  v33 = *(v81 + 24);
  v87 = v80;
  v88 = v33;
  v89 = v82;
  v34 = v77;
  sub_1000D28AC();
  v35 = v76;
  v36 = v68;
  sub_1000D271C();
  (*(v79 + 8))(v34, v36);
  v37 = v64;
  sub_1000D272C();
  (*(v78 + 8))(v35, v21);
  v111 = v21;
  v112 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v58;
  v40 = OpaqueTypeMetadata2;
  sub_1000D278C();
  (*(v66 + 8))(v23, v40);
  v41 = sub_10000FC38(&qword_100124A00, &qword_100124A08);
  v96 = v38;
  v97 = v41;
  v42 = swift_getWitnessTable();
  v43 = v59;
  sub_1000D27CC();
  (*(v69 + 8))(v39, v24);
  v44 = sub_10000FC38(&qword_1001224D8, &qword_1001224E0);
  v94 = v42;
  v95 = v44;
  v45 = swift_getWitnessTable();
  v46 = v60;
  sub_1000D277C();
  (*(v70 + 8))(v43, v26);
  v47 = v83;
  sub_1000D1EFC();
  v48 = sub_10000FC38(&qword_1001224E8, &qword_1001224F0);
  v92 = v45;
  v93 = v48;
  v49 = v63;
  v50 = swift_getWitnessTable();
  v51 = v61;
  sub_100056B94();
  (*(v84 + 8))(v47, v85);
  (*(v72 + 8))(v46, v49);
  v52 = sub_10000FC38(&qword_100124AC0, &qword_1001248F8);
  v90 = v50;
  v91 = v52;
  v53 = swift_getWitnessTable();
  v54 = v67;
  sub_1000B6200(v51, v29, v53);
  v55 = v73[1];
  v55(v51, v29);
  sub_1000B6200(v54, v29, v53);
  return (v55)(v54, v29);
}

uint64_t sub_100057BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v64 = a2;
  v68 = a4;
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D385C();
  sub_10000637C(&qword_100125198);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v5 = sub_1000D2A5C();
  sub_10000637C(&qword_100125180);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v75 = v5;
  v73 = sub_1000D2A5C();
  v6 = sub_1000D22AC();
  sub_10000637C(&qword_1001251A0);
  v74 = v6;
  v7 = sub_1000D22AC();
  v62 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  sub_10000637C(&qword_100125178);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v13 = sub_1000D2A5C();
  WitnessTable = swift_getWitnessTable();
  v72 = v13;
  v102 = v13;
  v103 = WitnessTable;
  v71 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000637C(&qword_100125188);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v15 = a1;
  v69 = sub_1000D2A5C();
  v16 = sub_1000D22AC();
  sub_10000637C(&qword_100125190);
  v70 = v16;
  v17 = sub_1000D22AC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  v67 = sub_1000D22AC();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v61 - v24;
  v25 = type metadata accessor for SportsWidgetGenericClockView();
  v26 = v15 + *(v25 + 44);
  if (*(v26 + *(type metadata accessor for SportsWidgetGenericClockViewModel(0) + 44)) == 1)
  {
    sub_100058690(v25, v21);
    v102 = v72;
    v103 = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = swift_getWitnessTable();
    v82 = OpaqueTypeConformance2;
    v83 = v28;
    v29 = swift_getWitnessTable();
    v30 = sub_10005E9E8();
    v80 = v29;
    v81 = v30;
    v31 = swift_getWitnessTable();
    sub_1000B6200(v21, v17, v31);
    v32 = *(v18 + 8);
    v32(v21, v17);
    sub_1000B6200(v23, v17, v31);
    v33 = swift_getWitnessTable();
    v34 = swift_getWitnessTable();
    v78 = v33;
    v79 = v34;
    v35 = swift_getWitnessTable();
    v36 = sub_10005EA9C();
    v76 = v35;
    v77 = v36;
    swift_getWitnessTable();
    v37 = v63;
    sub_1000569A4(v21, v17);
    v32(v21, v17);
    v32(v23, v17);
  }

  else
  {
    sub_100059560(v25, v10);
    v38 = swift_getWitnessTable();
    v39 = swift_getWitnessTable();
    v100 = v38;
    v101 = v39;
    v40 = swift_getWitnessTable();
    v41 = sub_10005EA9C();
    v98 = v40;
    v99 = v41;
    v42 = swift_getWitnessTable();
    sub_1000B6200(v10, v7, v42);
    v43 = *(v62 + 8);
    v43(v10, v7);
    sub_1000B6200(v12, v7, v42);
    v102 = v72;
    v103 = v71;
    v44 = swift_getOpaqueTypeConformance2();
    v45 = swift_getWitnessTable();
    v96 = v44;
    v97 = v45;
    v46 = swift_getWitnessTable();
    v47 = sub_10005E9E8();
    v94 = v46;
    v95 = v47;
    swift_getWitnessTable();
    v37 = v63;
    sub_100056A9C(v10, v17, v7);
    v43(v10, v7);
    v43(v12, v7);
  }

  v102 = v72;
  v103 = v71;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = swift_getWitnessTable();
  v92 = v48;
  v93 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_10005E9E8();
  v90 = v50;
  v91 = v51;
  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v88 = v53;
  v89 = v54;
  v55 = swift_getWitnessTable();
  v56 = sub_10005EA9C();
  v86 = v55;
  v87 = v56;
  v57 = swift_getWitnessTable();
  v84 = v52;
  v85 = v57;
  v58 = v67;
  v59 = swift_getWitnessTable();
  sub_1000B6200(v37, v58, v59);
  return (*(v65 + 8))(v37, v58);
}

uint64_t sub_100058690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a1;
  v103 = a2;
  v87 = sub_100006334(&qword_1001251C8);
  __chkstk_darwin(v87);
  v88 = (&v83 - v4);
  v89 = sub_100006334(&qword_100125198);
  v84 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v83 - v5;
  v6 = sub_100006334(&qword_100125190);
  __chkstk_darwin(v6);
  v90 = &v83 - v7;
  v99 = *(a1 + 16);
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D385C();
  sub_10000637C(&qword_100125180);
  sub_10000637C(&qword_100125188);
  swift_getTupleTypeMetadata3();
  v8 = sub_1000D2BAC();
  WitnessTable = swift_getWitnessTable();
  v93 = v8;
  v92 = WitnessTable;
  v10 = sub_1000D2A5C();
  v95 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v94 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v83 - v13;
  sub_10000637C(&qword_100125178);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  v86 = swift_getWitnessTable();
  v15 = sub_1000D2A5C();
  v16 = swift_getWitnessTable();
  v116 = v15;
  v117 = v16;
  v104 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_1000D22AC();
  v97 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v83 - v19;
  v105 = swift_checkMetadataState();
  v85 = *(v105 - 8);
  v21 = __chkstk_darwin(v105);
  v23 = &v83 - v22;
  v96 = OpaqueTypeMetadata2;
  v24 = *(OpaqueTypeMetadata2 - 8);
  v25 = __chkstk_darwin(v21);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v91 = &v83 - v28;
  v102 = v6;
  v101 = sub_1000D22AC();
  v100 = *(v101 - 8);
  v29 = __chkstk_darwin(v101);
  v32 = &v83 - v30;
  v33 = v2[*(v31 + 40)];
  if ((v33 - 1) >= 2)
  {
    v93 = v20;
    v94 = &v83 - v30;
    v40 = v104;
    v95 = v18;
    if (v33)
    {
      v52 = v31;
      v53 = sub_100056C34(v31);
      v55 = v54;

      v56 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (v56)
      {
        v57 = sub_10005BF8C(v52);
        v59 = v58;
        v116 = v57;
        v117 = v58;
        v61 = v60 & 1;
        v118 = v60 & 1;
        v119 = v62;
        v63 = v83;
        sub_1000D262C();
        sub_10000F374(v57, v59, v61);

        v64 = v84;
        v65 = v89;
        (*(v84 + 16))(v88, v63, v89);
        swift_storeEnumTagMultiPayload();
        v116 = &type metadata for Text;
        v117 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v66 = v90;
        sub_1000D229C();
        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = sub_10005C09C(v52);
        v68 = v88;
        *v88 = v67;
        v68[1] = v69;
        *(v68 + 16) = v70 & 1;
        v68[3] = v71;
        swift_storeEnumTagMultiPayload();
        v116 = &type metadata for Text;
        v117 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v66 = v90;
        sub_1000D229C();
      }

      v72 = v102;
      v73 = v95;
      v41 = v105;
      v32 = v94;
      v116 = v105;
      v117 = v40;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v75 = swift_getWitnessTable();
      v114 = OpaqueTypeConformance2;
      v115 = v75;
      swift_getWitnessTable();
      sub_10005E9E8();
      sub_100056A9C(v66, v73, v72);
      sub_10000F938(v66, &qword_100125190);
    }

    else
    {
      v92 = &v83;
      __chkstk_darwin(v29);
      v43 = *(v42 + 24);
      *(&v83 - 4) = v44;
      *(&v83 - 3) = v43;
      *(&v83 - 2) = v2;
      sub_1000D21BC();
      swift_checkMetadataState();
      sub_1000D2A4C();
      v41 = v105;
      sub_1000D262C();
      (*(v85 + 8))(v23, v41);
      v116 = v41;
      v117 = v40;
      v45 = swift_getOpaqueTypeConformance2();
      v46 = v91;
      v47 = v96;
      sub_1000B6200(v27, v96, v45);
      v48 = *(v24 + 8);
      v99 = (v24 + 8);
      v48(v27, v47);
      sub_1000B6200(v46, v47, v45);
      v49 = swift_getWitnessTable();
      v50 = v93;
      sub_1000569A4(v27, v47);
      v106 = v45;
      v107 = v49;
      v51 = v95;
      swift_getWitnessTable();
      sub_10005E9E8();
      v32 = v94;
      sub_1000569A4(v50, v51);
      (*(v97 + 8))(v50, v51);
      v48(v27, v47);
      v48(v91, v47);
    }
  }

  else
  {
    __chkstk_darwin(v29);
    v35 = *(v34 + 24);
    *(&v83 - 4) = v99;
    *(&v83 - 3) = v35;
    *(&v83 - 2) = v2;
    sub_1000D21BC();
    v36 = v94;
    sub_1000D2A4C();
    v37 = swift_getWitnessTable();
    sub_1000B6200(v36, v10, v37);
    v38 = *(v95 + 8);
    v38(v36, v10);
    sub_1000B6200(v14, v10, v37);
    v116 = v105;
    v117 = v104;
    v39 = swift_getOpaqueTypeConformance2();
    sub_100056A9C(v36, v96, v10);
    v108 = v39;
    v109 = v37;
    swift_getWitnessTable();
    sub_10005E9E8();
    sub_1000569A4(v20, v18);
    (*(v97 + 8))(v20, v18);
    v38(v36, v10);
    v38(v14, v10);
    v40 = v104;
    v41 = v105;
  }

  v116 = v41;
  v117 = v40;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  v112 = v76;
  v113 = v77;
  v78 = swift_getWitnessTable();
  v79 = sub_10005E9E8();
  v110 = v78;
  v111 = v79;
  v80 = v101;
  v81 = swift_getWitnessTable();
  sub_1000B6200(v32, v80, v81);
  return (*(v100 + 8))(v32, v80);
}

uint64_t sub_100059560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v98 = a2;
  v80 = sub_100006334(&qword_1001251F0);
  __chkstk_darwin(v80);
  v82 = &v79 - v3;
  v4 = sub_100006334(&qword_100125198);
  v83 = *(v4 - 8);
  __chkstk_darwin(v4);
  v81 = &v79 - v5;
  v99 = sub_100006334(&qword_1001251A0);
  __chkstk_darwin(v99);
  v85 = &v79 - v6;
  v94 = *(a1 + 16);
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D385C();
  sub_10000637C(&qword_100125180);
  swift_getTupleTypeMetadata3();
  v7 = sub_1000D2BAC();
  WitnessTable = swift_getWitnessTable();
  v88 = v7;
  v87 = WitnessTable;
  v9 = sub_1000D2A5C();
  v89 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v86 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v79 - v12;
  v84 = v4;
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v13 = sub_1000D2A5C();
  v14 = sub_1000D22AC();
  v91 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v90 = &v79 - v16;
  v79 = *(v13 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v79 - v20;
  v22 = sub_1000D22AC();
  v23 = v95;
  v96 = *(v22 - 8);
  v97 = v22;
  v24 = __chkstk_darwin(v22);
  v27 = &v79 - v25;
  v28 = *(v23 + *(v26 + 40));
  if ((v28 - 1) >= 2)
  {
    v88 = &v79 - v25;
    v92 = v14;
    v89 = v9;
    if (v28)
    {
      v46 = v26;
      v47 = sub_100056C34(v26);
      v49 = v48;

      v50 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v50 = v47 & 0xFFFFFFFFFFFFLL;
      }

      v51 = v83;
      v52 = (v83 + 16);
      if (v50)
      {
        v53 = sub_10005BF8C(v46);
        v55 = v54;
        v110 = v53;
        v111 = v54;
        v57 = v56 & 1;
        v112 = v56 & 1;
        v113 = v58;
        v59 = v81;
        sub_1000D262C();
        sub_10000F374(v53, v55, v57);

        v60 = v84;
        (*v52)(v82, v59, v84);
      }

      else
      {
        v61 = sub_10005D63C();
        v63 = v62;
        v110 = v61;
        v111 = v62;
        v65 = v64 & 1;
        v112 = v64 & 1;
        v113 = v66;
        v67 = v81;
        sub_1000D262C();
        sub_10000F374(v61, v63, v65);
        v59 = v67;

        v60 = v84;
        (*v52)(v82, v67, v84);
      }

      swift_storeEnumTagMultiPayload();
      v110 = &type metadata for Text;
      v111 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v68 = v85;
      sub_1000D229C();
      v27 = v88;
      (*(v51 + 8))(v59, v60);
      v69 = swift_getWitnessTable();
      v70 = swift_getWitnessTable();
      v108 = v69;
      v109 = v70;
      v71 = v92;
      swift_getWitnessTable();
      sub_10005EA9C();
      sub_100056A9C(v68, v71, v99);
      sub_10000F938(v68, &qword_1001251A0);
    }

    else
    {
      __chkstk_darwin(v24);
      v38 = *(v37 + 24);
      *(&v79 - 4) = v39;
      *(&v79 - 3) = v38;
      *(&v79 - 2) = v23;
      sub_1000D21BC();
      sub_1000D2A4C();
      v40 = v13;
      v41 = swift_getWitnessTable();
      sub_1000B6200(v19, v13, v41);
      v42 = *(v79 + 8);
      v42(v19, v13);
      sub_1000B6200(v21, v13, v41);
      v43 = swift_getWitnessTable();
      v44 = v90;
      sub_1000569A4(v19, v40);
      v100 = v41;
      v101 = v43;
      v45 = v92;
      swift_getWitnessTable();
      sub_10005EA9C();
      v27 = v88;
      sub_1000569A4(v44, v45);
      (*(v91 + 8))(v44, v45);
      v42(v19, v40);
      v42(v21, v40);
    }
  }

  else
  {
    __chkstk_darwin(v24);
    v30 = *(v29 + 24);
    *(&v79 - 4) = v94;
    *(&v79 - 3) = v30;
    *(&v79 - 2) = v23;
    sub_1000D21BC();
    v31 = v86;
    sub_1000D2A4C();
    v32 = swift_getWitnessTable();
    v33 = v92;
    sub_1000B6200(v31, v9, v32);
    v34 = *(v89 + 8);
    v34(v31, v9);
    sub_1000B6200(v33, v9, v32);
    v35 = swift_getWitnessTable();
    v36 = v90;
    sub_100056A9C(v31, v13, v9);
    v102 = v35;
    v103 = v32;
    swift_getWitnessTable();
    sub_10005EA9C();
    sub_1000569A4(v36, v14);
    (*(v91 + 8))(v36, v14);
    v34(v31, v9);
    v34(v92, v9);
  }

  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v106 = v72;
  v107 = v73;
  v74 = swift_getWitnessTable();
  v75 = sub_10005EA9C();
  v104 = v74;
  v105 = v75;
  v76 = v97;
  v77 = swift_getWitnessTable();
  sub_1000B6200(v27, v76, v77);
  return (*(v96 + 8))(v27, v76);
}

uint64_t sub_10005A2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v63 = a3;
  v60 = a4;
  v5 = sub_100006334(&qword_1001247B8);
  __chkstk_darwin(v5 - 8);
  v57 = &v41 - v6;
  v56 = sub_1000D1DDC();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v64 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1DBC();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  v53 = sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  v55 = sub_1000D22AC();
  v10 = sub_1000D385C();
  v61 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for SportsWidgetGenericClockView();
  sub_10005AAB0(v16, v13);
  WitnessTable = swift_getWitnessTable();
  v97 = &protocol witness table for _PaddingLayout;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v94 = v17;
  v95 = v18;
  v92 = swift_getWitnessTable();
  v93 = &protocol witness table for EmptyView;
  v90 = swift_getWitnessTable();
  v91 = &protocol witness table for Text;
  v89 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v53 = v15;
  v50 = v19;
  sub_1000B6200(v13, v10, v19);
  v20 = *(v61 + 8);
  v55 = v13;
  v51 = v20;
  v20(v13, v10);
  v21 = sub_1000D2B5C();
  v48 = v22;
  v49 = v21;
  v23 = v62;
  sub_10005BE08(&v81);
  v46 = *(&v81 + 1);
  v47 = v81;
  v45 = v82;
  v63 = *(&v82 + 1);
  v24 = (v23 + *(v16 + 44));
  v25 = v24[4];
  v43 = v24[5];
  v44 = v25;
  v26 = v24[7];
  v42 = v24[6];
  v27 = v52;
  sub_1000B2124(v52);
  v28 = v57;
  sub_1000B2570(v57);
  v29 = v54;
  v30 = *(v54 + 48);
  v31 = v28;
  v32 = v28;
  v33 = v56;
  if ((v30)(v32, 1) == 1)
  {
    (*(v29 + 104))(v64, enum case for LegibilityWeight.regular(_:), v33);
    v34 = v33;
    if (v30(v31, 1, v33) != 1)
    {
      sub_10000F938(v31, &qword_1001247B8);
    }
  }

  else
  {
    (*(v29 + 32))(v64, v31, v33);
    v34 = v33;
  }

  v35 = v64;
  sub_1000882FC(v44, v43, v42, v26, v27, v64);
  (*(v29 + 8))(v35, v34);
  (*(v58 + 8))(v27, v59);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v88 = v45;
  *&v75 = v49;
  *(&v75 + 1) = v48;
  *&v76 = v47;
  *(&v76 + 1) = v46;
  LOBYTE(v77) = v45;
  *(&v77 + 1) = *v87;
  DWORD1(v77) = *&v87[3];
  *(&v77 + 1) = v63;
  v36 = v55;
  v37 = v53;
  (*(v61 + 16))(v55, v53, v10);
  v70 = v77;
  v71 = v78;
  v72 = v79;
  v73 = v80;
  v68 = v75;
  v69 = v76;
  v74[0] = v36;
  v74[1] = &v68;
  sub_10000F8D0(&v75, &v81, &qword_100125178);
  v67[0] = v10;
  v67[1] = sub_100006334(&qword_100125178);
  v65 = v50;
  v66 = sub_10005EB7C();
  sub_1000A80B0(v74, 2uLL, v67);
  sub_10000F938(&v75, &qword_100125178);
  v38 = v37;
  v39 = v51;
  v51(v38, v10);
  v83 = v70;
  v84 = v71;
  v85 = v72;
  v86 = v73;
  v81 = v68;
  v82 = v69;
  sub_10000F938(&v81, &qword_100125178);
  return v39(v36, v10);
}

uint64_t sub_10005AAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  sub_10000637C(&qword_100122988);
  v170 = *(a1 + 16);
  v3 = sub_1000D385C();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  v4 = sub_1000D2BAC();
  WitnessTable = swift_getWitnessTable();
  v141 = v4;
  v5 = sub_1000D2A5C();
  v142 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v149 = v136 - v9;
  swift_getTupleTypeMetadata3();
  v10 = sub_1000D2BAC();
  v143 = swift_getWitnessTable();
  v144 = v10;
  v11 = sub_1000D29FC();
  v12 = sub_1000D1DCC();
  v173 = v5;
  v13 = sub_1000D22AC();
  v156 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v155 = v136 - v15;
  v174 = v11;
  v146 = *(v11 - 8);
  v16 = __chkstk_darwin(v14);
  v157 = v136 - v17;
  v167 = v12;
  v148 = *(v12 - 8);
  v18 = __chkstk_darwin(v16);
  v147 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v145 = v136 - v21;
  __chkstk_darwin(v20);
  v158 = v136 - v22;
  v172 = v23;
  v24 = sub_1000D22AC();
  v161 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v160 = v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v159 = v136 - v28;
  v169 = v3;
  v29 = *(v3 - 8);
  v30 = __chkstk_darwin(v27);
  v154 = v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = v136 - v32;
  v34 = sub_1000D22AC();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v163 = v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v162 = v136 - v38;
  v39 = sub_1000D385C();
  v165 = *(v39 - 8);
  v166 = v39;
  v40 = __chkstk_darwin(v39);
  v42 = v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v164 = v136 - v44;
  v45 = &v171[*(v43 + 44)];
  v46 = *(v45 + 3);
  if (v46)
  {
    v150 = v35;
    v151 = v42;
    v152 = v34;
    v153 = v24;
    v47 = *(v45 + 2);
    v137 = v8;
    v138 = v47;
    v48 = *(v29 + 16);
    v49 = v43;
    v50 = v171;
    v48(v33, &v171[*(v43 + 48)], v169);
    v51 = *(*(v170 - 8) + 48);
    v52 = v51(v33, 1);
    v53 = *(v29 + 8);
    v139 = v49;
    if (v52 == 1)
    {
      v136[0] = v48;
      v54 = v53;

      v55 = v33;
      v56 = v169;
      v136[1] = v29 + 8;
      v54(v55, v169);
      v57 = v54;
      v58 = &v50[*(v49 + 52)];
      v59 = v154;
      (v136[0])(v154, v58, v56);
      v60 = v170;
      if ((v51)(v59, 1, v170) == 1)
      {
        v57(v59, v56);
        v207 = v138;
        v208 = v46;
        sub_10000F320();
        v61 = sub_1000D260C();
        v63 = v62;
        v171 = v64;
        v207 = v61;
        v208 = v62;
        v66 = v65 & 1;
        v209 = v65 & 1;
        v210 = v64;
        v205 = swift_getWitnessTable();
        v206 = &protocol witness table for _PaddingLayout;
        v67 = swift_getWitnessTable();
        v68 = swift_getWitnessTable();
        v203 = v67;
        v204 = v68;
        v201 = swift_getWitnessTable();
        v202 = &protocol witness table for EmptyView;
        v69 = v153;
        swift_getWitnessTable();
        v70 = v162;
        sub_100056A9C(&v207, v69, &type metadata for Text);
        sub_10000F374(v61, v63, v66);

LABEL_17:
        v122 = v152;
        v123 = v150;
        v199 = swift_getWitnessTable();
        v200 = &protocol witness table for _PaddingLayout;
        v124 = swift_getWitnessTable();
        v125 = swift_getWitnessTable();
        v197 = v124;
        v198 = v125;
        v195 = swift_getWitnessTable();
        v196 = &protocol witness table for EmptyView;
        v193 = swift_getWitnessTable();
        v194 = &protocol witness table for Text;
        v126 = swift_getWitnessTable();
        v127 = v163;
        sub_1000B6200(v70, v122, v126);
        (*(v123 + 8))(v70, v122);
        v74 = v151;
        (*(v123 + 32))(v151, v127, v122);
        (*(v123 + 56))(v74, 0, 1, v122);
        goto LABEL_18;
      }

      v77 = v60;

      v76 = v56;
      v75 = v172;
      v53 = v57;
    }

    else
    {
      v59 = v33;
      v75 = v172;
      v76 = v169;
      v77 = v170;
    }

    v78 = (v53)(v59, v76);
    v79 = v171[*(v139 + 40)];
    if (v79 >= 2)
    {
      if (v79 == 2)
      {
        __chkstk_darwin(v78);
        v99 = v75;
        v101 = *(v100 + 24);
        v136[-4] = v77;
        v136[-3] = v101;
        v136[-2] = v102;
        sub_1000D21BC();
        v103 = v137;
        sub_1000D2A4C();
        v104 = v173;
        v105 = swift_getWitnessTable();
        v106 = v149;
        sub_1000B6200(v103, v104, v105);
        v171 = *(v142 + 8);
        (v171)(v103, v104);
        sub_1000B6200(v106, v104, v105);
        v181 = swift_getWitnessTable();
        v182 = &protocol witness table for _PaddingLayout;
        v107 = v167;
        v108 = v104;
        v109 = swift_getWitnessTable();
        v110 = v155;
        sub_100056A9C(v103, v107, v108);
        v179 = v109;
        v180 = v105;
        swift_getWitnessTable();
        v111 = v159;
        sub_1000569A4(v110, v99);
        (*(v156 + 8))(v110, v99);
        v112 = v171;
        (v171)(v103, v108);
        v112(v149, v108);
        v98 = v111;
        v70 = v162;
LABEL_16:
        v187 = swift_getWitnessTable();
        v188 = &protocol witness table for _PaddingLayout;
        v116 = swift_getWitnessTable();
        v117 = swift_getWitnessTable();
        v185 = v116;
        v186 = v117;
        v183 = swift_getWitnessTable();
        v184 = &protocol witness table for EmptyView;
        v118 = v153;
        v119 = swift_getWitnessTable();
        v120 = v160;
        sub_1000B6200(v98, v118, v119);
        sub_1000569A4(v120, v118);
        v121 = *(v161 + 8);
        v121(v120, v118);
        v121(v98, v118);
        goto LABEL_17;
      }

      v191 = swift_getWitnessTable();
      v192 = &protocol witness table for _PaddingLayout;
      v113 = swift_getWitnessTable();
      v114 = swift_getWitnessTable();
      v189 = v113;
      v190 = v114;
      v115 = swift_getWitnessTable();
      v98 = v159;
      sub_100056A9C(v115, v75, &type metadata for EmptyView);
    }

    else
    {
      v80 = v75;
      v81 = v171;
      v82 = v139;
      v83 = sub_1000D210C();
      __chkstk_darwin(v83);
      v84 = *(v82 + 24);
      v136[-4] = v77;
      v136[-3] = v84;
      v136[-2] = v81;
      sub_1000D29EC();
      LOBYTE(v81) = sub_1000D234C();
      sub_1000D239C();
      sub_1000D239C();
      v85 = sub_1000D239C();
      v86 = v174;
      if (v85 != v81)
      {
        sub_1000D239C();
      }

      v87 = swift_getWitnessTable();
      v88 = v145;
      v89 = v157;
      sub_1000D279C();
      (*(v146 + 8))(v89, v86);
      v177 = v87;
      v178 = &protocol witness table for _PaddingLayout;
      v90 = v167;
      v91 = swift_getWitnessTable();
      v92 = v158;
      sub_1000B6200(v88, v90, v91);
      v171 = *(v148 + 8);
      (v171)(v88, v90);
      v93 = v147;
      sub_1000B6200(v92, v90, v91);
      v94 = swift_getWitnessTable();
      v95 = v155;
      sub_1000569A4(v93, v90);
      v175 = v91;
      v176 = v94;
      swift_getWitnessTable();
      v96 = v159;
      sub_1000569A4(v95, v80);
      (*(v156 + 8))(v95, v80);
      v97 = v171;
      (v171)(v93, v90);
      v97(v158, v90);
      v98 = v96;
    }

    v70 = v162;
    goto LABEL_16;
  }

  (*(v35 + 56))(v42, 1, 1, v34);
  v226 = swift_getWitnessTable();
  v227 = &protocol witness table for _PaddingLayout;
  v71 = v42;
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v224 = v72;
  v225 = v73;
  v222 = swift_getWitnessTable();
  v223 = &protocol witness table for EmptyView;
  v220 = swift_getWitnessTable();
  v221 = &protocol witness table for Text;
  v74 = v71;
  swift_getWitnessTable();
LABEL_18:
  v129 = v164;
  v128 = v165;
  v130 = v166;
  (*(v165 + 16))(v164, v74, v166);
  v131 = *(v128 + 8);
  v131(v74, v130);
  v218 = swift_getWitnessTable();
  v219 = &protocol witness table for _PaddingLayout;
  v132 = swift_getWitnessTable();
  v133 = swift_getWitnessTable();
  v216 = v132;
  v217 = v133;
  v214 = swift_getWitnessTable();
  v215 = &protocol witness table for EmptyView;
  v212 = swift_getWitnessTable();
  v213 = &protocol witness table for Text;
  v211 = swift_getWitnessTable();
  v134 = swift_getWitnessTable();
  sub_1000B6200(v129, v130, v134);
  return (v131)(v129, v130);
}

uint64_t sub_10005BE08@<X0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for SportsWidgetGenericClockView();
  v2 = sub_10005BF8C(v1);
  v4 = v3;
  v6 = v5;
  v7 = sub_10005C09C(v1);
  v9 = v8;
  v11 = v10;
  v12 = sub_1000D256C();
  v28 = v13;
  v29 = v12;
  v27 = v14;
  sub_10000F374(v7, v9, v11 & 1);

  sub_10000F374(v2, v4, v6 & 1);

  v15 = sub_10005C1E4(v1);
  v17 = v16;
  v19 = v18;
  v25 = sub_1000D256C();
  v26 = v20;
  v22 = v21;
  LOBYTE(v1) = v23;
  sub_10000F374(v15, v17, v19 & 1);

  sub_10000F374(v29, v28, v27 & 1);

  *a1 = v25;
  *(a1 + 8) = v22;
  *(a1 + 16) = v1 & 1;
  *(a1 + 24) = v26;
  return result;
}

uint64_t sub_10005BF8C(uint64_t a1)
{
  sub_100056C34(a1);
  sub_10000F320();
  v1 = sub_1000D260C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1000D257C();
  v8 = v7;
  v10 = v9;
  sub_10000F374(v1, v3, v5 & 1);

  v11 = sub_1000D254C();
  sub_10000F374(v6, v8, v10 & 1);

  return v11;
}

uint64_t sub_10005C09C(uint64_t a1)
{
  v3 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  v6 = sub_100006334(&qword_100122E88);
  __chkstk_darwin(v6 - 8);
  v8 = &v12[-v7];
  v9 = v1 + *(a1 + 44);
  v10 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  sub_10000F8D0(v9 + *(v10 + 32), v8, &qword_100122E88);
  sub_10000F8D0(v9 + *(v10 + 36), v5, &qword_100122E90);
  return sub_1000D253C();
}

uint64_t sub_10005C1E4(uint64_t a1)
{
  sub_100056C90(a1);
  sub_10000F320();
  return sub_1000D260C();
}

uint64_t sub_10005C224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a2;
  v100 = a3;
  v94 = a4;
  v5 = sub_100006334(&qword_1001247B8);
  __chkstk_darwin(v5 - 8);
  v85 = &v74 - v6;
  v88 = sub_1000D1DDC();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000D1DBC();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v101 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_100125188);
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = __chkstk_darwin(v9);
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v74 - v12;
  v13 = sub_100006334(&qword_100125198);
  v79 = *(v13 - 8);
  v80 = v13;
  __chkstk_darwin(v13);
  v75 = &v74 - v14;
  v87 = sub_100006334(&qword_100125180);
  v15 = __chkstk_darwin(v87);
  v89 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v74 - v17;
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v97 = sub_1000D29FC();
  v78 = sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  v18 = a1;
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  v81 = sub_1000D22AC();
  v19 = sub_1000D385C();
  v96 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  v25 = type metadata accessor for SportsWidgetGenericClockView();
  sub_10005AAB0(v25, v22);
  WitnessTable = swift_getWitnessTable();
  v129 = &protocol witness table for _PaddingLayout;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v126 = v26;
  v127 = v27;
  v124 = swift_getWitnessTable();
  v125 = &protocol witness table for EmptyView;
  v122 = swift_getWitnessTable();
  v123 = &protocol witness table for Text;
  v121 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v97 = v24;
  v76 = v28;
  sub_1000B6200(v22, v19, v28);
  v29 = *(v96 + 8);
  v98 = v22;
  v81 = v19;
  v77 = v29;
  v78 = v96 + 8;
  v29(v22, v19);
  v30 = sub_100056C34(v25);
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = sub_10005BF8C(v25);
    v36 = v35;
    *&v114 = v34;
    *(&v114 + 1) = v35;
    v38 = v37 & 1;
    LOBYTE(v115) = v37 & 1;
    *(&v115 + 1) = v39;
    v40 = v75;
    sub_1000D262C();
    sub_10000F374(v34, v36, v38);

    v42 = v79;
    v41 = v80;
    v43 = v95;
    (*(v79 + 32))(v95, v40, v80);
    v44 = 0;
    v45 = v43;
    v46 = v41;
    v47 = v42;
  }

  else
  {
    v44 = 1;
    v45 = v95;
    v47 = v79;
    v46 = v80;
  }

  (*(v47 + 56))(v45, v44, 1, v46);
  v48 = sub_1000D2B5C();
  v79 = v49;
  v80 = v48;
  sub_10005CD64(&v114);
  v99 = *(&v114 + 1);
  v100 = v114;
  v50 = v115;
  v75 = *(&v115 + 1);
  v51 = v18 + *(v25 + 44);
  v52 = *(v51 + 48);
  v53 = *(v51 + 56);
  sub_1000B2124(v101);
  v54 = v85;
  sub_1000B2570(v85);
  v55 = v86;
  v56 = *(v86 + 48);
  v57 = v88;
  if (v56(v54, 1, v88) == 1)
  {
    v58 = v83;
    (*(v55 + 104))(v83, enum case for LegibilityWeight.regular(_:), v57);
    if (v56(v54, 1, v57) != 1)
    {
      sub_10000F938(v54, &qword_1001247B8);
    }
  }

  else
  {
    v58 = v83;
    (*(v55 + 32))(v83, v54, v57);
  }

  v59 = v52;
  v60 = v101;
  sub_1000882FC(0, 0, v59, v53, v101, v58);
  (*(v55 + 8))(v58, v57);
  (*(v82 + 8))(v60, v84);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v120 = v50;
  *&v108 = v80;
  *(&v108 + 1) = v79;
  *&v109 = v100;
  *(&v109 + 1) = v99;
  LOBYTE(v110) = v50;
  *(&v110 + 1) = v75;
  v61 = sub_100006334(&qword_100125178);
  v62 = sub_10005EB7C();
  v63 = v90;
  sub_1000D262C();
  v116 = v110;
  v117 = v111;
  v118 = v112;
  v119 = v113;
  v114 = v108;
  v115 = v109;
  sub_10000F938(&v114, &qword_100125178);
  v64 = v98;
  v65 = v81;
  (*(v96 + 16))(v98, v97, v81);
  *&v108 = v64;
  v66 = v95;
  v67 = v89;
  sub_10005EC9C(v95, v89);
  *(&v108 + 1) = v67;
  v69 = v91;
  v68 = v92;
  v70 = v93;
  (*(v92 + 16))(v91, v63, v93);
  *&v109 = v69;
  v107[0] = v65;
  v107[1] = v87;
  v107[2] = v70;
  v104 = v76;
  v105 = sub_10005ED0C();
  v102 = v61;
  v103 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000A80B0(&v108, 3uLL, v107);
  v71 = *(v68 + 8);
  v71(v63, v70);
  sub_10000F938(v66, &qword_100125180);
  v72 = v77;
  v77(v97, v65);
  v71(v69, v70);
  sub_10000F938(v67, &qword_100125180);
  return v72(v98, v65);
}

uint64_t sub_10005CD64@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SportsWidgetGenericClockView();
  v3 = sub_10005C09C(v2);
  v5 = v4;
  v7 = v6;
  v8 = sub_10005C1E4(v2);
  v10 = v9;
  v12 = v11;
  v13 = sub_1000D256C();
  v19 = v14;
  v20 = v15;
  v18 = v16;
  sub_10000F374(v8, v10, v12 & 1);

  sub_10000F374(v3, v5, v7 & 1);

  *a1 = v13;
  *(a1 + 8) = v19;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_10005CE64@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(_BYTE *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v58 = a2;
  v65 = a1;
  v63 = a3;
  v62 = sub_100006334(&qword_100125198);
  v61 = *(v62 - 8);
  v3 = __chkstk_darwin(v62);
  v60 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v59 = &v47[-v5];
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  v57 = sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  v6 = sub_1000D385C();
  v64 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v55 = &v47[-v10];
  v11 = type metadata accessor for SportsWidgetGenericClockView();
  sub_10005AAB0(v11, v9);
  WitnessTable = swift_getWitnessTable();
  v83 = &protocol witness table for _PaddingLayout;
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v80 = v12;
  v81 = v13;
  v78 = swift_getWitnessTable();
  v79 = &protocol witness table for EmptyView;
  v76 = swift_getWitnessTable();
  v77 = &protocol witness table for Text;
  v75 = swift_getWitnessTable();
  v54 = v6;
  v56 = swift_getWitnessTable();
  v53 = v9;
  sub_1000B6200(v9, v6, v56);
  v14 = *(v64 + 8);
  v57 = v64 + 8;
  v58 = v14;
  v14(v9, v6);
  v52 = v11;
  v15 = sub_10005BF8C(v11);
  v17 = v16;
  LOBYTE(v11) = v18;
  v19 = sub_10005D63C();
  v21 = v20;
  LOBYTE(v12) = v22;
  v51 = sub_1000D256C();
  v50 = v23;
  v48 = v24;
  v49 = v25;
  sub_10000F374(v19, v21, v12 & 1);

  sub_10000F374(v15, v17, v11 & 1);

  v26 = sub_10005C1E4(v52);
  v28 = v27;
  LOBYTE(v17) = v29;
  v30 = v51;
  v31 = v50;
  v32 = sub_1000D256C();
  v34 = v33;
  LOBYTE(v11) = v35;
  v65 = v36;
  sub_10000F374(v26, v28, v17 & 1);

  sub_10000F374(v30, v31, v48 & 1);

  v71 = v32;
  v72 = v34;
  v73 = v11 & 1;
  v74 = v65;
  v37 = v59;
  sub_1000D262C();
  sub_10000F374(v32, v34, v11 & 1);

  v38 = v53;
  v39 = v55;
  v40 = v54;
  (*(v64 + 16))(v53, v55, v54);
  v71 = v38;
  v41 = v61;
  v42 = v60;
  v43 = v62;
  (*(v61 + 16))(v60, v37, v62);
  v72 = v42;
  v70[0] = v40;
  v70[1] = v43;
  v68 = v56;
  v66 = &type metadata for Text;
  v67 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000A80B0(&v71, 2uLL, v70);
  v44 = *(v41 + 8);
  v44(v37, v43);
  v45 = v58;
  v58(v39, v40);
  v44(v42, v43);
  return v45(v38, v40);
}

uint64_t sub_10005D63C()
{
  sub_10000F320();

  return sub_1000D260C();
}

uint64_t sub_10005D698@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X8>)
{
  v77 = a2;
  v66 = a1;
  v73 = a3;
  v80 = sub_100006334(&qword_100125198);
  v79 = *(v80 - 8);
  v3 = __chkstk_darwin(v80);
  v72 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v74 = &v63[-v5];
  v70 = sub_100006334(&qword_100125180);
  v6 = __chkstk_darwin(v70);
  v71 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v76 = &v63[-v8];
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  v69 = sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  v9 = sub_1000D385C();
  v75 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v63[-v13];
  v15 = type metadata accessor for SportsWidgetGenericClockView();
  sub_10005AAB0(v15, v12);
  WitnessTable = swift_getWitnessTable();
  v99 = &protocol witness table for _PaddingLayout;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v96 = v16;
  v97 = v17;
  v94 = swift_getWitnessTable();
  v95 = &protocol witness table for EmptyView;
  v92 = swift_getWitnessTable();
  v93 = &protocol witness table for Text;
  v91 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v77 = v14;
  v65 = v18;
  sub_1000B6200(v12, v9, v18);
  v19 = *(v75 + 8);
  v78 = v12;
  v69 = v9;
  v68 = v75 + 8;
  v67 = v19;
  v19(v12, v9);
  v20 = sub_100056C34(v15);
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = sub_10005BF8C(v15);
    v26 = v25;
    v87 = v24;
    v88 = v25;
    v28 = v27 & 1;
    LOBYTE(v89) = v27 & 1;
    v90 = v29;
    v30 = v74;
    sub_1000D262C();
    sub_10000F374(v24, v26, v28);

    v31 = v79;
    v32 = v76;
    (*(v79 + 32))(v76, v30, v80);
    v33 = 0;
    v34 = v31;
    v35 = v32;
  }

  else
  {
    v33 = 1;
    v34 = v79;
    v35 = v76;
  }

  (*(v34 + 56))(v35, v33, 1, v80);
  v36 = sub_10005D63C();
  v38 = v37;
  v40 = v39;
  v41 = sub_10005C1E4(v15);
  v43 = v42;
  v45 = v44;
  v46 = sub_1000D256C();
  v48 = v47;
  v64 = v49;
  v66 = v50;
  sub_10000F374(v41, v43, v45 & 1);

  sub_10000F374(v36, v38, v40 & 1);

  v87 = v46;
  v88 = v48;
  v51 = v48;
  LOBYTE(v48) = v64 & 1;
  LOBYTE(v89) = v64 & 1;
  v90 = v66;
  v52 = v74;
  sub_1000D262C();
  sub_10000F374(v46, v51, v48);

  v53 = v78;
  v54 = v69;
  (*(v75 + 16))(v78, v77, v69);
  v87 = v53;
  v55 = v76;
  v56 = v71;
  sub_10005EC9C(v76, v71);
  v88 = v56;
  v57 = v79;
  v58 = v72;
  v59 = v80;
  (*(v79 + 16))(v72, v52, v80);
  v89 = v58;
  v86[0] = v54;
  v86[1] = v70;
  v86[2] = v59;
  v83 = v65;
  v84 = sub_10005ED0C();
  v81 = &type metadata for Text;
  v82 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000A80B0(&v87, 3uLL, v86);
  v60 = *(v57 + 8);
  v60(v52, v59);
  sub_10000F938(v55, &qword_100125180);
  v61 = v67;
  v67(v77, v54);
  v60(v58, v59);
  sub_10000F938(v56, &qword_100125180);
  return v61(v78, v54);
}

uint64_t sub_10005DFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  sub_1000D385C();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1000D29FC();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &WitnessTable - v8;
  v10 = sub_1000D1DCC();
  v41 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v46 = &WitnessTable - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &WitnessTable - v14;
  __chkstk_darwin(v13);
  v45 = &WitnessTable - v16;
  v39 = a3;
  v17 = a1;
  v18 = a1 + *(type metadata accessor for SportsWidgetGenericClockView() + 44);
  v19 = *(v18 + 24);
  if (v19)
  {
    v52 = *(v18 + 16);
    v53 = v19;
    sub_10000F320();

    v20 = sub_1000D260C();
    v22 = v21;
    v48 = v20;
    v43 = v24;
    v40 = v23 & 1;
    sub_10004328C(v20, v24, v23 & 1);
    v42 = v22;
  }

  else
  {
    v48 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
  }

  v25 = sub_1000D210C();
  __chkstk_darwin(v25);
  v26 = v39;
  *(&WitnessTable - 4) = a2;
  *(&WitnessTable - 3) = v26;
  *(&WitnessTable - 2) = v17;
  sub_1000D29EC();
  v27 = sub_1000D234C();
  sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != v27)
  {
    sub_1000D239C();
  }

  v28 = swift_getWitnessTable();
  sub_1000D279C();
  (*(v44 + 8))(v9, v7);
  v56[2] = v28;
  v56[3] = &protocol witness table for _PaddingLayout;
  v29 = swift_getWitnessTable();
  v30 = v45;
  sub_1000B6200(v15, v10, v29);
  v31 = v41;
  v32 = *(v41 + 8);
  v32(v15, v10);
  v34 = v42;
  v33 = v43;
  v52 = v48;
  v53 = v43;
  v35 = v40;
  v54 = v40;
  v55 = v42;
  v56[0] = &v52;
  v36 = v46;
  (*(v31 + 16))(v46, v30, v10);
  v56[1] = v36;
  v51[0] = sub_100006334(&qword_100122988);
  v51[1] = v10;
  v49 = sub_100013998();
  v50 = v29;
  sub_1000A80B0(v56, 2uLL, v51);
  sub_10005EC4C(v48, v33, v35, v34);
  v32(v30, v10);
  v32(v36, v10);
  return sub_10005EC4C(v52, v53, v54, v55);
}

uint64_t sub_10005E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24[0] = a3;
  v5 = sub_1000D385C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v24 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v24 - v14;
  __chkstk_darwin(v13);
  v17 = v24 - v16;
  v18 = type metadata accessor for SportsWidgetGenericClockView();
  v19 = *(v18 + 48);
  v26[2] = a2;
  WitnessTable = swift_getWitnessTable();
  sub_1000B6200(a1 + v19, v5, WitnessTable);
  sub_1000B6200(a1 + *(v18 + 52), v5, WitnessTable);
  v21 = *(v6 + 16);
  v21(v12, v17, v5);
  v26[0] = v12;
  v21(v9, v15, v5);
  v26[1] = v9;
  v25[0] = v5;
  v25[1] = v5;
  v24[1] = WitnessTable;
  v24[2] = WitnessTable;
  sub_1000A80B0(v26, 2uLL, v25);
  v22 = *(v6 + 8);
  v22(v15, v5);
  v22(v17, v5);
  v22(v9, v5);
  return (v22)(v12, v5);
}

uint64_t sub_10005E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1000D385C();
  v37 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = &v36 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for SportsWidgetGenericClockView();
  v16 = v15[12];
  v51[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v41 = v14;
  v18 = WitnessTable;
  sub_1000B6200(a1 + v16, v5, WitnessTable);
  v19 = a1 + v15[11];
  v20 = *(v19 + 24);
  if (v20)
  {
    v47 = *(v19 + 16);
    v48 = v20;
    sub_10000F320();

    v21 = sub_1000D260C();
    v23 = v22;
    v40 = v21;
    v20 = v25;
    v26 = v24 & 1;
    sub_10004328C(v21, v25, v24 & 1);
    v27 = v23;
  }

  else
  {
    v40 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = a1 + v15[13];
  v29 = v18;
  sub_1000B6200(v28, v5, v18);
  v30 = v37;
  v31 = *(v37 + 16);
  v32 = v42;
  v31();
  v47 = v40;
  v48 = v20;
  v49 = v26;
  v50 = v27;
  v51[0] = v32;
  v51[1] = &v47;
  v33 = v38;
  (v31)(v38, v12, v5);
  v51[2] = v33;
  v46[0] = v5;
  v46[1] = sub_100006334(&qword_100122988);
  v46[2] = v5;
  v43 = v29;
  v44 = sub_100013998();
  v45 = v29;
  sub_1000A80B0(v51, 3uLL, v46);
  sub_10005EC4C(v40, v20, v26, v27);
  v34 = *(v30 + 8);
  v34(v12, v5);
  v34(v41, v5);
  v34(v33, v5);
  sub_10005EC4C(v47, v48, v49, v50);
  return (v34)(v42, v5);
}

unint64_t sub_10005E9E8()
{
  result = qword_1001251B0;
  if (!qword_1001251B0)
  {
    sub_10000637C(&qword_100125190);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001251B0);
  }

  return result;
}

unint64_t sub_10005EA9C()
{
  result = qword_1001251B8;
  if (!qword_1001251B8)
  {
    sub_10000637C(&qword_1001251A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001251B8);
  }

  return result;
}

unint64_t sub_10005EB7C()
{
  result = qword_1001251D0;
  if (!qword_1001251D0)
  {
    sub_10000637C(&qword_100125178);
    sub_10000FC38(&qword_1001251D8, &qword_1001251E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001251D0);
  }

  return result;
}

uint64_t sub_10005EC4C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000F374(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10005EC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100125180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005ED0C()
{
  result = qword_1001251E8;
  if (!qword_1001251E8)
  {
    sub_10000637C(&qword_100125180);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001251E8);
  }

  return result;
}

uint64_t sub_10005EE08()
{
  sub_1000D385C();
  sub_10000637C(&qword_100122988);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D29FC();
  sub_1000D1DCC();
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D385C();
  sub_10000637C(&qword_100125178);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000637C(&qword_100125180);
  sub_10000637C(&qword_100125188);
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_10000637C(&qword_100125190);
  sub_1000D22AC();
  sub_10000637C(&qword_100125198);
  swift_getTupleTypeMetadata2();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  swift_getTupleTypeMetadata3();
  sub_1000D2BAC();
  swift_getWitnessTable();
  sub_1000D2A5C();
  sub_1000D22AC();
  sub_10000637C(&qword_1001251A0);
  sub_1000D22AC();
  sub_1000D22AC();
  sub_1000D28BC();
  sub_10000637C(&qword_1001251A8);
  sub_1000D1DCC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10005E9E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10005EA9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000FC38(&qword_1001251C0, &qword_1001251A8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000637C(&qword_100124A08);
  sub_1000D1DCC();
  sub_10000637C(&qword_1001224E0);
  sub_1000D1DCC();
  sub_10000637C(&qword_1001224F0);
  sub_1000D1DCC();
  sub_10000637C(&qword_1001248F8);
  sub_1000D1DCC();
  swift_getOpaqueTypeConformance2();
  sub_10000FC38(&qword_100124A00, &qword_100124A08);
  swift_getWitnessTable();
  sub_10000FC38(&qword_1001224D8, &qword_1001224E0);
  swift_getWitnessTable();
  sub_10000FC38(&qword_1001224E8, &qword_1001224F0);
  swift_getWitnessTable();
  sub_10000FC38(&qword_100124AC0, &qword_1001248F8);
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for TVSettingsAudioLanguage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x73)
  {
    goto LABEL_17;
  }

  if (a2 + 141 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 141) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 141;
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

      return (*a1 | (v4 << 8)) - 141;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 141;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x8E;
  v8 = v6 - 142;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TVSettingsAudioLanguage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 141 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 141) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x73)
  {
    v4 = 0;
  }

  if (a2 > 0x72)
  {
    v5 = ((a2 - 115) >> 8) + 1;
    *result = a2 - 115;
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
    *result = a2 - 115;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10005F6D4(char a1)
{
  result = 6841185;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 25953;
      break;
    case 3:
      result = 26209;
      break;
    case 4:
      result = 27489;
      break;
    case 5:
      result = 28001;
      break;
    case 6:
      result = 29281;
      break;
    case 7:
      result = 0x46412D637261;
      break;
    case 8:
      result = 7828065;
      break;
    case 9:
      result = 25954;
      break;
    case 10:
      result = 26466;
      break;
    case 11:
      result = 26978;
      break;
    case 12:
      result = 28002;
      break;
    case 13:
      result = 28258;
      break;
    case 14:
      result = 28514;
      break;
    case 15:
      result = 29282;
      break;
    case 16:
      result = 29538;
      break;
    case 17:
      result = 24931;
      break;
    case 18:
      result = 7496035;
      break;
    case 19:
      result = 7236963;
      break;
    case 20:
      result = 29539;
      break;
    case 21:
      result = 31075;
      break;
    case 22:
      result = 24932;
      break;
    case 23:
      result = 25956;
      break;
    case 24:
      result = 31332;
      break;
    case 25:
      result = 27749;
      break;
    case 26:
      result = 28261;
      break;
    case 27:
      result = 0x55412D6E65;
      break;
    case 28:
      result = 0x41432D6E65;
      break;
    case 29:
      result = 0x42472D6E65;
      break;
    case 30:
      result = 0x45492D6E65;
      break;
    case 31:
      result = 0x5A4E2D6E65;
      break;
    case 32:
      result = 0x53552D6E65;
      break;
    case 33:
      result = 0x415A2D6E65;
      break;
    case 34:
      result = 29541;
      break;
    case 35:
      result = 0x3931342D7365;
      break;
    case 36:
      result = 0x52412D7365;
      break;
    case 37:
      result = 0x53452D7365;
      break;
    case 38:
      result = 0x584D2D7365;
      break;
    case 39:
      result = 29797;
      break;
    case 40:
      result = 30053;
      break;
    case 41:
      result = 24934;
      break;
    case 42:
      result = 0x4E532D6666;
      break;
    case 43:
      result = 26982;
      break;
    case 44:
      result = 7104870;
      break;
    case 45:
      result = 29286;
      break;
    case 46:
      result = 0x41432D7266;
      break;
    case 47:
      result = 0x45422D7266;
      break;
    case 48:
      result = 0x52462D7266;
      break;
    case 49:
      result = 24935;
      break;
    case 50:
      result = 25703;
      break;
    case 51:
      result = 27751;
      break;
    case 52:
      result = 28263;
      break;
    case 53:
      result = 30055;
      break;
    case 54:
      result = 6518119;
      break;
    case 55:
      result = 6906216;
      break;
    case 56:
      result = 25960;
      break;
    case 57:
      result = 26984;
      break;
    case 58:
      result = 29288;
      break;
    case 59:
      result = 29800;
      break;
    case 60:
      result = 30056;
      break;
    case 61:
      result = 31080;
      break;
    case 62:
      result = 25705;
      break;
    case 63:
      result = 26473;
      break;
    case 64:
      result = 29545;
      break;
    case 65:
      result = 29801;
      break;
    case 66:
      result = 30057;
      break;
    case 67:
      result = 24938;
      break;
    case 68:
      result = 24939;
      break;
    case 69:
      result = 6382955;
      break;
    case 70:
      result = 27499;
      break;
    case 71:
      result = 27755;
      break;
    case 72:
      result = 28011;
      break;
    case 73:
      result = 28267;
      break;
    case 74:
      result = 28523;
      break;
    case 75:
      result = 29291;
      break;
    case 76:
      result = 6910571;
      break;
    case 77:
      result = 29547;
      break;
    case 78:
      result = 30059;
      break;
    case 79:
      result = 31083;
      break;
    case 80:
      result = 24940;
      break;
    case 81:
      result = 25196;
      break;
    case 82:
      result = 26988;
      break;
    case 83:
      result = 28268;
      break;
    case 84:
      result = 28524;
      break;
    case 85:
      result = 29804;
      break;
    case 86:
      result = 30316;
      break;
    case 87:
      result = 7234925;
      break;
    case 88:
      result = 6645357;
      break;
    case 89:
      result = 26989;
      break;
    case 90:
      result = 27501;
      break;
    case 91:
      result = 27757;
      break;
    case 92:
      result = 28269;
      break;
    case 93:
      result = 0x4E492D696E6DLL;
      break;
    case 94:
      result = 29293;
      break;
    case 95:
      result = 29549;
      break;
    case 96:
      result = 29805;
      break;
    case 97:
      result = 31085;
      break;
    case 98:
      result = 7233902;
      break;
    case 99:
      result = 25966;
      break;
    case 100:
      result = 27758;
      break;
    case 101:
      result = 28526;
      break;
    case 102:
      result = 31086;
      break;
    case 103:
      result = 0x4E492D726FLL;
      break;
    case 104:
      result = 24944;
      break;
    case 105:
      result = 27760;
      break;
    case 106:
      result = 29808;
      break;
    case 107:
      result = 0x52422D7470;
      break;
    case 108:
      result = 0x54502D7470;
      break;
    case 109:
      result = 30065;
      break;
    case 110:
      result = 28018;
      break;
    case 111:
      result = 28530;
      break;
    case 112:
      result = 30066;
      break;
    case 113:
      result = 30578;
      break;
    case 114:
      result = 25971;
      break;
    case 115:
      result = 26483;
      break;
    case 116:
      result = 27507;
      break;
    case 117:
      result = 27763;
      break;
    case 118:
      result = 0x53572D6D73;
      break;
    case 119:
      result = 28531;
      break;
    case 120:
      result = 29043;
      break;
    case 121:
      result = 29299;
      break;
    case 122:
      result = 29811;
      break;
    case 123:
      result = 30323;
      break;
    case 124:
      result = 30579;
      break;
    case 125:
      result = 24948;
      break;
    case 126:
      result = 25972;
      break;
    case 127:
      result = 26740;
      break;
    case -128:
      result = 26996;
      break;
    case -127:
      result = 27508;
      break;
    case -126:
      result = 27764;
      break;
    case -125:
      result = 28532;
      break;
    case -124:
      result = 29300;
      break;
    case -123:
      result = 27509;
      break;
    case -122:
      result = 29301;
      break;
    case -121:
      result = 26998;
      break;
    case -120:
      result = 7564406;
      break;
    case -119:
      result = 28535;
      break;
    case -118:
      result = 26744;
      break;
    case -117:
      result = 27001;
      break;
    case -116:
      result = 6649209;
      break;
    case -115:
      result = 30074;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1000600A4()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C2A8);
  sub_100006610(v10, qword_10013C2A8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_100060394()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v587 = v569 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v590 = v569 - v3;
  v4 = sub_1000D189C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v569 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1A2C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D35EC();
  __chkstk_darwin(v9 - 8);
  v11 = v569 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v592 = sub_1000D18BC();
  v594 = *(v592 - 8);
  __chkstk_darwin(v592);
  v583 = v569 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100125258);
  v13 = sub_100006334(&qword_1001237C8);
  v591 = v13;
  v14 = *(v13 - 8);
  v584 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v572 = v16;
  *(v16 + 16) = xmmword_1000E6350;
  v593 = v16 + v15;
  v577 = *(v13 + 48);
  *(v16 + v15) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v5 + 104);
  v580 = v4;
  v18(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v578 = v18;
  v579 = v5 + 104;
  sub_1000D18CC();
  v575 = 0x100000000000001ELL;
  sub_1000D358C();
  sub_1000D1A1C();
  v18(v7, v17, v4);
  v19 = v590;
  sub_1000D18CC();
  v20 = *(v594 + 56);
  v594 += 56;
  v585 = v20;
  v20(v19, 0, 1, v592);
  v588 = sub_1000D15FC();
  v21 = *(v588 - 8);
  v589 = *(v21 + 56);
  v586 = v21 + 56;
  v589(v587, 1, 1, v588);
  v22 = v593;
  sub_1000D163C();
  v574 = v22 + v584;
  v577 = *(v591 + 48);
  *v574 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v23 = v17;
  v24 = v17;
  v582 = v17;
  v25 = v580;
  v26 = v578;
  v578(v7, v23, v580);
  sub_1000D18CC();
  v576 = 0x100000000000001FLL;
  sub_1000D358C();
  sub_1000D1A1C();
  v26(v7, v24, v25);
  v27 = v26;
  v28 = v590;
  sub_1000D18CC();
  v585(v28, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v577 = 2 * v584;
  v29 = *(v591 + 48);
  v573 = v593 + 2 * v584;
  v574 = v29;
  *v573 = 2;
  sub_1000D358C();
  sub_1000D1A1C();
  v30 = v582;
  v31 = v580;
  v27(v7, v582, v580);
  v581 = "com.apple.Preferences";
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v27(v7, v30, v31);
  v32 = v590;
  sub_1000D18CC();
  v585(v32, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + v577 + v584;
  v577 = *(v591 + 48);
  *v574 = 3;
  sub_1000D358C();
  sub_1000D1A1C();
  v33 = v580;
  v27(v7, v30, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v27(v7, v30, v33);
  v34 = v590;
  sub_1000D18CC();
  v585(v34, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v577 = 4 * v584;
  v35 = *(v591 + 48);
  v573 = v593 + 4 * v584;
  v574 = v35;
  *v573 = 4;
  sub_1000D358C();
  sub_1000D1A1C();
  v36 = v582;
  v37 = v580;
  v38 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v38(v7, v36, v37);
  v39 = v590;
  sub_1000D18CC();
  v585(v39, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + v577 + v584;
  v577 = *(v591 + 48);
  *v574 = 5;
  sub_1000D358C();
  sub_1000D1A1C();
  v40 = v582;
  v41 = v580;
  v38(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v42 = v40;
  v43 = v41;
  v44 = v38;
  v38(v7, v42, v41);
  v45 = v590;
  sub_1000D18CC();
  v585(v45, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v46 = *(v591 + 48);
  v573 = v593 + 6 * v584;
  v574 = v46;
  *v573 = 6;
  sub_1000D358C();
  sub_1000D1A1C();
  v47 = v582;
  v44(v7, v582, v41);
  sub_1000D18CC();
  v577 = 0x1000000000000020;
  sub_1000D358C();
  sub_1000D1A1C();
  v44(v7, v47, v41);
  v48 = v590;
  sub_1000D18CC();
  v585(v48, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = 8 * v584;
  v571 = v593 + 7 * v584;
  v573 = *(v591 + 48);
  *v571 = 7;
  sub_1000D358C();
  sub_1000D1A1C();
  v49 = v43;
  v50 = v43;
  v51 = v578;
  v578(v7, v47, v49);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v51(v7, v47, v50);
  v52 = v590;
  sub_1000D18CC();
  v585(v52, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + v574;
  v573 = *(v591 + 48);
  *v571 = 8;
  sub_1000D358C();
  sub_1000D1A1C();
  v53 = v582;
  v51(v7, v582, v50);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v51(v7, v53, v50);
  v54 = v590;
  sub_1000D18CC();
  v585(v54, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v55 = *(v591 + 48);
  v573 = v593 + v574 + v584;
  v574 = v55;
  *v573 = 9;
  sub_1000D358C();
  sub_1000D1A1C();
  v56 = v582;
  v57 = v578;
  v578(v7, v582, v50);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v58 = v56;
  v59 = v57;
  v57(v7, v58, v50);
  v60 = v590;
  sub_1000D18CC();
  v585(v60, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v61 = *(v591 + 48);
  v573 = v593 + 10 * v584;
  v574 = v61;
  *v573 = 10;
  sub_1000D358C();
  sub_1000D1A1C();
  v62 = v582;
  v59(v7, v582, v50);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v59(v7, v62, v50);
  v63 = v59;
  v64 = v590;
  sub_1000D18CC();
  v585(v64, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v65 = *(v591 + 48);
  v573 = v593 + 11 * v584;
  v574 = v65;
  *v573 = 11;
  sub_1000D358C();
  sub_1000D1A1C();
  v66 = v62;
  v67 = v580;
  v63(v7, v66, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v63(v7, v66, v67);
  v68 = v590;
  sub_1000D18CC();
  v585(v68, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v69 = *(v591 + 48);
  v573 = v593 + 12 * v584;
  v574 = v69;
  *v573 = 12;
  sub_1000D358C();
  sub_1000D1A1C();
  v70 = v582;
  v63(v7, v582, v67);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v71 = v63;
  v63(v7, v70, v67);
  v72 = v590;
  sub_1000D18CC();
  v585(v72, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v73 = *(v591 + 48);
  v573 = v593 + 13 * v584;
  v574 = v73;
  *v573 = 13;
  sub_1000D358C();
  sub_1000D1A1C();
  v74 = v582;
  v75 = v580;
  v71(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v76 = v74;
  v77 = v75;
  v71(v7, v76, v75);
  v78 = v590;
  sub_1000D18CC();
  v585(v78, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v79 = *(v591 + 48);
  v573 = v593 + 14 * v584;
  v574 = v79;
  *v573 = 14;
  sub_1000D358C();
  sub_1000D1A1C();
  v80 = v582;
  v81 = v77;
  v82 = v77;
  v83 = v578;
  v578(v7, v582, v82);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v83(v7, v80, v81);
  v84 = v590;
  sub_1000D18CC();
  v585(v84, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = 16 * v584;
  v571 = v593 + 15 * v584;
  v573 = *(v591 + 48);
  *v571 = 15;
  sub_1000D358C();
  sub_1000D1A1C();
  v85 = v582;
  v86 = v580;
  v87 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v88 = v85;
  v87(v7, v85, v86);
  v89 = v590;
  sub_1000D18CC();
  v585(v89, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + v574;
  v573 = *(v591 + 48);
  *v571 = 16;
  sub_1000D358C();
  sub_1000D1A1C();
  v90 = v88;
  v91 = v88;
  v92 = v578;
  v578(v7, v90, v86);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v92(v7, v91, v86);
  v93 = v590;
  sub_1000D18CC();
  v585(v93, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v94 = *(v591 + 48);
  v573 = v593 + v574 + v584;
  v574 = v94;
  *v573 = 17;
  sub_1000D358C();
  sub_1000D1A1C();
  v95 = v582;
  v96 = v580;
  v97 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v97(v7, v95, v96);
  v98 = v590;
  sub_1000D18CC();
  v585(v98, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v99 = *(v591 + 48);
  v573 = v593 + 18 * v584;
  v574 = v99;
  *v573 = 18;
  sub_1000D358C();
  sub_1000D1A1C();
  v100 = v582;
  v101 = v580;
  v97(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v102 = v100;
  v97(v7, v100, v101);
  v103 = v590;
  sub_1000D18CC();
  v585(v103, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v104 = *(v591 + 48);
  v573 = v593 + 19 * v584;
  v574 = v104;
  *v573 = 19;
  sub_1000D358C();
  sub_1000D1A1C();
  v105 = v102;
  v106 = v102;
  v107 = v580;
  v97(v7, v106, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v97(v7, v105, v107);
  v108 = v590;
  sub_1000D18CC();
  v585(v108, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v109 = *(v591 + 48);
  v573 = v593 + 20 * v584;
  v574 = v109;
  *v573 = 20;
  sub_1000D358C();
  sub_1000D1A1C();
  v110 = v582;
  v111 = v580;
  v112 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v113 = v110;
  v114 = v111;
  v115 = v112;
  v112(v7, v110, v114);
  v116 = v590;
  sub_1000D18CC();
  v585(v116, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v117 = *(v591 + 48);
  v573 = v593 + 21 * v584;
  v574 = v117;
  *v573 = 21;
  sub_1000D358C();
  sub_1000D1A1C();
  v118 = v580;
  v112(v7, v113, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v112(v7, v113, v118);
  v119 = v590;
  sub_1000D18CC();
  v585(v119, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v120 = *(v591 + 48);
  v573 = v593 + 22 * v584;
  v574 = v120;
  *v573 = 22;
  sub_1000D358C();
  sub_1000D1A1C();
  v121 = v582;
  v122 = v580;
  v115(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v123 = v121;
  v115(v7, v121, v122);
  v124 = v590;
  sub_1000D18CC();
  v585(v124, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v125 = *(v591 + 48);
  v573 = v593 + 23 * v584;
  v574 = v125;
  *v573 = 23;
  sub_1000D358C();
  sub_1000D1A1C();
  v126 = v123;
  v127 = v123;
  v128 = v580;
  v115(v7, v127, v580);
  v129 = v115;
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v115(v7, v126, v128);
  v130 = v590;
  sub_1000D18CC();
  v585(v130, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v573 = *(v591 + 48);
  v574 = v593 + 24 * v584;
  *v574 = 24;
  sub_1000D358C();
  sub_1000D1A1C();
  v131 = v582;
  v129(v7, v582, v128);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v129(v7, v131, v128);
  v132 = v590;
  sub_1000D18CC();
  v585(v132, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v133 = *(v591 + 48);
  v573 = v593 + 25 * v584;
  v574 = v133;
  *v573 = 25;
  sub_1000D358C();
  sub_1000D1A1C();
  v134 = v582;
  v135 = v578;
  v578(v7, v582, v128);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v135(v7, v134, v128);
  v136 = v590;
  sub_1000D18CC();
  v585(v136, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v137 = *(v591 + 48);
  v573 = v593 + 26 * v584;
  v574 = v137;
  *v573 = 26;
  sub_1000D358C();
  sub_1000D1A1C();
  v138 = v582;
  v139 = v580;
  v135(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v135(v7, v138, v139);
  v140 = v590;
  sub_1000D18CC();
  v585(v140, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v141 = *(v591 + 48);
  v573 = v593 + 27 * v584;
  v574 = v141;
  *v573 = 27;
  sub_1000D358C();
  sub_1000D1A1C();
  v142 = v582;
  v143 = v580;
  v144 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v144(v7, v142, v143);
  v145 = v590;
  sub_1000D18CC();
  v585(v145, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 28 * v584;
  v146 = *(v591 + 48);
  *v571 = 28;
  v573 = v146;
  v574 = 0xD000000000000010;
  sub_1000D358C();
  sub_1000D1A1C();
  v147 = v142;
  v148 = v142;
  v149 = v580;
  v150 = v578;
  v578(v7, v148, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v150(v7, v147, v149);
  v151 = v590;
  sub_1000D18CC();
  v585(v151, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 29 * v584;
  v573 = *(v591 + 48);
  *v571 = 29;
  sub_1000D358C();
  sub_1000D1A1C();
  v152 = v147;
  v153 = v147;
  v154 = v580;
  v155 = v578;
  v578(v7, v153, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v155(v7, v152, v154);
  v156 = v590;
  sub_1000D18CC();
  v585(v156, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 30 * v584;
  v573 = *(v591 + 48);
  *v571 = 30;
  sub_1000D358C();
  sub_1000D1A1C();
  v157 = v152;
  v158 = v152;
  v159 = v580;
  v160 = v578;
  v578(v7, v158, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v160(v7, v157, v159);
  v161 = v590;
  sub_1000D18CC();
  v585(v161, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v573 = 32 * v584;
  v162 = *(v591 + 48);
  v570 = (v593 + 31 * v584);
  v571 = v162;
  *v570 = 31;
  sub_1000D358C();
  sub_1000D1A1C();
  v160(v7, v157, v159);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v160(v7, v157, v159);
  v163 = v590;
  sub_1000D18CC();
  v585(v163, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v164 = *(v591 + 48);
  v570 = (v593 + v573);
  v571 = v164;
  *v570 = 32;
  sub_1000D358C();
  sub_1000D1A1C();
  v165 = v580;
  v166 = v578;
  v578(v7, v157, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v166(v7, v157, v165);
  v167 = v590;
  sub_1000D18CC();
  v585(v167, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + v573 + v584;
  v573 = *(v591 + 48);
  *v571 = 33;
  sub_1000D358C();
  sub_1000D1A1C();
  v168 = v582;
  v169 = v580;
  v166(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v166(v7, v168, v169);
  v170 = v166;
  v171 = v590;
  sub_1000D18CC();
  v585(v171, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 34 * v584;
  v573 = *(v591 + 48);
  *v571 = 34;
  sub_1000D358C();
  sub_1000D1A1C();
  v172 = v582;
  v173 = v580;
  v170(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v170(v7, v172, v173);
  v174 = v170;
  v175 = v590;
  sub_1000D18CC();
  v585(v175, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 35 * v584;
  v573 = *(v591 + 48);
  *v571 = 35;
  sub_1000D358C();
  sub_1000D1A1C();
  v176 = v582;
  v177 = v580;
  v174(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v174(v7, v176, v177);
  v178 = v590;
  sub_1000D18CC();
  v585(v178, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 36 * v584;
  v573 = *(v591 + 48);
  *v571 = 36;
  sub_1000D358C();
  sub_1000D1A1C();
  v179 = v582;
  v180 = v580;
  v174(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v181 = v180;
  v174(v7, v179, v180);
  v182 = v590;
  sub_1000D18CC();
  v585(v182, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 37 * v584;
  v573 = *(v591 + 48);
  *v571 = 37;
  sub_1000D358C();
  sub_1000D1A1C();
  v183 = v582;
  v184 = v181;
  v185 = v181;
  v186 = v578;
  v578(v7, v582, v184);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v187 = v183;
  v188 = v185;
  v186(v7, v187, v185);
  v189 = v590;
  sub_1000D18CC();
  v585(v189, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 38 * v584;
  v573 = *(v591 + 48);
  *v571 = 38;
  sub_1000D358C();
  sub_1000D1A1C();
  v190 = v582;
  v191 = v578;
  v578(v7, v582, v188);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v192 = v580;
  v191(v7, v190, v580);
  v193 = v590;
  sub_1000D18CC();
  v585(v193, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 39 * v584;
  v573 = *(v591 + 48);
  *v571 = 39;
  sub_1000D358C();
  sub_1000D1A1C();
  v194 = v190;
  v195 = v190;
  v196 = v578;
  v578(v7, v194, v192);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v196(v7, v195, v192);
  v197 = v590;
  sub_1000D18CC();
  v585(v197, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 40 * v584;
  v573 = *(v591 + 48);
  *v571 = 40;
  sub_1000D358C();
  sub_1000D1A1C();
  v198 = v582;
  v199 = v580;
  v200 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v200(v7, v198, v199);
  v201 = v590;
  sub_1000D18CC();
  v585(v201, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 41 * v584;
  v573 = *(v591 + 48);
  *v571 = 41;
  sub_1000D358C();
  sub_1000D1A1C();
  v202 = v582;
  v203 = v580;
  v204 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v204(v7, v202, v203);
  v205 = v590;
  sub_1000D18CC();
  v585(v205, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 42 * v584;
  v573 = *(v591 + 48);
  *v571 = 42;
  sub_1000D358C();
  sub_1000D1A1C();
  v206 = v580;
  v207 = v578;
  v578(v7, v202, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v207(v7, v202, v206);
  v208 = v590;
  sub_1000D18CC();
  v585(v208, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 43 * v584;
  v573 = *(v591 + 48);
  *v571 = 43;
  sub_1000D358C();
  sub_1000D1A1C();
  v209 = v580;
  v210 = v578;
  v578(v7, v202, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v210(v7, v202, v209);
  v211 = v590;
  sub_1000D18CC();
  v585(v211, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 44 * v584;
  v573 = *(v591 + 48);
  *v571 = 44;
  sub_1000D358C();
  sub_1000D1A1C();
  v212 = v582;
  v213 = v580;
  v210(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v214 = v210;
  v210(v7, v212, v213);
  v215 = v590;
  sub_1000D18CC();
  v585(v215, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 45 * v584;
  v573 = *(v591 + 48);
  *v571 = 45;
  sub_1000D358C();
  sub_1000D1A1C();
  v216 = v582;
  v217 = v580;
  v214(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v214(v7, v216, v217);
  v218 = v214;
  v219 = v590;
  sub_1000D18CC();
  v585(v219, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 46 * v584;
  v573 = *(v591 + 48);
  *v571 = 46;
  sub_1000D358C();
  sub_1000D1A1C();
  v220 = v582;
  v221 = v580;
  v218(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v222 = v221;
  v223 = v218;
  v218(v7, v220, v222);
  v224 = v590;
  sub_1000D18CC();
  v585(v224, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 47 * v584;
  v573 = *(v591 + 48);
  *v571 = 47;
  sub_1000D358C();
  sub_1000D1A1C();
  v225 = v582;
  v226 = v580;
  v223(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v223(v7, v225, v226);
  v227 = v590;
  sub_1000D18CC();
  v585(v227, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 48 * v584;
  v573 = *(v591 + 48);
  *v571 = 48;
  sub_1000D358C();
  sub_1000D1A1C();
  v228 = v578;
  v578(v7, v225, v226);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v229 = v226;
  v228(v7, v225, v226);
  v230 = v590;
  sub_1000D18CC();
  v585(v230, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 49 * v584;
  v573 = *(v591 + 48);
  *v571 = 49;
  sub_1000D358C();
  sub_1000D1A1C();
  v231 = v582;
  v232 = v578;
  v578(v7, v582, v229);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v232(v7, v231, v229);
  v233 = v590;
  sub_1000D18CC();
  v585(v233, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 50 * v584;
  v573 = *(v591 + 48);
  *v571 = 50;
  sub_1000D358C();
  sub_1000D1A1C();
  v234 = v582;
  v235 = v580;
  v232(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v232(v7, v234, v235);
  v236 = v590;
  sub_1000D18CC();
  v585(v236, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 51 * v584;
  v573 = *(v591 + 48);
  *v571 = 51;
  sub_1000D358C();
  sub_1000D1A1C();
  v237 = v582;
  v238 = v580;
  v232(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v232(v7, v237, v238);
  v239 = v232;
  v240 = v590;
  sub_1000D18CC();
  v585(v240, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 52 * v584;
  v573 = *(v591 + 48);
  *v571 = 52;
  sub_1000D358C();
  sub_1000D1A1C();
  v241 = v582;
  v239(v7, v582, v238);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v239(v7, v241, v238);
  v242 = v590;
  sub_1000D18CC();
  v585(v242, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 53 * v584;
  v573 = *(v591 + 48);
  *v571 = 53;
  sub_1000D358C();
  sub_1000D1A1C();
  v243 = v580;
  v239(v7, v241, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v239(v7, v241, v243);
  v244 = v590;
  sub_1000D18CC();
  v585(v244, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 54 * v584;
  v573 = *(v591 + 48);
  *v571 = 54;
  sub_1000D358C();
  sub_1000D1A1C();
  v245 = v582;
  v246 = v580;
  v247 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v247(v7, v245, v246);
  v248 = v590;
  sub_1000D18CC();
  v585(v248, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 55 * v584;
  v573 = *(v591 + 48);
  *v571 = 55;
  sub_1000D358C();
  sub_1000D1A1C();
  v249 = v582;
  v250 = v580;
  v251 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v251(v7, v249, v250);
  v252 = v590;
  sub_1000D18CC();
  v585(v252, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 56 * v584;
  v573 = *(v591 + 48);
  *v571 = 56;
  sub_1000D358C();
  sub_1000D1A1C();
  v251(v7, v249, v250);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v251(v7, v249, v250);
  v253 = v590;
  sub_1000D18CC();
  v585(v253, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 57 * v584;
  v573 = *(v591 + 48);
  *v571 = 57;
  sub_1000D358C();
  sub_1000D1A1C();
  v254 = v582;
  v255 = v580;
  v251(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v251(v7, v254, v255);
  v256 = v590;
  sub_1000D18CC();
  v585(v256, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 58 * v584;
  v573 = *(v591 + 48);
  *v571 = 58;
  sub_1000D358C();
  sub_1000D1A1C();
  v257 = v582;
  v258 = v580;
  v259 = v578;
  v578(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v259(v7, v257, v258);
  v260 = v590;
  sub_1000D18CC();
  v585(v260, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 59 * v584;
  v573 = *(v591 + 48);
  *v571 = 59;
  sub_1000D358C();
  sub_1000D1A1C();
  v261 = v580;
  v262 = v578;
  v578(v7, v257, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v262(v7, v257, v261);
  v263 = v590;
  sub_1000D18CC();
  v585(v263, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 60 * v584;
  v573 = *(v591 + 48);
  *v571 = 60;
  sub_1000D358C();
  sub_1000D1A1C();
  v264 = v582;
  v265 = v580;
  v262(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v262(v7, v264, v265);
  v266 = v590;
  sub_1000D18CC();
  v585(v266, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v573 = v593 + 61 * v584;
  v571 = *(v591 + 48);
  *v573 = 61;
  sub_1000D358C();
  sub_1000D1A1C();
  v267 = v582;
  v268 = v580;
  v262(v7, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v262(v7, v267, v268);
  v269 = v590;
  sub_1000D18CC();
  v585(v269, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 62 * v584;
  v573 = *(v591 + 48);
  *v571 = 62;
  sub_1000D358C();
  sub_1000D1A1C();
  v270 = v580;
  v262(v7, v267, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v262(v7, v267, v270);
  v271 = v590;
  sub_1000D18CC();
  v585(v271, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v573 = v584 << 6;
  v272 = *(v591 + 48);
  v570 = (v593 + 63 * v584);
  v571 = v272;
  *v570 = 63;
  sub_1000D358C();
  sub_1000D1A1C();
  v273 = v580;
  v262(v7, v267, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v262(v7, v267, v273);
  v274 = v590;
  sub_1000D18CC();
  v585(v274, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v275 = *(v591 + 48);
  v570 = (v593 + v573);
  v571 = v275;
  *v570 = 64;
  sub_1000D358C();
  sub_1000D1A1C();
  v276 = v582;
  v277 = v578;
  v578(v7, v582, v273);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v277(v7, v276, v273);
  v278 = v590;
  sub_1000D18CC();
  v585(v278, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + v573 + v584;
  v573 = *(v591 + 48);
  *v571 = 65;
  sub_1000D358C();
  sub_1000D1A1C();
  v279 = v582;
  v280 = v578;
  v578(v7, v582, v273);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v280(v7, v279, v273);
  v281 = v590;
  sub_1000D18CC();
  v585(v281, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 66 * v584;
  v573 = *(v591 + 48);
  *v571 = 66;
  sub_1000D358C();
  sub_1000D1A1C();
  v282 = v279;
  v283 = v580;
  v280(v7, v282, v580);
  v284 = v280;
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v285 = v582;
  v284(v7, v582, v283);
  v286 = v590;
  sub_1000D18CC();
  v585(v286, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 67 * v584;
  v573 = *(v591 + 48);
  *v571 = 67;
  sub_1000D358C();
  sub_1000D1A1C();
  v287 = v578;
  v578(v7, v285, v283);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v287(v7, v285, v283);
  v288 = v590;
  sub_1000D18CC();
  v585(v288, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 68 * v584;
  v573 = *(v591 + 48);
  *v571 = 68;
  sub_1000D358C();
  sub_1000D1A1C();
  v289 = v7;
  v290 = v7;
  v291 = v582;
  v292 = v580;
  v293 = v578;
  v578(v289, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v294 = v291;
  v295 = v293;
  v293(v290, v294, v292);
  v296 = v590;
  sub_1000D18CC();
  v585(v296, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 69 * v584;
  v573 = *(v591 + 48);
  *v571 = 69;
  sub_1000D358C();
  sub_1000D1A1C();
  v297 = v582;
  v295(v290, v582, v292);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v298 = v295;
  v295(v290, v297, v292);
  v299 = v590;
  sub_1000D18CC();
  v585(v299, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 70 * v584;
  v573 = *(v591 + 48);
  *v571 = 70;
  sub_1000D358C();
  sub_1000D1A1C();
  v300 = v580;
  v298(v290, v297, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v298(v290, v297, v300);
  v301 = v590;
  sub_1000D18CC();
  v585(v301, 0, 1, v592);
  v302 = v587;
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 71 * v584;
  v573 = *(v591 + 48);
  *v571 = 71;
  sub_1000D358C();
  sub_1000D1A1C();
  v303 = v580;
  v304 = v578;
  v578(v290, v297, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v304(v290, v297, v303);
  v305 = v590;
  sub_1000D18CC();
  v585(v305, 0, 1, v592);
  v589(v302, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 72 * v584;
  v573 = *(v591 + 48);
  *v571 = 72;
  sub_1000D358C();
  sub_1000D1A1C();
  v306 = v582;
  v304(v290, v582, v303);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v304(v290, v306, v303);
  v307 = v590;
  sub_1000D18CC();
  v585(v307, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 73 * v584;
  v573 = *(v591 + 48);
  *v571 = 73;
  sub_1000D358C();
  sub_1000D1A1C();
  v308 = v582;
  v309 = v303;
  v310 = v303;
  v311 = v578;
  v578(v290, v582, v310);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v311(v290, v308, v309);
  v312 = v590;
  sub_1000D18CC();
  v585(v312, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 74 * v584;
  v573 = *(v591 + 48);
  *v571 = 74;
  sub_1000D358C();
  sub_1000D1A1C();
  v313 = v582;
  v314 = v578;
  v578(v290, v582, v309);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v314(v290, v313, v309);
  v315 = v590;
  sub_1000D18CC();
  v585(v315, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 75 * v584;
  v573 = *(v591 + 48);
  *v571 = 75;
  sub_1000D358C();
  sub_1000D1A1C();
  v316 = v582;
  v317 = v580;
  v318 = v578;
  v578(v290, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v318(v290, v316, v317);
  v319 = v590;
  sub_1000D18CC();
  v585(v319, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 76 * v584;
  v573 = *(v591 + 48);
  *v571 = 76;
  sub_1000D358C();
  sub_1000D1A1C();
  v320 = v580;
  v321 = v578;
  v578(v290, v316, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v321(v290, v316, v320);
  v322 = v590;
  sub_1000D18CC();
  v585(v322, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 77 * v584;
  v573 = *(v591 + 48);
  *v571 = 77;
  sub_1000D358C();
  sub_1000D1A1C();
  v323 = v582;
  v324 = v580;
  v325 = v578;
  v578(v290, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v325(v290, v323, v324);
  v326 = v590;
  sub_1000D18CC();
  v585(v326, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 78 * v584;
  v573 = *(v591 + 48);
  *v571 = 78;
  sub_1000D358C();
  sub_1000D1A1C();
  v327 = v582;
  v328 = v580;
  v325(v290, v582, v580);
  v329 = v290;
  sub_1000D18CC();
  v330 = v11;
  sub_1000D358C();
  sub_1000D1A1C();
  v331 = v329;
  v332 = v329;
  v333 = v328;
  v325(v331, v327, v328);
  v334 = v590;
  sub_1000D18CC();
  v585(v334, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v335 = v584;
  v571 = v593 + 79 * v584;
  v573 = *(v591 + 48);
  *v571 = 79;
  sub_1000D358C();
  sub_1000D1A1C();
  v336 = v333;
  v337 = v578;
  v578(v332, v327, v336);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v338 = v327;
  v339 = v580;
  v337(v332, v338, v580);
  v340 = v590;
  sub_1000D18CC();
  v585(v340, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 80 * v335;
  v573 = *(v591 + 48);
  *v571 = 80;
  sub_1000D358C();
  sub_1000D1A1C();
  v341 = v582;
  v342 = v339;
  v343 = v339;
  v344 = v578;
  v578(v332, v582, v343);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v344(v332, v341, v342);
  v345 = v590;
  v569[1] = v330;
  v346 = v332;
  sub_1000D18CC();
  v585(v345, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 81 * v584;
  v573 = *(v591 + 48);
  *v571 = 81;
  sub_1000D358C();
  sub_1000D1A1C();
  v347 = v582;
  v348 = v580;
  v344(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v344(v346, v347, v348);
  v349 = v590;
  sub_1000D18CC();
  v585(v349, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 82 * v584;
  v573 = *(v591 + 48);
  *v571 = 82;
  sub_1000D358C();
  sub_1000D1A1C();
  v350 = v578;
  v578(v346, v347, v348);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v350(v346, v347, v348);
  v351 = v590;
  sub_1000D18CC();
  v585(v351, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 83 * v584;
  v573 = *(v591 + 48);
  *v571 = 83;
  sub_1000D358C();
  sub_1000D1A1C();
  v352 = v582;
  v353 = v578;
  v578(v346, v582, v348);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v353(v346, v352, v348);
  v354 = v590;
  sub_1000D18CC();
  v585(v354, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 84 * v584;
  v573 = *(v591 + 48);
  *v571 = 84;
  sub_1000D358C();
  sub_1000D1A1C();
  v355 = v582;
  v356 = v578;
  v578(v346, v582, v348);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v357 = v580;
  v356(v346, v355, v580);
  v358 = v590;
  sub_1000D18CC();
  v585(v358, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 85 * v584;
  v573 = *(v591 + 48);
  *v571 = 85;
  sub_1000D358C();
  sub_1000D1A1C();
  v359 = v582;
  v356(v346, v582, v357);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v356(v346, v359, v357);
  v360 = v590;
  sub_1000D18CC();
  v585(v360, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 86 * v584;
  v573 = *(v591 + 48);
  *v571 = 86;
  sub_1000D358C();
  sub_1000D1A1C();
  v361 = v582;
  v362 = v578;
  v578(v346, v582, v357);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v362(v346, v361, v357);
  v363 = v590;
  sub_1000D18CC();
  v585(v363, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 87 * v584;
  v573 = *(v591 + 48);
  *v571 = 87;
  sub_1000D358C();
  sub_1000D1A1C();
  v364 = v582;
  v362(v346, v582, v357);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v362(v346, v364, v357);
  v365 = v590;
  sub_1000D18CC();
  v585(v365, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 88 * v584;
  v573 = *(v591 + 48);
  *v571 = 88;
  sub_1000D358C();
  sub_1000D1A1C();
  v366 = v580;
  v362(v346, v364, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v362(v346, v364, v366);
  v367 = v590;
  sub_1000D18CC();
  v585(v367, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 89 * v584;
  v573 = *(v591 + 48);
  *v571 = 89;
  sub_1000D358C();
  sub_1000D1A1C();
  v368 = v582;
  v369 = v580;
  v362(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v370 = v368;
  v371 = v369;
  v362(v346, v370, v369);
  v372 = v590;
  sub_1000D18CC();
  v585(v372, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 90 * v584;
  v573 = *(v591 + 48);
  *v571 = 90;
  sub_1000D358C();
  sub_1000D1A1C();
  v373 = v582;
  v374 = v371;
  v375 = v371;
  v376 = v578;
  v578(v346, v582, v375);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v376(v346, v373, v374);
  v377 = v590;
  sub_1000D18CC();
  v585(v377, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 91 * v584;
  v573 = *(v591 + 48);
  *v571 = 91;
  sub_1000D358C();
  sub_1000D1A1C();
  v376(v346, v373, v374);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v376(v346, v373, v374);
  v378 = v590;
  sub_1000D18CC();
  v585(v378, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 92 * v584;
  v573 = *(v591 + 48);
  *v571 = 92;
  sub_1000D358C();
  sub_1000D1A1C();
  v379 = v582;
  v380 = v580;
  v381 = v578;
  v578(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v381(v346, v379, v380);
  v382 = v381;
  v383 = v590;
  sub_1000D18CC();
  v585(v383, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 93 * v584;
  v573 = *(v591 + 48);
  *v571 = 93;
  sub_1000D358C();
  sub_1000D1A1C();
  v384 = v582;
  v385 = v580;
  v382(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v386 = v384;
  v387 = v382;
  v382(v346, v386, v385);
  v388 = v590;
  sub_1000D18CC();
  v585(v388, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v389 = *(v591 + 48);
  v573 = v593 + 94 * v584;
  v574 = v389;
  *v573 = 94;
  sub_1000D358C();
  sub_1000D1A1C();
  v390 = v582;
  v391 = v580;
  v387(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v387(v346, v390, v391);
  v392 = v590;
  sub_1000D18CC();
  v585(v392, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v393 = *(v591 + 48);
  v573 = v593 + 95 * v584;
  v574 = v393;
  *v573 = 95;
  sub_1000D358C();
  sub_1000D1A1C();
  v394 = v582;
  v395 = v578;
  v578(v346, v582, v391);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v395(v346, v394, v391);
  v396 = v590;
  sub_1000D18CC();
  v585(v396, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v397 = *(v591 + 48);
  v573 = v593 + 96 * v584;
  v574 = v397;
  *v573 = 96;
  sub_1000D358C();
  sub_1000D1A1C();
  v398 = v580;
  v399 = v578;
  v578(v346, v394, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v399(v346, v394, v398);
  v400 = v590;
  sub_1000D18CC();
  v585(v400, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v401 = *(v591 + 48);
  v573 = v593 + 97 * v584;
  v574 = v401;
  *v573 = 97;
  sub_1000D358C();
  sub_1000D1A1C();
  v402 = v582;
  v403 = v580;
  v404 = v578;
  v578(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v404(v346, v402, v403);
  v405 = v590;
  sub_1000D18CC();
  v585(v405, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v406 = *(v591 + 48);
  v573 = v593 + 98 * v584;
  v574 = v406;
  *v573 = 98;
  sub_1000D358C();
  sub_1000D1A1C();
  v407 = v582;
  v408 = v580;
  v409 = v578;
  v578(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v409(v346, v407, v408);
  v410 = v590;
  sub_1000D18CC();
  v585(v410, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v411 = *(v591 + 48);
  v573 = v593 + 99 * v584;
  v574 = v411;
  *v573 = 99;
  sub_1000D358C();
  sub_1000D1A1C();
  v412 = v582;
  v413 = v580;
  v409(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v409(v346, v412, v413);
  v414 = v590;
  sub_1000D18CC();
  v585(v414, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v415 = *(v591 + 48);
  v573 = v593 + 100 * v584;
  v574 = v415;
  *v573 = 100;
  sub_1000D358C();
  sub_1000D1A1C();
  v416 = v578;
  v578(v346, v412, v413);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v416(v346, v412, v413);
  v417 = v590;
  sub_1000D18CC();
  v585(v417, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v418 = *(v591 + 48);
  v573 = v593 + 101 * v584;
  v574 = v418;
  *v573 = 101;
  sub_1000D358C();
  sub_1000D1A1C();
  v419 = v582;
  v420 = v580;
  v421 = v578;
  v578(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v421(v346, v419, v420);
  v422 = v590;
  sub_1000D18CC();
  v585(v422, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v423 = *(v591 + 48);
  v573 = v593 + 102 * v584;
  v574 = v423;
  *v573 = 102;
  sub_1000D358C();
  sub_1000D1A1C();
  v424 = v582;
  v425 = v578;
  v578(v346, v582, v420);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v425(v346, v424, v420);
  v426 = v590;
  sub_1000D18CC();
  v585(v426, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v427 = *(v591 + 48);
  v573 = v593 + 103 * v584;
  v574 = v427;
  *v573 = 103;
  sub_1000D358C();
  sub_1000D1A1C();
  v428 = v580;
  v429 = v578;
  v578(v346, v424, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v429(v346, v424, v428);
  v430 = v590;
  sub_1000D18CC();
  v431 = v585;
  v585(v430, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v432 = *(v591 + 48);
  v573 = v593 + 104 * v584;
  v574 = v432;
  *v573 = 104;
  sub_1000D358C();
  sub_1000D1A1C();
  v433 = v580;
  v434 = v578;
  v578(v346, v424, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v434(v346, v424, v433);
  v435 = v590;
  sub_1000D18CC();
  v431(v435, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v436 = *(v591 + 48);
  v573 = v593 + 105 * v584;
  v574 = v436;
  *v573 = 105;
  sub_1000D358C();
  sub_1000D1A1C();
  v437 = v582;
  v438 = v580;
  v439 = v578;
  v578(v346, v582, v580);
  v440 = v346;
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v439(v346, v437, v438);
  v441 = v590;
  sub_1000D18CC();
  v585(v441, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 106 * v584;
  v442 = *(v591 + 48);
  *v571 = 106;
  v573 = 0xEA00000000006573;
  v574 = v442;
  sub_1000D358C();
  sub_1000D1A1C();
  v443 = v582;
  v439(v346, v582, v438);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v439(v346, v443, v438);
  v444 = v439;
  v445 = v590;
  sub_1000D18CC();
  v585(v445, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 107 * v584;
  v574 = *(v591 + 48);
  *v571 = 107;
  sub_1000D358C();
  sub_1000D1A1C();
  v446 = v582;
  v447 = v580;
  v444(v346, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v444(v346, v446, v447);
  v448 = v590;
  sub_1000D18CC();
  v585(v448, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 108 * v584;
  v574 = *(v591 + 48);
  *v571 = 108;
  sub_1000D358C();
  sub_1000D1A1C();
  v449 = v582;
  v450 = v580;
  v444(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v444(v440, v449, v450);
  v451 = v590;
  sub_1000D18CC();
  v585(v451, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 109 * v584;
  v574 = *(v591 + 48);
  *v571 = 109;
  sub_1000D358C();
  sub_1000D1A1C();
  v452 = v582;
  v453 = v580;
  v444(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v454 = v452;
  v455 = v453;
  v444(v440, v454, v453);
  v456 = v590;
  sub_1000D18CC();
  v585(v456, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 110 * v584;
  v574 = *(v591 + 48);
  *v571 = 110;
  sub_1000D358C();
  sub_1000D1A1C();
  v457 = v582;
  v458 = v578;
  v578(v440, v582, v455);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v458(v440, v457, v455);
  v459 = v590;
  sub_1000D18CC();
  v585(v459, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 111 * v584;
  v574 = *(v591 + 48);
  *v571 = 111;
  sub_1000D358C();
  sub_1000D1A1C();
  v460 = v582;
  v461 = v578;
  v578(v440, v582, v455);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v461(v440, v460, v455);
  v462 = v590;
  sub_1000D18CC();
  v585(v462, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 112 * v584;
  v574 = *(v591 + 48);
  *v571 = 112;
  sub_1000D358C();
  sub_1000D1A1C();
  v463 = v582;
  v461(v440, v582, v455);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v461(v440, v463, v455);
  v464 = v461;
  v465 = v590;
  sub_1000D18CC();
  v585(v465, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 113 * v584;
  v574 = *(v591 + 48);
  *v571 = 113;
  sub_1000D358C();
  sub_1000D1A1C();
  v466 = v582;
  v467 = v580;
  v464(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v464(v440, v466, v467);
  v468 = v590;
  sub_1000D18CC();
  v585(v468, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 114 * v584;
  v574 = *(v591 + 48);
  *v571 = 114;
  sub_1000D358C();
  sub_1000D1A1C();
  v469 = v582;
  v470 = v578;
  v578(v440, v582, v467);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v470(v440, v469, v467);
  v471 = v590;
  sub_1000D18CC();
  v585(v471, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 115 * v584;
  v574 = *(v591 + 48);
  *v571 = 115;
  sub_1000D358C();
  sub_1000D1A1C();
  v472 = v582;
  v473 = v580;
  v470(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v470(v440, v472, v473);
  v474 = v590;
  sub_1000D18CC();
  v585(v474, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 116 * v584;
  v574 = *(v591 + 48);
  *v571 = 116;
  sub_1000D358C();
  sub_1000D1A1C();
  v475 = v582;
  v476 = v580;
  v477 = v578;
  v578(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v477(v440, v475, v476);
  v478 = v590;
  sub_1000D18CC();
  v585(v478, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 117 * v584;
  v574 = *(v591 + 48);
  *v571 = 117;
  sub_1000D358C();
  sub_1000D1A1C();
  v479 = v582;
  v480 = v578;
  v578(v440, v582, v476);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v480(v440, v479, v476);
  v481 = v590;
  sub_1000D18CC();
  v585(v481, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 118 * v584;
  v574 = *(v591 + 48);
  *v571 = 118;
  sub_1000D358C();
  sub_1000D1A1C();
  v480(v440, v479, v476);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v480(v440, v479, v476);
  v482 = v590;
  sub_1000D18CC();
  v585(v482, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 119 * v584;
  v574 = *(v591 + 48);
  *v571 = 119;
  sub_1000D358C();
  sub_1000D1A1C();
  v483 = v582;
  v480(v440, v582, v476);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v480(v440, v483, v476);
  v484 = v590;
  sub_1000D18CC();
  v585(v484, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 120 * v584;
  v571 = *(v591 + 48);
  *v574 = 120;
  sub_1000D358C();
  sub_1000D1A1C();
  v485 = v582;
  v486 = v578;
  v578(v440, v582, v476);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v486(v440, v485, v476);
  v487 = v590;
  sub_1000D18CC();
  v585(v487, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 121 * v584;
  v574 = *(v591 + 48);
  *v571 = 121;
  sub_1000D358C();
  sub_1000D1A1C();
  v488 = v582;
  v489 = v580;
  v490 = v578;
  v578(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v491 = v489;
  v492 = v490;
  v490(v440, v488, v491);
  v493 = v590;
  sub_1000D18CC();
  v585(v493, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 122 * v584;
  v574 = *(v591 + 48);
  *v571 = 122;
  sub_1000D358C();
  sub_1000D1A1C();
  v494 = v488;
  v495 = v488;
  v496 = v580;
  v490(v440, v495, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v490(v440, v494, v496);
  v497 = v590;
  sub_1000D18CC();
  v585(v497, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 123 * v584;
  v574 = *(v591 + 48);
  *v571 = 123;
  sub_1000D358C();
  sub_1000D1A1C();
  v498 = v582;
  v492(v440, v582, v496);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v492(v440, v498, v496);
  v499 = v590;
  sub_1000D18CC();
  v585(v499, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 124 * v584;
  v574 = *(v591 + 48);
  *v571 = 124;
  sub_1000D358C();
  sub_1000D1A1C();
  v500 = v582;
  v501 = v580;
  v502 = v578;
  v578(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v502(v440, v500, v501);
  v503 = v502;
  v504 = v590;
  sub_1000D18CC();
  v585(v504, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 125 * v584;
  v574 = *(v591 + 48);
  *v571 = 125;
  sub_1000D358C();
  sub_1000D1A1C();
  v505 = v582;
  v506 = v580;
  v503(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v507 = v505;
  v503(v440, v505, v506);
  v508 = v590;
  sub_1000D18CC();
  v585(v508, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 126 * v584;
  v574 = *(v591 + 48);
  *v571 = 126;
  sub_1000D358C();
  sub_1000D1A1C();
  v509 = v578;
  v578(v440, v507, v506);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v509(v440, v507, v506);
  v510 = v590;
  sub_1000D18CC();
  v585(v510, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v584 << 7;
  v511 = *(v591 + 48);
  v570 = (v593 + 127 * v584);
  v571 = v511;
  *v570 = 127;
  sub_1000D358C();
  sub_1000D1A1C();
  v512 = v507;
  v513 = v580;
  v514 = v578;
  v578(v440, v512, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v515 = v582;
  v514(v440, v582, v513);
  v516 = v590;
  sub_1000D18CC();
  v585(v516, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v517 = *(v591 + 48);
  v570 = (v593 + v574);
  v571 = v517;
  *v570 = 0x80;
  sub_1000D358C();
  sub_1000D1A1C();
  v518 = v580;
  v519 = v578;
  v578(v440, v515, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v519(v440, v515, v518);
  v520 = v590;
  sub_1000D18CC();
  v585(v520, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + v574 + v584;
  v574 = *(v591 + 48);
  *v571 = -127;
  sub_1000D358C();
  sub_1000D1A1C();
  v521 = v582;
  v522 = v578;
  v578(v440, v582, v518);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v522(v440, v521, v518);
  v523 = v522;
  v524 = v590;
  sub_1000D18CC();
  v585(v524, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 130 * v584;
  v574 = *(v591 + 48);
  *v571 = -126;
  sub_1000D358C();
  sub_1000D1A1C();
  v525 = v582;
  v526 = v580;
  v523(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v523(v440, v525, v526);
  v527 = v590;
  sub_1000D18CC();
  v585(v527, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v571 = v593 + 131 * v584;
  v574 = *(v591 + 48);
  *v571 = -125;
  sub_1000D358C();
  sub_1000D1A1C();
  v528 = v582;
  v529 = v580;
  v530 = v578;
  v578(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v530(v440, v528, v529);
  v531 = v590;
  sub_1000D18CC();
  v585(v531, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 132 * v584;
  v577 = *(v591 + 48);
  *v574 = -124;
  sub_1000D358C();
  sub_1000D1A1C();
  v532 = v582;
  v530(v440, v582, v529);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v530(v440, v532, v529);
  v533 = v590;
  sub_1000D18CC();
  v585(v533, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 133 * v584;
  v577 = *(v591 + 48);
  *v574 = -123;
  sub_1000D358C();
  sub_1000D1A1C();
  v534 = v582;
  v535 = v580;
  v530(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v530(v440, v534, v535);
  v536 = v590;
  sub_1000D18CC();
  v585(v536, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 134 * v584;
  v577 = *(v591 + 48);
  *v574 = -122;
  sub_1000D358C();
  sub_1000D1A1C();
  v537 = v582;
  v538 = v580;
  v530(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v530(v440, v537, v538);
  v539 = v590;
  sub_1000D18CC();
  v585(v539, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 135 * v584;
  v577 = *(v591 + 48);
  *v574 = -121;
  sub_1000D358C();
  sub_1000D1A1C();
  v540 = v582;
  v541 = v580;
  v542 = v578;
  v578(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v542(v440, v540, v541);
  v543 = v590;
  sub_1000D18CC();
  v585(v543, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 136 * v584;
  v577 = *(v591 + 48);
  *v574 = -120;
  sub_1000D358C();
  sub_1000D1A1C();
  v544 = v582;
  v545 = v580;
  v546 = v578;
  v578(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v546(v440, v544, v545);
  v547 = v590;
  sub_1000D18CC();
  v585(v547, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v574 = v593 + 137 * v584;
  v577 = *(v591 + 48);
  *v574 = -119;
  sub_1000D358C();
  sub_1000D1A1C();
  v548 = v544;
  v549 = v544;
  v550 = v580;
  v546(v440, v549, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v551 = v550;
  v546(v440, v548, v550);
  v552 = v546;
  v553 = v590;
  sub_1000D18CC();
  v585(v553, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v577 = v593 + 138 * v584;
  v574 = *(v591 + 48);
  *v577 = -118;
  sub_1000D358C();
  sub_1000D1A1C();
  v554 = v582;
  v552(v440, v582, v551);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v552(v440, v554, v551);
  v555 = v590;
  sub_1000D18CC();
  v585(v555, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v556 = *(v591 + 48);
  v576 = v593 + 139 * v584;
  v577 = v556;
  *v576 = -117;
  sub_1000D358C();
  sub_1000D1A1C();
  v557 = v582;
  v558 = v580;
  v552(v440, v582, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v559 = v557;
  v552(v440, v557, v558);
  v560 = v590;
  sub_1000D18CC();
  v585(v560, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v561 = *(v591 + 48);
  v576 = v593 + 140 * v584;
  v577 = v561;
  *v576 = -116;
  sub_1000D358C();
  sub_1000D1A1C();
  v562 = v580;
  v563 = v578;
  v578(v440, v559, v580);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v563(v440, v559, v562);
  v564 = v590;
  sub_1000D18CC();
  v585(v564, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v577 = v593 + 141 * v584;
  v584 = *(v591 + 48);
  *v577 = -115;
  sub_1000D358C();
  sub_1000D1A1C();
  v565 = v582;
  v563(v440, v582, v562);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v563(v440, v565, v580);
  v566 = v590;
  sub_1000D18CC();
  v585(v566, 0, 1, v592);
  v589(v587, 1, 1, v588);
  sub_1000D163C();
  v567 = sub_100024194(v572);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C2C0 = v567;
  return result;
}

uint64_t sub_10006D804(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10005F6D4(*a1);
  v5 = v4;
  if (v3 == sub_10005F6D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000D39CC();
  }

  return v8 & 1;
}

Swift::Int sub_10006D88C()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_10005F6D4(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_10006D8F0()
{
  sub_10005F6D4(*v0);
  sub_1000D364C();
}

Swift::Int sub_10006D944()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_10005F6D4(v1);
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_10006D9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006E008();
  *a1 = result;
  return result;
}

unint64_t sub_10006D9D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10005F6D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10006DA10@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122090 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D174C();
  v3 = sub_100006610(v2, qword_10013C2A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10006DAB8(uint64_t a1)
{
  v2 = sub_100013724();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10006DB04()
{
  if (qword_100122098 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006DB60(uint64_t a1)
{
  v2 = sub_10006DD0C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10006DBB0()
{
  result = qword_1001251F8;
  if (!qword_1001251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001251F8);
  }

  return result;
}

unint64_t sub_10006DC08()
{
  result = qword_100125200;
  if (!qword_100125200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125200);
  }

  return result;
}

unint64_t sub_10006DC60()
{
  result = qword_100125208;
  if (!qword_100125208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125208);
  }

  return result;
}

unint64_t sub_10006DD0C()
{
  result = qword_100125210;
  if (!qword_100125210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125210);
  }

  return result;
}

unint64_t sub_10006DD60()
{
  result = qword_100125218;
  if (!qword_100125218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125218);
  }

  return result;
}

unint64_t sub_10006DDB8()
{
  result = qword_100125220;
  if (!qword_100125220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125220);
  }

  return result;
}

unint64_t sub_10006DE14()
{
  result = qword_100125228;
  if (!qword_100125228)
  {
    sub_10000637C(&qword_100125230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125228);
  }

  return result;
}

unint64_t sub_10006DE7C()
{
  result = qword_100125238;
  if (!qword_100125238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125238);
  }

  return result;
}

unint64_t sub_10006DED4()
{
  result = qword_100125240;
  if (!qword_100125240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125240);
  }

  return result;
}

unint64_t sub_10006DF2C()
{
  result = qword_100125248;
  if (!qword_100125248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125248);
  }

  return result;
}

unint64_t sub_10006DF80(uint64_t a1)
{
  *(a1 + 8) = sub_100013724();
  result = sub_100013944();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006DFB4()
{
  result = qword_100125250;
  if (!qword_100125250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125250);
  }

  return result;
}

uint64_t sub_10006E008()
{
  v0 = sub_1000D39EC();

  v1 = 0;
  result = 34;
  switch(v0)
  {
    case 0:
      goto LABEL_109;
    case 1:
      v1 = 1;
      goto LABEL_109;
    case 2:
      v1 = 2;
      goto LABEL_109;
    case 3:
      v1 = 3;
      goto LABEL_109;
    case 4:
      v1 = 4;
      goto LABEL_109;
    case 5:
      v1 = 5;
      goto LABEL_109;
    case 6:
      v1 = 6;
      goto LABEL_109;
    case 7:
      v1 = 7;
      goto LABEL_109;
    case 8:
      v1 = 8;
      goto LABEL_109;
    case 9:
      v1 = 9;
      goto LABEL_109;
    case 10:
      v1 = 10;
      goto LABEL_109;
    case 11:
      v1 = 11;
      goto LABEL_109;
    case 12:
      v1 = 12;
      goto LABEL_109;
    case 13:
      v1 = 13;
      goto LABEL_109;
    case 14:
      v1 = 14;
      goto LABEL_109;
    case 15:
      v1 = 15;
      goto LABEL_109;
    case 16:
      v1 = 16;
      goto LABEL_109;
    case 17:
      v1 = 17;
      goto LABEL_109;
    case 18:
      v1 = 18;
      goto LABEL_109;
    case 19:
      v1 = 19;
      goto LABEL_109;
    case 20:
      v1 = 20;
      goto LABEL_109;
    case 21:
      v1 = 21;
      goto LABEL_109;
    case 22:
      v1 = 22;
      goto LABEL_109;
    case 23:
      v1 = 23;
      goto LABEL_109;
    case 24:
      v1 = 24;
      goto LABEL_109;
    case 25:
      v1 = 25;
      goto LABEL_109;
    case 26:
      v1 = 26;
      goto LABEL_109;
    case 27:
      v1 = 27;
      goto LABEL_109;
    case 28:
      v1 = 28;
      goto LABEL_109;
    case 29:
      v1 = 29;
      goto LABEL_109;
    case 30:
      v1 = 30;
      goto LABEL_109;
    case 31:
      v1 = 31;
      goto LABEL_109;
    case 32:
      v1 = 32;
      goto LABEL_109;
    case 33:
      v1 = 33;
LABEL_109:
      result = v1;
      break;
    case 34:
      return result;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0xE)
      {
        result = 4294967182;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

uint64_t sub_10006E818(uint64_t a1, const void *a2)
{
  v4 = sub_1000D17DC();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  v6 = sub_1000D360C();
  v8 = v7;
  v2[6] = v7;
  sub_1000D1AEC();
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_10006E958;

  return static UTSURLRequestFactory.create(route:)(v5, v6, v8);
}

uint64_t sub_10006E958()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = sub_1000D187C();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[2];
    v10 = sub_1000D17AC();
    (*(v8 + 8))(v7, v9);
    v6 = v10;
    v5 = 0;
    v4 = v10;
  }

  v11 = v2[5];
  (v11)[2](v11, v6, v5);

  _Block_release(v11);

  v12 = v3[1];

  return v12();
}

id WidgetsURLRequestFactoryProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetsURLRequestFactoryProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id WidgetsURLRequestFactoryProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetsURLRequestFactoryProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006EBC4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006EC04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000119BC;

  return sub_10006E818(v2, v3);
}

uint64_t sub_10006ECBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100013B8C;

  return sub_1000CEC40(v2, v3, v4);
}

uint64_t sub_10006ED7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006EDBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013B8C;

  return sub_1000CED28(a1, v4, v5, v6);
}

unint64_t sub_10006EE90()
{
  result = qword_100125298;
  if (!qword_100125298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125298);
  }

  return result;
}

void sub_10006EF28(char a1)
{
  sub_10006FB10(a1, sub_100016258, &type metadata for TVSettingsPlaybackUseCellularEntity, &off_1001229B0, sub_1000B7A10);
  if (!v1)
  {
    sub_1000D38DC(20);
    v10._object = 0x80000001000DB0A0;
    v10._countAndFlagsBits = 0xD000000000000012;
    sub_1000D366C(v10);
    sub_1000D395C();
    sub_1000B7A10(0, 0xE000000000000000);

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v2 = sub_100016258();
    v3 = (*(v2 + 48))(&type metadata for TVSettingsPlaybackUseCellularEntity, v2);
    v5 = v4;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
    {
      v9 = *(v6[7] + v7);
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v9);
  }
}

void sub_10006F124(char a1)
{
  sub_10006FB10(a1, sub_10001DF8C, &type metadata for TVSettingsShowSportsScoresEntity, &off_1001232F0, sub_1000B7990);
  if (!v1)
  {
    sub_1000D38DC(20);
    v10._object = 0x80000001000DB0A0;
    v10._countAndFlagsBits = 0xD000000000000012;
    sub_1000D366C(v10);
    sub_1000D395C();
    sub_1000B7990(0, 0xE000000000000000);

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v2 = sub_10001DF8C();
    v3 = (*(v2 + 48))(&type metadata for TVSettingsShowSportsScoresEntity, v2);
    v5 = v4;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
    {
      v9 = *(v6[7] + v7);
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v9);
  }
}

void sub_10006F320(char a1)
{
  sub_10006FB10(a1, sub_100020CC0, &type metadata for TVSettingsUseDownloadAVAdapterEntity, &off_1001234D8, sub_1000B7A50);
  if (!v1)
  {
    sub_1000D38DC(20);
    v10._object = 0x80000001000DB0A0;
    v10._countAndFlagsBits = 0xD000000000000012;
    sub_1000D366C(v10);
    sub_1000D395C();
    sub_1000B7A50(0, 0xE000000000000000);

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v2 = sub_100020CC0();
    v3 = (*(v2 + 48))(&type metadata for TVSettingsUseDownloadAVAdapterEntity, v2);
    v5 = v4;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
    {
      v9 = *(v6[7] + v7);
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v9);
  }
}

void sub_10006F51C(char a1)
{
  sub_10006FB10(a1, sub_100030EB8, &type metadata for TVSettingsDownloadUseDefaultSubtitleLanguagesEntity, &off_100123DA8, sub_1000B7AD0);
  if (!v1)
  {
    sub_1000D38DC(20);
    v10._object = 0x80000001000DB0A0;
    v10._countAndFlagsBits = 0xD000000000000012;
    sub_1000D366C(v10);
    sub_1000D395C();
    sub_1000B7AD0(0, 0xE000000000000000);

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v2 = sub_100030EB8();
    v3 = (*(v2 + 48))(&type metadata for TVSettingsDownloadUseDefaultSubtitleLanguagesEntity, v2);
    v5 = v4;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
    {
      v9 = *(v6[7] + v7);
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v9);
  }
}

void sub_10006F718(char a1)
{
  sub_10006FB10(a1, sub_10004A868, &type metadata for TVSettingsDownloadUseCellularEntity, &off_100124C90, sub_1000B79D0);
  if (!v1)
  {
    sub_1000D38DC(20);
    v10._object = 0x80000001000DB0A0;
    v10._countAndFlagsBits = 0xD000000000000012;
    sub_1000D366C(v10);
    sub_1000D395C();
    sub_1000B79D0(0, 0xE000000000000000);

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v2 = sub_10004A868();
    v3 = (*(v2 + 48))(&type metadata for TVSettingsDownloadUseCellularEntity, v2);
    v5 = v4;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
    {
      v9 = *(v6[7] + v7);
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v9);
  }
}

void sub_10006F914(char a1)
{
  sub_10006FB10(a1, sub_100071754, &type metadata for TVSettingsUsePlayHistoryEntity, &off_100125290, sub_1000B7970);
  if (!v1)
  {
    sub_1000D38DC(20);
    v10._object = 0x80000001000DB0A0;
    v10._countAndFlagsBits = 0xD000000000000012;
    sub_1000D366C(v10);
    sub_1000D395C();
    sub_1000B7970(0, 0xE000000000000000);

    if (qword_100122140 != -1)
    {
      swift_once();
    }

    v2 = sub_100071754();
    v3 = (*(v2 + 48))(&type metadata for TVSettingsUsePlayHistoryEntity, v2);
    v5 = v4;
    if (qword_100122148 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = off_1001260A0;
    if (*(off_1001260A0 + 2) && (v7 = sub_1000232F8(v3, v5), (v8 & 1) != 0))
    {
      v9 = *(v6[7] + v7);
    }

    else
    {
      v9 = 0;
    }

    swift_endAccess();

    sub_1000B7D4C(v9);
  }
}

uint64_t sub_10006FB10(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  v9 = a2();
  v10 = (*(v9 + 48))(a3, v9);
  v12 = sub_1000540F4(v10, v11);

  if (v12 == 19)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_1000A1B28(v13, v21);
  if (v22 == 255)
  {
    result = sub_1000726F0(v21);
    v16 = *(*a4 + 16);
    v17 = (*a4 + 32);
    while (v16)
    {
      v18 = *v17++;
      --v16;
      if (v18 == (a1 & 1))
      {
        return result;
      }
    }

    *&v23[0] = 0;
    *(&v23[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(17);
    v25._countAndFlagsBits = 0x2064696C61766E69;
    v25._object = 0xEF203A65756C6176;
    sub_1000D366C(v25);
    v19 = a1 & 1;
    LOBYTE(v21[0]) = v19;
    sub_1000D395C();
    a5(*&v23[0], *(&v23[0] + 1));

    sub_100072758();
    swift_allocError();
    *(v20 + 24) = &type metadata for Bool;
    *v20 = v19;
    *(v20 + 32) = 1;
    return swift_willThrow();
  }

  else
  {
    v23[0] = v21[0];
    v23[1] = v21[1];
    v24 = v22;
    sub_100072758();
    swift_allocError();
    sub_1000727AC(v23, v14);
    swift_willThrow();
    return sub_100072808(v23);
  }
}

uint64_t sub_10006FD00()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C2C8);
  sub_100006610(v10, qword_10013C2C8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10006FFEC()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C2E0);
  sub_100006610(v0, qword_10013C2E0);
  return sub_1000D188C();
}

uint64_t sub_100070050()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C2F8);
  v1 = sub_100006610(v0, qword_10013C2F8);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100070110()
{
  result = swift_getKeyPath();
  qword_10013C310 = result;
  return result;
}

uint64_t sub_100070138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10007015C, 0, 0);
}

uint64_t sub_10007015C()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_1001220B8 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C310;
  *(v0 + 152) = qword_10013C310;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100125408, &qword_100125410);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_1000702C8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000702C8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100070438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100070438()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C310;
  v0[25] = qword_10013C310;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100014DE4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t (*sub_10007051C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_100070590(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_100070604()
{
  if (qword_1001220B8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100070664()
{
  result = qword_1001252B0;
  if (!qword_1001252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252B0);
  }

  return result;
}

unint64_t sub_1000706BC()
{
  result = qword_1001252B8;
  if (!qword_1001252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252B8);
  }

  return result;
}

uint64_t sub_1000707CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001220B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C2F8);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100070850(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_100070138(a1, v5, v4);
}

uint64_t sub_1000708FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100071FA8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100070944()
{
  result = qword_1001252C0;
  if (!qword_1001252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252C0);
  }

  return result;
}

unint64_t sub_10007099C()
{
  result = qword_1001252C8;
  if (!qword_1001252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252C8);
  }

  return result;
}

uint64_t sub_100070A10()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_100071754();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsUsePlayHistoryEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  **(v0 + 40) = (sub_1000B8110(v8) & 1) == 0;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100070BC4()
{
  sub_10006F914((*(v0 + 16) & 1) == 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070C68()
{
  v1 = *(v0 + 16);
  *v1 = sub_100072410();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100070CD8()
{
  result = qword_1001252D0;
  if (!qword_1001252D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252D0);
  }

  return result;
}

uint64_t sub_100070D2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000718F8();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100070DE0()
{
  result = qword_1001252D8;
  if (!qword_1001252D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252D8);
  }

  return result;
}

unint64_t sub_100070E38()
{
  result = qword_1001252E0;
  if (!qword_1001252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252E0);
  }

  return result;
}

unint64_t sub_100070E90()
{
  result = qword_1001252E8;
  if (!qword_1001252E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252E8);
  }

  return result;
}

uint64_t sub_100070EE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000718F8();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100070F98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000718F8();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10007104C()
{
  result = qword_1001252F0;
  if (!qword_1001252F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252F0);
  }

  return result;
}

unint64_t sub_1000710A4()
{
  result = qword_1001252F8;
  if (!qword_1001252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001252F8);
  }

  return result;
}

unint64_t sub_1000710FC()
{
  result = qword_100125300;
  if (!qword_100125300)
  {
    sub_10000637C(&qword_100125308);
    sub_1000710A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125300);
  }

  return result;
}

uint64_t sub_100071180(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100070CD8();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100071264(uint64_t a1)
{
  v2 = sub_100071754();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_100070E90();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10007130C()
{
  sub_1000716D8();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000713B0(uint64_t a1)
{
  v2 = sub_100070E90();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000713FC(uint64_t a1)
{
  v2 = sub_10007099C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100071448(uint64_t a1)
{
  v2 = sub_1000714F0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100071498()
{
  result = qword_100125310;
  if (!qword_100125310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125310);
  }

  return result;
}

unint64_t sub_1000714F0()
{
  result = qword_100125318;
  if (!qword_100125318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125318);
  }

  return result;
}

unint64_t sub_100071544()
{
  result = qword_100125320;
  if (!qword_100125320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125320);
  }

  return result;
}

unint64_t sub_10007159C()
{
  result = qword_100125328;
  if (!qword_100125328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125328);
  }

  return result;
}

unint64_t sub_1000715F8()
{
  result = qword_100125330;
  if (!qword_100125330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125330);
  }

  return result;
}

unint64_t sub_10007164C(void *a1)
{
  a1[1] = sub_100071684();
  a1[2] = sub_1000716D8();
  result = sub_10007099C();
  a1[3] = result;
  return result;
}

unint64_t sub_100071684()
{
  result = qword_100125380;
  if (!qword_100125380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125380);
  }

  return result;
}

unint64_t sub_1000716D8()
{
  result = qword_100125388;
  if (!qword_100125388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125388);
  }

  return result;
}

unint64_t sub_10007172C(uint64_t a1)
{
  result = sub_100071754();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100071754()
{
  result = qword_1001253D0;
  if (!qword_1001253D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001253D0);
  }

  return result;
}

unint64_t sub_1000717F0()
{
  result = qword_1001253E8;
  if (!qword_1001253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001253E8);
  }

  return result;
}

unint64_t sub_100071848()
{
  result = qword_1001253F0;
  if (!qword_1001253F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001253F0);
  }

  return result;
}

unint64_t sub_1000718A0()
{
  result = qword_1001253F8;
  if (!qword_1001253F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001253F8);
  }

  return result;
}

unint64_t sub_1000718F8()
{
  result = qword_100125400;
  if (!qword_100125400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125400);
  }

  return result;
}

uint64_t sub_10007194C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100006334(&qword_100122BC8);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v32 = &v32 - v3;
  v4 = sub_100006334(&qword_100122BD0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100006334(&qword_100122BD8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v34 = &v32 - v9;
  v10 = sub_100006334(&qword_100122BE0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  strcpy(v45, "com.apple.tv.");
  HIWORD(v45[1]) = -4864;
  v13 = sub_100072938();
  v14 = *(v13 + 40);
  v52._countAndFlagsBits = (v14)(&type metadata for TVSettingsUsePlayHistoryWidget, v13);
  sub_1000D366C(v52);

  swift_getKeyPath();
  sub_100006334(&qword_100122BE8);
  sub_10007099C();
  sub_10000FC38(&qword_100122BF0, &qword_100122BE8);
  v15 = v32;
  sub_1000D32DC();
  v45[0] = v14();
  v45[1] = v16;
  v50 = 0x746567646957;
  v51 = 0xE600000000000000;
  v48 = 0x656C67676F54;
  v49 = 0xE600000000000000;
  v31 = sub_10000F320();
  v17 = sub_1000D387C();
  v19 = v18;

  v45[0] = v17;
  v45[1] = v19;
  v20 = sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  v21 = v33;
  v22 = v36;
  sub_1000D223C();

  (*(v37 + 8))(v15, v22);
  v50 = 0xD000000000000026;
  v51 = 0x80000001000DB1A0;
  v45[0] = v22;
  v45[1] = &type metadata for String;
  v46 = v20;
  v47 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v38;
  sub_1000D21FC();
  (*(v39 + 8))(v21, v25);
  v45[0] = v25;
  v45[1] = &type metadata for String;
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v40;
  sub_1000D224C();
  (*(v41 + 8))(v24, v28);
  v45[0] = v28;
  v45[1] = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1000D227C();
  return (*(v43 + 8))(v27, v29);
}

uint64_t sub_100071FA8()
{
  v0 = sub_100006334(&qword_100122B50);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000D168C();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001228E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000D18BC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100006334(&qword_100125428);
  sub_1000D188C();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_1000D150C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100070E90();
  v22[0] = sub_1000D157C();
  sub_100006334(&qword_100122B60);
  sub_1000D188C();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000D36FC();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_1000D158C();
  return v22[0];
}

uint64_t sub_100072410()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v10 = &type metadata for TVSettingsUsePlayHistoryEntity;
  sub_100006334(&qword_100122D90);
  v9 = sub_1000D361C();
  sub_100006334(&qword_1001252A8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100125408, &qword_100125410);
  sub_1000D179C();
  return v9;
}

uint64_t sub_1000726F0(uint64_t a1)
{
  v2 = sub_100006334(&qword_100125418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100072758()
{
  result = qword_100125420;
  if (!qword_100125420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125420);
  }

  return result;
}

unint64_t sub_100072894(uint64_t a1)
{
  result = sub_1000728BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000728BC()
{
  result = qword_100125478;
  if (!qword_100125478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125478);
  }

  return result;
}

unint64_t sub_100072910(uint64_t a1)
{
  result = sub_100072938();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100072938()
{
  result = qword_100125480;
  if (!qword_100125480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125480);
  }

  return result;
}

uint64_t sub_10007298C()
{
  sub_10000637C(&qword_100122BE0);
  sub_10000637C(&qword_100122BD8);
  sub_10000637C(&qword_100122BD0);
  sub_10000637C(&qword_100122BC8);
  sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100072B14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100072B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100072B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100072BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100006334(&qword_100125488);
  __chkstk_darwin(v3);
  v5 = v31 - v4;
  v6 = *(v1 + 8);
  v31[0] = *v1;
  v31[1] = v6;
  sub_10000F320();

  v7 = sub_1000D260C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = &v5[*(sub_100006334(&qword_100125490) + 36)];
  sub_100006334(&qword_1001248F8);
  sub_1000D1E6C();
  *v14 = swift_getKeyPath();
  *v5 = v7;
  *(v5 + 1) = v9;
  v5[16] = v11 & 1;
  *(v5 + 3) = v13;
  *(v5 + 16) = 0;
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  v21 = &v5[*(sub_100006334(&qword_100125498) + 36)];
  *v21 = KeyPath;
  v21[1] = v16;
  v22 = swift_getKeyPath();
  v23 = &v5[*(v3 + 36)];
  *v23 = v22;
  v23[1] = v15;
  sub_100072E74();

  sub_1000D272C();
  sub_100073154(v5);
  v24 = swift_getKeyPath();
  v25 = a1 + *(sub_100006334(&qword_1001254D8) + 36);
  *v25 = v24;
  *(v25 + 8) = v17;
  *(v25 + 16) = 0;
  v26 = swift_getKeyPath();
  v27 = a1 + *(sub_100006334(&qword_1001254E0) + 36);
  *v27 = v26;
  *(v27 + 8) = v18;
  v28 = swift_getKeyPath();
  result = sub_100006334(&qword_1001254E8);
  v30 = (a1 + *(result + 36));
  *v30 = v28;
  v30[1] = v19;
  return result;
}

unint64_t sub_100072E74()
{
  result = qword_1001254A0;
  if (!qword_1001254A0)
  {
    sub_10000637C(&qword_100125488);
    sub_100072F2C();
    sub_10000FC38(&qword_100124A00, &qword_100124A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254A0);
  }

  return result;
}

unint64_t sub_100072F2C()
{
  result = qword_1001254A8;
  if (!qword_1001254A8)
  {
    sub_10000637C(&qword_100125498);
    sub_100072FE4();
    sub_10000FC38(&qword_1001251C0, &qword_1001251A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254A8);
  }

  return result;
}

unint64_t sub_100072FE4()
{
  result = qword_1001254B0;
  if (!qword_1001254B0)
  {
    sub_10000637C(&qword_100125490);
    sub_10007309C();
    sub_10000FC38(&qword_100124AC0, &qword_1001248F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254B0);
  }

  return result;
}

unint64_t sub_10007309C()
{
  result = qword_1001254B8;
  if (!qword_1001254B8)
  {
    sub_10000637C(&qword_1001254C0);
    sub_10000FC38(&qword_1001254C8, &qword_1001254D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254B8);
  }

  return result;
}

uint64_t sub_100073154(uint64_t a1)
{
  v2 = sub_100006334(&qword_100125488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000731D8()
{
  result = qword_1001254F0;
  if (!qword_1001254F0)
  {
    sub_10000637C(&qword_1001254E8);
    sub_100073290();
    sub_10000FC38(&qword_1001225D0, &qword_1001225D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254F0);
  }

  return result;
}

unint64_t sub_100073290()
{
  result = qword_1001254F8;
  if (!qword_1001254F8)
  {
    sub_10000637C(&qword_1001254E0);
    sub_100073348();
    sub_10000FC38(&qword_1001224E8, &qword_1001224F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254F8);
  }

  return result;
}

unint64_t sub_100073348()
{
  result = qword_100125500;
  if (!qword_100125500)
  {
    sub_10000637C(&qword_1001254D8);
    sub_10000637C(&qword_100125488);
    sub_100072E74();
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_1001224D8, &qword_1001224E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125500);
  }

  return result;
}

uint64_t sub_100073450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetHeaderViewLayout();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000734D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVWidgetHeaderViewLayout();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TVWidgetHeaderView()
{
  result = qword_100125560;
  if (!qword_100125560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007358C()
{
  result = type metadata accessor for TVWidgetHeaderViewLayout();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100073614@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D329C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006334(&qword_100125598);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  *v8 = sub_1000D210C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100006334(&qword_1001255A0);
  sub_100073818(&v8[*(v9 + 44)]);
  sub_1000D325C();
  v10 = sub_1000D326C();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    sub_1000D2B6C();
  }

  else
  {
    sub_1000D2B7C();
  }

  sub_1000D1E2C();
  sub_100073B28(v8, a1);
  v11 = a1 + *(sub_100006334(&qword_1001255A8) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_100073818@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_1000D28EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100006334(&qword_1001255B0);
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v13 - v6;
  type metadata accessor for TVWidgetHeaderViewLayout();

  sub_1000D292C();
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v8 = sub_1000D291C();

  (*(v2 + 8))(v4, v1);
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v18[38] = v22;
  *&v18[22] = v21;
  *&v18[6] = v20;
  *&v17[2] = *v18;
  v19 = 1;
  v16 = v8;
  *v17 = 1;
  *&v17[18] = *&v18[16];
  *&v17[34] = *&v18[32];
  *&v17[48] = *(&v22 + 1);
  v9 = sub_100006334(&qword_1001255B8);
  v10 = sub_100073B98();
  sub_1000D26BC();
  v23[2] = *&v17[16];
  v23[3] = *&v17[32];
  v24 = *&v17[48];
  v23[0] = v16;
  v23[1] = *v17;
  sub_100073CA8(v23);
  *&v16 = v9;
  *(&v16 + 1) = v10;
  swift_getOpaqueTypeConformance2();
  v11 = v14;
  sub_1000D265C();
  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_100073B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100125598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100073B98()
{
  result = qword_1001255C0;
  if (!qword_1001255C0)
  {
    sub_10000637C(&qword_1001255B8);
    sub_100073C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255C0);
  }

  return result;
}

unint64_t sub_100073C24()
{
  result = qword_1001255C8;
  if (!qword_1001255C8)
  {
    sub_10000637C(&qword_1001255D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255C8);
  }

  return result;
}

uint64_t sub_100073CA8(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001255B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100073D14()
{
  result = qword_1001255D8;
  if (!qword_1001255D8)
  {
    sub_10000637C(&qword_1001255A8);
    sub_100073DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255D8);
  }

  return result;
}

unint64_t sub_100073DA0()
{
  result = qword_1001255E0;
  if (!qword_1001255E0)
  {
    sub_10000637C(&qword_100125598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255E0);
  }

  return result;
}

uint64_t sub_100073E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SportsWidgetPlayByPlayLayout();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100073F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006334(&qword_1001222B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SportsWidgetPlayByPlayLayout();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for SportsWidgetPlayByPlayView()
{
  result = qword_100125640;
  if (!qword_100125640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000740E0()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsWidgetPlayByPlayLayout();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100074188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100006334(&qword_100125680);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  *v6 = sub_1000D21BC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100006334(&qword_100125688);
  sub_100074320(v2, &v6[*(v7 + 44)]);
  v8 = v2 + *(type metadata accessor for SportsWidgetPlayByPlayView() + 24);
  type metadata accessor for SportsWidgetPlayByPlayLayout();
  v9 = sub_1000D2B9C();
  v10 = sub_1000D1ECC();
  v11 = sub_1000D1EDC();
  if (v10)
  {
    if ((v11 & ~v10) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v11)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v10 |= v11;
LABEL_7:
  v12 = a1 + *(sub_100006334(&qword_100125690) + 36);
  v13 = sub_1000D1F0C();
  (*(*(v13 - 8) + 16))(v12, v8, v13);
  v14 = sub_1000D230C();
  *(v12 + *(v14 + 20)) = v9;
  *(v12 + *(v14 + 24)) = v10;
  return sub_10000F998(v6, a1, &qword_100125680);
}

uint64_t sub_100074320@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v125 = a2;
  v109 = sub_100006334(&qword_100125698);
  v3 = *(v109 - 8);
  __chkstk_darwin(v109);
  v5 = &v106 - v4;
  v108 = sub_100006334(&qword_1001256A0);
  __chkstk_darwin(v108);
  v126 = &v106 - v6;
  v110 = sub_100006334(&qword_1001256A8);
  __chkstk_darwin(v110);
  v112 = &v106 - v7;
  v111 = sub_100006334(&qword_1001256B0);
  __chkstk_darwin(v111);
  v114 = &v106 - v8;
  v113 = sub_100006334(&qword_1001256B8);
  __chkstk_darwin(v113);
  v122 = &v106 - v9;
  v121 = sub_100006334(&qword_1001256C0);
  v10 = __chkstk_darwin(v121);
  v124 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v120 = &v106 - v13;
  __chkstk_darwin(v12);
  v123 = &v106 - v14;
  v15 = sub_1000D1DBC();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v119 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v106 - v20;
  __chkstk_darwin(v19);
  v23 = &v106 - v22;
  sub_1000B2124(&v106 - v22);
  sub_1000D1D9C();
  v24 = *(v16 + 8);
  v128 = v16 + 8;
  v129 = v15;
  v127 = v24;
  v24(v23, v15);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v117 = v233;
  v118 = v231;
  v115 = v236;
  v116 = v235;
  v230 = 1;
  v229 = v232;
  v228 = v234;
  v25 = a1;
  sub_100075150(v5);
  sub_100006334(&qword_100124980);
  v26 = swift_allocObject();
  v106 = xmmword_1000E2080;
  *(v26 + 16) = xmmword_1000E2080;
  LOBYTE(a1) = sub_1000D238C();
  *(v26 + 32) = a1;
  v27 = sub_1000D23AC();
  *(v26 + 33) = v27;
  v28 = sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != a1)
  {
    v28 = sub_1000D239C();
  }

  sub_1000D239C();
  if (sub_1000D239C() != v27)
  {
    v28 = sub_1000D239C();
  }

  v29 = type metadata accessor for SportsWidgetPlayByPlayView();
  type metadata accessor for SportsWidgetPlayByPlayLayout();
  sub_1000D1B9C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v126;
  (*(v3 + 32))(v126, v5, v109);
  v39 = v38 + *(v108 + 36);
  *v39 = v28;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = v106;
  LOBYTE(v38) = sub_1000D236C();
  *(v40 + 32) = v38;
  v41 = sub_1000D237C();
  *(v40 + 33) = v41;
  v42 = sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != v38)
  {
    v42 = sub_1000D239C();
  }

  sub_1000D239C();
  if (sub_1000D239C() != v41)
  {
    v42 = sub_1000D239C();
  }

  v43 = v25;
  sub_1000B2124(v21);
  sub_1000D1D9C();
  v127(v21, v129);
  sub_1000D1B9C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v112;
  sub_10000F998(v126, v112, &qword_1001256A0);
  v53 = v52 + *(v110 + 36);
  *v53 = v42;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  v54 = *(v29 + 20);
  v107 = v43;
  v55 = v43 + v54;
  v56 = *(v43 + v54 + 24);
  v57 = sub_1000D2B5C();
  v59 = v58;
  sub_1000756E8(v43, 1, v56, &v189);
  v222 = v195;
  v223 = v196;
  v224 = v197;
  v218 = v191;
  v219 = v192;
  v220 = v193;
  v221 = v194;
  v216 = v189;
  v217 = v190;
  v226[6] = v195;
  v226[7] = v196;
  v226[8] = v197;
  v226[2] = v191;
  v226[3] = v192;
  v226[4] = v193;
  v226[5] = v194;
  v226[0] = v189;
  v225 = v198;
  v227 = v198;
  v226[1] = v190;
  sub_10000F8D0(&v216, &v176, &qword_1001256C8);
  sub_10000F938(v226, &qword_1001256C8);
  v154 = v222;
  v155 = v223;
  v156 = v224;
  v60 = *(v55 + 16) == 0;
  v150 = v218;
  v151 = v219;
  v152 = v220;
  v153 = v221;
  v148 = v216;
  v149 = v217;
  v61 = 1.0;
  if (v60)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = 1.0;
  }

  *&v157 = v225;
  v63 = sub_1000D2B5C();
  v65 = v64;
  *&v176 = v57;
  *(&v176 + 1) = v59;
  v183 = v154;
  v184 = v155;
  v185 = v156;
  *&v186 = v157;
  v179 = v150;
  v180 = v151;
  v181 = v152;
  v182 = v153;
  v177 = v148;
  v178 = v149;
  BYTE8(v186) = 1;
  *&v187 = v62;
  *(&v187 + 1) = v63;
  v188 = v64;
  v66 = v52;
  v67 = v114;
  sub_10000F998(v66, v114, &qword_1001256A8);
  v68 = v67 + *(v111 + 36);
  v69 = v187;
  *(v68 + 160) = v186;
  *(v68 + 176) = v69;
  *(v68 + 192) = v188;
  v70 = v183;
  *(v68 + 96) = v182;
  *(v68 + 112) = v70;
  v71 = v185;
  *(v68 + 128) = v184;
  *(v68 + 144) = v71;
  v72 = v179;
  *(v68 + 32) = v178;
  *(v68 + 48) = v72;
  v73 = v181;
  *(v68 + 64) = v180;
  *(v68 + 80) = v73;
  v74 = v177;
  *v68 = v176;
  *(v68 + 16) = v74;
  *&v189 = v57;
  *(&v189 + 1) = v59;
  v196 = v154;
  v197 = v155;
  v198 = v156;
  v199 = v157;
  v192 = v150;
  v193 = v151;
  v194 = v152;
  v195 = v153;
  v190 = v148;
  v191 = v149;
  v200 = 1;
  v201 = v62;
  v202 = v63;
  v203 = v65;
  sub_10000F8D0(&v176, &v161, &qword_1001256D0);
  sub_10000F938(&v189, &qword_1001256D0);
  v75 = *(v55 + 40);
  v76 = sub_1000D2B5C();
  v78 = v77;
  sub_1000756E8(v107, 3, v75, &v161);
  v210 = v167;
  v211 = v168;
  v212 = v169;
  v206 = v163;
  v207 = v164;
  v208 = v165;
  v209 = v166;
  v204 = v161;
  v205 = v162;
  v214[6] = v167;
  v214[7] = v168;
  v214[8] = v169;
  v214[2] = v163;
  v214[3] = v164;
  v214[4] = v165;
  v214[5] = v166;
  v214[0] = v161;
  v213 = v170;
  v215 = v170;
  v214[1] = v162;
  sub_10000F8D0(&v204, &v148, &qword_1001256C8);
  sub_10000F938(v214, &qword_1001256C8);
  v144 = v210;
  v145 = v211;
  v146 = v212;
  v147 = v213;
  v140 = v206;
  v141 = v207;
  v142 = v208;
  v143 = v209;
  if (!*(v55 + 32))
  {
    v61 = 0.0;
  }

  v138 = v204;
  v139 = v205;
  v79 = sub_1000D2B5C();
  v81 = v80;
  *&v148 = v76;
  *(&v148 + 1) = v78;
  v155 = v144;
  v156 = v145;
  v157 = v146;
  *&v158 = v147;
  v151 = v140;
  v152 = v141;
  v153 = v142;
  v154 = v143;
  v149 = v138;
  v150 = v139;
  BYTE8(v158) = 1;
  *&v159 = v61;
  *(&v159 + 1) = v79;
  v160 = v80;
  v82 = v122;
  sub_10000F998(v67, v122, &qword_1001256B0);
  v83 = v82 + *(v113 + 36);
  v84 = v159;
  *(v83 + 160) = v158;
  *(v83 + 176) = v84;
  *(v83 + 192) = v160;
  v85 = v155;
  *(v83 + 96) = v154;
  *(v83 + 112) = v85;
  v86 = v157;
  *(v83 + 128) = v156;
  *(v83 + 144) = v86;
  v87 = v151;
  *(v83 + 32) = v150;
  *(v83 + 48) = v87;
  v88 = v153;
  *(v83 + 64) = v152;
  *(v83 + 80) = v88;
  v89 = v149;
  *v83 = v148;
  *(v83 + 16) = v89;
  *&v161 = v76;
  *(&v161 + 1) = v78;
  v168 = v144;
  v169 = v145;
  v170 = v146;
  v171 = v147;
  v164 = v140;
  v165 = v141;
  v166 = v142;
  v167 = v143;
  v162 = v138;
  v163 = v139;
  v172 = 1;
  v173 = v61;
  v174 = v79;
  v175 = v81;
  sub_10000F8D0(&v148, &v132, &qword_1001256D0);
  sub_10000F938(&v161, &qword_1001256D0);
  v90 = v120;
  sub_10000F998(v82, v120, &qword_1001256B8);
  *(v90 + *(v121 + 36)) = 0;
  v91 = v123;
  sub_10000F998(v90, v123, &qword_1001256C0);
  v92 = v119;
  sub_1000B2124(v119);
  sub_1000D1D9C();
  v127(v92, v129);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v128 = v134;
  v129 = v132;
  v126 = v137;
  v127 = v136;
  LOBYTE(v138) = 1;
  v131 = v133;
  v130 = v135;
  LOBYTE(v90) = v230;
  v93 = v229;
  v94 = v228;
  v95 = v124;
  sub_100075F34(v91, v124);
  LOBYTE(v81) = v138;
  v96 = v131;
  v97 = v130;
  v98 = v125;
  *v125 = 0;
  *(v98 + 8) = v90;
  v99 = v117;
  v98[2] = v118;
  *(v98 + 24) = v93;
  v98[4] = v99;
  *(v98 + 40) = v94;
  v100 = v115;
  v98[6] = v116;
  v98[7] = v100;
  v101 = sub_100006334(&qword_1001256D8);
  sub_100075F34(v95, v98 + *(v101 + 48));
  v102 = v98 + *(v101 + 64);
  *v102 = 0;
  v102[8] = v81;
  v103 = v128;
  *(v102 + 2) = v129;
  v102[24] = v96;
  *(v102 + 4) = v103;
  v102[40] = v97;
  v104 = v126;
  *(v102 + 6) = v127;
  *(v102 + 7) = v104;
  sub_10000F938(v91, &qword_1001256C0);
  return sub_10000F938(v95, &qword_1001256C0);
}