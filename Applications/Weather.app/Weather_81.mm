void sub_100896AF8()
{
  sub_10000C778();
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v46 = v6;
  v7 = sub_10022C350(&qword_100CC2B20);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v45 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  v44 = &v41 - v11;
  v12 = type metadata accessor for WeatherNetworkActivity.Label();
  sub_1000037C4();
  v42 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for WeatherNetworkActivity.Domain();
  sub_1000037C4();
  v41 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for WeatherMapPurpose();
  sub_1000037C4();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = (v29 - v28);
  if (!*(v0 + *v3))
  {
    goto LABEL_12;
  }

  (*(v26 + 16))(v30, v5, v24);
  if ((*(v26 + 88))(v30, v24) != enum case for WeatherMapPurpose.snapshot(_:))
  {
    (*(v26 + 8))(v30, v24);
    goto LABEL_12;
  }

  (*(v26 + 96))(v30, v24);
  v31 = *(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId + 8);
  if (!v31)
  {

    goto LABEL_12;
  }

  if (*v30 == *(v0 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId) && v31 == v30[1])
  {

    goto LABEL_15;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_15:
    (*(v41 + 104))(v23, enum case for WeatherNetworkActivity.Domain.weather(_:), v18);
    (*(v42 + 16))(v17, v0 + *v43, v12);
    v37 = type metadata accessor for UUID();
    sub_100003934();
    sub_10001B350(v38, v39, v40, v37);
    NWActivity.token.getter();
    sub_10004EC84();
    v35 = v46;
    WeatherNetworkActivity.init(domain:label:token:parentToken:)();

    v34 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v34 = 1;
  v35 = v46;
LABEL_13:
  v36 = type metadata accessor for WeatherNetworkActivity();
  sub_10001B350(v35, v34, 1, v36);
  sub_10000536C();
}

unint64_t sub_100896F08(uint64_t a1)
{
  result = sub_100896F30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100896F30()
{
  result = qword_100CE1B80;
  if (!qword_100CE1B80)
  {
    type metadata accessor for LocationNetworkActivityFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1B80);
  }

  return result;
}

uint64_t sub_100896F94(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE1B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100897008@<X0>(uint64_t a1@<X8>)
{
  sub_100035B30(v1 + 16, a1);
  v3 = *(type metadata accessor for SearchDismissOverlayView() + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1008970CC()
{
  sub_100897138();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100897138()
{
  if (!qword_100CE1CA0)
  {
    type metadata accessor for HistoricalComparisons();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE1CA0);
    }
  }
}

BOOL sub_100897190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalComparisons();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CABD10);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_10022C350(&qword_100CE1CD0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  v19 = *(v18 + 56);
  sub_1004709A8(a1, &v24 - v16);
  sub_1004709A8(a2, &v17[v19]);
  sub_100003A40(v17);
  if (!v20)
  {
    sub_1004709A8(v17, v13);
    sub_100003A40(&v17[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v9, &v17[v19], v4);
      sub_100897A1C(&qword_100CE1CD8);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v9, v4);
      v23(v13, v4);
      sub_10003FDF4(v17, &qword_100CABD10);
      return (v22 & 1) != 0;
    }

    (*(v6 + 8))(v13, v4);
LABEL_9:
    sub_10003FDF4(v17, &qword_100CE1CD0);
    return 0;
  }

  sub_100003A40(&v17[v19]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_10003FDF4(v17, &qword_100CABD10);
  return 1;
}

uint64_t sub_100897408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_10022C350(&qword_100CABD10);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_10022C350(&qword_100CE1CE0);
  sub_1000037C4();
  v21 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for AveragesComponent();
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1008978F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v20;
    type metadata accessor for HistoricalComparisons();
    sub_100897A1C(&qword_100CE1CF0);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v12, v8);
    sub_100897948(v7, v16);
    sub_1008979B8(v16, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_100897628(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73697261706D6F63 && a2 == 0xEB00000000736E6FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1008976C4(void *a1)
{
  v2 = sub_10022C350(&qword_100CE1CF8);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_1008978F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for HistoricalComparisons();
  sub_100897A1C(&qword_100CE1D00);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10089781C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100897628(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100897848(uint64_t a1)
{
  v2 = sub_1008978F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100897884(uint64_t a1)
{
  v2 = sub_1008978F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1008978F4()
{
  result = qword_100CE1CE8;
  if (!qword_100CE1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1CE8);
  }

  return result;
}

uint64_t sub_100897948(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008979B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100897A1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HistoricalComparisons();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AveragesComponent.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100897B10()
{
  result = qword_100CE1D08;
  if (!qword_100CE1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1D08);
  }

  return result;
}

unint64_t sub_100897B68()
{
  result = qword_100CE1D10;
  if (!qword_100CE1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1D10);
  }

  return result;
}

unint64_t sub_100897BC0()
{
  result = qword_100CE1D18;
  if (!qword_100CE1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1D18);
  }

  return result;
}

uint64_t sub_100897C14(uint64_t a1)
{
  v7 = a1;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220);
  sub_10022C350(&qword_100CE1D20);
  if (swift_dynamicCast())
  {
    sub_100013188(v5, v8);
    v1 = v9;
    v2 = v10;
    sub_1000161C0(v8, v9);
    v3 = (*(v2 + 8))(v1, v2);

    sub_100006F14(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_10089AF30(v5);
    swift_getErrorValue();
    v3 = Error.domainAndCode.getter();
  }

  return v3;
}

uint64_t sub_100897D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E697373696DLL && a2 == 0xEE00746E65727275;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44676E697373696DLL && a2 == 0xEC000000796C6961;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x48676E697373696DLL && a2 == 0xED0000796C72756FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100AE2E80 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000100AE2EA0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000100AE2EC0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x52676E697373696DLL && a2 == 0xEF65736E6F707365;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001BLL && 0x8000000100AE2EE0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x8000000100AE2F00 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65736E6F70736572 && a2 == 0xEE0064656C696146;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x8000000100AE2F20 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000017 && 0x8000000100AE2F40 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000022 && 0x8000000100AE2F60 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000020 && 0x8000000100AE2F90 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1008981BC(char a1)
{
  result = 0x43676E697373696DLL;
  switch(a1)
  {
    case 1:
      result = 0x44676E697373696DLL;
      break;
    case 2:
      result = 0x48676E697373696DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x52676E697373696DLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x65736E6F70736572;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 14:
      result = 0x6C616E7265747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008983B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    case 7:
      return a4 == 7;
    case 8:
      return a4 == 8;
    case 9:
      return a4 == 9;
    case 10:
      return a4 == 10;
    case 11:
      return a4 == 11;
    case 12:
      return a4 == 12;
    case 13:
      return a4 == 13;
    default:
      if (a4 < 0xE)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
  }
}

uint64_t sub_1008984B4(void *a1, uint64_t a2, uint64_t a3)
{
  v101 = a3;
  v85[2] = a2;
  v4 = sub_10022C350(&qword_100CE1E30);
  sub_100003E5C(v4, &v95);
  v85[1] = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  sub_10022C350(&qword_100CE1E38);
  sub_1000037C4();
  v99 = v9;
  v100 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v98 = v11;
  sub_10022C350(&qword_100CE1E40);
  sub_1000037C4();
  v96 = v13;
  v97 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v95 = v15;
  sub_10022C350(&qword_100CE1E48);
  sub_1000037C4();
  v93 = v17;
  v94 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v92 = v19;
  sub_10022C350(&qword_100CE1E50);
  sub_1000037C4();
  v90 = v21;
  v91 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v89 = v23;
  sub_10022C350(&qword_100CE1E58);
  sub_1000037C4();
  v87 = v25;
  v88 = v24;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v86 = v27;
  v28 = sub_10022C350(&qword_100CE1E60);
  sub_100003E5C(v28, &v124);
  v85[24] = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CE1E68);
  sub_100003E5C(v32, &v123);
  v85[21] = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CE1E70);
  sub_100003E5C(v36, &v122);
  v85[18] = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v40 = sub_10022C350(&qword_100CE1E78);
  sub_100003E5C(v40, &v113);
  v85[15] = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CE1E80);
  sub_100003E5C(v44, &v105);
  v85[12] = v45;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CE1E88);
  sub_100003E5C(v48, &v102);
  v85[9] = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CE1E90);
  sub_100003E5C(v52, &v99);
  v85[6] = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  v56 = v85 - v55;
  v57 = sub_10022C350(&qword_100CE1E98);
  sub_1000037C4();
  v85[5] = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  v60 = sub_10022C350(&qword_100CE1EA0);
  sub_1000037C4();
  v85[4] = v61;
  sub_100003828();
  __chkstk_darwin(v62);
  v64 = v85 - v63;
  sub_10022C350(&qword_100CE1EA8);
  sub_1000037C4();
  v103 = v65;
  v104 = v66;
  sub_100003828();
  __chkstk_darwin(v67);
  v69 = v85 - v68;
  v70 = sub_1000161C0(a1, a1[3]);
  sub_10089AF98();
  v102 = v69;
  v71 = v101;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v71)
  {
    case 0:
      v106 = 0;
      sub_10089B484();
      v70 = v102;
      v71 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v73 = v64;
      v74 = v60;
      goto LABEL_18;
    case 1:
      v107 = 1;
      sub_10089B430();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v74 = v57;
      goto LABEL_18;
    case 2:
      v108 = 2;
      sub_10089B3DC();
      v70 = v102;
      v71 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v73 = v56;
      v78 = &v99;
      goto LABEL_17;
    case 3:
      v109 = 3;
      sub_10089B388();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v78 = &v102;
      goto LABEL_17;
    case 4:
      v110 = 4;
      sub_10089B334();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v78 = &v105;
      goto LABEL_17;
    case 5:
      v111 = 5;
      sub_10089B2E0();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v78 = &v113;
      goto LABEL_17;
    case 6:
      v112 = 6;
      sub_10089B28C();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v78 = &v122;
      goto LABEL_17;
    case 7:
      v114 = 7;
      sub_10089B238();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v78 = &v123;
      goto LABEL_17;
    case 8:
      v115 = 8;
      sub_10089B1E4();
      sub_100004D4C();
      v73 = sub_1000197E4();
      v78 = &v124;
LABEL_17:
      v74 = *(v78 - 32);
LABEL_18:
      v72(v73, v74);
      goto LABEL_19;
    case 9:
      v116 = 9;
      sub_10089B190();
      v75 = v86;
      sub_100004D4C();
      v77 = v87;
      v76 = v88;
      goto LABEL_15;
    case 10:
      v117 = 10;
      sub_10089B13C();
      v75 = v89;
      sub_100004D4C();
      v77 = v90;
      v76 = v91;
      goto LABEL_15;
    case 11:
      v118 = 11;
      sub_10089B0E8();
      v75 = v92;
      sub_100004D4C();
      v77 = v93;
      v76 = v94;
      goto LABEL_15;
    case 12:
      v119 = 12;
      sub_10089B094();
      v75 = v95;
      sub_100004D4C();
      v77 = v96;
      v76 = v97;
      goto LABEL_15;
    case 13:
      v120 = 13;
      sub_10089B040();
      v75 = v98;
      sub_100004D4C();
      v77 = v99;
      v76 = v100;
LABEL_15:
      (*(v77 + 8))(v75, v76);
LABEL_19:
      result = (*(v104 + 8))(v70, v71);
      break;
    default:
      v121 = 14;
      sub_10089AFEC();
      v80 = v85[0];
      v82 = v102;
      v81 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v83 = v85[3];
      KeyedEncodingContainer.encode(_:forKey:)();
      sub_10000E73C();
      v84(v80, v83);
      result = (*(v104 + 8))(v82, v81);
      break;
  }

  return result;
}

uint64_t sub_100899040(void *a1)
{
  sub_10022C350(&qword_100CE1D30);
  sub_1000037C4();
  v176 = v3;
  v177 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v185[1] = v5;
  v186 = sub_10022C350(&qword_100CE1D38);
  sub_1000037C4();
  v175 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v185[0] = v8;
  v174 = sub_10022C350(&qword_100CE1D40);
  sub_1000037C4();
  v173 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v184[1] = v11;
  v12 = sub_10022C350(&qword_100CE1D48);
  sub_100003E5C(v12, &v205);
  v171 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v184[0] = v15;
  v16 = sub_10022C350(&qword_100CE1D50);
  sub_100003E5C(v16, &v204);
  v169 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v183 = v19;
  v20 = sub_10022C350(&qword_100CE1D58);
  sub_100003E5C(v20, &v203);
  v167 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v182 = v23;
  v24 = sub_10022C350(&qword_100CE1D60);
  sub_100003E5C(v24, &v202);
  v165 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v189 = v27;
  v28 = sub_10022C350(&qword_100CE1D68);
  sub_100003E5C(v28, &v193);
  v163 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v188 = v31;
  v32 = sub_10022C350(&qword_100CE1D70);
  sub_100003E5C(v32, v192);
  v161 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  v181 = v35;
  v36 = sub_10022C350(&qword_100CE1D78);
  sub_100003E5C(v36, &v187);
  v160 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v180 = v39;
  v40 = sub_10022C350(&qword_100CE1D80);
  sub_100003E5C(v40, &v189);
  v158 = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  v187 = v43;
  v44 = sub_10022C350(&qword_100CE1D88);
  sub_100003E5C(v44, &v186);
  v155 = v45;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  v179 = v47;
  v48 = sub_10022C350(&qword_100CE1D90);
  sub_100003E5C(v48, v185);
  v153 = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  v178 = v51;
  v52 = sub_10022C350(&qword_100CE1D98);
  sub_100003E5C(v52, v184);
  v151 = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  v56 = &v144 - v55;
  v57 = sub_10022C350(&qword_100CE1DA0);
  sub_1000037C4();
  v150 = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  v61 = &v144 - v60;
  v62 = sub_10022C350(&qword_100CE1DA8);
  sub_1000037C4();
  v64 = v63;
  sub_100003828();
  __chkstk_darwin(v65);
  v67 = &v144 - v66;
  v68 = a1[3];
  v190 = a1;
  sub_1000161C0(a1, v68);
  sub_10089AF98();
  v69 = v191;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v69)
  {
    goto LABEL_8;
  }

  v148 = v61;
  v147 = v57;
  v149 = v56;
  v70 = v187;
  v71 = v188;
  v191 = v64;
  v72 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v72, 0);
  if (v75 == v76 >> 1)
  {
LABEL_7:
    v64 = type metadata accessor for DecodingError();
    swift_allocError();
    v87 = v86;
    sub_10022C350(&qword_100CA7610);
    *v87 = &type metadata for WeatherFetchErrorKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v64 - 8) + 104))(v87, enum case for DecodingError.typeMismatch(_:), v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    v88 = sub_100010E6C();
    v89(v88);
LABEL_8:
    sub_100006F14(v190);
    return v64;
  }

  v146 = 0;
  if (v75 < (v76 >> 1))
  {
    v145 = *(v74 + v75);
    sub_100618E7C(v75 + 1);
    v78 = v77;
    v80 = v79;
    swift_unknownObjectRelease();
    v81 = v186;
    if (v78 == v80 >> 1)
    {
      switch(v145)
      {
        case 1:
          v192[2] = 1;
          sub_10089B430();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v119 = sub_10000424C();
          v120(v119, v152);
          v121 = sub_100010E6C();
          v122(v121);
          v64 = 0;
          goto LABEL_24;
        case 2:
          v192[3] = 2;
          sub_10089B3DC();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v108 = sub_10000424C();
          v109(v108, v154);
          v110 = sub_100010E6C();
          v111(v110);
          v64 = 0;
          goto LABEL_24;
        case 3:
          v192[4] = 3;
          sub_10089B388();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v112 = sub_10000424C();
          v113(v112, v156);
          v114 = sub_100010E6C();
          v115(v114);
          v64 = 0;
          goto LABEL_24;
        case 4:
          v192[5] = 4;
          sub_10089B334();
          sub_10000919C();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v97(v70, v159);
          v98 = sub_100010E6C();
          v99(v98);
          v64 = 0;
          goto LABEL_24;
        case 5:
          v192[6] = 5;
          sub_10089B2E0();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v123 = sub_10000424C();
          v124(v123, v157);
          v125 = sub_100010E6C();
          v126(v125);
          v64 = 0;
          goto LABEL_24;
        case 6:
          v192[7] = 6;
          sub_10089B28C();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v130 = sub_10000424C();
          v131(v130, v162);
          v132 = sub_100010E6C();
          v133(v132);
          v64 = 0;
          goto LABEL_24;
        case 7:
          v194 = 7;
          sub_10089B238();
          sub_10000919C();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v116(v71, v164);
          v117 = sub_100010E6C();
          v118(v117);
          v64 = 0;
          goto LABEL_24;
        case 8:
          v195 = 8;
          sub_10089B1E4();
          sub_10000919C();
          swift_unknownObjectRelease();
          v138 = sub_1000197E4();
          v139(v138, v166);
          v140 = sub_100010E6C();
          v141(v140);
          v64 = 0;
          goto LABEL_24;
        case 9:
          v196 = 9;
          sub_10089B190();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v104 = sub_10000424C();
          v105(v104, v168);
          v106 = sub_100010E6C();
          v107(v106);
          v64 = 0;
          goto LABEL_24;
        case 10:
          v197 = 10;
          sub_10089B13C();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v134 = sub_10000424C();
          v135(v134, v170);
          v136 = sub_100010E6C();
          v137(v136);
          v64 = 0;
          goto LABEL_24;
        case 11:
          v198 = 11;
          sub_10089B0E8();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v93 = sub_10000424C();
          v94(v93, v172);
          v95 = sub_100010E6C();
          v96(v95);
          v64 = 0;
          goto LABEL_24;
        case 12:
          v199 = 12;
          sub_10089B094();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v100 = sub_10000424C();
          v101(v100, v174);
          v102 = sub_100010E6C();
          v103(v102);
          v64 = 0;
          goto LABEL_24;
        case 13:
          v200 = 13;
          sub_10089B040();
          v127 = v185[0];
          sub_10000919C();
          swift_unknownObjectRelease();
          (*(v175 + 8))(v127, v81);
          v128 = sub_100010E6C();
          v129(v128);
          v64 = 0;
          goto LABEL_24;
        case 14:
          v201 = 14;
          sub_10089AFEC();
          sub_10000919C();
          v90 = KeyedDecodingContainer.decode(_:forKey:)();
          v91 = v190;
          v92 = v191;
          v64 = v90;
          swift_unknownObjectRelease();
          v142 = sub_100017F88();
          v143(v142);
          (*(v92 + 8))(v67, v62);
          goto LABEL_25;
        default:
          v192[1] = 0;
          sub_10089B484();
          sub_100006A4C();
          swift_unknownObjectRelease();
          v82 = sub_10000424C();
          v83(v82, v147);
          v84 = sub_100010E6C();
          v85(v84);
          v64 = 0;
LABEL_24:
          v91 = v190;
LABEL_25:
          sub_100006F14(v91);
          break;
      }

      return v64;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10089A0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100897D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10089A0E0(uint64_t a1)
{
  v2 = sub_10089AF98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A11C(uint64_t a1)
{
  v2 = sub_10089AF98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A158(uint64_t a1)
{
  v2 = sub_10089AFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A194(uint64_t a1)
{
  v2 = sub_10089AFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A1D0(uint64_t a1)
{
  v2 = sub_10089B238();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A20C(uint64_t a1)
{
  v2 = sub_10089B238();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A248(uint64_t a1)
{
  v2 = sub_10089B094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A284(uint64_t a1)
{
  v2 = sub_10089B094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A2C0(uint64_t a1)
{
  v2 = sub_10089B388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A2FC(uint64_t a1)
{
  v2 = sub_10089B388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A338(uint64_t a1)
{
  v2 = sub_10089B334();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A374(uint64_t a1)
{
  v2 = sub_10089B334();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A3B0(uint64_t a1)
{
  v2 = sub_10089B1E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A3EC(uint64_t a1)
{
  v2 = sub_10089B1E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A428(uint64_t a1)
{
  v2 = sub_10089B0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A464(uint64_t a1)
{
  v2 = sub_10089B0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A4A0(uint64_t a1)
{
  v2 = sub_10089B13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A4DC(uint64_t a1)
{
  v2 = sub_10089B13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A518(uint64_t a1)
{
  v2 = sub_10089B040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A554(uint64_t a1)
{
  v2 = sub_10089B040();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A590(uint64_t a1)
{
  v2 = sub_10089B484();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A5CC(uint64_t a1)
{
  v2 = sub_10089B484();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A608(uint64_t a1)
{
  v2 = sub_10089B430();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A644(uint64_t a1)
{
  v2 = sub_10089B430();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A680(uint64_t a1)
{
  v2 = sub_10089B3DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A6BC(uint64_t a1)
{
  v2 = sub_10089B3DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A6F8(uint64_t a1)
{
  v2 = sub_10089B28C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A734(uint64_t a1)
{
  v2 = sub_10089B28C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A770(uint64_t a1)
{
  v2 = sub_10089B190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A7AC(uint64_t a1)
{
  v2 = sub_10089B190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A7E8(uint64_t a1)
{
  v2 = sub_10089B2E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089A824(uint64_t a1)
{
  v2 = sub_10089B2E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089A874@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100899040(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10089A8BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100784E4C();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_10089A904()
{
  type metadata accessor for WDSClientErrors();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000101A4();
  v1 = sub_100069BE0();
  v2(v1);
  v3 = sub_1000053B8();
  v5 = v4(v3);
  if (v5 == enum case for WDSClientErrors.networkError(_:))
  {
    v6 = sub_1000053B8();
    v7(v6);
    swift_getErrorValue();
    v8 = Error.domainAndCode.getter();
  }

  else if (v5 == enum case for WDSClientErrors.responseFailed(_:) || v5 == enum case for WDSClientErrors.failedToCreateResponseModel(_:) || v5 == enum case for WDSClientErrors.invalidAuthorization(_:))
  {
    v9 = sub_100017088();
    v10(v9);
    return 0;
  }

  else if (v5 == enum case for WDSClientErrors.unexpectedDateFormat(_:))
  {
    return 0;
  }

  else if (v5 == enum case for WDSClientErrors.missingResponse(_:))
  {
    return 0;
  }

  else
  {
    sub_10089B4D8(&qword_100CE1EC0, &type metadata accessor for WDSClientErrors);
    v8 = Error.domainAndCode.getter();
    v11 = sub_100017088();
    v12(v11);
  }

  return v8;
}

uint64_t sub_10089AB4C()
{
  type metadata accessor for WDSJWTAuthenticatorService.Errors();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000101A4();
  v1 = sub_100069BE0();
  v2(v1);
  v3 = sub_1000053B8();
  v5 = v4(v3);
  if (v5 == enum case for WDSJWTAuthenticatorService.Errors.invalidBundleIdentifier(_:))
  {
    v6 = 0;
  }

  else if (v5 == enum case for WDSJWTAuthenticatorService.Errors.invalidJWTResponse(_:))
  {
    v6 = 0;
  }

  else
  {
    if (v5 == enum case for WDSJWTAuthenticatorService.Errors.failedToGenerateSigningRequestData(_:))
    {
      return 0;
    }

    if (v5 == enum case for WDSJWTAuthenticatorService.Errors.invalidServerResponse(_:))
    {
      return 0;
    }

    sub_10089B4D8(&qword_100CE1EB8, &type metadata accessor for WDSJWTAuthenticatorService.Errors);
    v6 = Error.domainAndCode.getter();
  }

  v7 = sub_100017088();
  v8(v7);
  return v6;
}

uint64_t sub_10089ACE4()
{
  type metadata accessor for WeatherProduct();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000101A4();
  WeatherModel.MissingProductError.product.getter();
  v1 = sub_1000053B8();
  v3 = v2(v1);
  v4 = 0;
  if (v3 != enum case for WeatherProduct.currentWeather(_:))
  {
    if (v3 == enum case for WeatherProduct.forecastDaily(_:))
    {
      return 0;
    }

    else if (v3 == enum case for WeatherProduct.forecastHourly(_:))
    {
      return 0;
    }

    else
    {
      type metadata accessor for WeatherModel.MissingProductError();
      sub_10089B4D8(&qword_100CE1EB0, &type metadata accessor for WeatherModel.MissingProductError);
      v4 = Error.domainAndCode.getter();
      v5 = sub_1000053B8();
      v6(v5);
    }
  }

  return v4;
}

uint64_t sub_10089AE60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10089AE78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF1 && *(a1 + 16))
  {
    return (*a1 + 2147483634);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 13;
  if (v4 >= 0xF)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10089AED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483634;
    if (a3 >= 0x7FFFFFF2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 13;
    }
  }

  return result;
}

uint64_t sub_10089AF30(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE1D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10089AF98()
{
  result = qword_100CE1DB0;
  if (!qword_100CE1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DB0);
  }

  return result;
}

unint64_t sub_10089AFEC()
{
  result = qword_100CE1DB8;
  if (!qword_100CE1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DB8);
  }

  return result;
}

unint64_t sub_10089B040()
{
  result = qword_100CE1DC0;
  if (!qword_100CE1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DC0);
  }

  return result;
}

unint64_t sub_10089B094()
{
  result = qword_100CE1DC8;
  if (!qword_100CE1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DC8);
  }

  return result;
}

unint64_t sub_10089B0E8()
{
  result = qword_100CE1DD0;
  if (!qword_100CE1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DD0);
  }

  return result;
}

unint64_t sub_10089B13C()
{
  result = qword_100CE1DD8;
  if (!qword_100CE1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DD8);
  }

  return result;
}

unint64_t sub_10089B190()
{
  result = qword_100CE1DE0;
  if (!qword_100CE1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DE0);
  }

  return result;
}

unint64_t sub_10089B1E4()
{
  result = qword_100CE1DE8;
  if (!qword_100CE1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DE8);
  }

  return result;
}

unint64_t sub_10089B238()
{
  result = qword_100CE1DF0;
  if (!qword_100CE1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DF0);
  }

  return result;
}

unint64_t sub_10089B28C()
{
  result = qword_100CE1DF8;
  if (!qword_100CE1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1DF8);
  }

  return result;
}

unint64_t sub_10089B2E0()
{
  result = qword_100CE1E00;
  if (!qword_100CE1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1E00);
  }

  return result;
}

unint64_t sub_10089B334()
{
  result = qword_100CE1E08;
  if (!qword_100CE1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1E08);
  }

  return result;
}

unint64_t sub_10089B388()
{
  result = qword_100CE1E10;
  if (!qword_100CE1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1E10);
  }

  return result;
}

unint64_t sub_10089B3DC()
{
  result = qword_100CE1E18;
  if (!qword_100CE1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1E18);
  }

  return result;
}

unint64_t sub_10089B430()
{
  result = qword_100CE1E20;
  if (!qword_100CE1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1E20);
  }

  return result;
}

unint64_t sub_10089B484()
{
  result = qword_100CE1E28;
  if (!qword_100CE1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1E28);
  }

  return result;
}

uint64_t sub_10089B4D8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherFetchErrorKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherFetchErrorKind.ExternalCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10089B78C()
{
  result = qword_100CE1EC8;
  if (!qword_100CE1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1EC8);
  }

  return result;
}

unint64_t sub_10089B7E4()
{
  result = qword_100CE1ED0;
  if (!qword_100CE1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1ED0);
  }

  return result;
}

unint64_t sub_10089B83C()
{
  result = qword_100CE1ED8;
  if (!qword_100CE1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1ED8);
  }

  return result;
}

unint64_t sub_10089B894()
{
  result = qword_100CE1EE0;
  if (!qword_100CE1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1EE0);
  }

  return result;
}

unint64_t sub_10089B8EC()
{
  result = qword_100CE1EE8;
  if (!qword_100CE1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1EE8);
  }

  return result;
}

unint64_t sub_10089B944()
{
  result = qword_100CE1EF0;
  if (!qword_100CE1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1EF0);
  }

  return result;
}

unint64_t sub_10089B99C()
{
  result = qword_100CE1EF8;
  if (!qword_100CE1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1EF8);
  }

  return result;
}

unint64_t sub_10089B9F4()
{
  result = qword_100CE1F00;
  if (!qword_100CE1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F00);
  }

  return result;
}

unint64_t sub_10089BA4C()
{
  result = qword_100CE1F08;
  if (!qword_100CE1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F08);
  }

  return result;
}

unint64_t sub_10089BAA4()
{
  result = qword_100CE1F10;
  if (!qword_100CE1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F10);
  }

  return result;
}

unint64_t sub_10089BAFC()
{
  result = qword_100CE1F18;
  if (!qword_100CE1F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F18);
  }

  return result;
}

unint64_t sub_10089BB54()
{
  result = qword_100CE1F20;
  if (!qword_100CE1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F20);
  }

  return result;
}

unint64_t sub_10089BBAC()
{
  result = qword_100CE1F28;
  if (!qword_100CE1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F28);
  }

  return result;
}

unint64_t sub_10089BC04()
{
  result = qword_100CE1F30;
  if (!qword_100CE1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F30);
  }

  return result;
}

unint64_t sub_10089BC5C()
{
  result = qword_100CE1F38;
  if (!qword_100CE1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F38);
  }

  return result;
}

unint64_t sub_10089BCB4()
{
  result = qword_100CE1F40;
  if (!qword_100CE1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F40);
  }

  return result;
}

unint64_t sub_10089BD0C()
{
  result = qword_100CE1F48;
  if (!qword_100CE1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F48);
  }

  return result;
}

unint64_t sub_10089BD64()
{
  result = qword_100CE1F50;
  if (!qword_100CE1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F50);
  }

  return result;
}

unint64_t sub_10089BDBC()
{
  result = qword_100CE1F58;
  if (!qword_100CE1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F58);
  }

  return result;
}

unint64_t sub_10089BE14()
{
  result = qword_100CE1F60;
  if (!qword_100CE1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F60);
  }

  return result;
}

unint64_t sub_10089BE6C()
{
  result = qword_100CE1F68;
  if (!qword_100CE1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F68);
  }

  return result;
}

unint64_t sub_10089BEC4()
{
  result = qword_100CE1F70;
  if (!qword_100CE1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F70);
  }

  return result;
}

unint64_t sub_10089BF1C()
{
  result = qword_100CE1F78;
  if (!qword_100CE1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F78);
  }

  return result;
}

unint64_t sub_10089BF74()
{
  result = qword_100CE1F80;
  if (!qword_100CE1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F80);
  }

  return result;
}

unint64_t sub_10089BFCC()
{
  result = qword_100CE1F88;
  if (!qword_100CE1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F88);
  }

  return result;
}

unint64_t sub_10089C024()
{
  result = qword_100CE1F90;
  if (!qword_100CE1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F90);
  }

  return result;
}

unint64_t sub_10089C07C()
{
  result = qword_100CE1F98;
  if (!qword_100CE1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1F98);
  }

  return result;
}

unint64_t sub_10089C0D4()
{
  result = qword_100CE1FA0;
  if (!qword_100CE1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FA0);
  }

  return result;
}

unint64_t sub_10089C12C()
{
  result = qword_100CE1FA8;
  if (!qword_100CE1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FA8);
  }

  return result;
}

unint64_t sub_10089C184()
{
  result = qword_100CE1FB0;
  if (!qword_100CE1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FB0);
  }

  return result;
}

unint64_t sub_10089C1DC()
{
  result = qword_100CE1FB8;
  if (!qword_100CE1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FB8);
  }

  return result;
}

unint64_t sub_10089C234()
{
  result = qword_100CE1FC0;
  if (!qword_100CE1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FC0);
  }

  return result;
}

unint64_t sub_10089C28C()
{
  result = qword_100CE1FC8;
  if (!qword_100CE1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FC8);
  }

  return result;
}

unint64_t sub_10089C2E4()
{
  result = qword_100CE1FD0;
  if (!qword_100CE1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FD0);
  }

  return result;
}

uint64_t sub_10089C348(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69676562 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 6581861 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10089C454(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x6E69676562;
  }

  return 6581861;
}

uint64_t sub_10089C498(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CE2020);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CE2028);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CE2030);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CE2038);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_10089CFF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_10089D0A0();
      sub_10000C88C();
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_10089D04C();
      v24 = v30;
      sub_10000C88C();
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10089D0F4();
    sub_10000C88C();
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10089C7B4(void *a1)
{
  v63 = sub_10022C350(&qword_100CE1FE0);
  sub_1000037C4();
  v61 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_10022C350(&qword_100CE1FE8);
  sub_1000037C4();
  v58 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_10022C350(&qword_100CE1FF0);
  sub_1000037C4();
  v57 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_10022C350(&qword_100CE1FF8);
  sub_1000037C4();
  v62 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_10089CFF8();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100618E7C(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_10089D0A0();
          v35 = v55;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_100003C88();
            v37(v36);
LABEL_21:
            sub_100006F14(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_10089D04C();
          v17 = v59;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_100003C88();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_100003C88();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_10089D0F4();
        v43 = v54;
        sub_10000803C();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100003C78();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100003C78();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_10022C350(&qword_100CA7610);
    *v40 = &type metadata for TransitionState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100003C78();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10089CD48(uint64_t a1)
{
  v2 = sub_10089D0A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CD84(uint64_t a1)
{
  v2 = sub_10089D0A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10089C348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10089CDF0(uint64_t a1)
{
  v2 = sub_10089CFF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CE2C(uint64_t a1)
{
  v2 = sub_10089CFF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CE68(uint64_t a1)
{
  v2 = sub_10089D04C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CEA4(uint64_t a1)
{
  v2 = sub_10089D04C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CEE0(uint64_t a1)
{
  v2 = sub_10089D0F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089CF1C(uint64_t a1)
{
  v2 = sub_10089D0F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089CF58@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10089C7B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10089CFA4()
{
  result = qword_100CE1FD8;
  if (!qword_100CE1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1FD8);
  }

  return result;
}

unint64_t sub_10089CFF8()
{
  result = qword_100CE2000;
  if (!qword_100CE2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2000);
  }

  return result;
}

unint64_t sub_10089D04C()
{
  result = qword_100CE2008;
  if (!qword_100CE2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2008);
  }

  return result;
}

unint64_t sub_10089D0A0()
{
  result = qword_100CE2010;
  if (!qword_100CE2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2010);
  }

  return result;
}

unint64_t sub_10089D0F4()
{
  result = qword_100CE2018;
  if (!qword_100CE2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2018);
  }

  return result;
}

_BYTE *sub_10089D148(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10089D258()
{
  result = qword_100CE2040;
  if (!qword_100CE2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2040);
  }

  return result;
}

unint64_t sub_10089D2B0()
{
  result = qword_100CE2048;
  if (!qword_100CE2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2048);
  }

  return result;
}

unint64_t sub_10089D308()
{
  result = qword_100CE2050;
  if (!qword_100CE2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2050);
  }

  return result;
}

unint64_t sub_10089D360()
{
  result = qword_100CE2058;
  if (!qword_100CE2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2058);
  }

  return result;
}

unint64_t sub_10089D3B8()
{
  result = qword_100CE2060;
  if (!qword_100CE2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2060);
  }

  return result;
}

unint64_t sub_10089D410()
{
  result = qword_100CE2068;
  if (!qword_100CE2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2068);
  }

  return result;
}

unint64_t sub_10089D468()
{
  result = qword_100CE2070;
  if (!qword_100CE2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2070);
  }

  return result;
}

unint64_t sub_10089D4C0()
{
  result = qword_100CE2078;
  if (!qword_100CE2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2078);
  }

  return result;
}

unint64_t sub_10089D518()
{
  result = qword_100CE2080;
  if (!qword_100CE2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2080);
  }

  return result;
}

uint64_t sub_10089D570(char a1)
{
  if (a1)
  {
    return 0x30327265746E6977;
  }

  else
  {
    return 0x343230326C6C6166;
  }
}

_BYTE *storeEnumTagSinglePayload for DemoPreset(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10089D688()
{
  result = qword_100CE2088;
  if (!qword_100CE2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2088);
  }

  return result;
}

uint64_t sub_10089D700@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000381C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10089D730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10089D570(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10089D76C(uint64_t a1)
{
  v2 = sub_10089D8D8();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_10089D7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10089D8D8();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_10089D81C(uint64_t a1)
{
  v2 = sub_10089D8D8();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

unint64_t sub_10089D874()
{
  result = qword_100CE2090;
  if (!qword_100CE2090)
  {
    sub_10022E824(&qword_100CE2098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2090);
  }

  return result;
}

unint64_t sub_10089D8D8()
{
  result = qword_100CE20A0;
  if (!qword_100CE20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE20A0);
  }

  return result;
}

uint64_t sub_10089D930(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemperatureAveragesHeroChartPeakMarkerModel();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t type metadata accessor for TemperatureAveragesHeroChartPeakMarkerModel()
{
  result = qword_100CE2100;
  if (!qword_100CE2100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10089DA3C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10089DAC0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = type metadata accessor for MainAction();
  __chkstk_darwin(v35);
  v33 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2798 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000703C(v12, qword_100D90D20);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a1;
    v16 = v15;
    v31 = swift_slowAlloc();
    *&v36[0] = v31;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_100078694(a2, a3, v36);
    *(v16 + 22) = 2080;
    Date.init()();
    sub_100066840(&qword_100CA5720, &type metadata accessor for Date);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_100078694(v17, v19, v36);

    *(v16 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Location loading interval elapsed - location is loading too slowly. ID=%{private,mask.hash}s, Now=%s", v16, 0x20u);
    swift_arrayDestroy();

    a1 = v32;
  }

  v21 = v34;
  UnfairLock.lock()();
  swift_beginAccess();
  v22 = sub_100086BAC(a2, a3, *(v21 + 48));
  swift_endAccess();
  v23 = a2;
  if (v22)
  {
    sub_1000F6C98();
    v24 = a1;
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {
      swift_beginAccess();
      v26 = sub_1000F64AC();
      swift_endAccess();
    }
  }

  UnfairLock.unlock()();
  v27 = *(v21 + 24);
  v28 = v33;
  *v33 = v23;
  *(v28 + 8) = a3;
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  memset(v36, 0, sizeof(v36));

  sub_10004F034(v28, v36, v27);
  sub_1000E17D8(v36);
  return sub_1000547B8(v28);
}

uint64_t sub_10089DEB8()
{

  return v0;
}

uint64_t sub_10089DEE8()
{
  sub_10089DEB8();

  return swift_deallocClassInstance();
}

void sub_10089DF50()
{
  sub_10089E014(319, &unk_100CD23B0, type metadata accessor for ExtendedAppLaunchState);
  if (v0 <= 0x3F)
  {
    sub_10089E014(319, &qword_100CADCC8, &type metadata accessor for ScenePhase);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10089E014(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10089E084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10089E144();
  v6 = v2 + *(type metadata accessor for AppStateTransitionModifier() + 24);
  v7 = 8;
  if (v5)
  {
    v7 = 0;
  }

  v8 = *(v6 + v7);

  v9 = sub_10022C350(&qword_100CE2290);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = sub_10022C350(&qword_100CE2298);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_10089E144()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  type metadata accessor for AppStateTransitionModifier();
  sub_1000E74DC();
  (*(v7 + 104))(v9, enum case for ScenePhase.active(_:), v6);
  v13 = static ScenePhase.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = *(v1 + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    v17 = sub_1004237C8();

    v18 = v17 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

unint64_t sub_10089E3D0()
{
  result = qword_100CE22A0;
  if (!qword_100CE22A0)
  {
    sub_10022E824(&qword_100CE2298);
    sub_100006F64(&qword_100CE22A8, &qword_100CE2290);
    sub_100006F64(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE22A0);
  }

  return result;
}

unint64_t sub_10089E4B8()
{
  result = qword_100CE22B0;
  if (!qword_100CE22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE22B0);
  }

  return result;
}

uint64_t sub_10089E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000FF4A0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10089E5D0()
{
  sub_1003C0D04();
  UITraitCollection.subscript.getter();
  return v1;
}

void sub_10089E688(uint64_t a1@<X8>)
{
  *a1 = sub_10089E5D0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void sub_10089E6F4(uint64_t a1@<X8>)
{
  *a1 = sub_10089E6E0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

unint64_t sub_10089E720()
{
  result = qword_100CE22C0;
  if (!qword_100CE22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE22C0);
  }

  return result;
}

uint64_t sub_10089E774@<X0>(uint64_t a1@<X8>)
{
  active = type metadata accessor for LocationViewerActiveLocationState();
  v4 = sub_100003810(active);
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  sub_1000BB194(v1, v1);
  v5 = type metadata accessor for Location.Identifier();
  if (sub_100024D10(v1, 1, v5) == 1)
  {
    return static CurrentLocation.placeholderIdentifier.getter();
  }

  sub_100003B20();
  return (*(v7 + 32))(a1, v1, v5);
}

uint64_t sub_10089E844(uint64_t a1, char a2, char a3, char a4, char a5, int a6, uint64_t a7)
{
  v26 = a6;
  v14 = sub_10022C350(&qword_100CA65B8);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v25[-v16];
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_100003B20();
  __chkstk_darwin(v19);
  sub_1000088C0();
  __chkstk_darwin(v20);
  v22 = &v25[-v21];
  sub_1008A1054(a1, v17);
  if (sub_100024D10(v17, 1, active) == 1)
  {
    sub_1000BB194(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v22);
    if (sub_100024D10(v17, 1, active) != 1)
    {
      sub_10002C4AC(v17, &qword_100CA65B8);
    }
  }

  else
  {
    sub_100349588(v17, v22);
  }

  sub_100349588(v22, v7);
  v23 = v26;
  if (a2 == 3)
  {
    a2 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + a7);
  }

  if (a3 == 2)
  {
    a3 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
  }

  if (a4 == 4)
  {
    a4 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
  }

  if (a5 == 2)
  {
    a5 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
  }

  if (v26 == 3)
  {
    v23 = *(a7 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
  }

  type metadata accessor for LocationViewerViewState._Storage(0);
  swift_allocObject();
  return sub_10003DDB8(v7, a2, a3 & 1, a4, a5 & 1, v23);
}

uint64_t sub_10089EA8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570697773 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEB00000000706154)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10089EBEC(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6570697773;
      break;
    case 2:
      result = 0x636E75614C707061;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10089EC78(uint64_t a1)
{
  v2 = sub_10089F374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089ECB4(uint64_t a1)
{
  v2 = sub_10089F374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10089EA8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10089ED20(uint64_t a1)
{
  v2 = sub_10089F2CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089ED5C(uint64_t a1)
{
  v2 = sub_10089F2CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089ED98(uint64_t a1)
{
  v2 = sub_10089F320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EDD4(uint64_t a1)
{
  v2 = sub_10089F320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EE10(uint64_t a1)
{
  v2 = sub_10089F3C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EE4C(uint64_t a1)
{
  v2 = sub_10089F3C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EE88(uint64_t a1)
{
  v2 = sub_10089F41C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EEC4(uint64_t a1)
{
  v2 = sub_10089F41C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void LocationSessionTrigger.encode(to:)()
{
  sub_10000E8AC();
  v40 = v1;
  v3 = v2;
  sub_10022C350(&qword_100CE22C8);
  sub_1000037C4();
  v38 = v5;
  v39 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v37 = v7;
  sub_10022C350(&qword_100CE22D0);
  sub_1000037C4();
  v35 = v9;
  v36 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v34 = v11;
  sub_10022C350(&qword_100CE22D8);
  sub_1000037C4();
  v32 = v13;
  v33 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v15 = sub_10022C350(&qword_100CE22E0);
  sub_1000037C4();
  v31 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v20 = sub_10022C350(&qword_100CE22E8);
  sub_1000037C4();
  v22 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10000C8D8();
  sub_1000161C0(v3, v3[3]);
  sub_10089F2CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v40)
  {
    case 1:
      sub_10089F3C8();
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = sub_1000168C4();
      v29(v27, v28);
      break;
    case 2:
      sub_10089F374();
      v24 = v34;
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v35;
      v25 = v36;
      goto LABEL_5;
    case 3:
      sub_10089F320();
      v24 = v37;
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v38;
      v25 = v39;
LABEL_5:
      (*(v26 + 8))(v24, v25);
      break;
    default:
      sub_10089F41C();
      sub_100015088();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v19, v15);
      break;
  }

  (*(v22 + 8))(v0, v20);
  sub_10000C8F4();
}

unint64_t sub_10089F2CC()
{
  result = qword_100CE22F0;
  if (!qword_100CE22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE22F0);
  }

  return result;
}

unint64_t sub_10089F320()
{
  result = qword_100CE22F8;
  if (!qword_100CE22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE22F8);
  }

  return result;
}

unint64_t sub_10089F374()
{
  result = qword_100CE2300;
  if (!qword_100CE2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2300);
  }

  return result;
}

unint64_t sub_10089F3C8()
{
  result = qword_100CE2308;
  if (!qword_100CE2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2308);
  }

  return result;
}

unint64_t sub_10089F41C()
{
  result = qword_100CE2310;
  if (!qword_100CE2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2310);
  }

  return result;
}

void LocationSessionTrigger.init(from:)()
{
  sub_10000E8AC();
  v62 = v0;
  v2 = v1;
  v61 = sub_10022C350(&qword_100CE2318);
  sub_1000037C4();
  v58 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v60 = v5;
  sub_10022C350(&qword_100CE2320);
  sub_1000037C4();
  v56 = v7;
  v57 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000091BC(v9, v48);
  sub_10022C350(&qword_100CE2328);
  sub_1000037C4();
  v54 = v11;
  v55 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_10022C350(&qword_100CE2330);
  sub_1000037C4();
  v53 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = sub_10022C350(&qword_100CE2338);
  sub_1000037C4();
  v59 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  sub_1000161C0(v2, v2[3]);
  sub_10089F2CC();
  v25 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_8;
  }

  v50 = v15;
  v51 = v19;
  v52 = v14;
  v26 = v60;
  v27 = v61;
  v62 = v2;
  v28 = v24;
  v29 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v29, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v45 = v44;
    sub_10022C350(&qword_100CA7610);
    *v45 = &type metadata for LocationSessionTrigger;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    sub_100003B20();
    (*(v46 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v28, v20);
    v2 = v62;
LABEL_8:
    sub_100006F14(v2);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  v49 = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_100618E7C(v31 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      v38 = v33;
      v40 = v58;
      v39 = v59;
      switch(v38)
      {
        case 1:
          sub_10089F3C8();
          sub_100022A54();
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 2:
          sub_10089F374();
          sub_100022A54();
          swift_unknownObjectRelease();
LABEL_15:
          v41 = sub_1000168C4();
          goto LABEL_16;
        case 3:
          sub_10089F320();
          v47 = v49;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v47)
          {
            (*(v39 + 8))(v28, v20);
            swift_unknownObjectRelease();
            v2 = v62;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v40 + 8))(v26, v27);
LABEL_17:
          (*(v39 + 8))(v28, v20);
          sub_100006F14(v62);
          break;
        default:
          sub_10089F41C();
          sub_100022A54();
          swift_unknownObjectRelease();
          v41 = sub_1000168C4();
          v43 = v50;
LABEL_16:
          v42(v41, v43);
          goto LABEL_17;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_10089FA34(_BYTE *a1@<X8>)
{
  LocationSessionTrigger.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_10089FA7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x8000000100ABDD30;
  v5 = 0xE600000000000000;
  if (*(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + a1))
  {
    if (*(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + a1) == 1)
    {
      v6 = 0xEE006465696E6544;
      v7 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v6 = 0x8000000100AD4B70;
      v7 = 0xD000000000000013;
    }
  }

  else
  {
    v7 = 0x6E6564646968;
    v6 = 0xE600000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000100ABE510;
  if (*(a1 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState))
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0x6E6564646968;
  }

  if (*(a1 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState))
  {
    v5 = 0x8000000100AE3030;
  }

  *(inited + 96) = v8;
  *(inited + 104) = v5;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x72656767697274;
  *(inited + 136) = 0xE700000000000000;
  v9 = *(a1 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
  *(inited + 168) = &type metadata for LocationSessionTrigger;
  *(inited + 144) = v9;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CE2450);
  a2[4] = sub_1008A10C4();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10089FC74()
{
  sub_1008A1128();

  return ShortDescribable.description.getter();
}

uint64_t sub_10089FCB0()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v9 = sub_100003810(active);
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_10001365C();
  sub_1000BB194(v0, v0);
  sub_10000554C(v0);
  if (v10)
  {
    return 0x6C616974696E69;
  }

  (*(v3 + 32))(v7, v0, v1);
  v11._countAndFlagsBits = Location.Identifier.id.getter();
  String.append(_:)(v11);

  v12 = 0x6E6F697461636F6CLL;
  (*(v3 + 8))(v7, v1);
  return v12;
}

uint64_t sub_10089FE2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10089FEF4(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

void sub_10089FF2C()
{
  sub_10000E8AC();
  v40 = v0;
  v41 = v1;
  v4 = v3;
  sub_10022C350(&qword_100CE2498);
  sub_1000037C4();
  v38 = v6;
  v39 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000091BC(v8, v32);
  v9 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v37 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v35 = v13 - v12;
  sub_10022C350(&qword_100CE24A0);
  sub_1000037C4();
  v33 = v15;
  v34 = v14;
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v20 = sub_100003810(active);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = sub_10022C350(&qword_100CE24A8);
  sub_1000037C4();
  v26 = v25;
  sub_100003828();
  __chkstk_darwin(v27);
  sub_10000C8D8();
  sub_1000161C0(v4, v4[3]);
  sub_1008A117C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000BB194(v40, v23);
  if (sub_100024D10(v23, 1, v9) == 1)
  {
    sub_1008A1224();
    sub_100015088();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v18, v34);
  }

  else
  {
    v28 = v37;
    v29 = v35;
    (*(v37 + 32))(v35, v23, v9);
    sub_1008A11D0();
    v30 = v36;
    sub_100015088();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10086FE04(&qword_100CBBED8);
    v31 = v39;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v30, v31);
    (*(v28 + 8))(v29, v9);
  }

  (*(v26 + 8))(v2, v24);
  sub_10000C8F4();
}

void sub_1008A02E8()
{
  sub_10000E8AC();
  v59 = v0;
  v3 = v2;
  v55 = v4;
  sub_10022C350(&qword_100CE2468);
  sub_1000037C4();
  v53 = v5;
  v54 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v58 = v8;
  v57 = sub_10022C350(&qword_100CE2470);
  sub_1000037C4();
  v52 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000091BC(v11, v49);
  sub_10022C350(&qword_100CE2478);
  sub_1000037C4();
  v56 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_10000C8D8();
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_100003B20();
  __chkstk_darwin(v15);
  sub_1000088C0();
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  sub_1000161C0(v3, v3[3]);
  sub_1008A117C();
  v19 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    goto LABEL_8;
  }

  v50 = v18;
  v51 = active;
  v49 = v1;
  v20 = v57;
  v21 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v21, 0);
  v59 = v3;
  if (v23 == v24 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    sub_10022C350(&qword_100CA7610);
    *v30 = v51;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    sub_100003B20();
    (*(v31 + 104))(v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_10007485C();
    v33(v32);
    v3 = v59;
LABEL_8:
    sub_100006F14(v3);
    sub_10000C8F4();
    return;
  }

  if (v23 < (v24 >> 1))
  {
    v60 = *(v22 + v23);
    sub_100618E7C(v23 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v60)
      {
        sub_1008A11D0();
        sub_100015088();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = type metadata accessor for Location.Identifier();
        sub_10086FE04(&qword_100CBBDC0);
        v35 = v53;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v41 = sub_1000168C4();
        v42(v41, v35);
        v43 = sub_10007485C();
        v44(v43);
        v45 = v49;
        sub_10001B350(v49, 0, 1, v34);
        v46 = v45;
        v47 = v50;
        sub_100349588(v46, v50);
        v3 = v59;
        v48 = v55;
      }

      else
      {
        sub_1008A1224();
        sub_100015088();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v3 = v59;
        v48 = v55;
        swift_unknownObjectRelease();
        v36 = sub_1000168C4();
        v37(v36, v20);
        v38 = sub_10007485C();
        v39(v38);
        v40 = type metadata accessor for Location.Identifier();
        v47 = v50;
        sub_10001B350(v50, 1, 1, v40);
      }

      sub_100349588(v47, v48);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1008A0890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10089FE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008A08B8(uint64_t a1)
{
  v2 = sub_1008A117C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A08F4(uint64_t a1)
{
  v2 = sub_1008A117C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A0930(uint64_t a1)
{
  v2 = sub_1008A1224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A096C(uint64_t a1)
{
  v2 = sub_1008A1224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A09A8(uint64_t a1)
{
  v2 = sub_1008A11D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A09E4(uint64_t a1)
{
  v2 = sub_1008A11D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A0A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E0924();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1008A0AB4()
{
  result = qword_100CE2340;
  if (!qword_100CE2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2340);
  }

  return result;
}

_BYTE *sub_1008A0B18(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1008A0C38()
{
  result = qword_100CE23E8;
  if (!qword_100CE23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE23E8);
  }

  return result;
}

unint64_t sub_1008A0C90()
{
  result = qword_100CE23F0;
  if (!qword_100CE23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE23F0);
  }

  return result;
}

unint64_t sub_1008A0CE8()
{
  result = qword_100CE23F8;
  if (!qword_100CE23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE23F8);
  }

  return result;
}

unint64_t sub_1008A0D40()
{
  result = qword_100CE2400;
  if (!qword_100CE2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2400);
  }

  return result;
}

unint64_t sub_1008A0D98()
{
  result = qword_100CE2408;
  if (!qword_100CE2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2408);
  }

  return result;
}

unint64_t sub_1008A0DF0()
{
  result = qword_100CE2410;
  if (!qword_100CE2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2410);
  }

  return result;
}

unint64_t sub_1008A0E48()
{
  result = qword_100CE2418;
  if (!qword_100CE2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2418);
  }

  return result;
}

unint64_t sub_1008A0EA0()
{
  result = qword_100CE2420;
  if (!qword_100CE2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2420);
  }

  return result;
}

unint64_t sub_1008A0EF8()
{
  result = qword_100CE2428;
  if (!qword_100CE2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2428);
  }

  return result;
}

unint64_t sub_1008A0F50()
{
  result = qword_100CE2430;
  if (!qword_100CE2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2430);
  }

  return result;
}

unint64_t sub_1008A0FA8()
{
  result = qword_100CE2438;
  if (!qword_100CE2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2438);
  }

  return result;
}

unint64_t sub_1008A1000()
{
  result = qword_100CE2440;
  if (!qword_100CE2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2440);
  }

  return result;
}

uint64_t sub_1008A1054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008A10C4()
{
  result = qword_100CE2458;
  if (!qword_100CE2458)
  {
    sub_10022E824(&qword_100CE2450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2458);
  }

  return result;
}

unint64_t sub_1008A1128()
{
  result = qword_100CE2460;
  if (!qword_100CE2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2460);
  }

  return result;
}

unint64_t sub_1008A117C()
{
  result = qword_100CE2480;
  if (!qword_100CE2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2480);
  }

  return result;
}

unint64_t sub_1008A11D0()
{
  result = qword_100CE2488;
  if (!qword_100CE2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2488);
  }

  return result;
}

unint64_t sub_1008A1224()
{
  result = qword_100CE2490;
  if (!qword_100CE2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2490);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerActiveLocationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewerActiveLocationState.LocationCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1008A1414()
{
  result = qword_100CE24B0;
  if (!qword_100CE24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24B0);
  }

  return result;
}

unint64_t sub_1008A146C()
{
  result = qword_100CE24B8;
  if (!qword_100CE24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24B8);
  }

  return result;
}

unint64_t sub_1008A14C4()
{
  result = qword_100CE24C0;
  if (!qword_100CE24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24C0);
  }

  return result;
}

unint64_t sub_1008A151C()
{
  result = qword_100CE24C8;
  if (!qword_100CE24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24C8);
  }

  return result;
}

unint64_t sub_1008A1574()
{
  result = qword_100CE24D0;
  if (!qword_100CE24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24D0);
  }

  return result;
}

unint64_t sub_1008A15CC()
{
  result = qword_100CE24D8;
  if (!qword_100CE24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24D8);
  }

  return result;
}

unint64_t sub_1008A1624()
{
  result = qword_100CE24E0;
  if (!qword_100CE24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24E0);
  }

  return result;
}

unint64_t sub_1008A167C()
{
  result = qword_100CE24E8;
  if (!qword_100CE24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24E8);
  }

  return result;
}

uint64_t sub_1008A16DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008A171C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1008A17A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274536465657073 && a2 == 0xEB00000000676E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AE3070 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696E556465657073 && a2 == 0xEF676E6972745374;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100AE3090 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6972745374737567 && a2 == 0xEA0000000000676ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x756C615674737567 && a2 == 0xEF676E6972745365;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74696E5574737567 && a2 == 0xEE00676E69727453;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6562614C74737567 && a2 == 0xEF676E697274536CLL;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F69746365726964 && a2 == 0xEF676E697274536ELL;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x8000000100AE30B0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000021 && 0x8000000100AE30D0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000100AE3100 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x8000000100AE3120 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x656C676E61 && a2 == 0xE500000000000000;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000018 && 0x8000000100AC4E30 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1008A1C24(char a1)
{
  result = 0x7274536465657073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x696E556465657073;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6972745374737567;
      break;
    case 5:
      result = 0x756C615674737567;
      break;
    case 6:
      result = 0x74696E5574737567;
      break;
    case 7:
      result = 0x6562614C74737567;
      break;
    case 8:
      result = 0x6F69746365726964;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x656C676E61;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1008A1E20(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168);
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184);
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200);
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 208) != *(a2 + 208))
  {
    return 0;
  }

  if (*(a1 + 216) == *(a2 + 216) && *(a1 + 224) == *(a2 + 224))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1008A2038(void *a1)
{
  v3 = sub_10022C350(&qword_100CE2500);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1008A2BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_100004D8C();
  if (!v1)
  {
    v10[14] = 1;
    sub_100004D8C();
    v10[13] = 2;
    sub_100004D8C();
    v10[12] = 3;
    sub_100004D8C();
    v10[11] = 4;
    sub_100004D8C();
    v10[10] = 5;
    sub_100004D8C();
    v10[9] = 6;
    sub_100004D8C();
    v10[8] = 7;
    sub_100004D8C();
    v10[7] = 8;
    sub_100004D8C();
    v10[6] = 9;
    sub_100004D8C();
    v10[5] = 10;
    sub_100004D8C();
    v10[4] = 11;
    sub_100004D8C();
    v10[3] = 12;
    sub_100004D8C();
    v10[2] = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[1] = 14;
    sub_100004D8C();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1008A22F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10022C350(&qword_100CE24F0);
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000161C0(a1, a1[3]);
  sub_1008A2BB4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v55 = a2;
  LOBYTE(v57[0]) = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v7;
  sub_10001FB50(1);
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v9;
  sub_10001FB50(2);
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v10;
  sub_10001FB50(3);
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v11;
  sub_10001FB50(4);
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v12;
  sub_10001FB50(5);
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v13;
  sub_10001FB50(6);
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v14;
  sub_10001FB50(7);
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v15;
  sub_10001FB50(8);
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v16;
  sub_10001FB50(9);
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v18;
  v19 = v17;
  sub_10001FB50(10);
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v20;
  sub_10001FB50(11);
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v21;
  sub_10001FB50(12);
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v22;
  sub_10001FB50(13);
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v58 = 14;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v26;
  v31 = v25;
  v27 = sub_100015094();
  v28(v27);
  v56[0] = v6;
  v56[1] = v50;
  v56[2] = v8;
  v56[3] = v49;
  v56[4] = v54;
  v56[5] = v48;
  v56[6] = v53;
  v56[7] = v47;
  v56[8] = v52;
  v56[9] = v46;
  v56[10] = v51;
  v56[11] = v45;
  v56[12] = v38;
  v56[13] = v44;
  v56[14] = v37;
  v56[15] = v43;
  v56[16] = v36;
  v56[17] = v42;
  v56[18] = v19;
  v56[19] = v41;
  v56[20] = v35;
  v56[21] = v40;
  v56[22] = v33;
  v56[23] = v34;
  v56[24] = v32;
  v56[25] = v39;
  v56[26] = v24;
  v56[27] = v31;
  v56[28] = v30;
  sub_1001A86C8(v56, v57);
  sub_100006F14(a1);
  v57[0] = v6;
  v57[1] = v50;
  v57[2] = v8;
  v57[3] = v49;
  v57[4] = v54;
  v57[5] = v48;
  v57[6] = v53;
  v57[7] = v47;
  v57[8] = v52;
  v57[9] = v46;
  v57[10] = v51;
  v57[11] = v45;
  v57[12] = v38;
  v57[13] = v44;
  v57[14] = v37;
  v57[15] = v43;
  v57[16] = v36;
  v57[17] = v42;
  v57[18] = v19;
  v57[19] = v41;
  v57[20] = v35;
  v57[21] = v40;
  v57[22] = v33;
  v57[23] = v34;
  v57[24] = v32;
  v57[25] = v39;
  v57[26] = v24;
  v57[27] = v31;
  v57[28] = v30;
  sub_1006826B0(v57);
  return memcpy(v55, v56, 0xE8uLL);
}

uint64_t sub_1008A2AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008A17A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008A2ACC(uint64_t a1)
{
  v2 = sub_1008A2BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A2B08(uint64_t a1)
{
  v2 = sub_1008A2BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1008A2B44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1008A22F0(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xE8uLL);
  }

  return result;
}

unint64_t sub_1008A2BB4()
{
  result = qword_100CE24F8;
  if (!qword_100CE24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE24F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WindComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1008A2CE8()
{
  result = qword_100CE2508;
  if (!qword_100CE2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2508);
  }

  return result;
}

unint64_t sub_1008A2D40()
{
  result = qword_100CE2510;
  if (!qword_100CE2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2510);
  }

  return result;
}

unint64_t sub_1008A2D98()
{
  result = qword_100CE2518;
  if (!qword_100CE2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2518);
  }

  return result;
}

uint64_t sub_1008A2DEC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, static OpenMoonIntent.title);
  sub_10000703C(v6, static OpenMoonIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t (*static OpenMoonIntent.title.modify())()
{
  if (qword_100CA2960 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000703C(v0, static OpenMoonIntent.title);
  sub_100005E7C();
  return j_j__swift_endAccess_1;
}

uint64_t sub_1008A30F8()
{
  v0 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenMoonIntent.description);
  sub_10000703C(v10, static OpenMoonIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t (*static OpenMoonIntent.description.modify())()
{
  if (qword_100CA2968 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  sub_10000703C(v0, static OpenMoonIntent.description);
  sub_100005E7C();
  return j__swift_endAccess_1;
}

uint64_t static OpenMoonIntent.parameterSummary.getter()
{
  v0 = sub_10022C350(&qword_100CE2520);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100005E40();
  sub_10022C350(&qword_100CE2528);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_1008A367C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100AE3140;
  v3._countAndFlagsBits = 0xD000000000000016;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE2538);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_1008A367C()
{
  result = qword_100CE2530;
  if (!qword_100CE2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2530);
  }

  return result;
}

uint64_t sub_1008A36D0()
{
  swift_getKeyPath();
  sub_1008A367C();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A3BD20;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_1008A378C()
{
  v1 = sub_10022C350(&qword_100CBCC30);
  sub_1000037C4();
  v3 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100005E40();
  sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1008A3910(uint64_t a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100005E40();
  sub_1000D47CC(a1, v1);
  IntentParameter.wrappedValue.setter();
  return sub_1001AEDF4(a1);
}

uint64_t sub_1008A3998()
{
  v0 = sub_10022C350(&qword_100CE2598);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CE2540);
  sub_100007074(v1, static OpenMoonIntent.urlRepresentation);
  sub_10000703C(v1, static OpenMoonIntent.urlRepresentation);
  sub_1008A367C();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100AE3270;
  v2._countAndFlagsBits = 0xD000000000000026;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE2538);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x3D6574616426;
  v3._object = 0xE600000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CE25A0);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t OpenMoonIntent.urlRepresentation.unsafeMutableAddressor()
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68();
  }

  v0 = sub_10022C350(&qword_100CE2540);

  return sub_10000703C(v0, static OpenMoonIntent.urlRepresentation);
}

uint64_t static OpenMoonIntent.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68();
  }

  v2 = sub_10022C350(&qword_100CE2540);
  v3 = sub_10000703C(v2, static OpenMoonIntent.urlRepresentation);
  swift_beginAccess();
  sub_100003B20();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static OpenMoonIntent.urlRepresentation.setter(uint64_t a1)
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68();
  }

  v2 = sub_10022C350(&qword_100CE2540);
  v3 = sub_10000703C(v2, static OpenMoonIntent.urlRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenMoonIntent.urlRepresentation.modify())()
{
  if (qword_100CA2970 != -1)
  {
    sub_10001FB68();
  }

  v0 = sub_10022C350(&qword_100CE2540);
  sub_10000703C(v0, static OpenMoonIntent.urlRepresentation);
  sub_100005E7C();
  return j_j__swift_endAccess_1;
}

uint64_t OpenMoonIntent.init()()
{
  sub_10022C350(&qword_100CA2E28);
  sub_1000037C4();
  v54 = v2;
  v55 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v53 = &v41 - v4;
  v56 = type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v58 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v57 = v8 - v7;
  v9 = sub_10022C350(&qword_100CA2D68);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v52 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v41 - v13;
  v14 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100005E40();
  v16 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = type metadata accessor for Locale();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = type metadata accessor for String.LocalizationValue();
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_1000037D8();
  v27 = type metadata accessor for LocalizedStringResource();
  v50 = v27;
  sub_100003B20();
  __chkstk_darwin(v28);
  sub_1000037D8();
  v41 = v30 - v29;
  v49 = sub_10022C350(&qword_100CA2D78);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v32 = *(v18 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v16;
  v32(v22, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  v44 = v32;
  v45 = v18 + 104;
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v22, v31, v16);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v0, 0, 1, v27);
  static LocationSearchEntity.makeCurrentLocation()();
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v33 = type metadata accessor for IntentDialog();
  v46 = v33;
  v34 = v51;
  sub_10001B350(v51, 1, 1, v33);
  sub_10001B350(v52, 1, 1, v33);
  v47 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v58 + 104);
  v58 += 104;
  v48 = v35;
  v35(v57);
  sub_10022C350(&qword_100CA2D80);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80);
  sub_10015E074();
  v36 = v34;
  v52 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
  v49 = sub_10022C350(&qword_100CA2E30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = v42;
  v38 = v43;
  v39 = v44;
  v44(v22, v42, v43);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39(v22, v37, v38);
  sub_100010E98();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v0, 0, 1, v50);
  sub_10001B350(v36, 1, 1, v46);
  (*(v54 + 104))(v53, enum case for IntentParameter.DateKind.dateTime<A>(_:), v55);
  v48(v57, v47, v56);
  IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  return v52;
}

uint64_t sub_1008A44B4@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenMoonIntent.urlRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10022C350(&qword_100CE2540);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

unint64_t sub_1008A4540()
{
  result = qword_100CE2548;
  if (!qword_100CE2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2548);
  }

  return result;
}

unint64_t sub_1008A4598()
{
  result = qword_100CE2550;
  if (!qword_100CE2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2550);
  }

  return result;
}

uint64_t sub_1008A4608@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenMoonIntent.title.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for LocalizedStringResource();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1008A4688(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1008A5748();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_1008A4734@<X0>(uint64_t *a1@<X8>)
{
  result = OpenMoonIntent.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1008A475C(uint64_t a1)
{
  v2 = sub_1008A367C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1008A4798()
{
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  OpenMoonIntent.init()();
  sub_1008A367C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  static _AssistantIntent.Builder.buildExpression(_:)();
  v2 = sub_100049858();
  v3(v2);
  sub_10022C350(&qword_100CADD98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v0;
  v5 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1008A48DC(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10022C350(&qword_100CE2578);
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CE2580);
  v48 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - v4;
  sub_1008A367C();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v47 = v6;
  v49 = v3 + 8;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v6(v5, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41 = "When is the next full moon?";
  v7._object = 0x8000000100AE3180;
  v7._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v45 = sub_1008A566C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 63;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v5, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = (v41 | 0x8000000000000000);
  v9._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v38 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 63;
  v11._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = v47;
  v12 = v48;
  v47(v5, v48);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v5, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x8000000100AE31C0;
  v14._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 63;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v47(v5, v48);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x8000000100AE31C0;
  v16._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 63;
  v18._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v47;
  v19 = v48;
  v47(v5, v48);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD000000000000016;
  v21._object = 0x8000000100AE3250;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v23 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v24 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20(v5, v19);
  sub_10022C350(&qword_100CE2588);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100A55560;
  v26 = v43;
  *(v25 + 32) = v44;
  *(v25 + 40) = v26;
  v27 = v41;
  *(v25 + 48) = v42;
  *(v25 + 56) = v27;
  v28 = v39;
  *(v25 + 64) = v40;
  *(v25 + 72) = v28;
  v30 = v36;
  v29 = v37;
  *(v25 + 80) = v45;
  *(v25 + 88) = v29;
  v31 = v35;
  *(v25 + 96) = v30;
  *(v25 + 104) = v31;
  *(v25 + 112) = v23;
  *(v25 + 120) = v24;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v32;
}

uint64_t sub_1008A5188(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000D47CC(a1, &v6 - v3);
  return sub_1008A3910(v4);
}

uint64_t sub_1008A521C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1008A367C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1008A566C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10022C350(&qword_100CBCBD8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_1008A540C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3B030;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_1008A5524()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_1008A367C();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v2 = sub_100049858();
  v3(v2);
  sub_10022C350(&qword_100CADD88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v0;
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v5;
}

unint64_t sub_1008A566C()
{
  result = qword_100CE2568;
  if (!qword_100CE2568)
  {
    sub_10022E824(&unk_100CB2CF0);
    sub_1008A56F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2568);
  }

  return result;
}

unint64_t sub_1008A56F0()
{
  result = qword_100CE2570;
  if (!qword_100CE2570)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2570);
  }

  return result;
}

unint64_t sub_1008A5748()
{
  result = qword_100CE2590;
  if (!qword_100CE2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE2590);
  }

  return result;
}

uint64_t sub_1008A579C()
{
  v1 = OBJC_IVAR____TtC7Weather28LocationViewCollisionOptions__value;
  v2 = sub_10022C350(&qword_100CE2750);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1008A584C()
{
  sub_10011BE3C();
  _print_unlocked<A, B>(_:_:)();

  return 0;
}

void sub_1008A5918()
{
  v0 = [objc_allocWithZone(LSApplicationWorkspace) init];
  URL._bridgeToObjectiveC()(v1);
  v4 = v2;
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_1008CAC30(v4, v3, v0);
}

double sub_1008A5A04@<D0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CAC3F8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A3BBA0;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 32) = Gradient.Stop.init(color:location:)();
  *(v2 + 40) = v3;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 48) = Gradient.Stop.init(color:location:)();
  *(v2 + 56) = v4;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 64) = Gradient.Stop.init(color:location:)();
  *(v2 + 72) = v5;
  Gradient.init(stops:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1008A5B54()
{
  result = qword_100CE27F8;
  if (!qword_100CE27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE27F8);
  }

  return result;
}

void sub_1008A5BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_10001E790();
  v26 = type metadata accessor for Location();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_100040690();
  v32 = static OS_dispatch_queue.main.getter();
  firstly<A, B>(on:disposeOn:closure:)();

  sub_100007E8C();
  v33 = swift_allocObject();
  swift_weakInit();
  (*(v28 + 16))(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
  v34 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  (*(v28 + 32))(v35 + v34, &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  *(v35 + v34 + v30) = v23 & 1;
  v36 = zalgo.getter();
  sub_10022C350(&qword_100CD1FC0);
  Promise.then<A>(on:closure:)();

  sub_10000536C();
}

void sub_1008A5DA4(char a1)
{
  sub_10001E790();
  sub_100040690();
  v2 = static OS_dispatch_queue.main.getter();
  sub_1000E5A8C();

  *(swift_allocObject() + 16) = a1 & 1;
  v3 = zalgo.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1008A5EC4(char a1, char a2)
{
  sub_10001E790();
  sub_100040690();
  v4 = static OS_dispatch_queue.main.getter();
  sub_1000E5A8C();

  v5 = sub_100086BF4(a1 & 1);
  *(swift_allocObject() + 16) = a2;
  Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1008A5FEC(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TimeState();
  __chkstk_darwin(v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Location();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v37 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  v12 = v36 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  result = *(v12 + *(type metadata accessor for LocationsState() + 32));
  v14 = *(result + 16);
  if (v14)
  {
    v27[2] = v3;
    v34 = a3;
    v30 = (v36 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v15 = v10 + 16;
    v32 = *(v10 + 16);
    v33 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_time;
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v31 = v8;
    v17 = result + v16;
    v18 = *(v15 + 56);
    v35 = v15;
    v28 = (v15 - 8);
    v29 = v18;
    v27[1] = result;

    v19 = v37;
    do
    {
      v32(v19, v17, v9);
      v20 = v9;
      v21 = v31;
      v23 = *v30;
      v22 = v30[1];
      v25 = v30[2];
      v24 = v30[3];
      sub_1000863F8(v36 + v33, v31);

      v26 = v23;
      v9 = v20;
      sub_100186B34(v37, v26, v22, v25, v24, v21, v34 & 1);

      v19 = v37;

      (*v28)(v19, v20);
      sub_100087544();
      v17 += v29;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1008A62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v8);
  sub_100087544();
  return sub_10018E604(a4);
}

uint64_t sub_1008A6378()
{
  type metadata accessor for LocationsState();

  sub_1001919F8();
}

void sub_1008A6458()
{
  sub_1000C87D0();
  v1 = v0;
  sub_10022C350(&qword_100CBEE00);
  v2 = type metadata accessor for Location();
  sub_1000037C4();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v4 + 16))(v6 + v5, v1, v2);
  sub_1001919F8();
  swift_setDeallocating();
  sub_1005C2034();
  sub_100020DD4();
}

uint64_t sub_1008A6574(uint64_t a1)
{
  (*(a1 + 16))(&v2);
  sub_10022C350(&qword_100CE2A18);
  sub_1008B1694();
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_1008A65D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, BOOL *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v9 = result;
  if (result)
  {
    sub_1008A6674(a2, a3 & 1, v7);
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_1008A6674(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  LODWORD(v112) = a2;
  v109 = *v3;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for OSSignpostID();
  v117 = *(v124 - 8);
  v9 = __chkstk_darwin(v124);
  v120 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v10;
  __chkstk_darwin(v9);
  v125 = v89 - v11;
  v12 = type metadata accessor for AppConfiguration();
  v13 = *(v12 - 8);
  v115 = v12;
  v116 = v13;
  v14 = __chkstk_darwin(v12);
  v123 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v15;
  __chkstk_darwin(v14);
  v126 = v89 - v16;
  v17 = type metadata accessor for TimeState();
  __chkstk_darwin(v17 - 8);
  v19 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Location();
  __chkstk_darwin(v20);
  v121 = v21;
  v22 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v24 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v25 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v26 = *(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v127 = v27;
  v28 = *(v27 + 16);
  v122 = v29;
  v118 = v28;
  v119 = v27 + 16;
  (v28)(v22, a1);
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v113 = v22;
  v30 = sub_10005B8AC(2u, v22, 0);
  sub_1000863F8(a3 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v19);
  v31 = a1;
  v32 = a1;
  v33 = v30;
  v34 = v4;
  LOBYTE(v30) = sub_1008A8954(v32, v30, v23, v24, v25, v26, v19);

  v35 = type metadata accessor for Date();
  v36 = (*(*(v35 - 8) + 8))(v19, v35);
  if (v30)
  {
    __chkstk_darwin(v36);
    v89[-4] = v4;
    v89[-3] = v31;
    v37 = v31;
    v98 = v31;
    v111 = v33;
    v89[-2] = v33;
    syncOnMain(_:)();
    sub_1000161C0(v4 + 15, v4[18]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    v97 = v4[56];
    v38 = v125;
    OSSignpostID.init(log:)();
    v102 = v112 & 1;
    v99 = v34;
    v100 = sub_100086BF4(v112 & 1);
    v39 = swift_allocObject();
    v89[1] = v39;
    swift_weakInit();
    v40 = v117;
    v41 = *(v117 + 16);
    v91 = v117 + 16;
    v92 = v41;
    v42 = v120;
    v43 = v38;
    v44 = v124;
    v41(v120, v43, v124);
    v45 = v113;
    v46 = v37;
    v47 = v122;
    v118(v113, v46, v122);
    v90 = *(v40 + 80);
    v48 = v40;
    v49 = (v90 + 32) & ~v90;
    v110 = *(v127 + 80);
    v50 = v127;
    v93 = v101 + v110;
    v51 = (v101 + v110 + v49) & ~v110;
    v101 = v110 | 7;
    v96 = v110 | 7 | v90;
    v52 = swift_allocObject();
    *(v52 + 16) = v39;
    *(v52 + 24) = v111;
    v53 = *(v48 + 32);
    v94 = v48 + 32;
    v95 = v53;
    v53(v52 + v49, v42, v44);
    v54 = *(v50 + 32);
    v127 = v50 + 32;
    v112 = v54;
    v54(v52 + v51, v45, v47);
    aBlock[4] = sub_100086CC8;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C746C8;
    v55 = _Block_copy(aBlock);

    v56 = v103;
    static DispatchQoS.unspecified.getter();
    v128 = _swiftEmptyArrayStorage;
    sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680);
    sub_10006768C(&qword_100CD81D0, &qword_100CB4680);
    v57 = v105;
    v58 = v108;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);
    (*(v107 + 8))(v57, v58);
    (*(v104 + 8))(v56, v106);

    v59 = v98;
    v60 = v118;
    v118(v45, v98, v47);
    v61 = (v110 + 16) & ~v110;
    v62 = v121;
    v63 = swift_allocObject();
    v112(v63 + v61, v45, v47);
    sub_10022C350(&qword_100CE2960);
    v107 = firstly<A, B>(on:disposeOn:closure:)();

    v106 = swift_allocObject();
    swift_weakInit();
    v64 = v124;
    v92(v120, v125, v124);
    v60(v45, v59, v47);
    v65 = v116;
    v66 = *(v116 + 16);
    v108 = v116 + 16;
    v109 = v66;
    v66(v123, v126, v115);
    v67 = (v90 + 24) & ~v90;
    v68 = (v93 + v67) & ~v110;
    v69 = (v62 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = *(v65 + 80);
    v72 = (v70 + v71 + 8) & ~v71;
    v73 = v72 + v114;
    v74 = swift_allocObject();
    *(v74 + 16) = v97;
    v95(v74 + v67, v120, v64);
    v75 = v113;
    v112(v74 + v68, v113, v122);
    *(v74 + v69) = v111;
    *(v74 + v70) = v106;
    v120 = *(v65 + 32);
    v76 = v123;
    v77 = v115;
    (v120)(v74 + v72, v123, v115);
    *(v74 + v73) = v102;

    v78 = zalgo.getter();
    v106 = Promise.then<A>(on:closure:)();

    v79 = swift_allocObject();
    swift_weakInit();
    v80 = v75;
    v81 = v122;
    v118(v75, v98, v122);
    v82 = v77;
    v109(v76, v126, v77);
    v83 = (v110 + 32) & ~v110;
    v84 = (v83 + v121 + v71) & ~v71;
    v85 = v84 + v114;
    v86 = swift_allocObject();
    *(v86 + 16) = v111;
    *(v86 + 24) = v79;
    v112(v86 + v83, v80, v81);
    (v120)(v86 + v84, v123, v82);
    *(v86 + v85) = v102;

    v87 = zalgo.getter();
    Promise.error(on:closure:)();

    (*(v117 + 8))(v125, v124);
    (*(v116 + 8))(v126, v82);
  }
}

uint64_t sub_1008A743C()
{
  v1 = sub_100017580();
  type metadata accessor for WeatherDataUpdateRequestLog.Event(v1);
  sub_100003D98();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  *(v4 - v3) = v0;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v5);
  sub_100006A88();
  return sub_100087544();
}

uint64_t sub_1008A74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v31 = a1;
  v27 = a3;
  v28 = a4;
  v32 = a2;
  v5 = type metadata accessor for NewsDataModel();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5 - 8);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location();
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherData(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_10001B350(v17, 1, 1, v18);
  sub_1000863F8(v27, v14);
  (*(v8 + 16))(v10, v28, v7);
  sub_1000863F8(v30, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = (v9 + *(v29 + 80) + v20) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v32;
  *(v22 + 4) = v31;
  *(v22 + 5) = v23;
  sub_100086450(v14, &v22[v19]);
  (*(v8 + 32))(&v22[v20], v10, v25);
  sub_100086450(v26, &v22[v21]);

  sub_1006C0138();
}

uint64_t sub_1008A7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = type metadata accessor for Location();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v8[15] = *(v10 + 64);
  v8[16] = swift_task_alloc();
  v11 = *(type metadata accessor for NewsDataModel() - 8);
  v8[17] = v11;
  v8[18] = *(v11 + 64);
  v8[19] = swift_task_alloc();
  v12 = *(type metadata accessor for WeatherData(0) - 8);
  v8[20] = v12;
  v8[21] = *(v12 + 64);
  v8[22] = swift_task_alloc();
  v13 = *(type metadata accessor for PreprocessedWeatherData() - 8);
  v8[23] = v13;
  v8[24] = *(v13 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_1008A7A64, 0, 0);
}

uint64_t sub_1008A7A64()
{
  sub_10019225C();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[28];
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v3);
    sub_100006A88();
    sub_100087544();
    sub_1000161C0((v2 + 160), *(v2 + 184));
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_1008A7BD4;
    v5 = v0[26];
    v6 = v0[10];
    v7 = v0[11];

    return sub_1000FF7F4(v5, v6, v7);
  }

  else
  {
    v9 = sub_100192454();
    sub_1005B3D94(v9, v10);
    sub_1000D3C88();

    sub_100003B14();

    return v11();
  }
}

uint64_t sub_1008A7BD4()
{
  sub_100003B08();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  return _swift_task_switch(sub_1008A7CC4, 0, 0);
}

uint64_t sub_1008A7CC4()
{
  v26 = v0[29];
  v1 = v0[22];
  v18 = v0[25];
  v2 = v0[19];
  v22 = v0[18];
  v23 = v0[24];
  v21 = v0[17];
  v3 = v0[16];
  v20 = v3;
  v24 = v0[15];
  v5 = v0[13];
  v4 = v0[14];
  v19 = v2;
  v16 = v0[12];
  v17 = v0[11];
  v15 = v0[10];
  v27 = v0[9];
  sub_100007E8C();
  v25 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10003BFF4();
  sub_1000863F8(v15, v1);
  sub_100041BE8();
  v6 = sub_100003940();
  sub_1000863F8(v6, v7);
  sub_100028CC8();
  sub_1000863F8(v16, v2);
  (*(v4 + 16))(v3, v17, v5);
  sub_1008B1680();
  v8 = (v23 + *(v21 + 80) + v1) & ~*(v21 + 80);
  v9 = (v22 + *(v4 + 80) + v8) & ~*(v4 + 80);
  v10 = (v24 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v26;
  sub_100037E28();
  sub_100086450(v1, v12);
  sub_1000306A4();
  sub_100086450(v18, v11 + v1);
  sub_1000243CC();
  sub_100086450(v19, v11 + v8);
  (*(v4 + 32))(v11 + v9, v20, v5);
  *(v11 + v10) = v27;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;

  asyncMain(block:)();

  sub_100025454();
  sub_100087544();

  sub_1000D3C88();

  sub_100003B14();

  return v13();
}

uint64_t sub_1008A7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100188AAC(a2, a3, a4, a5, a6);
  sub_10018E2C0(1, 0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10018E604(a5);
  }

  return result;
}

uint64_t sub_1008A801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v42 = a2;
  v43 = a5;
  v41 = a3;
  v51 = a10;
  v52 = a9;
  v50 = a11;
  v49 = a12;
  v48 = a13;
  v15 = type metadata accessor for WeatherServiceCaching.Options();
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CAD030);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = sub_10022C350(&qword_100CAD038);
  __chkstk_darwin(v22 - 8);
  v24 = &v40 - v23;
  v25 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v25 - 8);
  v27 = &v40 - v26;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v44 = *(Options - 8);
  v45 = Options;
  __chkstk_darwin(Options);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v33 = (&v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v33 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v33);
  sub_100087544();
  Location.timeZone.getter();
  v34 = type metadata accessor for TimeZone();
  sub_10001B350(v27, 0, 1, v34);
  v35 = type metadata accessor for WeatherServiceLocationOptions();
  (*(*(v35 - 8) + 16))(v24, a4, v35);
  sub_10001B350(v24, 0, 1, v35);
  v36 = AppConfiguration.treatmentIDs.getter();
  v37 = type metadata accessor for WeatherNetworkActivity();
  sub_10001B350(v21, 1, 1, v37);
  v56 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970);
  v38 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10007F81C(0, 0, v27, v24, v18, v36, v21, 0, v30);

  (*(v47 + 8))(v18, v38);
  sub_100018144(v21, &qword_100CAD030);
  sub_100018144(v24, &qword_100CAD038);
  sub_100018144(v27, &qword_100CACE08);
  sub_10007FB34(v41, v53, v54, v52, v51, v50, v30, v49 & 1, v42);
  return (*(v44 + 8))(v30, v45);
}

void sub_1008A852C()
{
  sub_10000C778();
  v16 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  sub_100003D98();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v14);
  sub_100006A88();
  sub_100087544();
  *v10 = Location.id.getter();
  *(v10 + 8) = v15;
  *(v10 + 16) = v16;
  *(v10 + 32) = v4;
  *(v10 + 40) = v2;
  type metadata accessor for WeatherDataAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v18 = 0;
  memset(v17, 0, sizeof(v17));

  sub_10004F034(v10, v17, v6);
  sub_100018144(v17, &unk_100CD81B0);
  sub_100031FA8();
  sub_100087544();

  sub_1005B3D94(v4, v2);

  sub_10000536C();
}

uint64_t sub_1008A86C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a3;
  v7 = type metadata accessor for MainAction();
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v12);
  sub_100087544();
  v13 = Location.id.getter();
  v15 = v14;
  swift_errorRetain();
  v16 = sub_100897C14(a5);
  v18 = v17;
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  v25 = a5;
  sub_10022C350(&qword_100CD8220);
  _print_unlocked<A, B>(_:_:)();
  v19 = v23[0];
  *v9 = v13;
  *(v9 + 1) = v15;
  *(v9 + 2) = v16;
  *(v9 + 3) = v18;
  *(v9 + 2) = v19;
  type metadata accessor for WeatherDataAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_10004F034(v9, v23, a2);
  sub_100018144(v23, &unk_100CD81B0);
  sub_100087544();
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  *&v23[0] = 0xD000000000000019;
  *(&v23[0] + 1) = 0x8000000100AE3700;
  swift_getErrorValue();
  v20._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v20);

  sub_1005B3D94(*&v23[0], *(&v23[0] + 1));
}

uint64_t sub_1008A8954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = a7;
  v99 = a5;
  v94 = type metadata accessor for HourTemperatureStatistics();
  v102 = *(v94 - 8);
  __chkstk_darwin(v94);
  v101 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10022C350(&qword_100CB10F8);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v77 - v10;
  v11 = type metadata accessor for Calendar.Component();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = __chkstk_darwin(v11);
  v91 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v77 - v14;
  v15 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v15 - 8);
  v88 = &v77 - v16;
  v83 = type metadata accessor for Calendar();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v96 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TimeZone();
  v86 = *(v87 - 8);
  v18 = __chkstk_darwin(v87);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = &v77 - v20;
  v81 = type metadata accessor for Date();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v25 - 8);
  v27 = &v77 - v26;
  v28 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v28 - 8);
  v30 = &v77 - v29;
  v31 = sub_10022C350(&qword_100CD4D40);
  __chkstk_darwin(v31 - 8);
  v33 = &v77 - v32;
  v100 = type metadata accessor for WeatherStatisticsModel();
  v95 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Location();
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v106 = a1;
  v103 = v39 + 16;
  v104 = v40;
  v40(v37, a1, v38);
  swift_storeEnumTagMultiPayload();
  v105 = a2;
  sub_10005C1D4(v37);
  sub_100087544();
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.clearDailyStatisticsCacheOnNextLaunch.getter();
  SettingReader.read<A>(_:)();

  if (v111 & 1) != 0 || (static SettingReader.shared.getter(), static Settings.Daemon.clearDailySummaryCacheOnNextLaunch.getter(), SettingReader.read<A>(_:)(), , , (v110) || (static SettingReader.shared.getter(), static Settings.Daemon.clearHourlyStatisticsCacheOnNextLaunch.getter(), SettingReader.read<A>(_:)(), , , (v109) || (static SettingReader.shared.getter(), static Settings.Daemon.clearMonthlyStatisticsCacheOnNextLaunch.getter(), SettingReader.read<A>(_:)(), , , (v108))
  {
    v41 = &v37[*(sub_10022C350(&qword_100CC77A0) + 48)];
    v104(v37, v106, v38);
    v42 = 0x8000000100AE37E0;
    v43 = 0xD00000000000001ALL;
    goto LABEL_6;
  }

  static SettingReader.shared.getter();
  static Settings.Daemon.disableStatisticsCaching.getter();
  SettingReader.read<A>(_:)();

  if (v107)
  {
    v41 = &v37[*(sub_10022C350(&qword_100CC77A0) + 48)];
    v104(v37, v106, v38);
    v42 = 0x8000000100AE37C0;
    v43 = 0xD00000000000001BLL;
    goto LABEL_6;
  }

  v45 = v106;
  v46 = Location.id.getter();
  sub_1000864C0(v46, v47, v99);

  v48 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v27, 1, v48) == 1)
  {
    v49 = &qword_100CA37B0;
    v50 = v27;
LABEL_15:
    sub_100018144(v50, v49);
    sub_10001B350(v33, 1, 1, v100);
LABEL_16:
    sub_100018144(v33, &qword_100CD4D40);
    v41 = &v37[*(sub_10022C350(&qword_100CC77A0) + 48)];
    v104(v37, v45, v38);
    v42 = 0x8000000100AE3760;
    v43 = 0xD00000000000001CLL;
LABEL_6:
    *v41 = v43;
    v41[1] = v42;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v37);
    sub_100087544();
    return 1;
  }

  sub_1001A0D3C();
  sub_100087544();
  v51 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v30, 1, v51) == 1)
  {
    v49 = &qword_100CA3898;
    v50 = v30;
    goto LABEL_15;
  }

  sub_1000863F8(&v30[*(v51 + 32)], v24);
  sub_100087544();
  sub_100882BD0(v33);
  sub_100087544();
  v52 = v100;
  if (sub_100024D10(v33, 1, v100) == 1)
  {
    goto LABEL_16;
  }

  (*(v95 + 32))(v97, v33, v52);
  v53 = v84;
  Location.timeZone.getter();
  Date.startOfDay(timeZone:)();
  v54 = v86;
  v55 = *(v86 + 8);
  v56 = v87;
  v55(v53, v87);
  v57 = v88;
  TimeZone.init(secondsFromGMT:)();
  result = sub_100024D10(v57, 1, v56);
  if (result != 1)
  {
    v58 = v85;
    (*(v54 + 32))(v85, v57, v56);
    static Calendar.gregorianCalendar(with:)();
    v55(v58, v56);
    v59 = v92;
    v60 = v93;
    v61 = *(v92 + 104);
    v62 = v90;
    v61(v90, enum case for Calendar.Component.hour(_:), v93);
    v63 = v91;
    v61(v91, enum case for Calendar.Component.year(_:), v60);
    v64 = Calendar.ordinality(of:in:for:)();
    LOBYTE(v61) = v65;
    v66 = *(v59 + 8);
    v66(v63, v60);
    result = (v66)(v62, v60);
    v67 = v94;
    if (v61)
    {
LABEL_26:
      (*(v82 + 8))(v96, v83);
      (*(v80 + 8))(v98, v81);
      (*(v95 + 8))(v97, v100);
      return 0;
    }

    v99 = v64 + 24;
    if (!__OFADD__(v64, 24))
    {
      v68 = v77;
      WeatherStatisticsModel.hourlyTemperatureStatistics.getter();
      v69 = v79;
      v70 = HourlyWeatherStatistics.hours.getter();
      result = (*(v78 + 8))(v68, v69);
      v71 = *(v70 + 16);
      v93 = v102 + 16;
      while (1)
      {
        if (!v71)
        {

          v76 = &v37[*(sub_10022C350(&qword_100CC77A0) + 48)];
          v104(v37, v106, v38);
          *v76 = 0xD00000000000001DLL;
          *(v76 + 1) = 0x8000000100AE37A0;
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v37);
          sub_100087544();
          (*(v82 + 8))(v96, v83);
          (*(v80 + 8))(v98, v81);
          (*(v95 + 8))(v97, v100);
          return 1;
        }

        if (v71 > *(v70 + 16))
        {
          break;
        }

        --v71;
        v72 = v101;
        v73 = v102;
        (*(v102 + 16))(v101, v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, v67);
        v74 = HourTemperatureStatistics.hour.getter();
        result = (*(v73 + 8))(v72, v67);
        if (v74 == v99)
        {

          v75 = &v37[*(sub_10022C350(&qword_100CC77A0) + 48)];
          v104(v37, v106, v38);
          *v75 = 0xD00000000000001BLL;
          *(v75 + 1) = 0x8000000100AE3780;
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v37);
          sub_100087544();
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A97F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1008A98B0(a2, v7, a3);
  return sub_100087544();
}

uint64_t sub_1008A98B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v28 = a2;
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = v8;
  v31 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100040690();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    (*(v4 + 16))(&v32, result);
    v26 = sub_1008AB6E8(a1, v32);

    v17 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    sub_1000863F8(v28, v17);
    (*(v7 + 16))(v31, a1, v6);
    v18 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v19 = v18 + v10;
    v20 = (v18 + v10) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(v7 + 80);
    v28 = v6;
    v22 = (v21 + v20 + 16) & ~v21;
    v23 = v30;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_100086450(v17, v24 + v18);
    LOBYTE(v17) = v26 & 1;
    *(v24 + v19) = v26 & 1;
    *(v24 + v20 + 8) = v4;
    (*(v7 + 32))(v24 + v22, v31, v28);

    sub_10018C9B4(a1, v17, sub_1008B1014);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008A9C2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v26 = a8;
  v27 = a7;
  v28 = a2;
  v29 = a3;
  v30 = a6;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = a1[1];
  static os_signpost_type_t.end.getter();
  sub_10022C350(&qword_100CA40C8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100A2C3F0;
  v25 = a4;
  v17 = Location.name.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100035744();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  *v13 = v14;
  v13[1] = v15;
  swift_storeEnumTagMultiPayload();
  sub_100088528(v14, v15);
  sub_10005C1D4(v13);
  sub_100087544();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v15 == 1)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = CountryCode.value.getter();
      v22 = v23;
    }

    sub_1008A9E5C(v25, v27, v21, v22, v26 & 1, a5);
  }

  return result;
}

uint64_t sub_1008A9E5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), int a5, uint64_t a6)
{
  v104 = a6;
  LODWORD(v94) = a5;
  v82 = a4;
  v80 = a3;
  v75 = a1;
  v81 = *v6;
  v96 = type metadata accessor for Location();
  v103 = *(v96 - 8);
  v97 = *(v103 + 64);
  __chkstk_darwin(v96);
  v93 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v87 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v90 = *(v9 - 8);
  v91 = v9;
  v92 = *(v90 + 64);
  v10 = __chkstk_darwin(v9);
  v89 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = &v71 - v12;
  v13 = type metadata accessor for TimeZone();
  v14 = *(v13 - 8);
  v105 = v13;
  v106 = v14;
  __chkstk_darwin(v13);
  v99 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Calendar();
  v95 = *(v98 - 8);
  __chkstk_darwin(v98);
  v102 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for WeatherServiceCaching.Options();
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CAD030);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = sub_10022C350(&qword_100CAD038);
  __chkstk_darwin(v21 - 8);
  v23 = &v71 - v22;
  v24 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v24 - 8);
  v26 = &v71 - v25;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v85 = *(Options - 8);
  __chkstk_darwin(Options);
  v101 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WeatherServiceLocationOptions();
  v79 = *(v28 - 8);
  v29 = v79;
  __chkstk_darwin(v28);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for AppConfiguration();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v6;
  sub_1000161C0(v6 + 15, v6[18]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v77 = v33;
  AppConfiguration.locationDecimalPrecision.getter();
  v34 = v31;
  v78 = v31;
  WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)();
  v35 = v75;
  Location.timeZone.getter();
  sub_10001B350(v26, 0, 1, v105);
  v36 = *(v29 + 16);
  v76 = v28;
  v36(v23, v34, v28);
  sub_10001B350(v23, 0, 1, v28);
  v37 = AppConfiguration.treatmentIDs.getter();
  v38 = type metadata accessor for WeatherNetworkActivity();
  sub_10001B350(v20, 1, 1, v38);
  v107 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970);
  v39 = v72;
  v40 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10007F81C(v80, v82, v26, v23, v39, v37, v20, 0, v101);

  (*(v74 + 8))(v39, v40);
  sub_100018144(v20, &qword_100CAD030);
  sub_100018144(v23, &qword_100CAD038);
  sub_100018144(v26, &qword_100CACE08);
  v41 = v99;
  v42 = v35;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v43 = *(v106 + 8);
  v106 += 8;
  v82 = v43;
  v43(v41, v105);
  v44 = v71[56];
  v45 = v100;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  sub_10022C350(&qword_100CA40C8);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100A2C3F0;
  v47 = v42;
  v48 = Location.name.getter();
  v50 = v49;
  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = sub_100035744();
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  v51 = v45;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v52 = v87;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v52);
  sub_100087544();
  v94 = sub_1000925AC();
  updated = Location.clLocation.getter();
  v53 = v47;
  Location.timeZone.getter();
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = v103;
  v56 = v93;
  v57 = v53;
  v58 = v96;
  (*(v103 + 16))(v93, v57, v96);
  v59 = v89;
  v60 = v90;
  v61 = v91;
  (*(v90 + 16))(v89, v51, v91);
  v62 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v63 = (v97 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (*(v60 + 80) + v63 + 8) & ~*(v60 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = v54;
  (*(v103 + 32))(v65 + v62, v56, v58);
  *(v65 + v63) = v104;
  (*(v60 + 32))(v65 + v64, v59, v61);

  v66 = updated;
  v68 = v101;
  v67 = v102;
  v69 = v99;
  WeatherService.fetchStatistics(for:calendar:options:timeZone:completion:)();

  v82(v69, v105);
  (*(v60 + 8))(v100, v61);
  (*(v95 + 8))(v67, v98);
  (*(v85 + 8))(v68, Options);
  (*(v79 + 8))(v78, v76);
  (*(v83 + 8))(v77, v84);
}

uint64_t sub_1008AAA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v13);
  sub_100087544();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1008A9E5C(a4, a5, 0, 0, a6 & 1, a2);
  }

  return result;
}

void sub_1008AAB6C(void (*a1)(unint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v82 = a4;
  v79 = a3;
  v74 = a1;
  v6 = type metadata accessor for Location();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v8;
  __chkstk_darwin(v7);
  v78 = &v68 - v10;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for WeatherStatisticsModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v73 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v20 = sub_10022C350(&qword_100CE2A10);
  __chkstk_darwin(v20);
  v22 = (&v68 - v21);
  swift_beginAccess();
  v75 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_1000302D8(v74, v22, &qword_100CE2A10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v24;
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v22;
      *v13 = *v22;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      sub_10005C1D4(v13);
      sub_100087544();
      static os_signpost_type_t.end.getter();
      v27 = *(v24 + 448);
      sub_10022C350(&qword_100CA40C8);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100A2C3F0;
      v29 = v27;
      v30 = v79;
      v31 = Location.name.getter();
      v33 = v32;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_100035744();
      *(v28 + 32) = v31;
      *(v28 + 40) = v33;
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      v34 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v36 = v80;
      v35 = v81;
      v37 = v78;
      (*(v80 + 16))(v78, v30, v81);
      v38 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v39 = (v76 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v34;
      (*(v36 + 32))(v40 + v38, v37, v35);
      *(v40 + v39) = v26;
      *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v82;

      swift_errorRetain();

      asyncMain(block:)();
    }

    else
    {
      v52 = *(v15 + 32);
      v70 = v15 + 32;
      v71 = v19;
      v74 = v52;
      v69 = v14;
      v52(v19, v22, v14);
      swift_storeEnumTagMultiPayload();
      sub_10005C1D4(v13);
      sub_100087544();
      static os_signpost_type_t.end.getter();
      v53 = *(v24 + 448);
      sub_10022C350(&qword_100CA40C8);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100A2C3F0;
      v55 = v53;
      v56 = v79;
      v57 = Location.name.getter();
      v59 = v58;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100035744();
      *(v54 + 32) = v57;
      *(v54 + 40) = v59;
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      v77 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v61 = v80;
      v60 = v81;
      v62 = v78;
      (*(v80 + 16))(v78, v56, v81);
      v68 = v15;
      v63 = v73;
      v64 = v69;
      (*(v15 + 16))(v73, v71, v69);
      v65 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v66 = (v76 + *(v15 + 80) + v65) & ~*(v15 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = v77;
      (*(v61 + 32))(v67 + v65, v62, v60);
      v74(v67 + v66, v63, v64);
      *(v67 + ((v16 + v66 + 7) & 0xFFFFFFFFFFFFFFF8)) = v82;

      asyncMain(block:)();

      (*(v68 + 8))(v71, v64);
    }
  }

  else
  {
    if (qword_100CA2730 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000703C(v41, qword_100D90BE8);
    v42 = v80;
    v43 = v81;
    (*(v80 + 16))(v9, v79, v81);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v83[0] = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      v48 = Location.id.getter();
      v50 = v49;
      (*(v42 + 8))(v9, v43);
      v51 = sub_100078694(v48, v50, v83);

      *(v46 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Lost instance of self while fetching WeatherStatistics. locationID=%{private,mask.hash}s", v46, 0x16u);
      sub_100006F14(v47);
    }

    else
    {

      (*(v42 + 8))(v9, v43);
    }
  }
}

uint64_t sub_1008AB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = type metadata accessor for WeatherStatisticsModel();
    (*(*(v11 - 8) + 16))(v9, a3, v11);
    swift_storeEnumTagMultiPayload();
    sub_1008A98B0(a2, v9, a4);

    return sub_100087544();
  }

  return result;
}

uint64_t sub_1008AB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getErrorValue();
    *v8 = Error.localizedDescription.getter();
    v8[1] = v10;
    swift_storeEnumTagMultiPayload();
    sub_1008A98B0(a2, v8, a4);

    return sub_100087544();
  }

  return result;
}

uint64_t sub_1008AB6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  if (sub_10018A0DC(a1, a2))
  {
    v10 = 1;
  }

  else
  {
    sub_1008ABD28(a2, v9);
    sub_1000302D8(v9, v7, &qword_100CADBA0);
    v11 = type metadata accessor for Location.Identifier();
    if (sub_100024D10(v7, 1, v11) == 1)
    {
      sub_100018144(v7, &qword_100CADBA0);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = Location.Identifier.id.getter();
      v13 = v14;
      (*(*(v11 - 8) + 8))(v7, v11);
    }

    v15 = Location.id.getter();
    if (v13)
    {
      if (v12 == v15 && v13 == v16)
      {
        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_100018144(v9, &qword_100CADBA0);
    }

    else
    {
      sub_100018144(v9, &qword_100CADBA0);

      v10 = 0;
    }
  }

  return v10 & 1;
}

uint64_t sub_1008AB8F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v8 = type metadata accessor for WeatherStatisticsModel();
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for MainAction();
  __chkstk_darwin(v38);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  __chkstk_darwin(v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000675AC(&qword_100CE08F0, type metadata accessor for WeatherData.WeatherStatisticsState);
  *v17 = ShortDescribable.description.getter();
  *(v17 + 1) = v18;
  v17[16] = a3;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v17);
  sub_100087544();
  sub_1000863F8(a2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v34;
      v20 = v35;
      v22 = v14;
      v23 = v36;
      (*(v35 + 32))(v34, v22, v36);
      v24 = *(a4 + 48);
      v25 = *(sub_10022C350(&qword_100CAC0B0) + 48);
      *v11 = Location.id.getter();
      v11[1] = v26;
      (*(v20 + 16))(v11 + v25, v21, v23);
      type metadata accessor for WeatherDataAction();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_10004F034(v11, &v39, v24);
      sub_100018144(&v39, &unk_100CD81B0);
      sub_100087544();
      return (*(v20 + 8))(v21, v23);
    }

    v30 = *(a4 + 48);
    *v11 = Location.id.getter();
    v11[1] = v32;
    type metadata accessor for WeatherDataAction();
  }

  else
  {
    v28 = *v14;
    v29 = v14[1];
    v30 = *(a4 + 48);
    *v11 = Location.id.getter();
    v11[1] = v31;
    v11[2] = v28;
    v11[3] = v29;
    type metadata accessor for WeatherDataAction();
  }

  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_10004F034(v11, &v39, v30);
  sub_100018144(&v39, &unk_100CD81B0);
  return sub_100087544();
}

uint64_t sub_1008ABD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AveragesDetailViewState();
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_1000863F8(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v9);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_6;
  }

  sub_100086450(v9, v15);
  sub_1000863F8(v15, v13);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_100087544();
LABEL_6:
    sub_100087544();
    v16 = 1;
    goto LABEL_7;
  }

  sub_100086450(v13, v6);
  Location.identifier.getter();
  sub_100087544();
  sub_100087544();
  v16 = 0;
LABEL_7:
  v17 = type metadata accessor for Location.Identifier();
  return sub_10001B350(a2, v16, 1, v17);
}

void sub_1008ABFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v20 = a8;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v18 = (&v19 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10005C1D4(v18);
  sub_100087544();
  sub_10016F998(a4, a5, a6, a7, v20, a9, a10 & 1, 0, 0, a2, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void sub_1008AC0EC(void (*a1)(unint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68 = a8;
  v66 = a7;
  v67 = a6;
  v65 = a5;
  v77 = a3;
  v78 = a4;
  v71 = a1;
  v74 = type metadata accessor for OSSignpostID();
  v64 = *(v74 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v74);
  v73 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Location();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v76);
  v75 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AvailableDataSets();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v72 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = sub_10022C350(&qword_100CE2A20);
  __chkstk_darwin(v20);
  v22 = (&v55 - v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v63 = a11;
    v62 = a10;
    v69 = a9;
    sub_1000302D8(v71, v22, &qword_100CE2A20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v22;
      v25 = v75;
      v24 = v76;
      (*(v12 + 16))(v75, v78, v76);
      v26 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v27 = swift_allocObject();
      v28 = v62;
      *(v27 + 2) = v77;
      *(v27 + 3) = v28;
      *(v27 + 4) = v63;
      (*(v12 + 32))(&v27[v26], v25, v24);
      *&v27[(v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;

      swift_errorRetain();
      asyncMain(block:)();

      static os_signpost_type_t.end.getter();
      v29 = *(Strong + 448);
      sub_10022C350(&qword_100CA40C8);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100A2C3F0;
      v31 = v29;
      v32 = Location.name.getter();
      v34 = v33;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100035744();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v79 = 0xD00000000000002ALL;
      v80 = 0x8000000100AE3820;
      swift_getErrorValue();
      v35._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v35);

      sub_1005B3D94(v79, v80);
    }

    else
    {
      v36 = v15;
      v37 = *(v15 + 32);
      v59 = v15 + 32;
      v71 = v37;
      v61 = v19;
      v58 = v14;
      v37(v19, v22, v14);
      (*(v12 + 16))(v75, v78, v76);
      v38 = v64;
      (*(v64 + 16))(v73, v69, v74);
      v60 = v36;
      (*(v36 + 16))(v72, v19, v14);
      v39 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v40 = (v13 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v40 + 39) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
      v41 = (*(v38 + 80) + v56 + 8) & ~*(v38 + 80);
      v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (*(v36 + 80) + v42 + 16) & ~*(v36 + 80);
      v44 = swift_allocObject();
      (*(v12 + 32))(v44 + v39, v75, v76);
      v45 = (v44 + v40);
      v47 = v67;
      v46 = v68;
      *v45 = v65;
      v45[1] = v47;
      v45[2] = v66;
      v45[3] = v46;
      *(v44 + v57) = v77;
      *(v44 + v56) = Strong;
      (*(v38 + 32))(v44 + v41, v73, v74);
      v48 = (v44 + v42);
      v49 = v63;
      *v48 = v62;
      v48[1] = v49;
      v50 = v58;
      v71(v44 + v43, v72, v58);

      asyncMain(block:)();

      static os_signpost_type_t.end.getter();
      sub_10022C350(&qword_100CA40C8);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100A2C3F0;
      v52 = Location.name.getter();
      v54 = v53;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100035744();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      os_signpost(_:dso:log:name:signpostID:_:_:)();

      (*(v60 + 8))(v61, v50);
    }
  }

  else
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
  }
}

void sub_1008AC91C(void (*a1)(_OWORD *__return_ptr), void (*a2)(_OWORD *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t a11)
{
  v51[1] = a7;
  v51[2] = a8;
  v62 = a6;
  v59 = a3;
  v60 = a2;
  v61 = type metadata accessor for MainAction();
  __chkstk_darwin(v61);
  v13 = (v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocationCoordinate();
  v54 = *(v17 - 8);
  v55 = v17;
  __chkstk_darwin(v17);
  v53 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = v51 - v20;
  v56 = type metadata accessor for Location();
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v22 - 8);
  v24 = v51 - v23;
  v25 = type metadata accessor for LocationsState();
  __chkstk_darwin(v25 - 8);
  v27 = v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v28);
  v30 = v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v51 - v32;
  if (Location.kind.getter())
  {
    v51[0] = updated;
    v60(v63);
    sub_1000863F8(*&v63[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v27);

    sub_1000302D8(v27, v24, &unk_100CE49F0);
    sub_100087544();
    if (sub_100024D10(v24, 1, v28) == 1)
    {
      sub_100018144(v24, &unk_100CE49F0);
    }

    else
    {
      sub_100086450(v24, v33);
      sub_1000863F8(v33, v30);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100087544();
        sub_100087544();
      }

      else
      {
        v34 = v56;
        (*(v58 + 32))();
        Location.coordinate.getter();
        v35 = v52;
        LocationCoordinate.init(_:)();
        v60 = a1;
        Location.coordinate.getter();
        v36 = v53;
        LocationCoordinate.init(_:)();
        sub_1000675AC(&qword_100CAAA28, &type metadata accessor for LocationCoordinate);
        v37 = v55;
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *(v54 + 8);
        v39(v36, v37);
        v39(v35, v37);
        if ((v38 & 1) == 0)
        {
          v44 = v57;
          v43 = v58;
          (*(v58 + 16))(v16, v57, v34);
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v16);
          sub_100087544();
          static os_signpost_type_t.end.getter();
          v45 = v34;
          v46 = v43;
          sub_10022C350(&qword_100CA40C8);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_100A2C3F0;
          v48 = Location.name.getter();
          v50 = v49;
          *(v47 + 56) = &type metadata for String;
          *(v47 + 64) = sub_100035744();
          *(v47 + 32) = v48;
          *(v47 + 40) = v50;
          os_signpost(_:dso:log:name:signpostID:_:_:)();

          (*(v46 + 8))(v44, v45);
          sub_100087544();
          return;
        }

        (*(v58 + 8))(v57, v34);
        sub_100087544();
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v16);
  sub_100087544();
  v40 = *(sub_10022C350(&qword_100CAC0C0) + 48);
  *v13 = Location.id.getter();
  v13[1] = v41;
  v42 = type metadata accessor for AvailableDataSets();
  (*(*(v42 - 8) + 16))(v13 + v40, a11, v42);
  type metadata accessor for WeatherDataAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  sub_10004F034(v13, v63, a9);
  sub_100018144(v63, &unk_100CD81B0);
  sub_100087544();
  sub_10018E2C0(1, 0);
}

uint64_t sub_1008AD0F4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for MainAction();
  __chkstk_darwin(v7);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v12);
  sub_100087544();
  v13 = Location.id.getter();
  v15 = v14;
  *&v19[0] = a5;
  swift_errorRetain();
  sub_10022C350(&qword_100CD8220);
  v16 = String.init<A>(describing:)();
  *v9 = v13;
  v9[1] = v15;
  v9[2] = v16;
  v9[3] = v17;
  type metadata accessor for WeatherDataAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_10004F034(v9, v19, a2);
  sub_100018144(v19, &unk_100CD81B0);
  return sub_100087544();
}

id *sub_1008AD2CC()
{

  sub_100006F14((v0 + 10));
  sub_100006F14((v0 + 15));
  sub_100006F14((v0 + 20));
  sub_100006F14((v0 + 25));
  sub_100006F14((v0 + 30));
  sub_100006F14((v0 + 35));
  sub_100006F14((v0 + 41));
  sub_100006F14((v0 + 46));
  sub_100006F14((v0 + 51));

  sub_100006F14((v0 + 60));

  return v0;
}

uint64_t sub_1008AD3A8()
{
  sub_1008AD2CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1008AD3DC()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003810(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1008A62A4(v0, v4, v5, v6);
}

uint64_t sub_1008AD448@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v213 = a3;
  v214 = a2;
  v215 = a1;
  v221 = a4;
  v174 = sub_10022C350(&qword_100CE29D8);
  __chkstk_darwin(v174);
  v176 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v177 = &v127 - v6;
  __chkstk_darwin(v7);
  v179 = &v127 - v8;
  __chkstk_darwin(v9);
  v180 = &v127 - v10;
  __chkstk_darwin(v11);
  v181 = &v127 - v12;
  __chkstk_darwin(v13);
  v182 = &v127 - v14;
  __chkstk_darwin(v15);
  v183 = &v127 - v16;
  __chkstk_darwin(v17);
  v184 = &v127 - v18;
  __chkstk_darwin(v19);
  v185 = &v127 - v20;
  __chkstk_darwin(v21);
  v186 = &v127 - v22;
  __chkstk_darwin(v23);
  v175 = (&v127 - v24);
  v25 = sub_10022C350(&qword_100CE2988);
  v211 = *(v25 - 8);
  v212 = v25;
  __chkstk_darwin(v25);
  v225 = &v127 - v26;
  v27 = sub_10022C350(&qword_100CE2990);
  v209 = *(v27 - 8);
  v210 = v27;
  __chkstk_darwin(v27);
  v224 = &v127 - v28;
  v29 = sub_10022C350(&qword_100CE2998);
  v207 = *(v29 - 8);
  v208 = v29;
  __chkstk_darwin(v29);
  v187 = &v127 - v30;
  v31 = sub_10022C350(&qword_100CE29A0);
  v205 = *(v31 - 8);
  v206 = v31;
  __chkstk_darwin(v31);
  v188 = &v127 - v32;
  v204 = sub_10022C350(&qword_100CE29A8);
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v189 = &v127 - v33;
  v202 = sub_10022C350(&qword_100CE29B0);
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v190 = &v127 - v34;
  v200 = sub_10022C350(&qword_100CAD2A0);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v191 = &v127 - v35;
  v198 = sub_10022C350(&qword_100CAD290);
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v192 = &v127 - v36;
  v196 = sub_10022C350(&qword_100CE29B8);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v38 = &v127 - v37;
  v194 = sub_10022C350(&qword_100CE29C0);
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v222 = (&v127 - v39);
  v40 = sub_10022C350(&qword_100CE2A00);
  __chkstk_darwin(v40 - 8);
  v178 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v220 = &v127 - v43;
  __chkstk_darwin(v44);
  v223 = &v127 - v45;
  ProductRequirementsFactory.AppRequiredProducts.current.getter();
  v46 = v38;
  ProductRequirementsFactory.AppRequiredProducts.minutely.getter();
  ProductRequirementsFactory.AppRequiredProducts.hourly.getter();
  ProductRequirementsFactory.AppRequiredProducts.daily.getter();
  ProductRequirementsFactory.AppRequiredProducts.airQuality.getter();
  ProductRequirementsFactory.AppRequiredProducts.changes.getter();
  ProductRequirementsFactory.AppRequiredProducts.alerts.getter();
  ProductRequirementsFactory.AppRequiredProducts.availability.getter();
  ProductRequirementsFactory.AppRequiredProducts.news.getter();
  ProductRequirementsFactory.AppRequiredProducts.historicalComparisons.getter();
  v47 = type metadata accessor for CurrentWeather();
  sub_10022C350(&qword_100CB0BA0);
  v48 = sub_10022C350(&qword_100CA7030);
  v49 = sub_10022C350(&qword_100CA7000);
  sub_10022C350(&qword_100CC62B8);
  sub_10022C350(&qword_100CACDF8);
  sub_10022C350(&qword_100CD00E0);
  v50 = type metadata accessor for WeatherAvailability();
  sub_10022C350(&qword_100CE29C8);
  sub_10022C350(&qword_100CABD10);
  v218 = v50;
  v217 = v49;
  v219 = v48;
  v216 = v47;
  v51 = v225;
  v52 = v224;
  v53 = v187;
  v54 = v46;
  v55 = v192;
  v56 = v191;
  v57 = v190;
  v58 = v189;
  v59 = v188;
  WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:)();
  v60 = v220;
  (*(v211 + 8))(v51, v212);
  (*(v209 + 8))(v52, v210);
  (*(v207 + 8))(v53, v208);
  (*(v205 + 8))(v59, v206);
  (*(v203 + 8))(v58, v204);
  (*(v201 + 8))(v57, v202);
  (*(v199 + 8))(v56, v200);
  (*(v197 + 8))(v55, v198);
  (*(v195 + 8))(v54, v196);
  (*(v193 + 8))(v222, v194);
  sub_10011C0F0(v223, v60, &qword_100CE2A00);
  v61 = sub_10022C350(&qword_100CE29E0);
  if (sub_100024D10(v60, 1, v61) != 1)
  {
    v62 = v221;
    v63 = v178;
    sub_1000302D8(v60, v178, &qword_100CE2A00);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v67 = v175;
      sub_10011C0F0(v63, v175, &qword_100CE29D8);
      sub_1000302D8(v67, v186, &qword_100CE29D8);
      v68 = v174;
      v69 = *(v174 + 48);
      v210 = *(v174 + 64);
      v211 = v69;
      v70 = *(v174 + 80);
      v208 = *(v174 + 96);
      v209 = v70;
      v207 = *(v174 + 112);

      v71 = v68[36];
      v205 = v68[40];
      v206 = v71;
      v204 = v68[44];
      sub_1000302D8(v67, v185, &qword_100CE29D8);
      v224 = v68[12];
      v203 = v68[16];
      v202 = v68[20];
      v201 = v68[24];
      v200 = v68[28];

      v199 = v68[36];
      v198 = v68[40];
      v197 = v68[44];
      sub_1000302D8(v67, v184, &qword_100CE29D8);
      v196 = v68[12];
      v223 = v68[16];
      v195 = v68[20];
      v194 = v68[24];
      v193 = v68[28];

      v192 = v68[36];
      v191 = v68[40];
      v190 = v68[44];
      sub_1000302D8(v67, v183, &qword_100CE29D8);
      v189 = v68[12];
      v188 = v68[16];
      v222 = v68[20];
      v187 = v68[24];
      v178 = v68[28];

      v173 = v68[36];
      v172 = v68[40];
      v171 = v68[44];
      sub_1000302D8(v67, v182, &qword_100CE29D8);
      v170 = v68[12];
      v169 = v68[16];
      v168 = v68[20];
      v215 = v68[24];
      v167 = v68[28];

      v166 = v68[36];
      v165 = v68[40];
      v164 = v68[44];
      v72 = v181;
      sub_1000302D8(v67, v181, &qword_100CE29D8);
      v163 = v68[12];
      v162 = v68[16];
      v161 = v68[20];
      v160 = v68[24];
      v213 = v68[28];
      v73 = v72;

      v159 = v68[36];
      v158 = v68[40];
      v157 = v68[44];
      v74 = v180;
      sub_1000302D8(v67, v180, &qword_100CE29D8);
      v156 = v68[12];
      v155 = v68[16];
      v154 = v68[20];
      v153 = v68[24];
      v152 = v68[28];
      v212 = *(v74 + v68[32]);
      v151 = v68[36];
      v150 = v68[40];
      v149 = v68[44];
      v75 = v179;
      sub_1000302D8(v67, v179, &qword_100CE29D8);
      v148 = v68[12];
      v147 = v68[16];
      v146 = v68[20];
      v145 = v68[24];
      v144 = v68[28];
      v76 = v75;

      v131 = v68[36];
      v143 = v68[40];
      v142 = v68[44];
      v77 = v177;
      sub_1000302D8(v67, v177, &qword_100CE29D8);
      v141 = v68[12];
      v140 = v68[16];
      v139 = v68[20];
      v138 = v68[24];
      v137 = v68[28];

      v136 = v68[36];
      v128 = v68[40];
      v135 = v68[44];
      v78 = v176;
      sub_10011C0F0(v67, v176, &qword_100CE29D8);
      v214 = v68[12];
      v134 = v68[16];
      v133 = v68[20];
      v130 = v68[24];
      v132 = v68[28];

      v129 = v68[36];
      v127 = v68[40];
      v174 = v68[44];
      v225 = *(v216 - 8);
      v79 = v62;
      (*(v225 + 4))(v62, v186, v216);
      v80 = type metadata accessor for FetchedForecast();
      sub_10011C0F0(&v224[v185], v62 + v80[5], &qword_100CB0BA0);
      v81 = v80[6];
      v224 = *(v219 - 8);
      (*(v224 + 4))(v62 + v81, v184 + v223, v219);
      v82 = v80[7];
      v83 = v217;
      v223 = *(v217 - 8);
      (*(v223 + 32))(v62 + v82, v222 + v183, v217);
      sub_10011C0F0(v215 + v182, v62 + v80[8], &qword_100CC62B8);
      sub_10011C0F0(v73 + v213, v62 + v80[9], &qword_100CACDF8);
      *(v62 + v80[10]) = v212;
      v84 = v80[11];
      v175 = v80;
      v85 = v218;
      v86 = *(v218 - 8);
      (*(v86 + 32))(v79 + v84, v76 + v131, v218);
      sub_10011C0F0(v77 + v128, v79 + v80[12], &qword_100CE29C8);
      sub_10011C0F0(v78 + v174, v79 + v80[13], &qword_100CABD10);
      sub_100018144(v78 + v127, &qword_100CE29C8);
      v87 = *(v86 + 8);
      v87(v78 + v129, v85);
      v212 = v87;
      v213 = v86 + 8;
      sub_100018144(v78 + v132, &qword_100CACDF8);
      sub_100018144(v78 + v130, &qword_100CC62B8);
      v222 = *(v223 + 8);
      v223 += 8;
      v222(v78 + v133, v83);
      v88 = *(v224 + 1);
      v224 += 8;
      v89 = v219;
      v88(v78 + v134, v219);
      v215 = v88;
      sub_100018144(v214 + v78, &qword_100CB0BA0);
      v90 = *(v225 + 1);
      v225 += 8;
      v91 = v216;
      v90(v78, v216);
      v92 = v90;
      sub_100018144(v77 + v135, &qword_100CABD10);
      v87(v77 + v136, v85);
      sub_100018144(v77 + v137, &qword_100CACDF8);
      sub_100018144(v77 + v138, &qword_100CC62B8);
      v93 = v217;
      v94 = v222;
      v222(v77 + v139, v217);
      v95 = v89;
      v88(v77 + v140, v89);
      sub_100018144(v77 + v141, &qword_100CB0BA0);
      v214 = v92;
      v92(v77, v91);
      v96 = v179;
      sub_100018144(v179 + v142, &qword_100CABD10);
      sub_100018144(v96 + v143, &qword_100CE29C8);
      sub_100018144(v96 + v144, &qword_100CACDF8);
      sub_100018144(v96 + v145, &qword_100CC62B8);
      v94(v96 + v146, v93);
      v97 = v215;
      v215(v96 + v147, v95);
      sub_100018144(v96 + v148, &qword_100CB0BA0);
      v92(v96, v91);
      v98 = v180;
      sub_100018144(v180 + v149, &qword_100CABD10);
      sub_100018144(v98 + v150, &qword_100CE29C8);
      v99 = v212;
      v212(v98 + v151, v218);
      sub_100018144(v98 + v152, &qword_100CACDF8);
      sub_100018144(v98 + v153, &qword_100CC62B8);
      v100 = v217;
      v101 = v222;
      v222(v98 + v154, v217);
      v102 = v219;
      v97(v98 + v155, v219);
      sub_100018144(v98 + v156, &qword_100CB0BA0);
      v103 = v214;
      v214(v98, v91);
      v104 = v181;
      sub_100018144(v181 + v157, &qword_100CABD10);
      sub_100018144(v104 + v158, &qword_100CE29C8);
      v105 = v218;
      v99(v104 + v159, v218);
      sub_100018144(v104 + v160, &qword_100CC62B8);
      v101(v104 + v161, v100);
      v215(v104 + v162, v102);
      sub_100018144(v104 + v163, &qword_100CB0BA0);
      v103(v104, v216);
      v106 = v182;
      sub_100018144(v182 + v164, &qword_100CABD10);
      sub_100018144(v106 + v165, &qword_100CE29C8);
      v107 = v105;
      v108 = v105;
      v109 = v212;
      v212(v106 + v166, v107);
      sub_100018144(v106 + v167, &qword_100CACDF8);
      v101(v106 + v168, v100);
      v110 = v219;
      v111 = v215;
      v215(v106 + v169, v219);
      sub_100018144(v106 + v170, &qword_100CB0BA0);
      v112 = v216;
      v113 = v214;
      v214(v106, v216);
      v114 = v183;
      sub_100018144(v183 + v171, &qword_100CABD10);
      sub_100018144(v114 + v172, &qword_100CE29C8);
      v109(v114 + v173, v108);
      sub_100018144(v114 + v178, &qword_100CACDF8);
      sub_100018144(&v187[v114], &qword_100CC62B8);
      v111(&v188[v114], v110);
      sub_100018144(&v189[v114], &qword_100CB0BA0);
      v113(v114, v112);
      v115 = v113;
      v116 = v184;
      sub_100018144(&v190[v184], &qword_100CABD10);
      sub_100018144(&v191[v116], &qword_100CE29C8);
      v117 = v218;
      v118 = v109;
      v109(&v192[v116], v218);
      sub_100018144(v116 + v193, &qword_100CACDF8);
      sub_100018144(v116 + v194, &qword_100CC62B8);
      v119 = v217;
      v120 = v222;
      v222(v116 + v195, v217);
      sub_100018144(v116 + v196, &qword_100CB0BA0);
      v115(v116, v112);
      v121 = v185;
      sub_100018144(v185 + v197, &qword_100CABD10);
      sub_100018144(v121 + v198, &qword_100CE29C8);
      v118(v121 + v199, v117);
      sub_100018144(v121 + v200, &qword_100CACDF8);
      sub_100018144(v121 + v201, &qword_100CC62B8);
      v122 = v119;
      v120(v121 + v202, v119);
      v123 = v219;
      v124 = v215;
      v215(v121 + v203, v219);
      v214(v121, v112);
      v125 = v186;
      sub_100018144(v186 + v204, &qword_100CABD10);
      sub_100018144(v125 + v205, &qword_100CE29C8);
      v118(v125 + v206, v218);
      sub_100018144(v125 + v207, &qword_100CACDF8);
      sub_100018144(v125 + v208, &qword_100CC62B8);
      v222(v125 + v209, v122);
      v60 = v220;
      v124(v125 + v210, v123);
      sub_100018144(v125 + v211, &qword_100CB0BA0);
      v65 = v221;
      v66 = 0;
      v64 = v175;
      goto LABEL_6;
    }

    sub_100018144(v63, &qword_100CE29E0);
  }

  v64 = type metadata accessor for FetchedForecast();
  v65 = v221;
  v66 = 1;
LABEL_6:
  sub_10001B350(v65, v66, 1, v64);
  return sub_100018144(v60, &qword_100CE2A00);
}

void sub_1008AF260()
{
  sub_10000C778();
  v3 = v2;
  v24 = v4;
  type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  sub_10000548C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  v11 = *v1;
  Hasher.init(_seed:)();
  v12 = *v3;
  v13 = v3[1];
  String.hash(into:)();
  v25 = v0;
  type metadata accessor for LocationOfInterestType();
  sub_1000675AC(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v6 + 72);
    while (1)
    {
      sub_1000863F8(*(v11 + 48) + v18 * v16, v10);
      v19 = *v10 == v12 && v10[1] == v13;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static LocationOfInterestType.== infix(_:_:)())
      {
        break;
      }

      sub_10003BC2C();
      v16 = (v16 + 1) & v17;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_10003BC2C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    v26 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A19B8();
      v23 = v26;
    }

    sub_100086450(*(v23 + 48) + v18 * v16, v24);
    sub_1008AFA34(v16);
    *v1 = v26;
    v20 = v24;
    v21 = 0;
  }

  else
  {
LABEL_10:
    v20 = v24;
    v21 = 1;
  }

  sub_10001B350(v20, v21, 1, v25);
  sub_10000536C();
}

void sub_1008AF4D0()
{
  sub_100071768();
  sub_1000B91E8();
  sub_100542CB0(v2);
  sub_1000164A8();

  Hasher._finalize()();
  sub_100086900();
  if (v4)
  {
    while (1)
    {
      v5 = 0xE800000000000000;
      v6 = 0x73776F626E696172;
      switch(*(*(v3 + 48) + v1))
      {
        case 1:
          v6 = 0x6E696E746867696CLL;
          v5 = 0xE900000000000067;
          break;
        case 2:
          v5 = 0xE400000000000000;
          v6 = 1818845544;
          break;
        case 3:
          v5 = 0xE500000000000000;
          v6 = 0x656B6F6D73;
          break;
        case 4:
          v5 = 0xE300000000000000;
          v6 = 6778726;
          break;
        case 5:
          v5 = 0xE400000000000000;
          v6 = 1702519144;
          break;
        default:
          break;
      }

      v7 = 0xE800000000000000;
      v8 = 0x73776F626E696172;
      switch(v2)
      {
        case 1:
          v8 = 0x6E696E746867696CLL;
          v7 = 0xE900000000000067;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1818845544;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x656B6F6D73;
          break;
        case 4:
          v7 = 0xE300000000000000;
          v8 = 6778726;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1702519144;
          break;
        default:
          break;
      }

      if (v6 == v8 && v5 == v7)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_22;
      }

      sub_1000F007C();
      if ((v11 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A1DF8();
    }

    v13 = sub_1000B7C30();
    sub_1008AFD38(v13);
    *v0 = v14;
  }

LABEL_25:
  sub_100051A4C();
}

void sub_1008AF6D8()
{
  sub_100071768();
  sub_1000B91E8();
  sub_100542D8C(v2);
  sub_1000164A8();

  Hasher._finalize()();
  sub_100086900();
  if (v4)
  {
    while (1)
    {
      v5 = 0xE800000000000000;
      v6 = 0x746E617361656C70;
      switch(*(*(v3 + 48) + v1))
      {
        case 1:
          v6 = 0x617361656C706E75;
          v5 = 0xEA0000000000746ELL;
          break;
        case 2:
          v5 = 0xE300000000000000;
          v6 = 7630696;
          break;
        case 3:
          v5 = 0xE600000000000000;
          v6 = 0x796C6C696863;
          break;
        case 4:
          v5 = 0xE500000000000000;
          v7 = 1734833517;
          goto LABEL_10;
        case 5:
          v5 = 0xE300000000000000;
          v6 = 7959140;
          break;
        case 6:
          v5 = 0xE500000000000000;
          v7 = 1684957559;
LABEL_10:
          v6 = v7 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v5 = 0xE400000000000000;
          v6 = 1835819363;
          break;
        default:
          break;
      }

      v8 = 0xE800000000000000;
      v9 = 0x746E617361656C70;
      switch(v2)
      {
        case 1:
          v9 = 0x617361656C706E75;
          v8 = 0xEA0000000000746ELL;
          break;
        case 2:
          v8 = 0xE300000000000000;
          v9 = 7630696;
          break;
        case 3:
          v8 = 0xE600000000000000;
          v9 = 0x796C6C696863;
          break;
        case 4:
          v8 = 0xE500000000000000;
          v10 = 1734833517;
          goto LABEL_19;
        case 5:
          v8 = 0xE300000000000000;
          v9 = 7959140;
          break;
        case 6:
          v8 = 0xE500000000000000;
          v10 = 1684957559;
LABEL_19:
          v9 = v10 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v8 = 0xE400000000000000;
          v9 = 1835819363;
          break;
        default:
          break;
      }

      if (v6 == v9 && v5 == v8)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_28;
      }

      sub_1000F007C();
      if ((v13 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1006A1E0C();
    }

    v15 = sub_1000B7C30();
    sub_1008AFF80(v15);
    *v0 = v16;
  }

LABEL_31:
  sub_100051A4C();
}

uint64_t sub_1008AF928()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Namespace.ID.hash(into:)();
  v2 = Hasher._finalize()();
  v3 = ~(-1 << *(v1 + 32));
  while (1)
  {
    v4 = v2 & v3;
    if (((1 << (v2 & v3)) & *(v1 + 56 + (((v2 & v3) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (static Namespace.ID.== infix(_:_:)())
    {
      break;
    }

    v2 = v4 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  v9 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1006A204C();
    v7 = v9;
  }

  v5 = *(*(v7 + 48) + 8 * v4);
  sub_1008B01F0(v4);
  *v0 = v9;
  return v5;
}

uint64_t sub_1008AFA34(int64_t a1)
{
  v31 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v3 = *(v31 - 8);
  result = __chkstk_darwin(v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v32 = *(v3 + 72);
      v14 = v11;
      while (1)
      {
        v15 = v8;
        v16 = v32 * v10;
        sub_1000863F8(*(v7 + 48) + v32 * v10, v6);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v17 = v14;
        type metadata accessor for LocationOfInterestType();
        sub_1000675AC(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
        dispatch thunk of Hashable.hash(into:)();
        v18 = Hasher._finalize()();
        sub_100087544();
        v19 = v18 & v17;
        v14 = v17;
        if (a1 >= v13)
        {
          if (v19 < v13 || a1 < v19)
          {
            goto LABEL_24;
          }
        }

        else if (v19 < v13 && a1 < v19)
        {
          goto LABEL_24;
        }

        v22 = *(v7 + 48);
        v23 = v32 * a1;
        v24 = v22 + v32 * a1;
        v25 = v22 + v16 + v32;
        if (v32 * a1 < v16 || v24 >= v25)
        {
          break;
        }

        a1 = v10;
        if (v23 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v17;
        v8 = v15;
        if (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_23:
      a1 = v10;
      goto LABEL_24;
    }

LABEL_25:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v7 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v29;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1008AFD38(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1008AFF80(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1008B01F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        Namespace.ID.hash(into:)();
        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1008B038C()
{
  v1 = type metadata accessor for WeatherData(0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for Location();
  sub_100003AE8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = type metadata accessor for NewsDataModel();
  sub_100003810(v9);
  v10 = sub_100040C54();

  return sub_1008A74CC(v10, v11, v0 + v3, v0 + v8, v0 + v12);
}

uint64_t sub_1008B04A0()
{
  sub_100017580();
  v2 = type metadata accessor for Location();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for WeatherServiceLocationOptions();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  sub_100069BF8();
  v15 = type metadata accessor for TimeState();
  sub_100003AE8(v15);
  sub_1000FFCA0();
  return sub_1008A801C(v0, v16, v1 + v4, v1 + v9, v1 + v14, v17, v18, v19, v24, v23, v20, v21, v22);
}

uint64_t sub_1008B068C()
{
  type metadata accessor for Location();
  sub_10000548C();
  sub_100069BF8();

  v0 = sub_1000751C4();
  v1(v0);

  sub_100036F2C();

  return swift_deallocObject();
}