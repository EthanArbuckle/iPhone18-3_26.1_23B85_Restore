uint64_t ModelMonitoringDataTrialIdentifierReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_10000C608[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ModelMonitoringDataAnomalyMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v37) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v37 & 0x7F) << v28;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v30;
          }

LABEL_65:
          v34 = 8;
          goto LABEL_70;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v37) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v37 & 0x7F) << v15;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_69:
          v34 = 24;
          goto LABEL_70;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v37 & 0x7F) << v22;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_61:
            v34 = 28;
LABEL_70:
            *(a1 + v34) = v21;
            goto LABEL_71;
          case 4:
            v14 = objc_alloc_init(ModelMonitoringDataTrialIdentifier);
            objc_storeStrong((a1 + 32), v14);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !ModelMonitoringDataTrialIdentifierReadFrom(v14, a2))
            {
LABEL_73:

              return 0;
            }

            goto LABEL_46;
          case 5:
            v14 = objc_alloc_init(ModelMonitoringDataDataStateFromSingleSource);
            [a1 addDataStates:v14];
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !ModelMonitoringDataDataStateFromSingleSourceReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ModelMonitoringDataDataStateFromSingleSourceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100003C3C()
{
  v0 = sub_1000087BC();
  sub_10000827C(v0, qword_100010FA0);
  sub_1000080E0(v0, qword_100010FA0);
  return sub_1000087AC();
}

uint64_t sub_100003CBC()
{
  v0 = sub_10000878C();
  sub_10000827C(v0, qword_100010FB8);
  sub_1000080E0(v0, qword_100010FB8);
  return sub_10000877C();
}

uint64_t sub_100003D08(char a1, double a2)
{
  v4 = sub_10000899C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = &type metadata for ModelMonitoringLighthousePluginConfig;
  LOBYTE(v25) = a1;
  *(&v25 + 1) = a2;
  sub_10000897C();
  v9 = sub_10000898C();
  (*(v5 + 8))(v8, v4);
  v21[1] = v9;
  sub_1000088BC();
  sub_1000088DC();
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
        sub_10000881C(v11);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_10000881C(v28);
        sub_1000088CC();
        v12 = v22;
        v13 = v23;
        sub_1000083E0(v24, &qword_100010A40, &qword_10000A430);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100006D8C(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_100006D8C((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
      }

      else
      {
        sub_1000083E0(v24, &qword_100010A40, &qword_10000A430);
      }

      sub_1000088DC();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  *&v25 = 0xD000000000000026;
  *(&v25 + 1) = 0x8000000100009880;
  *&v24[0] = v10;
  sub_10000699C(&qword_100010A30, &qword_10000A428);
  sub_100008334();
  v17 = sub_1000087DC();
  v19 = v18;

  v29._countAndFlagsBits = v17;
  v29._object = v19;
  sub_10000881C(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_10000881C(v30);
  return v25;
}

Swift::Int sub_100004020()
{
  v1 = *v0;
  sub_10000894C();
  sub_10000895C(v1);
  return sub_10000896C();
}

Swift::Int sub_100004094()
{
  v1 = *v0;
  sub_10000894C();
  sub_10000895C(v1);
  return sub_10000896C();
}

unint64_t sub_1000040D8()
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

uint64_t sub_100004120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726150776F6C6C61 && a2 == 0xEC0000006C616974;
  if (v6 || (sub_10000893C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000098B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10000893C();

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

uint64_t sub_100004220(uint64_t a1)
{
  v2 = sub_100007760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000425C(uint64_t a1)
{
  v2 = sub_100007760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004298(void *a1)
{
  v3 = sub_10000699C(&qword_1000109F0, &qword_10000A3F0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000771C(a1, a1[3]);
  sub_100007760();
  sub_1000089BC();
  v12 = 0;
  sub_10000890C();
  if (!v1)
  {
    v11 = 1;
    sub_10000891C();
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100004420(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007570(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_100004454(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return sub_100004298(a1);
}

void sub_100004480(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier:210];
  v3 = sub_1000087EC();
  v4 = [v2 experimentIdentifiersWithNamespaceName:v3];

  if (qword_100010A50 != -1)
  {
    swift_once();
  }

  v5 = sub_1000087BC();
  sub_1000080E0(v5, qword_100010FA0);
  v6 = v4;
  v7 = sub_10000879C();
  v8 = sub_10000885C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v4;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "mm pligin: TrialRecipe: Trial identifiers: %@", v9, 0xCu);
    sub_1000083E0(v10, &qword_100010A10, &qword_10000A410);
  }

  if (v6)
  {
    v12 = [v6 experimentId];
    v13 = sub_1000087FC();
    v15 = v14;

    v16 = [v6 treatmentId];
    v17 = sub_1000087FC();
    v19 = v18;

    [v6 deploymentId];
    v20 = sub_10000892C();
    v22 = v21;
  }

  else
  {

    v13 = 0;
    v15 = 0;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 0;
  }

  *a1 = v13;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v19;
  a1[4] = v20;
  a1[5] = v22;
}

id sub_100004704()
{
  v0 = [objc_opt_self() clientWithIdentifier:210];
  v1 = sub_1000087EC();
  v2 = [v0 experimentIdentifiersWithNamespaceName:v1];

  if (qword_100010A50 != -1)
  {
    swift_once();
  }

  v3 = sub_1000087BC();
  sub_1000080E0(v3, qword_100010FA0);
  v4 = v2;
  v5 = sub_10000879C();
  v6 = sub_10000885C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v2;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "TrialAsset: Trial identifiers: %@", v7, 0xCu);
    sub_1000083E0(v8, &qword_100010A10, &qword_10000A410);
  }

  v10 = sub_1000087EC();
  v11 = sub_1000087EC();
  v12 = [v0 levelForFactor:v10 withNamespaceName:v11];

  if (!v12)
  {

LABEL_13:
    return 0;
  }

  result = [v12 fileValue];
  if (result)
  {
    v14 = result;
    v15 = [result path];

    if (v15)
    {
      v16 = sub_1000087FC();

      return v16;
    }

    v17 = sub_10000879C();
    v18 = sub_10000886C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100006E98(0xD00000000000001FLL, 0x8000000100009810, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "TrialAsset: Config file path not found in %s namespace", v19, 0xCu);
      sub_100008188(v20);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_100004A6C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    oslog = v2;
    [v2 logMessage:a1];
  }

  else
  {
    if (qword_100010A50 != -1)
    {
      swift_once();
    }

    v3 = sub_1000087BC();
    sub_1000080E0(v3, qword_100010FA0);
    oslog = sub_10000879C();
    v4 = sub_10000886C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Unable to get PETEventTracker2", v5, 2u);
    }
  }
}

uint64_t sub_100004B94()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1000087EC();
  v2 = [v0 contentsAtPath:v1];

  if (!v2)
  {
    if (qword_100010A50 != -1)
    {
      swift_once();
    }

    v11 = sub_1000087BC();
    sub_1000080E0(v11, qword_100010FA0);
    v12 = sub_10000879C();
    v13 = sub_10000885C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "mm plugin: Unable to read plist data.", v14, 2u);
    }

    return 0;
  }

  v3 = sub_1000086DC();
  v5 = v4;

  v6 = objc_opt_self();
  isa = sub_1000086CC().super.isa;
  v23[0] = 0;
  v8 = [v6 propertyListWithData:isa options:0 format:0 error:v23];

  if (!v8)
  {
    v15 = v23[0];
    sub_1000086BC();

    swift_willThrow();
    if (qword_100010A50 != -1)
    {
      swift_once();
    }

    v16 = sub_1000087BC();
    sub_1000080E0(v16, qword_100010FA0);
    swift_errorRetain();
    v17 = sub_10000879C();
    v18 = sub_10000885C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "mm plugin: Error reading plist file: %@", v19, 0xCu);
      sub_1000083E0(v20, &qword_100010A10, &qword_10000A410);

      sub_1000082E0(v3, v5);
    }

    else
    {
      sub_1000082E0(v3, v5);
    }

    return 0;
  }

  v9 = v23[0];
  sub_10000888C();
  sub_1000082E0(v3, v5);
  swift_unknownObjectRelease();
  sub_10000699C(&qword_100010A28, &qword_10000A420);
  if (swift_dynamicCast())
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004F64()
{
  if (qword_100010A50 != -1)
  {
    swift_once();
  }

  v0 = sub_1000087BC();
  sub_1000080E0(v0, qword_100010FA0);
  v1 = sub_10000879C();
  v2 = sub_10000885C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "mm plugin: started interaction store", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultDatabaseDirectory];
  v6 = [v4 storeWithDirectory:v5 readOnly:1];

  v7 = [objc_opt_self() predicateWithValue:1];
  v8 = objc_allocWithZone(NSSortDescriptor);
  v9 = sub_1000087EC();
  v10 = [v8 initWithKey:v9 ascending:1];

  v11 = sub_10000879C();
  v12 = sub_10000885C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "mm plugin: in the middle of the interaction store", v13, 2u);
  }

  if (v6)
  {
    sub_10000699C(&qword_100010A18, &qword_10000A418);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10000A250;
    *(v14 + 56) = sub_100008234(0, &qword_100010A20, NSSortDescriptor_ptr);
    *(v14 + 32) = v10;
    v15 = v7;
    v16 = v10;
    v17 = v6;
    isa = sub_10000883C().super.isa;

    v37 = 0;
    v19 = [v17 queryInteractionsUsingPredicate:v15 sortDescriptors:isa limit:10000 error:&v37];

    v20 = v37;
    if (v19)
    {
      v21 = sub_10000884C();
      v22 = v20;

      v23 = *(v21 + 16);

      goto LABEL_14;
    }

    v24 = v37;
    sub_1000086BC();

    swift_willThrow();
    swift_errorRetain();
    v25 = sub_10000879C();
    v26 = sub_10000885C();

    if (os_log_type_enabled(v25, v26))
    {
      v23 = -1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unexpected error throws: %@", v27, 0xCu);
      sub_1000083E0(v28, &qword_100010A10, &qword_10000A410);

      goto LABEL_14;
    }
  }

  v23 = -1;
LABEL_14:
  v30 = sub_10000879C();
  v31 = sub_10000885C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v30, v31, "mm plugin: interactionSize = %ld", v32, 0xCu);
  }

  v33 = sub_10000879C();
  v34 = sub_10000885C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "mm plugin: done with the interaction store", v35, 2u);
  }

  return v23;
}

void sub_1000054B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100010A50 != -1)
  {
    swift_once();
  }

  v8 = sub_1000087BC();
  sub_1000080E0(v8, qword_100010FA0);
  v9 = sub_10000879C();
  v10 = sub_10000885C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "mm plugin starting PET message!", v11, 2u);
  }

  sub_100004480(v95);
  if (!v95[1])
  {
    goto LABEL_88;
  }

  v94 = [objc_allocWithZone(ModelMonitoringDataTrialIdentifier) init];
  if (!v94)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v12 = sub_1000087EC();
  [v94 setTask:v12];

  v13 = sub_1000087EC();
  [v94 setTreatment:v13];

  v14 = sub_1000087EC();
  [v94 setDeployment:v14];

  if (a2 < 1)
  {
    goto LABEL_25;
  }

  v15 = [objc_allocWithZone(ModelMonitoringDataAnomalyMessage) init];
  if (!v15)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v16 = v15;
  [v15 setAnomalyType:1];
  if (a2 >> 31)
  {
    __break(1u);
    goto LABEL_68;
  }

  [v16 setOccuranceCount:a2];
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  [v16 setTotalEventCount:a1];
  [v16 setTrialIdentifier:v94];
  sub_100008234(0, &qword_100010A08, NSMutableArray_ptr);
  v17 = sub_10000887C();
  [v16 setDataStates:v17];

  v18 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
  if (!v18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v19 = v18;
  v20 = sub_1000087EC();
  [v19 setSourceName:v20];

  [v19 setRecordCount:a1];
  v21 = [v16 dataStates];
  if (!v21)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v22 = v21;
  [v21 addObject:v19];

  v23 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
  if (!v23)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v24 = v23;
  v25 = sub_1000087EC();
  [v24 setSourceName:v25];

  if (a5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_70;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [v24 setRecordCount:?];
  v26 = [v16 dataStates];
  if (!v26)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v27 = v26;
  [v26 addObject:v24];

  v28 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
  if (!v28)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v29 = v28;
  v30 = sub_1000087EC();
  [v29 setSourceName:v30];

  if (a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_73;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v29 setRecordCount:a6];
  v31 = [v16 dataStates];
  if (!v31)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v32 = v31;
  [v31 addObject:v29];

  v33 = v16;
  v34 = sub_10000879C();
  v35 = sub_10000885C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v16;
    v38 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "mm plugin: message is %@", v36, 0xCu);
    sub_1000083E0(v37, &qword_100010A10, &qword_10000A410);
  }

  sub_100004A6C(v33);
LABEL_25:
  if (a3 < 1)
  {
    goto LABEL_43;
  }

  v39 = [objc_allocWithZone(ModelMonitoringDataAnomalyMessage) init];
  if (!v39)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v40 = v39;
  [v39 setAnomalyType:4];
  if (a3 >> 31)
  {
    goto LABEL_72;
  }

  [v40 setOccuranceCount:?];
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v40 setTotalEventCount:a1];
  [v40 setTrialIdentifier:v94];
  sub_100008234(0, &qword_100010A08, NSMutableArray_ptr);
  v41 = sub_10000887C();
  [v40 setDataStates:v41];

  v42 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
  if (!v42)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v43 = v42;
  v44 = sub_1000087EC();
  [v43 setSourceName:v44];

  [v43 setRecordCount:a1];
  v45 = [v40 dataStates];
  if (!v45)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v46 = v45;
  [v45 addObject:v43];

  v47 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
  if (!v47)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v48 = v47;
  v49 = sub_1000087EC();
  [v48 setSourceName:v49];

  if (a5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_77;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v48 setRecordCount:?];
  v50 = [v40 dataStates];
  if (!v50)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v51 = v50;
  [v50 addObject:v48];

  v52 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
  if (!v52)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v53 = v52;
  v54 = sub_1000087EC();
  [v53 setSourceName:v54];

  if (a6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_80;
  }

  if (a6 > 0x7FFFFFFF)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  [v53 setRecordCount:a6];
  v55 = [v40 dataStates];
  if (!v55)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v56 = v55;
  [v55 addObject:v53];

  v57 = v40;
  v58 = sub_10000879C();
  v59 = sub_10000885C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v57;
    *v61 = v40;
    v62 = v57;
    _os_log_impl(&_mh_execute_header, v58, v59, "mm plugin: message is %@", v60, 0xCu);
    sub_1000083E0(v61, &qword_100010A10, &qword_10000A410);
  }

  sub_100004A6C(v57);
LABEL_43:
  if (a4 >= 1)
  {
    v63 = [objc_allocWithZone(ModelMonitoringDataAnomalyMessage) init];
    if (!v63)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v64 = v63;
    [v63 setAnomalyType:5];
    if (!(a4 >> 31))
    {
      [v64 setOccuranceCount:?];
      if (a1 >= 0xFFFFFFFF80000000)
      {
        if (a1 <= 0x7FFFFFFF)
        {
          [v64 setTotalEventCount:a1];
          [v64 setTrialIdentifier:v94];
          sub_100008234(0, &qword_100010A08, NSMutableArray_ptr);
          v65 = sub_10000887C();
          [v64 setDataStates:v65];

          v66 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
          if (!v66)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v67 = v66;
          v68 = sub_1000087EC();
          [v67 setSourceName:v68];

          [v67 setRecordCount:a1];
          v69 = [v64 dataStates];
          if (!v69)
          {
LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

          v70 = v69;
          [v69 addObject:v67];

          v71 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
          if (!v71)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v72 = v71;
          v73 = sub_1000087EC();
          [v72 setSourceName:v73];

          if (a5 >= 0xFFFFFFFF80000000)
          {
            if (a5 <= 0x7FFFFFFF)
            {
              [v72 setRecordCount:?];
              v74 = [v64 dataStates];
              if (!v74)
              {
LABEL_108:
                __break(1u);
                goto LABEL_109;
              }

              v75 = v74;
              [v74 addObject:v72];

              v76 = [objc_allocWithZone(ModelMonitoringDataDataStateFromSingleSource) init];
              if (!v76)
              {
LABEL_109:
                __break(1u);
                goto LABEL_110;
              }

              v77 = v76;
              v78 = sub_1000087EC();
              [v77 setSourceName:v78];

              if (a6 >= 0xFFFFFFFF80000000)
              {
                if (a6 <= 0x7FFFFFFF)
                {
                  [v77 setRecordCount:a6];
                  v79 = [v64 dataStates];
                  if (v79)
                  {
                    v80 = v79;

                    [v80 addObject:v77];

                    v81 = v64;
                    v82 = sub_10000879C();
                    v83 = sub_10000885C();

                    if (os_log_type_enabled(v82, v83))
                    {
                      v84 = swift_slowAlloc();
                      v85 = swift_slowAlloc();
                      *v84 = 138412290;
                      *(v84 + 4) = v81;
                      *v85 = v64;
                      v86 = v81;
                      _os_log_impl(&_mh_execute_header, v82, v83, "mm plugin: message is %@", v84, 0xCu);
                      sub_1000083E0(v85, &qword_100010A10, &qword_10000A410);
                    }

                    sub_100004A6C(v81);
                    goto LABEL_62;
                  }

LABEL_110:
                  __break(1u);
                  return;
                }

                goto LABEL_87;
              }

LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      goto LABEL_81;
    }

    goto LABEL_79;
  }

LABEL_62:
  v87 = sub_10000879C();
  v88 = sub_10000885C();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "mm plugin: done with sending the message to pet!", v89, 2u);
  }
}

uint64_t sub_10000639C()
{
  objc_allocWithZone(sub_10000870C());
  v1 = sub_1000086FC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100006410()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000064B0;

  return sub_1000077B4();
}

uint64_t sub_1000064B0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000065AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100006690;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100006690()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006784(uint64_t a1)
{
  v2 = sub_100006D48(&qword_1000109E0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000067EC()
{
  sub_100006B48();
  sub_100006B9C();
  return sub_10000873C();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ModelMonitoringLighthousePlugin();
  sub_100006D48(&qword_100010938);
  sub_1000086EC();
  return 0;
}

uint64_t type metadata accessor for ModelMonitoringLighthousePlugin()
{
  result = qword_100010A60;
  if (!qword_100010A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006924(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000699C(&qword_100010940, &unk_10000A260);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000699C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000069F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000699C(&qword_100010940, &unk_10000A260);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100006A74()
{
  sub_100006AE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100006AE0()
{
  if (!qword_1000109A0)
  {
    sub_100006B48();
    sub_100006B9C();
    v0 = sub_10000874C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000109A0);
    }
  }
}

unint64_t sub_100006B48()
{
  result = qword_1000109A8;
  if (!qword_1000109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109A8);
  }

  return result;
}

unint64_t sub_100006B9C()
{
  result = qword_1000109B0;
  if (!qword_1000109B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000109B0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ModelMonitoringLighthousePluginConfig(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelMonitoringLighthousePluginConfig(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelMonitoringLighthousePluginConfig(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100006D48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModelMonitoringLighthousePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_100006D8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000699C(&qword_100010A48, &qword_10000A438);
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

uint64_t sub_100006E98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006F64(v11, 0, 0, 1, a1, a2);
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
    sub_1000081D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008188(v11);
  return v7;
}

unint64_t sub_100006F64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007070(a5, a6);
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
    result = sub_1000088AC();
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

char *sub_100007070(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000070BC(a1, a2);
  sub_1000071EC(&off_10000C6B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000070BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000072D8(v5, 0);
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

  result = sub_1000088AC();
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
        v10 = sub_10000882C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000072D8(v10, 0);
        result = sub_10000889C();
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

uint64_t sub_1000071EC(uint64_t result)
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

  result = sub_10000734C(result, v12, 1, v3);
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

void *sub_1000072D8(uint64_t a1, uint64_t a2)
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

  sub_10000699C(&qword_100010A00, &qword_10000A408);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000734C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000699C(&qword_100010A00, &qword_10000A408);
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

unint64_t sub_100007440(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000894C();
  sub_10000880C();
  v6 = sub_10000896C();

  return sub_1000074B8(a1, a2, v6);
}

unint64_t sub_1000074B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000893C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_100007570(uint64_t *a1)
{
  v2 = sub_10000699C(&qword_1000109E8, &qword_10000A3E8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_10000771C(a1, a1[3]);
  sub_100007760();
  sub_1000089AC();
  v13 = 0;
  sub_1000088EC();
  v12 = 1;
  sub_1000088FC();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_100008188(a1);
  return v9;
}

void *sub_10000771C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100007760()
{
  result = qword_100010CF0;
  if (!qword_100010CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010CF0);
  }

  return result;
}

void sub_1000077D4()
{
  v63 = v0;
  if (qword_100010A50 != -1)
  {
    swift_once();
  }

  v1 = sub_1000087BC();
  sub_1000080E0(v1, qword_100010FA0);
  v2 = sub_10000879C();
  v3 = sub_10000885C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "mm plugin now started!", v4, 2u);
  }

  v5 = sub_10000879C();
  v6 = sub_10000885C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "mm plugin: Checking if Trial has an update on anomaly scheme", v7, 2u);
  }

  v8 = sub_100004704();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    v12 = sub_10000879C();
    v13 = sub_10000885C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v62 = v15;
      *v14 = 136315138;

      v16 = sub_100006E98(v10, v11, &v62);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "mm plugin: Trial asset found at path %s, using that", v14, 0xCu);
      sub_100008188(v15);
    }
  }

  else
  {
    v17 = [objc_opt_self() mainBundle];
    v18 = sub_1000087EC();
    v19 = sub_1000087EC();
    v12 = [v17 pathForResource:v18 ofType:v19];

    if (!v12)
    {
      __break(1u);
      return;
    }

    sub_1000087FC();
  }

  v20 = sub_10000879C();
  v21 = sub_10000885C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "mm plugin: starting scheme!", v22, 2u);
  }

  v23 = sub_100004B94();

  if (v23)
  {

    v24 = sub_10000879C();
    v25 = sub_10000885C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62 = v27;
      *v26 = 136315138;
      v28 = sub_1000087CC();
      v30 = sub_100006E98(v28, v29, &v62);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "mm plugin: Plist contents: %s", v26, 0xCu);
      sub_100008188(v27);
    }

    if (*(v23 + 16) && (v31 = sub_100007440(0x6E65704F65746167, 0xE800000000000000), (v32 & 1) != 0))
    {
      sub_1000081D4(*(v23 + 56) + 32 * v31, v0 + 16);
    }

    else
    {

      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_100008118(v0 + 16, v0 + 48);
    if (*(v0 + 72))
    {
      if (swift_dynamicCast())
      {
        v33 = *(v0 + 88);
        v34 = sub_10000879C();
        v35 = sub_10000885C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 67109120;
          *(v36 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v34, v35, "mm plugin: executeMonitoring is %{BOOL}d", v36, 8u);
        }

        v37 = sub_10000879C();
        v38 = sub_10000885C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109120;
          *(v39 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v37, v38, "mm plugin: gateOpen is %{BOOL}d", v39, 8u);
        }

        sub_1000083E0(v0 + 16, &qword_1000109F8, &qword_10000A400);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1000083E0(v0 + 48, &qword_1000109F8, &qword_10000A400);
    }

    v40 = sub_10000879C();
    v41 = sub_10000885C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v62 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100006E98(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v62);
      _os_log_impl(&_mh_execute_header, v40, v41, "mm plugin: could not cast gateOpen %s.", v42, 0xCu);
      sub_100008188(v43);
    }

    sub_1000083E0(v0 + 16, &qword_1000109F8, &qword_10000A400);
  }

  v33 = 0;
LABEL_33:
  v44 = sub_10000879C();
  v45 = sub_10000885C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "mm plugin: done with scheme!", v46, 2u);
  }

  v47 = sub_10000879C();
  v48 = sub_10000885C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109120;
    *(v49 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v47, v48, "mm plugin: executeMonitoring is %{BOOL}d", v49, 8u);
  }

  if (v33)
  {
    if (qword_100010A58 != -1)
    {
      swift_once();
    }

    v50 = sub_10000878C();
    sub_1000080E0(v50, qword_100010FB8);
    v51 = sub_10000875C(0.08, 0.02, 0.83, 0.45);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = sub_10000876C();
    v59 = sub_100004F64();
    sub_1000054B8(v51, v53, v55, v57, v58, v59);
  }

  objc_allocWithZone(sub_10000870C());
  v60 = sub_1000086FC();
  v61 = *(v0 + 8);

  v61(v60);
}

uint64_t sub_1000080E0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008118(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000699C(&qword_1000109F8, &qword_10000A400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008188(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000081D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008234(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *sub_10000827C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000082E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100008334()
{
  result = qword_100010A38;
  if (!qword_100010A38)
  {
    sub_100008398(&qword_100010A30, &qword_10000A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A38);
  }

  return result;
}

uint64_t sub_100008398(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000083E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000699C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ModelMonitoringLighthousePluginConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModelMonitoringLighthousePluginConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000085B8()
{
  result = qword_100010E00[0];
  if (!qword_100010E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100010E00);
  }

  return result;
}

unint64_t sub_100008610()
{
  result = qword_100010F10;
  if (!qword_100010F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010F10);
  }

  return result;
}

unint64_t sub_100008668()
{
  result = qword_100010F18[0];
  if (!qword_100010F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100010F18);
  }

  return result;
}